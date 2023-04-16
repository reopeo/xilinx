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
	{ weight0 int 32 regular {axi_slave 0}  }
	{ bias0 int 32 regular {axi_slave 0}  }
	{ weight1 int 32 regular {axi_slave 0}  }
	{ bias1 int 32 regular {axi_slave 0}  }
	{ weight2 int 32 regular {axi_slave 0}  }
	{ bias2 int 32 regular {axi_slave 0}  }
	{ weight3 int 32 regular {axi_slave 0}  }
	{ bias3 int 32 regular {axi_slave 0}  }
	{ y int 32 regular {axi_slave 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "x", "interface" : "axi_slave", "bundle":"control","type":"ap_memory","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":4096}, "offset_end" : {"in":8191}} , 
 	{ "Name" : "weight0", "interface" : "axi_slave", "bundle":"control","type":"ap_memory","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":256}, "offset_end" : {"in":511}} , 
 	{ "Name" : "bias0", "interface" : "axi_slave", "bundle":"control","type":"ap_memory","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":31}} , 
 	{ "Name" : "weight1", "interface" : "axi_slave", "bundle":"control","type":"ap_memory","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":2048}, "offset_end" : {"in":4095}} , 
 	{ "Name" : "bias1", "interface" : "axi_slave", "bundle":"control","type":"ap_memory","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":32}, "offset_end" : {"in":63}} , 
 	{ "Name" : "weight2", "interface" : "axi_slave", "bundle":"control","type":"ap_memory","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":65536}, "offset_end" : {"in":131071}} , 
 	{ "Name" : "bias2", "interface" : "axi_slave", "bundle":"control","type":"ap_memory","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":128}, "offset_end" : {"in":255}} , 
 	{ "Name" : "weight3", "interface" : "axi_slave", "bundle":"control","type":"ap_memory","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":8192}, "offset_end" : {"in":10239}} , 
 	{ "Name" : "bias3", "interface" : "axi_slave", "bundle":"control","type":"ap_memory","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":64}, "offset_end" : {"in":127}} , 
 	{ "Name" : "y", "interface" : "axi_slave", "bundle":"control","type":"ap_memory","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":512}, "offset_end" : {"out":575}} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 17 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 17 signal -1 } 
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
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"cnn_top","role":"start","value":"0","valid_bit":"0"},{"name":"cnn_top","role":"continue","value":"0","valid_bit":"4"},{"name":"cnn_top","role":"auto_start","value":"0","valid_bit":"7"},{"name":"bias0","role":"data","value":"16"},{"name":"bias1","role":"data","value":"32"},{"name":"bias3","role":"data","value":"64"},{"name":"bias2","role":"data","value":"128"},{"name":"weight0","role":"data","value":"256"},{"name":"weight1","role":"data","value":"2048"},{"name":"x","role":"data","value":"4096"},{"name":"weight3","role":"data","value":"8192"},{"name":"weight2","role":"data","value":"65536"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"cnn_top","role":"start","value":"0","valid_bit":"0"},{"name":"cnn_top","role":"done","value":"0","valid_bit":"1"},{"name":"cnn_top","role":"idle","value":"0","valid_bit":"2"},{"name":"cnn_top","role":"ready","value":"0","valid_bit":"3"},{"name":"cnn_top","role":"auto_start","value":"0","valid_bit":"7"},{"name":"y","role":"data","value":"512"}] },
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "11", "13", "15", "17", "19", "21", "24", "26", "28", "29", "30", "31", "32", "33", "34", "35"],
		"CDFG" : "cnn_top",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "166647", "EstimateLatencyMax" : "166647",
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
					{"ID" : "9", "SubInstance" : "grp_conv2d_1_fu_447", "Port" : "x", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weight0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_conv2d_1_fu_447", "Port" : "weight0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "bias0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_conv2d_1_fu_447", "Port" : "bias0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weight1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_conv2d_2_fu_471", "Port" : "weight1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "bias1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_conv2d_2_fu_471", "Port" : "bias1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "weight2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "grp_cnn_top_Pipeline_VITIS_LOOP_73_1_VITIS_LOOP_76_2_fu_493", "Port" : "weight2", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "bias2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "grp_cnn_top_Pipeline_VITIS_LOOP_73_1_VITIS_LOOP_76_2_fu_493", "Port" : "bias2", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "weight3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_cnn_top_Pipeline_VITIS_LOOP_73_1_fu_509", "Port" : "weight3", "Inst_start_state" : "33", "Inst_end_state" : "34"}]},
			{"Name" : "bias3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_cnn_top_Pipeline_VITIS_LOOP_73_1_fu_509", "Port" : "bias3", "Inst_start_state" : "33", "Inst_end_state" : "34"}]},
			{"Name" : "y", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_cnn_top_Pipeline_VITIS_LOOP_73_1_fu_509", "Port" : "y", "Inst_start_state" : "33", "Inst_end_state" : "34"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vla1_i_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vla42_i_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vla73_i_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vla104_i_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vla135_i_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vla166_i_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_assign_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_assign_2_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_1_fu_447", "Parent" : "0", "Child" : ["10"],
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
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_1_fu_447.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_cnn_top_Pipeline_VITIS_LOOP_110_1_fu_459", "Parent" : "0", "Child" : ["12"],
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
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_top_Pipeline_VITIS_LOOP_110_1_fu_459.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_maxpool2d_1_fu_465", "Parent" : "0", "Child" : ["14"],
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
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_maxpool2d_1_fu_465.flow_control_loop_pipe_sequential_init_U", "Parent" : "13"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_2_fu_471", "Parent" : "0", "Child" : ["16"],
		"CDFG" : "conv2d_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "56639", "EstimateLatencyMax" : "56639",
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
				"LoopDec" : {"FSMBitwidth" : "36", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage9", "LastStateIter" : "ap_enable_reg_pp0_iter6", "LastStateBlock" : "ap_block_pp0_stage9_subdone", "QuitState" : "ap_ST_fsm_pp0_stage9", "QuitStateIter" : "ap_enable_reg_pp0_iter6", "QuitStateBlock" : "ap_block_pp0_stage9_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv2d_2_fu_471.flow_control_loop_pipe_sequential_init_U", "Parent" : "15"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_cnn_top_Pipeline_VITIS_LOOP_110_14_fu_481", "Parent" : "0", "Child" : ["18"],
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
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_top_Pipeline_VITIS_LOOP_110_14_fu_481.flow_control_loop_pipe_sequential_init_U", "Parent" : "17"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_maxpool2d_fu_487", "Parent" : "0", "Child" : ["20"],
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
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_maxpool2d_fu_487.flow_control_loop_pipe_sequential_init_U", "Parent" : "19"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_cnn_top_Pipeline_VITIS_LOOP_73_1_VITIS_LOOP_76_2_fu_493", "Parent" : "0", "Child" : ["22", "23"],
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
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_top_Pipeline_VITIS_LOOP_73_1_VITIS_LOOP_76_2_fu_493.mac_muladd_6ns_9ns_9ns_14_4_1_U35", "Parent" : "21"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_top_Pipeline_VITIS_LOOP_73_1_VITIS_LOOP_76_2_fu_493.flow_control_loop_pipe_sequential_init_U", "Parent" : "21"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_cnn_top_Pipeline_VITIS_LOOP_110_15_fu_503", "Parent" : "0", "Child" : ["25"],
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
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_top_Pipeline_VITIS_LOOP_110_15_fu_503.flow_control_loop_pipe_sequential_init_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_cnn_top_Pipeline_VITIS_LOOP_73_1_fu_509", "Parent" : "0", "Child" : ["27"],
		"CDFG" : "cnn_top_Pipeline_VITIS_LOOP_73_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "461", "EstimateLatencyMax" : "461",
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
				"LoopDec" : {"FSMBitwidth" : "32", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage11", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage11_subdone", "QuitState" : "ap_ST_fsm_pp0_stage11", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage11_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_top_Pipeline_VITIS_LOOP_73_1_fu_509.flow_control_loop_pipe_sequential_init_U", "Parent" : "26"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U82", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U83", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U84", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U85", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U86", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U87", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U88", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	cnn_top {
		x {Type I LastRead 10 FirstWrite -1}
		weight0 {Type I LastRead 10 FirstWrite -1}
		bias0 {Type I LastRead 55 FirstWrite -1}
		weight1 {Type I LastRead 36 FirstWrite -1}
		bias1 {Type I LastRead 216 FirstWrite -1}
		weight2 {Type I LastRead 3 FirstWrite -1}
		bias2 {Type I LastRead 12 FirstWrite -1}
		weight3 {Type I LastRead 31 FirstWrite -1}
		bias3 {Type I LastRead 160 FirstWrite -1}
		y {Type O LastRead -1 FirstWrite 171}}
	conv2d_1 {
		x {Type I LastRead 10 FirstWrite -1}
		weight0 {Type I LastRead 10 FirstWrite -1}
		bias0 {Type I LastRead 55 FirstWrite -1}
		y {Type O LastRead -1 FirstWrite 67}}
	cnn_top_Pipeline_VITIS_LOOP_110_1 {
		vla1_i {Type I LastRead 0 FirstWrite -1}
		vla42_i {Type O LastRead -1 FirstWrite 4}}
	maxpool2d_1 {
		x {Type I LastRead 3 FirstWrite -1}
		y {Type O LastRead -1 FirstWrite 12}}
	conv2d_2 {
		x {Type I LastRead 19 FirstWrite -1}
		weight1 {Type I LastRead 36 FirstWrite -1}
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
		weight3 {Type I LastRead 31 FirstWrite -1}
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
	{"Name" : "Latency", "Min" : "166647", "Max" : "166647"}
	, {"Name" : "Interval", "Min" : "166648", "Max" : "166648"}
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
