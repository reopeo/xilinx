// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Sun Dec 18 20:53:29 2022
// Host        : FRONTIER running 64-bit Ubuntu 22.04.1 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_muladd_0_0_sim_netlist.v
// Design      : design_1_muladd_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_muladd_0_0,muladd,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "muladd,Vivado 2022.2" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (s_axi_control_AWADDR,
    s_axi_control_AWVALID,
    s_axi_control_AWREADY,
    s_axi_control_WDATA,
    s_axi_control_WSTRB,
    s_axi_control_WVALID,
    s_axi_control_WREADY,
    s_axi_control_BRESP,
    s_axi_control_BVALID,
    s_axi_control_BREADY,
    s_axi_control_ARADDR,
    s_axi_control_ARVALID,
    s_axi_control_ARREADY,
    s_axi_control_RDATA,
    s_axi_control_RRESP,
    s_axi_control_RVALID,
    s_axi_control_RREADY,
    ap_clk,
    ap_rst_n,
    interrupt);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWADDR" *) input [7:0]s_axi_control_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWVALID" *) input s_axi_control_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWREADY" *) output s_axi_control_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WDATA" *) input [31:0]s_axi_control_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WSTRB" *) input [3:0]s_axi_control_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WVALID" *) input s_axi_control_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WREADY" *) output s_axi_control_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BRESP" *) output [1:0]s_axi_control_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BVALID" *) output s_axi_control_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BREADY" *) input s_axi_control_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARADDR" *) input [7:0]s_axi_control_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARVALID" *) input s_axi_control_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARREADY" *) output s_axi_control_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RDATA" *) output [31:0]s_axi_control_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RRESP" *) output [1:0]s_axi_control_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RVALID" *) output s_axi_control_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_control, ADDR_WIDTH 8, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_control_RREADY;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_control, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output interrupt;

  wire \<const0> ;
  wire ap_clk;
  wire ap_rst_n;
  wire interrupt;
  wire [7:0]s_axi_control_ARADDR;
  wire s_axi_control_ARREADY;
  wire s_axi_control_ARVALID;
  wire [7:0]s_axi_control_AWADDR;
  wire s_axi_control_AWREADY;
  wire s_axi_control_AWVALID;
  wire s_axi_control_BREADY;
  wire s_axi_control_BVALID;
  wire [31:0]s_axi_control_RDATA;
  wire s_axi_control_RREADY;
  wire s_axi_control_RVALID;
  wire [31:0]s_axi_control_WDATA;
  wire s_axi_control_WREADY;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire [1:0]NLW_inst_s_axi_control_BRESP_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_control_RRESP_UNCONNECTED;

  assign s_axi_control_BRESP[1] = \<const0> ;
  assign s_axi_control_BRESP[0] = \<const0> ;
  assign s_axi_control_RRESP[1] = \<const0> ;
  assign s_axi_control_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_S_AXI_CONTROL_ADDR_WIDTH = "8" *) 
  (* C_S_AXI_CONTROL_DATA_WIDTH = "32" *) 
  (* C_S_AXI_CONTROL_WSTRB_WIDTH = "4" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_S_AXI_WSTRB_WIDTH = "4" *) 
  (* SDX_KERNEL = "true" *) 
  (* SDX_KERNEL_SYNTH_INST = "inst" *) 
  (* SDX_KERNEL_TYPE = "hls" *) 
  (* ap_ST_fsm_pp0_stage0 = "1'b1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_muladd inst
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .interrupt(interrupt),
        .s_axi_control_ARADDR(s_axi_control_ARADDR),
        .s_axi_control_ARREADY(s_axi_control_ARREADY),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_AWADDR(s_axi_control_AWADDR),
        .s_axi_control_AWREADY(s_axi_control_AWREADY),
        .s_axi_control_AWVALID(s_axi_control_AWVALID),
        .s_axi_control_BREADY(s_axi_control_BREADY),
        .s_axi_control_BRESP(NLW_inst_s_axi_control_BRESP_UNCONNECTED[1:0]),
        .s_axi_control_BVALID(s_axi_control_BVALID),
        .s_axi_control_RDATA(s_axi_control_RDATA),
        .s_axi_control_RREADY(s_axi_control_RREADY),
        .s_axi_control_RRESP(NLW_inst_s_axi_control_RRESP_UNCONNECTED[1:0]),
        .s_axi_control_RVALID(s_axi_control_RVALID),
        .s_axi_control_WDATA(s_axi_control_WDATA),
        .s_axi_control_WREADY(s_axi_control_WREADY),
        .s_axi_control_WSTRB(s_axi_control_WSTRB),
        .s_axi_control_WVALID(s_axi_control_WVALID));
endmodule

