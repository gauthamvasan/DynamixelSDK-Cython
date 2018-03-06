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

cdef extern from "/home/gautham/DynamixelSDK/c/include/dynamixel_sdk/packet_handler.h":
    void packetHandler()

    const_char_ptr getTxRxResult(int protocol_version, int result)
    void printTxRxResult(int protocol_version, int result)
    const_char_ptr getRxPacketError(int protocol_version, uint8_t error)
    void printRxPacketError(int protocol_version, uint8_t error)

    int  getLastTxRxResult(int port_num, int protocol_version)
    uint8_t getLastRxPacketError(int port_num, int protocol_version)

    void setDataWrite(int port_num, int protocol_version, uint16_t data_length, uint16_t data_pos, uint32_t data)
    uint32_t getDataRead(int port_num, int protocol_version, uint16_t data_length, uint16_t data_pos)

    void txPacket(int port_num, int protocol_version)

    void rxPacket(int port_num, int protocol_version)

    void txRxPacket(int port_num, int protocol_version)

    void ping(int port_num, int protocol_version, uint8_t id)

    uint16_t pingGetModelNum(int port_num, int protocol_version, uint8_t id)

    void broadcastPing(int port_num, int protocol_version)
    uint8_t getBroadcastPingResult(int port_num, int protocol_version, int id)

    void reboot(int port_num, int protocol_version, uint8_t id)

    void factoryReset(int port_num, int protocol_version, uint8_t id, uint8_t option)

    void readTx(int port_num, int protocol_version, uint8_t id, uint16_t address, uint16_t length)
    void readRx(int port_num, int protocol_version, uint16_t length)
    void readTxRx(int port_num, int protocol_version, uint8_t id, uint16_t address, uint16_t length)

    void read1ByteTx(int port_num, int protocol_version, uint8_t id, uint16_t address)
    uint8_t read1ByteRx(int port_num, int protocol_version)
    uint8_t read1ByteTxRx(int port_num, int protocol_version, uint8_t id, uint16_t address)

    void read2ByteTx(int port_num, int protocol_version, uint8_t id, uint16_t address)
    uint16_t read2ByteRx(int port_num, int protocol_version)
    uint16_t read2ByteTxRx(int port_num, int protocol_version, uint8_t id, uint16_t address)

    void read4ByteTx(int port_num, int protocol_version, uint8_t id, uint16_t address)
    uint32_t read4ByteRx  (int port_num, int protocol_version)
    uint32_t read4ByteTxRx  (int port_num, int protocol_version, uint8_t id, uint16_t address)

    void writeTxOnly(int port_num, int protocol_version, uint8_t id, uint16_t address, uint16_t length)
    void writeTxRx(int port_num, int protocol_version, uint8_t id, uint16_t address, uint16_t length)

    void write1ByteTxOnly(int port_num, int protocol_version, uint8_t id, uint16_t address, uint8_t data)
    void write1ByteTxRx(int port_num, int protocol_version, uint8_t id, uint16_t address, uint8_t data)

    void write2ByteTxOnly(int port_num, int protocol_version, uint8_t id, uint16_t address, uint16_t data)
    void write2ByteTxRx(int port_num, int protocol_version, uint8_t id, uint16_t address, uint16_t data)

    void write4ByteTxOnly(int port_num, int protocol_version, uint8_t id, uint16_t address, uint32_t data)
    void write4ByteTxRx(int port_num, int protocol_version, uint8_t id, uint16_t address, uint32_t data)

    void regWriteTxOnly(int port_num, int protocol_version, uint8_t id, uint16_t address, uint16_t length)
    void regWriteTxRx(int port_num, int protocol_version, uint8_t id, uint16_t address, uint16_t length)

    void syncReadTx(int port_num, int protocol_version, uint16_t start_address, uint16_t data_length, uint16_t param_length)

    void syncWriteTxOnly(int port_num, int protocol_version, uint16_t start_address, uint16_t data_length, uint16_t param_length)

    void bulkReadTx(int port_num, int protocol_version, uint16_t param_length)

    void bulkWriteTxOnly(int port_num, int protocol_version, uint16_t param_length)
