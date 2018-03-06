cdef extern from "/home/gautham/DynamixelSDK/c/include/dynamixel_sdk/robotis_def.h":
    cdef int True
    cdef int False
    cdef int NOT_USED_ID
    ctypedef unsigned char       uint8_t
    ctypedef unsigned short int  uint16_t
    ctypedef unsigned int        uint32_t

cdef extern from *:
    ctypedef char* const_char_ptr "const char*"
    ctypedef char* const_int_ptr "const int"

cdef extern from "/home/gautham/DynamixelSDK/c/include/dynamixel_sdk/port_handler.h":
    cdef int DEFAULT_BAUDRATE
    cdef int g_used_port_num
    cdef uint8_t *g_is_using
