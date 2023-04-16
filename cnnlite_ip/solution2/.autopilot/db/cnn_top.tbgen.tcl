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
	{ x int 32 regular {axi_slave 0}  }
	{ y int 32 regular {axi_slave 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "x", "interface" : "axi_slave", "bundle":"control","type":"ap_memory","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":4096}, "offset_end" : {"in":8191}} , 
 	{ "Name" : "y", "interface" : "axi_slave", "bundle":"control","type":"ap_memory","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":64}, "offset_end" : {"out":127}} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 13 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 13 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"cnn_top","role":"start","value":"0","valid_bit":"0"},{"name":"cnn_top","role":"continue","value":"0","valid_bit":"4"},{"name":"cnn_top","role":"auto_start","value":"0","valid_bit":"7"},{"name":"x","role":"data","value":"4096"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"cnn_top","role":"start","value":"0","valid_bit":"0"},{"name":"cnn_top","role":"done","value":"0","valid_bit":"1"},{"name":"cnn_top","role":"idle","value":"0","valid_bit":"2"},{"name":"cnn_top","role":"ready","value":"0","valid_bit":"3"},{"name":"cnn_top","role":"auto_start","value":"0","valid_bit":"7"},{"name":"y","role":"data","value":"64"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "13", "15", "17", "21", "23", "25", "30", "32", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105"],
		"CDFG" : "cnn_top",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "114862", "EstimateLatencyMax" : "114862",
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
					{"ID" : "9", "SubInstance" : "grp_conv2d_1_fu_429", "Port" : "x", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "y", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_cnn_top_Pipeline_VITIS_LOOP_2835_1_fu_489", "Port" : "y", "Inst_start_state" : "33", "Inst_end_state" : "34"}]},
			{"Name" : "weight0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_conv2d_1_fu_429", "Port" : "weight0_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "bias1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_conv2d_fu_451", "Port" : "bias1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "weight1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_conv2d_fu_451", "Port" : "weight1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "weight2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_cnn_top_Pipeline_VITIS_LOOP_2835_1_VITIS_LOOP_2838_2_fu_473", "Port" : "weight2", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "bias2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_cnn_top_Pipeline_VITIS_LOOP_2835_1_VITIS_LOOP_2838_2_fu_473", "Port" : "bias2", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "weight3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_cnn_top_Pipeline_VITIS_LOOP_2835_1_fu_489", "Port" : "weight3", "Inst_start_state" : "33", "Inst_end_state" : "34"}]},
			{"Name" : "bias3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_cnn_top_Pipeline_VITIS_LOOP_2835_1_fu_489", "Port" : "bias3", "Inst_start_state" : "33", "Inst_end_state" : "34"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vla1_i_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vla42_i_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vla73_i_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vla104_i_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vla135_i_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vla166_i_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_assign_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_assign_2_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_1_fu_429", "Parent" : "0", "Child" : ["10", "11"],
		"CDFG" : "conv2d_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "28485", "EstimateLatencyMax" : "28485",
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
					{"ID" : "11", "SubInstance" : "grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_187", "Port" : "x", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "y", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_187", "Port" : "y", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "weight0_0", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_2793_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_1_fu_429.weight0_0_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_1_fu_429.grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_187", "Parent" : "9", "Child" : ["12"],
		"CDFG" : "conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7117", "EstimateLatencyMax" : "7117",
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
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter7", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage5", "QuitStateIter" : "ap_enable_reg_pp0_iter6", "QuitStateBlock" : "ap_block_pp0_stage5_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_1_fu_429.grp_conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3_fu_187.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_cnn_top_Pipeline_VITIS_LOOP_2872_1_fu_439", "Parent" : "0", "Child" : ["14"],
		"CDFG" : "cnn_top_Pipeline_VITIS_LOOP_2872_1",
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
			{"Name" : "VITIS_LOOP_2872_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_top_Pipeline_VITIS_LOOP_2872_1_fu_439.flow_control_loop_pipe_sequential_init_U", "Parent" : "13"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_maxpool2d_1_fu_445", "Parent" : "0", "Child" : ["16"],
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
			{"Name" : "VITIS_LOOP_2848_1_VITIS_LOOP_2850_2_VITIS_LOOP_2852_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter12", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter12", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_maxpool2d_1_fu_445.flow_control_loop_pipe_sequential_init_U", "Parent" : "15"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_fu_451", "Parent" : "0", "Child" : ["18", "19", "20"],
		"CDFG" : "conv2d",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4931", "EstimateLatencyMax" : "4931",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "y", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "bias1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weight1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_2793_1_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter76", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter76", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_fu_451.bias1_U", "Parent" : "17"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_fu_451.weight1_U", "Parent" : "17"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_fu_451.flow_control_loop_pipe_sequential_init_U", "Parent" : "17"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_cnn_top_Pipeline_VITIS_LOOP_2872_14_fu_461", "Parent" : "0", "Child" : ["22"],
		"CDFG" : "cnn_top_Pipeline_VITIS_LOOP_2872_14",
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
			{"Name" : "VITIS_LOOP_2872_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_top_Pipeline_VITIS_LOOP_2872_14_fu_461.flow_control_loop_pipe_sequential_init_U", "Parent" : "21"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_maxpool2d_fu_467", "Parent" : "0", "Child" : ["24"],
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
			{"Name" : "VITIS_LOOP_2848_1_VITIS_LOOP_2850_2_VITIS_LOOP_2852_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter11", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter11", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_maxpool2d_fu_467.flow_control_loop_pipe_sequential_init_U", "Parent" : "23"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_cnn_top_Pipeline_VITIS_LOOP_2835_1_VITIS_LOOP_2838_2_fu_473", "Parent" : "0", "Child" : ["26", "27", "28", "29"],
		"CDFG" : "cnn_top_Pipeline_VITIS_LOOP_2835_1_VITIS_LOOP_2838_2",
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
			{"Name" : "x_assign", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "weight2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bias2", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_2835_1_VITIS_LOOP_2838_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_top_Pipeline_VITIS_LOOP_2835_1_VITIS_LOOP_2838_2_fu_473.weight2_U", "Parent" : "25"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_top_Pipeline_VITIS_LOOP_2835_1_VITIS_LOOP_2838_2_fu_473.bias2_U", "Parent" : "25"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_top_Pipeline_VITIS_LOOP_2835_1_VITIS_LOOP_2838_2_fu_473.mac_muladd_6ns_9ns_9ns_14_4_1_U72", "Parent" : "25"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_top_Pipeline_VITIS_LOOP_2835_1_VITIS_LOOP_2838_2_fu_473.flow_control_loop_pipe_sequential_init_U", "Parent" : "25"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_cnn_top_Pipeline_VITIS_LOOP_2872_15_fu_483", "Parent" : "0", "Child" : ["31"],
		"CDFG" : "cnn_top_Pipeline_VITIS_LOOP_2872_15",
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
			{"Name" : "VITIS_LOOP_2872_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_top_Pipeline_VITIS_LOOP_2872_15_fu_483.flow_control_loop_pipe_sequential_init_U", "Parent" : "30"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_cnn_top_Pipeline_VITIS_LOOP_2835_1_fu_489", "Parent" : "0", "Child" : ["33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75"],
		"CDFG" : "cnn_top_Pipeline_VITIS_LOOP_2835_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "182", "EstimateLatencyMax" : "182",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
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
			{"Name" : "y", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "weight3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bias3", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_2835_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter171", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter171", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_top_Pipeline_VITIS_LOOP_2835_1_fu_489.weight3_U", "Parent" : "32"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_top_Pipeline_VITIS_LOOP_2835_1_fu_489.bias3_U", "Parent" : "32"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_top_Pipeline_VITIS_LOOP_2835_1_fu_489.fadd_32ns_32ns_32_5_full_dsp_1_U94", "Parent" : "32"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_top_Pipeline_VITIS_LOOP_2835_1_fu_489.fadd_32ns_32ns_32_5_full_dsp_1_U95", "Parent" : "32"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_top_Pipeline_VITIS_LOOP_2835_1_fu_489.fadd_32ns_32ns_32_5_full_dsp_1_U96", "Parent" : "32"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_top_Pipeline_VITIS_LOOP_2835_1_fu_489.fadd_32ns_32ns_32_5_full_dsp_1_U97", "Parent" : "32"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_top_Pipeline_VITIS_LOOP_2835_1_fu_489.fadd_32ns_32ns_32_5_full_dsp_1_U98", "Parent" : "32"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_top_Pipeline_VITIS_LOOP_2835_1_fu_489.fadd_32ns_32ns_32_5_full_dsp_1_U99", "Parent" : "32"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_top_Pipeline_VITIS_LOOP_2835_1_fu_489.fadd_32ns_32ns_32_5_full_dsp_1_U100", "Parent" : "32"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_top_Pipeline_VITIS_LOOP_2835_1_fu_489.fadd_32ns_32ns_32_5_full_dsp_1_U101", "Parent" : "32"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_top_Pipeline_VITIS_LOOP_2835_1_fu_489.fadd_32ns_32ns_32_5_full_dsp_1_U102", "Parent" : "32"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_top_Pipeline_VITIS_LOOP_2835_1_fu_489.fadd_32ns_32ns_32_5_full_dsp_1_U103", "Parent" : "32"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_top_Pipeline_VITIS_LOOP_2835_1_fu_489.fadd_32ns_32ns_32_5_full_dsp_1_U104", "Parent" : "32"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_top_Pipeline_VITIS_LOOP_2835_1_fu_489.fadd_32ns_32ns_32_5_full_dsp_1_U105", "Parent" : "32"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_top_Pipeline_VITIS_LOOP_2835_1_fu_489.fadd_32ns_32ns_32_5_full_dsp_1_U106", "Parent" : "32"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_top_Pipeline_VITIS_LOOP_2835_1_fu_489.fadd_32ns_32ns_32_5_full_dsp_1_U107", "Parent" : "32"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_top_Pipeline_VITIS_LOOP_2835_1_fu_489.fadd_32ns_32ns_32_5_full_dsp_1_U108", "Parent" : "32"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_top_Pipeline_VITIS_LOOP_2835_1_fu_489.fadd_32ns_32ns_32_5_full_dsp_1_U109", "Parent" : "32"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_top_Pipeline_VITIS_LOOP_2835_1_fu_489.fadd_32ns_32ns_32_5_full_dsp_1_U110", "Parent" : "32"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_top_Pipeline_VITIS_LOOP_2835_1_fu_489.fadd_32ns_32ns_32_5_full_dsp_1_U111", "Parent" : "32"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_top_Pipeline_VITIS_LOOP_2835_1_fu_489.fadd_32ns_32ns_32_5_full_dsp_1_U112", "Parent" : "32"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_top_Pipeline_VITIS_LOOP_2835_1_fu_489.fadd_32ns_32ns_32_5_full_dsp_1_U113", "Parent" : "32"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_top_Pipeline_VITIS_LOOP_2835_1_fu_489.fmul_32ns_32ns_32_4_max_dsp_1_U114", "Parent" : "32"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_top_Pipeline_VITIS_LOOP_2835_1_fu_489.fmul_32ns_32ns_32_4_max_dsp_1_U115", "Parent" : "32"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_top_Pipeline_VITIS_LOOP_2835_1_fu_489.fmul_32ns_32ns_32_4_max_dsp_1_U116", "Parent" : "32"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_top_Pipeline_VITIS_LOOP_2835_1_fu_489.fmul_32ns_32ns_32_4_max_dsp_1_U117", "Parent" : "32"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_top_Pipeline_VITIS_LOOP_2835_1_fu_489.fmul_32ns_32ns_32_4_max_dsp_1_U118", "Parent" : "32"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_top_Pipeline_VITIS_LOOP_2835_1_fu_489.fmul_32ns_32ns_32_4_max_dsp_1_U119", "Parent" : "32"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_top_Pipeline_VITIS_LOOP_2835_1_fu_489.fmul_32ns_32ns_32_4_max_dsp_1_U120", "Parent" : "32"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_top_Pipeline_VITIS_LOOP_2835_1_fu_489.fmul_32ns_32ns_32_4_max_dsp_1_U121", "Parent" : "32"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_top_Pipeline_VITIS_LOOP_2835_1_fu_489.fmul_32ns_32ns_32_4_max_dsp_1_U122", "Parent" : "32"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_top_Pipeline_VITIS_LOOP_2835_1_fu_489.fmul_32ns_32ns_32_4_max_dsp_1_U123", "Parent" : "32"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_top_Pipeline_VITIS_LOOP_2835_1_fu_489.fmul_32ns_32ns_32_4_max_dsp_1_U124", "Parent" : "32"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_top_Pipeline_VITIS_LOOP_2835_1_fu_489.fmul_32ns_32ns_32_4_max_dsp_1_U125", "Parent" : "32"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_top_Pipeline_VITIS_LOOP_2835_1_fu_489.fmul_32ns_32ns_32_4_max_dsp_1_U126", "Parent" : "32"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_top_Pipeline_VITIS_LOOP_2835_1_fu_489.fmul_32ns_32ns_32_4_max_dsp_1_U127", "Parent" : "32"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_top_Pipeline_VITIS_LOOP_2835_1_fu_489.fmul_32ns_32ns_32_4_max_dsp_1_U128", "Parent" : "32"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_top_Pipeline_VITIS_LOOP_2835_1_fu_489.fmul_32ns_32ns_32_4_max_dsp_1_U129", "Parent" : "32"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_top_Pipeline_VITIS_LOOP_2835_1_fu_489.fmul_32ns_32ns_32_4_max_dsp_1_U130", "Parent" : "32"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_top_Pipeline_VITIS_LOOP_2835_1_fu_489.fmul_32ns_32ns_32_4_max_dsp_1_U131", "Parent" : "32"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_top_Pipeline_VITIS_LOOP_2835_1_fu_489.fmul_32ns_32ns_32_4_max_dsp_1_U132", "Parent" : "32"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_top_Pipeline_VITIS_LOOP_2835_1_fu_489.fmul_32ns_32ns_32_4_max_dsp_1_U133", "Parent" : "32"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_top_Pipeline_VITIS_LOOP_2835_1_fu_489.flow_control_loop_pipe_sequential_init_U", "Parent" : "32"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U181", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U182", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U183", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U184", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U185", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U186", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U187", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U188", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U189", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U190", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U191", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U192", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U193", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U194", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U195", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U196", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U197", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U198", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U199", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U200", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U201", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U202", "Parent" : "0"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U203", "Parent" : "0"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U204", "Parent" : "0"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U205", "Parent" : "0"},
	{"ID" : "102", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U206", "Parent" : "0"},
	{"ID" : "103", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U207", "Parent" : "0"},
	{"ID" : "104", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U208", "Parent" : "0"},
	{"ID" : "105", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U209", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	cnn_top {
		x {Type I LastRead 9 FirstWrite -1}
		y {Type O LastRead -1 FirstWrite 171}
		weight0_0 {Type I LastRead -1 FirstWrite -1}
		bias1 {Type I LastRead -1 FirstWrite -1}
		weight1 {Type I LastRead -1 FirstWrite -1}
		weight2 {Type I LastRead -1 FirstWrite -1}
		bias2 {Type I LastRead -1 FirstWrite -1}
		weight3 {Type I LastRead -1 FirstWrite -1}
		bias3 {Type I LastRead -1 FirstWrite -1}}
	conv2d_1 {
		x {Type I LastRead 9 FirstWrite -1}
		y {Type O LastRead -1 FirstWrite 65}
		weight0_0 {Type I LastRead -1 FirstWrite -1}}
	conv2d_1_Pipeline_VITIS_LOOP_2795_2_VITIS_LOOP_2797_3 {
		empty {Type I LastRead 0 FirstWrite -1}
		x {Type I LastRead 9 FirstWrite -1}
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
		y {Type O LastRead -1 FirstWrite 65}}
	cnn_top_Pipeline_VITIS_LOOP_2872_1 {
		vla1_i {Type I LastRead 0 FirstWrite -1}
		vla42_i {Type O LastRead -1 FirstWrite 4}}
	maxpool2d_1 {
		x {Type I LastRead 3 FirstWrite -1}
		y {Type O LastRead -1 FirstWrite 12}}
	conv2d {
		x {Type I LastRead 5 FirstWrite -1}
		y {Type O LastRead -1 FirstWrite 228}
		bias1 {Type I LastRead -1 FirstWrite -1}
		weight1 {Type I LastRead -1 FirstWrite -1}}
	cnn_top_Pipeline_VITIS_LOOP_2872_14 {
		vla104_i {Type I LastRead 0 FirstWrite -1}
		vla135_i {Type O LastRead -1 FirstWrite 4}}
	maxpool2d {
		x {Type I LastRead 2 FirstWrite -1}
		y {Type O LastRead -1 FirstWrite 11}}
	cnn_top_Pipeline_VITIS_LOOP_2835_1_VITIS_LOOP_2838_2 {
		vla166_i {Type I LastRead 0 FirstWrite -1}
		x_assign {Type O LastRead -1 FirstWrite 19}
		weight2 {Type I LastRead -1 FirstWrite -1}
		bias2 {Type I LastRead -1 FirstWrite -1}}
	cnn_top_Pipeline_VITIS_LOOP_2872_15 {
		x_assign {Type I LastRead 0 FirstWrite -1}
		x_assign_2 {Type O LastRead -1 FirstWrite 4}}
	cnn_top_Pipeline_VITIS_LOOP_2835_1 {
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
		y {Type O LastRead -1 FirstWrite 171}
		weight3 {Type I LastRead -1 FirstWrite -1}
		bias3 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "114862", "Max" : "114862"}
	, {"Name" : "Interval", "Min" : "114863", "Max" : "114863"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
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