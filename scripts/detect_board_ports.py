#!/usr/bin/env python3
"""List USB serial ports and guess which one is the Arduino Nano.

Commands:
  list    Print every detected USB serial device with vendor/location hints.
  guess   Print the single most likely nano port (for scripting).

The nano port is normally pinned in .env (BOARD_PORT). Use `list`/`guess`
when the device moves and you need to update that value.
"""
from __future__ import annotations

import argparse
import json
import re
import shutil
import subprocess
import sys
from dataclasses import dataclass, field

# USB vendor IDs commonly used by Arduino-compatible USB-serial adapters.
# The Nano clones we've seen use CH340 (1A86) or FTDI (0403); the official
# Nano uses Arduino (2341). CP210x (10C4) and Arduino LLC (2A03) are listed
# for completeness.
ARDUINO_VIDS = {"0403", "10C4", "1A86", "2341", "2A03"}

USB_SERIAL_HINTS = ("usbserial", "usbmodem", "ttyusb", "ttyacm", "usb serial", "usb2.0-serial")
NON_USB_HINTS = ("bluetooth", "debug-console")


@dataclass
class Port:
    path: str
    description: str = ""
    vid: str = ""
    pid: str = ""
    location: str = ""
    sources: set[str] = field(default_factory=set)

    @property
    def vid_pid(self) -> str:
        return f"{self.vid}:{self.pid}" if self.vid and self.pid else ""

    @property
    def is_usb_serial(self) -> bool:
        haystack = f"{self.path} {self.description}".lower()
        if any(hint in haystack for hint in NON_USB_HINTS):
            return False
        if self.vid_pid:
            return True
        return any(hint in haystack for hint in USB_SERIAL_HINTS)

    @property
    def looks_like_arduino(self) -> bool:
        if self.vid in ARDUINO_VIDS:
            return True
        return self.path.startswith("/dev/cu.usbmodem")


def run(cmd: list[str], timeout: int = 10) -> subprocess.CompletedProcess[str]:
    return subprocess.run(cmd, capture_output=True, text=True, timeout=timeout, check=False)


def parse_hwid(hwid: str) -> tuple[str, str, str]:
    vid = pid = location = ""
    m = re.search(r"VID:PID=([0-9A-Fa-f]{4}):([0-9A-Fa-f]{4})", hwid)
    if m:
        vid, pid = m.group(1).upper(), m.group(2).upper()
    m = re.search(r"LOCATION=(\S+)", hwid)
    if m:
        location = m.group(1)
    return vid, pid, location


def from_pio() -> list[Port]:
    if not shutil.which("pio"):
        return []
    result = run(["pio", "device", "list", "--json-output"])
    if result.returncode != 0 or not result.stdout.strip():
        return []
    try:
        items = json.loads(result.stdout)
    except json.JSONDecodeError:
        return []
    ports = []
    for item in items:
        vid, pid, location = parse_hwid(item.get("hwid", ""))
        ports.append(
            Port(
                path=item.get("port", ""),
                description=item.get("description", ""),
                vid=vid,
                pid=pid,
                location=location,
                sources={"pio"},
            )
        )
    return ports


def from_arduino_cli() -> list[Port]:
    if not shutil.which("arduino-cli"):
        return []
    result = run(["arduino-cli", "board", "list", "--format", "json"])
    if result.returncode != 0 or not result.stdout.strip():
        return []
    try:
        payload = json.loads(result.stdout)
    except json.JSONDecodeError:
        return []
    ports = []
    for item in payload.get("detected_ports", []):
        port = item.get("port", {})
        props = port.get("properties", {})
        ports.append(
            Port(
                path=port.get("address", ""),
                description=port.get("protocol_label", ""),
                vid=props.get("vid", "").replace("0x", "").upper(),
                pid=props.get("pid", "").replace("0x", "").upper(),
                sources={"arduino-cli"},
            )
        )
    return ports


def merge(a: Port, b: Port) -> Port:
    a.sources |= b.sources
    for field_name in ("description", "vid", "pid", "location"):
        if not getattr(a, field_name) and getattr(b, field_name):
            setattr(a, field_name, getattr(b, field_name))
    return a


def collect_ports() -> list[Port]:
    records: dict[str, Port] = {}
    for port in (*from_pio(), *from_arduino_cli()):
        if not port.path or not port.is_usb_serial:
            continue
        if port.path in records:
            merge(records[port.path], port)
        else:
            records[port.path] = port

    # Collapse /dev/tty.* duplicates of /dev/cu.* on macOS.
    kept: dict[str, Port] = {}
    for port in sorted(records.values(), key=lambda p: (0 if p.path.startswith("/dev/cu.") else 1, p.path)):
        key = port.path.replace("/dev/cu.", "", 1).replace("/dev/tty.", "", 1)
        kept.setdefault(key, port)
    return sorted(kept.values(), key=lambda p: p.path)


def guess_nano(ports: list[Port]) -> Port | None:
    candidates = [p for p in ports if p.looks_like_arduino]
    if len(candidates) == 1:
        return candidates[0]
    return None  # ambiguous or none


def format_port(port: Port, *, is_guess: bool) -> str:
    details: list[str] = []
    if port.description:
        details.append(port.description)
    if port.vid_pid:
        details.append(f"VID:PID={port.vid_pid}")
    if port.location:
        details.append(f"LOCATION={port.location}")
    if port.looks_like_arduino:
        details.append("arduino-ish")
    marker = "* " if is_guess else "  "
    suffix = f"  ({' | '.join(details)})" if details else ""
    return f"{marker}{port.path}{suffix}"


def cmd_list(ports: list[Port]) -> int:
    if not ports:
        print("No USB serial devices detected.")
        print("Check that the Nano is plugged in and the USB cable supports data.")
        return 1
    guess = guess_nano(ports)
    print("USB serial candidates (* = best guess for the Nano):")
    for port in ports:
        print(format_port(port, is_guess=guess is not None and port.path == guess.path))
    if guess is None:
        print("\nMore than one Arduino-like port detected — pick one by hand and set BOARD_PORT in .env.")
    return 0


def cmd_guess(ports: list[Port]) -> int:
    guess = guess_nano(ports)
    if guess is None:
        print("Could not uniquely identify a Nano port. Run `just ports` and set BOARD_PORT in .env.",
              file=sys.stderr)
        return 1
    print(guess.path)
    return 0


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    sub = parser.add_subparsers(dest="command", required=True)
    sub.add_parser("list", help="List every detected USB serial port.")
    sub.add_parser("guess", help="Print the single most likely Nano port.")
    args = parser.parse_args()

    ports = collect_ports()
    if args.command == "list":
        return cmd_list(ports)
    if args.command == "guess":
        return cmd_guess(ports)
    return 2


if __name__ == "__main__":
    sys.exit(main())
