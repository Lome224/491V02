"""
Terminal chart related functionality module
"""


def draw_ascii_chart(data, width, max_value):
	"""Draw ASCII character chart.
	
	Args:
		data: Distance history data list
		width: Chart width
		max_value: Maximum distance value
	"""
	if not data:
		return
	
	# Ensure data length does not exceed chart width
	if len(data) > width:
		data = data[-width:]
	
	# Calculate height for each data point
	chart_lines = []
	for i, value in enumerate(data):
		# Calculate relative height (0-10)
		relative_height = min(int((value / max_value) * 10), 10)
		# Draw bar chart using ASCII characters
		bar = '█' * relative_height
		chart_lines.append(f"{i+1:3d}: {bar}")
	
	# Print chart
	print("\nDistance change trend:")
	print("-" * (width + 10))
	for line in reversed(chart_lines):  # Reverse to display correct direction
		print(line)
	print("-" * (width + 10))
	print(f"Max: {max(data):.1f} mm, Min: {min(data):.1f} mm, Avg: {sum(data)/len(data):.1f} mm")


class DistanceHistory:
	"""Distance history data management class"""
	
	def __init__(self, max_length=50):
		"""Initialize distance history data
		
		Args:
			max_length: Maximum history data length
		"""
		self.max_length = max_length
		self.data = []
		self.max_value = 1000  # Initial maximum distance value (mm)
		
	def add(self, value):
		"""Add distance data
		
		Args:
			value: Distance value
		"""
		self.data.append(value)
		# Keep data length within maximum length
		if len(self.data) > self.max_length:
			self.data = self.data[-self.max_length:]
		# Update maximum distance value
		self.max_value = max(self.max_value, value)
		
	@property
	def length(self):
		"""Get history data length"""
		return len(self.data)
		
	@property
	def values(self):
		"""Get history data list"""
		return self.data
		
	def clear(self):
		"""Clear history data"""
		self.data = []
		self.max_value = 1000
