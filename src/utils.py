"""
General utility functions module
"""

import platform  # For detecting system type
import serial.tools.list_ports # For listing serial ports


def list_serial_ports():
	"""List all available serial ports in the system."""
	ports = serial.tools.list_ports.comports()
	if not ports:
		print("No serial port devices found. Please check if the USB to RS485 adapter is plugged in.")
		return
	print("Available serial port devices:")
	for p in ports:
		print(f"  {p.device} - {p.description}")


def detect_system():
	"""Detect system type
	
	Returns:
		dict: Dictionary containing system type information
	"""
	result = {
		"system": platform.system(),
		"is_raspberry_pi": False,
		"is_linux": False,
		"is_windows": False,
		"is_mac": False
	}
	
	if result["system"] == "Linux":
		result["is_linux"] = True
		# 尝试检测是否为树莓派
		try:
			with open("/proc/cpuinfo", "r") as f:
				cpuinfo = f.read()
				if "Raspberry Pi" in cpuinfo:
					result["is_raspberry_pi"] = True
		except Exception:
			pass
	elif result["system"] == "Windows":
		result["is_windows"] = True
	elif result["system"] == "Darwin":
		result["is_mac"] = True
	
	return result


def get_serial_port_example():
	"""Get serial port example path
	
	Returns:
		str: Serial port example path
	"""
	system_info = detect_system()
	if system_info["is_windows"]:
		return "COM3"
	else:
		return "/dev/ttyUSB0"


def check_dependencies():
	"""Check dependent libraries
	
	Returns:
		dict: Dictionary containing dependency check results
	"""
	result = {
		"serial": False,
		"python_osc": False,
		"errors": []
	}
	
	# Check pyserial
	try:
		import serial
		result["serial"] = True
	except ImportError:
		result["errors"].append("pyserial library not installed, serial port functionality will be unavailable.")
	
	# Check python-osc
	try:
		from pythonosc import udp_client
		result["python_osc"] = True
	except ImportError:
		result["errors"].append("python-osc library not installed, OSC functionality will be unavailable.")
	
	return result


def print_dependency_errors(errors):
	"""Print dependency library error messages
	
	Args:
		errors: List of error messages
	"""
	for error in errors:
		print(f"Error: {error}")
	
	system_info = detect_system()
	if system_info["is_raspberry_pi"]:
		print("\nOn Raspberry Pi, you may also need to run the following commands to install system-level support:")
		print("  sudo apt-get install python3-serial")
		print("  sudo apt-get install python3-pip")
	
	print("\nPlease run the following command to install missing dependencies:")
	print("  pip install pyserial python-osc")
