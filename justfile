set shell := ["zsh", "-cu"]
set dotenv-load := true

project_env := env_var_or_default("PROJECT_ENV", "lorem-ipsum")
project_env_file := "environment.yml"
project_requirements := "requirements.txt"
serial_env_file := ".env"
port_detect_script := "scripts/detect_board_ports.py"
serial_default_baud := env_var_or_default("SERIAL_DEFAULT_BAUD", "115200")
serial_settle_delay := env_var_or_default("SERIAL_SETTLE_DELAY", "2")
default_flash_backup_size := env_var_or_default("BOARD_FLASH_BACKUP_SIZE", "0x400000")

help:
    @just --list

# Python environment and app helpers.
py_setup:
    @base="$(conda info --base)"; \
    if [ -d "$base/envs/{{ project_env }}" ]; then \
      if command -v mamba >/dev/null 2>&1; then mamba env update -f "{{ project_env_file }}" --prune -y; else conda env update -f "{{ project_env_file }}" --prune -y; fi; \
    else \
      if command -v mamba >/dev/null 2>&1; then mamba env create -f "{{ project_env_file }}" -y; else conda env create -f "{{ project_env_file }}" -y; fi; \
    fi

py_check:
    @conda run -n "{{ project_env }}" python -c "import esptool, serial; from pythonosc import dispatcher, osc_server, udp_client; print('Python env OK')"

py_master args="":
    @conda run -n "{{ project_env }}" python src/Master.py {{ args }}

py_osc_server:
    @conda run -n "{{ project_env }}" python src/osc_server.py

pip_install:
    @python3 -m pip install -r "{{ project_requirements }}"

# Firmware discovery.
ports board="":
    @python3 "{{ port_detect_script }}" --write "{{ serial_env_file }}" --project-env "{{ project_env }}" list "{{ board }}"
    @printf '\nPlatformIO ports\n'
    @pio device list
    @printf '\nArduino CLI ports\n'
    @arduino-cli board list

# Unified firmware workflow.
build board:
    @project_dir="$(python3 "{{ port_detect_script }}" project "{{ board }}")"; \
    env_name="$(python3 "{{ port_detect_script }}" env "{{ board }}")"; \
    pio run -d "${project_dir}" -e "${env_name}"

rebuild board:
    @project_dir="$(python3 "{{ port_detect_script }}" project "{{ board }}")"; \
    env_name="$(python3 "{{ port_detect_script }}" env "{{ board }}")"; \
    pio run -d "${project_dir}" -e "${env_name}" --target clean; \
    pio run -d "${project_dir}" -e "${env_name}"

upload board port="":
    @project_dir="$(python3 "{{ port_detect_script }}" project "{{ board }}")"; \
    env_name="$(python3 "{{ port_detect_script }}" env "{{ board }}")"; \
    resolved_port="$(python3 "{{ port_detect_script }}" --write "{{ serial_env_file }}" --project-env "{{ project_env }}" resolve "{{ board }}" --port "{{ port }}")"; \
    pio run -d "${project_dir}" -e "${env_name}" -t upload --upload-port "${resolved_port}"

monitor board port="" baud=serial_default_baud:
    @project_dir="$(python3 "{{ port_detect_script }}" project "{{ board }}")"; \
    env_name="$(python3 "{{ port_detect_script }}" env "{{ board }}")"; \
    resolved_port="$(python3 "{{ port_detect_script }}" --write "{{ serial_env_file }}" --project-env "{{ project_env }}" resolve "{{ board }}" --port "{{ port }}")"; \
    pio device monitor -d "${project_dir}" -e "${env_name}" -p "${resolved_port}" -b "{{ baud }}" --no-reconnect

probe board port="":
    @python3 "{{ port_detect_script }}" --write "{{ serial_env_file }}" --project-env "{{ project_env }}" probe "{{ board }}" --port "{{ port }}"

upload_monitor board port="" baud=serial_default_baud delay=serial_settle_delay:
    @just upload "{{ board }}" "{{ port }}"
    @sleep "{{ delay }}"
    @just monitor "{{ board }}" "{{ port }}" "{{ baud }}"

backup board port="" output="" size="":
    @family="$(python3 "{{ port_detect_script }}" family "{{ board }}")"; \
    if [ "${family}" != "esp8266" ]; then \
      echo "Backup is currently only supported for ESP8266 boards."; \
      exit 1; \
    fi; \
    output_path="{{ output }}"; \
    if [ -z "${output_path}" ]; then \
      output_path="{{ board }}/backups/{{ board }}_flash_backup_$$(date +%F).bin"; \
    fi; \
    flash_size="{{ size }}"; \
    if [ -z "${flash_size}" ]; then \
      flash_size="{{ default_flash_backup_size }}"; \
    fi; \
    mkdir -p "$$(dirname "${output_path}")"; \
    resolved_port="$(python3 "{{ port_detect_script }}" --write "{{ serial_env_file }}" --project-env "{{ project_env }}" resolve "{{ board }}" --port "{{ port }}")"; \
    conda run -n "{{ project_env }}" python -m esptool --port "${resolved_port}" --chip esp8266 read_flash 0x000000 "${flash_size}" "${output_path}"

restore board port="" input="":
    @family="$(python3 "{{ port_detect_script }}" family "{{ board }}")"; \
    if [ "${family}" != "esp8266" ]; then \
      echo "Restore is currently only supported for ESP8266 boards."; \
      exit 1; \
    fi; \
    if [ -z "{{ input }}" ]; then \
      echo "Pass the backup image path explicitly, for example: just restore {{ board }} input={{ board }}/backups/<file>.bin"; \
      exit 1; \
    fi; \
    resolved_port="$(python3 "{{ port_detect_script }}" --write "{{ serial_env_file }}" --project-env "{{ project_env }}" resolve "{{ board }}" --port "{{ port }}")"; \
    conda run -n "{{ project_env }}" python -m esptool --port "${resolved_port}" --chip esp8266 write_flash 0x000000 "{{ input }}"
