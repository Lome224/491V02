"""
DJLK-2Y Sensor Modbus RTU Script — with Python-side filtering restored

Filtering options (configurable via command line):
  --filter none        Raw mode — no filtering (original behavior)
  --filter moving_avg  Simple moving average (default, window size via --window)
  --filter ema         Exponential moving average (smoothing factor via --alpha)
  --filter median      Median filter (good for spike removal, window via --window)
  --filter kalman      1D Kalman filter (good for noisy distance sensors)

OSC Channel Layout (sent to Max/MSP):
  /chan1: Distance value (filtered or raw depending on --filter setting)
  /chan2: Speed (cm/s) — computed from filtered distance
  /chan3: Acceleration (cm/s²)
  /chan4: Absolute distance difference between consecutive readings (mm)
  /chan5: Jerk (cm/s³) — rate of change of acceleration

Sampling Rate:
  Default 50Hz (0.02s interval) — configurable via --interval
"""

import argparse
import time
import csv
import glob
import collections
import serial

from modbus import build_read_distance, parse_distance_response
from osc import OscClient, has_osc
from utils import list_serial_ports, detect_system, get_serial_port_example, check_dependencies, print_dependency_errors

system_info = detect_system()
if system_info["is_raspberry_pi"]:
    print("Raspberry Pi system detected")

deps = check_dependencies()
if not deps["serial"]:
    print_dependency_errors(deps["errors"])
    print("Program will exit.")
    exit(1)

if not deps["python_osc"]:
    print("Warning: python-osc not installed. Run 'pip install python-osc'.")


# ---------------------------------------------------------------------------
# Filter Classes
# ---------------------------------------------------------------------------

class MovingAverageFilter:
    """Simple moving average — smooths over last N readings."""
    def __init__(self, window=5):
        self.window = window
        self.buffer = collections.deque(maxlen=window)

    def update(self, value):
        self.buffer.append(value)
        return sum(self.buffer) / len(self.buffer)


class ExponentialMovingAverage:
    """EMA — recent values weighted more heavily.
    alpha=0.1 → heavy smoothing, alpha=0.9 → light smoothing (more reactive)."""
    def __init__(self, alpha=0.2):
        self.alpha = alpha
        self.value = None

    def update(self, value):
        if self.value is None:
            self.value = value
        else:
            self.value = self.alpha * value + (1 - self.alpha) * self.value
        return self.value


