# Lorem Ipsum

Single-board motor controller running on an Arduino Nano plus supporting
Python / Max MSP tooling on the host.

## Repo layout

```text
.
├── nano/              Arduino Nano firmware
├── src/               Host-side Python + Max MSP patches
├── scripts/           Helper scripts
├── HARDWARE.md        Pinout, wiring, and control-flow diagrams
├── platformio.ini     PlatformIO project
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

`just py_setup` prefers `mamba` when available and falls back to `conda`, so
the repo works on machines that only have one of them installed. The Python
recipes use the same tool automatically via `... run -n lorem-ipsum ...`, so
you do not have to activate the env for repo commands. For an interactive
shell, use whichever tool is installed:

```bash
conda activate lorem-ipsum
# or
mamba activate lorem-ipsum
```

Entry points:

```bash
just py_check       # verify the env imports cleanly
just py_master      # run src/Master.py
just py_osc_server  # run src/osc_server.py
```

`python-osc` is installed by pip through `environment.yml`, because it is not
available as a conda-forge package. If OSC imports are missing, run
`just py_setup` first, or `just pip_install` to refresh only the pip packages
inside the `lorem-ipsum` env.

## Notes

- `.env` is local-only and ignored by git. Use `.env.example` as its shape.
- On macOS, prefer `/dev/cu.*` over `/dev/tty.*` for uploads and monitors.
- `just monitor` uses `scripts/serial_monitor.py` (a small termios-based
  monitor) instead of PlatformIO's built-in one, because PlatformIO's
  monitor is flaky on this macOS setup.
- `environment.yml` and `requirements.txt` keep the Python side reproducible.
