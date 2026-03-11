# Program Execution Instructions

## Execute from the `code` directory (recommended):
`python code\DJLK_test.py COM4` — Default program run command (serial port can be modified)

`python code\DJLK_test.py COM4 --loop --osc --osc-ip 127.0.0.1 --osc-port 8000` — Run with specified parameters

## OSC test program:
`python code\test_osc_max.py`

## How to modify the destination IP address and port number:
```
python code\DJLK_test.py [serial_port] --osc-ip <IP_address> --osc-port <port_number> --osc-path <message_path>
python code\DJLK_test.py COM4 --osc-ip 127.0.0.1 --osc-port 8000
```

## OSC display terminal:
`python code\osc_server.py` — If the OSC display terminal is killed, this program needs to be restarted

## Notes:
- Run all commands from the `code` directory
- Default OSC port has been changed to **8000** (to match Max/MSP configuration)
- Default OSC channels: `/chan1`, `/chan2`, `/chan3`, `/chan4`