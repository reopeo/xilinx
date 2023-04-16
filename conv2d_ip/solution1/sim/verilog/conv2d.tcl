
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set return_group [add_wave_group return(wire) -into $coutputgroup]
add_wave /apatb_conv2d_top/AESL_inst_conv2d/y_ap_vld -into $return_group -color #ffff00 -radix hex
add_wave /apatb_conv2d_top/AESL_inst_conv2d/y -into $return_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set return_group [add_wave_group return(wire) -into $cinputgroup]
add_wave /apatb_conv2d_top/AESL_inst_conv2d/ksize -into $return_group -radix hex
add_wave /apatb_conv2d_top/AESL_inst_conv2d/out_channels -into $return_group -radix hex
add_wave /apatb_conv2d_top/AESL_inst_conv2d/in_channels -into $return_group -radix hex
add_wave /apatb_conv2d_top/AESL_inst_conv2d/height -into $return_group -radix hex
add_wave /apatb_conv2d_top/AESL_inst_conv2d/width -into $return_group -radix hex
add_wave /apatb_conv2d_top/AESL_inst_conv2d/bias -into $return_group -radix hex
add_wave /apatb_conv2d_top/AESL_inst_conv2d/weight -into $return_group -radix hex
add_wave /apatb_conv2d_top/AESL_inst_conv2d/x -into $return_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake" -into $designtopgroup]
add_wave /apatb_conv2d_top/AESL_inst_conv2d/ap_start -into $blocksiggroup
add_wave /apatb_conv2d_top/AESL_inst_conv2d/ap_done -into $blocksiggroup
add_wave /apatb_conv2d_top/AESL_inst_conv2d/ap_idle -into $blocksiggroup
add_wave /apatb_conv2d_top/AESL_inst_conv2d/ap_ready -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_conv2d_top/AESL_inst_conv2d/ap_rst -into $resetgroup
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
set tbcoutputgroup [add_wave_group "C Outputs" -into $testbenchgroup]
set tb_return_group [add_wave_group return(wire) -into $tbcoutputgroup]
add_wave /apatb_conv2d_top/y_ap_vld -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_conv2d_top/y -into $tb_return_group -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_return_group [add_wave_group return(wire) -into $tbcinputgroup]
add_wave /apatb_conv2d_top/ksize -into $tb_return_group -radix hex
add_wave /apatb_conv2d_top/out_channels -into $tb_return_group -radix hex
add_wave /apatb_conv2d_top/in_channels -into $tb_return_group -radix hex
add_wave /apatb_conv2d_top/height -into $tb_return_group -radix hex
add_wave /apatb_conv2d_top/width -into $tb_return_group -radix hex
add_wave /apatb_conv2d_top/bias -into $tb_return_group -radix hex
add_wave /apatb_conv2d_top/weight -into $tb_return_group -radix hex
add_wave /apatb_conv2d_top/x -into $tb_return_group -radix hex
save_wave_config conv2d.wcfg
run all
quit

