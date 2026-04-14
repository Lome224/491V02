#!/usr/bin/env python3
from __future__ import annotations

import argparse
import json
import os
import re
import shutil
import subprocess
import sys
from dataclasses import dataclass
from pathlib import Path


USB_SERIAL_HINTS = (
    "usbserial",
    "usbmodem",
    "ttyusb",
    "ttyacm",
    "usb serial",
    "usb2.0-serial",
)

NON_USB_HINTS = (
    "bluetooth",
    "debug-console",
)

ARDUINO_ADAPTER_VIDS = {
    "0403",  # FTDI
    "10C4",  # Silicon Labs CP210x
    "1A86",  # CH340/CH341
    "2341",  # Arduino SA
    "2A03",  # Arduino LLC
}


@dataclass(frozen=True)
class BoardConfig:
    key: str
    aliases: tuple[str, ...]
    project_dir: str
    pio_env: str
    family: str
    label: str


BOARD_CONFIGS = (
    BoardConfig(
        key="mega",
        aliases=("mega", "mega2560"),
        project_dir="mega",
        pio_env="mega",
        family="avr",
        label="Arduino Mega 2560",
    ),
    BoardConfig(
        key="esp8266",
        aliases=("esp", "esp8266", "esp12e"),
        project_dir="esp8266",
        pio_env="esp8266",
        family="esp8266",
        label="ESP8266",
    ),
    BoardConfig(
        key="nano",
        aliases=("nano", "nano328", "nanoatmega328"),
        project_dir="nano",
        pio_env="nano",
        family="avr",
        label="Arduino Nano",
    ),
)

BOARD_BY_ALIAS = {
    alias: config
    for config in BOARD_CONFIGS
    for alias in config.aliases
}


@dataclass
class PortInfo:
    port: str
    description: str = ""
    hwid: str = ""
    vid: str = ""
    pid: str = ""
    location: str = ""
    serial_number: str = ""
    board_name: str = ""
    fqbn: str = ""
    esp_mac: str = ""

    @property
    def vid_pid(self) -> str:
        if self.vid and self.pid:
            return f"{self.vid}:{self.pid}"
        return ""

    @property
    def is_usb_serial(self) -> bool:
        lowered = f"{self.port} {self.description} {self.hwid}".lower()
        if any(hint in lowered for hint in NON_USB_HINTS):
            return False
        if "vid:pid=" in lowered:
            return True
        return any(hint in lowered for hint in USB_SERIAL_HINTS)

    @property
    def is_esp(self) -> bool:
        return bool(self.esp_mac)

    @property
    def is_arduino_candidate(self) -> bool:
        if self.is_esp:
            return False
        if self.board_name:
            return True
        if self.vid in ARDUINO_ADAPTER_VIDS:
            return True
        return self.port.startswith("/dev/cu.usbmodem")

    @property
    def role_labels(self) -> list[str]:
        labels: list[str] = []
        if self.is_esp:
            labels.append("esp")
        if self.is_arduino_candidate:
            labels.append("arduino-ish")
        if not labels:
            labels.append("serial")
        return labels


def run_command(cmd: list[str], timeout: int = 10) -> subprocess.CompletedProcess[str]:
    return subprocess.run(
        cmd,
        capture_output=True,
        text=True,
        timeout=timeout,
        check=False,
    )


def normalize_board(name: str) -> BoardConfig:
    key = (name or "").strip().lower()
    if key in BOARD_BY_ALIAS:
        return BOARD_BY_ALIAS[key]

    supported = ", ".join(config.key for config in BOARD_CONFIGS)
    raise SystemExit(f"Unknown board '{name}'. Supported boards: {supported}")


def port_key(board: BoardConfig) -> str:
    return f"BOARD_PORT_{board.key.upper()}"


def location_key(board: BoardConfig) -> str:
    return f"BOARD_USB_LOCATION_{board.key.upper()}"


def mac_key(board: BoardConfig) -> str:
    return f"BOARD_MAC_{board.key.upper()}"


