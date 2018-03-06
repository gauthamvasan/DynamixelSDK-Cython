from robotis_def cimport uint8_t, uint16_t, uint32_t, True, False, NOT_USED_ID
from robotis_def cimport DEFAULT_BAUDRATE, const_char_ptr, const_int_ptr
cimport robotis_def

cdef extern from "/home/gautham/DynamixelSDK/c/include/dynamixel_sdk/port_handler.h":
    int portHandler(const_char_ptr port_name)
    uint8_t openPort(int port_num)
    void closePort(int port_num)
    void clearPort(int port_num)

    void setPortName(int port_num, const_char_ptr port_name)
    char *getPortName(int port_num)

    uint8_t setBaudRate(int port_num, int baudrate)
    int getBaudRate(int port_num)

    int getBytesAvailable(int port_num)

    int readPort(int port_num, uint8_t *packet, int length)
    int writePort(int port_num, uint8_t *packet, int length)

    void setPacketTimeout(int port_num, uint16_t packet_length)
    void setPacketTimeoutMSec(int port_num, double msec)
    uint8_t isPacketTimeout(int port_num)