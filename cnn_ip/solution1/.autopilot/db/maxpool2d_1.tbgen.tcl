set moduleName maxpool2d_1
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
set C_modelName {maxpool2d.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ x float 32 regular {array 3136 { 1 1 1 1 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ y float 32 regular {array 784 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "x", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "y", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 42
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ x_address0 sc_out sc_lv 12 signal 0 } 
	{ x_ce0 sc_out sc_logic 1 signal 0 } 
	{ x_q0 sc_in sc_lv 32 signal 0 } 
	{ x_address1 sc_out sc_lv 12 signal 0 } 
	{ x_ce1 sc_out sc_logic 1 signal 0 } 
	{ x_q1 sc_in sc_lv 32 signal 0 } 
	{ x_address2 sc_out sc_lv 12 signal 0 } 
	{ x_ce2 sc_out sc_logic 1 signal 0 } 
	{ x_q2 sc_in sc_lv 32 signal 0 } 
	{ x_address3 sc_out sc_lv 12 signal 0 } 
	{ x_ce3 sc_out sc_logic 1 signal 0 } 
	{ x_q3 sc_in sc_lv 32 signal 0 } 
	{ y_address0 sc_out sc_lv 10 signal 1 } 
	{ y_ce0 sc_out sc_logic 1 signal 1 } 
	{ y_we0 sc_out sc_logic 1 signal 1 } 
	{ y_d0 sc_out sc_lv 32 signal 1 } 
	{ grp_fu_857_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_857_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_857_p_opcode sc_out sc_lv 5 signal -1 } 
	{ grp_fu_857_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_fu_857_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_861_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_861_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_861_p_opcode sc_out sc_lv 5 signal -1 } 
	{ grp_fu_861_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_fu_861_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_865_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_865_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_865_p_opcode sc_out sc_lv 5 signal -1 } 
	{ grp_fu_865_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_fu_865_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_869_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_869_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_869_p_opcode sc_out sc_lv 5 signal -1 } 
	{ grp_fu_869_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_fu_869_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "x_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "x", "role": "address0" }} , 
 	{ "name": "x_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x", "role": "ce0" }} , 
 	{ "name": "x_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x", "role": "q0" }} , 
 	{ "name": "x_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "x", "role": "address1" }} , 
 	{ "name": "x_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x", "role": "ce1" }} , 
 	{ "name": "x_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x", "role": "q1" }} , 
 	{ "name": "x_address2", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "x", "role": "address2" }} , 
 	{ "name": "x_ce2", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x", "role": "ce2" }} , 
 	{ "name": "x_q2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x", "role": "q2" }} , 
 	{ "name": "x_address3", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "x", "role": "address3" }} , 
 	{ "name": "x_ce3", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x", "role": "ce3" }} , 
 	{ "name": "x_q3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x", "role": "q3" }} , 
 	{ "name": "y_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "y", "role": "address0" }} , 
 	{ "name": "y_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "ce0" }} , 
 	{ "name": "y_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "we0" }} , 
 	{ "name": "y_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "y", "role": "d0" }} , 
 	{ "name": "grp_fu_857_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_857_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_857_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_857_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_857_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "grp_fu_857_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_857_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_857_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_857_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_857_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_861_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_861_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_861_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_861_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_861_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "grp_fu_861_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_861_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_861_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_861_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_861_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_865_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_865_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_865_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_865_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_865_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "grp_fu_865_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_865_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_865_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_865_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_865_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_869_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_869_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_869_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_869_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_869_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "grp_fu_869_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_869_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_869_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_869_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_869_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	maxpool2d_1 {
		x {Type I LastRead 3 FirstWrite -1}
		y {Type O LastRead -1 FirstWrite 12}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "797", "Max" : "797"}
	, {"Name" : "Interval", "Min" : "797", "Max" : "797"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	x { ap_memory {  { x_address0 mem_address 1 12 }  { x_ce0 mem_ce 1 1 }  { x_q0 mem_dout 0 32 }  { x_address1 MemPortADDR2 1 12 }  { x_ce1 MemPortCE2 1 1 }  { x_q1 MemPortDOUT2 0 32 }  { x_address2 MemPortADDR2 1 12 }  { x_ce2 MemPortCE2 1 1 }  { x_q2 MemPortDOUT2 0 32 }  { x_address3 MemPortADDR2 1 12 }  { x_ce3 MemPortCE2 1 1 }  { x_q3 MemPortDOUT2 0 32 } } }
	y { ap_memory {  { y_address0 mem_address 1 10 }  { y_ce0 mem_ce 1 1 }  { y_we0 mem_we 1 1 }  { y_d0 mem_din 1 32 } } }
}
