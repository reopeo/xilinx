
/tools/Xilinx/Vivado/2022.2/bin/xelab xil_defaultlib.apatb_conv2d_top glbl -Oenable_linking_all_libraries  -prj conv2d.prj -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_12 -L axi_protocol_checker_v1_1_13 -L axis_protocol_checker_v1_1_11 -L axis_protocol_checker_v1_1_12 -L xil_defaultlib -L unisims_ver -L xpm  -L floating_point_v7_0_20 -L floating_point_v7_1_15 --lib "ieee_proposed=./ieee_proposed" -s conv2d -debug wave
/tools/Xilinx/Vivado/2022.2/bin/xsim --noieeewarnings conv2d -tclbatch conv2d.tcl -view conv2d_dataflow_ana.wcfg -protoinst conv2d.protoinst