def legacy_port_keys(board: BoardConfig) -> tuple[str, ...]:
    if board.key == "esp8266":
        return ("BOARD_PORT_ESP",)
    return ()


def legacy_location_keys(board: BoardConfig) -> tuple[str, ...]:
    if board.key == "esp8266":
        return ("BOARD_USB_LOCATION_ESP",)
    return ()


def legacy_mac_keys(board: BoardConfig) -> tuple[str, ...]:
    if board.key == "esp8266":
        return ("BOARD_MAC_ESP",)
    return ()


def get_saved_value(saved: dict[str, str], primary: str, fallbacks: tuple[str, ...] = ()) -> str:
    if saved.get(primary):
        return saved[primary]
    for key in fallbacks:
        if saved.get(key):
            return saved[key]
    return ""


def parse_env_file(path: Path) -> dict[str, str]:
    if not path.exists():
        return {}

    values: dict[str, str] = {}
    for raw_line in path.read_text(encoding="utf-8").splitlines():
        line = raw_line.strip()
        if not line or line.startswith("#") or "=" not in line:
            continue
        key, value = line.split("=", 1)
        key = key.strip()
        value = value.strip()
        if len(value) >= 2 and value[0] == value[-1] and value[0] in {"'", '"'}:
            value = value[1:-1]
        values[key] = value
    return values


def write_env_file(path: Path, updates: dict[str, str]) -> None:
    if path.exists():
        lines = path.read_text(encoding="utf-8").splitlines()
    else:
        lines = ["# Local board port hints for this machine."]

    rendered: list[str] = []
    seen: set[str] = set()

    for line in lines:
        match = re.match(r"\s*([A-Za-z_][A-Za-z0-9_]*)=(.*)$", line)
        if match and match.group(1) in updates:
            key = match.group(1)
            rendered.append(f"{key}={updates[key]}")
            seen.add(key)
        else:
            rendered.append(line)

    for key in sorted(updates):
        if key in seen:
            continue
        if rendered and rendered[-1] != "":
            rendered.append("")
        rendered.append(f"{key}={updates[key]}")

    path.write_text("\n".join(rendered).rstrip() + "\n", encoding="utf-8")


def parse_hwid(hwid: str) -> tuple[str, str, str]:
    vid = ""
    pid = ""
    location = ""

    vid_pid_match = re.search(r"VID:PID=([0-9A-Fa-f]{4}):([0-9A-Fa-f]{4})", hwid)
    if vid_pid_match:
        vid = vid_pid_match.group(1).upper()
        pid = vid_pid_match.group(2).upper()

    location_match = re.search(r"LOCATION=([^\s]+)", hwid)
    if location_match:
        location = location_match.group(1)

    return vid, pid, location


def merge_port(records: dict[str, PortInfo], candidate: PortInfo) -> None:
    existing = records.get(candidate.port)
    if not existing:
        records[candidate.port] = candidate
        return

    if candidate.description and not existing.description:
        existing.description = candidate.description
    if candidate.hwid and not existing.hwid:
        existing.hwid = candidate.hwid
    if candidate.vid and not existing.vid:
        existing.vid = candidate.vid
    if candidate.pid and not existing.pid:
        existing.pid = candidate.pid
    if candidate.location and not existing.location:
        existing.location = candidate.location
    if candidate.serial_number and not existing.serial_number:
        existing.serial_number = candidate.serial_number
    if candidate.board_name and not existing.board_name:
        existing.board_name = candidate.board_name
    if candidate.fqbn and not existing.fqbn:
        existing.fqbn = candidate.fqbn


def dedupe_cu_ports(ports: list[PortInfo]) -> list[PortInfo]:
    by_basename: dict[str, PortInfo] = {}
    ordered = sorted(
        ports,
        key=lambda item: (0 if item.port.startswith("/dev/cu.") else 1, item.port),
    )

    for port in ordered:
        basename = port.port
        basename = basename.replace("/dev/cu.", "", 1)
        basename = basename.replace("/dev/tty.", "", 1)
        by_basename.setdefault(basename, port)

    return list(by_basename.values())


