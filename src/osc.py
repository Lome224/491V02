"""
OSC communication related functionality module
"""

# Try to import OSC library
try:
    from pythonosc import udp_client
    has_osc = True
except ImportError:
    has_osc = False


class OscClient:
    """OSC client class for sending distance data as OSC messages"""

    def __init__(self, ip="127.0.0.1", port=8000, path="/chan"):
        self.ip = ip
        self.port = port
        self.path = path
        self.client = None

        if has_osc:
            try:
                self.client = udp_client.SimpleUDPClient(ip, port)
                self.initialized = True
                self.error = None
            except Exception as e:
                self.initialized = False
                self.error = f"Cannot initialize OSC client: {e}"
        else:
            self.initialized = False
            self.error = "python-osc library not installed."

    def send_distance(self, distance, speed, acceleration=None, distance_diff=0, jerk=0, board=None):
        """Send all values raw — no scaling, no clamping, no unit conversion.
        All scaling happens in Max.

        /chan1: distance      (mm,    raw from sensor)
        /chan2: speed         (cm/s,  raw computed)
        /chan3: acceleration  (cm/s², raw computed)
        /chan4: distance_diff (mm,    raw computed)
        /chan5: jerk          (cm/s³, raw computed)
        /chan6: board status  (0=pause/reset, 1=running))
        """
        if not self.initialized:
            return False

        try:
            self.client.send_message("/chan1", float(distance))
            self.client.send_message("/chan2", float(speed))
            self.client.send_message("/chan3", float(acceleration or 0))
            self.client.send_message("/chan4", float(distance_diff))
            self.client.send_message("/chan5", float(jerk or 0))
            self.client.send_message("/chan6", int(board) if board is not None else 0)
            return True
        except Exception as e:
            self.error = f"Cannot send OSC message: {e}"
            return False

    @property
    def is_ready(self):
        return self.initialized

    @property
    def last_error(self):
        return self.error