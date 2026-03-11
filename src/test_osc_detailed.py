"""
Detailed OSC Send Test Script
Used to test OSC data sending functionality and provide detailed Max/MSP configuration guide
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
    """Detailed test of OSC sending functionality"""
    # Configure OSC client
    osc_ip = "127.0.0.1"
    osc_port = 9000
    osc_path = "/distance"
    
    print("=" * 60)
    print("OSC Detailed Send Test")
    print("=" * 60)
    print(f"Target IP: {osc_ip}")
    print(f"Target Port: {osc_port}")
    print(f"Message Path: {osc_path}")
    print()
    
    # Check if port is available
    if not check_port_available(osc_port):
        print(f"⚠️  Warning: Port {osc_port} may be occupied")
    else:
        print(f"✅  Port {osc_port} is available")
    print()
    
    # Print Max/MSP configuration guide
    print("Max/MSP Configuration Guide:")
    print("1. Create a new patch in Max/MSP")
    print("2. Place the following objects:")
    print("   - udpreceive 9000")
    print("   - unpackOSC")
    print("   - route /distance /distance/display /distance/unit")
    print("   - number or message objects for displaying data")
    print("3. Connect objects:")
    print("   udpreceive output -> unpackOSC input")
    print("   unpackOSC output -> route input")
    print("   route outputs -> corresponding display objects")
    print()
    print("Max/MSP Example Code:")
    print("\"udpreceive 9000\" -> \"unpackOSC\" -> \"route /distance /distance/display /distance/unit\"")
    print("route first output -> \"print raw:\"")
    print("route second output -> \"print display:\"")
    print("route third output -> \"print unit:\"")
    print()
    
    print("Initializing OSC client...")
    
    # Create OSC client instance
    osc_client = OscClient(osc_ip, osc_port, osc_path)
    
    if osc_client.is_ready:
        print("✅  OSC client initialized successfully!")
        print("Starting to send test data...")
        print("Press Ctrl+C to stop test")
        print()
        print("OSC messages being sent:")
        print(f"  - {osc_path}         -> Distance value (cm)")
        print(f"  - {osc_path}/display -> Display distance value")
        print(f"  - {osc_path}/unit    -> Unit information")
        print()
        
        try:
            test_count = 0
            while True:
                # Simulate distance data
                test_distance = 500 + (test_count % 100)  # 500-599 mm
                display_distance = test_distance / 10  # Convert to cm
                unit = "cm"
                
                # Send OSC message
                success = osc_client.send_distance(test_distance, display_distance, unit)
                
                if success:
                    print(f"[{time.strftime('%H:%M:%S')}] Send Success #{test_count+1}: {display_distance:.1f} {unit}")
                    print(f"  Message: {osc_path} = {display_distance:.1f}")
                    print(f"  Message: {osc_path}/display = {display_distance:.1f}")
                    print(f"  Message: {osc_path}/unit = {unit}")
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