set moduleName cnn_top
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {cnn_top}
set C_modelType { void 0 }
set C_modelArgList {
	{ x int 32 regular {array 784 { 1 1 } 1 1 }  }
	{ weight0 int 32 regular {array 36 { 1 1 } 1 1 }  }
	{ bias0 int 32 regular {array 4 { 1 3 } 1 1 }  }
	{ weight1 int 32 regular {array 288 { 1 1 } 1 1 }  }
	{ bias1 int 32 regular {array 8 { 1 3 } 1 1 }  }
	{ weight2 int 32 regular {array 12544 { 1 3 } 1 1 }  }
	{ bias2 int 32 regular {array 32 { 1 3 } 1 1 }  }
	{ weight3 int 32 regular {array 320 { 1 1 } 1 1 }  }
	{ bias3 int 32 regular {array 10 { 1 3 } 1 1 }  }
	{ y int 32 regular {array 10 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "x", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weight0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bias0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weight1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bias1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weight2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bias2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weight3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bias3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "y", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 49
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ x_address0 sc_out sc_lv 10 signal 0 } 
	{ x_ce0 sc_out sc_logic 1 signal 0 } 
	{ x_q0 sc_in sc_lv 32 signal 0 } 
	{ x_address1 sc_out sc_lv 10 signal 0 } 
	{ x_ce1 sc_out sc_logic 1 signal 0 } 
	{ x_q1 sc_in sc_lv 32 signal 0 } 
	{ weight0_address0 sc_out sc_lv 6 signal 1 } 
	{ weight0_ce0 sc_out sc_logic 1 signal 1 } 
	{ weight0_q0 sc_in sc_lv 32 signal 1 } 
	{ weight0_address1 sc_out sc_lv 6 signal 1 } 
	{ weight0_ce1 sc_out sc_logic 1 signal 1 } 
	{ weight0_q1 sc_in sc_lv 32 signal 1 } 
	{ bias0_address0 sc_out sc_lv 2 signal 2 } 
	{ bias0_ce0 sc_out sc_logic 1 signal 2 } 
	{ bias0_q0 sc_in sc_lv 32 signal 2 } 
	{ weight1_address0 sc_out sc_lv 9 signal 3 } 
	{ weight1_ce0 sc_out sc_logic 1 signal 3 } 
	{ weight1_q0 sc_in sc_lv 32 signal 3 } 
	{ weight1_address1 sc_out sc_lv 9 signal 3 } 
	{ weight1_ce1 sc_out sc_logic 1 signal 3 } 
	{ weight1_q1 sc_in sc_lv 32 signal 3 } 
	{ bias1_address0 sc_out sc_lv 3 signal 4 } 
	{ bias1_ce0 sc_out sc_logic 1 signal 4 } 
	{ bias1_q0 sc_in sc_lv 32 signal 4 } 
	{ weight2_address0 sc_out sc_lv 14 signal 5 } 
	{ weight2_ce0 sc_out sc_logic 1 signal 5 } 
	{ weight2_q0 sc_in sc_lv 32 signal 5 } 
	{ bias2_address0 sc_out sc_lv 5 signal 6 } 
	{ bias2_ce0 sc_out sc_logic 1 signal 6 } 
	{ bias2_q0 sc_in sc_lv 32 signal 6 } 
	{ weight3_address0 sc_out sc_lv 9 signal 7 } 
	{ weight3_ce0 sc_out sc_logic 1 signal 7 } 
	{ weight3_q0 sc_in sc_lv 32 signal 7 } 
	{ weight3_address1 sc_out sc_lv 9 signal 7 } 
	{ weight3_ce1 sc_out sc_logic 1 signal 7 } 
	{ weight3_q1 sc_in sc_lv 32 signal 7 } 
	{ bias3_address0 sc_out sc_lv 4 signal 8 } 
	{ bias3_ce0 sc_out sc_logic 1 signal 8 } 
	{ bias3_q0 sc_in sc_lv 32 signal 8 } 
	{ y_address0 sc_out sc_lv 4 signal 9 } 
	{ y_ce0 sc_out sc_logic 1 signal 9 } 
	{ y_we0 sc_out sc_logic 1 signal 9 } 
	{ y_d0 sc_out sc_lv 32 signal 9 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "x_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "x", "role": "address0" }} , 
 	{ "name": "x_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x", "role": "ce0" }} , 
 	{ "name": "x_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x", "role": "q0" }} , 
 	{ "name": "x_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "x", "role": "address1" }} , 
 	{ "name": "x_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x", "role": "ce1" }} , 
 	{ "name": "x_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x", "role": "q1" }} , 
 	{ "name": "weight0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "weight0", "role": "address0" }} , 
 	{ "name": "weight0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight0", "role": "ce0" }} , 
 	{ "name": "weight0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight0", "role": "q0" }} , 
 	{ "name": "weight0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "weight0", "role": "address1" }} , 
 	{ "name": "weight0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight0", "role": "ce1" }} , 
 	{ "name": "weight0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight0", "role": "q1" }} , 
 	{ "name": "bias0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bias0", "role": "address0" }} , 
 	{ "name": "bias0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias0", "role": "ce0" }} , 
 	{ "name": "bias0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bias0", "role": "q0" }} , 
 	{ "name": "weight1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "weight1", "role": "address0" }} , 
 	{ "name": "weight1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight1", "role": "ce0" }} , 
 	{ "name": "weight1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight1", "role": "q0" }} , 
 	{ "name": "weight1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "weight1", "role": "address1" }} , 
 	{ "name": "weight1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight1", "role": "ce1" }} , 
 	{ "name": "weight1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight1", "role": "q1" }} , 
 	{ "name": "bias1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bias1", "role": "address0" }} , 
 	{ "name": "bias1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias1", "role": "ce0" }} , 
 	{ "name": "bias1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bias1", "role": "q0" }} , 
 	{ "name": "weight2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "weight2", "role": "address0" }} , 
 	{ "name": "weight2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight2", "role": "ce0" }} , 
 	{ "name": "weight2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight2", "role": "q0" }} , 
 	{ "name": "bias2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "bias2", "role": "address0" }} , 
 	{ "name": "bias2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias2", "role": "ce0" }} , 
 	{ "name": "bias2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bias2", "role": "q0" }} , 
 	{ "name": "weight3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "weight3", "role": "address0" }} , 
 	{ "name": "weight3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight3", "role": "ce0" }} , 
 	{ "name": "weight3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight3", "role": "q0" }} , 
 	{ "name": "weight3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "weight3", "role": "address1" }} , 
 	{ "name": "weight3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight3", "role": "ce1" }} , 
 	{ "name": "weight3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight3", "role": "q1" }} , 
 	{ "name": "bias3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bias3", "role": "address0" }} , 
 	{ "name": "bias3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias3", "role": "ce0" }} , 
 	{ "name": "bias3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bias3", "role": "q0" }} , 
 	{ "name": "y_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "y", "role": "address0" }} , 
 	{ "name": "y_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "ce0" }} , 
 	{ "name": "y_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "we0" }} , 
 	{ "name": "y_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "y", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "11", "13", "15", "17", "19", "21", "24", "26", "28", "29", "30", "31", "32", "33", "34", "35", "36"],
		"CDFG" : "cnn_top",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "125757", "EstimateLatencyMax" : "125757",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_conv2d_1_fu_415", "Port" : "x", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weight0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_conv2d_1_fu_415", "Port" : "weight0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "bias0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_conv2d_1_fu_415", "Port" : "bias0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weight1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_conv2d_2_fu_439", "Port" : "weight1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "bias1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_conv2d_2_fu_439", "Port" : "bias1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "weight2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "grp_cnn_top_Pipeline_VITIS_LOOP_73_1_VITIS_LOOP_76_2_fu_461", "Port" : "weight2", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "bias2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "grp_cnn_top_Pipeline_VITIS_LOOP_73_1_VITIS_LOOP_76_2_fu_461", "Port" : "bias2", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "weight3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_cnn_top_Pipeline_VITIS_LOOP_73_1_fu_477", "Port" : "weight3", "Inst_start_state" : "33", "Inst_end_state" : "34"}]},
			{"Name" : "bias3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_cnn_top_Pipeline_VITIS_LOOP_73_1_fu_477", "Port" : "bias3", "Inst_start_state" : "33", "Inst_end_state" : "34"}]},
			{"Name" : "y", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_cnn_top_Pipeline_VITIS_LOOP_73_1_fu_477", "Port" : "y", "Inst_start_state" : "33", "Inst_end_state" : "34"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vla1_i_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vla42_i_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vla73_i_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vla104_i_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vla135_i_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vla166_i_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_assign_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_assign_2_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_1_fu_415", "Parent" : "0", "Child" : ["10"],
		"CDFG" : "conv2d_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15743", "EstimateLatencyMax" : "15743",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weight0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bias0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "y", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_31_1_VITIS_LOOP_33_2_VITIS_LOOP_35_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter13", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter13", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_1_fu_415.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_cnn_top_Pipeline_VITIS_LOOP_110_1_fu_427", "Parent" : "0", "Child" : ["12"],
		"CDFG" : "cnn_top_Pipeline_VITIS_LOOP_110_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3141", "EstimateLatencyMax" : "3141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "vla1_i", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "vla42_i", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_110_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_top_Pipeline_VITIS_LOOP_110_1_fu_427.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_maxpool2d_1_fu_433", "Parent" : "0", "Child" : ["14"],
		"CDFG" : "maxpool2d_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "797", "EstimateLatencyMax" : "797",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "y", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_86_1_VITIS_LOOP_88_2_VITIS_LOOP_90_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter12", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter12", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_maxpool2d_1_fu_433.flow_control_loop_pipe_sequential_init_U", "Parent" : "13"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_2_fu_439", "Parent" : "0", "Child" : ["16"],
		"CDFG" : "conv2d_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "28433", "EstimateLatencyMax" : "28433",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weight1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bias1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "y", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_31_1_VITIS_LOOP_33_2_VITIS_LOOP_35_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "18", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage9", "LastStateIter" : "ap_enable_reg_pp0_iter12", "LastStateBlock" : "ap_block_pp0_stage9_subdone", "QuitState" : "ap_ST_fsm_pp0_stage9", "QuitStateIter" : "ap_enable_reg_pp0_iter12", "QuitStateBlock" : "ap_block_pp0_stage9_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_2_fu_439.flow_control_loop_pipe_sequential_init_U", "Parent" : "15"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_cnn_top_Pipeline_VITIS_LOOP_110_14_fu_449", "Parent" : "0", "Child" : ["18"],
		"CDFG" : "cnn_top_Pipeline_VITIS_LOOP_110_14",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1573", "EstimateLatencyMax" : "1573",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "vla104_i", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "vla135_i", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_110_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_top_Pipeline_VITIS_LOOP_110_14_fu_449.flow_control_loop_pipe_sequential_init_U", "Parent" : "17"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_maxpool2d_fu_455", "Parent" : "0", "Child" : ["20"],
		"CDFG" : "maxpool2d",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "404", "EstimateLatencyMax" : "404",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "y", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_86_1_VITIS_LOOP_88_2_VITIS_LOOP_90_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter11", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter11", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_maxpool2d_fu_455.flow_control_loop_pipe_sequential_init_U", "Parent" : "19"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_cnn_top_Pipeline_VITIS_LOOP_73_1_VITIS_LOOP_76_2_fu_461", "Parent" : "0", "Child" : ["22", "23"],
		"CDFG" : "cnn_top_Pipeline_VITIS_LOOP_73_1_VITIS_LOOP_76_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "75279", "EstimateLatencyMax" : "75279",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "vla166_i", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weight2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bias2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_assign", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_73_1_VITIS_LOOP_76_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_top_Pipeline_VITIS_LOOP_73_1_VITIS_LOOP_76_2_fu_461.mac_muladd_6ns_9ns_9ns_14_4_1_U38", "Parent" : "21"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_top_Pipeline_VITIS_LOOP_73_1_VITIS_LOOP_76_2_fu_461.flow_control_loop_pipe_sequential_init_U", "Parent" : "21"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_cnn_top_Pipeline_VITIS_LOOP_110_15_fu_471", "Parent" : "0", "Child" : ["25"],
		"CDFG" : "cnn_top_Pipeline_VITIS_LOOP_110_15",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "37", "EstimateLatencyMax" : "37",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_assign", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_assign_2", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_110_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_top_Pipeline_VITIS_LOOP_110_15_fu_471.flow_control_loop_pipe_sequential_init_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_cnn_top_Pipeline_VITIS_LOOP_73_1_fu_477", "Parent" : "0", "Child" : ["27"],
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
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_top_Pipeline_VITIS_LOOP_73_1_fu_477.flow_control_loop_pipe_sequential_init_U", "Parent" : "26"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U87", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U88", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U89", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U90", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U91", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U92", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U93", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U94", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U95", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	cnn_top {
		x {Type I LastRead 7 FirstWrite -1}
		weight0 {Type I LastRead 6 FirstWrite -1}
		bias0 {Type I LastRead 56 FirstWrite -1}
		weight1 {Type I LastRead 19 FirstWrite -1}
		bias1 {Type I LastRead 216 FirstWrite -1}
		weight2 {Type I LastRead 3 FirstWrite -1}
		bias2 {Type I LastRead 12 FirstWrite -1}
		weight3 {Type I LastRead 16 FirstWrite -1}
		bias3 {Type I LastRead 160 FirstWrite -1}
		y {Type O LastRead -1 FirstWrite 171}}
	conv2d_1 {
		x {Type I LastRead 7 FirstWrite -1}
		weight0 {Type I LastRead 6 FirstWrite -1}
		bias0 {Type I LastRead 56 FirstWrite -1}
		y {Type O LastRead -1 FirstWrite 67}}
	cnn_top_Pipeline_VITIS_LOOP_110_1 {
		vla1_i {Type I LastRead 0 FirstWrite -1}
		vla42_i {Type O LastRead -1 FirstWrite 4}}
	maxpool2d_1 {
		x {Type I LastRead 3 FirstWrite -1}
		y {Type O LastRead -1 FirstWrite 12}}
	conv2d_2 {
		x {Type I LastRead 19 FirstWrite -1}
		weight1 {Type I LastRead 19 FirstWrite -1}
		bias1 {Type I LastRead 216 FirstWrite -1}
		y {Type O LastRead -1 FirstWrite 225}}
	cnn_top_Pipeline_VITIS_LOOP_110_14 {
		vla104_i {Type I LastRead 0 FirstWrite -1}
		vla135_i {Type O LastRead -1 FirstWrite 4}}
	maxpool2d {
		x {Type I LastRead 2 FirstWrite -1}
		y {Type O LastRead -1 FirstWrite 11}}
	cnn_top_Pipeline_VITIS_LOOP_73_1_VITIS_LOOP_76_2 {
		vla166_i {Type I LastRead 0 FirstWrite -1}
		weight2 {Type I LastRead 3 FirstWrite -1}
		bias2 {Type I LastRead 12 FirstWrite -1}
		x_assign {Type O LastRead -1 FirstWrite 19}}
	cnn_top_Pipeline_VITIS_LOOP_110_15 {
		x_assign {Type I LastRead 0 FirstWrite -1}
		x_assign_2 {Type O LastRead -1 FirstWrite 4}}
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
	{"Name" : "Latency", "Min" : "125757", "Max" : "125757"}
	, {"Name" : "Interval", "Min" : "125758", "Max" : "125758"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	x { ap_memory {  { x_address0 mem_address 1 10 }  { x_ce0 mem_ce 1 1 }  { x_q0 mem_dout 0 32 }  { x_address1 MemPortADDR2 1 10 }  { x_ce1 MemPortCE2 1 1 }  { x_q1 MemPortDOUT2 0 32 } } }
	weight0 { ap_memory {  { weight0_address0 mem_address 1 6 }  { weight0_ce0 mem_ce 1 1 }  { weight0_q0 mem_dout 0 32 }  { weight0_address1 MemPortADDR2 1 6 }  { weight0_ce1 MemPortCE2 1 1 }  { weight0_q1 MemPortDOUT2 0 32 } } }
	bias0 { ap_memory {  { bias0_address0 mem_address 1 2 }  { bias0_ce0 mem_ce 1 1 }  { bias0_q0 mem_dout 0 32 } } }
	weight1 { ap_memory {  { weight1_address0 mem_address 1 9 }  { weight1_ce0 mem_ce 1 1 }  { weight1_q0 mem_dout 0 32 }  { weight1_address1 MemPortADDR2 1 9 }  { weight1_ce1 MemPortCE2 1 1 }  { weight1_q1 MemPortDOUT2 0 32 } } }
	bias1 { ap_memory {  { bias1_address0 mem_address 1 3 }  { bias1_ce0 mem_ce 1 1 }  { bias1_q0 mem_dout 0 32 } } }
	weight2 { ap_memory {  { weight2_address0 mem_address 1 14 }  { weight2_ce0 mem_ce 1 1 }  { weight2_q0 mem_dout 0 32 } } }
	bias2 { ap_memory {  { bias2_address0 mem_address 1 5 }  { bias2_ce0 mem_ce 1 1 }  { bias2_q0 mem_dout 0 32 } } }
	weight3 { ap_memory {  { weight3_address0 mem_address 1 9 }  { weight3_ce0 mem_ce 1 1 }  { weight3_q0 mem_dout 0 32 }  { weight3_address1 MemPortADDR2 1 9 }  { weight3_ce1 MemPortCE2 1 1 }  { weight3_q1 MemPortDOUT2 0 32 } } }
	bias3 { ap_memory {  { bias3_address0 mem_address 1 4 }  { bias3_ce0 mem_ce 1 1 }  { bias3_q0 mem_dout 0 32 } } }
	y { ap_memory {  { y_address0 mem_address 1 4 }  { y_ce0 mem_ce 1 1 }  { y_we0 mem_we 1 1 }  { y_d0 mem_din 1 32 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
