############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_interface -mode s_axilite "cnn_top"
set_directive_interface -mode s_axilite "cnn_top" x
set_directive_interface -mode s_axilite "cnn_top" y
set_directive_top -name cnn_top "cnn_top"
set_directive_pipeline "conv2d/conv2d_label0"
set_directive_pipeline "linear/linear_label1"
set_directive_pipeline "maxpool2d/maxpool2d_label2"
set_directive_pipeline "relu/relu_label3"
