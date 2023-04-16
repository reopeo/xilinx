#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("x", 32, hls_in, 0, "ap_none", "in_data", 1),
	Port_Property("weight", 32, hls_in, 1, "ap_none", "in_data", 1),
	Port_Property("bias", 32, hls_in, 2, "ap_none", "in_data", 1),
	Port_Property("width", 32, hls_in, 3, "ap_none", "in_data", 1),
	Port_Property("height", 32, hls_in, 4, "ap_none", "in_data", 1),
	Port_Property("in_channels", 32, hls_in, 5, "ap_none", "in_data", 1),
	Port_Property("out_channels", 32, hls_in, 6, "ap_none", "in_data", 1),
	Port_Property("ksize", 32, hls_in, 7, "ap_none", "in_data", 1),
	Port_Property("y", 32, hls_out, 8, "ap_vld", "out_data", 1),
	Port_Property("y_ap_vld", 1, hls_out, 8, "ap_vld", "out_vld", 1),
};
const char* HLS_Design_Meta::dut_name = "conv2d";
