set shell := ["zsh", "-cu"]
set dotenv-load := true

project_root := justfile_directory()
project_env := env_var_or_default("PROJECT_ENV", "lorem-ipsum")
project_env_file := project_root + "/environment.yml"
project_requirements := project_root + "/requirements.txt"
python_env_tool := `if command -v mamba >/dev/null 2>&1; then command -v mamba; elif [ -x /opt/homebrew/bin/mamba ]; then echo /opt/homebrew/bin/mamba; elif command -v conda >/dev/null 2>&1; then command -v conda; elif [ -x /opt/homebrew/bin/conda ]; then echo /opt/homebrew/bin/conda; fi`
port_detect_script := project_root + "/scripts/detect_board_ports.py"
serial_monitor_script := project_root + "/scripts/serial_monitor.py"
serial_default_baud := env_var_or_default("SERIAL_DEFAULT_BAUD", "115200")
serial_settle_delay := env_var_or_default("SERIAL_SETTLE_DELAY", "2")
# Fallback when BOARD_PORT isn't set. Override by editing .env or passing
# `port=/dev/...` to any firmware recipe.
default_port := env_var_or_default("BOARD_PORT", "/dev/cu.usbserial-210")

help:
    @just --list

# --- Python environment and app helpers --------------------------------------
py_setup:
    @tool="{{ python_env_tool }}"; \
    if [ -z "$tool" ]; then \
      echo "Neither mamba nor conda is installed."; \
      exit 1; \
    fi; \
    if "$tool" run -n "{{ project_env }}" python -V >/dev/null 2>&1; then \
      "$tool" env update -n "{{ project_env }}" -f "{{ project_env_file }}" --prune -y; \
    else \
      "$tool" env create -n "{{ project_env }}" -f "{{ project_env_file }}" -y; \
    fi

py_check:
    @tool="{{ python_env_tool }}"; \
    if [ -z "$tool" ]; then \
      echo "Neither mamba nor conda is installed."; \
      exit 1; \
    fi; \
    "$tool" run -n "{{ project_env }}" python -c "import serial; from pythonosc import dispatcher, osc_server, udp_client; print('Python env OK')"

py_master args="":
    @tool="{{ python_env_tool }}"; \
    if [ -z "$tool" ]; then \
      echo "Neither mamba nor conda is installed."; \
      exit 1; \
    fi; \
    "$tool" run -n "{{ project_env }}" python src/Master.py {{ args }}

py_osc_server:
    @tool="{{ python_env_tool }}"; \
    if [ -z "$tool" ]; then \
      echo "Neither mamba nor conda is installed."; \
      exit 1; \
    fi; \
    "$tool" run -n "{{ project_env }}" python src/osc_server.py

pip_install:
    @tool="{{ python_env_tool }}"; \
    if [ -z "$tool" ]; then \
      echo "Neither mamba nor conda is installed."; \
      exit 1; \
    fi; \
    "$tool" run -n "{{ project_env }}" python -m pip install -r "{{ project_requirements }}"

# --- Firmware (Arduino Nano) -------------------------------------------------

# Show USB serial candidates and mark the best-guess Nano port.
ports:
    @python3 "{{ port_detect_script }}" list

# Print the auto-detected Nano port (exits non-zero if ambiguous).
guess_port:
    @python3 "{{ port_detect_script }}" guess

build:
    @pio run -d "{{ project_root }}"

rebuild:
    @pio run -d "{{ project_root }}" --target clean
    @pio run -d "{{ project_root }}"

upload port=default_port:
    @pio run -d "{{ project_root }}" -t upload --upload-port "{{ port }}"

monitor port=default_port baud=serial_default_baud:
    @if [ ! -e "{{ port }}" ]; then \
      echo "Port {{ port }} does not exist. Run 'just ports' to find the current one and update .env."; \
      exit 1; \
    fi
    @exec python3 "{{ serial_monitor_script }}" "{{ port }}" --baud "{{ baud }}"

upload_monitor port=default_port baud=serial_default_baud delay=serial_settle_delay:
    @just upload "{{ port }}"
    @sleep "{{ delay }}"
    @just monitor "{{ port }}" "{{ baud }}"
