cimport port_handler
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

def getTxRxResult(protocol_version, result):
    return packet_handler.getTxRxResult(protocol_version, result)

def printTxRxResult(protocol_version, result):
    packet_handler.printTxRxResult(protocol_version, result)

def getRxPacketError(protocol_version, error):
    return packet_handler.getRxPacketError(protocol_version, error)

def printRxPacketError(protocol_version, error):
    packet_handler.printRxPacketError(protocol_version, error)

def getLastTxRxResult(port_num, protocol_version):
    return packet_handler.getLastTxRxResult(port_num, protocol_version)
        
def getLastRxPacketError(port_num, protocol_version):
    return packet_handler.getLastRxPacketError(port_num, protocol_version)
    
def setDataWrite(port_num, protocol_version, data_length, data_pos, data):
    packet_handler.setDataWrite(port_num, protocol_version, data_length, data_pos, data)
    
def getDataRead(port_num, protocol_version, data_length, data_pos):
    return packet_handler.getDataRead(port_num, protocol_version, data_length, data_pos)

def txPacket(port_num, protocol_version):
    packet_handler.txPacket(port_num, protocol_version)

def rxPacket(port_num, protocol_version):
    packet_handler.rxPacket(port_num, protocol_version)

def txRxPacket(port_num, protocol_version):
    packet_handler.txRxPacket(port_num, protocol_version)

def ping(port_num, protocol_version, id):
    packet_handler.ping(port_num, protocol_version, id)

def pingGetModelNum(port_num, protocol_version, id):
    return packet_handler.pingGetModelNum(port_num, protocol_version, id)

def broadcastPing(port_num, protocol_version):
    packet_handler.broadcastPing(port_num, protocol_version)
    
def getBroadcastPingResult(port_num, protocol_version, id):
    return packet_handler.getBroadcastPingResult(port_num, protocol_version, id)

def reboot(port_num, protocol_version, id):
    packet_handler.reboot(port_num, protocol_version, id)

def factoryReset(port_num, protocol_version, id, option):
    packet_handler.factoryReset(port_num, protocol_version, id, option)

def readTx(port_num, protocol_version, id, address, length):
    packet_handler.readTx(port_num, protocol_version, id, address, length)

def readRx(port_num, protocol_version, length):
    packet_handler.readRx(port_num, protocol_version, length)

def read1ByteTx(port_num, protocol_version, id, address):
    packet_handler.read1ByteTx(port_num, protocol_version, id, address)

def read1ByteRx(port_num, protocol_version):
    return packet_handler.read1ByteRx(port_num, protocol_version)

def read1ByteTxRx(port_num, protocol_version, id, address):
    return packet_handler.read1ByteTxRx(port_num, protocol_version, id, address)

def read2ByteTx(port_num, protocol_version, id, address):
    packet_handler.read2ByteTx(port_num, protocol_version, id, address)

def read2ByteRx(port_num, protocol_version):
    return packet_handler.read2ByteRx(port_num, protocol_version)

def read2ByteTxRx(port_num, protocol_version, id, address):
    return packet_handler.read2ByteTxRx(port_num, protocol_version, id, address)

def read4ByteTx(port_num, protocol_version, id, address):
    packet_handler.read4ByteTx(port_num, protocol_version, id, address)

def read4ByteRx(port_num, protocol_version):
    return packet_handler.read4ByteRx(port_num, protocol_version)

def read4ByteTxRx(port_num, protocol_version, id, address):
    return packet_handler.read4ByteTxRx(port_num, protocol_version, id, address)

def writeTxOnly(port_num, protocol_version, id, address, length):
    packet_handler.writeTxOnly(port_num, protocol_version, id, address, length)

def writeTxRx(port_num, protocol_version, id, address, length):
    packet_handler.writeTxRx(port_num, protocol_version, id, address, length)

def write1ByteTxOnly(port_num, protocol_version, id, address, data):
    packet_handler.write1ByteTxOnly(port_num, protocol_version, id, address, data)

def write1ByteTxRx(port_num, protocol_version, id, address, data):
    packet_handler.write1ByteTxRx(port_num, protocol_version, id, address, data)

def write2ByteTxOnly(port_num, protocol_version, id, address, data):
    packet_handler.write2ByteTxOnly(port_num, protocol_version, id, address, data)

def write2ByteTxRx(port_num, protocol_version, id, address, data):
    packet_handler.write2ByteTxRx(port_num, protocol_version, id, address, data)

def write4ByteTxOnly(port_num, protocol_version, id, address, data):
    packet_handler.write4ByteTxOnly(port_num, protocol_version, id, address, data)

def write4ByteTxRx(port_num, protocol_version, id, address, data):
    packet_handler.write4ByteTxRx(port_num, protocol_version, id, address, data)

def regWriteTxOnly(port_num, protocol_version, id, address, length):
    packet_handler.regWriteTxOnly(port_num, protocol_version, id, address, length)

def regWriteTxRx(port_num, protocol_version, id, address, length):
    packet_handler.regWriteTxRx(port_num, protocol_version, id, address, length)

def syncReadTx(port_num, protocol_version, start_address, data_length, param_length):
    packet_handler.syncReadTx(port_num, protocol_version, start_address, data_length, param_length)

def syncWriteTxOnly(port_num, protocol_version, start_address, data_length, param_length):
    packet_handler.syncWriteTxOnly(port_num, protocol_version, start_address, data_length, param_length)

def bulkReadTx(port_num, protocol_version, param_length):
    packet_handler.bulkReadTx(port_num, protocol_version, param_length)

def bulkWriteTxOnly(port_num, protocol_version, param_length):
    packet_handler.bulkWriteTxOnly(port_num, protocol_version, param_length)