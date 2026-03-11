"""
Simplified test script
Used to test the basic functionality of the main program
"""

import argparse
import time
import csv
import serial

# 导入自定义模块
from modbus import build_read_distance, parse_distance_response
from osc import OscClient, has_osc
from chart import draw_ascii_chart, DistanceHistory
from utils import list_serial_ports, detect_system, get_serial_port_example, check_dependencies, print_dependency_errors

def main() -> None:
    global serial
    # Configure command line argument parsing
    parser = argparse.ArgumentParser(
        description="Read DJLK-2Y sensor distance via RS485 Modbus RTU.\n"
            "Supports real-time display, data logging, terminal charts, and more."
    )
    parser.add_argument("port", nargs="?", help="RS485 adapter serial port (e.g., COM3). If not provided, will automatically select the first available serial port.")
    parser.add_argument(
        "--slave", type=int, default=0x01, help="Modbus slave address (default: 0x01, usually no need to modify)"
    )
    parser.add_argument(
        "--baud",
        type=int,
        default=115200,
        help="Serial port baud rate (default: 115200, sensor default baud rate)",
    )
    parser.add_argument(
        "--timeout",
        type=float,
        default=1.0,
        help="Read timeout (seconds) (default: 1.0)",
    )
    parser.add_argument(
        "--loop",
        action="store_true",
        default=True,
        help="Enable continuous detection mode (press Ctrl+C to stop, suitable for real-time monitoring) (default: enabled)",
    )
    parser.add_argument(
        "--interval",
        type=float,
        default=0.5,
        help="Sampling interval in loop mode (seconds) (default: 0.5)",
    )
    parser.add_argument(
        "--unit",
        type=str,
        default="cm",
        choices=["mm", "cm"],
        help="Display unit (default: cm, optional: mm)",
    )
    parser.add_argument(
        "--log",
        type=str,
        help="Enable data logging and specify CSV file path (e.g.: data.csv)",
    )
    parser.add_argument(
        "--chart",
        type=int,
        help="Enable terminal chart functionality and specify chart width (default: 50, 0 means disabled)",
        default=0,
    )
    parser.add_argument(
        "--retries",
        type=int,
        default=3,
        help="Retry count when sensor no response (default: 3, 0 means disable retry)",
    )
    # OSC related parameters
    parser.add_argument(
        "--osc",
        action="store_true",
        default=True,
        help="Enable OSC functionality (default: enabled)",
    )
    parser.add_argument(
        "--osc-ip",
        type=str,
        default="127.0.0.1",
        help="OSC target IP address (default: 127.0.0.1)",
    )
    parser.add_argument(
        "--osc-port",
        type=int,
        default=8000,
        help="OSC target port (default: 8000, compatible with MAX software)",
    )
    parser.add_argument(
        "--osc-path",
        type=str,
        default="/chan",
        help="OSC message path prefix (default: /chan, compatible with MAX software)",
    )
    parser.add_argument(
        "--show-osc",
        action="store_true",
        default=True,
        help="Show OSC data sending information (default: enabled)",
    )
    args = parser.parse_args()

    # Detect system type
    system_info = detect_system()
    if system_info["is_raspberry_pi"]:
        print("Raspberry Pi system detected")

    # Check dependencies
    deps = check_dependencies()
    if not deps["serial"]:
        print_dependency_errors(deps["errors"])
        print("Program will exit.")
        exit(1)

    # Print OSC related warnings
    if not deps["python_osc"]:
        print("Warning: python-osc library not installed, OSC functionality will be unavailable.")
        print("Please run 'pip install python-osc' to install OSC support.")

    # If no port is provided, automatically select the first available serial port
    if args.port is None:
        import serial.tools.list_ports
        ports = serial.tools.list_ports.comports()
        if not ports:
            print("No serial port devices found. Please check if the USB to RS485 adapter is plugged in.")
            return
        args.port = ports[0].device
        print(f"Automatically selected serial port: {args.port} ({ports[0].description})")

    # Build request frame
    request = build_read_distance(args.slave)
    
    # Initialize log file
    log_file = None
    csv_writer = None
    if args.log:
        try:
            log_file = open(args.log, 'w', newline='', encoding='utf-8')
            csv_writer = csv.writer(log_file)
            # Write header
            csv_writer.writerow(['Time', 'Distance (mm)', 'Display Distance', 'Unit'])
            print(f"Data logging enabled, will save to: {args.log}")
        except Exception as e:
            print(f"Error: Cannot open log file: {e}")
            args.log = None
    
    # Initialize chart-related variables
    chart_enabled = args.chart > 0
    chart_width = args.chart if args.chart > 0 else 50
    distance_history = []
    max_distance = 1000  # Initial maximum distance value (mm)
    
    # Initialize OSC client
    osc_client = None
    if args.osc:
        try:
            osc_client = OscClient(args.osc_ip, args.osc_port, args.osc_path)
            if osc_client.is_ready:
                print(f"OSC client initialized: {args.osc_ip}:{args.osc_port}")
                print("OSC data conversion information:")
                print("  - Channel configuration for MAX software:")
                print("    /chan1: Raw distance value (0-200)")
                print("    /chan2: Distance value mapped to 0-20 range")
                print("    /chan3: Distance value mapped to 0-2 range")
                print("    /chan4: Distance value mapped to 0-2 range")
            else:
                print(f"Error: {osc_client.last_error}")
        except Exception as e:
            print(f"Error: Cannot initialize OSC client: {e}")
            osc_client = None

    print(f"Opening serial port {args.port} (baud rate: {args.baud})...")
    
    try:
        with serial.Serial(args.port, baudrate=args.baud, timeout=args.timeout) as ser:
            print("Serial port opened.")
            if args.loop:
                print(f"Entering continuous detection mode (interval {args.interval}s, press Ctrl+C to stop)...")

            # Initialize dynamic parameters
            dynamic_interval = args.interval
            last_distance = None
            retry_count = 0
            
            while True:
                retry_count = 0
                success = False
                
                while retry_count < args.retries and not success:
                    ser.reset_input_buffer() # Clear input buffer
                    
                    if not args.loop:
                        print(f"Sending request: {request.hex(' ').upper()}")
                    
                    ser.write(request)       # Send data
                    
                    time.sleep(0.300)         # Wait for sensor response (300ms)
                    
                    # Read response (expected 7 bytes)
                    response = ser.read(7)
                    
                    if not response:
                        retry_count += 1
                        if retry_count < args.retries:
                            print(f"Error: Sensor no response (timeout), retrying ({retry_count}/{args.retries})...")
                        else:
                            print("Error: Sensor no response (timeout), maximum retries reached")
                    else:
                        if not args.loop:
                            print(f"Received response: {response.hex(' ').upper()}")
                        
                        try:
                            # Parse and print distance
                            distance = parse_distance_response(response, args.slave)
                            timestamp = time.strftime("%H:%M:%S")
                            current_time = time.strftime("%Y-%m-%d %H:%M:%S")
                            # Convert distance based on selected unit
                            if args.unit == "cm":
                                display_distance = distance / 10
                                unit_str = "cm"
                            else:
                                display_distance = distance
                                unit_str = "mm"
                            # Update distance history data
                            if chart_enabled:
                                distance_history.append(distance)
                                # Update maximum distance value
                                max_distance = max(max_distance, distance)
                            # Print distance
                            if args.loop:
                                print(f"[{timestamp}] Measured distance: {display_distance:.1f} {unit_str}       ", end="\r", flush=True)
                            else:
                                print(f"Measured distance: {display_distance:.1f} {unit_str}")
                            # Write to log file
                            if args.log and csv_writer:
                                csv_writer.writerow([current_time, distance, display_distance, unit_str])
                                log_file.flush()  # Ensure data is written to file immediately
                            # Draw ASCII chart (every 10 measurements or non-loop mode)
                            if chart_enabled and (not args.loop or len(distance_history) % 10 == 0):
                                draw_ascii_chart(distance_history, chart_width, max_distance)
                            # Dynamically adjust read interval
                            if last_distance is not None:
                                distance_change = abs(distance - last_distance)
                                # Adjust interval based on distance change rate
                                if distance_change > 50:  # Large distance change, increase sampling frequency
                                    dynamic_interval = max(0.05, args.interval * 0.5)
                                elif distance_change < 10:  # Small distance change, decrease sampling frequency
                                    dynamic_interval = min(1.0, args.interval * 2)
                                else:
                                    dynamic_interval = args.interval
                            last_distance = distance
                            
                            # Send OSC message
                            if osc_client:
                                success = osc_client.send_distance(distance, display_distance, unit_str)
                                if success and args.show_osc:
                                    # Display OSC data sending information
                                    print(f"[OSC Send Success] Distance: {display_distance:.1f} {unit_str} -> Channels: /chan1, /chan2, /chan3, /chan4                                        ", end="\r", flush=True)
                                elif not success:
                                    print(f"[OSC Send Failed] {osc_client.last_error}")
                            success = True
                        except ValueError as e:
                            retry_count += 1
                            if retry_count < args.retries:
                                print(f"Data parsing error: {e}, retrying ({retry_count}/{args.retries})...")
                            else:
                                print(f"Data parsing error: {e}, maximum retries reached")
                
                if not args.loop:
                    break
                
                # Use dynamically adjusted interval
                time.sleep(dynamic_interval)

    except serial.SerialException as e:
        print(f"Serial port error: {e}")
        print("Possible causes and solutions:")
        print("  1. Serial port is occupied by another program (e.g., previous test instance)")
        print("  2. Insufficient permissions (try running as administrator)")
        print("  3. Driver issues (reinstall USB to RS485 adapter driver)")
        print("  4. Device not properly connected (check USB cable and sensor connections)")
        print("Please resolve the above issues and run the program again.")
        return
    except KeyboardInterrupt:
        print("\nUser stopped detection")
    finally:
        # Close log file
        if log_file:
            log_file.close()
            print(f"\nLog file closed: {args.log}")

if __name__ == "__main__":
    main()