class MedianFilter:
    """Median filter — great for removing sudden spike outliers."""
    def __init__(self, window=5):
        self.window = window
        self.buffer = collections.deque(maxlen=window)

    def update(self, value):
        self.buffer.append(value)
        return float(sorted(self.buffer)[len(self.buffer) // 2])


class KalmanFilter1D:
    """Simple 1D Kalman filter for noisy distance sensors.
    process_noise  — how much we trust the sensor model (higher = more reactive)
    measurement_noise — how much noise we expect from the sensor (higher = more smoothing)"""
    def __init__(self, process_noise=1.0, measurement_noise=10.0):
        self.q = process_noise
        self.r = measurement_noise
        self.p = 1.0   # estimation error covariance
        self.x = None  # estimated value

    def update(self, value):
        if self.x is None:
            self.x = value
            return self.x
        # Predict
        self.p += self.q
        # Update
        k = self.p / (self.p + self.r)       # Kalman gain
        self.x += k * (value - self.x)
        self.p *= (1 - k)
        return self.x


def build_filter(args):
    """Instantiate the correct filter based on CLI args."""
    name = args.filter.lower()
    if name == "moving_avg":
        print(f"Filter: Moving Average (window={args.window})")
        return MovingAverageFilter(window=args.window)
    elif name == "ema":
        print(f"Filter: Exponential Moving Average (alpha={args.alpha})")
        return ExponentialMovingAverage(alpha=args.alpha)
    elif name == "median":
        print(f"Filter: Median (window={args.window})")
        return MedianFilter(window=args.window)
    elif name == "kalman":
        print(f"Filter: Kalman (process_noise={args.process_noise}, measurement_noise={args.measurement_noise})")
        return KalmanFilter1D(process_noise=args.process_noise, measurement_noise=args.measurement_noise)
    else:
        print("Filter: None (raw mode)")
        return None


# ---------------------------------------------------------------------------
# Main
# ---------------------------------------------------------------------------

def main() -> None:
    global serial

    parser = argparse.ArgumentParser(
        description="Read DJLK-2Y sensor via RS485 Modbus RTU with optional filtering.\n"
                    "Sends filtered distance, speed, acceleration, and diff to Max/MSP via OSC."
    )

    # Serial
    parser.add_argument("port", nargs="?",
        help="Serial port (e.g. /dev/cu.usbserial-XXXXX). Auto-detected if omitted.")
    parser.add_argument("--slave",   type=int,   default=0x01)
    parser.add_argument("--baud",    type=int,   default=115200)
    parser.add_argument("--timeout", type=float, default=0.1)
    parser.add_argument("--interval",type=float, default=0.02,
        help="Sampling interval in seconds (default: 0.02 = 50Hz)")
    parser.add_argument("--unit",    type=str,   default="cm", choices=["mm", "cm"])
    parser.add_argument("--log",     type=str,   help="CSV log file path")
    parser.add_argument("--retries", type=int,   default=3)
    parser.add_argument("--osc",     action="store_true", default=True)

    # Filter selection
    parser.add_argument("--filter", type=str, default="moving_avg",
        choices=["none", "moving_avg", "ema", "median", "kalman"],
        help="Filter type to apply to distance readings (default: moving_avg)")

    # Moving average / median window
    parser.add_argument("--window", type=int, default=5,
        help="Window size for moving_avg or median filter (default: 5)")

    # EMA smoothing factor
    parser.add_argument("--alpha", type=float, default=0.2,
        help="Smoothing factor for EMA filter, 0.0–1.0 (default: 0.2)")

    # Kalman tuning
    parser.add_argument("--process-noise",     type=float, default=1.0,
        help="Kalman process noise — higher = more reactive (default: 1.0)")
    parser.add_argument("--measurement-noise", type=float, default=10.0,
        help="Kalman measurement noise — higher = more smoothing (default: 10.0)")

    args = parser.parse_args()

    # Auto-detect serial port
    if args.port is None:
        usb_ports = (glob.glob("/dev/cu.usbserial-*") +
                     glob.glob("/dev/cu.usbmodem-*") +
                     glob.glob("/dev/ttyUSB*") +
                     glob.glob("/dev/ttyACM*"))
        if usb_ports:
            args.port = usb_ports[0]
            print(f"Auto-selected port: {args.port}")
        else:
            print("Error: No USB serial device found.")
            return

    # Build filter
    distance_filter = build_filter(args)

    # Build Modbus request frame
    request = build_read_distance(args.slave)

    # CSV logging
    log_file   = None
    csv_writer = None
    if args.log:
        try:
            log_file   = open(args.log, 'w', newline='', encoding='utf-8')
            csv_writer = csv.writer(log_file)
            csv_writer.writerow(['Time', 'Raw Distance (mm)', 'Filtered Distance (mm)',
                                 'Display Distance', 'Unit', 'Speed (cm/s)',
                                 'Acceleration (cm/s²)', 'Distance Diff (mm)', 'Jerk (cm/s³)'])
            print(f"Logging to: {args.log}")
        except Exception as e:
            print(f"Cannot open log file: {e}")
            args.log = None

    # OSC client
    osc_client = None
    if args.osc:
        try:
            osc_client = OscClient("127.0.0.1", 8000, "/chan")
            if osc_client.is_ready:
                print("OSC → 127.0.0.1:8000  channels: /chan1 /chan2 /chan3 /chan4 /chan5")
            else:
                print(f"OSC error: {osc_client.last_error}")
        except Exception as e:
            print(f"OSC init error: {e}")

    print(f"Opening {args.port} @ {args.baud} baud...")

    try:
        with serial.Serial(args.port, baudrate=args.baud, timeout=args.timeout) as ser:
            print(f"Reading at ~{1/args.interval:.0f}Hz — Ctrl+C to stop\n")

            last_distance     = None
            last_speed        = None
            last_acceleration = None
            last_time         = None

            while True:
                retry_count = 0
                success     = False

                while retry_count < args.retries and not success:
                    ser.reset_input_buffer()
                    ser.write(request)
                    time.sleep(0.05) #hard code, any way to change it
                    response = ser.read(7)

                    if not response:
                        retry_count += 1
                        if retry_count < args.retries:
                            print(f"No response, retrying ({retry_count}/{args.retries})...")
                        else:
                            print("Max retries reached — skipping reading")
                    else:
                        try:
                            raw_distance = parse_distance_response(response, args.slave)
                            current_time = time.time()
                            timestamp    = time.strftime("%H:%M:%S")

                            # Apply filter (or pass through if none)
                            if distance_filter is not None:
                                filtered_distance = distance_filter.update(raw_distance)
                            else:
                                filtered_distance = float(raw_distance)

                            # Display conversion
                            if args.unit == "cm":
                                display_distance = filtered_distance / 10
                                unit_str = "cm"
                            else:
                                display_distance = filtered_distance
                                unit_str = "mm"

                            # Speed (cm/s) from filtered distance
                            speed = 0.0
                            if last_distance is not None and last_time is not None:
                                time_diff = current_time - last_time
                                if time_diff > 0:
                                    speed = (filtered_distance - last_distance) / (time_diff * 10)

                            # Acceleration (cm/s²)
                            acceleration = 0.0
                            if last_speed is not None and last_time is not None:
                                time_diff = current_time - last_time
                                if time_diff > 0:
                                    acceleration = (speed - last_speed) / time_diff

                            # Jerk (cm/s³) — rate of change of acceleration
                            jerk = 0.0
                            if last_acceleration is not None and last_time is not None:
                                time_diff = current_time - last_time
                                if time_diff > 0:
                                    jerk = (acceleration - last_acceleration) / time_diff

                            # Absolute distance diff (mm)
                            distance_diff = abs(filtered_distance - last_distance) if last_distance is not None else 0.0

                            # Terminal output
                            print(
                                f"[{timestamp}] "
                                f"raw={raw_distance}mm  "
                                f"filtered={filtered_distance:.1f}mm  "
                                f"disp={display_distance:.1f}{unit_str}  "
                                f"spd={speed:.1f}cm/s  "
                                f"acc={acceleration:.1f}cm/s²  "
                                f"jerk={jerk:.1f}cm/s³     ",
                                end="\r", flush=True
                            )

                            # CSV log
                            if args.log and csv_writer:
                                csv_writer.writerow([
                                    time.strftime("%Y-%m-%d %H:%M:%S"),
                                    raw_distance, filtered_distance,
                                    display_distance, unit_str,
                                    speed, acceleration, distance_diff, jerk
                                ])
                                log_file.flush()

                            # OSC send — /chan1=filtered dist, /chan2=speed, /chan3=accel, /chan4=diff, /chan5=jerk
                            if osc_client:
                                osc_success = osc_client.send_distance(
                                    filtered_distance, speed, acceleration, distance_diff, jerk
                                )
                                if not osc_success:
                                    print(f"\n[OSC failed] {osc_client.last_error}")

                            last_distance     = filtered_distance
                            last_speed        = speed
                            last_acceleration = acceleration
                            last_time         = current_time
                            success       = True

                        except ValueError as e:
                            retry_count += 1
                            if retry_count < args.retries:
                                print(f"Parse error: {e}, retrying ({retry_count}/{args.retries})...")
                            else:
                                print(f"Parse error: {e}, max retries reached")

                time.sleep(args.interval)

    except serial.SerialException as e:
        print(f"\nSerial error: {e}")
    except KeyboardInterrupt:
        print("\nStopped by user")
    finally:
        if log_file:
            log_file.close()
            print(f"Log saved: {args.log}")


if __name__ == "__main__":
    main()