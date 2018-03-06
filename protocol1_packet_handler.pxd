from robotis_def cimport uint8_t, uint16_t, uint32_t, const_char_ptr

cdef extern from "/home/gautham/DynamixelSDK/c/include/dynamixel_sdk/packet_handler.h":
    cdef struct PacketData:
        uint8_t *data_write
        uint8_t *data_read
        uint8_t *tx_packet
        uint8_t *rx_packet
        uint8_t error
        int communication_result
        uint8_t *broadcast_ping_id_list

    cdef int BROADCAST_ID
    cdef int MAX_ID

    cdef int INST_PING
    cdef int INST_READ
    cdef int INST_WRITE
    cdef int INST_REG_WRITE
    cdef int INST_ACTION
    cdef int INST_FACTORY_RESET
    cdef int INST_SYNC_WRITE
    cdef int INST_BULK_READ

    cdef int INST_REBOOT
    cdef int INST_STATUS
    cdef int INST_SYNC_READ
    cdef int INST_BULK_WRITE

    cdef int COMM_SUCCESS
    cdef int COMM_PORT_BUSY
    cdef int COMM_TX_FAIL
    cdef int COMM_RX_FAIL
    cdef int COMM_TX_ERROR
    cdef int COMM_RX_WAITING
    cdef int COMM_RX_TIMEOUT
    cdef int COMM_RX_CORRUPT
    cdef int COMM_NOT_AVAILABLE

cdef extern from "/home/gautham/DynamixelSDK/c/include/dynamixel_sdk/protocol1_packet_handler.h":
    const_char_ptr getTxRxResult1(int result)
    void printTxRxResult1(int result)
    const_char_ptr getRxPacketError1(uint8_t error)
    void printRxPacketError1(uint8_t error)

    int  getLastTxRxResult1(int port_num)
    uint8_t getLastRxPacketError1(int port_num)

    void setDataWrite1(int port_num, uint16_t data_length, uint16_t data_pos, uint32_t data)
    uint32_t getDataRead1(int port_num, uint16_t data_length, uint16_t data_pos)

    void txPacket1(int port_num)
    void rxPacket1(int port_num)
    void txRxPacket1(int port_num)

    void ping1(int port_num, uint8_t id)
    uint16_t pingGetModelNum1(int port_num, uint8_t id)

    void broadcastPing1(int port_num)
    uint8_t getBroadcastPingResult1(int port_num, int id)

    void action1(int port_num, uint8_t id)
    void reboot1(int port_num, uint8_t id)
    void factoryReset1(int port_num, uint8_t id, uint8_t option)

    void readTx1(int port_num, uint8_t id, uint16_t address, uint16_t length)
    void readRx1(int port_num, uint16_t length)
    void readTxRx1(int port_num, uint8_t id, uint16_t address, uint16_t length)

    void read1ByteTx1(int port_num, uint8_t id, uint16_t address)
    uint8_t read1ByteRx1(int port_num)
    uint8_t read1ByteTxRx1(int port_num, uint8_t id, uint16_t address)

    void read2ByteTx1(int port_num, uint8_t id, uint16_t address)
    uint16_t read2ByteRx1(int port_num)
    uint16_t read2ByteTxRx1(int port_num, uint8_t id, uint16_t address)

    void read4ByteTx1(int port_num, uint8_t id, uint16_t address)
    uint32_t read4ByteRx1(int port_num)
    uint32_t read4ByteTxRx1(int port_num, uint8_t id, uint16_t address)

    void writeTxOnly1(int port_num, uint8_t id, uint16_t address, uint16_t length)
    void writeTxRx1(int port_num, uint8_t id, uint16_t address, uint16_t length)

    void write1ByteTxOnly1(int port_num, uint8_t id, uint16_t address, uint8_t data)
    void write1ByteTxRx1(int port_num, uint8_t id, uint16_t address, uint8_t data)

    void write2ByteTxOnly1(int port_num, uint8_t id, uint16_t address, uint16_t data)
    void write2ByteTxRx1(int port_num, uint8_t id, uint16_t address, uint16_t data)

    void write4ByteTxOnly1(int port_num, uint8_t id, uint16_t address, uint32_t data)
    void write4ByteTxRx1(int port_num, uint8_t id, uint16_t address, uint32_t data)

    void regWriteTxOnly1(int port_num, uint8_t id, uint16_t address, uint16_t length)
    void regWriteTxRx1(int port_num, uint8_t id, uint16_t address, uint16_t length)

    void syncReadTx1(int port_num, uint16_t start_address, uint16_t data_length, uint16_t param_length)

    void syncWriteTxOnly1(int port_num, uint16_t start_address, uint16_t data_length, uint16_t param_length)

    void bulkReadTx1(int port_num, uint16_t param_length)

    void bulkWriteTxOnly1(int port_num, uint16_t param_length)
