#!/usr/bin/env python3
"""
OSC Server Script
Used to receive and display OSC distance data sent by DJLK-2Y sensor
"""

from pythonosc import dispatcher
from pythonosc import osc_server
import threading
import time

# Global variable to store the latest OSC data
latest_data = {
    'distance': None,
    'display_distance': None,
    'unit': None,
    'timestamp': None
}

# Server status
server_running = False

# Callback function to handle distance data
def handle_distance(unused_addr, *args):
    global latest_data
    if args:
        latest_data['distance'] = args[0]
        latest_data['timestamp'] = time.strftime('%Y-%m-%d %H:%M:%S') + f".{int(time.time() * 1000) % 1000:03d}"
        print(f"[OSC Receive] Address: /distance, Data: {args[0]} cm")

# Callback function to handle display distance data
def handle_display_distance(unused_addr, *args):
    global latest_data
    if args:
        latest_data['display_distance'] = args[0]
        print(f"[OSC Receive] Address: /distance/display, Data: {args[0]} {latest_data.get('unit', 'unknown unit')}")

# Callback function to handle unit data
def handle_unit(unused_addr, *args):
    global latest_data
    if args:
        latest_data['unit'] = args[0]
        print(f"[OSC Receive] Address: /distance/unit, Data: {args[0]}")

# Start OSC server
def start_server(ip="127.0.0.1", port=9000):
    global server_running
    
    # Create dispatcher
    dispatcher_instance = dispatcher.Dispatcher()
    dispatcher_instance.map("/distance", handle_distance)
    dispatcher_instance.map("/distance/display", handle_display_distance)
    dispatcher_instance.map("/distance/unit", handle_unit)
    
    # Create server
    server = osc_server.ThreadingOSCUDPServer((ip, port), dispatcher_instance)
    print(f"[OSC Server] Started at {ip}:{port}")
    print("[OSC Server] Waiting for OSC data...")
    print("[OSC Server] When the main program runs, received OSC messages will be displayed here")
    print()
    
    server_running = True
    
    # Start server thread
    server_thread = threading.Thread(target=server.serve_forever)
    server_thread.daemon = True
    server_thread.start()
    
    return server

# Display data overview
def display_data_overview():
    print("\n[OSC Data Overview]")
    print(f"Latest timestamp: {latest_data.get('timestamp', 'no data')}")
    print(f"Raw distance: {latest_data.get('distance', 'no data')} cm")
    print(f"Display distance: {latest_data.get('display_distance', 'no data')} {latest_data.get('unit', 'unknown unit')}")
    print()

if __name__ == "__main__":
    # Start OSC server
    server = start_server()
    
    try:
        # Keep program running
        while True:
            time.sleep(1)
            # Display data overview every 5 seconds
            if int(time.time()) % 5 == 0:
                display_data_overview()
    except KeyboardInterrupt:
        print("\n[OSC Server] Stopping...")
        server.shutdown()
        print("[OSC Server] Stopped")