(* C_S_AXI_CONTROL_ADDR_WIDTH = "8" *) (* C_S_AXI_CONTROL_DATA_WIDTH = "32" *) (* C_S_AXI_CONTROL_WSTRB_WIDTH = "4" *) 
(* C_S_AXI_DATA_WIDTH = "32" *) (* C_S_AXI_WSTRB_WIDTH = "4" *) (* ap_ST_fsm_pp0_stage0 = "1'b1" *) 
(* hls_module = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_muladd
   (ap_clk,
    ap_rst_n,
    s_axi_control_AWVALID,
    s_axi_control_AWREADY,
    s_axi_control_AWADDR,
    s_axi_control_WVALID,
    s_axi_control_WREADY,
    s_axi_control_WDATA,
    s_axi_control_WSTRB,
    s_axi_control_ARVALID,
    s_axi_control_ARREADY,
    s_axi_control_ARADDR,
    s_axi_control_RVALID,
    s_axi_control_RREADY,
    s_axi_control_RDATA,
    s_axi_control_RRESP,
    s_axi_control_BVALID,
    s_axi_control_BREADY,
    s_axi_control_BRESP,
    interrupt);
  input ap_clk;
  input ap_rst_n;
  input s_axi_control_AWVALID;
  output s_axi_control_AWREADY;
  input [7:0]s_axi_control_AWADDR;
  input s_axi_control_WVALID;
  output s_axi_control_WREADY;
  input [31:0]s_axi_control_WDATA;
  input [3:0]s_axi_control_WSTRB;
  input s_axi_control_ARVALID;
  output s_axi_control_ARREADY;
  input [7:0]s_axi_control_ARADDR;
  output s_axi_control_RVALID;
  input s_axi_control_RREADY;
  output [31:0]s_axi_control_RDATA;
  output [1:0]s_axi_control_RRESP;
  output s_axi_control_BVALID;
  input s_axi_control_BREADY;
  output [1:0]s_axi_control_BRESP;
  output interrupt;

  wire \<const0> ;
  wire ap_clk;
  wire ap_condition_151;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter2;
  wire ap_enable_reg_pp0_iter3;
  wire ap_enable_reg_pp0_iter4;
  wire ap_loop_exit_ready;
  wire ap_loop_exit_ready_pp0_iter2_reg_reg_srl2_n_0;
  wire ap_loop_exit_ready_pp0_iter3_reg;
  wire ap_loop_init;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire ap_start;
  wire control_s_axi_U_n_10;
  wire control_s_axi_U_n_11;
  wire control_s_axi_U_n_12;
  wire control_s_axi_U_n_45;
  wire control_s_axi_U_n_46;
  wire control_s_axi_U_n_47;
  wire control_s_axi_U_n_48;
  wire control_s_axi_U_n_49;
  wire control_s_axi_U_n_50;
  wire control_s_axi_U_n_51;
  wire control_s_axi_U_n_52;
  wire control_s_axi_U_n_53;
  wire control_s_axi_U_n_54;
  wire control_s_axi_U_n_55;
  wire control_s_axi_U_n_56;
  wire control_s_axi_U_n_57;
  wire control_s_axi_U_n_58;
  wire control_s_axi_U_n_59;
  wire control_s_axi_U_n_60;
  wire control_s_axi_U_n_61;
  wire control_s_axi_U_n_62;
  wire control_s_axi_U_n_63;
  wire control_s_axi_U_n_64;
  wire control_s_axi_U_n_65;
  wire control_s_axi_U_n_66;
  wire control_s_axi_U_n_67;
  wire control_s_axi_U_n_68;
  wire control_s_axi_U_n_69;
  wire control_s_axi_U_n_70;
  wire control_s_axi_U_n_71;
  wire control_s_axi_U_n_72;
  wire control_s_axi_U_n_73;
  wire control_s_axi_U_n_74;
  wire control_s_axi_U_n_75;
  wire control_s_axi_U_n_76;
  wire control_s_axi_U_n_9;
  wire [31:16]dout_reg;
  wire flow_control_loop_pipe_U_n_1;
  wire flow_control_loop_pipe_U_n_2;
  wire flow_control_loop_pipe_U_n_3;
  wire flow_control_loop_pipe_U_n_4;
  wire flow_control_loop_pipe_U_n_5;
  wire flow_control_loop_pipe_U_n_9;
  wire i_fu_62;
  wire \i_fu_62_reg_n_0_[0] ;
  wire \i_fu_62_reg_n_0_[1] ;
  wire \i_fu_62_reg_n_0_[2] ;
  wire \i_fu_62_reg_n_0_[3] ;
  wire \i_fu_62_reg_n_0_[4] ;
  wire icmp_ln8_fu_105_p2;
  wire interrupt;
  wire mul_32s_32s_32_2_1_U1_n_16;
  wire mul_32s_32s_32_2_1_U1_n_17;
  wire mul_32s_32s_32_2_1_U1_n_18;
  wire mul_32s_32s_32_2_1_U1_n_19;
  wire mul_32s_32s_32_2_1_U1_n_20;
  wire mul_32s_32s_32_2_1_U1_n_21;
  wire mul_32s_32s_32_2_1_U1_n_22;
  wire mul_32s_32s_32_2_1_U1_n_23;
  wire mul_32s_32s_32_2_1_U1_n_24;
  wire mul_32s_32s_32_2_1_U1_n_25;
  wire mul_32s_32s_32_2_1_U1_n_26;
  wire mul_32s_32s_32_2_1_U1_n_27;
  wire mul_32s_32s_32_2_1_U1_n_28;
  wire mul_32s_32s_32_2_1_U1_n_29;
  wire mul_32s_32s_32_2_1_U1_n_30;
  wire mul_32s_32s_32_2_1_U1_n_31;
  wire [31:0]mul_ln10_reg_187;
  wire [31:0]q00;
  wire [7:0]s_axi_control_ARADDR;
  wire s_axi_control_ARREADY;
  wire s_axi_control_ARVALID;
  wire [7:0]s_axi_control_AWADDR;
  wire s_axi_control_AWREADY;
  wire s_axi_control_AWVALID;
  wire s_axi_control_BREADY;
  wire s_axi_control_BVALID;
  wire [31:0]s_axi_control_RDATA;
  wire s_axi_control_RREADY;
  wire s_axi_control_RVALID;
  wire [31:0]s_axi_control_WDATA;
  wire s_axi_control_WREADY;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire \temp_fu_58[0]_i_2_n_0 ;
  wire \temp_fu_58[12]_i_2_n_0 ;
  wire \temp_fu_58[12]_i_3_n_0 ;
  wire \temp_fu_58[12]_i_4_n_0 ;
  wire \temp_fu_58[12]_i_5_n_0 ;
  wire \temp_fu_58[16]_i_2_n_0 ;
  wire \temp_fu_58[16]_i_3_n_0 ;
  wire \temp_fu_58[16]_i_4_n_0 ;
  wire \temp_fu_58[16]_i_5_n_0 ;
  wire \temp_fu_58[20]_i_2_n_0 ;
  wire \temp_fu_58[20]_i_3_n_0 ;
  wire \temp_fu_58[20]_i_4_n_0 ;
  wire \temp_fu_58[20]_i_5_n_0 ;
  wire \temp_fu_58[24]_i_2_n_0 ;
  wire \temp_fu_58[24]_i_3_n_0 ;
  wire \temp_fu_58[24]_i_4_n_0 ;
  wire \temp_fu_58[24]_i_5_n_0 ;
  wire \temp_fu_58[28]_i_2_n_0 ;
  wire \temp_fu_58[28]_i_3_n_0 ;
  wire \temp_fu_58[28]_i_4_n_0 ;
  wire \temp_fu_58[28]_i_5_n_0 ;
  wire \temp_fu_58[4]_i_2_n_0 ;
  wire \temp_fu_58[4]_i_3_n_0 ;
  wire \temp_fu_58[4]_i_4_n_0 ;
  wire \temp_fu_58[4]_i_5_n_0 ;
  wire \temp_fu_58[8]_i_2_n_0 ;
  wire \temp_fu_58[8]_i_3_n_0 ;
  wire \temp_fu_58[8]_i_4_n_0 ;
  wire \temp_fu_58[8]_i_5_n_0 ;
  wire [31:0]temp_fu_58_reg;
  wire \temp_fu_58_reg[12]_i_1_n_0 ;
  wire \temp_fu_58_reg[12]_i_1_n_1 ;
  wire \temp_fu_58_reg[12]_i_1_n_2 ;
  wire \temp_fu_58_reg[12]_i_1_n_3 ;
  wire \temp_fu_58_reg[12]_i_1_n_4 ;
  wire \temp_fu_58_reg[12]_i_1_n_5 ;
  wire \temp_fu_58_reg[12]_i_1_n_6 ;
  wire \temp_fu_58_reg[12]_i_1_n_7 ;
  wire \temp_fu_58_reg[16]_i_1_n_0 ;
  wire \temp_fu_58_reg[16]_i_1_n_1 ;
  wire \temp_fu_58_reg[16]_i_1_n_2 ;
  wire \temp_fu_58_reg[16]_i_1_n_3 ;
  wire \temp_fu_58_reg[16]_i_1_n_4 ;
  wire \temp_fu_58_reg[16]_i_1_n_5 ;
  wire \temp_fu_58_reg[16]_i_1_n_6 ;
  wire \temp_fu_58_reg[16]_i_1_n_7 ;
  wire \temp_fu_58_reg[20]_i_1_n_0 ;
  wire \temp_fu_58_reg[20]_i_1_n_1 ;
  wire \temp_fu_58_reg[20]_i_1_n_2 ;
  wire \temp_fu_58_reg[20]_i_1_n_3 ;
  wire \temp_fu_58_reg[20]_i_1_n_4 ;
  wire \temp_fu_58_reg[20]_i_1_n_5 ;
  wire \temp_fu_58_reg[20]_i_1_n_6 ;
  wire \temp_fu_58_reg[20]_i_1_n_7 ;
  wire \temp_fu_58_reg[24]_i_1_n_0 ;
  wire \temp_fu_58_reg[24]_i_1_n_1 ;
  wire \temp_fu_58_reg[24]_i_1_n_2 ;
  wire \temp_fu_58_reg[24]_i_1_n_3 ;
  wire \temp_fu_58_reg[24]_i_1_n_4 ;
  wire \temp_fu_58_reg[24]_i_1_n_5 ;
  wire \temp_fu_58_reg[24]_i_1_n_6 ;
  wire \temp_fu_58_reg[24]_i_1_n_7 ;
  wire \temp_fu_58_reg[28]_i_1_n_1 ;
  wire \temp_fu_58_reg[28]_i_1_n_2 ;
  wire \temp_fu_58_reg[28]_i_1_n_3 ;
  wire \temp_fu_58_reg[28]_i_1_n_4 ;
  wire \temp_fu_58_reg[28]_i_1_n_5 ;
  wire \temp_fu_58_reg[28]_i_1_n_6 ;
  wire \temp_fu_58_reg[28]_i_1_n_7 ;
  wire \temp_fu_58_reg[4]_i_1_n_0 ;
  wire \temp_fu_58_reg[4]_i_1_n_1 ;
  wire \temp_fu_58_reg[4]_i_1_n_2 ;
  wire \temp_fu_58_reg[4]_i_1_n_3 ;
  wire \temp_fu_58_reg[4]_i_1_n_4 ;
  wire \temp_fu_58_reg[4]_i_1_n_5 ;
  wire \temp_fu_58_reg[4]_i_1_n_6 ;
  wire \temp_fu_58_reg[4]_i_1_n_7 ;
  wire \temp_fu_58_reg[8]_i_1_n_0 ;
  wire \temp_fu_58_reg[8]_i_1_n_1 ;
  wire \temp_fu_58_reg[8]_i_1_n_2 ;
  wire \temp_fu_58_reg[8]_i_1_n_3 ;
  wire \temp_fu_58_reg[8]_i_1_n_4 ;
  wire \temp_fu_58_reg[8]_i_1_n_5 ;
  wire \temp_fu_58_reg[8]_i_1_n_6 ;
  wire \temp_fu_58_reg[8]_i_1_n_7 ;
  wire [3:3]\NLW_temp_fu_58_reg[28]_i_1_CO_UNCONNECTED ;

  assign s_axi_control_BRESP[1] = \<const0> ;
  assign s_axi_control_BRESP[0] = \<const0> ;
  assign s_axi_control_RRESP[1] = \<const0> ;
  assign s_axi_control_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(flow_control_loop_pipe_U_n_9),
        .Q(ap_enable_reg_pp0_iter1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter2_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1),
        .Q(ap_enable_reg_pp0_iter2),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter3_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter2),
        .Q(ap_enable_reg_pp0_iter3),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter4_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter3),
        .Q(ap_enable_reg_pp0_iter4),
        .R(ap_rst_n_inv));
  (* srl_name = "inst/ap_loop_exit_ready_pp0_iter2_reg_reg_srl2" *) 
  SRL16E ap_loop_exit_ready_pp0_iter2_reg_reg_srl2
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(ap_loop_exit_ready),
        .Q(ap_loop_exit_ready_pp0_iter2_reg_reg_srl2_n_0));
  FDRE ap_loop_exit_ready_pp0_iter3_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_exit_ready_pp0_iter2_reg_reg_srl2_n_0),
        .Q(ap_loop_exit_ready_pp0_iter3_reg),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_muladd_control_s_axi control_s_axi_U
       (.CO(control_s_axi_U_n_9),
        .E(ap_loop_exit_ready_pp0_iter3_reg),
        .\FSM_onehot_rstate_reg[1]_0 (s_axi_control_ARREADY),
        .\FSM_onehot_wstate_reg[1]_0 (s_axi_control_AWREADY),
        .O({control_s_axi_U_n_10,control_s_axi_U_n_11,control_s_axi_U_n_12}),
        .Q({\i_fu_62_reg_n_0_[3] ,\i_fu_62_reg_n_0_[2] ,\i_fu_62_reg_n_0_[1] ,\i_fu_62_reg_n_0_[0] }),
        .SR(ap_rst_n_inv),
        .ap_clk(ap_clk),
        .ap_clk_0(q00),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_enable_reg_pp0_iter2(ap_enable_reg_pp0_iter2),
        .ap_enable_reg_pp0_iter3(ap_enable_reg_pp0_iter3),
        .ap_enable_reg_pp0_iter4(ap_enable_reg_pp0_iter4),
        .ap_loop_exit_ready(ap_loop_exit_ready),
        .ap_loop_init(ap_loop_init),
        .ap_rst_n(ap_rst_n),
        .ap_start(ap_start),
        .icmp_ln8_fu_105_p2(icmp_ln8_fu_105_p2),
        .\int_ap_return_reg[31]_0 (mul_ln10_reg_187),
        .interrupt(interrupt),
        .out(temp_fu_58_reg),
        .q00({control_s_axi_U_n_45,control_s_axi_U_n_46,control_s_axi_U_n_47,control_s_axi_U_n_48,control_s_axi_U_n_49,control_s_axi_U_n_50,control_s_axi_U_n_51,control_s_axi_U_n_52,control_s_axi_U_n_53,control_s_axi_U_n_54,control_s_axi_U_n_55,control_s_axi_U_n_56,control_s_axi_U_n_57,control_s_axi_U_n_58,control_s_axi_U_n_59,control_s_axi_U_n_60,control_s_axi_U_n_61,control_s_axi_U_n_62,control_s_axi_U_n_63,control_s_axi_U_n_64,control_s_axi_U_n_65,control_s_axi_U_n_66,control_s_axi_U_n_67,control_s_axi_U_n_68,control_s_axi_U_n_69,control_s_axi_U_n_70,control_s_axi_U_n_71,control_s_axi_U_n_72,control_s_axi_U_n_73,control_s_axi_U_n_74,control_s_axi_U_n_75,control_s_axi_U_n_76}),
        .s_axi_control_ARADDR(s_axi_control_ARADDR),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_AWADDR(s_axi_control_AWADDR),
        .s_axi_control_AWVALID(s_axi_control_AWVALID),
        .s_axi_control_BREADY(s_axi_control_BREADY),
        .s_axi_control_BVALID(s_axi_control_BVALID),
        .s_axi_control_RDATA(s_axi_control_RDATA),
        .s_axi_control_RREADY(s_axi_control_RREADY),
        .s_axi_control_RVALID(s_axi_control_RVALID),
        .s_axi_control_WDATA(s_axi_control_WDATA),
        .s_axi_control_WREADY(s_axi_control_WREADY),
        .s_axi_control_WSTRB(s_axi_control_WSTRB),
        .s_axi_control_WVALID(s_axi_control_WVALID));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_muladd_flow_control_loop_pipe flow_control_loop_pipe_U
       (.D({flow_control_loop_pipe_U_n_1,flow_control_loop_pipe_U_n_2,flow_control_loop_pipe_U_n_3,flow_control_loop_pipe_U_n_4,flow_control_loop_pipe_U_n_5}),
        .E(i_fu_62),
        .Q({\i_fu_62_reg_n_0_[4] ,\i_fu_62_reg_n_0_[3] ,\i_fu_62_reg_n_0_[2] ,\i_fu_62_reg_n_0_[1] ,\i_fu_62_reg_n_0_[0] }),
        .ap_clk(ap_clk),
        .ap_condition_151(ap_condition_151),
        .ap_loop_init(ap_loop_init),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_0(flow_control_loop_pipe_U_n_9),
        .ap_start(ap_start),
        .icmp_ln8_fu_105_p2(icmp_ln8_fu_105_p2));
  FDRE \i_fu_62_reg[0] 
       (.C(ap_clk),
        .CE(i_fu_62),
        .D(flow_control_loop_pipe_U_n_5),
        .Q(\i_fu_62_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \i_fu_62_reg[1] 
       (.C(ap_clk),
        .CE(i_fu_62),
        .D(flow_control_loop_pipe_U_n_4),
        .Q(\i_fu_62_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \i_fu_62_reg[2] 
       (.C(ap_clk),
        .CE(i_fu_62),
        .D(flow_control_loop_pipe_U_n_3),
        .Q(\i_fu_62_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \i_fu_62_reg[3] 
       (.C(ap_clk),
        .CE(i_fu_62),
        .D(flow_control_loop_pipe_U_n_2),
        .Q(\i_fu_62_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \i_fu_62_reg[4] 
       (.C(ap_clk),
        .CE(i_fu_62),
        .D(flow_control_loop_pipe_U_n_1),
        .Q(\i_fu_62_reg_n_0_[4] ),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_muladd_mul_32s_32s_32_2_1 mul_32s_32s_32_2_1_U1
       (.D({dout_reg,mul_32s_32s_32_2_1_U1_n_16,mul_32s_32s_32_2_1_U1_n_17,mul_32s_32s_32_2_1_U1_n_18,mul_32s_32s_32_2_1_U1_n_19,mul_32s_32s_32_2_1_U1_n_20,mul_32s_32s_32_2_1_U1_n_21,mul_32s_32s_32_2_1_U1_n_22,mul_32s_32s_32_2_1_U1_n_23,mul_32s_32s_32_2_1_U1_n_24,mul_32s_32s_32_2_1_U1_n_25,mul_32s_32s_32_2_1_U1_n_26,mul_32s_32s_32_2_1_U1_n_27,mul_32s_32s_32_2_1_U1_n_28,mul_32s_32s_32_2_1_U1_n_29,mul_32s_32s_32_2_1_U1_n_30,mul_32s_32s_32_2_1_U1_n_31}),
        .ap_clk(ap_clk),
        .ap_start(ap_start),
        .dout_reg_0(q00),
        .q00({control_s_axi_U_n_45,control_s_axi_U_n_46,control_s_axi_U_n_47,control_s_axi_U_n_48,control_s_axi_U_n_49,control_s_axi_U_n_50,control_s_axi_U_n_51,control_s_axi_U_n_52,control_s_axi_U_n_53,control_s_axi_U_n_54,control_s_axi_U_n_55,control_s_axi_U_n_56,control_s_axi_U_n_57,control_s_axi_U_n_58,control_s_axi_U_n_59,control_s_axi_U_n_60,control_s_axi_U_n_61,control_s_axi_U_n_62,control_s_axi_U_n_63,control_s_axi_U_n_64,control_s_axi_U_n_65,control_s_axi_U_n_66,control_s_axi_U_n_67,control_s_axi_U_n_68,control_s_axi_U_n_69,control_s_axi_U_n_70,control_s_axi_U_n_71,control_s_axi_U_n_72,control_s_axi_U_n_73,control_s_axi_U_n_74,control_s_axi_U_n_75,control_s_axi_U_n_76}));
  FDRE \mul_ln10_reg_187_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(mul_32s_32s_32_2_1_U1_n_31),
        .Q(mul_ln10_reg_187[0]),
        .R(1'b0));
  FDRE \mul_ln10_reg_187_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(mul_32s_32s_32_2_1_U1_n_21),
        .Q(mul_ln10_reg_187[10]),
        .R(1'b0));
  FDRE \mul_ln10_reg_187_reg[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(mul_32s_32s_32_2_1_U1_n_20),
        .Q(mul_ln10_reg_187[11]),
        .R(1'b0));
  FDRE \mul_ln10_reg_187_reg[12] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(mul_32s_32s_32_2_1_U1_n_19),
        .Q(mul_ln10_reg_187[12]),
        .R(1'b0));
  FDRE \mul_ln10_reg_187_reg[13] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(mul_32s_32s_32_2_1_U1_n_18),
        .Q(mul_ln10_reg_187[13]),
        .R(1'b0));
  FDRE \mul_ln10_reg_187_reg[14] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(mul_32s_32s_32_2_1_U1_n_17),
        .Q(mul_ln10_reg_187[14]),
        .R(1'b0));
  FDRE \mul_ln10_reg_187_reg[15] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(mul_32s_32s_32_2_1_U1_n_16),
        .Q(mul_ln10_reg_187[15]),
        .R(1'b0));
  FDRE \mul_ln10_reg_187_reg[16] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(dout_reg[16]),
        .Q(mul_ln10_reg_187[16]),
        .R(1'b0));
  FDRE \mul_ln10_reg_187_reg[17] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(dout_reg[17]),
        .Q(mul_ln10_reg_187[17]),
        .R(1'b0));
  FDRE \mul_ln10_reg_187_reg[18] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(dout_reg[18]),
        .Q(mul_ln10_reg_187[18]),
        .R(1'b0));
  FDRE \mul_ln10_reg_187_reg[19] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(dout_reg[19]),
        .Q(mul_ln10_reg_187[19]),
        .R(1'b0));
  FDRE \mul_ln10_reg_187_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(mul_32s_32s_32_2_1_U1_n_30),
        .Q(mul_ln10_reg_187[1]),
        .R(1'b0));
  FDRE \mul_ln10_reg_187_reg[20] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(dout_reg[20]),
        .Q(mul_ln10_reg_187[20]),
        .R(1'b0));
  FDRE \mul_ln10_reg_187_reg[21] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(dout_reg[21]),
        .Q(mul_ln10_reg_187[21]),
        .R(1'b0));
  FDRE \mul_ln10_reg_187_reg[22] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(dout_reg[22]),
        .Q(mul_ln10_reg_187[22]),
        .R(1'b0));
  FDRE \mul_ln10_reg_187_reg[23] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(dout_reg[23]),
        .Q(mul_ln10_reg_187[23]),
        .R(1'b0));
  FDRE \mul_ln10_reg_187_reg[24] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(dout_reg[24]),
        .Q(mul_ln10_reg_187[24]),
        .R(1'b0));
  FDRE \mul_ln10_reg_187_reg[25] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(dout_reg[25]),
        .Q(mul_ln10_reg_187[25]),
        .R(1'b0));
  FDRE \mul_ln10_reg_187_reg[26] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(dout_reg[26]),
        .Q(mul_ln10_reg_187[26]),
        .R(1'b0));
  FDRE \mul_ln10_reg_187_reg[27] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(dout_reg[27]),
        .Q(mul_ln10_reg_187[27]),
        .R(1'b0));
  FDRE \mul_ln10_reg_187_reg[28] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(dout_reg[28]),
        .Q(mul_ln10_reg_187[28]),
        .R(1'b0));
  FDRE \mul_ln10_reg_187_reg[29] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(dout_reg[29]),
        .Q(mul_ln10_reg_187[29]),
        .R(1'b0));
  FDRE \mul_ln10_reg_187_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(mul_32s_32s_32_2_1_U1_n_29),
        .Q(mul_ln10_reg_187[2]),
        .R(1'b0));
  FDRE \mul_ln10_reg_187_reg[30] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(dout_reg[30]),
        .Q(mul_ln10_reg_187[30]),
        .R(1'b0));
  FDRE \mul_ln10_reg_187_reg[31] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(dout_reg[31]),
        .Q(mul_ln10_reg_187[31]),
        .R(1'b0));
  FDRE \mul_ln10_reg_187_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(mul_32s_32s_32_2_1_U1_n_28),
        .Q(mul_ln10_reg_187[3]),
        .R(1'b0));
  FDRE \mul_ln10_reg_187_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(mul_32s_32s_32_2_1_U1_n_27),
        .Q(mul_ln10_reg_187[4]),
        .R(1'b0));
  FDRE \mul_ln10_reg_187_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(mul_32s_32s_32_2_1_U1_n_26),
        .Q(mul_ln10_reg_187[5]),
        .R(1'b0));
  FDRE \mul_ln10_reg_187_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(mul_32s_32s_32_2_1_U1_n_25),
        .Q(mul_ln10_reg_187[6]),
        .R(1'b0));
  FDRE \mul_ln10_reg_187_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(mul_32s_32s_32_2_1_U1_n_24),
        .Q(mul_ln10_reg_187[7]),
        .R(1'b0));
  FDRE \mul_ln10_reg_187_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(mul_32s_32s_32_2_1_U1_n_23),
        .Q(mul_ln10_reg_187[8]),
        .R(1'b0));
  FDRE \mul_ln10_reg_187_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(mul_32s_32s_32_2_1_U1_n_22),
        .Q(mul_ln10_reg_187[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h78)) 
    \temp_fu_58[0]_i_2 
       (.I0(mul_ln10_reg_187[0]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(temp_fu_58_reg[0]),
        .O(\temp_fu_58[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \temp_fu_58[12]_i_2 
       (.I0(mul_ln10_reg_187[15]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(temp_fu_58_reg[15]),
        .O(\temp_fu_58[12]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \temp_fu_58[12]_i_3 
       (.I0(mul_ln10_reg_187[14]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(temp_fu_58_reg[14]),
        .O(\temp_fu_58[12]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \temp_fu_58[12]_i_4 
       (.I0(mul_ln10_reg_187[13]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(temp_fu_58_reg[13]),
        .O(\temp_fu_58[12]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \temp_fu_58[12]_i_5 
       (.I0(mul_ln10_reg_187[12]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(temp_fu_58_reg[12]),
        .O(\temp_fu_58[12]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \temp_fu_58[16]_i_2 
       (.I0(mul_ln10_reg_187[19]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(temp_fu_58_reg[19]),
        .O(\temp_fu_58[16]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \temp_fu_58[16]_i_3 
       (.I0(mul_ln10_reg_187[18]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(temp_fu_58_reg[18]),
        .O(\temp_fu_58[16]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \temp_fu_58[16]_i_4 
       (.I0(mul_ln10_reg_187[17]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(temp_fu_58_reg[17]),
        .O(\temp_fu_58[16]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \temp_fu_58[16]_i_5 
       (.I0(mul_ln10_reg_187[16]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(temp_fu_58_reg[16]),
        .O(\temp_fu_58[16]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \temp_fu_58[20]_i_2 
       (.I0(mul_ln10_reg_187[23]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(temp_fu_58_reg[23]),
        .O(\temp_fu_58[20]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \temp_fu_58[20]_i_3 
       (.I0(mul_ln10_reg_187[22]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(temp_fu_58_reg[22]),
        .O(\temp_fu_58[20]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \temp_fu_58[20]_i_4 
       (.I0(mul_ln10_reg_187[21]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(temp_fu_58_reg[21]),
        .O(\temp_fu_58[20]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \temp_fu_58[20]_i_5 
       (.I0(mul_ln10_reg_187[20]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(temp_fu_58_reg[20]),
        .O(\temp_fu_58[20]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \temp_fu_58[24]_i_2 
       (.I0(mul_ln10_reg_187[27]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(temp_fu_58_reg[27]),
        .O(\temp_fu_58[24]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \temp_fu_58[24]_i_3 
       (.I0(mul_ln10_reg_187[26]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(temp_fu_58_reg[26]),
        .O(\temp_fu_58[24]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \temp_fu_58[24]_i_4 
       (.I0(mul_ln10_reg_187[25]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(temp_fu_58_reg[25]),
        .O(\temp_fu_58[24]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \temp_fu_58[24]_i_5 
       (.I0(mul_ln10_reg_187[24]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(temp_fu_58_reg[24]),
        .O(\temp_fu_58[24]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \temp_fu_58[28]_i_2 
       (.I0(mul_ln10_reg_187[31]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(temp_fu_58_reg[31]),
        .O(\temp_fu_58[28]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \temp_fu_58[28]_i_3 
       (.I0(mul_ln10_reg_187[30]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(temp_fu_58_reg[30]),
        .O(\temp_fu_58[28]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \temp_fu_58[28]_i_4 
       (.I0(mul_ln10_reg_187[29]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(temp_fu_58_reg[29]),
        .O(\temp_fu_58[28]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \temp_fu_58[28]_i_5 
       (.I0(mul_ln10_reg_187[28]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(temp_fu_58_reg[28]),
        .O(\temp_fu_58[28]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \temp_fu_58[4]_i_2 
       (.I0(mul_ln10_reg_187[7]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(temp_fu_58_reg[7]),
        .O(\temp_fu_58[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \temp_fu_58[4]_i_3 
       (.I0(mul_ln10_reg_187[6]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(temp_fu_58_reg[6]),
        .O(\temp_fu_58[4]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \temp_fu_58[4]_i_4 
       (.I0(mul_ln10_reg_187[5]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(temp_fu_58_reg[5]),
        .O(\temp_fu_58[4]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \temp_fu_58[4]_i_5 
       (.I0(mul_ln10_reg_187[4]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(temp_fu_58_reg[4]),
        .O(\temp_fu_58[4]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \temp_fu_58[8]_i_2 
       (.I0(mul_ln10_reg_187[11]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(temp_fu_58_reg[11]),
        .O(\temp_fu_58[8]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \temp_fu_58[8]_i_3 
       (.I0(mul_ln10_reg_187[10]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(temp_fu_58_reg[10]),
        .O(\temp_fu_58[8]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \temp_fu_58[8]_i_4 
       (.I0(mul_ln10_reg_187[9]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(temp_fu_58_reg[9]),
        .O(\temp_fu_58[8]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \temp_fu_58[8]_i_5 
       (.I0(mul_ln10_reg_187[8]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(temp_fu_58_reg[8]),
        .O(\temp_fu_58[8]_i_5_n_0 ));
  FDRE \temp_fu_58_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\temp_fu_58[0]_i_2_n_0 ),
        .Q(temp_fu_58_reg[0]),
        .R(ap_condition_151));
  FDRE \temp_fu_58_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\temp_fu_58_reg[8]_i_1_n_5 ),
        .Q(temp_fu_58_reg[10]),
        .R(ap_condition_151));
  FDRE \temp_fu_58_reg[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\temp_fu_58_reg[8]_i_1_n_4 ),
        .Q(temp_fu_58_reg[11]),
        .R(ap_condition_151));
  FDRE \temp_fu_58_reg[12] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\temp_fu_58_reg[12]_i_1_n_7 ),
        .Q(temp_fu_58_reg[12]),
        .R(ap_condition_151));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \temp_fu_58_reg[12]_i_1 
       (.CI(\temp_fu_58_reg[8]_i_1_n_0 ),
        .CO({\temp_fu_58_reg[12]_i_1_n_0 ,\temp_fu_58_reg[12]_i_1_n_1 ,\temp_fu_58_reg[12]_i_1_n_2 ,\temp_fu_58_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(temp_fu_58_reg[15:12]),
        .O({\temp_fu_58_reg[12]_i_1_n_4 ,\temp_fu_58_reg[12]_i_1_n_5 ,\temp_fu_58_reg[12]_i_1_n_6 ,\temp_fu_58_reg[12]_i_1_n_7 }),
        .S({\temp_fu_58[12]_i_2_n_0 ,\temp_fu_58[12]_i_3_n_0 ,\temp_fu_58[12]_i_4_n_0 ,\temp_fu_58[12]_i_5_n_0 }));
  FDRE \temp_fu_58_reg[13] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\temp_fu_58_reg[12]_i_1_n_6 ),
        .Q(temp_fu_58_reg[13]),
        .R(ap_condition_151));
  FDRE \temp_fu_58_reg[14] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\temp_fu_58_reg[12]_i_1_n_5 ),
        .Q(temp_fu_58_reg[14]),
        .R(ap_condition_151));
  FDRE \temp_fu_58_reg[15] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\temp_fu_58_reg[12]_i_1_n_4 ),
        .Q(temp_fu_58_reg[15]),
        .R(ap_condition_151));
  FDRE \temp_fu_58_reg[16] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\temp_fu_58_reg[16]_i_1_n_7 ),
        .Q(temp_fu_58_reg[16]),
        .R(ap_condition_151));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \temp_fu_58_reg[16]_i_1 
       (.CI(\temp_fu_58_reg[12]_i_1_n_0 ),
        .CO({\temp_fu_58_reg[16]_i_1_n_0 ,\temp_fu_58_reg[16]_i_1_n_1 ,\temp_fu_58_reg[16]_i_1_n_2 ,\temp_fu_58_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(temp_fu_58_reg[19:16]),
        .O({\temp_fu_58_reg[16]_i_1_n_4 ,\temp_fu_58_reg[16]_i_1_n_5 ,\temp_fu_58_reg[16]_i_1_n_6 ,\temp_fu_58_reg[16]_i_1_n_7 }),
        .S({\temp_fu_58[16]_i_2_n_0 ,\temp_fu_58[16]_i_3_n_0 ,\temp_fu_58[16]_i_4_n_0 ,\temp_fu_58[16]_i_5_n_0 }));
  FDRE \temp_fu_58_reg[17] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\temp_fu_58_reg[16]_i_1_n_6 ),
        .Q(temp_fu_58_reg[17]),
        .R(ap_condition_151));
  FDRE \temp_fu_58_reg[18] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\temp_fu_58_reg[16]_i_1_n_5 ),
        .Q(temp_fu_58_reg[18]),
        .R(ap_condition_151));
  FDRE \temp_fu_58_reg[19] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\temp_fu_58_reg[16]_i_1_n_4 ),
        .Q(temp_fu_58_reg[19]),
        .R(ap_condition_151));
  FDRE \temp_fu_58_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(control_s_axi_U_n_12),
        .Q(temp_fu_58_reg[1]),
        .R(ap_condition_151));
  FDRE \temp_fu_58_reg[20] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\temp_fu_58_reg[20]_i_1_n_7 ),
        .Q(temp_fu_58_reg[20]),
        .R(ap_condition_151));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \temp_fu_58_reg[20]_i_1 
       (.CI(\temp_fu_58_reg[16]_i_1_n_0 ),
        .CO({\temp_fu_58_reg[20]_i_1_n_0 ,\temp_fu_58_reg[20]_i_1_n_1 ,\temp_fu_58_reg[20]_i_1_n_2 ,\temp_fu_58_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(temp_fu_58_reg[23:20]),
        .O({\temp_fu_58_reg[20]_i_1_n_4 ,\temp_fu_58_reg[20]_i_1_n_5 ,\temp_fu_58_reg[20]_i_1_n_6 ,\temp_fu_58_reg[20]_i_1_n_7 }),
        .S({\temp_fu_58[20]_i_2_n_0 ,\temp_fu_58[20]_i_3_n_0 ,\temp_fu_58[20]_i_4_n_0 ,\temp_fu_58[20]_i_5_n_0 }));
  FDRE \temp_fu_58_reg[21] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\temp_fu_58_reg[20]_i_1_n_6 ),
        .Q(temp_fu_58_reg[21]),
        .R(ap_condition_151));
  FDRE \temp_fu_58_reg[22] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\temp_fu_58_reg[20]_i_1_n_5 ),
        .Q(temp_fu_58_reg[22]),
        .R(ap_condition_151));
  FDRE \temp_fu_58_reg[23] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\temp_fu_58_reg[20]_i_1_n_4 ),
        .Q(temp_fu_58_reg[23]),
        .R(ap_condition_151));
  FDRE \temp_fu_58_reg[24] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\temp_fu_58_reg[24]_i_1_n_7 ),
        .Q(temp_fu_58_reg[24]),
        .R(ap_condition_151));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \temp_fu_58_reg[24]_i_1 
       (.CI(\temp_fu_58_reg[20]_i_1_n_0 ),
        .CO({\temp_fu_58_reg[24]_i_1_n_0 ,\temp_fu_58_reg[24]_i_1_n_1 ,\temp_fu_58_reg[24]_i_1_n_2 ,\temp_fu_58_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(temp_fu_58_reg[27:24]),
        .O({\temp_fu_58_reg[24]_i_1_n_4 ,\temp_fu_58_reg[24]_i_1_n_5 ,\temp_fu_58_reg[24]_i_1_n_6 ,\temp_fu_58_reg[24]_i_1_n_7 }),
        .S({\temp_fu_58[24]_i_2_n_0 ,\temp_fu_58[24]_i_3_n_0 ,\temp_fu_58[24]_i_4_n_0 ,\temp_fu_58[24]_i_5_n_0 }));
  FDRE \temp_fu_58_reg[25] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\temp_fu_58_reg[24]_i_1_n_6 ),
        .Q(temp_fu_58_reg[25]),
        .R(ap_condition_151));
  FDRE \temp_fu_58_reg[26] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\temp_fu_58_reg[24]_i_1_n_5 ),
        .Q(temp_fu_58_reg[26]),
        .R(ap_condition_151));
  FDRE \temp_fu_58_reg[27] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\temp_fu_58_reg[24]_i_1_n_4 ),
        .Q(temp_fu_58_reg[27]),
        .R(ap_condition_151));
  FDRE \temp_fu_58_reg[28] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\temp_fu_58_reg[28]_i_1_n_7 ),
        .Q(temp_fu_58_reg[28]),
        .R(ap_condition_151));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \temp_fu_58_reg[28]_i_1 
       (.CI(\temp_fu_58_reg[24]_i_1_n_0 ),
        .CO({\NLW_temp_fu_58_reg[28]_i_1_CO_UNCONNECTED [3],\temp_fu_58_reg[28]_i_1_n_1 ,\temp_fu_58_reg[28]_i_1_n_2 ,\temp_fu_58_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,temp_fu_58_reg[30:28]}),
        .O({\temp_fu_58_reg[28]_i_1_n_4 ,\temp_fu_58_reg[28]_i_1_n_5 ,\temp_fu_58_reg[28]_i_1_n_6 ,\temp_fu_58_reg[28]_i_1_n_7 }),
        .S({\temp_fu_58[28]_i_2_n_0 ,\temp_fu_58[28]_i_3_n_0 ,\temp_fu_58[28]_i_4_n_0 ,\temp_fu_58[28]_i_5_n_0 }));
  FDRE \temp_fu_58_reg[29] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\temp_fu_58_reg[28]_i_1_n_6 ),
        .Q(temp_fu_58_reg[29]),
        .R(ap_condition_151));
  FDRE \temp_fu_58_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(control_s_axi_U_n_11),
        .Q(temp_fu_58_reg[2]),
        .R(ap_condition_151));
  FDRE \temp_fu_58_reg[30] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\temp_fu_58_reg[28]_i_1_n_5 ),
        .Q(temp_fu_58_reg[30]),
        .R(ap_condition_151));
  FDRE \temp_fu_58_reg[31] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\temp_fu_58_reg[28]_i_1_n_4 ),
        .Q(temp_fu_58_reg[31]),
        .R(ap_condition_151));
  FDRE \temp_fu_58_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(control_s_axi_U_n_10),
        .Q(temp_fu_58_reg[3]),
        .R(ap_condition_151));
  FDRE \temp_fu_58_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\temp_fu_58_reg[4]_i_1_n_7 ),
        .Q(temp_fu_58_reg[4]),
        .R(ap_condition_151));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \temp_fu_58_reg[4]_i_1 
       (.CI(control_s_axi_U_n_9),
        .CO({\temp_fu_58_reg[4]_i_1_n_0 ,\temp_fu_58_reg[4]_i_1_n_1 ,\temp_fu_58_reg[4]_i_1_n_2 ,\temp_fu_58_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(temp_fu_58_reg[7:4]),
        .O({\temp_fu_58_reg[4]_i_1_n_4 ,\temp_fu_58_reg[4]_i_1_n_5 ,\temp_fu_58_reg[4]_i_1_n_6 ,\temp_fu_58_reg[4]_i_1_n_7 }),
        .S({\temp_fu_58[4]_i_2_n_0 ,\temp_fu_58[4]_i_3_n_0 ,\temp_fu_58[4]_i_4_n_0 ,\temp_fu_58[4]_i_5_n_0 }));
  FDRE \temp_fu_58_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\temp_fu_58_reg[4]_i_1_n_6 ),
        .Q(temp_fu_58_reg[5]),
        .R(ap_condition_151));
  FDRE \temp_fu_58_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\temp_fu_58_reg[4]_i_1_n_5 ),
        .Q(temp_fu_58_reg[6]),
        .R(ap_condition_151));
  FDRE \temp_fu_58_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\temp_fu_58_reg[4]_i_1_n_4 ),
        .Q(temp_fu_58_reg[7]),
        .R(ap_condition_151));
  FDRE \temp_fu_58_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\temp_fu_58_reg[8]_i_1_n_7 ),
        .Q(temp_fu_58_reg[8]),
        .R(ap_condition_151));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \temp_fu_58_reg[8]_i_1 
       (.CI(\temp_fu_58_reg[4]_i_1_n_0 ),
        .CO({\temp_fu_58_reg[8]_i_1_n_0 ,\temp_fu_58_reg[8]_i_1_n_1 ,\temp_fu_58_reg[8]_i_1_n_2 ,\temp_fu_58_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(temp_fu_58_reg[11:8]),
        .O({\temp_fu_58_reg[8]_i_1_n_4 ,\temp_fu_58_reg[8]_i_1_n_5 ,\temp_fu_58_reg[8]_i_1_n_6 ,\temp_fu_58_reg[8]_i_1_n_7 }),
        .S({\temp_fu_58[8]_i_2_n_0 ,\temp_fu_58[8]_i_3_n_0 ,\temp_fu_58[8]_i_4_n_0 ,\temp_fu_58[8]_i_5_n_0 }));
  FDRE \temp_fu_58_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\temp_fu_58_reg[8]_i_1_n_6 ),
        .Q(temp_fu_58_reg[9]),
        .R(ap_condition_151));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_muladd_control_s_axi
   (SR,
    interrupt,
    \FSM_onehot_rstate_reg[1]_0 ,
    s_axi_control_RVALID,
    \FSM_onehot_wstate_reg[1]_0 ,
    s_axi_control_BVALID,
    s_axi_control_WREADY,
    ap_start,
    ap_loop_exit_ready,
    CO,
    O,
    s_axi_control_RDATA,
    q00,
    ap_clk_0,
    ap_clk,
    s_axi_control_ARVALID,
    s_axi_control_RREADY,
    s_axi_control_WSTRB,
    s_axi_control_WVALID,
    s_axi_control_ARADDR,
    s_axi_control_WDATA,
    s_axi_control_AWVALID,
    s_axi_control_BREADY,
    ap_enable_reg_pp0_iter4,
    ap_enable_reg_pp0_iter1,
    ap_enable_reg_pp0_iter2,
    ap_enable_reg_pp0_iter3,
    icmp_ln8_fu_105_p2,
    Q,
    ap_loop_init,
    E,
    ap_rst_n,
    \int_ap_return_reg[31]_0 ,
    out,
    s_axi_control_AWADDR);
  output [0:0]SR;
  output interrupt;
  output \FSM_onehot_rstate_reg[1]_0 ;
  output s_axi_control_RVALID;
  output \FSM_onehot_wstate_reg[1]_0 ;
  output s_axi_control_BVALID;
  output s_axi_control_WREADY;
  output ap_start;
  output ap_loop_exit_ready;
  output [0:0]CO;
  output [2:0]O;
  output [31:0]s_axi_control_RDATA;
  output [31:0]q00;
  output [31:0]ap_clk_0;
  input ap_clk;
  input s_axi_control_ARVALID;
  input s_axi_control_RREADY;
  input [3:0]s_axi_control_WSTRB;
  input s_axi_control_WVALID;
  input [7:0]s_axi_control_ARADDR;
  input [31:0]s_axi_control_WDATA;
  input s_axi_control_AWVALID;
  input s_axi_control_BREADY;
  input ap_enable_reg_pp0_iter4;
  input ap_enable_reg_pp0_iter1;
  input ap_enable_reg_pp0_iter2;
  input ap_enable_reg_pp0_iter3;
  input icmp_ln8_fu_105_p2;
  input [3:0]Q;
  input ap_loop_init;
  input [0:0]E;
  input ap_rst_n;
  input [31:0]\int_ap_return_reg[31]_0 ;
  input [31:0]out;
  input [7:0]s_axi_control_AWADDR;

  wire [0:0]CO;
  wire [0:0]E;
  wire \FSM_onehot_rstate[1]_i_1_n_0 ;
  wire \FSM_onehot_rstate[2]_i_1_n_0 ;
  wire \FSM_onehot_rstate_reg[1]_0 ;
  wire \FSM_onehot_rstate_reg_n_0_[2] ;
  wire \FSM_onehot_wstate[1]_i_2_n_0 ;
  wire \FSM_onehot_wstate[2]_i_1_n_0 ;
  wire \FSM_onehot_wstate[3]_i_1_n_0 ;
  wire \FSM_onehot_wstate_reg[1]_0 ;
  wire \FSM_onehot_wstate_reg_n_0_[2] ;
  wire [2:0]O;
  wire [3:0]Q;
  wire [0:0]SR;
  wire ap_clk;
  wire [31:0]ap_clk_0;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter2;
  wire ap_enable_reg_pp0_iter3;
  wire ap_enable_reg_pp0_iter4;
  wire ap_idle;
  wire ap_loop_exit_ready;
  wire ap_loop_init;
  wire ap_rst_n;
  wire [3:0]ap_sig_allocacmp_i_1;
  wire ap_start;
  wire ar_hs__0;
  wire auto_restart_status_i_1_n_0;
  wire auto_restart_status_reg_n_0;
  wire aw_hs;
  wire icmp_ln8_fu_105_p2;
  wire [3:0]int_a_address1;
  wire int_a_read;
  wire int_a_read0;
  wire int_a_read2;
  wire int_a_write_i_1_n_0;
  wire int_a_write_reg_n_0;
  wire int_ap_ready;
  wire int_ap_ready_i_1_n_0;
  wire [31:0]int_ap_return;
  wire \int_ap_return[0]_i_2_n_0 ;
  wire \int_ap_return[0]_i_3_n_0 ;
  wire \int_ap_return[0]_i_4_n_0 ;
  wire \int_ap_return[0]_i_5_n_0 ;
  wire \int_ap_return[11]_i_2_n_0 ;
  wire \int_ap_return[11]_i_3_n_0 ;
  wire \int_ap_return[11]_i_4_n_0 ;
  wire \int_ap_return[11]_i_5_n_0 ;
  wire \int_ap_return[15]_i_2_n_0 ;
  wire \int_ap_return[15]_i_3_n_0 ;
  wire \int_ap_return[15]_i_4_n_0 ;
  wire \int_ap_return[15]_i_5_n_0 ;
  wire \int_ap_return[19]_i_2_n_0 ;
  wire \int_ap_return[19]_i_3_n_0 ;
  wire \int_ap_return[19]_i_4_n_0 ;
  wire \int_ap_return[19]_i_5_n_0 ;
  wire \int_ap_return[23]_i_2_n_0 ;
  wire \int_ap_return[23]_i_3_n_0 ;
  wire \int_ap_return[23]_i_4_n_0 ;
  wire \int_ap_return[23]_i_5_n_0 ;
  wire \int_ap_return[27]_i_2_n_0 ;
  wire \int_ap_return[27]_i_3_n_0 ;
  wire \int_ap_return[27]_i_4_n_0 ;
  wire \int_ap_return[27]_i_5_n_0 ;
  wire \int_ap_return[31]_i_2_n_0 ;
  wire \int_ap_return[31]_i_3_n_0 ;
  wire \int_ap_return[31]_i_4_n_0 ;
  wire \int_ap_return[31]_i_5_n_0 ;
  wire \int_ap_return[3]_i_2_n_0 ;
  wire \int_ap_return[3]_i_3_n_0 ;
  wire \int_ap_return[3]_i_4_n_0 ;
  wire \int_ap_return[3]_i_5_n_0 ;
  wire \int_ap_return[7]_i_2_n_0 ;
  wire \int_ap_return[7]_i_3_n_0 ;
  wire \int_ap_return[7]_i_4_n_0 ;
  wire \int_ap_return[7]_i_5_n_0 ;
  wire \int_ap_return_reg[0]_i_1_n_1 ;
  wire \int_ap_return_reg[0]_i_1_n_2 ;
  wire \int_ap_return_reg[0]_i_1_n_3 ;
  wire \int_ap_return_reg[11]_i_1_n_0 ;
  wire \int_ap_return_reg[11]_i_1_n_1 ;
  wire \int_ap_return_reg[11]_i_1_n_2 ;
  wire \int_ap_return_reg[11]_i_1_n_3 ;
  wire \int_ap_return_reg[15]_i_1_n_0 ;
  wire \int_ap_return_reg[15]_i_1_n_1 ;
  wire \int_ap_return_reg[15]_i_1_n_2 ;
  wire \int_ap_return_reg[15]_i_1_n_3 ;
  wire \int_ap_return_reg[19]_i_1_n_0 ;
  wire \int_ap_return_reg[19]_i_1_n_1 ;
  wire \int_ap_return_reg[19]_i_1_n_2 ;
  wire \int_ap_return_reg[19]_i_1_n_3 ;
  wire \int_ap_return_reg[23]_i_1_n_0 ;
  wire \int_ap_return_reg[23]_i_1_n_1 ;
  wire \int_ap_return_reg[23]_i_1_n_2 ;
  wire \int_ap_return_reg[23]_i_1_n_3 ;
  wire \int_ap_return_reg[27]_i_1_n_0 ;
  wire \int_ap_return_reg[27]_i_1_n_1 ;
  wire \int_ap_return_reg[27]_i_1_n_2 ;
  wire \int_ap_return_reg[27]_i_1_n_3 ;
  wire [31:0]\int_ap_return_reg[31]_0 ;
  wire \int_ap_return_reg[31]_i_1_n_1 ;
  wire \int_ap_return_reg[31]_i_1_n_2 ;
  wire \int_ap_return_reg[31]_i_1_n_3 ;
  wire \int_ap_return_reg[3]_i_1_n_0 ;
  wire \int_ap_return_reg[3]_i_1_n_1 ;
  wire \int_ap_return_reg[3]_i_1_n_2 ;
  wire \int_ap_return_reg[3]_i_1_n_3 ;
  wire \int_ap_return_reg[7]_i_1_n_0 ;
  wire \int_ap_return_reg[7]_i_1_n_1 ;
  wire \int_ap_return_reg[7]_i_1_n_2 ;
  wire \int_ap_return_reg[7]_i_1_n_3 ;
  wire int_ap_start5_out;
  wire int_ap_start_i_1_n_0;
  wire int_ap_start_i_4_n_0;
  wire int_auto_restart_i_1_n_0;
  wire int_b_n_59;
  wire int_b_n_60;
  wire int_b_n_61;
  wire int_b_n_62;
  wire int_b_n_63;
  wire int_b_n_64;
  wire int_b_read;
  wire int_b_read0;
  wire int_b_write_i_1_n_0;
  wire int_b_write_reg_n_0;
  wire int_gie_i_1_n_0;
  wire int_gie_reg_n_0;
  wire \int_ier[0]_i_1_n_0 ;
  wire \int_ier[1]_i_1_n_0 ;
  wire \int_ier[1]_i_2_n_0 ;
  wire \int_ier_reg_n_0_[0] ;
  wire \int_ier_reg_n_0_[1] ;
  wire int_interrupt0;
  wire int_isr7_out;
  wire int_isr8_out;
  wire \int_isr[0]_i_1_n_0 ;
  wire \int_isr[1]_i_1_n_0 ;
  wire \int_isr_reg_n_0_[0] ;
  wire \int_isr_reg_n_0_[1] ;
  wire int_task_ap_done;
  wire int_task_ap_done0__7;
  wire int_task_ap_done_i_1_n_0;
  wire int_task_ap_done_i_3_n_0;
  wire interrupt;
  wire [31:0]out;
  wire [31:0]p_0_in;
  wire [3:0]p_0_in_1;
  wire [7:2]p_1_in_0;
  wire p_24_in;
  wire [31:0]q00;
  wire [31:4]q1;
  wire \rdata[0]_i_2_n_0 ;
  wire \rdata[1]_i_2_n_0 ;
  wire \rdata[1]_i_3_n_0 ;
  wire \rdata[31]_i_1_n_0 ;
  wire \rdata[31]_i_3_n_0 ;
  wire \rdata[31]_i_4_n_0 ;
  wire \rdata[31]_i_5_n_0 ;
  wire \rdata[31]_i_7_n_0 ;
  wire \rdata[9]_i_3_n_0 ;
  wire [7:0]s_axi_control_ARADDR;
  wire s_axi_control_ARVALID;
  wire [7:0]s_axi_control_AWADDR;
  wire s_axi_control_AWVALID;
  wire s_axi_control_BREADY;
  wire s_axi_control_BVALID;
  wire [31:0]s_axi_control_RDATA;
  wire s_axi_control_RREADY;
  wire s_axi_control_RVALID;
  wire [31:0]s_axi_control_WDATA;
  wire s_axi_control_WREADY;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire [31:0]temp_fu_58;
  wire \waddr_reg_n_0_[0] ;
  wire \waddr_reg_n_0_[1] ;
  wire \waddr_reg_n_0_[6] ;
  wire \waddr_reg_n_0_[7] ;
  wire [3:3]\NLW_int_ap_return_reg[31]_i_1_CO_UNCONNECTED ;
  wire [0:0]\NLW_int_ap_return_reg[3]_i_1_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h22772F7722772277)) 
    \FSM_onehot_rstate[1]_i_1 
       (.I0(\FSM_onehot_rstate_reg[1]_0 ),
        .I1(s_axi_control_ARVALID),
        .I2(int_a_read),
        .I3(\FSM_onehot_rstate_reg_n_0_[2] ),
        .I4(int_b_read),
        .I5(s_axi_control_RREADY),
        .O(\FSM_onehot_rstate[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFC8CCC8CCC8CC)) 
    \FSM_onehot_rstate[2]_i_1 
       (.I0(int_a_read),
        .I1(\FSM_onehot_rstate_reg_n_0_[2] ),
        .I2(int_b_read),
        .I3(s_axi_control_RREADY),
        .I4(s_axi_control_ARVALID),
        .I5(\FSM_onehot_rstate_reg[1]_0 ),
        .O(\FSM_onehot_rstate[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "RDIDLE:010,RDDATA:100,iSTATE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_rstate[1]_i_1_n_0 ),
        .Q(\FSM_onehot_rstate_reg[1]_0 ),
        .R(SR));
  (* FSM_ENCODED_STATES = "RDIDLE:010,RDDATA:100,iSTATE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_rstate[2]_i_1_n_0 ),
        .Q(\FSM_onehot_rstate_reg_n_0_[2] ),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_wstate[1]_i_1 
       (.I0(ap_rst_n),
        .O(SR));
  LUT5 #(
    .INIT(32'hFF0C1D1D)) 
    \FSM_onehot_wstate[1]_i_2 
       (.I0(\FSM_onehot_wstate_reg_n_0_[2] ),
        .I1(\FSM_onehot_wstate_reg[1]_0 ),
        .I2(s_axi_control_AWVALID),
        .I3(s_axi_control_BREADY),
        .I4(s_axi_control_BVALID),
        .O(\FSM_onehot_wstate[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFA222A222A222)) 
    \FSM_onehot_wstate[2]_i_1 
       (.I0(\FSM_onehot_wstate_reg_n_0_[2] ),
        .I1(s_axi_control_WVALID),
        .I2(\FSM_onehot_rstate_reg[1]_0 ),
        .I3(s_axi_control_ARVALID),
        .I4(s_axi_control_AWVALID),
        .I5(\FSM_onehot_wstate_reg[1]_0 ),
        .O(\FSM_onehot_wstate[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4444F444F444F444)) 
    \FSM_onehot_wstate[3]_i_1 
       (.I0(s_axi_control_BREADY),
        .I1(s_axi_control_BVALID),
        .I2(\FSM_onehot_wstate_reg_n_0_[2] ),
        .I3(s_axi_control_WVALID),
        .I4(\FSM_onehot_rstate_reg[1]_0 ),
        .I5(s_axi_control_ARVALID),
        .O(\FSM_onehot_wstate[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[1]_i_2_n_0 ),
        .Q(\FSM_onehot_wstate_reg[1]_0 ),
        .R(SR));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[2]_i_1_n_0 ),
        .Q(\FSM_onehot_wstate_reg_n_0_[2] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[3]_i_1_n_0 ),
        .Q(s_axi_control_BVALID),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    ap_loop_exit_ready_pp0_iter2_reg_reg_srl2_i_1
       (.I0(ap_start),
        .I1(icmp_ln8_fu_105_p2),
        .O(ap_loop_exit_ready));
  LUT3 #(
    .INIT(8'hBA)) 
    auto_restart_status_i_1
       (.I0(p_1_in_0[7]),
        .I1(ap_idle),
        .I2(auto_restart_status_reg_n_0),
        .O(auto_restart_status_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    auto_restart_status_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(auto_restart_status_i_1_n_0),
        .Q(auto_restart_status_reg_n_0),
        .R(SR));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_muladd_control_s_axi_ram int_a
       (.D({p_0_in[9],p_0_in[7],p_0_in[3:0]}),
        .Q({int_ap_return[9],int_ap_return[7],int_ap_return[3:0]}),
        .ap_clk(ap_clk),
        .ap_clk_0(ap_clk_0),
        .ap_loop_init(ap_loop_init),
        .ap_sig_allocacmp_i_1(ap_sig_allocacmp_i_1),
        .ar_hs__0(ar_hs__0),
        .dout_reg(\FSM_onehot_wstate_reg_n_0_[2] ),
        .dout_reg_0(p_0_in_1),
        .dout_reg_1(Q),
        .dout_reg_2(ap_start),
        .int_a_address1(int_a_address1),
        .int_a_read(int_a_read),
        .int_ap_ready(int_ap_ready),
        .interrupt(interrupt),
        .p_1_in_0({p_1_in_0[7],p_1_in_0[2]}),
        .\q1_reg[0]_0 (\FSM_onehot_rstate_reg[1]_0 ),
        .\q1_reg[0]_1 (int_a_write_reg_n_0),
        .\q1_reg[31]_0 ({q1[31:10],q1[8],q1[6:4]}),
        .\rdata_reg[0] (\rdata[31]_i_5_n_0 ),
        .\rdata_reg[0]_0 (\rdata[1]_i_2_n_0 ),
        .\rdata_reg[0]_1 (\rdata[0]_i_2_n_0 ),
        .\rdata_reg[1] (\rdata[1]_i_3_n_0 ),
        .\rdata_reg[2] (\rdata[9]_i_3_n_0 ),
        .\rdata_reg[9] ({int_b_n_59,int_b_n_60,int_b_n_61,int_b_n_62,int_b_n_63,int_b_n_64}),
        .s_axi_control_ARADDR(s_axi_control_ARADDR[5:2]),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_WDATA(s_axi_control_WDATA),
        .s_axi_control_WSTRB(s_axi_control_WSTRB),
        .s_axi_control_WVALID(s_axi_control_WVALID));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    int_a_read_i_1
       (.I0(s_axi_control_ARVALID),
        .I1(\FSM_onehot_rstate_reg[1]_0 ),
        .I2(s_axi_control_ARADDR[7]),
        .I3(s_axi_control_ARADDR[6]),
        .O(int_a_read0));
  FDRE int_a_read_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_a_read0),
        .Q(int_a_read),
        .R(SR));
  LUT6 #(
    .INIT(64'h4000FFFF40004000)) 
    int_a_write_i_1
       (.I0(s_axi_control_AWADDR[7]),
        .I1(s_axi_control_AWADDR[6]),
        .I2(s_axi_control_AWVALID),
        .I3(\FSM_onehot_wstate_reg[1]_0 ),
        .I4(p_24_in),
        .I5(int_a_write_reg_n_0),
        .O(int_a_write_i_1_n_0));
  FDRE int_a_write_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_a_write_i_1_n_0),
        .Q(int_a_write_reg_n_0),
        .R(SR));
  LUT5 #(
    .INIT(32'h00000001)) 
    int_ap_idle_i_1
       (.I0(ap_enable_reg_pp0_iter4),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(ap_enable_reg_pp0_iter2),
        .I3(ap_start),
        .I4(ap_enable_reg_pp0_iter3),
        .O(ap_idle));
  FDRE int_ap_idle_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_idle),
        .Q(p_1_in_0[2]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h40FF4040)) 
    int_ap_ready_i_1
       (.I0(p_1_in_0[7]),
        .I1(ap_start),
        .I2(icmp_ln8_fu_105_p2),
        .I3(int_task_ap_done0__7),
        .I4(int_ap_ready),
        .O(int_ap_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_ready_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_ready_i_1_n_0),
        .Q(int_ap_ready),
        .R(SR));
  LUT3 #(
    .INIT(8'h78)) 
    \int_ap_return[0]_i_2 
       (.I0(\int_ap_return_reg[31]_0 [3]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(out[3]),
        .O(\int_ap_return[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \int_ap_return[0]_i_3 
       (.I0(\int_ap_return_reg[31]_0 [2]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(out[2]),
        .O(\int_ap_return[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \int_ap_return[0]_i_4 
       (.I0(\int_ap_return_reg[31]_0 [1]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(out[1]),
        .O(\int_ap_return[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \int_ap_return[0]_i_5 
       (.I0(\int_ap_return_reg[31]_0 [0]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(out[0]),
        .O(\int_ap_return[0]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \int_ap_return[11]_i_2 
       (.I0(\int_ap_return_reg[31]_0 [11]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(out[11]),
        .O(\int_ap_return[11]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \int_ap_return[11]_i_3 
       (.I0(\int_ap_return_reg[31]_0 [10]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(out[10]),
        .O(\int_ap_return[11]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \int_ap_return[11]_i_4 
       (.I0(\int_ap_return_reg[31]_0 [9]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(out[9]),
        .O(\int_ap_return[11]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \int_ap_return[11]_i_5 
       (.I0(\int_ap_return_reg[31]_0 [8]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(out[8]),
        .O(\int_ap_return[11]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \int_ap_return[15]_i_2 
       (.I0(\int_ap_return_reg[31]_0 [15]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(out[15]),
        .O(\int_ap_return[15]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \int_ap_return[15]_i_3 
       (.I0(\int_ap_return_reg[31]_0 [14]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(out[14]),
        .O(\int_ap_return[15]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \int_ap_return[15]_i_4 
       (.I0(\int_ap_return_reg[31]_0 [13]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(out[13]),
        .O(\int_ap_return[15]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \int_ap_return[15]_i_5 
       (.I0(\int_ap_return_reg[31]_0 [12]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(out[12]),
        .O(\int_ap_return[15]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \int_ap_return[19]_i_2 
       (.I0(\int_ap_return_reg[31]_0 [19]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(out[19]),
        .O(\int_ap_return[19]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \int_ap_return[19]_i_3 
       (.I0(\int_ap_return_reg[31]_0 [18]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(out[18]),
        .O(\int_ap_return[19]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \int_ap_return[19]_i_4 
       (.I0(\int_ap_return_reg[31]_0 [17]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(out[17]),
        .O(\int_ap_return[19]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \int_ap_return[19]_i_5 
       (.I0(\int_ap_return_reg[31]_0 [16]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(out[16]),
        .O(\int_ap_return[19]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \int_ap_return[23]_i_2 
       (.I0(\int_ap_return_reg[31]_0 [23]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(out[23]),
        .O(\int_ap_return[23]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \int_ap_return[23]_i_3 
       (.I0(\int_ap_return_reg[31]_0 [22]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(out[22]),
        .O(\int_ap_return[23]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \int_ap_return[23]_i_4 
       (.I0(\int_ap_return_reg[31]_0 [21]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(out[21]),
        .O(\int_ap_return[23]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \int_ap_return[23]_i_5 
       (.I0(\int_ap_return_reg[31]_0 [20]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(out[20]),
        .O(\int_ap_return[23]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \int_ap_return[27]_i_2 
       (.I0(\int_ap_return_reg[31]_0 [27]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(out[27]),
        .O(\int_ap_return[27]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \int_ap_return[27]_i_3 
       (.I0(\int_ap_return_reg[31]_0 [26]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(out[26]),
        .O(\int_ap_return[27]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \int_ap_return[27]_i_4 
       (.I0(\int_ap_return_reg[31]_0 [25]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(out[25]),
        .O(\int_ap_return[27]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \int_ap_return[27]_i_5 
       (.I0(\int_ap_return_reg[31]_0 [24]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(out[24]),
        .O(\int_ap_return[27]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \int_ap_return[31]_i_2 
       (.I0(\int_ap_return_reg[31]_0 [31]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(out[31]),
        .O(\int_ap_return[31]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \int_ap_return[31]_i_3 
       (.I0(\int_ap_return_reg[31]_0 [30]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(out[30]),
        .O(\int_ap_return[31]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \int_ap_return[31]_i_4 
       (.I0(\int_ap_return_reg[31]_0 [29]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(out[29]),
        .O(\int_ap_return[31]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \int_ap_return[31]_i_5 
       (.I0(\int_ap_return_reg[31]_0 [28]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(out[28]),
        .O(\int_ap_return[31]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \int_ap_return[3]_i_2 
       (.I0(\int_ap_return_reg[31]_0 [3]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(out[3]),
        .O(\int_ap_return[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \int_ap_return[3]_i_3 
       (.I0(\int_ap_return_reg[31]_0 [2]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(out[2]),
        .O(\int_ap_return[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \int_ap_return[3]_i_4 
       (.I0(\int_ap_return_reg[31]_0 [1]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(out[1]),
        .O(\int_ap_return[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \int_ap_return[3]_i_5 
       (.I0(\int_ap_return_reg[31]_0 [0]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(out[0]),
        .O(\int_ap_return[3]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \int_ap_return[7]_i_2 
       (.I0(\int_ap_return_reg[31]_0 [7]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(out[7]),
        .O(\int_ap_return[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \int_ap_return[7]_i_3 
       (.I0(\int_ap_return_reg[31]_0 [6]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(out[6]),
        .O(\int_ap_return[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \int_ap_return[7]_i_4 
       (.I0(\int_ap_return_reg[31]_0 [5]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(out[5]),
        .O(\int_ap_return[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \int_ap_return[7]_i_5 
       (.I0(\int_ap_return_reg[31]_0 [4]),
        .I1(ap_enable_reg_pp0_iter4),
        .I2(out[4]),
        .O(\int_ap_return[7]_i_5_n_0 ));
  FDRE \int_ap_return_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(temp_fu_58[0]),
        .Q(int_ap_return[0]),
        .R(SR));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \int_ap_return_reg[0]_i_1 
       (.CI(1'b0),
        .CO({CO,\int_ap_return_reg[0]_i_1_n_1 ,\int_ap_return_reg[0]_i_1_n_2 ,\int_ap_return_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(out[3:0]),
        .O({O,temp_fu_58[0]}),
        .S({\int_ap_return[0]_i_2_n_0 ,\int_ap_return[0]_i_3_n_0 ,\int_ap_return[0]_i_4_n_0 ,\int_ap_return[0]_i_5_n_0 }));
  FDRE \int_ap_return_reg[10] 
       (.C(ap_clk),
        .CE(E),
        .D(temp_fu_58[10]),
        .Q(int_ap_return[10]),
        .R(SR));
  FDRE \int_ap_return_reg[11] 
       (.C(ap_clk),
        .CE(E),
        .D(temp_fu_58[11]),
        .Q(int_ap_return[11]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \int_ap_return_reg[11]_i_1 
       (.CI(\int_ap_return_reg[7]_i_1_n_0 ),
        .CO({\int_ap_return_reg[11]_i_1_n_0 ,\int_ap_return_reg[11]_i_1_n_1 ,\int_ap_return_reg[11]_i_1_n_2 ,\int_ap_return_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(out[11:8]),
        .O(temp_fu_58[11:8]),
        .S({\int_ap_return[11]_i_2_n_0 ,\int_ap_return[11]_i_3_n_0 ,\int_ap_return[11]_i_4_n_0 ,\int_ap_return[11]_i_5_n_0 }));
  FDRE \int_ap_return_reg[12] 
       (.C(ap_clk),
        .CE(E),
        .D(temp_fu_58[12]),
        .Q(int_ap_return[12]),
        .R(SR));
  FDRE \int_ap_return_reg[13] 
       (.C(ap_clk),
        .CE(E),
        .D(temp_fu_58[13]),
        .Q(int_ap_return[13]),
        .R(SR));
  FDRE \int_ap_return_reg[14] 
       (.C(ap_clk),
        .CE(E),
        .D(temp_fu_58[14]),
        .Q(int_ap_return[14]),
        .R(SR));
  FDRE \int_ap_return_reg[15] 
       (.C(ap_clk),
        .CE(E),
        .D(temp_fu_58[15]),
        .Q(int_ap_return[15]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \int_ap_return_reg[15]_i_1 
       (.CI(\int_ap_return_reg[11]_i_1_n_0 ),
        .CO({\int_ap_return_reg[15]_i_1_n_0 ,\int_ap_return_reg[15]_i_1_n_1 ,\int_ap_return_reg[15]_i_1_n_2 ,\int_ap_return_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(out[15:12]),
        .O(temp_fu_58[15:12]),
        .S({\int_ap_return[15]_i_2_n_0 ,\int_ap_return[15]_i_3_n_0 ,\int_ap_return[15]_i_4_n_0 ,\int_ap_return[15]_i_5_n_0 }));
  FDRE \int_ap_return_reg[16] 
       (.C(ap_clk),
        .CE(E),
        .D(temp_fu_58[16]),
        .Q(int_ap_return[16]),
        .R(SR));
  FDRE \int_ap_return_reg[17] 
       (.C(ap_clk),
        .CE(E),
        .D(temp_fu_58[17]),
        .Q(int_ap_return[17]),
        .R(SR));
  FDRE \int_ap_return_reg[18] 
       (.C(ap_clk),
        .CE(E),
        .D(temp_fu_58[18]),
        .Q(int_ap_return[18]),
        .R(SR));
  FDRE \int_ap_return_reg[19] 
       (.C(ap_clk),
        .CE(E),
        .D(temp_fu_58[19]),
        .Q(int_ap_return[19]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \int_ap_return_reg[19]_i_1 
       (.CI(\int_ap_return_reg[15]_i_1_n_0 ),
        .CO({\int_ap_return_reg[19]_i_1_n_0 ,\int_ap_return_reg[19]_i_1_n_1 ,\int_ap_return_reg[19]_i_1_n_2 ,\int_ap_return_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(out[19:16]),
        .O(temp_fu_58[19:16]),
        .S({\int_ap_return[19]_i_2_n_0 ,\int_ap_return[19]_i_3_n_0 ,\int_ap_return[19]_i_4_n_0 ,\int_ap_return[19]_i_5_n_0 }));
  FDRE \int_ap_return_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(temp_fu_58[1]),
        .Q(int_ap_return[1]),
        .R(SR));
  FDRE \int_ap_return_reg[20] 
       (.C(ap_clk),
        .CE(E),
        .D(temp_fu_58[20]),
        .Q(int_ap_return[20]),
        .R(SR));
  FDRE \int_ap_return_reg[21] 
       (.C(ap_clk),
        .CE(E),
        .D(temp_fu_58[21]),
        .Q(int_ap_return[21]),
        .R(SR));
  FDRE \int_ap_return_reg[22] 
       (.C(ap_clk),
        .CE(E),
        .D(temp_fu_58[22]),
        .Q(int_ap_return[22]),
        .R(SR));
  FDRE \int_ap_return_reg[23] 
       (.C(ap_clk),
        .CE(E),
        .D(temp_fu_58[23]),
        .Q(int_ap_return[23]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \int_ap_return_reg[23]_i_1 
       (.CI(\int_ap_return_reg[19]_i_1_n_0 ),
        .CO({\int_ap_return_reg[23]_i_1_n_0 ,\int_ap_return_reg[23]_i_1_n_1 ,\int_ap_return_reg[23]_i_1_n_2 ,\int_ap_return_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(out[23:20]),
        .O(temp_fu_58[23:20]),
        .S({\int_ap_return[23]_i_2_n_0 ,\int_ap_return[23]_i_3_n_0 ,\int_ap_return[23]_i_4_n_0 ,\int_ap_return[23]_i_5_n_0 }));
  FDRE \int_ap_return_reg[24] 
       (.C(ap_clk),
        .CE(E),
        .D(temp_fu_58[24]),
        .Q(int_ap_return[24]),
        .R(SR));
  FDRE \int_ap_return_reg[25] 
       (.C(ap_clk),
        .CE(E),
        .D(temp_fu_58[25]),
        .Q(int_ap_return[25]),
        .R(SR));
  FDRE \int_ap_return_reg[26] 
       (.C(ap_clk),
        .CE(E),
        .D(temp_fu_58[26]),
        .Q(int_ap_return[26]),
        .R(SR));
  FDRE \int_ap_return_reg[27] 
       (.C(ap_clk),
        .CE(E),
        .D(temp_fu_58[27]),
        .Q(int_ap_return[27]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \int_ap_return_reg[27]_i_1 
       (.CI(\int_ap_return_reg[23]_i_1_n_0 ),
        .CO({\int_ap_return_reg[27]_i_1_n_0 ,\int_ap_return_reg[27]_i_1_n_1 ,\int_ap_return_reg[27]_i_1_n_2 ,\int_ap_return_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(out[27:24]),
        .O(temp_fu_58[27:24]),
        .S({\int_ap_return[27]_i_2_n_0 ,\int_ap_return[27]_i_3_n_0 ,\int_ap_return[27]_i_4_n_0 ,\int_ap_return[27]_i_5_n_0 }));
  FDRE \int_ap_return_reg[28] 
       (.C(ap_clk),
        .CE(E),
        .D(temp_fu_58[28]),
        .Q(int_ap_return[28]),
        .R(SR));
  FDRE \int_ap_return_reg[29] 
       (.C(ap_clk),
        .CE(E),
        .D(temp_fu_58[29]),
        .Q(int_ap_return[29]),
        .R(SR));
  FDRE \int_ap_return_reg[2] 
       (.C(ap_clk),
        .CE(E),
        .D(temp_fu_58[2]),
        .Q(int_ap_return[2]),
        .R(SR));
  FDRE \int_ap_return_reg[30] 
       (.C(ap_clk),
        .CE(E),
        .D(temp_fu_58[30]),
        .Q(int_ap_return[30]),
        .R(SR));
  FDRE \int_ap_return_reg[31] 
       (.C(ap_clk),
        .CE(E),
        .D(temp_fu_58[31]),
        .Q(int_ap_return[31]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \int_ap_return_reg[31]_i_1 
       (.CI(\int_ap_return_reg[27]_i_1_n_0 ),
        .CO({\NLW_int_ap_return_reg[31]_i_1_CO_UNCONNECTED [3],\int_ap_return_reg[31]_i_1_n_1 ,\int_ap_return_reg[31]_i_1_n_2 ,\int_ap_return_reg[31]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,out[30:28]}),
        .O(temp_fu_58[31:28]),
        .S({\int_ap_return[31]_i_2_n_0 ,\int_ap_return[31]_i_3_n_0 ,\int_ap_return[31]_i_4_n_0 ,\int_ap_return[31]_i_5_n_0 }));
  FDRE \int_ap_return_reg[3] 
       (.C(ap_clk),
        .CE(E),
        .D(temp_fu_58[3]),
        .Q(int_ap_return[3]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \int_ap_return_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\int_ap_return_reg[3]_i_1_n_0 ,\int_ap_return_reg[3]_i_1_n_1 ,\int_ap_return_reg[3]_i_1_n_2 ,\int_ap_return_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(out[3:0]),
        .O({temp_fu_58[3:1],\NLW_int_ap_return_reg[3]_i_1_O_UNCONNECTED [0]}),
        .S({\int_ap_return[3]_i_2_n_0 ,\int_ap_return[3]_i_3_n_0 ,\int_ap_return[3]_i_4_n_0 ,\int_ap_return[3]_i_5_n_0 }));
  FDRE \int_ap_return_reg[4] 
       (.C(ap_clk),
        .CE(E),
        .D(temp_fu_58[4]),
        .Q(int_ap_return[4]),
        .R(SR));
  FDRE \int_ap_return_reg[5] 
       (.C(ap_clk),
        .CE(E),
        .D(temp_fu_58[5]),
        .Q(int_ap_return[5]),
        .R(SR));
  FDRE \int_ap_return_reg[6] 
       (.C(ap_clk),
        .CE(E),
        .D(temp_fu_58[6]),
        .Q(int_ap_return[6]),
        .R(SR));
  FDRE \int_ap_return_reg[7] 
       (.C(ap_clk),
        .CE(E),
        .D(temp_fu_58[7]),
        .Q(int_ap_return[7]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \int_ap_return_reg[7]_i_1 
       (.CI(\int_ap_return_reg[3]_i_1_n_0 ),
        .CO({\int_ap_return_reg[7]_i_1_n_0 ,\int_ap_return_reg[7]_i_1_n_1 ,\int_ap_return_reg[7]_i_1_n_2 ,\int_ap_return_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(out[7:4]),
        .O(temp_fu_58[7:4]),
        .S({\int_ap_return[7]_i_2_n_0 ,\int_ap_return[7]_i_3_n_0 ,\int_ap_return[7]_i_4_n_0 ,\int_ap_return[7]_i_5_n_0 }));
  FDRE \int_ap_return_reg[8] 
       (.C(ap_clk),
        .CE(E),
        .D(temp_fu_58[8]),
        .Q(int_ap_return[8]),
        .R(SR));
  FDRE \int_ap_return_reg[9] 
       (.C(ap_clk),
        .CE(E),
        .D(temp_fu_58[9]),
        .Q(int_ap_return[9]),
        .R(SR));
  LUT4 #(
    .INIT(16'hFFB0)) 
    int_ap_start_i_1
       (.I0(p_1_in_0[7]),
        .I1(icmp_ln8_fu_105_p2),
        .I2(ap_start),
        .I3(int_ap_start5_out),
        .O(int_ap_start_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    int_ap_start_i_3
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(p_24_in),
        .I3(int_ap_start_i_4_n_0),
        .I4(p_0_in_1[0]),
        .I5(p_0_in_1[1]),
        .O(int_ap_start5_out));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    int_ap_start_i_4
       (.I0(p_0_in_1[2]),
        .I1(p_0_in_1[3]),
        .I2(\waddr_reg_n_0_[0] ),
        .I3(\waddr_reg_n_0_[1] ),
        .I4(\waddr_reg_n_0_[7] ),
        .I5(\waddr_reg_n_0_[6] ),
        .O(int_ap_start_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_start_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_start_i_1_n_0),
        .Q(ap_start),
        .R(SR));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    int_auto_restart_i_1
       (.I0(s_axi_control_WDATA[7]),
        .I1(p_0_in_1[1]),
        .I2(p_0_in_1[0]),
        .I3(\int_ier[1]_i_2_n_0 ),
        .I4(p_1_in_0[7]),
        .O(int_auto_restart_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_auto_restart_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_auto_restart_i_1_n_0),
        .Q(p_1_in_0[7]),
        .R(SR));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_muladd_control_s_axi_ram_0 int_b
       (.D({p_0_in[31:10],p_0_in[8],p_0_in[6:4]}),
        .Q({int_ap_return[31:10],int_ap_return[8],int_ap_return[6:4]}),
        .ap_clk(ap_clk),
        .ap_sig_allocacmp_i_1(ap_sig_allocacmp_i_1),
        .ar_hs__0(ar_hs__0),
        .int_a_address1(int_a_address1),
        .q00(q00),
        .\q1_reg[0]_0 (\FSM_onehot_rstate_reg[1]_0 ),
        .\q1_reg[0]_1 (int_b_write_reg_n_0),
        .\q1_reg[9]_0 ({int_b_n_59,int_b_n_60,int_b_n_61,int_b_n_62,int_b_n_63,int_b_n_64}),
        .\rdata_reg[31] ({q1[31:10],q1[8],q1[6:4]}),
        .\rdata_reg[4] (\rdata[31]_i_3_n_0 ),
        .\rdata_reg[4]_0 (\rdata[31]_i_4_n_0 ),
        .\rdata_reg[4]_1 (\rdata[31]_i_5_n_0 ),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_WDATA(s_axi_control_WDATA),
        .s_axi_control_WSTRB(s_axi_control_WSTRB),
        .s_axi_control_WVALID(s_axi_control_WVALID),
        .tmp_product(\FSM_onehot_wstate_reg_n_0_[2] ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    int_b_read_i_1
       (.I0(s_axi_control_ARVALID),
        .I1(\FSM_onehot_rstate_reg[1]_0 ),
        .I2(s_axi_control_ARADDR[6]),
        .I3(s_axi_control_ARADDR[7]),
        .O(int_b_read0));
  FDRE int_b_read_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_b_read0),
        .Q(int_b_read),
        .R(SR));
  LUT6 #(
    .INIT(64'h2000FFFF20002000)) 
    int_b_write_i_1
       (.I0(s_axi_control_AWADDR[7]),
        .I1(s_axi_control_AWADDR[6]),
        .I2(s_axi_control_AWVALID),
        .I3(\FSM_onehot_wstate_reg[1]_0 ),
        .I4(p_24_in),
        .I5(int_b_write_reg_n_0),
        .O(int_b_write_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0888)) 
    int_b_write_i_2
       (.I0(\FSM_onehot_wstate_reg_n_0_[2] ),
        .I1(s_axi_control_WVALID),
        .I2(\FSM_onehot_rstate_reg[1]_0 ),
        .I3(s_axi_control_ARVALID),
        .O(p_24_in));
  FDRE int_b_write_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_b_write_i_1_n_0),
        .Q(int_b_write_reg_n_0),
        .R(SR));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    int_gie_i_1
       (.I0(s_axi_control_WDATA[0]),
        .I1(p_0_in_1[1]),
        .I2(p_0_in_1[0]),
        .I3(\int_ier[1]_i_2_n_0 ),
        .I4(int_gie_reg_n_0),
        .O(int_gie_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_gie_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_gie_i_1_n_0),
        .Q(int_gie_reg_n_0),
        .R(SR));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \int_ier[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(p_0_in_1[0]),
        .I2(p_0_in_1[1]),
        .I3(\int_ier[1]_i_2_n_0 ),
        .I4(\int_ier_reg_n_0_[0] ),
        .O(\int_ier[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \int_ier[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(p_0_in_1[0]),
        .I2(p_0_in_1[1]),
        .I3(\int_ier[1]_i_2_n_0 ),
        .I4(\int_ier_reg_n_0_[1] ),
        .O(\int_ier[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080808000000000)) 
    \int_ier[1]_i_2 
       (.I0(s_axi_control_WSTRB[0]),
        .I1(\FSM_onehot_wstate_reg_n_0_[2] ),
        .I2(s_axi_control_WVALID),
        .I3(\FSM_onehot_rstate_reg[1]_0 ),
        .I4(s_axi_control_ARVALID),
        .I5(int_ap_start_i_4_n_0),
        .O(\int_ier[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_ier[0]_i_1_n_0 ),
        .Q(\int_ier_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_ier[1]_i_1_n_0 ),
        .Q(\int_ier_reg_n_0_[1] ),
        .R(SR));
  LUT3 #(
    .INIT(8'hE0)) 
    int_interrupt_i_1
       (.I0(\int_isr_reg_n_0_[0] ),
        .I1(\int_isr_reg_n_0_[1] ),
        .I2(int_gie_reg_n_0),
        .O(int_interrupt0));
  FDRE #(
    .INIT(1'b0)) 
    int_interrupt_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_interrupt0),
        .Q(interrupt),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFF7FFFFFFF8000)) 
    \int_isr[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(\int_ier[1]_i_2_n_0 ),
        .I2(p_0_in_1[0]),
        .I3(p_0_in_1[1]),
        .I4(int_isr8_out),
        .I5(\int_isr_reg_n_0_[0] ),
        .O(\int_isr[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \int_isr[0]_i_2 
       (.I0(E),
        .I1(\int_ier_reg_n_0_[0] ),
        .O(int_isr8_out));
  LUT6 #(
    .INIT(64'hF7777777F8888888)) 
    \int_isr[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(int_isr7_out),
        .I2(\int_ier_reg_n_0_[1] ),
        .I3(ap_start),
        .I4(icmp_ln8_fu_105_p2),
        .I5(\int_isr_reg_n_0_[1] ),
        .O(\int_isr[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \int_isr[1]_i_2 
       (.I0(p_0_in_1[1]),
        .I1(p_0_in_1[0]),
        .I2(int_ap_start_i_4_n_0),
        .I3(p_24_in),
        .I4(s_axi_control_WSTRB[0]),
        .O(int_isr7_out));
  FDRE #(
    .INIT(1'b0)) 
    \int_isr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_isr[0]_i_1_n_0 ),
        .Q(\int_isr_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_isr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_isr[1]_i_1_n_0 ),
        .Q(\int_isr_reg_n_0_[1] ),
        .R(SR));
  LUT6 #(
    .INIT(64'h2E22FFFF2E222E22)) 
    int_task_ap_done_i_1
       (.I0(E),
        .I1(auto_restart_status_reg_n_0),
        .I2(p_1_in_0[2]),
        .I3(ap_idle),
        .I4(int_task_ap_done0__7),
        .I5(int_task_ap_done),
        .O(int_task_ap_done_i_1_n_0));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    int_task_ap_done_i_2
       (.I0(s_axi_control_ARADDR[6]),
        .I1(s_axi_control_ARADDR[7]),
        .I2(s_axi_control_ARADDR[5]),
        .I3(s_axi_control_ARADDR[4]),
        .I4(int_task_ap_done_i_3_n_0),
        .I5(\rdata[31]_i_7_n_0 ),
        .O(int_task_ap_done0__7));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h1)) 
    int_task_ap_done_i_3
       (.I0(s_axi_control_ARADDR[3]),
        .I1(s_axi_control_ARADDR[2]),
        .O(int_task_ap_done_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_task_ap_done_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_task_ap_done_i_1_n_0),
        .Q(int_task_ap_done),
        .R(SR));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \rdata[0]_i_2 
       (.I0(int_gie_reg_n_0),
        .I1(\int_isr_reg_n_0_[0] ),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(ap_start),
        .I5(\int_ier_reg_n_0_[0] ),
        .O(\rdata[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \rdata[1]_i_2 
       (.I0(s_axi_control_ARADDR[4]),
        .I1(int_a_read2),
        .I2(s_axi_control_ARADDR[5]),
        .I3(\rdata[31]_i_7_n_0 ),
        .O(\rdata[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFC0A0C0A)) 
    \rdata[1]_i_3 
       (.I0(int_task_ap_done),
        .I1(\int_ier_reg_n_0_[1] ),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(\int_isr_reg_n_0_[1] ),
        .O(\rdata[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFEA)) 
    \rdata[31]_i_1 
       (.I0(int_a_read),
        .I1(s_axi_control_ARVALID),
        .I2(\FSM_onehot_rstate_reg[1]_0 ),
        .I3(int_b_read),
        .O(\rdata[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \rdata[31]_i_3 
       (.I0(\FSM_onehot_rstate_reg[1]_0 ),
        .I1(s_axi_control_ARVALID),
        .I2(int_a_read),
        .O(\rdata[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \rdata[31]_i_4 
       (.I0(int_a_read),
        .I1(\FSM_onehot_rstate_reg[1]_0 ),
        .I2(s_axi_control_ARVALID),
        .O(\rdata[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    \rdata[31]_i_5 
       (.I0(s_axi_control_ARADDR[3]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(int_a_read2),
        .I4(s_axi_control_ARADDR[5]),
        .I5(\rdata[31]_i_7_n_0 ),
        .O(\rdata[31]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \rdata[31]_i_6 
       (.I0(s_axi_control_ARADDR[6]),
        .I1(s_axi_control_ARADDR[7]),
        .O(int_a_read2));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \rdata[31]_i_7 
       (.I0(s_axi_control_ARADDR[0]),
        .I1(s_axi_control_ARADDR[1]),
        .I2(\FSM_onehot_rstate_reg[1]_0 ),
        .I3(s_axi_control_ARVALID),
        .O(\rdata[31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \rdata[9]_i_3 
       (.I0(\rdata[31]_i_7_n_0 ),
        .I1(s_axi_control_ARADDR[5]),
        .I2(int_a_read2),
        .I3(s_axi_control_ARADDR[4]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(s_axi_control_ARADDR[3]),
        .O(\rdata[9]_i_3_n_0 ));
  FDRE \rdata_reg[0] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(p_0_in[0]),
        .Q(s_axi_control_RDATA[0]),
        .R(1'b0));
  FDRE \rdata_reg[10] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(p_0_in[10]),
        .Q(s_axi_control_RDATA[10]),
        .R(1'b0));
  FDRE \rdata_reg[11] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(p_0_in[11]),
        .Q(s_axi_control_RDATA[11]),
        .R(1'b0));
  FDRE \rdata_reg[12] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(p_0_in[12]),
        .Q(s_axi_control_RDATA[12]),
        .R(1'b0));
  FDRE \rdata_reg[13] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(p_0_in[13]),
        .Q(s_axi_control_RDATA[13]),
        .R(1'b0));
  FDRE \rdata_reg[14] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(p_0_in[14]),
        .Q(s_axi_control_RDATA[14]),
        .R(1'b0));
  FDRE \rdata_reg[15] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(p_0_in[15]),
        .Q(s_axi_control_RDATA[15]),
        .R(1'b0));
  FDRE \rdata_reg[16] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(p_0_in[16]),
        .Q(s_axi_control_RDATA[16]),
        .R(1'b0));
  FDRE \rdata_reg[17] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(p_0_in[17]),
        .Q(s_axi_control_RDATA[17]),
        .R(1'b0));
  FDRE \rdata_reg[18] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(p_0_in[18]),
        .Q(s_axi_control_RDATA[18]),
        .R(1'b0));
  FDRE \rdata_reg[19] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(p_0_in[19]),
        .Q(s_axi_control_RDATA[19]),
        .R(1'b0));
  FDRE \rdata_reg[1] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(p_0_in[1]),
        .Q(s_axi_control_RDATA[1]),
        .R(1'b0));
  FDRE \rdata_reg[20] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(p_0_in[20]),
        .Q(s_axi_control_RDATA[20]),
        .R(1'b0));
  FDRE \rdata_reg[21] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(p_0_in[21]),
        .Q(s_axi_control_RDATA[21]),
        .R(1'b0));
  FDRE \rdata_reg[22] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(p_0_in[22]),
        .Q(s_axi_control_RDATA[22]),
        .R(1'b0));
  FDRE \rdata_reg[23] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(p_0_in[23]),
        .Q(s_axi_control_RDATA[23]),
        .R(1'b0));
  FDRE \rdata_reg[24] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(p_0_in[24]),
        .Q(s_axi_control_RDATA[24]),
        .R(1'b0));
  FDRE \rdata_reg[25] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(p_0_in[25]),
        .Q(s_axi_control_RDATA[25]),
        .R(1'b0));
  FDRE \rdata_reg[26] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(p_0_in[26]),
        .Q(s_axi_control_RDATA[26]),
        .R(1'b0));
  FDRE \rdata_reg[27] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(p_0_in[27]),
        .Q(s_axi_control_RDATA[27]),
        .R(1'b0));
  FDRE \rdata_reg[28] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(p_0_in[28]),
        .Q(s_axi_control_RDATA[28]),
        .R(1'b0));
  FDRE \rdata_reg[29] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(p_0_in[29]),
        .Q(s_axi_control_RDATA[29]),
        .R(1'b0));
  FDRE \rdata_reg[2] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(p_0_in[2]),
        .Q(s_axi_control_RDATA[2]),
        .R(1'b0));
  FDRE \rdata_reg[30] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(p_0_in[30]),
        .Q(s_axi_control_RDATA[30]),
        .R(1'b0));
  FDRE \rdata_reg[31] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(p_0_in[31]),
        .Q(s_axi_control_RDATA[31]),
        .R(1'b0));
  FDRE \rdata_reg[3] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(p_0_in[3]),
        .Q(s_axi_control_RDATA[3]),
        .R(1'b0));
  FDRE \rdata_reg[4] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(p_0_in[4]),
        .Q(s_axi_control_RDATA[4]),
        .R(1'b0));
  FDRE \rdata_reg[5] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(p_0_in[5]),
        .Q(s_axi_control_RDATA[5]),
        .R(1'b0));
  FDRE \rdata_reg[6] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(p_0_in[6]),
        .Q(s_axi_control_RDATA[6]),
        .R(1'b0));
  FDRE \rdata_reg[7] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(p_0_in[7]),
        .Q(s_axi_control_RDATA[7]),
        .R(1'b0));
  FDRE \rdata_reg[8] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(p_0_in[8]),
        .Q(s_axi_control_RDATA[8]),
        .R(1'b0));
  FDRE \rdata_reg[9] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(p_0_in[9]),
        .Q(s_axi_control_RDATA[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h04)) 
    s_axi_control_RVALID_INST_0
       (.I0(int_b_read),
        .I1(\FSM_onehot_rstate_reg_n_0_[2] ),
        .I2(int_a_read),
        .O(s_axi_control_RVALID));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    s_axi_control_WREADY_INST_0
       (.I0(\FSM_onehot_wstate_reg_n_0_[2] ),
        .I1(\FSM_onehot_rstate_reg[1]_0 ),
        .I2(s_axi_control_ARVALID),
        .O(s_axi_control_WREADY));
  LUT2 #(
    .INIT(4'h8)) 
    \waddr[7]_i_1 
       (.I0(\FSM_onehot_wstate_reg[1]_0 ),
        .I1(s_axi_control_AWVALID),
        .O(aw_hs));
  FDRE \waddr_reg[0] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_control_AWADDR[0]),
        .Q(\waddr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \waddr_reg[1] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_control_AWADDR[1]),
        .Q(\waddr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \waddr_reg[2] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_control_AWADDR[2]),
        .Q(p_0_in_1[0]),
        .R(1'b0));
  FDRE \waddr_reg[3] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_control_AWADDR[3]),
        .Q(p_0_in_1[1]),
        .R(1'b0));
  FDRE \waddr_reg[4] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_control_AWADDR[4]),
        .Q(p_0_in_1[2]),
        .R(1'b0));
  FDRE \waddr_reg[5] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_control_AWADDR[5]),
        .Q(p_0_in_1[3]),
        .R(1'b0));
  FDRE \waddr_reg[6] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_control_AWADDR[6]),
        .Q(\waddr_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \waddr_reg[7] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_control_AWADDR[7]),
        .Q(\waddr_reg_n_0_[7] ),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_muladd_control_s_axi_ram
   (D,
    \q1_reg[31]_0 ,
    int_a_address1,
    ap_sig_allocacmp_i_1,
    ap_clk_0,
    \rdata_reg[0] ,
    Q,
    \rdata_reg[0]_0 ,
    \rdata_reg[0]_1 ,
    \q1_reg[0]_0 ,
    s_axi_control_ARVALID,
    int_a_read,
    \rdata_reg[9] ,
    \rdata_reg[1] ,
    p_1_in_0,
    \rdata_reg[2] ,
    int_ap_ready,
    interrupt,
    s_axi_control_WSTRB,
    dout_reg,
    \q1_reg[0]_1 ,
    s_axi_control_WVALID,
    s_axi_control_ARADDR,
    dout_reg_0,
    ar_hs__0,
    s_axi_control_WDATA,
    dout_reg_1,
    dout_reg_2,
    ap_loop_init,
    ap_clk);
  output [5:0]D;
  output [25:0]\q1_reg[31]_0 ;
  output [3:0]int_a_address1;
  output [3:0]ap_sig_allocacmp_i_1;
  output [31:0]ap_clk_0;
  input \rdata_reg[0] ;
  input [5:0]Q;
  input \rdata_reg[0]_0 ;
  input \rdata_reg[0]_1 ;
  input \q1_reg[0]_0 ;
  input s_axi_control_ARVALID;
  input int_a_read;
  input [5:0]\rdata_reg[9] ;
  input \rdata_reg[1] ;
  input [1:0]p_1_in_0;
  input \rdata_reg[2] ;
  input int_ap_ready;
  input interrupt;
  input [3:0]s_axi_control_WSTRB;
  input dout_reg;
  input \q1_reg[0]_1 ;
  input s_axi_control_WVALID;
  input [3:0]s_axi_control_ARADDR;
  input [3:0]dout_reg_0;
  input ar_hs__0;
  input [31:0]s_axi_control_WDATA;
  input [3:0]dout_reg_1;
  input dout_reg_2;
  input ap_loop_init;
  input ap_clk;

  wire [5:0]D;
  wire [5:0]Q;
  wire ap_clk;
  wire [31:0]ap_clk_0;
  wire ap_loop_init;
  wire [3:0]ap_sig_allocacmp_i_1;
  wire ar_hs__0;
  wire dout_reg;
  wire [3:0]dout_reg_0;
  wire [3:0]dout_reg_1;
  wire dout_reg_2;
  wire [3:0]int_a_address1;
  wire int_a_ce1;
  wire int_a_read;
  wire int_ap_ready;
  wire interrupt;
  wire [24:0]p_0_in0_out;
  wire [31:24]p_1_in;
  wire [1:0]p_1_in_0;
  wire [9:0]q1;
  wire [31:0]q10__0;
  wire \q1_reg[0]_0 ;
  wire \q1_reg[0]_1 ;
  wire [25:0]\q1_reg[31]_0 ;
  wire \rdata[0]_i_3_n_0 ;
  wire \rdata[1]_i_4_n_0 ;
  wire \rdata[2]_i_2_n_0 ;
  wire \rdata[3]_i_2_n_0 ;
  wire \rdata[7]_i_2_n_0 ;
  wire \rdata[9]_i_2_n_0 ;
  wire \rdata_reg[0] ;
  wire \rdata_reg[0]_0 ;
  wire \rdata_reg[0]_1 ;
  wire \rdata_reg[1] ;
  wire \rdata_reg[2] ;
  wire [5:0]\rdata_reg[9] ;
  wire [3:0]s_axi_control_ARADDR;
  wire s_axi_control_ARVALID;
  wire [31:0]s_axi_control_WDATA;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;

  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_a/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_0_0
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_control_WDATA[0]),
        .DPO(ap_clk_0[0]),
        .DPRA0(ap_sig_allocacmp_i_1[0]),
        .DPRA1(ap_sig_allocacmp_i_1[1]),
        .DPRA2(ap_sig_allocacmp_i_1[2]),
        .DPRA3(ap_sig_allocacmp_i_1[3]),
        .DPRA4(1'b0),
        .SPO(q10__0[0]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[0]));
  LUT6 #(
    .INIT(64'h0000800080008000)) 
    mem_reg_0_15_0_0_i_1
       (.I0(s_axi_control_WSTRB[0]),
        .I1(\q1_reg[0]_1 ),
        .I2(dout_reg),
        .I3(s_axi_control_WVALID),
        .I4(\q1_reg[0]_0 ),
        .I5(s_axi_control_ARVALID),
        .O(p_0_in0_out[0]));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_15_0_0_i_2
       (.I0(s_axi_control_ARADDR[0]),
        .I1(s_axi_control_ARVALID),
        .I2(\q1_reg[0]_0 ),
        .I3(dout_reg_0[0]),
        .O(int_a_address1[0]));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_15_0_0_i_3
       (.I0(s_axi_control_ARADDR[1]),
        .I1(s_axi_control_ARVALID),
        .I2(\q1_reg[0]_0 ),
        .I3(dout_reg_0[1]),
        .O(int_a_address1[1]));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_15_0_0_i_4
       (.I0(s_axi_control_ARADDR[2]),
        .I1(s_axi_control_ARVALID),
        .I2(\q1_reg[0]_0 ),
        .I3(dout_reg_0[2]),
        .O(int_a_address1[2]));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_15_0_0_i_5
       (.I0(s_axi_control_ARADDR[3]),
        .I1(s_axi_control_ARVALID),
        .I2(\q1_reg[0]_0 ),
        .I3(dout_reg_0[3]),
        .O(int_a_address1[3]));
  LUT3 #(
    .INIT(8'h2A)) 
    mem_reg_0_15_0_0_i_6
       (.I0(dout_reg_1[0]),
        .I1(dout_reg_2),
        .I2(ap_loop_init),
        .O(ap_sig_allocacmp_i_1[0]));
  LUT3 #(
    .INIT(8'h2A)) 
    mem_reg_0_15_0_0_i_7
       (.I0(dout_reg_1[1]),
        .I1(dout_reg_2),
        .I2(ap_loop_init),
        .O(ap_sig_allocacmp_i_1[1]));
  LUT3 #(
    .INIT(8'h2A)) 
    mem_reg_0_15_0_0_i_8
       (.I0(dout_reg_1[2]),
        .I1(dout_reg_2),
        .I2(ap_loop_init),
        .O(ap_sig_allocacmp_i_1[2]));
  LUT3 #(
    .INIT(8'h2A)) 
    mem_reg_0_15_0_0_i_9
       (.I0(dout_reg_1[3]),
        .I1(dout_reg_2),
        .I2(ap_loop_init),
        .O(ap_sig_allocacmp_i_1[3]));
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_a/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "10" *) 
  (* ram_slice_end = "10" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_10_10
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_control_WDATA[10]),
        .DPO(ap_clk_0[10]),
        .DPRA0(ap_sig_allocacmp_i_1[0]),
        .DPRA1(ap_sig_allocacmp_i_1[1]),
        .DPRA2(ap_sig_allocacmp_i_1[2]),
        .DPRA3(ap_sig_allocacmp_i_1[3]),
        .DPRA4(1'b0),
        .SPO(q10__0[10]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[8]));
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_a/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "11" *) 
  (* ram_slice_end = "11" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_11_11
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_control_WDATA[11]),
        .DPO(ap_clk_0[11]),
        .DPRA0(ap_sig_allocacmp_i_1[0]),
        .DPRA1(ap_sig_allocacmp_i_1[1]),
        .DPRA2(ap_sig_allocacmp_i_1[2]),
        .DPRA3(ap_sig_allocacmp_i_1[3]),
        .DPRA4(1'b0),
        .SPO(q10__0[11]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[8]));
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_a/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_12_12
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_control_WDATA[12]),
        .DPO(ap_clk_0[12]),
        .DPRA0(ap_sig_allocacmp_i_1[0]),
        .DPRA1(ap_sig_allocacmp_i_1[1]),
        .DPRA2(ap_sig_allocacmp_i_1[2]),
        .DPRA3(ap_sig_allocacmp_i_1[3]),
        .DPRA4(1'b0),
        .SPO(q10__0[12]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[8]));
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_a/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "13" *) 
  (* ram_slice_end = "13" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_13_13
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_control_WDATA[13]),
        .DPO(ap_clk_0[13]),
        .DPRA0(ap_sig_allocacmp_i_1[0]),
        .DPRA1(ap_sig_allocacmp_i_1[1]),
        .DPRA2(ap_sig_allocacmp_i_1[2]),
        .DPRA3(ap_sig_allocacmp_i_1[3]),
        .DPRA4(1'b0),
        .SPO(q10__0[13]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[8]));
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_a/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "14" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_14_14
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_control_WDATA[14]),
        .DPO(ap_clk_0[14]),
        .DPRA0(ap_sig_allocacmp_i_1[0]),
        .DPRA1(ap_sig_allocacmp_i_1[1]),
        .DPRA2(ap_sig_allocacmp_i_1[2]),
        .DPRA3(ap_sig_allocacmp_i_1[3]),
        .DPRA4(1'b0),
        .SPO(q10__0[14]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[8]));
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_a/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_15_15
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_control_WDATA[15]),
        .DPO(ap_clk_0[15]),
        .DPRA0(ap_sig_allocacmp_i_1[0]),
        .DPRA1(ap_sig_allocacmp_i_1[1]),
        .DPRA2(ap_sig_allocacmp_i_1[2]),
        .DPRA3(ap_sig_allocacmp_i_1[3]),
        .DPRA4(1'b0),
        .SPO(q10__0[15]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[8]));
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_a/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "16" *) 
  (* ram_slice_end = "16" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_16_16
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_control_WDATA[16]),
        .DPO(ap_clk_0[16]),
        .DPRA0(ap_sig_allocacmp_i_1[0]),
        .DPRA1(ap_sig_allocacmp_i_1[1]),
        .DPRA2(ap_sig_allocacmp_i_1[2]),
        .DPRA3(ap_sig_allocacmp_i_1[3]),
        .DPRA4(1'b0),
        .SPO(q10__0[16]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[16]));
  LUT6 #(
    .INIT(64'h0000800080008000)) 
    mem_reg_0_15_16_16_i_1
       (.I0(s_axi_control_WSTRB[2]),
        .I1(\q1_reg[0]_1 ),
        .I2(dout_reg),
        .I3(s_axi_control_WVALID),
        .I4(\q1_reg[0]_0 ),
        .I5(s_axi_control_ARVALID),
        .O(p_0_in0_out[16]));
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_a/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "17" *) 
  (* ram_slice_end = "17" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_17_17
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_control_WDATA[17]),
        .DPO(ap_clk_0[17]),
        .DPRA0(ap_sig_allocacmp_i_1[0]),
        .DPRA1(ap_sig_allocacmp_i_1[1]),
        .DPRA2(ap_sig_allocacmp_i_1[2]),
        .DPRA3(ap_sig_allocacmp_i_1[3]),
        .DPRA4(1'b0),
        .SPO(q10__0[17]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[16]));
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_a/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "18" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_18_18
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_control_WDATA[18]),
        .DPO(ap_clk_0[18]),
        .DPRA0(ap_sig_allocacmp_i_1[0]),
        .DPRA1(ap_sig_allocacmp_i_1[1]),
        .DPRA2(ap_sig_allocacmp_i_1[2]),
        .DPRA3(ap_sig_allocacmp_i_1[3]),
        .DPRA4(1'b0),
        .SPO(q10__0[18]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[16]));
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_a/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "19" *) 
  (* ram_slice_end = "19" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_19_19
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_control_WDATA[19]),
        .DPO(ap_clk_0[19]),
        .DPRA0(ap_sig_allocacmp_i_1[0]),
        .DPRA1(ap_sig_allocacmp_i_1[1]),
        .DPRA2(ap_sig_allocacmp_i_1[2]),
        .DPRA3(ap_sig_allocacmp_i_1[3]),
        .DPRA4(1'b0),
        .SPO(q10__0[19]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[16]));
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_a/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_1_1
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_control_WDATA[1]),
        .DPO(ap_clk_0[1]),
        .DPRA0(ap_sig_allocacmp_i_1[0]),
        .DPRA1(ap_sig_allocacmp_i_1[1]),
        .DPRA2(ap_sig_allocacmp_i_1[2]),
        .DPRA3(ap_sig_allocacmp_i_1[3]),
        .DPRA4(1'b0),
        .SPO(q10__0[1]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[0]));
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_a/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "20" *) 
  (* ram_slice_end = "20" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_20_20
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_control_WDATA[20]),
        .DPO(ap_clk_0[20]),
        .DPRA0(ap_sig_allocacmp_i_1[0]),
        .DPRA1(ap_sig_allocacmp_i_1[1]),
        .DPRA2(ap_sig_allocacmp_i_1[2]),
        .DPRA3(ap_sig_allocacmp_i_1[3]),
        .DPRA4(1'b0),
        .SPO(q10__0[20]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[16]));
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_a/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "21" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_21_21
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_control_WDATA[21]),
        .DPO(ap_clk_0[21]),
        .DPRA0(ap_sig_allocacmp_i_1[0]),
        .DPRA1(ap_sig_allocacmp_i_1[1]),
        .DPRA2(ap_sig_allocacmp_i_1[2]),
        .DPRA3(ap_sig_allocacmp_i_1[3]),
        .DPRA4(1'b0),
        .SPO(q10__0[21]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[16]));
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_a/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "22" *) 
  (* ram_slice_end = "22" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_22_22
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_control_WDATA[22]),
        .DPO(ap_clk_0[22]),
        .DPRA0(ap_sig_allocacmp_i_1[0]),
        .DPRA1(ap_sig_allocacmp_i_1[1]),
        .DPRA2(ap_sig_allocacmp_i_1[2]),
        .DPRA3(ap_sig_allocacmp_i_1[3]),
        .DPRA4(1'b0),
        .SPO(q10__0[22]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[16]));
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_a/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "23" *) 
  (* ram_slice_end = "23" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_23_23
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_control_WDATA[23]),
        .DPO(ap_clk_0[23]),
        .DPRA0(ap_sig_allocacmp_i_1[0]),
        .DPRA1(ap_sig_allocacmp_i_1[1]),
        .DPRA2(ap_sig_allocacmp_i_1[2]),
        .DPRA3(ap_sig_allocacmp_i_1[3]),
        .DPRA4(1'b0),
        .SPO(q10__0[23]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[16]));
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_a/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "24" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_24_24
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(p_1_in[24]),
        .DPO(ap_clk_0[24]),
        .DPRA0(ap_sig_allocacmp_i_1[0]),
        .DPRA1(ap_sig_allocacmp_i_1[1]),
        .DPRA2(ap_sig_allocacmp_i_1[2]),
        .DPRA3(ap_sig_allocacmp_i_1[3]),
        .DPRA4(1'b0),
        .SPO(q10__0[24]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[24]));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    mem_reg_0_15_24_24_i_1
       (.I0(s_axi_control_WSTRB[3]),
        .I1(ar_hs__0),
        .I2(s_axi_control_WVALID),
        .I3(dout_reg),
        .I4(\q1_reg[0]_1 ),
        .I5(s_axi_control_WDATA[24]),
        .O(p_1_in[24]));
  LUT6 #(
    .INIT(64'h0888000000000000)) 
    mem_reg_0_15_24_24_i_2
       (.I0(s_axi_control_WSTRB[3]),
        .I1(dout_reg),
        .I2(s_axi_control_ARVALID),
        .I3(\q1_reg[0]_0 ),
        .I4(\q1_reg[0]_1 ),
        .I5(s_axi_control_WVALID),
        .O(p_0_in0_out[24]));
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_a/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "25" *) 
  (* ram_slice_end = "25" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_25_25
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(p_1_in[25]),
        .DPO(ap_clk_0[25]),
        .DPRA0(ap_sig_allocacmp_i_1[0]),
        .DPRA1(ap_sig_allocacmp_i_1[1]),
        .DPRA2(ap_sig_allocacmp_i_1[2]),
        .DPRA3(ap_sig_allocacmp_i_1[3]),
        .DPRA4(1'b0),
        .SPO(q10__0[25]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[24]));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    mem_reg_0_15_25_25_i_1
       (.I0(s_axi_control_WSTRB[3]),
        .I1(ar_hs__0),
        .I2(s_axi_control_WVALID),
        .I3(dout_reg),
        .I4(\q1_reg[0]_1 ),
        .I5(s_axi_control_WDATA[25]),
        .O(p_1_in[25]));
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_a/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "26" *) 
  (* ram_slice_end = "26" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_26_26
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(p_1_in[26]),
        .DPO(ap_clk_0[26]),
        .DPRA0(ap_sig_allocacmp_i_1[0]),
        .DPRA1(ap_sig_allocacmp_i_1[1]),
        .DPRA2(ap_sig_allocacmp_i_1[2]),
        .DPRA3(ap_sig_allocacmp_i_1[3]),
        .DPRA4(1'b0),
        .SPO(q10__0[26]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[24]));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    mem_reg_0_15_26_26_i_1
       (.I0(s_axi_control_WSTRB[3]),
        .I1(ar_hs__0),
        .I2(s_axi_control_WVALID),
        .I3(dout_reg),
        .I4(\q1_reg[0]_1 ),
        .I5(s_axi_control_WDATA[26]),
        .O(p_1_in[26]));
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_a/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "27" *) 
  (* ram_slice_end = "27" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_27_27
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(p_1_in[27]),
        .DPO(ap_clk_0[27]),
        .DPRA0(ap_sig_allocacmp_i_1[0]),
        .DPRA1(ap_sig_allocacmp_i_1[1]),
        .DPRA2(ap_sig_allocacmp_i_1[2]),
        .DPRA3(ap_sig_allocacmp_i_1[3]),
        .DPRA4(1'b0),
        .SPO(q10__0[27]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[24]));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    mem_reg_0_15_27_27_i_1
       (.I0(s_axi_control_WSTRB[3]),
        .I1(ar_hs__0),
        .I2(s_axi_control_WVALID),
        .I3(dout_reg),
        .I4(\q1_reg[0]_1 ),
        .I5(s_axi_control_WDATA[27]),
        .O(p_1_in[27]));
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_a/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "28" *) 
  (* ram_slice_end = "28" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_28_28
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(p_1_in[28]),
        .DPO(ap_clk_0[28]),
        .DPRA0(ap_sig_allocacmp_i_1[0]),
        .DPRA1(ap_sig_allocacmp_i_1[1]),
        .DPRA2(ap_sig_allocacmp_i_1[2]),
        .DPRA3(ap_sig_allocacmp_i_1[3]),
        .DPRA4(1'b0),
        .SPO(q10__0[28]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[24]));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    mem_reg_0_15_28_28_i_1
       (.I0(s_axi_control_WSTRB[3]),
        .I1(ar_hs__0),
        .I2(s_axi_control_WVALID),
        .I3(dout_reg),
        .I4(\q1_reg[0]_1 ),
        .I5(s_axi_control_WDATA[28]),
        .O(p_1_in[28]));
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_a/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "29" *) 
  (* ram_slice_end = "29" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_29_29
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(p_1_in[29]),
        .DPO(ap_clk_0[29]),
        .DPRA0(ap_sig_allocacmp_i_1[0]),
        .DPRA1(ap_sig_allocacmp_i_1[1]),
        .DPRA2(ap_sig_allocacmp_i_1[2]),
        .DPRA3(ap_sig_allocacmp_i_1[3]),
        .DPRA4(1'b0),
        .SPO(q10__0[29]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[24]));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    mem_reg_0_15_29_29_i_1
       (.I0(s_axi_control_WSTRB[3]),
        .I1(ar_hs__0),
        .I2(s_axi_control_WVALID),
        .I3(dout_reg),
        .I4(\q1_reg[0]_1 ),
        .I5(s_axi_control_WDATA[29]),
        .O(p_1_in[29]));
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_a/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_2_2
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_control_WDATA[2]),
        .DPO(ap_clk_0[2]),
        .DPRA0(ap_sig_allocacmp_i_1[0]),
        .DPRA1(ap_sig_allocacmp_i_1[1]),
        .DPRA2(ap_sig_allocacmp_i_1[2]),
        .DPRA3(ap_sig_allocacmp_i_1[3]),
        .DPRA4(1'b0),
        .SPO(q10__0[2]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[0]));
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_a/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "30" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_30_30
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(p_1_in[30]),
        .DPO(ap_clk_0[30]),
        .DPRA0(ap_sig_allocacmp_i_1[0]),
        .DPRA1(ap_sig_allocacmp_i_1[1]),
        .DPRA2(ap_sig_allocacmp_i_1[2]),
        .DPRA3(ap_sig_allocacmp_i_1[3]),
        .DPRA4(1'b0),
        .SPO(q10__0[30]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[24]));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    mem_reg_0_15_30_30_i_1
       (.I0(s_axi_control_WSTRB[3]),
        .I1(ar_hs__0),
        .I2(s_axi_control_WVALID),
        .I3(dout_reg),
        .I4(\q1_reg[0]_1 ),
        .I5(s_axi_control_WDATA[30]),
        .O(p_1_in[30]));
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_a/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "31" *) 
  (* ram_slice_end = "31" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_31_31
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(p_1_in[31]),
        .DPO(ap_clk_0[31]),
        .DPRA0(ap_sig_allocacmp_i_1[0]),
        .DPRA1(ap_sig_allocacmp_i_1[1]),
        .DPRA2(ap_sig_allocacmp_i_1[2]),
        .DPRA3(ap_sig_allocacmp_i_1[3]),
        .DPRA4(1'b0),
        .SPO(q10__0[31]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[24]));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    mem_reg_0_15_31_31_i_1
       (.I0(s_axi_control_WSTRB[3]),
        .I1(ar_hs__0),
        .I2(s_axi_control_WVALID),
        .I3(dout_reg),
        .I4(\q1_reg[0]_1 ),
        .I5(s_axi_control_WDATA[31]),
        .O(p_1_in[31]));
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_a/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_3_3
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_control_WDATA[3]),
        .DPO(ap_clk_0[3]),
        .DPRA0(ap_sig_allocacmp_i_1[0]),
        .DPRA1(ap_sig_allocacmp_i_1[1]),
        .DPRA2(ap_sig_allocacmp_i_1[2]),
        .DPRA3(ap_sig_allocacmp_i_1[3]),
        .DPRA4(1'b0),
        .SPO(q10__0[3]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[0]));
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_a/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_4_4
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_control_WDATA[4]),
        .DPO(ap_clk_0[4]),
        .DPRA0(ap_sig_allocacmp_i_1[0]),
        .DPRA1(ap_sig_allocacmp_i_1[1]),
        .DPRA2(ap_sig_allocacmp_i_1[2]),
        .DPRA3(ap_sig_allocacmp_i_1[3]),
        .DPRA4(1'b0),
        .SPO(q10__0[4]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[0]));
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_a/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_5_5
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_control_WDATA[5]),
        .DPO(ap_clk_0[5]),
        .DPRA0(ap_sig_allocacmp_i_1[0]),
        .DPRA1(ap_sig_allocacmp_i_1[1]),
        .DPRA2(ap_sig_allocacmp_i_1[2]),
        .DPRA3(ap_sig_allocacmp_i_1[3]),
        .DPRA4(1'b0),
        .SPO(q10__0[5]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[0]));
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_a/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_6_6
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_control_WDATA[6]),
        .DPO(ap_clk_0[6]),
        .DPRA0(ap_sig_allocacmp_i_1[0]),
        .DPRA1(ap_sig_allocacmp_i_1[1]),
        .DPRA2(ap_sig_allocacmp_i_1[2]),
        .DPRA3(ap_sig_allocacmp_i_1[3]),
        .DPRA4(1'b0),
        .SPO(q10__0[6]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[0]));
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_a/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_7_7
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_control_WDATA[7]),
        .DPO(ap_clk_0[7]),
        .DPRA0(ap_sig_allocacmp_i_1[0]),
        .DPRA1(ap_sig_allocacmp_i_1[1]),
        .DPRA2(ap_sig_allocacmp_i_1[2]),
        .DPRA3(ap_sig_allocacmp_i_1[3]),
        .DPRA4(1'b0),
        .SPO(q10__0[7]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[0]));
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_a/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "8" *) 
  (* ram_slice_end = "8" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_8_8
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_control_WDATA[8]),
        .DPO(ap_clk_0[8]),
        .DPRA0(ap_sig_allocacmp_i_1[0]),
        .DPRA1(ap_sig_allocacmp_i_1[1]),
        .DPRA2(ap_sig_allocacmp_i_1[2]),
        .DPRA3(ap_sig_allocacmp_i_1[3]),
        .DPRA4(1'b0),
        .SPO(q10__0[8]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[8]));
  LUT6 #(
    .INIT(64'h0000800080008000)) 
    mem_reg_0_15_8_8_i_1
       (.I0(s_axi_control_WSTRB[1]),
        .I1(\q1_reg[0]_1 ),
        .I2(dout_reg),
        .I3(s_axi_control_WVALID),
        .I4(\q1_reg[0]_0 ),
        .I5(s_axi_control_ARVALID),
        .O(p_0_in0_out[8]));
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_a/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "9" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_9_9
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_control_WDATA[9]),
        .DPO(ap_clk_0[9]),
        .DPRA0(ap_sig_allocacmp_i_1[0]),
        .DPRA1(ap_sig_allocacmp_i_1[1]),
        .DPRA2(ap_sig_allocacmp_i_1[2]),
        .DPRA3(ap_sig_allocacmp_i_1[3]),
        .DPRA4(1'b0),
        .SPO(q10__0[9]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out[8]));
  LUT4 #(
    .INIT(16'hF888)) 
    \q1[31]_i_1 
       (.I0(s_axi_control_WVALID),
        .I1(\q1_reg[0]_1 ),
        .I2(\q1_reg[0]_0 ),
        .I3(s_axi_control_ARVALID),
        .O(int_a_ce1));
  FDRE \q1_reg[0] 
       (.C(ap_clk),
        .CE(int_a_ce1),
        .D(q10__0[0]),
        .Q(q1[0]),
        .R(1'b0));
  FDRE \q1_reg[10] 
       (.C(ap_clk),
        .CE(int_a_ce1),
        .D(q10__0[10]),
        .Q(\q1_reg[31]_0 [4]),
        .R(1'b0));
  FDRE \q1_reg[11] 
       (.C(ap_clk),
        .CE(int_a_ce1),
        .D(q10__0[11]),
        .Q(\q1_reg[31]_0 [5]),
        .R(1'b0));
  FDRE \q1_reg[12] 
       (.C(ap_clk),
        .CE(int_a_ce1),
        .D(q10__0[12]),
        .Q(\q1_reg[31]_0 [6]),
        .R(1'b0));
  FDRE \q1_reg[13] 
       (.C(ap_clk),
        .CE(int_a_ce1),
        .D(q10__0[13]),
        .Q(\q1_reg[31]_0 [7]),
        .R(1'b0));
  FDRE \q1_reg[14] 
       (.C(ap_clk),
        .CE(int_a_ce1),
        .D(q10__0[14]),
        .Q(\q1_reg[31]_0 [8]),
        .R(1'b0));
  FDRE \q1_reg[15] 
       (.C(ap_clk),
        .CE(int_a_ce1),
        .D(q10__0[15]),
        .Q(\q1_reg[31]_0 [9]),
        .R(1'b0));
  FDRE \q1_reg[16] 
       (.C(ap_clk),
        .CE(int_a_ce1),
        .D(q10__0[16]),
        .Q(\q1_reg[31]_0 [10]),
        .R(1'b0));
  FDRE \q1_reg[17] 
       (.C(ap_clk),
        .CE(int_a_ce1),
        .D(q10__0[17]),
        .Q(\q1_reg[31]_0 [11]),
        .R(1'b0));
  FDRE \q1_reg[18] 
       (.C(ap_clk),
        .CE(int_a_ce1),
        .D(q10__0[18]),
        .Q(\q1_reg[31]_0 [12]),
        .R(1'b0));
  FDRE \q1_reg[19] 
       (.C(ap_clk),
        .CE(int_a_ce1),
        .D(q10__0[19]),
        .Q(\q1_reg[31]_0 [13]),
        .R(1'b0));
  FDRE \q1_reg[1] 
       (.C(ap_clk),
        .CE(int_a_ce1),
        .D(q10__0[1]),
        .Q(q1[1]),
        .R(1'b0));
  FDRE \q1_reg[20] 
       (.C(ap_clk),
        .CE(int_a_ce1),
        .D(q10__0[20]),
        .Q(\q1_reg[31]_0 [14]),
        .R(1'b0));
  FDRE \q1_reg[21] 
       (.C(ap_clk),
        .CE(int_a_ce1),
        .D(q10__0[21]),
        .Q(\q1_reg[31]_0 [15]),
        .R(1'b0));
  FDRE \q1_reg[22] 
       (.C(ap_clk),
        .CE(int_a_ce1),
        .D(q10__0[22]),
        .Q(\q1_reg[31]_0 [16]),
        .R(1'b0));
  FDRE \q1_reg[23] 
       (.C(ap_clk),
        .CE(int_a_ce1),
        .D(q10__0[23]),
        .Q(\q1_reg[31]_0 [17]),
        .R(1'b0));
  FDRE \q1_reg[24] 
       (.C(ap_clk),
        .CE(int_a_ce1),
        .D(q10__0[24]),
        .Q(\q1_reg[31]_0 [18]),
        .R(1'b0));
  FDRE \q1_reg[25] 
       (.C(ap_clk),
        .CE(int_a_ce1),
        .D(q10__0[25]),
        .Q(\q1_reg[31]_0 [19]),
        .R(1'b0));
  FDRE \q1_reg[26] 
       (.C(ap_clk),
        .CE(int_a_ce1),
        .D(q10__0[26]),
        .Q(\q1_reg[31]_0 [20]),
        .R(1'b0));
  FDRE \q1_reg[27] 
       (.C(ap_clk),
        .CE(int_a_ce1),
        .D(q10__0[27]),
        .Q(\q1_reg[31]_0 [21]),
        .R(1'b0));
  FDRE \q1_reg[28] 
       (.C(ap_clk),
        .CE(int_a_ce1),
        .D(q10__0[28]),
        .Q(\q1_reg[31]_0 [22]),
        .R(1'b0));
  FDRE \q1_reg[29] 
       (.C(ap_clk),
        .CE(int_a_ce1),
        .D(q10__0[29]),
        .Q(\q1_reg[31]_0 [23]),
        .R(1'b0));
  FDRE \q1_reg[2] 
       (.C(ap_clk),
        .CE(int_a_ce1),
        .D(q10__0[2]),
        .Q(q1[2]),
        .R(1'b0));
  FDRE \q1_reg[30] 
       (.C(ap_clk),
        .CE(int_a_ce1),
        .D(q10__0[30]),
        .Q(\q1_reg[31]_0 [24]),
        .R(1'b0));
  FDRE \q1_reg[31] 
       (.C(ap_clk),
        .CE(int_a_ce1),
        .D(q10__0[31]),
        .Q(\q1_reg[31]_0 [25]),
        .R(1'b0));
  FDRE \q1_reg[3] 
       (.C(ap_clk),
        .CE(int_a_ce1),
        .D(q10__0[3]),
        .Q(q1[3]),
        .R(1'b0));
  FDRE \q1_reg[4] 
       (.C(ap_clk),
        .CE(int_a_ce1),
        .D(q10__0[4]),
        .Q(\q1_reg[31]_0 [0]),
        .R(1'b0));
  FDRE \q1_reg[5] 
       (.C(ap_clk),
        .CE(int_a_ce1),
        .D(q10__0[5]),
        .Q(\q1_reg[31]_0 [1]),
        .R(1'b0));
  FDRE \q1_reg[6] 
       (.C(ap_clk),
        .CE(int_a_ce1),
        .D(q10__0[6]),
        .Q(\q1_reg[31]_0 [2]),
        .R(1'b0));
  FDRE \q1_reg[7] 
       (.C(ap_clk),
        .CE(int_a_ce1),
        .D(q10__0[7]),
        .Q(q1[7]),
        .R(1'b0));
  FDRE \q1_reg[8] 
       (.C(ap_clk),
        .CE(int_a_ce1),
        .D(q10__0[8]),
        .Q(\q1_reg[31]_0 [3]),
        .R(1'b0));
  FDRE \q1_reg[9] 
       (.C(ap_clk),
        .CE(int_a_ce1),
        .D(q10__0[9]),
        .Q(q1[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \rdata[0]_i_1 
       (.I0(\rdata_reg[0] ),
        .I1(Q[0]),
        .I2(\rdata_reg[0]_0 ),
        .I3(\rdata_reg[0]_1 ),
        .I4(\rdata[0]_i_3_n_0 ),
        .O(D[0]));
  LUT5 #(
    .INIT(32'h2A3F2A00)) 
    \rdata[0]_i_3 
       (.I0(q1[0]),
        .I1(\q1_reg[0]_0 ),
        .I2(s_axi_control_ARVALID),
        .I3(int_a_read),
        .I4(\rdata_reg[9] [0]),
        .O(\rdata[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \rdata[1]_i_1 
       (.I0(\rdata_reg[0] ),
        .I1(Q[1]),
        .I2(\rdata_reg[0]_0 ),
        .I3(\rdata_reg[1] ),
        .I4(\rdata[1]_i_4_n_0 ),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h2A3F2A00)) 
    \rdata[1]_i_4 
       (.I0(q1[1]),
        .I1(\q1_reg[0]_0 ),
        .I2(s_axi_control_ARVALID),
        .I3(int_a_read),
        .I4(\rdata_reg[9] [1]),
        .O(\rdata[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFF8F8F8)) 
    \rdata[2]_i_1 
       (.I0(\rdata_reg[0] ),
        .I1(Q[2]),
        .I2(\rdata[2]_i_2_n_0 ),
        .I3(p_1_in_0[0]),
        .I4(\rdata_reg[2] ),
        .O(D[2]));
  LUT5 #(
    .INIT(32'h2A3F2A00)) 
    \rdata[2]_i_2 
       (.I0(q1[2]),
        .I1(\q1_reg[0]_0 ),
        .I2(s_axi_control_ARVALID),
        .I3(int_a_read),
        .I4(\rdata_reg[9] [2]),
        .O(\rdata[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFF8F8F8)) 
    \rdata[3]_i_1 
       (.I0(\rdata_reg[0] ),
        .I1(Q[3]),
        .I2(\rdata[3]_i_2_n_0 ),
        .I3(int_ap_ready),
        .I4(\rdata_reg[2] ),
        .O(D[3]));
  LUT5 #(
    .INIT(32'h2A3F2A00)) 
    \rdata[3]_i_2 
       (.I0(q1[3]),
        .I1(\q1_reg[0]_0 ),
        .I2(s_axi_control_ARVALID),
        .I3(int_a_read),
        .I4(\rdata_reg[9] [3]),
        .O(\rdata[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFF8F8F8)) 
    \rdata[7]_i_1 
       (.I0(\rdata_reg[0] ),
        .I1(Q[4]),
        .I2(\rdata[7]_i_2_n_0 ),
        .I3(p_1_in_0[1]),
        .I4(\rdata_reg[2] ),
        .O(D[4]));
  LUT5 #(
    .INIT(32'h2A3F2A00)) 
    \rdata[7]_i_2 
       (.I0(q1[7]),
        .I1(\q1_reg[0]_0 ),
        .I2(s_axi_control_ARVALID),
        .I3(int_a_read),
        .I4(\rdata_reg[9] [4]),
        .O(\rdata[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFF8F8F8)) 
    \rdata[9]_i_1 
       (.I0(\rdata_reg[0] ),
        .I1(Q[5]),
        .I2(\rdata[9]_i_2_n_0 ),
        .I3(interrupt),
        .I4(\rdata_reg[2] ),
        .O(D[5]));
  LUT5 #(
    .INIT(32'h2A3F2A00)) 
    \rdata[9]_i_2 
       (.I0(q1[9]),
        .I1(\q1_reg[0]_0 ),
        .I2(s_axi_control_ARVALID),
        .I3(int_a_read),
        .I4(\rdata_reg[9] [5]),
        .O(\rdata[9]_i_2_n_0 ));
endmodule

(* ORIG_REF_NAME = "muladd_control_s_axi_ram" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_muladd_control_s_axi_ram_0
   (D,
    ar_hs__0,
    q00,
    \q1_reg[9]_0 ,
    \rdata_reg[4] ,
    \rdata_reg[4]_0 ,
    \rdata_reg[31] ,
    Q,
    \rdata_reg[4]_1 ,
    s_axi_control_WSTRB,
    tmp_product,
    s_axi_control_ARVALID,
    \q1_reg[0]_0 ,
    \q1_reg[0]_1 ,
    s_axi_control_WVALID,
    s_axi_control_WDATA,
    ap_clk,
    int_a_address1,
    ap_sig_allocacmp_i_1);
  output [25:0]D;
  output ar_hs__0;
  output [31:0]q00;
  output [5:0]\q1_reg[9]_0 ;
  input \rdata_reg[4] ;
  input \rdata_reg[4]_0 ;
  input [25:0]\rdata_reg[31] ;
  input [25:0]Q;
  input \rdata_reg[4]_1 ;
  input [3:0]s_axi_control_WSTRB;
  input tmp_product;
  input s_axi_control_ARVALID;
  input \q1_reg[0]_0 ;
  input \q1_reg[0]_1 ;
  input s_axi_control_WVALID;
  input [31:0]s_axi_control_WDATA;
  input ap_clk;
  input [3:0]int_a_address1;
  input [3:0]ap_sig_allocacmp_i_1;

  wire [25:0]D;
  wire [25:0]Q;
  wire ap_clk;
  wire [3:0]ap_sig_allocacmp_i_1;
  wire ar_hs__0;
  wire [3:0]int_a_address1;
  wire int_b_ce1;
  wire mem_reg_0_15_24_24_i_1__0_n_0;
  wire mem_reg_0_15_25_25_i_1__0_n_0;
  wire mem_reg_0_15_26_26_i_1__0_n_0;
  wire mem_reg_0_15_27_27_i_1__0_n_0;
  wire mem_reg_0_15_28_28_i_1__0_n_0;
  wire mem_reg_0_15_29_29_i_1__0_n_0;
  wire mem_reg_0_15_30_30_i_1__0_n_0;
  wire mem_reg_0_15_31_31_i_1__0_n_0;
  wire [24:0]p_0_in0_out__0;
  wire [31:0]q00;
  wire [31:0]q10;
  wire \q1_reg[0]_0 ;
  wire \q1_reg[0]_1 ;
  wire [5:0]\q1_reg[9]_0 ;
  wire \q1_reg_n_0_[10] ;
  wire \q1_reg_n_0_[11] ;
  wire \q1_reg_n_0_[12] ;
  wire \q1_reg_n_0_[13] ;
  wire \q1_reg_n_0_[14] ;
  wire \q1_reg_n_0_[15] ;
  wire \q1_reg_n_0_[16] ;
  wire \q1_reg_n_0_[17] ;
  wire \q1_reg_n_0_[18] ;
  wire \q1_reg_n_0_[19] ;
  wire \q1_reg_n_0_[20] ;
  wire \q1_reg_n_0_[21] ;
  wire \q1_reg_n_0_[22] ;
  wire \q1_reg_n_0_[23] ;
  wire \q1_reg_n_0_[24] ;
  wire \q1_reg_n_0_[25] ;
  wire \q1_reg_n_0_[26] ;
  wire \q1_reg_n_0_[27] ;
  wire \q1_reg_n_0_[28] ;
  wire \q1_reg_n_0_[29] ;
  wire \q1_reg_n_0_[30] ;
  wire \q1_reg_n_0_[31] ;
  wire \q1_reg_n_0_[4] ;
  wire \q1_reg_n_0_[5] ;
  wire \q1_reg_n_0_[6] ;
  wire \q1_reg_n_0_[8] ;
  wire [25:0]\rdata_reg[31] ;
  wire \rdata_reg[4] ;
  wire \rdata_reg[4]_0 ;
  wire \rdata_reg[4]_1 ;
  wire s_axi_control_ARVALID;
  wire [31:0]s_axi_control_WDATA;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire tmp_product;

  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_b/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_0_0
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_control_WDATA[0]),
        .DPO(q00[0]),
        .DPRA0(ap_sig_allocacmp_i_1[0]),
        .DPRA1(ap_sig_allocacmp_i_1[1]),
        .DPRA2(ap_sig_allocacmp_i_1[2]),
        .DPRA3(ap_sig_allocacmp_i_1[3]),
        .DPRA4(1'b0),
        .SPO(q10[0]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out__0[0]));
  LUT6 #(
    .INIT(64'h0000800080008000)) 
    mem_reg_0_15_0_0_i_1__0
       (.I0(s_axi_control_WSTRB[0]),
        .I1(\q1_reg[0]_1 ),
        .I2(tmp_product),
        .I3(s_axi_control_WVALID),
        .I4(\q1_reg[0]_0 ),
        .I5(s_axi_control_ARVALID),
        .O(p_0_in0_out__0[0]));
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_b/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "10" *) 
  (* ram_slice_end = "10" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_10_10
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_control_WDATA[10]),
        .DPO(q00[10]),
        .DPRA0(ap_sig_allocacmp_i_1[0]),
        .DPRA1(ap_sig_allocacmp_i_1[1]),
        .DPRA2(ap_sig_allocacmp_i_1[2]),
        .DPRA3(ap_sig_allocacmp_i_1[3]),
        .DPRA4(1'b0),
        .SPO(q10[10]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out__0[8]));
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_b/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "11" *) 
  (* ram_slice_end = "11" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_11_11
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_control_WDATA[11]),
        .DPO(q00[11]),
        .DPRA0(ap_sig_allocacmp_i_1[0]),
        .DPRA1(ap_sig_allocacmp_i_1[1]),
        .DPRA2(ap_sig_allocacmp_i_1[2]),
        .DPRA3(ap_sig_allocacmp_i_1[3]),
        .DPRA4(1'b0),
        .SPO(q10[11]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out__0[8]));
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_b/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_12_12
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_control_WDATA[12]),
        .DPO(q00[12]),
        .DPRA0(ap_sig_allocacmp_i_1[0]),
        .DPRA1(ap_sig_allocacmp_i_1[1]),
        .DPRA2(ap_sig_allocacmp_i_1[2]),
        .DPRA3(ap_sig_allocacmp_i_1[3]),
        .DPRA4(1'b0),
        .SPO(q10[12]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out__0[8]));
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_b/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "13" *) 
  (* ram_slice_end = "13" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_13_13
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_control_WDATA[13]),
        .DPO(q00[13]),
        .DPRA0(ap_sig_allocacmp_i_1[0]),
        .DPRA1(ap_sig_allocacmp_i_1[1]),
        .DPRA2(ap_sig_allocacmp_i_1[2]),
        .DPRA3(ap_sig_allocacmp_i_1[3]),
        .DPRA4(1'b0),
        .SPO(q10[13]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out__0[8]));
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_b/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "14" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_14_14
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_control_WDATA[14]),
        .DPO(q00[14]),
        .DPRA0(ap_sig_allocacmp_i_1[0]),
        .DPRA1(ap_sig_allocacmp_i_1[1]),
        .DPRA2(ap_sig_allocacmp_i_1[2]),
        .DPRA3(ap_sig_allocacmp_i_1[3]),
        .DPRA4(1'b0),
        .SPO(q10[14]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out__0[8]));
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_b/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_15_15
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_control_WDATA[15]),
        .DPO(q00[15]),
        .DPRA0(ap_sig_allocacmp_i_1[0]),
        .DPRA1(ap_sig_allocacmp_i_1[1]),
        .DPRA2(ap_sig_allocacmp_i_1[2]),
        .DPRA3(ap_sig_allocacmp_i_1[3]),
        .DPRA4(1'b0),
        .SPO(q10[15]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out__0[8]));
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_b/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "16" *) 
  (* ram_slice_end = "16" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_16_16
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_control_WDATA[16]),
        .DPO(q00[16]),
        .DPRA0(ap_sig_allocacmp_i_1[0]),
        .DPRA1(ap_sig_allocacmp_i_1[1]),
        .DPRA2(ap_sig_allocacmp_i_1[2]),
        .DPRA3(ap_sig_allocacmp_i_1[3]),
        .DPRA4(1'b0),
        .SPO(q10[16]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out__0[16]));
  LUT6 #(
    .INIT(64'h0000800080008000)) 
    mem_reg_0_15_16_16_i_1__0
       (.I0(s_axi_control_WSTRB[2]),
        .I1(\q1_reg[0]_1 ),
        .I2(tmp_product),
        .I3(s_axi_control_WVALID),
        .I4(\q1_reg[0]_0 ),
        .I5(s_axi_control_ARVALID),
        .O(p_0_in0_out__0[16]));
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_b/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "17" *) 
  (* ram_slice_end = "17" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_17_17
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_control_WDATA[17]),
        .DPO(q00[17]),
        .DPRA0(ap_sig_allocacmp_i_1[0]),
        .DPRA1(ap_sig_allocacmp_i_1[1]),
        .DPRA2(ap_sig_allocacmp_i_1[2]),
        .DPRA3(ap_sig_allocacmp_i_1[3]),
        .DPRA4(1'b0),
        .SPO(q10[17]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out__0[16]));
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_b/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "18" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_18_18
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_control_WDATA[18]),
        .DPO(q00[18]),
        .DPRA0(ap_sig_allocacmp_i_1[0]),
        .DPRA1(ap_sig_allocacmp_i_1[1]),
        .DPRA2(ap_sig_allocacmp_i_1[2]),
        .DPRA3(ap_sig_allocacmp_i_1[3]),
        .DPRA4(1'b0),
        .SPO(q10[18]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out__0[16]));
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_b/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "19" *) 
  (* ram_slice_end = "19" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_19_19
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_control_WDATA[19]),
        .DPO(q00[19]),
        .DPRA0(ap_sig_allocacmp_i_1[0]),
        .DPRA1(ap_sig_allocacmp_i_1[1]),
        .DPRA2(ap_sig_allocacmp_i_1[2]),
        .DPRA3(ap_sig_allocacmp_i_1[3]),
        .DPRA4(1'b0),
        .SPO(q10[19]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out__0[16]));
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_b/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_1_1
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_control_WDATA[1]),
        .DPO(q00[1]),
        .DPRA0(ap_sig_allocacmp_i_1[0]),
        .DPRA1(ap_sig_allocacmp_i_1[1]),
        .DPRA2(ap_sig_allocacmp_i_1[2]),
        .DPRA3(ap_sig_allocacmp_i_1[3]),
        .DPRA4(1'b0),
        .SPO(q10[1]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out__0[0]));
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_b/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "20" *) 
  (* ram_slice_end = "20" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_20_20
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_control_WDATA[20]),
        .DPO(q00[20]),
        .DPRA0(ap_sig_allocacmp_i_1[0]),
        .DPRA1(ap_sig_allocacmp_i_1[1]),
        .DPRA2(ap_sig_allocacmp_i_1[2]),
        .DPRA3(ap_sig_allocacmp_i_1[3]),
        .DPRA4(1'b0),
        .SPO(q10[20]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out__0[16]));
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_b/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "21" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_21_21
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_control_WDATA[21]),
        .DPO(q00[21]),
        .DPRA0(ap_sig_allocacmp_i_1[0]),
        .DPRA1(ap_sig_allocacmp_i_1[1]),
        .DPRA2(ap_sig_allocacmp_i_1[2]),
        .DPRA3(ap_sig_allocacmp_i_1[3]),
        .DPRA4(1'b0),
        .SPO(q10[21]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out__0[16]));
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_b/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "22" *) 
  (* ram_slice_end = "22" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_22_22
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_control_WDATA[22]),
        .DPO(q00[22]),
        .DPRA0(ap_sig_allocacmp_i_1[0]),
        .DPRA1(ap_sig_allocacmp_i_1[1]),
        .DPRA2(ap_sig_allocacmp_i_1[2]),
        .DPRA3(ap_sig_allocacmp_i_1[3]),
        .DPRA4(1'b0),
        .SPO(q10[22]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out__0[16]));
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_b/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "23" *) 
  (* ram_slice_end = "23" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_23_23
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_control_WDATA[23]),
        .DPO(q00[23]),
        .DPRA0(ap_sig_allocacmp_i_1[0]),
        .DPRA1(ap_sig_allocacmp_i_1[1]),
        .DPRA2(ap_sig_allocacmp_i_1[2]),
        .DPRA3(ap_sig_allocacmp_i_1[3]),
        .DPRA4(1'b0),
        .SPO(q10[23]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out__0[16]));
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_b/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "24" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_24_24
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(mem_reg_0_15_24_24_i_1__0_n_0),
        .DPO(q00[24]),
        .DPRA0(ap_sig_allocacmp_i_1[0]),
        .DPRA1(ap_sig_allocacmp_i_1[1]),
        .DPRA2(ap_sig_allocacmp_i_1[2]),
        .DPRA3(ap_sig_allocacmp_i_1[3]),
        .DPRA4(1'b0),
        .SPO(q10[24]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out__0[24]));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    mem_reg_0_15_24_24_i_1__0
       (.I0(s_axi_control_WSTRB[3]),
        .I1(ar_hs__0),
        .I2(s_axi_control_WVALID),
        .I3(tmp_product),
        .I4(\q1_reg[0]_1 ),
        .I5(s_axi_control_WDATA[24]),
        .O(mem_reg_0_15_24_24_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h0888000000000000)) 
    mem_reg_0_15_24_24_i_2__0
       (.I0(s_axi_control_WSTRB[3]),
        .I1(tmp_product),
        .I2(s_axi_control_ARVALID),
        .I3(\q1_reg[0]_0 ),
        .I4(\q1_reg[0]_1 ),
        .I5(s_axi_control_WVALID),
        .O(p_0_in0_out__0[24]));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_0_15_24_24_i_3
       (.I0(s_axi_control_ARVALID),
        .I1(\q1_reg[0]_0 ),
        .O(ar_hs__0));
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_b/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "25" *) 
  (* ram_slice_end = "25" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_25_25
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(mem_reg_0_15_25_25_i_1__0_n_0),
        .DPO(q00[25]),
        .DPRA0(ap_sig_allocacmp_i_1[0]),
        .DPRA1(ap_sig_allocacmp_i_1[1]),
        .DPRA2(ap_sig_allocacmp_i_1[2]),
        .DPRA3(ap_sig_allocacmp_i_1[3]),
        .DPRA4(1'b0),
        .SPO(q10[25]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out__0[24]));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    mem_reg_0_15_25_25_i_1__0
       (.I0(s_axi_control_WSTRB[3]),
        .I1(ar_hs__0),
        .I2(s_axi_control_WVALID),
        .I3(tmp_product),
        .I4(\q1_reg[0]_1 ),
        .I5(s_axi_control_WDATA[25]),
        .O(mem_reg_0_15_25_25_i_1__0_n_0));
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_b/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "26" *) 
  (* ram_slice_end = "26" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_26_26
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(mem_reg_0_15_26_26_i_1__0_n_0),
        .DPO(q00[26]),
        .DPRA0(ap_sig_allocacmp_i_1[0]),
        .DPRA1(ap_sig_allocacmp_i_1[1]),
        .DPRA2(ap_sig_allocacmp_i_1[2]),
        .DPRA3(ap_sig_allocacmp_i_1[3]),
        .DPRA4(1'b0),
        .SPO(q10[26]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out__0[24]));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    mem_reg_0_15_26_26_i_1__0
       (.I0(s_axi_control_WSTRB[3]),
        .I1(ar_hs__0),
        .I2(s_axi_control_WVALID),
        .I3(tmp_product),
        .I4(\q1_reg[0]_1 ),
        .I5(s_axi_control_WDATA[26]),
        .O(mem_reg_0_15_26_26_i_1__0_n_0));
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_b/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "27" *) 
  (* ram_slice_end = "27" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_27_27
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(mem_reg_0_15_27_27_i_1__0_n_0),
        .DPO(q00[27]),
        .DPRA0(ap_sig_allocacmp_i_1[0]),
        .DPRA1(ap_sig_allocacmp_i_1[1]),
        .DPRA2(ap_sig_allocacmp_i_1[2]),
        .DPRA3(ap_sig_allocacmp_i_1[3]),
        .DPRA4(1'b0),
        .SPO(q10[27]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out__0[24]));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    mem_reg_0_15_27_27_i_1__0
       (.I0(s_axi_control_WSTRB[3]),
        .I1(ar_hs__0),
        .I2(s_axi_control_WVALID),
        .I3(tmp_product),
        .I4(\q1_reg[0]_1 ),
        .I5(s_axi_control_WDATA[27]),
        .O(mem_reg_0_15_27_27_i_1__0_n_0));
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_b/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "28" *) 
  (* ram_slice_end = "28" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_28_28
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(mem_reg_0_15_28_28_i_1__0_n_0),
        .DPO(q00[28]),
        .DPRA0(ap_sig_allocacmp_i_1[0]),
        .DPRA1(ap_sig_allocacmp_i_1[1]),
        .DPRA2(ap_sig_allocacmp_i_1[2]),
        .DPRA3(ap_sig_allocacmp_i_1[3]),
        .DPRA4(1'b0),
        .SPO(q10[28]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out__0[24]));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    mem_reg_0_15_28_28_i_1__0
       (.I0(s_axi_control_WSTRB[3]),
        .I1(ar_hs__0),
        .I2(s_axi_control_WVALID),
        .I3(tmp_product),
        .I4(\q1_reg[0]_1 ),
        .I5(s_axi_control_WDATA[28]),
        .O(mem_reg_0_15_28_28_i_1__0_n_0));
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_b/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "29" *) 
  (* ram_slice_end = "29" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_29_29
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(mem_reg_0_15_29_29_i_1__0_n_0),
        .DPO(q00[29]),
        .DPRA0(ap_sig_allocacmp_i_1[0]),
        .DPRA1(ap_sig_allocacmp_i_1[1]),
        .DPRA2(ap_sig_allocacmp_i_1[2]),
        .DPRA3(ap_sig_allocacmp_i_1[3]),
        .DPRA4(1'b0),
        .SPO(q10[29]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out__0[24]));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    mem_reg_0_15_29_29_i_1__0
       (.I0(s_axi_control_WSTRB[3]),
        .I1(ar_hs__0),
        .I2(s_axi_control_WVALID),
        .I3(tmp_product),
        .I4(\q1_reg[0]_1 ),
        .I5(s_axi_control_WDATA[29]),
        .O(mem_reg_0_15_29_29_i_1__0_n_0));
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_b/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_2_2
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_control_WDATA[2]),
        .DPO(q00[2]),
        .DPRA0(ap_sig_allocacmp_i_1[0]),
        .DPRA1(ap_sig_allocacmp_i_1[1]),
        .DPRA2(ap_sig_allocacmp_i_1[2]),
        .DPRA3(ap_sig_allocacmp_i_1[3]),
        .DPRA4(1'b0),
        .SPO(q10[2]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out__0[0]));
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_b/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "30" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_30_30
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(mem_reg_0_15_30_30_i_1__0_n_0),
        .DPO(q00[30]),
        .DPRA0(ap_sig_allocacmp_i_1[0]),
        .DPRA1(ap_sig_allocacmp_i_1[1]),
        .DPRA2(ap_sig_allocacmp_i_1[2]),
        .DPRA3(ap_sig_allocacmp_i_1[3]),
        .DPRA4(1'b0),
        .SPO(q10[30]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out__0[24]));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    mem_reg_0_15_30_30_i_1__0
       (.I0(s_axi_control_WSTRB[3]),
        .I1(ar_hs__0),
        .I2(s_axi_control_WVALID),
        .I3(tmp_product),
        .I4(\q1_reg[0]_1 ),
        .I5(s_axi_control_WDATA[30]),
        .O(mem_reg_0_15_30_30_i_1__0_n_0));
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_b/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "31" *) 
  (* ram_slice_end = "31" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_31_31
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(mem_reg_0_15_31_31_i_1__0_n_0),
        .DPO(q00[31]),
        .DPRA0(ap_sig_allocacmp_i_1[0]),
        .DPRA1(ap_sig_allocacmp_i_1[1]),
        .DPRA2(ap_sig_allocacmp_i_1[2]),
        .DPRA3(ap_sig_allocacmp_i_1[3]),
        .DPRA4(1'b0),
        .SPO(q10[31]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out__0[24]));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    mem_reg_0_15_31_31_i_1__0
       (.I0(s_axi_control_WSTRB[3]),
        .I1(ar_hs__0),
        .I2(s_axi_control_WVALID),
        .I3(tmp_product),
        .I4(\q1_reg[0]_1 ),
        .I5(s_axi_control_WDATA[31]),
        .O(mem_reg_0_15_31_31_i_1__0_n_0));
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_b/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_3_3
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_control_WDATA[3]),
        .DPO(q00[3]),
        .DPRA0(ap_sig_allocacmp_i_1[0]),
        .DPRA1(ap_sig_allocacmp_i_1[1]),
        .DPRA2(ap_sig_allocacmp_i_1[2]),
        .DPRA3(ap_sig_allocacmp_i_1[3]),
        .DPRA4(1'b0),
        .SPO(q10[3]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out__0[0]));
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_b/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_4_4
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_control_WDATA[4]),
        .DPO(q00[4]),
        .DPRA0(ap_sig_allocacmp_i_1[0]),
        .DPRA1(ap_sig_allocacmp_i_1[1]),
        .DPRA2(ap_sig_allocacmp_i_1[2]),
        .DPRA3(ap_sig_allocacmp_i_1[3]),
        .DPRA4(1'b0),
        .SPO(q10[4]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out__0[0]));
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_b/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_5_5
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_control_WDATA[5]),
        .DPO(q00[5]),
        .DPRA0(ap_sig_allocacmp_i_1[0]),
        .DPRA1(ap_sig_allocacmp_i_1[1]),
        .DPRA2(ap_sig_allocacmp_i_1[2]),
        .DPRA3(ap_sig_allocacmp_i_1[3]),
        .DPRA4(1'b0),
        .SPO(q10[5]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out__0[0]));
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_b/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_6_6
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_control_WDATA[6]),
        .DPO(q00[6]),
        .DPRA0(ap_sig_allocacmp_i_1[0]),
        .DPRA1(ap_sig_allocacmp_i_1[1]),
        .DPRA2(ap_sig_allocacmp_i_1[2]),
        .DPRA3(ap_sig_allocacmp_i_1[3]),
        .DPRA4(1'b0),
        .SPO(q10[6]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out__0[0]));
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_b/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_7_7
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_control_WDATA[7]),
        .DPO(q00[7]),
        .DPRA0(ap_sig_allocacmp_i_1[0]),
        .DPRA1(ap_sig_allocacmp_i_1[1]),
        .DPRA2(ap_sig_allocacmp_i_1[2]),
        .DPRA3(ap_sig_allocacmp_i_1[3]),
        .DPRA4(1'b0),
        .SPO(q10[7]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out__0[0]));
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_b/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "8" *) 
  (* ram_slice_end = "8" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_8_8
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_control_WDATA[8]),
        .DPO(q00[8]),
        .DPRA0(ap_sig_allocacmp_i_1[0]),
        .DPRA1(ap_sig_allocacmp_i_1[1]),
        .DPRA2(ap_sig_allocacmp_i_1[2]),
        .DPRA3(ap_sig_allocacmp_i_1[3]),
        .DPRA4(1'b0),
        .SPO(q10[8]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out__0[8]));
  LUT6 #(
    .INIT(64'h0000800080008000)) 
    mem_reg_0_15_8_8_i_1__0
       (.I0(s_axi_control_WSTRB[1]),
        .I1(\q1_reg[0]_1 ),
        .I2(tmp_product),
        .I3(s_axi_control_WVALID),
        .I4(\q1_reg[0]_0 ),
        .I5(s_axi_control_ARVALID),
        .O(p_0_in0_out__0[8]));
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "control_s_axi_U/int_b/mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "9" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    mem_reg_0_15_9_9
       (.A0(int_a_address1[0]),
        .A1(int_a_address1[1]),
        .A2(int_a_address1[2]),
        .A3(int_a_address1[3]),
        .A4(1'b0),
        .D(s_axi_control_WDATA[9]),
        .DPO(q00[9]),
        .DPRA0(ap_sig_allocacmp_i_1[0]),
        .DPRA1(ap_sig_allocacmp_i_1[1]),
        .DPRA2(ap_sig_allocacmp_i_1[2]),
        .DPRA3(ap_sig_allocacmp_i_1[3]),
        .DPRA4(1'b0),
        .SPO(q10[9]),
        .WCLK(ap_clk),
        .WE(p_0_in0_out__0[8]));
  LUT4 #(
    .INIT(16'hF888)) 
    \q1[31]_i_1__0 
       (.I0(s_axi_control_WVALID),
        .I1(\q1_reg[0]_1 ),
        .I2(\q1_reg[0]_0 ),
        .I3(s_axi_control_ARVALID),
        .O(int_b_ce1));
  FDRE \q1_reg[0] 
       (.C(ap_clk),
        .CE(int_b_ce1),
        .D(q10[0]),
        .Q(\q1_reg[9]_0 [0]),
        .R(1'b0));
  FDRE \q1_reg[10] 
       (.C(ap_clk),
        .CE(int_b_ce1),
        .D(q10[10]),
        .Q(\q1_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \q1_reg[11] 
       (.C(ap_clk),
        .CE(int_b_ce1),
        .D(q10[11]),
        .Q(\q1_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \q1_reg[12] 
       (.C(ap_clk),
        .CE(int_b_ce1),
        .D(q10[12]),
        .Q(\q1_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \q1_reg[13] 
       (.C(ap_clk),
        .CE(int_b_ce1),
        .D(q10[13]),
        .Q(\q1_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \q1_reg[14] 
       (.C(ap_clk),
        .CE(int_b_ce1),
        .D(q10[14]),
        .Q(\q1_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \q1_reg[15] 
       (.C(ap_clk),
        .CE(int_b_ce1),
        .D(q10[15]),
        .Q(\q1_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \q1_reg[16] 
       (.C(ap_clk),
        .CE(int_b_ce1),
        .D(q10[16]),
        .Q(\q1_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \q1_reg[17] 
       (.C(ap_clk),
        .CE(int_b_ce1),
        .D(q10[17]),
        .Q(\q1_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \q1_reg[18] 
       (.C(ap_clk),
        .CE(int_b_ce1),
        .D(q10[18]),
        .Q(\q1_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \q1_reg[19] 
       (.C(ap_clk),
        .CE(int_b_ce1),
        .D(q10[19]),
        .Q(\q1_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \q1_reg[1] 
       (.C(ap_clk),
        .CE(int_b_ce1),
        .D(q10[1]),
        .Q(\q1_reg[9]_0 [1]),
        .R(1'b0));
  FDRE \q1_reg[20] 
       (.C(ap_clk),
        .CE(int_b_ce1),
        .D(q10[20]),
        .Q(\q1_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \q1_reg[21] 
       (.C(ap_clk),
        .CE(int_b_ce1),
        .D(q10[21]),
        .Q(\q1_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \q1_reg[22] 
       (.C(ap_clk),
        .CE(int_b_ce1),
        .D(q10[22]),
        .Q(\q1_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \q1_reg[23] 
       (.C(ap_clk),
        .CE(int_b_ce1),
        .D(q10[23]),
        .Q(\q1_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \q1_reg[24] 
       (.C(ap_clk),
        .CE(int_b_ce1),
        .D(q10[24]),
        .Q(\q1_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \q1_reg[25] 
       (.C(ap_clk),
        .CE(int_b_ce1),
        .D(q10[25]),
        .Q(\q1_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \q1_reg[26] 
       (.C(ap_clk),
        .CE(int_b_ce1),
        .D(q10[26]),
        .Q(\q1_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \q1_reg[27] 
       (.C(ap_clk),
        .CE(int_b_ce1),
        .D(q10[27]),
        .Q(\q1_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \q1_reg[28] 
       (.C(ap_clk),
        .CE(int_b_ce1),
        .D(q10[28]),
        .Q(\q1_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \q1_reg[29] 
       (.C(ap_clk),
        .CE(int_b_ce1),
        .D(q10[29]),
        .Q(\q1_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \q1_reg[2] 
       (.C(ap_clk),
        .CE(int_b_ce1),
        .D(q10[2]),
        .Q(\q1_reg[9]_0 [2]),
        .R(1'b0));
  FDRE \q1_reg[30] 
       (.C(ap_clk),
        .CE(int_b_ce1),
        .D(q10[30]),
        .Q(\q1_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \q1_reg[31] 
       (.C(ap_clk),
        .CE(int_b_ce1),
        .D(q10[31]),
        .Q(\q1_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \q1_reg[3] 
       (.C(ap_clk),
        .CE(int_b_ce1),
        .D(q10[3]),
        .Q(\q1_reg[9]_0 [3]),
        .R(1'b0));
  FDRE \q1_reg[4] 
       (.C(ap_clk),
        .CE(int_b_ce1),
        .D(q10[4]),
        .Q(\q1_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \q1_reg[5] 
       (.C(ap_clk),
        .CE(int_b_ce1),
        .D(q10[5]),
        .Q(\q1_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \q1_reg[6] 
       (.C(ap_clk),
        .CE(int_b_ce1),
        .D(q10[6]),
        .Q(\q1_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \q1_reg[7] 
       (.C(ap_clk),
        .CE(int_b_ce1),
        .D(q10[7]),
        .Q(\q1_reg[9]_0 [4]),
        .R(1'b0));
  FDRE \q1_reg[8] 
       (.C(ap_clk),
        .CE(int_b_ce1),
        .D(q10[8]),
        .Q(\q1_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \q1_reg[9] 
       (.C(ap_clk),
        .CE(int_b_ce1),
        .D(q10[9]),
        .Q(\q1_reg[9]_0 [5]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \rdata[10]_i_1 
       (.I0(\q1_reg_n_0_[10] ),
        .I1(\rdata_reg[4] ),
        .I2(\rdata_reg[4]_0 ),
        .I3(\rdata_reg[31] [4]),
        .I4(Q[4]),
        .I5(\rdata_reg[4]_1 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \rdata[11]_i_1 
       (.I0(\q1_reg_n_0_[11] ),
        .I1(\rdata_reg[4] ),
        .I2(\rdata_reg[4]_0 ),
        .I3(\rdata_reg[31] [5]),
        .I4(Q[5]),
        .I5(\rdata_reg[4]_1 ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \rdata[12]_i_1 
       (.I0(\q1_reg_n_0_[12] ),
        .I1(\rdata_reg[4] ),
        .I2(\rdata_reg[4]_0 ),
        .I3(\rdata_reg[31] [6]),
        .I4(Q[6]),
        .I5(\rdata_reg[4]_1 ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \rdata[13]_i_1 
       (.I0(\q1_reg_n_0_[13] ),
        .I1(\rdata_reg[4] ),
        .I2(\rdata_reg[4]_0 ),
        .I3(\rdata_reg[31] [7]),
        .I4(Q[7]),
        .I5(\rdata_reg[4]_1 ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \rdata[14]_i_1 
       (.I0(\q1_reg_n_0_[14] ),
        .I1(\rdata_reg[4] ),
        .I2(\rdata_reg[4]_0 ),
        .I3(\rdata_reg[31] [8]),
        .I4(Q[8]),
        .I5(\rdata_reg[4]_1 ),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \rdata[15]_i_1 
       (.I0(\q1_reg_n_0_[15] ),
        .I1(\rdata_reg[4] ),
        .I2(\rdata_reg[4]_0 ),
        .I3(\rdata_reg[31] [9]),
        .I4(Q[9]),
        .I5(\rdata_reg[4]_1 ),
        .O(D[9]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \rdata[16]_i_1 
       (.I0(\q1_reg_n_0_[16] ),
        .I1(\rdata_reg[4] ),
        .I2(\rdata_reg[4]_0 ),
        .I3(\rdata_reg[31] [10]),
        .I4(Q[10]),
        .I5(\rdata_reg[4]_1 ),
        .O(D[10]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \rdata[17]_i_1 
       (.I0(\q1_reg_n_0_[17] ),
        .I1(\rdata_reg[4] ),
        .I2(\rdata_reg[4]_0 ),
        .I3(\rdata_reg[31] [11]),
        .I4(Q[11]),
        .I5(\rdata_reg[4]_1 ),
        .O(D[11]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \rdata[18]_i_1 
       (.I0(\q1_reg_n_0_[18] ),
        .I1(\rdata_reg[4] ),
        .I2(\rdata_reg[4]_0 ),
        .I3(\rdata_reg[31] [12]),
        .I4(Q[12]),
        .I5(\rdata_reg[4]_1 ),
        .O(D[12]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \rdata[19]_i_1 
       (.I0(\q1_reg_n_0_[19] ),
        .I1(\rdata_reg[4] ),
        .I2(\rdata_reg[4]_0 ),
        .I3(\rdata_reg[31] [13]),
        .I4(Q[13]),
        .I5(\rdata_reg[4]_1 ),
        .O(D[13]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \rdata[20]_i_1 
       (.I0(\q1_reg_n_0_[20] ),
        .I1(\rdata_reg[4] ),
        .I2(\rdata_reg[4]_0 ),
        .I3(\rdata_reg[31] [14]),
        .I4(Q[14]),
        .I5(\rdata_reg[4]_1 ),
        .O(D[14]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \rdata[21]_i_1 
       (.I0(\q1_reg_n_0_[21] ),
        .I1(\rdata_reg[4] ),
        .I2(\rdata_reg[4]_0 ),
        .I3(\rdata_reg[31] [15]),
        .I4(Q[15]),
        .I5(\rdata_reg[4]_1 ),
        .O(D[15]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \rdata[22]_i_1 
       (.I0(\q1_reg_n_0_[22] ),
        .I1(\rdata_reg[4] ),
        .I2(\rdata_reg[4]_0 ),
        .I3(\rdata_reg[31] [16]),
        .I4(Q[16]),
        .I5(\rdata_reg[4]_1 ),
        .O(D[16]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \rdata[23]_i_1 
       (.I0(\q1_reg_n_0_[23] ),
        .I1(\rdata_reg[4] ),
        .I2(\rdata_reg[4]_0 ),
        .I3(\rdata_reg[31] [17]),
        .I4(Q[17]),
        .I5(\rdata_reg[4]_1 ),
        .O(D[17]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \rdata[24]_i_1 
       (.I0(\q1_reg_n_0_[24] ),
        .I1(\rdata_reg[4] ),
        .I2(\rdata_reg[4]_0 ),
        .I3(\rdata_reg[31] [18]),
        .I4(Q[18]),
        .I5(\rdata_reg[4]_1 ),
        .O(D[18]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \rdata[25]_i_1 
       (.I0(\q1_reg_n_0_[25] ),
        .I1(\rdata_reg[4] ),
        .I2(\rdata_reg[4]_0 ),
        .I3(\rdata_reg[31] [19]),
        .I4(Q[19]),
        .I5(\rdata_reg[4]_1 ),
        .O(D[19]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \rdata[26]_i_1 
       (.I0(\q1_reg_n_0_[26] ),
        .I1(\rdata_reg[4] ),
        .I2(\rdata_reg[4]_0 ),
        .I3(\rdata_reg[31] [20]),
        .I4(Q[20]),
        .I5(\rdata_reg[4]_1 ),
        .O(D[20]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \rdata[27]_i_1 
       (.I0(\q1_reg_n_0_[27] ),
        .I1(\rdata_reg[4] ),
        .I2(\rdata_reg[4]_0 ),
        .I3(\rdata_reg[31] [21]),
        .I4(Q[21]),
        .I5(\rdata_reg[4]_1 ),
        .O(D[21]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \rdata[28]_i_1 
       (.I0(\q1_reg_n_0_[28] ),
        .I1(\rdata_reg[4] ),
        .I2(\rdata_reg[4]_0 ),
        .I3(\rdata_reg[31] [22]),
        .I4(Q[22]),
        .I5(\rdata_reg[4]_1 ),
        .O(D[22]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \rdata[29]_i_1 
       (.I0(\q1_reg_n_0_[29] ),
        .I1(\rdata_reg[4] ),
        .I2(\rdata_reg[4]_0 ),
        .I3(\rdata_reg[31] [23]),
        .I4(Q[23]),
        .I5(\rdata_reg[4]_1 ),
        .O(D[23]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \rdata[30]_i_1 
       (.I0(\q1_reg_n_0_[30] ),
        .I1(\rdata_reg[4] ),
        .I2(\rdata_reg[4]_0 ),
        .I3(\rdata_reg[31] [24]),
        .I4(Q[24]),
        .I5(\rdata_reg[4]_1 ),
        .O(D[24]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \rdata[31]_i_2 
       (.I0(\q1_reg_n_0_[31] ),
        .I1(\rdata_reg[4] ),
        .I2(\rdata_reg[4]_0 ),
        .I3(\rdata_reg[31] [25]),
        .I4(Q[25]),
        .I5(\rdata_reg[4]_1 ),
        .O(D[25]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \rdata[4]_i_1 
       (.I0(\q1_reg_n_0_[4] ),
        .I1(\rdata_reg[4] ),
        .I2(\rdata_reg[4]_0 ),
        .I3(\rdata_reg[31] [0]),
        .I4(Q[0]),
        .I5(\rdata_reg[4]_1 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \rdata[5]_i_1 
       (.I0(\q1_reg_n_0_[5] ),
        .I1(\rdata_reg[4] ),
        .I2(\rdata_reg[4]_0 ),
        .I3(\rdata_reg[31] [1]),
        .I4(Q[1]),
        .I5(\rdata_reg[4]_1 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \rdata[6]_i_1 
       (.I0(\q1_reg_n_0_[6] ),
        .I1(\rdata_reg[4] ),
        .I2(\rdata_reg[4]_0 ),
        .I3(\rdata_reg[31] [2]),
        .I4(Q[2]),
        .I5(\rdata_reg[4]_1 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \rdata[8]_i_1 
       (.I0(\q1_reg_n_0_[8] ),
        .I1(\rdata_reg[4] ),
        .I2(\rdata_reg[4]_0 ),
        .I3(\rdata_reg[31] [3]),
        .I4(Q[3]),
        .I5(\rdata_reg[4]_1 ),
        .O(D[3]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_muladd_flow_control_loop_pipe
   (ap_loop_init,
    D,
    ap_condition_151,
    E,
    icmp_ln8_fu_105_p2,
    ap_rst_n_0,
    ap_clk,
    Q,
    ap_start,
    ap_rst_n);
  output ap_loop_init;
  output [4:0]D;
  output ap_condition_151;
  output [0:0]E;
  output icmp_ln8_fu_105_p2;
  output ap_rst_n_0;
  input ap_clk;
  input [4:0]Q;
  input ap_start;
  input ap_rst_n;

  wire [4:0]D;
  wire [0:0]E;
  wire [4:0]Q;
  wire ap_clk;
  wire ap_condition_151;
  wire ap_loop_init;
  wire ap_loop_init_i_1_n_0;
  wire ap_rst_n;
  wire ap_rst_n_0;
  wire ap_start;
  wire icmp_ln8_fu_105_p2;

  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h20)) 
    ap_enable_reg_pp0_iter1_i_1
       (.I0(ap_rst_n),
        .I1(icmp_ln8_fu_105_p2),
        .I2(ap_start),
        .O(ap_rst_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hF5DD)) 
    ap_loop_init_i_1
       (.I0(ap_rst_n),
        .I1(ap_loop_init),
        .I2(icmp_ln8_fu_105_p2),
        .I3(ap_start),
        .O(ap_loop_init_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    ap_loop_init_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_init_i_1_n_0),
        .Q(ap_loop_init),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFF0000FFFFFFEF)) 
    \i_fu_62[0]_i_1 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(Q[1]),
        .I4(ap_condition_151),
        .I5(Q[0]),
        .O(D[0]));
  LUT3 #(
    .INIT(8'h06)) 
    \i_fu_62[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(ap_condition_151),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0708)) 
    \i_fu_62[2]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(ap_condition_151),
        .I3(Q[2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h007800F0)) 
    \i_fu_62[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(ap_condition_151),
        .I4(Q[2]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB0)) 
    \i_fu_62[4]_i_1 
       (.I0(ap_loop_init),
        .I1(icmp_ln8_fu_105_p2),
        .I2(ap_start),
        .O(E));
  LUT6 #(
    .INIT(64'h070F0F0E08000000)) 
    \i_fu_62[4]_i_2 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(ap_condition_151),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    int_ap_start_i_2
       (.I0(Q[1]),
        .I1(Q[4]),
        .I2(Q[0]),
        .I3(Q[3]),
        .I4(ap_condition_151),
        .I5(Q[2]),
        .O(icmp_ln8_fu_105_p2));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_fu_58[0]_i_1 
       (.I0(ap_loop_init),
        .I1(ap_start),
        .O(ap_condition_151));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_muladd_mul_32s_32s_32_2_1
   (D,
    ap_start,
    ap_clk,
    q00,
    dout_reg_0);
  output [31:0]D;
  input ap_start;
  input ap_clk;
  input [31:0]q00;
  input [31:0]dout_reg_0;

  wire [31:0]D;
  wire ap_clk;
  wire ap_start;
  wire \dout_reg[16]__0_n_0 ;
  wire [31:0]dout_reg_0;
  wire dout_reg_n_100;
  wire dout_reg_n_101;
  wire dout_reg_n_102;
  wire dout_reg_n_103;
  wire dout_reg_n_104;
  wire dout_reg_n_105;
  wire dout_reg_n_58;
  wire dout_reg_n_59;
  wire dout_reg_n_60;
  wire dout_reg_n_61;
  wire dout_reg_n_62;
  wire dout_reg_n_63;
  wire dout_reg_n_64;
  wire dout_reg_n_65;
  wire dout_reg_n_66;
  wire dout_reg_n_67;
  wire dout_reg_n_68;
  wire dout_reg_n_69;
  wire dout_reg_n_70;
  wire dout_reg_n_71;
  wire dout_reg_n_72;
  wire dout_reg_n_73;
  wire dout_reg_n_74;
  wire dout_reg_n_75;
  wire dout_reg_n_76;
  wire dout_reg_n_77;
  wire dout_reg_n_78;
  wire dout_reg_n_79;
  wire dout_reg_n_80;
  wire dout_reg_n_81;
  wire dout_reg_n_82;
  wire dout_reg_n_83;
  wire dout_reg_n_84;
  wire dout_reg_n_85;
  wire dout_reg_n_86;
  wire dout_reg_n_87;
  wire dout_reg_n_88;
  wire dout_reg_n_89;
  wire dout_reg_n_90;
  wire dout_reg_n_91;
  wire dout_reg_n_92;
  wire dout_reg_n_93;
  wire dout_reg_n_94;
  wire dout_reg_n_95;
  wire dout_reg_n_96;
  wire dout_reg_n_97;
  wire dout_reg_n_98;
  wire dout_reg_n_99;
  wire \mul_ln10_reg_187[19]_i_2_n_0 ;
  wire \mul_ln10_reg_187[19]_i_3_n_0 ;
  wire \mul_ln10_reg_187[19]_i_4_n_0 ;
  wire \mul_ln10_reg_187[23]_i_2_n_0 ;
  wire \mul_ln10_reg_187[23]_i_3_n_0 ;
  wire \mul_ln10_reg_187[23]_i_4_n_0 ;
  wire \mul_ln10_reg_187[23]_i_5_n_0 ;
  wire \mul_ln10_reg_187[27]_i_2_n_0 ;
  wire \mul_ln10_reg_187[27]_i_3_n_0 ;
  wire \mul_ln10_reg_187[27]_i_4_n_0 ;
  wire \mul_ln10_reg_187[27]_i_5_n_0 ;
  wire \mul_ln10_reg_187[31]_i_2_n_0 ;
  wire \mul_ln10_reg_187[31]_i_3_n_0 ;
  wire \mul_ln10_reg_187[31]_i_4_n_0 ;
  wire \mul_ln10_reg_187[31]_i_5_n_0 ;
  wire \mul_ln10_reg_187_reg[19]_i_1_n_0 ;
  wire \mul_ln10_reg_187_reg[19]_i_1_n_1 ;
  wire \mul_ln10_reg_187_reg[19]_i_1_n_2 ;
  wire \mul_ln10_reg_187_reg[19]_i_1_n_3 ;
  wire \mul_ln10_reg_187_reg[23]_i_1_n_0 ;
  wire \mul_ln10_reg_187_reg[23]_i_1_n_1 ;
  wire \mul_ln10_reg_187_reg[23]_i_1_n_2 ;
  wire \mul_ln10_reg_187_reg[23]_i_1_n_3 ;
  wire \mul_ln10_reg_187_reg[27]_i_1_n_0 ;
  wire \mul_ln10_reg_187_reg[27]_i_1_n_1 ;
  wire \mul_ln10_reg_187_reg[27]_i_1_n_2 ;
  wire \mul_ln10_reg_187_reg[27]_i_1_n_3 ;
  wire \mul_ln10_reg_187_reg[31]_i_1_n_1 ;
  wire \mul_ln10_reg_187_reg[31]_i_1_n_2 ;
  wire \mul_ln10_reg_187_reg[31]_i_1_n_3 ;
  wire [31:0]q00;
  wire tmp_product__0_n_100;
  wire tmp_product__0_n_101;
  wire tmp_product__0_n_102;
  wire tmp_product__0_n_103;
  wire tmp_product__0_n_104;
  wire tmp_product__0_n_105;
  wire tmp_product__0_n_106;
  wire tmp_product__0_n_107;
  wire tmp_product__0_n_108;
  wire tmp_product__0_n_109;
  wire tmp_product__0_n_110;
  wire tmp_product__0_n_111;
  wire tmp_product__0_n_112;
  wire tmp_product__0_n_113;
  wire tmp_product__0_n_114;
  wire tmp_product__0_n_115;
  wire tmp_product__0_n_116;
  wire tmp_product__0_n_117;
  wire tmp_product__0_n_118;
  wire tmp_product__0_n_119;
  wire tmp_product__0_n_120;
  wire tmp_product__0_n_121;
  wire tmp_product__0_n_122;
  wire tmp_product__0_n_123;
  wire tmp_product__0_n_124;
  wire tmp_product__0_n_125;
  wire tmp_product__0_n_126;
  wire tmp_product__0_n_127;
  wire tmp_product__0_n_128;
  wire tmp_product__0_n_129;
  wire tmp_product__0_n_130;
  wire tmp_product__0_n_131;
  wire tmp_product__0_n_132;
  wire tmp_product__0_n_133;
  wire tmp_product__0_n_134;
  wire tmp_product__0_n_135;
  wire tmp_product__0_n_136;
  wire tmp_product__0_n_137;
  wire tmp_product__0_n_138;
  wire tmp_product__0_n_139;
  wire tmp_product__0_n_140;
  wire tmp_product__0_n_141;
  wire tmp_product__0_n_142;
  wire tmp_product__0_n_143;
  wire tmp_product__0_n_144;
  wire tmp_product__0_n_145;
  wire tmp_product__0_n_146;
  wire tmp_product__0_n_147;
  wire tmp_product__0_n_148;
  wire tmp_product__0_n_149;
  wire tmp_product__0_n_150;
  wire tmp_product__0_n_151;
  wire tmp_product__0_n_152;
  wire tmp_product__0_n_153;
  wire tmp_product__0_n_58;
  wire tmp_product__0_n_59;
  wire tmp_product__0_n_60;
  wire tmp_product__0_n_61;
  wire tmp_product__0_n_62;
  wire tmp_product__0_n_63;
  wire tmp_product__0_n_64;
  wire tmp_product__0_n_65;
  wire tmp_product__0_n_66;
  wire tmp_product__0_n_67;
  wire tmp_product__0_n_68;
  wire tmp_product__0_n_69;
  wire tmp_product__0_n_70;
  wire tmp_product__0_n_71;
  wire tmp_product__0_n_72;
  wire tmp_product__0_n_73;
  wire tmp_product__0_n_74;
  wire tmp_product__0_n_75;
  wire tmp_product__0_n_76;
  wire tmp_product__0_n_77;
  wire tmp_product__0_n_78;
  wire tmp_product__0_n_79;
  wire tmp_product__0_n_80;
  wire tmp_product__0_n_81;
  wire tmp_product__0_n_82;
  wire tmp_product__0_n_83;
  wire tmp_product__0_n_84;
  wire tmp_product__0_n_85;
  wire tmp_product__0_n_86;
  wire tmp_product__0_n_87;
  wire tmp_product__0_n_88;
  wire tmp_product__0_n_89;
  wire tmp_product__0_n_90;
  wire tmp_product__0_n_91;
  wire tmp_product__0_n_92;
  wire tmp_product__0_n_93;
  wire tmp_product__0_n_94;
  wire tmp_product__0_n_95;
  wire tmp_product__0_n_96;
  wire tmp_product__0_n_97;
  wire tmp_product__0_n_98;
  wire tmp_product__0_n_99;
  wire tmp_product_n_100;
  wire tmp_product_n_101;
  wire tmp_product_n_102;
  wire tmp_product_n_103;
  wire tmp_product_n_104;
  wire tmp_product_n_105;
  wire tmp_product_n_106;
  wire tmp_product_n_107;
  wire tmp_product_n_108;
  wire tmp_product_n_109;
  wire tmp_product_n_110;
  wire tmp_product_n_111;
  wire tmp_product_n_112;
  wire tmp_product_n_113;
  wire tmp_product_n_114;
  wire tmp_product_n_115;
  wire tmp_product_n_116;
  wire tmp_product_n_117;
  wire tmp_product_n_118;
  wire tmp_product_n_119;
  wire tmp_product_n_120;
  wire tmp_product_n_121;
  wire tmp_product_n_122;
  wire tmp_product_n_123;
  wire tmp_product_n_124;
  wire tmp_product_n_125;
  wire tmp_product_n_126;
  wire tmp_product_n_127;
  wire tmp_product_n_128;
  wire tmp_product_n_129;
  wire tmp_product_n_130;
  wire tmp_product_n_131;
  wire tmp_product_n_132;
  wire tmp_product_n_133;
  wire tmp_product_n_134;
  wire tmp_product_n_135;
  wire tmp_product_n_136;
  wire tmp_product_n_137;
  wire tmp_product_n_138;
  wire tmp_product_n_139;
  wire tmp_product_n_140;
  wire tmp_product_n_141;
  wire tmp_product_n_142;
  wire tmp_product_n_143;
  wire tmp_product_n_144;
  wire tmp_product_n_145;
  wire tmp_product_n_146;
  wire tmp_product_n_147;
  wire tmp_product_n_148;
  wire tmp_product_n_149;
  wire tmp_product_n_150;
  wire tmp_product_n_151;
  wire tmp_product_n_152;
  wire tmp_product_n_153;
  wire tmp_product_n_58;
  wire tmp_product_n_59;
  wire tmp_product_n_60;
  wire tmp_product_n_61;
  wire tmp_product_n_62;
  wire tmp_product_n_63;
  wire tmp_product_n_64;
  wire tmp_product_n_65;
  wire tmp_product_n_66;
  wire tmp_product_n_67;
  wire tmp_product_n_68;
  wire tmp_product_n_69;
  wire tmp_product_n_70;
  wire tmp_product_n_71;
  wire tmp_product_n_72;
  wire tmp_product_n_73;
  wire tmp_product_n_74;
  wire tmp_product_n_75;
  wire tmp_product_n_76;
  wire tmp_product_n_77;
  wire tmp_product_n_78;
  wire tmp_product_n_79;
  wire tmp_product_n_80;
  wire tmp_product_n_81;
  wire tmp_product_n_82;
  wire tmp_product_n_83;
  wire tmp_product_n_84;
  wire tmp_product_n_85;
  wire tmp_product_n_86;
  wire tmp_product_n_87;
  wire tmp_product_n_88;
  wire tmp_product_n_89;
  wire tmp_product_n_90;
  wire tmp_product_n_91;
  wire tmp_product_n_92;
  wire tmp_product_n_93;
  wire tmp_product_n_94;
  wire tmp_product_n_95;
  wire tmp_product_n_96;
  wire tmp_product_n_97;
  wire tmp_product_n_98;
  wire tmp_product_n_99;
  wire NLW_dout_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_dout_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_dout_reg_OVERFLOW_UNCONNECTED;
  wire NLW_dout_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_dout_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_dout_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_dout_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_dout_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_dout_reg_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_dout_reg_PCOUT_UNCONNECTED;
  wire [3:3]\NLW_mul_ln10_reg_187_reg[31]_i_1_CO_UNCONNECTED ;
  wire NLW_tmp_product_CARRYCASCOUT_UNCONNECTED;
  wire NLW_tmp_product_MULTSIGNOUT_UNCONNECTED;
  wire NLW_tmp_product_OVERFLOW_UNCONNECTED;
  wire NLW_tmp_product_PATTERNBDETECT_UNCONNECTED;
  wire NLW_tmp_product_PATTERNDETECT_UNCONNECTED;
  wire NLW_tmp_product_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_tmp_product_ACOUT_UNCONNECTED;
  wire [17:0]NLW_tmp_product_BCOUT_UNCONNECTED;
  wire [3:0]NLW_tmp_product_CARRYOUT_UNCONNECTED;
  wire NLW_tmp_product__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_tmp_product__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_tmp_product__0_OVERFLOW_UNCONNECTED;
  wire NLW_tmp_product__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_tmp_product__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_tmp_product__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_tmp_product__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_tmp_product__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_tmp_product__0_CARRYOUT_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x15 4}}" *) 
  DSP48E1 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    dout_reg
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,q00[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_dout_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({dout_reg_0[31],dout_reg_0[31],dout_reg_0[31],dout_reg_0[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_dout_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_dout_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_dout_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(ap_start),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(ap_start),
        .CEB2(1'b1),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_dout_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_dout_reg_OVERFLOW_UNCONNECTED),
        .P({dout_reg_n_58,dout_reg_n_59,dout_reg_n_60,dout_reg_n_61,dout_reg_n_62,dout_reg_n_63,dout_reg_n_64,dout_reg_n_65,dout_reg_n_66,dout_reg_n_67,dout_reg_n_68,dout_reg_n_69,dout_reg_n_70,dout_reg_n_71,dout_reg_n_72,dout_reg_n_73,dout_reg_n_74,dout_reg_n_75,dout_reg_n_76,dout_reg_n_77,dout_reg_n_78,dout_reg_n_79,dout_reg_n_80,dout_reg_n_81,dout_reg_n_82,dout_reg_n_83,dout_reg_n_84,dout_reg_n_85,dout_reg_n_86,dout_reg_n_87,dout_reg_n_88,dout_reg_n_89,dout_reg_n_90,dout_reg_n_91,dout_reg_n_92,dout_reg_n_93,dout_reg_n_94,dout_reg_n_95,dout_reg_n_96,dout_reg_n_97,dout_reg_n_98,dout_reg_n_99,dout_reg_n_100,dout_reg_n_101,dout_reg_n_102,dout_reg_n_103,dout_reg_n_104,dout_reg_n_105}),
        .PATTERNBDETECT(NLW_dout_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_dout_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({tmp_product__0_n_106,tmp_product__0_n_107,tmp_product__0_n_108,tmp_product__0_n_109,tmp_product__0_n_110,tmp_product__0_n_111,tmp_product__0_n_112,tmp_product__0_n_113,tmp_product__0_n_114,tmp_product__0_n_115,tmp_product__0_n_116,tmp_product__0_n_117,tmp_product__0_n_118,tmp_product__0_n_119,tmp_product__0_n_120,tmp_product__0_n_121,tmp_product__0_n_122,tmp_product__0_n_123,tmp_product__0_n_124,tmp_product__0_n_125,tmp_product__0_n_126,tmp_product__0_n_127,tmp_product__0_n_128,tmp_product__0_n_129,tmp_product__0_n_130,tmp_product__0_n_131,tmp_product__0_n_132,tmp_product__0_n_133,tmp_product__0_n_134,tmp_product__0_n_135,tmp_product__0_n_136,tmp_product__0_n_137,tmp_product__0_n_138,tmp_product__0_n_139,tmp_product__0_n_140,tmp_product__0_n_141,tmp_product__0_n_142,tmp_product__0_n_143,tmp_product__0_n_144,tmp_product__0_n_145,tmp_product__0_n_146,tmp_product__0_n_147,tmp_product__0_n_148,tmp_product__0_n_149,tmp_product__0_n_150,tmp_product__0_n_151,tmp_product__0_n_152,tmp_product__0_n_153}),
        .PCOUT(NLW_dout_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_dout_reg_UNDERFLOW_UNCONNECTED));
  FDRE \dout_reg[0]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_product__0_n_105),
        .Q(D[0]),
        .R(1'b0));
  FDRE \dout_reg[10]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_product__0_n_95),
        .Q(D[10]),
        .R(1'b0));
  FDRE \dout_reg[11]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_product__0_n_94),
        .Q(D[11]),
        .R(1'b0));
  FDRE \dout_reg[12]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_product__0_n_93),
        .Q(D[12]),
        .R(1'b0));
  FDRE \dout_reg[13]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_product__0_n_92),
        .Q(D[13]),
        .R(1'b0));
  FDRE \dout_reg[14]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_product__0_n_91),
        .Q(D[14]),
        .R(1'b0));
  FDRE \dout_reg[15]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_product__0_n_90),
        .Q(D[15]),
        .R(1'b0));
  FDRE \dout_reg[16]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_product__0_n_89),
        .Q(\dout_reg[16]__0_n_0 ),
        .R(1'b0));
  FDRE \dout_reg[1]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_product__0_n_104),
        .Q(D[1]),
        .R(1'b0));
  FDRE \dout_reg[2]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_product__0_n_103),
        .Q(D[2]),
        .R(1'b0));
  FDRE \dout_reg[3]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_product__0_n_102),
        .Q(D[3]),
        .R(1'b0));
  FDRE \dout_reg[4]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_product__0_n_101),
        .Q(D[4]),
        .R(1'b0));
  FDRE \dout_reg[5]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_product__0_n_100),
        .Q(D[5]),
        .R(1'b0));
  FDRE \dout_reg[6]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_product__0_n_99),
        .Q(D[6]),
        .R(1'b0));
  FDRE \dout_reg[7]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_product__0_n_98),
        .Q(D[7]),
        .R(1'b0));
  FDRE \dout_reg[8]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_product__0_n_97),
        .Q(D[8]),
        .R(1'b0));
  FDRE \dout_reg[9]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_product__0_n_96),
        .Q(D[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_ln10_reg_187[19]_i_2 
       (.I0(dout_reg_n_103),
        .I1(tmp_product_n_103),
        .O(\mul_ln10_reg_187[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_ln10_reg_187[19]_i_3 
       (.I0(dout_reg_n_104),
        .I1(tmp_product_n_104),
        .O(\mul_ln10_reg_187[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_ln10_reg_187[19]_i_4 
       (.I0(dout_reg_n_105),
        .I1(tmp_product_n_105),
        .O(\mul_ln10_reg_187[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_ln10_reg_187[23]_i_2 
       (.I0(dout_reg_n_99),
        .I1(tmp_product_n_99),
        .O(\mul_ln10_reg_187[23]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_ln10_reg_187[23]_i_3 
       (.I0(dout_reg_n_100),
        .I1(tmp_product_n_100),
        .O(\mul_ln10_reg_187[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_ln10_reg_187[23]_i_4 
       (.I0(dout_reg_n_101),
        .I1(tmp_product_n_101),
        .O(\mul_ln10_reg_187[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_ln10_reg_187[23]_i_5 
       (.I0(dout_reg_n_102),
        .I1(tmp_product_n_102),
        .O(\mul_ln10_reg_187[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_ln10_reg_187[27]_i_2 
       (.I0(dout_reg_n_95),
        .I1(tmp_product_n_95),
        .O(\mul_ln10_reg_187[27]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_ln10_reg_187[27]_i_3 
       (.I0(dout_reg_n_96),
        .I1(tmp_product_n_96),
        .O(\mul_ln10_reg_187[27]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_ln10_reg_187[27]_i_4 
       (.I0(dout_reg_n_97),
        .I1(tmp_product_n_97),
        .O(\mul_ln10_reg_187[27]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_ln10_reg_187[27]_i_5 
       (.I0(dout_reg_n_98),
        .I1(tmp_product_n_98),
        .O(\mul_ln10_reg_187[27]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_ln10_reg_187[31]_i_2 
       (.I0(dout_reg_n_91),
        .I1(tmp_product_n_91),
        .O(\mul_ln10_reg_187[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_ln10_reg_187[31]_i_3 
       (.I0(dout_reg_n_92),
        .I1(tmp_product_n_92),
        .O(\mul_ln10_reg_187[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_ln10_reg_187[31]_i_4 
       (.I0(dout_reg_n_93),
        .I1(tmp_product_n_93),
        .O(\mul_ln10_reg_187[31]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_ln10_reg_187[31]_i_5 
       (.I0(dout_reg_n_94),
        .I1(tmp_product_n_94),
        .O(\mul_ln10_reg_187[31]_i_5_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mul_ln10_reg_187_reg[19]_i_1 
       (.CI(1'b0),
        .CO({\mul_ln10_reg_187_reg[19]_i_1_n_0 ,\mul_ln10_reg_187_reg[19]_i_1_n_1 ,\mul_ln10_reg_187_reg[19]_i_1_n_2 ,\mul_ln10_reg_187_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({dout_reg_n_103,dout_reg_n_104,dout_reg_n_105,1'b0}),
        .O(D[19:16]),
        .S({\mul_ln10_reg_187[19]_i_2_n_0 ,\mul_ln10_reg_187[19]_i_3_n_0 ,\mul_ln10_reg_187[19]_i_4_n_0 ,\dout_reg[16]__0_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mul_ln10_reg_187_reg[23]_i_1 
       (.CI(\mul_ln10_reg_187_reg[19]_i_1_n_0 ),
        .CO({\mul_ln10_reg_187_reg[23]_i_1_n_0 ,\mul_ln10_reg_187_reg[23]_i_1_n_1 ,\mul_ln10_reg_187_reg[23]_i_1_n_2 ,\mul_ln10_reg_187_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({dout_reg_n_99,dout_reg_n_100,dout_reg_n_101,dout_reg_n_102}),
        .O(D[23:20]),
        .S({\mul_ln10_reg_187[23]_i_2_n_0 ,\mul_ln10_reg_187[23]_i_3_n_0 ,\mul_ln10_reg_187[23]_i_4_n_0 ,\mul_ln10_reg_187[23]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mul_ln10_reg_187_reg[27]_i_1 
       (.CI(\mul_ln10_reg_187_reg[23]_i_1_n_0 ),
        .CO({\mul_ln10_reg_187_reg[27]_i_1_n_0 ,\mul_ln10_reg_187_reg[27]_i_1_n_1 ,\mul_ln10_reg_187_reg[27]_i_1_n_2 ,\mul_ln10_reg_187_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({dout_reg_n_95,dout_reg_n_96,dout_reg_n_97,dout_reg_n_98}),
        .O(D[27:24]),
        .S({\mul_ln10_reg_187[27]_i_2_n_0 ,\mul_ln10_reg_187[27]_i_3_n_0 ,\mul_ln10_reg_187[27]_i_4_n_0 ,\mul_ln10_reg_187[27]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mul_ln10_reg_187_reg[31]_i_1 
       (.CI(\mul_ln10_reg_187_reg[27]_i_1_n_0 ),
        .CO({\NLW_mul_ln10_reg_187_reg[31]_i_1_CO_UNCONNECTED [3],\mul_ln10_reg_187_reg[31]_i_1_n_1 ,\mul_ln10_reg_187_reg[31]_i_1_n_2 ,\mul_ln10_reg_187_reg[31]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,dout_reg_n_92,dout_reg_n_93,dout_reg_n_94}),
        .O(D[31:28]),
        .S({\mul_ln10_reg_187[31]_i_2_n_0 ,\mul_ln10_reg_187[31]_i_3_n_0 ,\mul_ln10_reg_187[31]_i_4_n_0 ,\mul_ln10_reg_187[31]_i_5_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 15x18 4}}" *) 
  DSP48E1 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    tmp_product
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dout_reg_0[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_tmp_product_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({q00[31],q00[31],q00[31],q00[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_tmp_product_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_tmp_product_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_tmp_product_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(ap_start),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(ap_start),
        .CEB2(1'b1),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_tmp_product_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_tmp_product_OVERFLOW_UNCONNECTED),
        .P({tmp_product_n_58,tmp_product_n_59,tmp_product_n_60,tmp_product_n_61,tmp_product_n_62,tmp_product_n_63,tmp_product_n_64,tmp_product_n_65,tmp_product_n_66,tmp_product_n_67,tmp_product_n_68,tmp_product_n_69,tmp_product_n_70,tmp_product_n_71,tmp_product_n_72,tmp_product_n_73,tmp_product_n_74,tmp_product_n_75,tmp_product_n_76,tmp_product_n_77,tmp_product_n_78,tmp_product_n_79,tmp_product_n_80,tmp_product_n_81,tmp_product_n_82,tmp_product_n_83,tmp_product_n_84,tmp_product_n_85,tmp_product_n_86,tmp_product_n_87,tmp_product_n_88,tmp_product_n_89,tmp_product_n_90,tmp_product_n_91,tmp_product_n_92,tmp_product_n_93,tmp_product_n_94,tmp_product_n_95,tmp_product_n_96,tmp_product_n_97,tmp_product_n_98,tmp_product_n_99,tmp_product_n_100,tmp_product_n_101,tmp_product_n_102,tmp_product_n_103,tmp_product_n_104,tmp_product_n_105}),
        .PATTERNBDETECT(NLW_tmp_product_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_tmp_product_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({tmp_product_n_106,tmp_product_n_107,tmp_product_n_108,tmp_product_n_109,tmp_product_n_110,tmp_product_n_111,tmp_product_n_112,tmp_product_n_113,tmp_product_n_114,tmp_product_n_115,tmp_product_n_116,tmp_product_n_117,tmp_product_n_118,tmp_product_n_119,tmp_product_n_120,tmp_product_n_121,tmp_product_n_122,tmp_product_n_123,tmp_product_n_124,tmp_product_n_125,tmp_product_n_126,tmp_product_n_127,tmp_product_n_128,tmp_product_n_129,tmp_product_n_130,tmp_product_n_131,tmp_product_n_132,tmp_product_n_133,tmp_product_n_134,tmp_product_n_135,tmp_product_n_136,tmp_product_n_137,tmp_product_n_138,tmp_product_n_139,tmp_product_n_140,tmp_product_n_141,tmp_product_n_142,tmp_product_n_143,tmp_product_n_144,tmp_product_n_145,tmp_product_n_146,tmp_product_n_147,tmp_product_n_148,tmp_product_n_149,tmp_product_n_150,tmp_product_n_151,tmp_product_n_152,tmp_product_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_tmp_product_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 4}}" *) 
  DSP48E1 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    tmp_product__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,q00[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_tmp_product__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,dout_reg_0[16:0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_tmp_product__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_tmp_product__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_tmp_product__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(ap_start),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(ap_start),
        .CEB2(1'b1),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_tmp_product__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_tmp_product__0_OVERFLOW_UNCONNECTED),
        .P({tmp_product__0_n_58,tmp_product__0_n_59,tmp_product__0_n_60,tmp_product__0_n_61,tmp_product__0_n_62,tmp_product__0_n_63,tmp_product__0_n_64,tmp_product__0_n_65,tmp_product__0_n_66,tmp_product__0_n_67,tmp_product__0_n_68,tmp_product__0_n_69,tmp_product__0_n_70,tmp_product__0_n_71,tmp_product__0_n_72,tmp_product__0_n_73,tmp_product__0_n_74,tmp_product__0_n_75,tmp_product__0_n_76,tmp_product__0_n_77,tmp_product__0_n_78,tmp_product__0_n_79,tmp_product__0_n_80,tmp_product__0_n_81,tmp_product__0_n_82,tmp_product__0_n_83,tmp_product__0_n_84,tmp_product__0_n_85,tmp_product__0_n_86,tmp_product__0_n_87,tmp_product__0_n_88,tmp_product__0_n_89,tmp_product__0_n_90,tmp_product__0_n_91,tmp_product__0_n_92,tmp_product__0_n_93,tmp_product__0_n_94,tmp_product__0_n_95,tmp_product__0_n_96,tmp_product__0_n_97,tmp_product__0_n_98,tmp_product__0_n_99,tmp_product__0_n_100,tmp_product__0_n_101,tmp_product__0_n_102,tmp_product__0_n_103,tmp_product__0_n_104,tmp_product__0_n_105}),
        .PATTERNBDETECT(NLW_tmp_product__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_tmp_product__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({tmp_product__0_n_106,tmp_product__0_n_107,tmp_product__0_n_108,tmp_product__0_n_109,tmp_product__0_n_110,tmp_product__0_n_111,tmp_product__0_n_112,tmp_product__0_n_113,tmp_product__0_n_114,tmp_product__0_n_115,tmp_product__0_n_116,tmp_product__0_n_117,tmp_product__0_n_118,tmp_product__0_n_119,tmp_product__0_n_120,tmp_product__0_n_121,tmp_product__0_n_122,tmp_product__0_n_123,tmp_product__0_n_124,tmp_product__0_n_125,tmp_product__0_n_126,tmp_product__0_n_127,tmp_product__0_n_128,tmp_product__0_n_129,tmp_product__0_n_130,tmp_product__0_n_131,tmp_product__0_n_132,tmp_product__0_n_133,tmp_product__0_n_134,tmp_product__0_n_135,tmp_product__0_n_136,tmp_product__0_n_137,tmp_product__0_n_138,tmp_product__0_n_139,tmp_product__0_n_140,tmp_product__0_n_141,tmp_product__0_n_142,tmp_product__0_n_143,tmp_product__0_n_144,tmp_product__0_n_145,tmp_product__0_n_146,tmp_product__0_n_147,tmp_product__0_n_148,tmp_product__0_n_149,tmp_product__0_n_150,tmp_product__0_n_151,tmp_product__0_n_152,tmp_product__0_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_tmp_product__0_UNDERFLOW_UNCONNECTED));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
