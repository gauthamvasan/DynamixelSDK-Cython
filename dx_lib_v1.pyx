cimport port_handler
cimport protocol1_packet_handler
cimport packet_handler

def portHandler(port_name):
    return port_handler.portHandler(port_name)

def openPort(port_num):
    return port_handler.openPort(port_num)

def closePort(port_num):
    port_handler.closePort(port_num)

def clearPort(port_num):
    port_handler.clearPort(port_num)

def setPortName(port_num, port_name):
    port_handler.setPortName(port_num, port_name)

def getPortName(port_num):
    return port_handler.getPortName(port_num)

def setBaudRate(port_num, baudrate):
    return port_handler.setBaudRate(port_num, baudrate)

def getBaudRate(port_num):
    return port_handler.getBaudRate(port_num)

def getBytesAvailable(port_num):
    return port_handler.getBytesAvailable(port_num)

def readPort(port_num, packet, length):
    return port_handler.readPort(port_num, packet, length)

def writePort(port_num, packet, length):
    return port_handler.writePort(port_num, packet, length)

def setPacketTimeout(port_num, packet_length):
    port_handler.setPacketTimeout(port_num, packet_length)

def setPacketTimeoutMSec(port_num, msec):
    port_handler.setPacketTimeoutMSec(port_num, msec)

def isPacketTimeout(port_num):
    return port_handler.isPacketTimeout(port_num)



def packetHandler():
    packet_handler.packetHandler()

def getTxRxResult(result):
    return protocol1_packet_handler.getTxRxResult1(result)

def printTxRxResult(result):
    protocol1_packet_handler.printTxRxResult1(result)

def getRxPacketError(error):
    return protocol1_packet_handler.getRxPacketError1(error)

def printRxPacketError(error):
    protocol1_packet_handler.printRxPacketError1(error)

def getLastTxRxResult(port_num):
    return protocol1_packet_handler.getLastTxRxResult1(port_num)

def getLastRxPacketError(port_num):
    return protocol1_packet_handler.getLastRxPacketError1(port_num)

def setDataWrite(port_num, data_length, data_pos, data):
    protocol1_packet_handler.setDataWrite1(port_num, data_length, data_pos, data)

def getDataRead(port_num, data_length, data_pos):
    return protocol1_packet_handler.getDataRead1(port_num, data_length, data_pos)

def txPacket(port_num):
    protocol1_packet_handler.txPacket1(port_num)

def rxPacket(port_num):
    protocol1_packet_handler.rxPacket1(port_num)

def txRxPacket(port_num):
    protocol1_packet_handler.txRxPacket1(port_num)

def ping(port_num, id):
    protocol1_packet_handler.ping1(port_num, id)

def pingGetModelNum(port_num, id):
    return protocol1_packet_handler.pingGetModelNum1(port_num, id)

def broadcastPing(port_num):
    protocol1_packet_handler.broadcastPing1(port_num)

def getBroadcastPingResult(port_num, id):
    return protocol1_packet_handler.getBroadcastPingResult1(port_num, id)

def reboot(port_num, id):
    protocol1_packet_handler.reboot1(port_num, id)

def factoryReset(port_num, id, option):
    protocol1_packet_handler.factoryReset1(port_num, id, option)

def readTx(port_num, id, address, length):
    protocol1_packet_handler.readTx1(port_num, id, address, length)

def readRx(port_num, length):
    protocol1_packet_handler.readRx1(port_num, length)

def read1ByteTx(port_num, id, address):
    protocol1_packet_handler.read1ByteTx1(port_num, id, address)

def read1ByteRx(port_num):
    return protocol1_packet_handler.read1ByteRx1(port_num)

def read1ByteTxRx(port_num, id, address):
    return protocol1_packet_handler.read1ByteTxRx1(port_num, id, address)

def read2ByteTx(port_num, id, address):
    protocol1_packet_handler.read2ByteTx1(port_num, id, address)

def read2ByteRx(port_num):
    return protocol1_packet_handler.read2ByteRx1(port_num)

def read2ByteTxRx(port_num, id, address):
    return protocol1_packet_handler.read2ByteTxRx1(port_num, id, address)

def read4ByteTx(port_num, id, address):
    protocol1_packet_handler.read4ByteTx1(port_num, id, address)

def read4ByteRx(port_num):
    return protocol1_packet_handler.read4ByteRx1(port_num)

def read4ByteTxRx(port_num, id, address):
    return protocol1_packet_handler.read4ByteTxRx1(port_num, id, address)

def writeTxOnly(port_num, id, address, length):
    protocol1_packet_handler.writeTxOnly1(port_num, id, address, length)

def writeTxRx(port_num, id, address, length):
    protocol1_packet_handler.writeTxRx1(port_num, id, address, length)

def write1ByteTxOnly(port_num, id, address, data):
    protocol1_packet_handler.write1ByteTxOnly1(port_num, id, address, data)

def write1ByteTxRx(port_num, id, address, data):
    protocol1_packet_handler.write1ByteTxRx1(port_num, id, address, data)

def write2ByteTxOnly(port_num, id, address, data):
    protocol1_packet_handler.write2ByteTxOnly1(port_num, id, address, data)

def write2ByteTxRx(port_num, id, address, data):
    protocol1_packet_handler.write2ByteTxRx1(port_num, id, address, data)

def write4ByteTxOnly(port_num, id, address, data):
    protocol1_packet_handler.write4ByteTxOnly1(port_num, id, address, data)

def write4ByteTxRx(port_num, id, address, data):
    protocol1_packet_handler.write4ByteTxRx1(port_num, id, address, data)

def regWriteTxOnly(port_num, id, address, length):
    protocol1_packet_handler.regWriteTxOnly1(port_num, id, address, length)

def regWriteTxRx(port_num, id, address, length):
    protocol1_packet_handler.regWriteTxRx1(port_num, id, address, length)

def syncReadTx(port_num, start_address, data_length, param_length):
    protocol1_packet_handler.syncReadTx1(port_num, start_address, data_length, param_length)

def syncWriteTxOnly(port_num, start_address, data_length, param_length):
    protocol1_packet_handler.syncWriteTxOnly1(port_num, start_address, data_length, param_length)

def bulkReadTx(port_num, param_length):
    protocol1_packet_handler.bulkReadTx1(port_num, param_length)

def bulkWriteTxOnly(port_num, param_length):
    protocol1_packet_handler.bulkWriteTxOnly1(port_num, param_length)