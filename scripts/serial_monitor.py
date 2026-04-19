#!/usr/bin/env python3
from __future__ import annotations

import argparse
import os
import select
import signal
import sys
import termios
from pathlib import Path


# macOS/BSD termios only exposes speed constants up to B230400 as named
# symbols; higher rates are accepted as raw integers. Keep the common
# rates here and fall through to integer-as-speed for anything else.
_BAUD_CONSTANTS = {
    rate: getattr(termios, f"B{rate}")
    for rate in (9600, 19200, 38400, 57600, 115200, 230400)
    if hasattr(termios, f"B{rate}")
}


def configure_fd(fd: int, baud: int) -> None:
    # Configure on the open fd so settings stick for the duration we hold
    # it. On macOS, cu.usbserial-* devices reset termios to driver defaults
    # when closed, so any `stty -f` run in a separate process is lost by
    # the time we open the port ourselves.
    iflag, oflag, cflag, lflag, _ispeed, _ospeed, cc = termios.tcgetattr(fd)
    speed = _BAUD_CONSTANTS.get(baud, baud)

    iflag &= ~(termios.IGNBRK | termios.BRKINT | termios.PARMRK | termios.ISTRIP
               | termios.INLCR | termios.IGNCR | termios.ICRNL | termios.IXON
               | termios.IXOFF)
    oflag &= ~termios.OPOST
    lflag &= ~(termios.ECHO | termios.ECHONL | termios.ICANON | termios.ISIG | termios.IEXTEN)
    cflag &= ~(termios.CSIZE | termios.PARENB | termios.CSTOPB)
    cflag |= termios.CS8 | termios.CREAD | termios.CLOCAL

    cc[termios.VMIN] = 1
    cc[termios.VTIME] = 0

    termios.tcsetattr(fd, termios.TCSANOW, [iflag, oflag, cflag, lflag, speed, speed, cc])


def monitor(port: Path, baud: int) -> int:
    if not port.exists():
        raise SystemExit(f"Configured port {port} does not exist.")

    fd = os.open(str(port), os.O_RDWR | os.O_NOCTTY | os.O_NONBLOCK)
    os.set_blocking(fd, True)
    try:
        configure_fd(fd, baud)
    except termios.error as err:
        os.close(fd)
        raise SystemExit(
            f"Could not configure {port} at {baud} baud: {err}.\n"
            "This usually means the configured port is the wrong device or the USB-serial driver is unhappy."
        )
    try:
        serial_in = os.fdopen(fd, "rb", buffering=0, closefd=False)
        serial_out = os.fdopen(os.dup(fd), "wb", buffering=0, closefd=True)

        stdin = sys.stdin.buffer
        stdout = sys.stdout.buffer
        stderr = sys.stderr

        print(f"Monitoring {port} at {baud} baud. Press Ctrl-C to stop.", file=stderr)

        def handle_sigint(_signum: int, _frame: object) -> None:
            raise KeyboardInterrupt

        signal.signal(signal.SIGINT, handle_sigint)

        while True:
            readable, _, _ = select.select([serial_in, stdin], [], [])
            if serial_in in readable:
                chunk = serial_in.read(4096)
                if chunk:
                    stdout.write(chunk)
                    stdout.flush()
            if stdin in readable:
                data = os.read(stdin.fileno(), 4096)
                if not data:
                    continue
                serial_out.write(data)
                serial_out.flush()
    except KeyboardInterrupt:
        return 0
    finally:
        os.close(fd)


def main() -> int:
    parser = argparse.ArgumentParser(description="Simple serial monitor that uses Python termios instead of pyserial.")
    parser.add_argument("port", help="Serial device path, for example /dev/cu.usbserial-210")
    parser.add_argument("--baud", type=int, default=115200, help="Baud rate, default 115200")
    args = parser.parse_args()
    return monitor(Path(args.port), args.baud)


if __name__ == "__main__":
    raise SystemExit(main())
