"""
Modbus protocol related functionality module
"""

# Modbus protocol constant definitions
MODBUS_READ_FUNC = 0x03      # Function code 03: Read holding registers
DISTANCE_REGISTER = 0x0010   # Distance register address (0x0010 in the manual)
DEFAULT_BYTE_COUNT = 1       # Number of registers to read (1 register = 2 bytes)


def calc_crc16(frame: bytes) -> int:
	"""Calculate Modbus RTU CRC16 checksum."""

	crc = 0xFFFF  # Initial value is 0xFFFF
	for byte in frame:
		crc ^= byte  # XOR with current byte
		for _ in range(8):  # Process 8 bits
			if crc & 0x0001:  # If least significant bit is 1
				crc = (crc >> 1) ^ 0xA001  # Shift right and XOR with polynomial 0xA001
			else:
				crc >>= 1  # Otherwise directly shift right
	return crc

def build_read_distance(slave_id: int = 0x01) -> bytes:
	"""Build Modbus request frame for reading distance register."""

	frame = bytearray()
	frame.append(slave_id)        # 1. Slave address
	frame.append(MODBUS_READ_FUNC)# 2. Function code (0x03)
	frame += DISTANCE_REGISTER.to_bytes(2, "big")  # 3. Register start address (2 bytes, big-endian)
	frame += DEFAULT_BYTE_COUNT.to_bytes(2, "big") # 4. Register count (2 bytes, big-endian)
	
	# 5. Calculate CRC checksum
	crc = calc_crc16(frame)
	# 6. Add CRC (2 bytes, little-endian: low byte first, high byte second)
	frame += crc.to_bytes(2, "little")
	
	return bytes(frame)

def parse_distance_response(frame: bytes, expected_slave: int) -> int:
	"""Verify response frame and extract distance data (unit: mm)."""

	# Minimum response length is 7 bytes: address(1) + function(1) + byte count(1) + data(2) + CRC(2)
	if len(frame) < 7:
		raise ValueError("Response data too short")

	payload = frame[:-2]  # Data payload (excluding last 2 bytes CRC)
	received_crc = int.from_bytes(frame[-2:], "little") # Received CRC
	
	# Verify CRC
	if calc_crc16(payload) != received_crc:
		raise ValueError("CRC check failed")

	slave, func, byte_count = payload[:3] # Extract header information
	
	if slave != expected_slave:
		raise ValueError(f"Slave address mismatch: expected {expected_slave}, actual {slave}")
	if func != MODBUS_READ_FUNC:
		raise ValueError(f"Function code error: {func}")
	if byte_count != 2:
		raise ValueError(f"Byte count error: {byte_count} (expected 2)")

	# Extract distance data (bytes 4-5, big-endian)
	return int.from_bytes(payload[3:5], "big")
