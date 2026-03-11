"""
OSC Send Test Script (Adapted for MAX Software)
Used to test the modified OSC data sending functionality, adapted for MAX software configuration
"""

import time
import socket
from osc import OscClient

def check_port_available(port):
    """Check if port is available"""
    sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    try:
        sock.bind(("127.0.0.1", port))
        sock.close()
        return True
    except:
        sock.close()
        return False

def main():
    """Test OSC sending functionality (adapted for MAX software)"""
    # Configure OSC client (adapted for MAX software)
    osc_ip = "127.0.0.1"
    osc_port = 8000  # Port used by MAX software
    
    print("=" * 60)
    print("OSC Send Test (Adapted for MAX Software)")
    print("=" * 60)
    print(f"Target IP: {osc_ip}")
    print(f"Target Port: {osc_port}")
    print()
    
    # Check if port is available
    if not check_port_available(osc_port):
        print(f"⚠️  Warning: Port {osc_port} may be occupied")
    else:
        print(f"✅  Port {osc_port} is available")
    print()
    
    # Print MAX software configuration information
    print("MAX Software Configuration:")
    print("- Listening Port: 8000")
    print("- Receiving Channels:")
    print("  /chan1: Distance value (0-200)")
    print("  /chan2: Speed value (0-100 cm/s)")
    print("  /chan3: Acceleration value (0-50 cm/s²)")
    print("  /chan4: Distance difference between consecutive measurements (0-200)")
    print()
    print("Please ensure MAX software is started and configured correctly!")
    print()
    
    print("Initializing OSC client...")
    
    # Create OSC client instance
    osc_client = OscClient(osc_ip, osc_port)
    
    if osc_client.is_ready:
        print("✅  OSC client initialized successfully!")
        print("Starting to send test data...")
        print("Press Ctrl+C to stop test")
        print()
        print("OSC messages being sent:")
        print("  - /chan1 -> Distance value (0-200)")
        print("  - /chan2 -> Speed value (0-100 cm/s)")
        print("  - /chan3 -> Acceleration value (0-50 cm/s²)")
        print("  - /chan4 -> Distance difference between consecutive measurements (0-200)")
        print()
        print("MAX software will automatically process these values:")
        print("  - /chan1 -> Distance value (0-200)")
        print("  - /chan2 -> Speed value (0-100 cm/s)")
        print("  - /chan3 -> Acceleration value (0-50 cm/s²)")
        print("  - /chan4 -> Distance difference between consecutive measurements (0-200)")
        print()
        
        try:
            test_count = 0
            while True:
                # Simulate distance data (0-2000 mm, corresponding to 0-200 cm)
                test_distance = (test_count * 50) % 2100  # 0, 50, 100, ..., 2050, 0, ...
                
                # Simulate speed and acceleration data
                test_speed = (test_count * 5) % 100  # 0-100 cm/s
                test_acceleration = (test_count * 2) % 50  # 0-50 cm/s²
                
                # Calculate distance difference
                if test_count > 0:
                    prev_distance = ((test_count - 1) * 50) % 2100
                    test_distance_diff = abs(test_distance - prev_distance)
                else:
                    test_distance_diff = 0
                
                # Send OSC message
                success = osc_client.send_distance(test_distance, test_speed, test_acceleration, test_distance_diff)
                
                if success:
                    display_distance = test_distance / 10  # Convert to cm
                    display_distance_diff = test_distance_diff / 10  # Convert to cm
                    print(f"[{time.strftime('%H:%M:%S')}] Send Success #{test_count+1}")
                    print(f"  Simulated distance: {display_distance:.1f} cm ({test_distance} mm)")
                    print(f"  Simulated speed: {test_speed:.1f} cm/s")
                    print(f"  Simulated acceleration: {test_acceleration:.1f} cm/s²")
                    print(f"  Distance difference: {display_distance_diff:.1f} cm ({test_distance_diff} mm)")
                    print(f"  Channels: /chan1 (distance), /chan2 (speed), /chan3 (acceleration), /chan4 (distance difference)")
                else:
                    print(f"[{time.strftime('%H:%M:%S')}] Send Failed: {osc_client.last_error}")
                
                test_count += 1
                time.sleep(2)  # Send every 2 seconds
                print()
                
        except KeyboardInterrupt:
            print("Test stopped")
    else:
        print(f"❌  OSC client initialization failed: {osc_client.last_error}")

if __name__ == "__main__":
    main()