"""
OSC Send Test Script
Used to test OSC data sending functionality, no sensor connection required
"""

import time
from osc import OscClient

def main():
    """Test OSC sending functionality"""
    # Configure OSC client
    osc_ip = "127.0.0.1"
    osc_port = 9000
    osc_path = "/distance"
    
    print(f"Initializing OSC client: {osc_ip}:{osc_port}")
    
    # Create OSC client instance
    osc_client = OscClient(osc_ip, osc_port, osc_path)
    
    if osc_client.is_ready:
        print("OSC client initialized successfully!")
        print(f"OSC message path: {osc_path}")
        print("Starting to send test data...")
        print("Press Ctrl+C to stop test")
        
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
                    print(f"[OSC Send Success] Distance: {display_distance:.1f} {unit} ({test_count+1})")
                else:
                    print(f"[OSC Send Failed] {osc_client.last_error}")
                
                test_count += 1
                time.sleep(1)  # Send every second
                
        except KeyboardInterrupt:
            print("\nTest stopped")
    else:
        print(f"OSC client initialization failed: {osc_client.last_error}")

if __name__ == "__main__":
    main()