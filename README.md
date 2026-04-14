# Lorem Ipsum

This repo is split into three simple parts:

- `src/`: existing Python sensor and OSC code
- `mega/`: Arduino Mega PlatformIO project
- `esp8266/`: ESP8266 PlatformIO project plus backups and probe notes
- `nano/`: Arduino Nano PlatformIO project using the same motor-controller firmware layout

## Quick Start

Run this once after cloning or whenever the Python env changes:

```bash
just py_setup
```

After that, use `just ...` directly. You do not need to activate the env for the repo commands because the Python recipes use `conda run -n lorem-ipsum ...` internally.

If you want an interactive Python shell yourself, activate it manually with:

```bash
conda activate lorem-ipsum
```

Python tools:

```bash
just py_check
just py_master
just py_osc_server
```

Firmware tools:

```bash
just ports
just build mega
just upload mega
just monitor mega

just build nano
just upload nano
just monitor nano
just probe nano

just build esp8266
just probe esp8266
just upload esp8266
just monitor esp8266
just upload_monitor esp8266
just backup esp8266
just restore esp8266
```

## VS Code / PlatformIO

Open `mega/`, `nano/`, or `esp8266/` directly in VS Code when you want the full PlatformIO experience.

From the repo root, the `just` commands wrap the same workflows without extra setup.

## Notes

- Serial ports are detected by `scripts/detect_board_ports.py`.
- `just ports` shows USB serial candidates and marks positive ESP detections.
- The root firmware commands accept a board name and an optional explicit port. The board name now maps directly to the folder name and PlatformIO project for that board.
- ESP auto-detection is positive because it probes with `esptool`. Other USB serial adapters are treated more conservatively and may require a manual port the first time.
- `.env` is local-only and ignored by git. Use `.env.example` as the shape of that file.
- On macOS, prefer `/dev/cu.*` over `/dev/tty.*` for uploads and monitors.
- `src/` was left untouched.
- `esp8266/backups/` was kept in place.
- `environment.yml` and `requirements.txt` keep the Python side reproducible.
