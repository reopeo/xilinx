set moduleName cnn_top_Pipeline_VITIS_LOOP_73_1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {cnn_top_Pipeline_VITIS_LOOP_73_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ weight3 int 32 regular {array 320 { 1 1 } 1 1 }  }
	{ x_assign_2_load float 32 regular  }
	{ x_assign_2_load_1 float 32 regular  }
	{ x_assign_2_load_2 float 32 regular  }
	{ x_assign_2_load_3 float 32 regular  }
	{ x_assign_2_load_4 float 32 regular  }
	{ x_assign_2_load_5 float 32 regular  }
	{ x_assign_2_load_6 float 32 regular  }
	{ x_assign_2_load_7 float 32 regular  }
	{ x_assign_2_load_8 float 32 regular  }
	{ x_assign_2_load_9 float 32 regular  }
	{ x_assign_2_load_10 float 32 regular  }
	{ x_assign_2_load_11 float 32 regular  }
	{ x_assign_2_load_12 float 32 regular  }
	{ x_assign_2_load_13 float 32 regular  }
	{ x_assign_2_load_14 float 32 regular  }
	{ x_assign_2_load_15 float 32 regular  }
	{ x_assign_2_load_16 float 32 regular  }
	{ x_assign_2_load_17 float 32 regular  }
	{ x_assign_2_load_18 float 32 regular  }
	{ x_assign_2_load_19 float 32 regular  }
	{ x_assign_2_load_20 float 32 regular  }
	{ x_assign_2_load_21 float 32 regular  }
	{ x_assign_2_load_22 float 32 regular  }
	{ x_assign_2_load_23 float 32 regular  }
	{ x_assign_2_load_24 float 32 regular  }
	{ x_assign_2_load_25 float 32 regular  }
	{ x_assign_2_load_26 float 32 regular  }
	{ x_assign_2_load_27 float 32 regular  }
	{ x_assign_2_load_28 float 32 regular  }
	{ x_assign_2_load_29 float 32 regular  }
	{ x_assign_2_load_30 float 32 regular  }
	{ x_assign_2_load_31 float 32 regular  }
	{ bias3 int 32 regular {array 10 { 1 3 } 1 1 }  }
	{ y int 32 regular {array 10 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "weight3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_assign_2_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_assign_2_load_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_assign_2_load_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_assign_2_load_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_assign_2_load_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_assign_2_load_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_assign_2_load_6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_assign_2_load_7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_assign_2_load_8", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_assign_2_load_9", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_assign_2_load_10", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_assign_2_load_11", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_assign_2_load_12", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_assign_2_load_13", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_assign_2_load_14", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_assign_2_load_15", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_assign_2_load_16", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_assign_2_load_17", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_assign_2_load_18", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_assign_2_load_19", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_assign_2_load_20", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_assign_2_load_21", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_assign_2_load_22", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_assign_2_load_23", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_assign_2_load_24", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_assign_2_load_25", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_assign_2_load_26", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_assign_2_load_27", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_assign_2_load_28", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_assign_2_load_29", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_assign_2_load_30", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_assign_2_load_31", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bias3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "y", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 74
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ weight3_address0 sc_out sc_lv 9 signal 0 } 
	{ weight3_ce0 sc_out sc_logic 1 signal 0 } 
	{ weight3_q0 sc_in sc_lv 32 signal 0 } 
	{ weight3_address1 sc_out sc_lv 9 signal 0 } 
	{ weight3_ce1 sc_out sc_logic 1 signal 0 } 
	{ weight3_q1 sc_in sc_lv 32 signal 0 } 
	{ x_assign_2_load sc_in sc_lv 32 signal 1 } 
	{ x_assign_2_load_1 sc_in sc_lv 32 signal 2 } 
	{ x_assign_2_load_2 sc_in sc_lv 32 signal 3 } 
	{ x_assign_2_load_3 sc_in sc_lv 32 signal 4 } 
	{ x_assign_2_load_4 sc_in sc_lv 32 signal 5 } 
	{ x_assign_2_load_5 sc_in sc_lv 32 signal 6 } 
	{ x_assign_2_load_6 sc_in sc_lv 32 signal 7 } 
	{ x_assign_2_load_7 sc_in sc_lv 32 signal 8 } 
	{ x_assign_2_load_8 sc_in sc_lv 32 signal 9 } 
	{ x_assign_2_load_9 sc_in sc_lv 32 signal 10 } 
	{ x_assign_2_load_10 sc_in sc_lv 32 signal 11 } 
	{ x_assign_2_load_11 sc_in sc_lv 32 signal 12 } 
	{ x_assign_2_load_12 sc_in sc_lv 32 signal 13 } 
	{ x_assign_2_load_13 sc_in sc_lv 32 signal 14 } 
	{ x_assign_2_load_14 sc_in sc_lv 32 signal 15 } 
	{ x_assign_2_load_15 sc_in sc_lv 32 signal 16 } 
	{ x_assign_2_load_16 sc_in sc_lv 32 signal 17 } 
	{ x_assign_2_load_17 sc_in sc_lv 32 signal 18 } 
	{ x_assign_2_load_18 sc_in sc_lv 32 signal 19 } 
	{ x_assign_2_load_19 sc_in sc_lv 32 signal 20 } 
	{ x_assign_2_load_20 sc_in sc_lv 32 signal 21 } 
	{ x_assign_2_load_21 sc_in sc_lv 32 signal 22 } 
	{ x_assign_2_load_22 sc_in sc_lv 32 signal 23 } 
	{ x_assign_2_load_23 sc_in sc_lv 32 signal 24 } 
	{ x_assign_2_load_24 sc_in sc_lv 32 signal 25 } 
	{ x_assign_2_load_25 sc_in sc_lv 32 signal 26 } 
	{ x_assign_2_load_26 sc_in sc_lv 32 signal 27 } 
	{ x_assign_2_load_27 sc_in sc_lv 32 signal 28 } 
	{ x_assign_2_load_28 sc_in sc_lv 32 signal 29 } 
	{ x_assign_2_load_29 sc_in sc_lv 32 signal 30 } 
	{ x_assign_2_load_30 sc_in sc_lv 32 signal 31 } 
	{ x_assign_2_load_31 sc_in sc_lv 32 signal 32 } 
	{ bias3_address0 sc_out sc_lv 4 signal 33 } 
	{ bias3_ce0 sc_out sc_logic 1 signal 33 } 
	{ bias3_q0 sc_in sc_lv 32 signal 33 } 
	{ y_address0 sc_out sc_lv 4 signal 34 } 
	{ y_ce0 sc_out sc_logic 1 signal 34 } 
	{ y_we0 sc_out sc_logic 1 signal 34 } 
	{ y_d0 sc_out sc_lv 32 signal 34 } 
	{ grp_fu_841_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_841_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_841_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_841_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_841_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_845_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_845_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_845_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_845_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_845_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_873_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_873_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_873_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_873_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_873_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_849_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_849_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_849_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_849_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_853_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_853_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_853_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_853_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "weight3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "weight3", "role": "address0" }} , 
 	{ "name": "weight3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight3", "role": "ce0" }} , 
 	{ "name": "weight3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight3", "role": "q0" }} , 
 	{ "name": "weight3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "weight3", "role": "address1" }} , 
 	{ "name": "weight3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight3", "role": "ce1" }} , 
 	{ "name": "weight3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight3", "role": "q1" }} , 
 	{ "name": "x_assign_2_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_assign_2_load", "role": "default" }} , 
 	{ "name": "x_assign_2_load_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_assign_2_load_1", "role": "default" }} , 
 	{ "name": "x_assign_2_load_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_assign_2_load_2", "role": "default" }} , 
 	{ "name": "x_assign_2_load_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_assign_2_load_3", "role": "default" }} , 
 	{ "name": "x_assign_2_load_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_assign_2_load_4", "role": "default" }} , 
 	{ "name": "x_assign_2_load_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_assign_2_load_5", "role": "default" }} , 
 	{ "name": "x_assign_2_load_6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_assign_2_load_6", "role": "default" }} , 
 	{ "name": "x_assign_2_load_7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_assign_2_load_7", "role": "default" }} , 
 	{ "name": "x_assign_2_load_8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_assign_2_load_8", "role": "default" }} , 
 	{ "name": "x_assign_2_load_9", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_assign_2_load_9", "role": "default" }} , 
 	{ "name": "x_assign_2_load_10", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_assign_2_load_10", "role": "default" }} , 
 	{ "name": "x_assign_2_load_11", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_assign_2_load_11", "role": "default" }} , 
 	{ "name": "x_assign_2_load_12", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_assign_2_load_12", "role": "default" }} , 
 	{ "name": "x_assign_2_load_13", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_assign_2_load_13", "role": "default" }} , 
 	{ "name": "x_assign_2_load_14", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_assign_2_load_14", "role": "default" }} , 
 	{ "name": "x_assign_2_load_15", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_assign_2_load_15", "role": "default" }} , 
 	{ "name": "x_assign_2_load_16", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_assign_2_load_16", "role": "default" }} , 
 	{ "name": "x_assign_2_load_17", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_assign_2_load_17", "role": "default" }} , 
 	{ "name": "x_assign_2_load_18", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_assign_2_load_18", "role": "default" }} , 
 	{ "name": "x_assign_2_load_19", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_assign_2_load_19", "role": "default" }} , 
 	{ "name": "x_assign_2_load_20", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_assign_2_load_20", "role": "default" }} , 
 	{ "name": "x_assign_2_load_21", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_assign_2_load_21", "role": "default" }} , 
 	{ "name": "x_assign_2_load_22", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_assign_2_load_22", "role": "default" }} , 
 	{ "name": "x_assign_2_load_23", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_assign_2_load_23", "role": "default" }} , 
 	{ "name": "x_assign_2_load_24", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_assign_2_load_24", "role": "default" }} , 
 	{ "name": "x_assign_2_load_25", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_assign_2_load_25", "role": "default" }} , 
 	{ "name": "x_assign_2_load_26", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_assign_2_load_26", "role": "default" }} , 
 	{ "name": "x_assign_2_load_27", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_assign_2_load_27", "role": "default" }} , 
 	{ "name": "x_assign_2_load_28", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_assign_2_load_28", "role": "default" }} , 
 	{ "name": "x_assign_2_load_29", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_assign_2_load_29", "role": "default" }} , 
 	{ "name": "x_assign_2_load_30", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_assign_2_load_30", "role": "default" }} , 
 	{ "name": "x_assign_2_load_31", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_assign_2_load_31", "role": "default" }} , 
 	{ "name": "bias3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bias3", "role": "address0" }} , 
 	{ "name": "bias3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias3", "role": "ce0" }} , 
 	{ "name": "bias3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bias3", "role": "q0" }} , 
 	{ "name": "y_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "y", "role": "address0" }} , 
 	{ "name": "y_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "ce0" }} , 
 	{ "name": "y_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "we0" }} , 
 	{ "name": "y_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "y", "role": "d0" }} , 
 	{ "name": "grp_fu_841_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_841_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_841_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_841_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_841_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_841_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_841_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_841_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_841_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_841_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_845_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_845_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_845_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_845_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_845_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_845_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_845_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_845_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_845_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_845_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_873_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_873_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_873_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_873_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_873_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_873_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_873_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_873_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_873_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_873_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_849_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_849_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_849_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_849_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_849_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_849_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_849_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_849_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_853_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_853_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_853_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_853_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_853_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_853_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_853_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_853_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "cnn_top_Pipeline_VITIS_LOOP_73_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "317", "EstimateLatencyMax" : "317",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "weight3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_assign_2_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_assign_2_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_assign_2_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_assign_2_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_assign_2_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_assign_2_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_assign_2_load_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_assign_2_load_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_assign_2_load_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_assign_2_load_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_assign_2_load_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_assign_2_load_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_assign_2_load_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_assign_2_load_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_assign_2_load_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_assign_2_load_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_assign_2_load_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_assign_2_load_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_assign_2_load_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_assign_2_load_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_assign_2_load_20", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_assign_2_load_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_assign_2_load_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_assign_2_load_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_assign_2_load_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_assign_2_load_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_assign_2_load_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_assign_2_load_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_assign_2_load_28", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_assign_2_load_29", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_assign_2_load_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_assign_2_load_31", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "y", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_73_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "16", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage11", "LastStateIter" : "ap_enable_reg_pp0_iter10", "LastStateBlock" : "ap_block_pp0_stage11_subdone", "QuitState" : "ap_ST_fsm_pp0_stage11", "QuitStateIter" : "ap_enable_reg_pp0_iter10", "QuitStateBlock" : "ap_block_pp0_stage11_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	cnn_top_Pipeline_VITIS_LOOP_73_1 {
		weight3 {Type I LastRead 16 FirstWrite -1}
		x_assign_2_load {Type I LastRead 0 FirstWrite -1}
		x_assign_2_load_1 {Type I LastRead 0 FirstWrite -1}
		x_assign_2_load_2 {Type I LastRead 0 FirstWrite -1}
		x_assign_2_load_3 {Type I LastRead 0 FirstWrite -1}
		x_assign_2_load_4 {Type I LastRead 0 FirstWrite -1}
		x_assign_2_load_5 {Type I LastRead 0 FirstWrite -1}
		x_assign_2_load_6 {Type I LastRead 0 FirstWrite -1}
		x_assign_2_load_7 {Type I LastRead 0 FirstWrite -1}
		x_assign_2_load_8 {Type I LastRead 0 FirstWrite -1}
		x_assign_2_load_9 {Type I LastRead 0 FirstWrite -1}
		x_assign_2_load_10 {Type I LastRead 0 FirstWrite -1}
		x_assign_2_load_11 {Type I LastRead 0 FirstWrite -1}
		x_assign_2_load_12 {Type I LastRead 0 FirstWrite -1}
		x_assign_2_load_13 {Type I LastRead 0 FirstWrite -1}
		x_assign_2_load_14 {Type I LastRead 0 FirstWrite -1}
		x_assign_2_load_15 {Type I LastRead 0 FirstWrite -1}
		x_assign_2_load_16 {Type I LastRead 0 FirstWrite -1}
		x_assign_2_load_17 {Type I LastRead 0 FirstWrite -1}
		x_assign_2_load_18 {Type I LastRead 0 FirstWrite -1}
		x_assign_2_load_19 {Type I LastRead 0 FirstWrite -1}
		x_assign_2_load_20 {Type I LastRead 0 FirstWrite -1}
		x_assign_2_load_21 {Type I LastRead 0 FirstWrite -1}
		x_assign_2_load_22 {Type I LastRead 0 FirstWrite -1}
		x_assign_2_load_23 {Type I LastRead 0 FirstWrite -1}
		x_assign_2_load_24 {Type I LastRead 0 FirstWrite -1}
		x_assign_2_load_25 {Type I LastRead 0 FirstWrite -1}
		x_assign_2_load_26 {Type I LastRead 0 FirstWrite -1}
		x_assign_2_load_27 {Type I LastRead 0 FirstWrite -1}
		x_assign_2_load_28 {Type I LastRead 0 FirstWrite -1}
		x_assign_2_load_29 {Type I LastRead 0 FirstWrite -1}
		x_assign_2_load_30 {Type I LastRead 0 FirstWrite -1}
		x_assign_2_load_31 {Type I LastRead 0 FirstWrite -1}
		bias3 {Type I LastRead 160 FirstWrite -1}
		y {Type O LastRead -1 FirstWrite 171}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "317", "Max" : "317"}
	, {"Name" : "Interval", "Min" : "317", "Max" : "317"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	weight3 { ap_memory {  { weight3_address0 mem_address 1 9 }  { weight3_ce0 mem_ce 1 1 }  { weight3_q0 mem_dout 0 32 }  { weight3_address1 MemPortADDR2 1 9 }  { weight3_ce1 MemPortCE2 1 1 }  { weight3_q1 MemPortDOUT2 0 32 } } }
	x_assign_2_load { ap_none {  { x_assign_2_load in_data 0 32 } } }
	x_assign_2_load_1 { ap_none {  { x_assign_2_load_1 in_data 0 32 } } }
	x_assign_2_load_2 { ap_none {  { x_assign_2_load_2 in_data 0 32 } } }
	x_assign_2_load_3 { ap_none {  { x_assign_2_load_3 in_data 0 32 } } }
	x_assign_2_load_4 { ap_none {  { x_assign_2_load_4 in_data 0 32 } } }
	x_assign_2_load_5 { ap_none {  { x_assign_2_load_5 in_data 0 32 } } }
	x_assign_2_load_6 { ap_none {  { x_assign_2_load_6 in_data 0 32 } } }
	x_assign_2_load_7 { ap_none {  { x_assign_2_load_7 in_data 0 32 } } }
	x_assign_2_load_8 { ap_none {  { x_assign_2_load_8 in_data 0 32 } } }
	x_assign_2_load_9 { ap_none {  { x_assign_2_load_9 in_data 0 32 } } }
	x_assign_2_load_10 { ap_none {  { x_assign_2_load_10 in_data 0 32 } } }
	x_assign_2_load_11 { ap_none {  { x_assign_2_load_11 in_data 0 32 } } }
	x_assign_2_load_12 { ap_none {  { x_assign_2_load_12 in_data 0 32 } } }
	x_assign_2_load_13 { ap_none {  { x_assign_2_load_13 in_data 0 32 } } }
	x_assign_2_load_14 { ap_none {  { x_assign_2_load_14 in_data 0 32 } } }
	x_assign_2_load_15 { ap_none {  { x_assign_2_load_15 in_data 0 32 } } }
	x_assign_2_load_16 { ap_none {  { x_assign_2_load_16 in_data 0 32 } } }
	x_assign_2_load_17 { ap_none {  { x_assign_2_load_17 in_data 0 32 } } }
	x_assign_2_load_18 { ap_none {  { x_assign_2_load_18 in_data 0 32 } } }
	x_assign_2_load_19 { ap_none {  { x_assign_2_load_19 in_data 0 32 } } }
	x_assign_2_load_20 { ap_none {  { x_assign_2_load_20 in_data 0 32 } } }
	x_assign_2_load_21 { ap_none {  { x_assign_2_load_21 in_data 0 32 } } }
	x_assign_2_load_22 { ap_none {  { x_assign_2_load_22 in_data 0 32 } } }
	x_assign_2_load_23 { ap_none {  { x_assign_2_load_23 in_data 0 32 } } }
	x_assign_2_load_24 { ap_none {  { x_assign_2_load_24 in_data 0 32 } } }
	x_assign_2_load_25 { ap_none {  { x_assign_2_load_25 in_data 0 32 } } }
	x_assign_2_load_26 { ap_none {  { x_assign_2_load_26 in_data 0 32 } } }
	x_assign_2_load_27 { ap_none {  { x_assign_2_load_27 in_data 0 32 } } }
	x_assign_2_load_28 { ap_none {  { x_assign_2_load_28 in_data 0 32 } } }
	x_assign_2_load_29 { ap_none {  { x_assign_2_load_29 in_data 0 32 } } }
	x_assign_2_load_30 { ap_none {  { x_assign_2_load_30 in_data 0 32 } } }
	x_assign_2_load_31 { ap_none {  { x_assign_2_load_31 in_data 0 32 } } }
	bias3 { ap_memory {  { bias3_address0 mem_address 1 4 }  { bias3_ce0 mem_ce 1 1 }  { bias3_q0 mem_dout 0 32 } } }
	y { ap_memory {  { y_address0 mem_address 1 4 }  { y_ce0 mem_ce 1 1 }  { y_we0 mem_we 1 1 }  { y_d0 mem_din 1 32 } } }
}
