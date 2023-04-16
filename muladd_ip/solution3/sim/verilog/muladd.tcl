
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set cinoutgroup [add_wave_group "C InOuts" -into $designtopgroup]
set a__b__ap_return__return_group [add_wave_group a__b__ap_return__return(axi_slave) -into $cinoutgroup]
add_wave /apatb_muladd_top/AESL_inst_muladd/interrupt -into $a__b__ap_return__return_group -color #ffff00 -radix hex
add_wave /apatb_muladd_top/AESL_inst_muladd/s_axi_control_BRESP -into $a__b__ap_return__return_group -radix hex
add_wave /apatb_muladd_top/AESL_inst_muladd/s_axi_control_BREADY -into $a__b__ap_return__return_group -color #ffff00 -radix hex
add_wave /apatb_muladd_top/AESL_inst_muladd/s_axi_control_BVALID -into $a__b__ap_return__return_group -color #ffff00 -radix hex
add_wave /apatb_muladd_top/AESL_inst_muladd/s_axi_control_RRESP -into $a__b__ap_return__return_group -radix hex
add_wave /apatb_muladd_top/AESL_inst_muladd/s_axi_control_RDATA -into $a__b__ap_return__return_group -radix hex
add_wave /apatb_muladd_top/AESL_inst_muladd/s_axi_control_RREADY -into $a__b__ap_return__return_group -color #ffff00 -radix hex
add_wave /apatb_muladd_top/AESL_inst_muladd/s_axi_control_RVALID -into $a__b__ap_return__return_group -color #ffff00 -radix hex
add_wave /apatb_muladd_top/AESL_inst_muladd/s_axi_control_ARREADY -into $a__b__ap_return__return_group -color #ffff00 -radix hex
add_wave /apatb_muladd_top/AESL_inst_muladd/s_axi_control_ARVALID -into $a__b__ap_return__return_group -color #ffff00 -radix hex
add_wave /apatb_muladd_top/AESL_inst_muladd/s_axi_control_ARADDR -into $a__b__ap_return__return_group -radix hex
add_wave /apatb_muladd_top/AESL_inst_muladd/s_axi_control_WSTRB -into $a__b__ap_return__return_group -radix hex
add_wave /apatb_muladd_top/AESL_inst_muladd/s_axi_control_WDATA -into $a__b__ap_return__return_group -radix hex
add_wave /apatb_muladd_top/AESL_inst_muladd/s_axi_control_WREADY -into $a__b__ap_return__return_group -color #ffff00 -radix hex
add_wave /apatb_muladd_top/AESL_inst_muladd/s_axi_control_WVALID -into $a__b__ap_return__return_group -color #ffff00 -radix hex
add_wave /apatb_muladd_top/AESL_inst_muladd/s_axi_control_AWREADY -into $a__b__ap_return__return_group -color #ffff00 -radix hex
add_wave /apatb_muladd_top/AESL_inst_muladd/s_axi_control_AWVALID -into $a__b__ap_return__return_group -color #ffff00 -radix hex
add_wave /apatb_muladd_top/AESL_inst_muladd/s_axi_control_AWADDR -into $a__b__ap_return__return_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake(internal)" -into $designtopgroup]
add_wave /apatb_muladd_top/AESL_inst_muladd/ap_done -into $blocksiggroup
add_wave /apatb_muladd_top/AESL_inst_muladd/ap_idle -into $blocksiggroup
add_wave /apatb_muladd_top/AESL_inst_muladd/ap_ready -into $blocksiggroup
add_wave /apatb_muladd_top/AESL_inst_muladd/ap_start -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_muladd_top/AESL_inst_muladd/ap_rst_n -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_muladd_top/AESL_inst_muladd/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_muladd_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_muladd_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_muladd_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_muladd_top/LENGTH_a -into $tb_portdepth_group -radix hex
add_wave /apatb_muladd_top/LENGTH_ap_return -into $tb_portdepth_group -radix hex
add_wave /apatb_muladd_top/LENGTH_b -into $tb_portdepth_group -radix hex
set tbcinoutgroup [add_wave_group "C InOuts" -into $testbenchgroup]
set tb_a__b__ap_return__return_group [add_wave_group a__b__ap_return__return(axi_slave) -into $tbcinoutgroup]
add_wave /apatb_muladd_top/control_INTERRUPT -into $tb_a__b__ap_return__return_group -color #ffff00 -radix hex
add_wave /apatb_muladd_top/control_BRESP -into $tb_a__b__ap_return__return_group -radix hex
add_wave /apatb_muladd_top/control_BREADY -into $tb_a__b__ap_return__return_group -color #ffff00 -radix hex
add_wave /apatb_muladd_top/control_BVALID -into $tb_a__b__ap_return__return_group -color #ffff00 -radix hex
add_wave /apatb_muladd_top/control_RRESP -into $tb_a__b__ap_return__return_group -radix hex
add_wave /apatb_muladd_top/control_RDATA -into $tb_a__b__ap_return__return_group -radix hex
add_wave /apatb_muladd_top/control_RREADY -into $tb_a__b__ap_return__return_group -color #ffff00 -radix hex
add_wave /apatb_muladd_top/control_RVALID -into $tb_a__b__ap_return__return_group -color #ffff00 -radix hex
add_wave /apatb_muladd_top/control_ARREADY -into $tb_a__b__ap_return__return_group -color #ffff00 -radix hex
add_wave /apatb_muladd_top/control_ARVALID -into $tb_a__b__ap_return__return_group -color #ffff00 -radix hex
add_wave /apatb_muladd_top/control_ARADDR -into $tb_a__b__ap_return__return_group -radix hex
add_wave /apatb_muladd_top/control_WSTRB -into $tb_a__b__ap_return__return_group -radix hex
add_wave /apatb_muladd_top/control_WDATA -into $tb_a__b__ap_return__return_group -radix hex
add_wave /apatb_muladd_top/control_WREADY -into $tb_a__b__ap_return__return_group -color #ffff00 -radix hex
add_wave /apatb_muladd_top/control_WVALID -into $tb_a__b__ap_return__return_group -color #ffff00 -radix hex
add_wave /apatb_muladd_top/control_AWREADY -into $tb_a__b__ap_return__return_group -color #ffff00 -radix hex
add_wave /apatb_muladd_top/control_AWVALID -into $tb_a__b__ap_return__return_group -color #ffff00 -radix hex
add_wave /apatb_muladd_top/control_AWADDR -into $tb_a__b__ap_return__return_group -radix hex
save_wave_config muladd.wcfg
run all
quit

