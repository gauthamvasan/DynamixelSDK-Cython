cimport port_handler

def port_handler(port_name):
    return portHandler(port_name)

def open_port(port_num):
    return openPort(port_num)

def close_port(port_num):
    closePort(port_num)

def clear_port(port_num):
    clearPort(port_num)

def set_port_name(port_num, port_name):
    setPortName(port_num, port_name)

def get_port_name(port_num):
    return getPortName(port_num)

def set_baud_rate(port_num, baudrate):
    return setBaudRate(port_num, baudrate)

def get_baud_rate(port_num):
    return getBaudRate(port_num)

def get_bytes_available(port_num):
    return getBytesAvailable(port_num)

def read_port(port_num, packet, length):
    return readPort(port_num, packet, length)

def write_port(port_num, packet, length):
    return writePort(port_num, packet, length)

def set_packet_timeout(port_num, packet_length):
    setPacketTimeout(port_num, packet_length)

def set_packet_timeout_msec(port_num, msec):
    setPacketTimeoutMSec(port_num, msec)

def is_packet_timeout(port_num):
    return isPacketTimeout(port_num)
    
_True = True
_False = False
_NOT_USED_ID = NOT_USED_ID
_DEFAULT_BAUDRATE = DEFAULT_BAUDRATE
