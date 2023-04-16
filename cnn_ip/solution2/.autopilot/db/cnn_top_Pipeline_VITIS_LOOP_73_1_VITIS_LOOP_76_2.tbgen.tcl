set moduleName cnn_top_Pipeline_VITIS_LOOP_73_1_VITIS_LOOP_76_2
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
set C_modelName {cnn_top_Pipeline_VITIS_LOOP_73_1_VITIS_LOOP_76_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ vla166_i float 32 regular {array 392 { 1 3 } 1 1 }  }
	{ weight2 int 32 regular {array 12544 { 1 } 1 1 }  }
	{ bias2 int 32 regular {array 32 { 1 } 1 1 }  }
	{ x_assign float 32 regular {array 32 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "vla166_i", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weight2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bias2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_assign", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ vla166_i_address0 sc_out sc_lv 9 signal 0 } 
	{ vla166_i_ce0 sc_out sc_logic 1 signal 0 } 
	{ vla166_i_q0 sc_in sc_lv 32 signal 0 } 
	{ weight2_address0 sc_out sc_lv 14 signal 1 } 
	{ weight2_ce0 sc_out sc_logic 1 signal 1 } 
	{ weight2_q0 sc_in sc_lv 32 signal 1 } 
	{ bias2_address0 sc_out sc_lv 5 signal 2 } 
	{ bias2_ce0 sc_out sc_logic 1 signal 2 } 
	{ bias2_q0 sc_in sc_lv 32 signal 2 } 
	{ x_assign_address0 sc_out sc_lv 5 signal 3 } 
	{ x_assign_ce0 sc_out sc_logic 1 signal 3 } 
	{ x_assign_we0 sc_out sc_logic 1 signal 3 } 
	{ x_assign_d0 sc_out sc_lv 32 signal 3 } 
	{ grp_fu_873_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_873_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_873_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_873_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_873_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_881_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_881_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_881_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_881_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "vla166_i_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "vla166_i", "role": "address0" }} , 
 	{ "name": "vla166_i_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vla166_i", "role": "ce0" }} , 
 	{ "name": "vla166_i_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "vla166_i", "role": "q0" }} , 
 	{ "name": "weight2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "weight2", "role": "address0" }} , 
 	{ "name": "weight2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight2", "role": "ce0" }} , 
 	{ "name": "weight2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight2", "role": "q0" }} , 
 	{ "name": "bias2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "bias2", "role": "address0" }} , 
 	{ "name": "bias2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias2", "role": "ce0" }} , 
 	{ "name": "bias2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bias2", "role": "q0" }} , 
 	{ "name": "x_assign_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "x_assign", "role": "address0" }} , 
 	{ "name": "x_assign_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_assign", "role": "ce0" }} , 
 	{ "name": "x_assign_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_assign", "role": "we0" }} , 
 	{ "name": "x_assign_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_assign", "role": "d0" }} , 
 	{ "name": "grp_fu_873_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_873_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_873_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_873_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_873_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_873_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_873_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_873_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_873_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_873_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_881_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_881_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_881_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_881_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_881_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_881_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_881_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_881_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_6ns_9ns_9ns_14_4_1_U35", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	cnn_top_Pipeline_VITIS_LOOP_73_1_VITIS_LOOP_76_2 {
		vla166_i {Type I LastRead 0 FirstWrite -1}
		weight2 {Type I LastRead 3 FirstWrite -1}
		bias2 {Type I LastRead 12 FirstWrite -1}
		x_assign {Type O LastRead -1 FirstWrite 19}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "75279", "Max" : "75279"}
	, {"Name" : "Interval", "Min" : "75279", "Max" : "75279"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	vla166_i { ap_memory {  { vla166_i_address0 mem_address 1 9 }  { vla166_i_ce0 mem_ce 1 1 }  { vla166_i_q0 mem_dout 0 32 } } }
	weight2 { ap_memory {  { weight2_address0 mem_address 1 14 }  { weight2_ce0 mem_ce 1 1 }  { weight2_q0 mem_dout 0 32 } } }
	bias2 { ap_memory {  { bias2_address0 mem_address 1 5 }  { bias2_ce0 mem_ce 1 1 }  { bias2_q0 mem_dout 0 32 } } }
	x_assign { ap_memory {  { x_assign_address0 mem_address 1 5 }  { x_assign_ce0 mem_ce 1 1 }  { x_assign_we0 mem_we 1 1 }  { x_assign_d0 mem_din 1 32 } } }
}
