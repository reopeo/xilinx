set moduleName conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3
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
set C_modelName {conv2d.1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3}
set C_modelType { void 0 }
set C_modelArgList {
	{ empty int 8 regular  }
	{ x int 32 regular {array 784 { 1 1 } 1 1 }  }
	{ weight0_0_load float 32 regular  }
	{ weight0_0_load_1 float 32 regular  }
	{ weight0_0_load_2 float 32 regular  }
	{ weight0_0_load_3 float 32 regular  }
	{ weight0_0_load_4 float 32 regular  }
	{ weight0_0_load_5 float 32 regular  }
	{ weight0_0_load_6 float 32 regular  }
	{ weight0_0_load_7 float 32 regular  }
	{ weight0_0_load_8 float 32 regular  }
	{ merge_i float 32 regular  }
	{ y float 32 regular {array 3136 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "x", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weight0_0_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weight0_0_load_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weight0_0_load_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weight0_0_load_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weight0_0_load_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weight0_0_load_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weight0_0_load_6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weight0_0_load_7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weight0_0_load_8", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "merge_i", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "y", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 45
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ empty sc_in sc_lv 8 signal 0 } 
	{ x_address0 sc_out sc_lv 10 signal 1 } 
	{ x_ce0 sc_out sc_logic 1 signal 1 } 
	{ x_q0 sc_in sc_lv 32 signal 1 } 
	{ x_address1 sc_out sc_lv 10 signal 1 } 
	{ x_ce1 sc_out sc_logic 1 signal 1 } 
	{ x_q1 sc_in sc_lv 32 signal 1 } 
	{ weight0_0_load sc_in sc_lv 32 signal 2 } 
	{ weight0_0_load_1 sc_in sc_lv 32 signal 3 } 
	{ weight0_0_load_2 sc_in sc_lv 32 signal 4 } 
	{ weight0_0_load_3 sc_in sc_lv 32 signal 5 } 
	{ weight0_0_load_4 sc_in sc_lv 32 signal 6 } 
	{ weight0_0_load_5 sc_in sc_lv 32 signal 7 } 
	{ weight0_0_load_6 sc_in sc_lv 32 signal 8 } 
	{ weight0_0_load_7 sc_in sc_lv 32 signal 9 } 
	{ weight0_0_load_8 sc_in sc_lv 32 signal 10 } 
	{ merge_i sc_in sc_lv 32 signal 11 } 
	{ y_address0 sc_out sc_lv 12 signal 12 } 
	{ y_ce0 sc_out sc_logic 1 signal 12 } 
	{ y_we0 sc_out sc_logic 1 signal 12 } 
	{ y_d0 sc_out sc_lv 32 signal 12 } 
	{ grp_fu_619_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_619_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_619_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_619_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_619_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_623_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_623_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_623_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_623_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_623_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_627_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_627_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_627_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_627_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_631_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_631_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_631_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_631_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "x_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "x", "role": "address0" }} , 
 	{ "name": "x_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x", "role": "ce0" }} , 
 	{ "name": "x_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x", "role": "q0" }} , 
 	{ "name": "x_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "x", "role": "address1" }} , 
 	{ "name": "x_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x", "role": "ce1" }} , 
 	{ "name": "x_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x", "role": "q1" }} , 
 	{ "name": "weight0_0_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight0_0_load", "role": "default" }} , 
 	{ "name": "weight0_0_load_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight0_0_load_1", "role": "default" }} , 
 	{ "name": "weight0_0_load_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight0_0_load_2", "role": "default" }} , 
 	{ "name": "weight0_0_load_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight0_0_load_3", "role": "default" }} , 
 	{ "name": "weight0_0_load_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight0_0_load_4", "role": "default" }} , 
 	{ "name": "weight0_0_load_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight0_0_load_5", "role": "default" }} , 
 	{ "name": "weight0_0_load_6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight0_0_load_6", "role": "default" }} , 
 	{ "name": "weight0_0_load_7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight0_0_load_7", "role": "default" }} , 
 	{ "name": "weight0_0_load_8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight0_0_load_8", "role": "default" }} , 
 	{ "name": "merge_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "merge_i", "role": "default" }} , 
 	{ "name": "y_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "y", "role": "address0" }} , 
 	{ "name": "y_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "ce0" }} , 
 	{ "name": "y_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "we0" }} , 
 	{ "name": "y_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "y", "role": "d0" }} , 
 	{ "name": "grp_fu_619_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_619_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_619_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_619_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_619_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_619_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_619_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_619_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_619_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_619_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_623_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_623_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_623_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_623_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_623_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_623_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_623_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_623_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_623_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_623_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_627_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_627_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_627_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_627_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_627_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_627_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_627_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_627_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_631_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_631_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_631_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_631_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_631_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_631_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_631_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_631_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3982", "EstimateLatencyMax" : "3982",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "x", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weight0_0_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "weight0_0_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "weight0_0_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "weight0_0_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "weight0_0_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "weight0_0_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "weight0_0_load_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "weight0_0_load_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "weight0_0_load_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "merge_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_2795_2_VITIS_LOOP_2797_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter13", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter13", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3 {
		empty {Type I LastRead 0 FirstWrite -1}
		x {Type I LastRead 6 FirstWrite -1}
		weight0_0_load {Type I LastRead 0 FirstWrite -1}
		weight0_0_load_1 {Type I LastRead 0 FirstWrite -1}
		weight0_0_load_2 {Type I LastRead 0 FirstWrite -1}
		weight0_0_load_3 {Type I LastRead 0 FirstWrite -1}
		weight0_0_load_4 {Type I LastRead 0 FirstWrite -1}
		weight0_0_load_5 {Type I LastRead 0 FirstWrite -1}
		weight0_0_load_6 {Type I LastRead 0 FirstWrite -1}
		weight0_0_load_7 {Type I LastRead 0 FirstWrite -1}
		weight0_0_load_8 {Type I LastRead 0 FirstWrite -1}
		merge_i {Type I LastRead 0 FirstWrite -1}
		y {Type O LastRead -1 FirstWrite 65}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3982", "Max" : "3982"}
	, {"Name" : "Interval", "Min" : "3982", "Max" : "3982"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	empty { ap_none {  { empty in_data 0 8 } } }
	x { ap_memory {  { x_address0 mem_address 1 10 }  { x_ce0 mem_ce 1 1 }  { x_q0 mem_dout 0 32 }  { x_address1 MemPortADDR2 1 10 }  { x_ce1 MemPortCE2 1 1 }  { x_q1 MemPortDOUT2 0 32 } } }
	weight0_0_load { ap_none {  { weight0_0_load in_data 0 32 } } }
	weight0_0_load_1 { ap_none {  { weight0_0_load_1 in_data 0 32 } } }
	weight0_0_load_2 { ap_none {  { weight0_0_load_2 in_data 0 32 } } }
	weight0_0_load_3 { ap_none {  { weight0_0_load_3 in_data 0 32 } } }
	weight0_0_load_4 { ap_none {  { weight0_0_load_4 in_data 0 32 } } }
	weight0_0_load_5 { ap_none {  { weight0_0_load_5 in_data 0 32 } } }
	weight0_0_load_6 { ap_none {  { weight0_0_load_6 in_data 0 32 } } }
	weight0_0_load_7 { ap_none {  { weight0_0_load_7 in_data 0 32 } } }
	weight0_0_load_8 { ap_none {  { weight0_0_load_8 in_data 0 32 } } }
	merge_i { ap_none {  { merge_i in_data 0 32 } } }
	y { ap_memory {  { y_address0 mem_address 1 12 }  { y_ce0 mem_ce 1 1 }  { y_we0 mem_we 1 1 }  { y_d0 mem_din 1 32 } } }
}
