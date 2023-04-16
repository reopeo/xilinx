# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: /home/reon/work/xilinx/cnn_sdk/cnn_test_system/_ide/scripts/systemdebugger_cnn_test_system_standalone.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source /home/reon/work/xilinx/cnn_sdk/cnn_test_system/_ide/scripts/systemdebugger_cnn_test_system_standalone.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Xilinx PYNQ-Z1 003017B15638A" && level==0 && jtag_device_ctx=="jsn-Xilinx PYNQ-Z1-003017B15638A-23727093-0"}
fpga -file /home/reon/work/xilinx/cnn_sdk/cnn_test/_ide/bitstream/design_1_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw /home/reon/work/xilinx/cnn_sdk/design_1_wrapper/export/design_1_wrapper/hw/design_1_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source /home/reon/work/xilinx/cnn_sdk/cnn_test/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow /home/reon/work/xilinx/cnn_sdk/cnn_test/Debug/cnn_test.elf
configparams force-mem-access 0
bpadd -addr &main
