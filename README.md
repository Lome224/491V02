# Lorem Ipsum

Single-board motor controller running on an Arduino Nano plus supporting
Python / Max MSP tooling on the host.

## Repo layout

```text
.
├── nano/              Arduino Nano firmware (flat — no extra src/ subfolder)
├── src/               Host-side Python + Max MSP patches (Master.py, SynthOG.maxpat, ...)
├── scripts/           Helper scripts (port discovery, serial monitor)
├── HARDWARE.md   Pinout, wiring, and control-flow diagrams
├── platformio.ini     PlatformIO project (builds from repo root)
└── justfile           All common commands
```

## Firmware quick start

```bash
just ports             # list USB serial devices, mark the best-guess Nano
just build             # compile
just upload            # compile + flash (reads BOARD_PORT from .env)
just monitor           # open a serial monitor at 115200 baud
just upload_monitor    # upload, wait for reset, then monitor
```

The port lives in `.env` as `BOARD_PORT=/dev/cu.usbserial-210`. If the device
ever moves, run `just ports` and update that one line. Any recipe also accepts
a one-off override: `just upload port=/dev/cu.usbserial-123`.

Firmware tuning (pins, ramp times, ToF thresholds, telemetry) lives in
[nano/Config.h](nano/Config.h). Edit, `just upload`, done. See
[HARDWARE.md](HARDWARE.md) for the wiring diagram and how the
control logic fits together.

## Python side

Run once after cloning or when `environment.yml` changes:

```bash
just py_setup
```

Recipes use `conda run -n lorem-ipsum ...` internally, so you do not have
to activate the env for repo commands. For an interactive shell:

```bash
conda activate lorem-ipsum
```

Entry points:

```bash
just py_check       # verify the env imports cleanly
just py_master      # run src/Master.py
just py_osc_server  # run src/osc_server.py
```

## Notes

- `.env` is local-only and ignored by git. Use `.env.example` as its shape.
- On macOS, prefer `/dev/cu.*` over `/dev/tty.*` for uploads and monitors.
- `just monitor` uses `scripts/serial_monitor.py` (a small termios-based
  monitor) instead of PlatformIO's built-in one, because PlatformIO's
  monitor is flaky on this macOS setup.
- `environment.yml` and `requirements.txt` keep the Python side reproducible.