def load_ports_from_pio() -> list[PortInfo]:
    if not shutil.which("pio"):
        return []

    result = run_command(["pio", "device", "list", "--json-output"])
    if result.returncode != 0 or not result.stdout.strip():
        return []

    try:
        parsed = json.loads(result.stdout)
    except json.JSONDecodeError:
        return []

    ports: list[PortInfo] = []
    for item in parsed:
        port = item.get("port", "")
        description = item.get("description", "")
        hwid = item.get("hwid", "")
        vid, pid, location = parse_hwid(hwid)
        candidate = PortInfo(
            port=port,
            description=description,
            hwid=hwid,
            vid=vid,
            pid=pid,
            location=location,
        )
        if candidate.is_usb_serial:
            ports.append(candidate)
    return ports


def load_ports_from_arduino_cli() -> list[PortInfo]:
    if not shutil.which("arduino-cli"):
        return []

    result = run_command(["arduino-cli", "board", "list", "--format", "json"])
    if result.returncode != 0 or not result.stdout.strip():
        return []

    try:
        parsed = json.loads(result.stdout)
    except json.JSONDecodeError:
        return []

    ports: list[PortInfo] = []
    for item in parsed.get("detected_ports", []):
        port_data = item.get("port", {})
        address = port_data.get("address", "")
        properties = port_data.get("properties", {})
        candidate = PortInfo(
            port=address,
            description=port_data.get("protocol_label", ""),
            vid=properties.get("vid", "").replace("0x", "").upper(),
            pid=properties.get("pid", "").replace("0x", "").upper(),
            serial_number=properties.get("serialNumber", ""),
        )

        matching_boards = item.get("matching_boards") or []
        if matching_boards:
            board_match = matching_boards[0]
            candidate.board_name = board_match.get("name", "")
            candidate.fqbn = board_match.get("fqbn", "")

        if candidate.is_usb_serial:
            ports.append(candidate)
    return ports


def list_usb_serial_ports() -> list[PortInfo]:
    records: dict[str, PortInfo] = {}

    for port in load_ports_from_pio():
        merge_port(records, port)

    for port in load_ports_from_arduino_cli():
        merge_port(records, port)

    return dedupe_cu_ports(list(records.values()))


def build_esptool_prefix(project_env: str) -> list[str] | None:
    conda = shutil.which("conda")
    if not conda:
        return None

    prefix = [conda, "run", "-n", project_env, "python", "-m", "esptool"]
    result = run_command(prefix + ["version"], timeout=20)
    if result.returncode == 0:
        return prefix
    return None


def probe_esp_mac(port: str, esptool_prefix: list[str]) -> str | None:
    result = run_command(
        esptool_prefix
        + [
            "--port",
            port,
            "--chip",
            "esp8266",
            "--connect-attempts",
            "3",
            "--no-stub",
            "read_mac",
        ],
        timeout=8,
    )
    output = f"{result.stdout}\n{result.stderr}"
    if result.returncode != 0:
        return None

    matches = re.findall(r"MAC:\s*([0-9A-Fa-f:]{17})", output)
    if not matches:
        return None
    return matches[-1].lower()


def enrich_esp_ports(ports: list[PortInfo], project_env: str) -> None:
    esptool_prefix = build_esptool_prefix(project_env)
    if not esptool_prefix:
        return

    for port in ports:
        port.esp_mac = probe_esp_mac(port.port, esptool_prefix) or ""


def saved_port_match(board: BoardConfig, saved: dict[str, str], ports: list[PortInfo]) -> PortInfo | None:
    saved_location = get_saved_value(saved, location_key(board), legacy_location_keys(board))
    if saved_location:
        for port in ports:
            if port.location and port.location == saved_location:
                return port

    saved_port = get_saved_value(saved, port_key(board), legacy_port_keys(board))
    if saved_port:
        for port in ports:
            if port.port == saved_port:
                return port

    return None


