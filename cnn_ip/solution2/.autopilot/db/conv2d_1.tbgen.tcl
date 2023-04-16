set moduleName conv2d_1
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
set C_modelName {conv2d.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ x int 32 regular {array 784 { 1 } 1 1 }  }
	{ weight0 int 32 regular {array 36 { 1 } 1 1 }  }
	{ bias0 int 32 regular {array 4 { 1 } 1 1 }  }
	{ y float 32 regular {array 3136 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "x", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weight0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bias0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "y", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 33
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
	{ weight0_address0 sc_out sc_lv 6 signal 1 } 
	{ weight0_ce0 sc_out sc_logic 1 signal 1 } 
	{ weight0_q0 sc_in sc_lv 32 signal 1 } 
	{ bias0_address0 sc_out sc_lv 2 signal 2 } 
	{ bias0_ce0 sc_out sc_logic 1 signal 2 } 
	{ bias0_q0 sc_in sc_lv 32 signal 2 } 
	{ y_address0 sc_out sc_lv 12 signal 3 } 
	{ y_ce0 sc_out sc_logic 1 signal 3 } 
	{ y_we0 sc_out sc_logic 1 signal 3 } 
	{ y_d0 sc_out sc_lv 32 signal 3 } 
	{ grp_fu_873_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_873_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_873_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_873_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_873_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_877_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_877_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_877_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_877_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_877_p_ce sc_out sc_logic 1 signal -1 } 
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
 	{ "name": "x_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "x", "role": "address0" }} , 
 	{ "name": "x_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x", "role": "ce0" }} , 
 	{ "name": "x_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x", "role": "q0" }} , 
 	{ "name": "weight0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "weight0", "role": "address0" }} , 
 	{ "name": "weight0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight0", "role": "ce0" }} , 
 	{ "name": "weight0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight0", "role": "q0" }} , 
 	{ "name": "bias0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bias0", "role": "address0" }} , 
 	{ "name": "bias0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias0", "role": "ce0" }} , 
 	{ "name": "bias0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bias0", "role": "q0" }} , 
 	{ "name": "y_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "y", "role": "address0" }} , 
 	{ "name": "y_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "ce0" }} , 
 	{ "name": "y_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "we0" }} , 
 	{ "name": "y_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "y", "role": "d0" }} , 
 	{ "name": "grp_fu_873_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_873_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_873_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_873_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_873_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_873_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_873_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_873_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_873_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_873_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_877_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_877_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_877_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_877_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_877_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_877_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_877_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_877_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_877_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_877_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_881_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_881_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_881_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_881_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_881_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_881_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_881_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_881_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "conv2d_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "28283", "EstimateLatencyMax" : "28283",
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
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage4", "LastStateIter" : "ap_enable_reg_pp0_iter7", "LastStateBlock" : "ap_block_pp0_stage4_subdone", "QuitState" : "ap_ST_fsm_pp0_stage4", "QuitStateIter" : "ap_enable_reg_pp0_iter7", "QuitStateBlock" : "ap_block_pp0_stage4_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	conv2d_1 {
		x {Type I LastRead 10 FirstWrite -1}
		weight0 {Type I LastRead 10 FirstWrite -1}
		bias0 {Type I LastRead 55 FirstWrite -1}
		y {Type O LastRead -1 FirstWrite 67}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "28283", "Max" : "28283"}
	, {"Name" : "Interval", "Min" : "28283", "Max" : "28283"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	x { ap_memory {  { x_address0 mem_address 1 10 }  { x_ce0 mem_ce 1 1 }  { x_q0 mem_dout 0 32 } } }
	weight0 { ap_memory {  { weight0_address0 mem_address 1 6 }  { weight0_ce0 mem_ce 1 1 }  { weight0_q0 mem_dout 0 32 } } }
	bias0 { ap_memory {  { bias0_address0 mem_address 1 2 }  { bias0_ce0 mem_ce 1 1 }  { bias0_q0 mem_dout 0 32 } } }
	y { ap_memory {  { y_address0 mem_address 1 12 }  { y_ce0 mem_ce 1 1 }  { y_we0 mem_we 1 1 }  { y_d0 mem_din 1 32 } } }
}
