import dx_lib_v1
import dx_lib
import matplotlib.pyplot as plt
import time
import psutil


curr_process = psutil.Process()
num_cores = psutil.cpu_count()
curr_process.cpu_affinity([3])

# Control table address
ADDR_MX_TORQUE_ENABLE       = 24                            # Control table address is different in dx_lib_v1 model
ADDR_MX_GOAL_POSITION       = 30
ADDR_MX_MOVING_SPEED        = 32
ADDR_MX_PRESENT_POSITION    = 36
ADDR_MX_TORQUE_CONTROL_MODE_ENABLE    = 70

# Protocol version
PROTOCOL_VERSION            = 1                             # See which protocol version is used in the dx_lib_v1

# Default setting
DXL_ID                      = 9                             # dx_lib_v1 ID: 1
BAUDRATE                    = 1000000
DEVICENAME                  = "/dev/ttyACM0".encode('utf-8')# Check which port is being used on your controller
                                                            # ex) Windows: "COM1"   Linux: "/dev/ttyUSB0" Mac: "/dev/tty.usbserial-*"

TORQUE_ENABLE               = 1                             # Value for enabling the torque
TORQUE_DISABLE              = 0                             # Value for disabling the torque
DXL_MINIMUM_POSITION_VALUE  = 100                           # dx_lib_v1 will rotate between this value
DXL_MAXIMUM_POSITION_VALUE  = 4000                          # and this value (note that the dx_lib_v1 would not move when the position value is out of movable range. Check e-manual about the range of the dx_lib_v1 you use.)
DXL_MOVING_STATUS_THRESHOLD = 10                            # dx_lib_v1 moving status threshold

ESC_ASCII_VALUE             = 0x1b

COMM_SUCCESS                = 0                             # Communication Success result value
COMM_TX_FAIL                = -1001                         # Communication Tx Failed



port_name = "/dev/ttyACM0".encode('utf-8')

port_num = dx_lib_v1.portHandler(port_name)

if dx_lib_v1.openPort(port_num):
    print("Succeeded to open the port!")
else:
    print("Failed to open the port!")

# Set port baudrate
if dx_lib_v1.setBaudRate(port_num, BAUDRATE):
    print("Succeeded to change the baudrate!")
else:
    print("Failed to change the baudrate!")

print(dx_lib_v1.getBaudRate(port_num))
print(dx_lib_v1.isPacketTimeout(port_num))

# Initialize PacketHandler Structs
dx_lib_v1.packetHandler()
dxl_comm_result = COMM_TX_FAIL                              # Communication result

# Enable dx_lib_v1 Torque
dx_lib_v1.write1ByteTxRx(port_num, DXL_ID, ADDR_MX_TORQUE_ENABLE, TORQUE_ENABLE)
dx_lib_v1.write1ByteTxRx(port_num, DXL_ID, ADDR_MX_TORQUE_CONTROL_MODE_ENABLE, TORQUE_DISABLE)

dxl_comm_result = dx_lib_v1.getLastTxRxResult(port_num)
dxl_error = dx_lib_v1.getLastRxPacketError(port_num)
if dxl_comm_result != COMM_SUCCESS:
    print(dx_lib_v1.getTxRxResult(dxl_comm_result))
elif dxl_error != 0:
    print(dx_lib_v1.getRxPacketError(dxl_error))

times = []
tocs = []
rtocs = []
import numpy as np
goal_pos = np.linspace(3600, 4000, 10, dtype=int).tolist()

# Write moving speed
dx_lib_v1.write2ByteTxRx(port_num, DXL_ID, ADDR_MX_MOVING_SPEED, 30)
pos = goal_pos[0]

for i in range(1000000):
    # print("Press any key to continue! (or press ESC to quit!)")
    # if getch() == chr(ESC_ASCII_VALUE):
    #     break
    start = time.time()

    # Write goal position

    dx_lib_v1.write2ByteTxRx(port_num, DXL_ID, ADDR_MX_GOAL_POSITION, pos)

    dxl_comm_result = dx_lib_v1.getLastTxRxResult(port_num)
    dxl_error = dx_lib_v1.getLastRxPacketError(port_num)
    if dxl_comm_result != COMM_SUCCESS:
        print(dx_lib_v1.getTxRxResult(dxl_comm_result))
    elif dxl_error != 0:
        print(dx_lib_v1.getRxPacketError(dxl_error))

    # Read present position
    dxl_present_position = dx_lib_v1.read2ByteTxRx(port_num, DXL_ID, ADDR_MX_PRESENT_POSITION)

    if abs(dxl_present_position-pos) <= 10:
        pos = np.random.choice(goal_pos).item()

    dxl_comm_result = dx_lib_v1.getLastTxRxResult(port_num)
    dxl_error = dx_lib_v1.getLastRxPacketError(port_num)
    if dxl_comm_result != COMM_SUCCESS:
        print(dx_lib_v1.getTxRxResult(dxl_comm_result))
    elif dxl_error != 0:
        print(dx_lib_v1.getRxPacketError(dxl_error))

    t = time.time()-start
    if t>0.002:
        print("[ID:%03d] GoalPos:%03d  PresPos:%03d Time:%lf" % (DXL_ID, pos,
                                                             dxl_present_position, t))
    # if t>0.002:
    #     print("---------------------------------------------------------------------------")
    #     time.sleep(0.001)
    times.append(t)


# np.save('/home/gautham/Documents/dxl_expts/robotis_baseline.txt', times)
print(np.max(times))
np.save('/home/gautham/Documents/dxl_expts/cython_laptop.txt', times)
print("Outliers: {}".format(sum(i > 0.002 for i in times)))
import matplotlib.pyplot as plt
plt.figure()
plt.hist(times)

plt.show()

# Disable dx_lib_v1 Torque
dx_lib_v1.write1ByteTxRx(port_num, DXL_ID, ADDR_MX_TORQUE_ENABLE, TORQUE_DISABLE)
dxl_comm_result = dx_lib_v1.getLastTxRxResult(port_num)
dxl_error = dx_lib_v1.getLastRxPacketError(port_num)
if dxl_comm_result != COMM_SUCCESS:
    print(dx_lib_v1.getTxRxResult(dxl_comm_result))
elif dxl_error != 0:
    print(dx_lib_v1.getRxPacketError(dxl_error))


# Close port
dx_lib_v1.closePort(port_num)