def port_matches_saved_hint(board: BoardConfig, saved: dict[str, str], port: PortInfo) -> bool:
    saved_location = get_saved_value(saved, location_key(board), legacy_location_keys(board))
    if saved_location and port.location and port.location == saved_location:
        return True

    saved_port = get_saved_value(saved, port_key(board), legacy_port_keys(board))
    if saved_port and port.port == saved_port:
        return True

    saved_mac = get_saved_value(saved, mac_key(board), legacy_mac_keys(board)).lower()
    if saved_mac and port.esp_mac and port.esp_mac.lower() == saved_mac:
        return True

    return False


def saved_labels(saved: dict[str, str], port: PortInfo) -> list[str]:
    labels: list[str] = []
    for board in BOARD_CONFIGS:
        if port_matches_saved_hint(board, saved, port):
            labels.append(board.key)
    return labels


def resolve_port(
    board: BoardConfig,
    explicit_port: str,
    saved: dict[str, str],
    ports: list[PortInfo],
) -> PortInfo:
    explicit_port = explicit_port.strip()
    if explicit_port:
        for port in ports:
            if port.port == explicit_port:
                return port
        return PortInfo(port=explicit_port)

    saved_match = saved_port_match(board, saved, ports)
    if saved_match:
        if board.family != "esp8266" or saved_match.is_esp or port_matches_saved_hint(board, saved, saved_match):
            return saved_match

    if board.family == "esp8266":
        esp_ports = [port for port in ports if port.is_esp]
        saved_mac = get_saved_value(saved, mac_key(board), legacy_mac_keys(board)).lower()
        if saved_mac:
            for port in esp_ports:
                if port.esp_mac.lower() == saved_mac:
                    return port
        if len(esp_ports) == 1:
            return esp_ports[0]
        raise SystemExit(
            "Could not resolve an ESP port automatically. "
            "Run `just ports` or pass the port explicitly."
        )

    non_esp_ports = [port for port in ports if port.is_usb_serial and not port.is_esp]
    esp_board = BOARD_BY_ALIAS["esp"]
    saved_esp_port = saved_port_match(esp_board, saved, ports)
    if saved_esp_port:
        non_esp_ports = [port for port in non_esp_ports if port.port != saved_esp_port.port]
    if len(non_esp_ports) == 1:
        return non_esp_ports[0]

    raise SystemExit(
        f"Could not resolve a {board.key} port automatically. "
        "Run `just ports` or pass the port explicitly."
    )


def update_saved_port(board: BoardConfig, port: PortInfo, env_path: Path) -> None:
    saved = parse_env_file(env_path)
    saved[port_key(board)] = port.port
    if port.location:
        saved[location_key(board)] = port.location
    if board.family == "esp8266" and port.esp_mac:
        saved[mac_key(board)] = port.esp_mac
    write_env_file(env_path, saved)


def print_ports(ports: list[PortInfo], saved: dict[str, str], board: BoardConfig | None = None) -> None:
    print("USB serial candidates:")
    if not ports:
        print("- none")
        return

    visible_ports = ports
    if board and board.family == "esp8266":
        visible_ports = [
            port for port in ports
            if port.is_esp or port_matches_saved_hint(board, saved, port)
        ] or ports
    elif board:
        esp_board = BOARD_BY_ALIAS["esp"]
        visible_ports = [
            port for port in ports
            if not port.is_esp and not port_matches_saved_hint(esp_board, saved, port)
        ]

    if not visible_ports:
        print(f"- no current candidates for {board.key}")
        return

    for port in visible_ports:
        details: list[str] = []
        display_roles = port.role_labels[:]
        if port.description:
            details.append(port.description)
        if port.vid_pid:
            details.append(f"VID:PID={port.vid_pid}")
        if port.location:
            details.append(f"LOCATION={port.location}")
        if port.serial_number:
            details.append(f"SERIAL={port.serial_number}")
        if port.board_name:
            details.append(f"BOARD={port.board_name}")
        if port.esp_mac:
            details.append(f"ESP_MAC={port.esp_mac}")
        hints = saved_labels(saved, port)
        if hints:
            details.append(f"SAVED={','.join(hints)}")
            for hint in reversed(hints):
                saved_role = f"saved-{hint}"
                if saved_role not in display_roles:
                    display_roles.insert(0, saved_role)
        details.append(f"POSSIBLE={','.join(display_roles)}")
        print(f"- {port.port}  ({' | '.join(details)})")


