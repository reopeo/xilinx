############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project cnnlite_ip
set_top cnn_top
add_files cnnlite_ip/src/cnn.c
add_files -tb cnnlite_ip/src/cnn_tb.c
open_solution "solution2" -flow_target vivado
set_part {xc7z020clg400-1}
create_clock -period 10 -name default
source "./cnnlite_ip/solution2/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog
