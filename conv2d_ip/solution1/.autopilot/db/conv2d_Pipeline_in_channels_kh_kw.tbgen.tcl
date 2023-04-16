set moduleName conv2d_Pipeline_in_channels_kh_kw
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
set C_modelName {conv2d_Pipeline_in_channels_kh_kw}
set C_modelType { void 0 }
set C_modelArgList {
	{ sext_ln25 int 33 regular  }
	{ sext_ln23_2 int 32 regular  }
	{ p_cast_mid2 int 32 regular  }
	{ mul_ln20_1 int 96 regular  }
	{ mul_ln20 int 64 regular  }
	{ cmp31_mid122 int 1 regular  }
	{ ksize int 32 regular  }
	{ icmp_ln35_1 int 1 regular  }
	{ sext_ln38 int 33 regular  }
	{ trunc_ln int 32 regular  }
	{ sext_ln23_1 int 32 regular  }
	{ mul float 32 regular  }
	{ sum_2_out float 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sext_ln25", "interface" : "wire", "bitwidth" : 33, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln23_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast_mid2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mul_ln20_1", "interface" : "wire", "bitwidth" : 96, "direction" : "READONLY"} , 
 	{ "Name" : "mul_ln20", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "cmp31_mid122", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "ksize", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "icmp_ln35_1", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln38", "interface" : "wire", "bitwidth" : 33, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln23_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mul", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sum_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sext_ln25 sc_in sc_lv 33 signal 0 } 
	{ sext_ln23_2 sc_in sc_lv 32 signal 1 } 
	{ p_cast_mid2 sc_in sc_lv 32 signal 2 } 
	{ mul_ln20_1 sc_in sc_lv 96 signal 3 } 
	{ mul_ln20 sc_in sc_lv 64 signal 4 } 
	{ cmp31_mid122 sc_in sc_lv 1 signal 5 } 
	{ ksize sc_in sc_lv 32 signal 6 } 
	{ icmp_ln35_1 sc_in sc_lv 1 signal 7 } 
	{ sext_ln38 sc_in sc_lv 33 signal 8 } 
	{ trunc_ln sc_in sc_lv 32 signal 9 } 
	{ sext_ln23_1 sc_in sc_lv 32 signal 10 } 
	{ mul sc_in sc_lv 32 signal 11 } 
	{ sum_2_out sc_out sc_lv 32 signal 12 } 
	{ sum_2_out_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ grp_fu_164_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_164_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_164_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_164_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_164_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sext_ln25", "direction": "in", "datatype": "sc_lv", "bitwidth":33, "type": "signal", "bundle":{"name": "sext_ln25", "role": "default" }} , 
 	{ "name": "sext_ln23_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sext_ln23_2", "role": "default" }} , 
 	{ "name": "p_cast_mid2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_cast_mid2", "role": "default" }} , 
 	{ "name": "mul_ln20_1", "direction": "in", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "mul_ln20_1", "role": "default" }} , 
 	{ "name": "mul_ln20", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mul_ln20", "role": "default" }} , 
 	{ "name": "cmp31_mid122", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp31_mid122", "role": "default" }} , 
 	{ "name": "ksize", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ksize", "role": "default" }} , 
 	{ "name": "icmp_ln35_1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "icmp_ln35_1", "role": "default" }} , 
 	{ "name": "sext_ln38", "direction": "in", "datatype": "sc_lv", "bitwidth":33, "type": "signal", "bundle":{"name": "sext_ln38", "role": "default" }} , 
 	{ "name": "trunc_ln", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "trunc_ln", "role": "default" }} , 
 	{ "name": "sext_ln23_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sext_ln23_1", "role": "default" }} , 
 	{ "name": "mul", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mul", "role": "default" }} , 
 	{ "name": "sum_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_2_out", "role": "default" }} , 
 	{ "name": "sum_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "sum_2_out", "role": "ap_vld" }} , 
 	{ "name": "grp_fu_164_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_164_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_164_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_164_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_164_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_164_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_164_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_164_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_164_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_164_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "conv2d_Pipeline_in_channels_kh_kw",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sext_ln25", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln23_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast_mid2", "Type" : "None", "Direction" : "I"},
			{"Name" : "mul_ln20_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "mul_ln20", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp31_mid122", "Type" : "None", "Direction" : "I"},
			{"Name" : "ksize", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln35_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln38", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln23_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "mul", "Type" : "None", "Direction" : "I"},
			{"Name" : "sum_2_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "in_channels_kh_kw", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	conv2d_Pipeline_in_channels_kh_kw {
		sext_ln25 {Type I LastRead 0 FirstWrite -1}
		sext_ln23_2 {Type I LastRead 0 FirstWrite -1}
		p_cast_mid2 {Type I LastRead 0 FirstWrite -1}
		mul_ln20_1 {Type I LastRead 0 FirstWrite -1}
		mul_ln20 {Type I LastRead 0 FirstWrite -1}
		cmp31_mid122 {Type I LastRead 0 FirstWrite -1}
		ksize {Type I LastRead 0 FirstWrite -1}
		icmp_ln35_1 {Type I LastRead 0 FirstWrite -1}
		sext_ln38 {Type I LastRead 0 FirstWrite -1}
		trunc_ln {Type I LastRead 0 FirstWrite -1}
		sext_ln23_1 {Type I LastRead 0 FirstWrite -1}
		mul {Type I LastRead 0 FirstWrite -1}
		sum_2_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	sext_ln25 { ap_none {  { sext_ln25 in_data 0 33 } } }
	sext_ln23_2 { ap_none {  { sext_ln23_2 in_data 0 32 } } }
	p_cast_mid2 { ap_none {  { p_cast_mid2 in_data 0 32 } } }
	mul_ln20_1 { ap_none {  { mul_ln20_1 in_data 0 96 } } }
	mul_ln20 { ap_none {  { mul_ln20 in_data 0 64 } } }
	cmp31_mid122 { ap_none {  { cmp31_mid122 in_data 0 1 } } }
	ksize { ap_none {  { ksize in_data 0 32 } } }
	icmp_ln35_1 { ap_none {  { icmp_ln35_1 in_data 0 1 } } }
	sext_ln38 { ap_none {  { sext_ln38 in_data 0 33 } } }
	trunc_ln { ap_none {  { trunc_ln in_data 0 32 } } }
	sext_ln23_1 { ap_none {  { sext_ln23_1 in_data 0 32 } } }
	mul { ap_none {  { mul in_data 0 32 } } }
	sum_2_out { ap_vld {  { sum_2_out out_data 1 32 }  { sum_2_out_ap_vld out_vld 1 1 } } }
}