def print_port_details(board: BoardConfig, port: PortInfo) -> None:
    print(f"Board: {board.label}")
    print(f"Port: {port.port}")
    if port.description:
        print(f"Description: {port.description}")
    if port.vid_pid:
        print(f"VID:PID: {port.vid_pid}")
    if port.location:
        print(f"USB location: {port.location}")
    if port.serial_number:
        print(f"Serial number: {port.serial_number}")
    if port.board_name:
        print(f"Arduino CLI match: {port.board_name}")
    if port.fqbn:
        print(f"FQBN: {port.fqbn}")
    if port.esp_mac:
        print(f"ESP MAC: {port.esp_mac}")
    print(f"Possible roles: {', '.join(port.role_labels)}")


def run_esp_probe(project_env: str, port: str) -> int:
    commands = (
        ["--port", port, "--chip", "esp8266", "chip_id"],
        ["--port", port, "--chip", "esp8266", "flash_id"],
        ["--port", port, "--chip", "esp8266", "read_mac"],
    )

    prefix = build_esptool_prefix(project_env)
    if not prefix:
        print("Could not find esptool in the configured conda environment.", file=sys.stderr)
        return 1

    for command in commands:
        result = subprocess.run(prefix + command, check=False)
        if result.returncode != 0:
            return result.returncode
    return 0


def main() -> int:
    parser = argparse.ArgumentParser(
        description="Detect, classify, and resolve board serial ports."
    )
    parser.add_argument(
        "--write",
        default=".env",
        help="Path to the local env file used for saved port hints.",
    )
    parser.add_argument(
        "--project-env",
        default=os.environ.get("PROJECT_ENV", "lorem-ipsum"),
        help="Conda environment name that contains esptool.",
    )

    subparsers = parser.add_subparsers(dest="command", required=True)

    project_parser = subparsers.add_parser("project", help="Print the project folder for a board.")
    project_parser.add_argument("board")

    env_parser = subparsers.add_parser("env", help="Print the PlatformIO env for a board.")
    env_parser.add_argument("board")

    family_parser = subparsers.add_parser("family", help="Print the board family.")
    family_parser.add_argument("board")

    list_parser = subparsers.add_parser("list", help="List detected USB serial candidates.")
    list_parser.add_argument("board", nargs="?")

    resolve_parser = subparsers.add_parser("resolve", help="Resolve a board port.")
    resolve_parser.add_argument("board")
    resolve_parser.add_argument("--port", default="")

    inspect_parser = subparsers.add_parser("inspect", help="Show details for a resolved board port.")
    inspect_parser.add_argument("board")
    inspect_parser.add_argument("--port", default="")

    probe_parser = subparsers.add_parser("probe", help="Probe a board using its resolved port.")
    probe_parser.add_argument("board")
    probe_parser.add_argument("--port", default="")

    args = parser.parse_args()
    env_path = Path(args.write)

    if args.command in {"project", "env", "family"}:
        board = normalize_board(args.board)
        if args.command == "project":
            print(board.project_dir)
        elif args.command == "env":
            print(board.pio_env)
        else:
            print(board.family)
        return 0

    board = normalize_board(args.board) if getattr(args, "board", "") else None
    ports = list_usb_serial_ports()
    enrich_esp_ports(ports, args.project_env)
    saved = parse_env_file(env_path)

    if args.command == "list":
        print_ports(ports, saved, board)
        return 0

    assert board is not None
    port = resolve_port(board, getattr(args, "port", ""), saved, ports)
    update_saved_port(board, port, env_path)

    if args.command == "resolve":
        print(port.port)
        return 0

    if args.command == "inspect":
        print_port_details(board, port)
        return 0

    if args.command == "probe":
        if board.family == "esp8266":
            return run_esp_probe(args.project_env, port.port)
        print_port_details(board, port)
        return 0

    raise SystemExit(f"Unknown command: {args.command}")


if __name__ == "__main__":
    sys.exit(main())
