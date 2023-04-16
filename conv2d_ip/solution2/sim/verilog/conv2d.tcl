
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set cinoutgroup [add_wave_group "C InOuts" -into $designtopgroup]
set x__weight__bias__width__height__in_channels__out_channels__ksize__y__return_group [add_wave_group x__weight__bias__width__height__in_channels__out_channels__ksize__y__return(axi_slave) -into $cinoutgroup]
add_wave /apatb_conv2d_top/AESL_inst_conv2d/interrupt -into $x__weight__bias__width__height__in_channels__out_channels__ksize__y__return_group -color #ffff00 -radix hex
add_wave /apatb_conv2d_top/AESL_inst_conv2d/s_axi_control_BRESP -into $x__weight__bias__width__height__in_channels__out_channels__ksize__y__return_group -radix hex
add_wave /apatb_conv2d_top/AESL_inst_conv2d/s_axi_control_BREADY -into $x__weight__bias__width__height__in_channels__out_channels__ksize__y__return_group -color #ffff00 -radix hex
add_wave /apatb_conv2d_top/AESL_inst_conv2d/s_axi_control_BVALID -into $x__weight__bias__width__height__in_channels__out_channels__ksize__y__return_group -color #ffff00 -radix hex
add_wave /apatb_conv2d_top/AESL_inst_conv2d/s_axi_control_RRESP -into $x__weight__bias__width__height__in_channels__out_channels__ksize__y__return_group -radix hex
add_wave /apatb_conv2d_top/AESL_inst_conv2d/s_axi_control_RDATA -into $x__weight__bias__width__height__in_channels__out_channels__ksize__y__return_group -radix hex
add_wave /apatb_conv2d_top/AESL_inst_conv2d/s_axi_control_RREADY -into $x__weight__bias__width__height__in_channels__out_channels__ksize__y__return_group -color #ffff00 -radix hex
add_wave /apatb_conv2d_top/AESL_inst_conv2d/s_axi_control_RVALID -into $x__weight__bias__width__height__in_channels__out_channels__ksize__y__return_group -color #ffff00 -radix hex
add_wave /apatb_conv2d_top/AESL_inst_conv2d/s_axi_control_ARREADY -into $x__weight__bias__width__height__in_channels__out_channels__ksize__y__return_group -color #ffff00 -radix hex
add_wave /apatb_conv2d_top/AESL_inst_conv2d/s_axi_control_ARVALID -into $x__weight__bias__width__height__in_channels__out_channels__ksize__y__return_group -color #ffff00 -radix hex
add_wave /apatb_conv2d_top/AESL_inst_conv2d/s_axi_control_ARADDR -into $x__weight__bias__width__height__in_channels__out_channels__ksize__y__return_group -radix hex
add_wave /apatb_conv2d_top/AESL_inst_conv2d/s_axi_control_WSTRB -into $x__weight__bias__width__height__in_channels__out_channels__ksize__y__return_group -radix hex
add_wave /apatb_conv2d_top/AESL_inst_conv2d/s_axi_control_WDATA -into $x__weight__bias__width__height__in_channels__out_channels__ksize__y__return_group -radix hex
add_wave /apatb_conv2d_top/AESL_inst_conv2d/s_axi_control_WREADY -into $x__weight__bias__width__height__in_channels__out_channels__ksize__y__return_group -color #ffff00 -radix hex
add_wave /apatb_conv2d_top/AESL_inst_conv2d/s_axi_control_WVALID -into $x__weight__bias__width__height__in_channels__out_channels__ksize__y__return_group -color #ffff00 -radix hex
add_wave /apatb_conv2d_top/AESL_inst_conv2d/s_axi_control_AWREADY -into $x__weight__bias__width__height__in_channels__out_channels__ksize__y__return_group -color #ffff00 -radix hex
add_wave /apatb_conv2d_top/AESL_inst_conv2d/s_axi_control_AWVALID -into $x__weight__bias__width__height__in_channels__out_channels__ksize__y__return_group -color #ffff00 -radix hex
add_wave /apatb_conv2d_top/AESL_inst_conv2d/s_axi_control_AWADDR -into $x__weight__bias__width__height__in_channels__out_channels__ksize__y__return_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake(internal)" -into $designtopgroup]
add_wave /apatb_conv2d_top/AESL_inst_conv2d/ap_done -into $blocksiggroup
add_wave /apatb_conv2d_top/AESL_inst_conv2d/ap_idle -into $blocksiggroup
add_wave /apatb_conv2d_top/AESL_inst_conv2d/ap_ready -into $blocksiggroup
add_wave /apatb_conv2d_top/AESL_inst_conv2d/ap_start -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_conv2d_top/AESL_inst_conv2d/ap_rst_n -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_conv2d_top/AESL_inst_conv2d/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_conv2d_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_conv2d_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_conv2d_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_conv2d_top/LENGTH_bias -into $tb_portdepth_group -radix hex
add_wave /apatb_conv2d_top/LENGTH_height -into $tb_portdepth_group -radix hex
add_wave /apatb_conv2d_top/LENGTH_in_channels -into $tb_portdepth_group -radix hex
add_wave /apatb_conv2d_top/LENGTH_ksize -into $tb_portdepth_group -radix hex
add_wave /apatb_conv2d_top/LENGTH_out_channels -into $tb_portdepth_group -radix hex
add_wave /apatb_conv2d_top/LENGTH_weight -into $tb_portdepth_group -radix hex
add_wave /apatb_conv2d_top/LENGTH_width -into $tb_portdepth_group -radix hex
add_wave /apatb_conv2d_top/LENGTH_x -into $tb_portdepth_group -radix hex
add_wave /apatb_conv2d_top/LENGTH_y -into $tb_portdepth_group -radix hex
set tbcinoutgroup [add_wave_group "C InOuts" -into $testbenchgroup]
set tb_x__weight__bias__width__height__in_channels__out_channels__ksize__y__return_group [add_wave_group x__weight__bias__width__height__in_channels__out_channels__ksize__y__return(axi_slave) -into $tbcinoutgroup]
add_wave /apatb_conv2d_top/control_INTERRUPT -into $tb_x__weight__bias__width__height__in_channels__out_channels__ksize__y__return_group -color #ffff00 -radix hex
add_wave /apatb_conv2d_top/control_BRESP -into $tb_x__weight__bias__width__height__in_channels__out_channels__ksize__y__return_group -radix hex
add_wave /apatb_conv2d_top/control_BREADY -into $tb_x__weight__bias__width__height__in_channels__out_channels__ksize__y__return_group -color #ffff00 -radix hex
add_wave /apatb_conv2d_top/control_BVALID -into $tb_x__weight__bias__width__height__in_channels__out_channels__ksize__y__return_group -color #ffff00 -radix hex
add_wave /apatb_conv2d_top/control_RRESP -into $tb_x__weight__bias__width__height__in_channels__out_channels__ksize__y__return_group -radix hex
add_wave /apatb_conv2d_top/control_RDATA -into $tb_x__weight__bias__width__height__in_channels__out_channels__ksize__y__return_group -radix hex
add_wave /apatb_conv2d_top/control_RREADY -into $tb_x__weight__bias__width__height__in_channels__out_channels__ksize__y__return_group -color #ffff00 -radix hex
add_wave /apatb_conv2d_top/control_RVALID -into $tb_x__weight__bias__width__height__in_channels__out_channels__ksize__y__return_group -color #ffff00 -radix hex
add_wave /apatb_conv2d_top/control_ARREADY -into $tb_x__weight__bias__width__height__in_channels__out_channels__ksize__y__return_group -color #ffff00 -radix hex
add_wave /apatb_conv2d_top/control_ARVALID -into $tb_x__weight__bias__width__height__in_channels__out_channels__ksize__y__return_group -color #ffff00 -radix hex
add_wave /apatb_conv2d_top/control_ARADDR -into $tb_x__weight__bias__width__height__in_channels__out_channels__ksize__y__return_group -radix hex
add_wave /apatb_conv2d_top/control_WSTRB -into $tb_x__weight__bias__width__height__in_channels__out_channels__ksize__y__return_group -radix hex
add_wave /apatb_conv2d_top/control_WDATA -into $tb_x__weight__bias__width__height__in_channels__out_channels__ksize__y__return_group -radix hex
add_wave /apatb_conv2d_top/control_WREADY -into $tb_x__weight__bias__width__height__in_channels__out_channels__ksize__y__return_group -color #ffff00 -radix hex
add_wave /apatb_conv2d_top/control_WVALID -into $tb_x__weight__bias__width__height__in_channels__out_channels__ksize__y__return_group -color #ffff00 -radix hex
add_wave /apatb_conv2d_top/control_AWREADY -into $tb_x__weight__bias__width__height__in_channels__out_channels__ksize__y__return_group -color #ffff00 -radix hex
add_wave /apatb_conv2d_top/control_AWVALID -into $tb_x__weight__bias__width__height__in_channels__out_channels__ksize__y__return_group -color #ffff00 -radix hex
add_wave /apatb_conv2d_top/control_AWADDR -into $tb_x__weight__bias__width__height__in_channels__out_channels__ksize__y__return_group -radix hex
save_wave_config conv2d.wcfg
run all
quit

