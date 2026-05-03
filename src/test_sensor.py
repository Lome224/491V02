import serial, time
from dotenv import dotenv_values
from pymodbus.client import ModbusSerialClient as ModbusClient

env_values = dotenv_values(".env")
port = env_values.get("SENSOR_PORT", "/dev/ttyUSB0")
baud = int(env_values.get("SENSOR_BAUD", 115200))
slave = 1

client = ModbusClient(
    port=port,
    baudrate=baud,
    bytesize=8,
    parity='N',
    stopbits=1,
    timeout=1)

while not client.connect():
    print(f"Failed to connect to sensor on {port} at {baud} baud. Retrying in 2 seconds...")
    time.sleep(2)

try:
    print(f"Connected to sensor on {port} at {baud} baud.")
    print("Reading distance data every 2 seconds. Press Ctrl+C to stop.")
    while True:
        result = client.read_holding_registers(0x0010, count=1, device_id=slave)
        if not result.isError():
            distance_mm = result.registers[0]
            print(f"Distance: {distance_mm} mm")
        else:
            print(f"Error reading from sensor: {result}")
        time.sleep(2)
except KeyboardInterrupt:
    print("\nStopping sensor test.")
finally:    
    client.close()