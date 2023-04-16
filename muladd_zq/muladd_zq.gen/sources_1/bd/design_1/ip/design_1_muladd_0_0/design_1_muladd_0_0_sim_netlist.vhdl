-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Sun Dec 18 20:53:29 2022
-- Host        : FRONTIER running 64-bit Ubuntu 22.04.1 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/reon/work/xilinx/muladd_zq/muladd_zq.gen/sources_1/bd/design_1/ip/design_1_muladd_0_0/design_1_muladd_0_0_sim_netlist.vhdl
-- Design      : design_1_muladd_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_muladd_0_0_muladd_control_s_axi_ram is
  port (
    D : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \q1_reg[31]_0\ : out STD_LOGIC_VECTOR ( 25 downto 0 );
    int_a_address1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ap_sig_allocacmp_i_1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ap_clk_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \rdata_reg[0]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \rdata_reg[0]_0\ : in STD_LOGIC;
    \rdata_reg[0]_1\ : in STD_LOGIC;
    \q1_reg[0]_0\ : in STD_LOGIC;
    s_axi_control_ARVALID : in STD_LOGIC;
    int_a_read : in STD_LOGIC;
    \rdata_reg[9]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \rdata_reg[1]\ : in STD_LOGIC;
    p_1_in_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \rdata_reg[2]\ : in STD_LOGIC;
    int_ap_ready : in STD_LOGIC;
    interrupt : in STD_LOGIC;
    s_axi_control_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dout_reg : in STD_LOGIC;
    \q1_reg[0]_1\ : in STD_LOGIC;
    s_axi_control_WVALID : in STD_LOGIC;
    s_axi_control_ARADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dout_reg_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ar_hs__0\ : in STD_LOGIC;
    s_axi_control_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dout_reg_1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dout_reg_2 : in STD_LOGIC;
    ap_loop_init : in STD_LOGIC;
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_muladd_0_0_muladd_control_s_axi_ram : entity is "muladd_control_s_axi_ram";
end design_1_muladd_0_0_muladd_control_s_axi_ram;

architecture STRUCTURE of design_1_muladd_0_0_muladd_control_s_axi_ram is
  signal \^ap_sig_allocacmp_i_1\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^int_a_address1\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal int_a_ce1 : STD_LOGIC;
  signal p_0_in0_out : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 24 );
  signal q1 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \q10__0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \rdata[0]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[1]_i_4_n_0\ : STD_LOGIC;
  signal \rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[9]_i_2_n_0\ : STD_LOGIC;
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of mem_reg_0_15_0_0 : label is 512;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of mem_reg_0_15_0_0 : label is "control_s_axi_U/int_a/mem_reg";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of mem_reg_0_15_0_0 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_0_0 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_0_0 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of mem_reg_0_15_0_0 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of mem_reg_0_15_0_0 : label is 15;
  attribute ram_offset : integer;
  attribute ram_offset of mem_reg_0_15_0_0 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of mem_reg_0_15_0_0 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of mem_reg_0_15_0_0 : label is 0;
  attribute RTL_RAM_BITS of mem_reg_0_15_10_10 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_0_15_10_10 : label is "control_s_axi_U/int_a/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_10_10 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_10_10 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_10_10 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_10_10 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_10_10 : label is 15;
  attribute ram_offset of mem_reg_0_15_10_10 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_10_10 : label is 10;
  attribute ram_slice_end of mem_reg_0_15_10_10 : label is 10;
  attribute RTL_RAM_BITS of mem_reg_0_15_11_11 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_0_15_11_11 : label is "control_s_axi_U/int_a/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_11_11 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_11_11 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_11_11 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_11_11 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_11_11 : label is 15;
  attribute ram_offset of mem_reg_0_15_11_11 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_11_11 : label is 11;
  attribute ram_slice_end of mem_reg_0_15_11_11 : label is 11;
  attribute RTL_RAM_BITS of mem_reg_0_15_12_12 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_0_15_12_12 : label is "control_s_axi_U/int_a/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_12_12 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_12_12 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_12_12 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_12_12 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_12_12 : label is 15;
  attribute ram_offset of mem_reg_0_15_12_12 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_12_12 : label is 12;
  attribute ram_slice_end of mem_reg_0_15_12_12 : label is 12;
  attribute RTL_RAM_BITS of mem_reg_0_15_13_13 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_0_15_13_13 : label is "control_s_axi_U/int_a/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_13_13 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_13_13 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_13_13 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_13_13 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_13_13 : label is 15;
  attribute ram_offset of mem_reg_0_15_13_13 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_13_13 : label is 13;
  attribute ram_slice_end of mem_reg_0_15_13_13 : label is 13;
  attribute RTL_RAM_BITS of mem_reg_0_15_14_14 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_0_15_14_14 : label is "control_s_axi_U/int_a/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_14_14 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_14_14 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_14_14 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_14_14 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_14_14 : label is 15;
  attribute ram_offset of mem_reg_0_15_14_14 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_14_14 : label is 14;
  attribute ram_slice_end of mem_reg_0_15_14_14 : label is 14;
  attribute RTL_RAM_BITS of mem_reg_0_15_15_15 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_0_15_15_15 : label is "control_s_axi_U/int_a/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_15_15 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_15_15 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_15_15 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_15_15 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_15_15 : label is 15;
  attribute ram_offset of mem_reg_0_15_15_15 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_15_15 : label is 15;
  attribute ram_slice_end of mem_reg_0_15_15_15 : label is 15;
  attribute RTL_RAM_BITS of mem_reg_0_15_16_16 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_0_15_16_16 : label is "control_s_axi_U/int_a/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_16_16 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_16_16 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_16_16 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_16_16 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_16_16 : label is 15;
  attribute ram_offset of mem_reg_0_15_16_16 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_16_16 : label is 16;
  attribute ram_slice_end of mem_reg_0_15_16_16 : label is 16;
  attribute RTL_RAM_BITS of mem_reg_0_15_17_17 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_0_15_17_17 : label is "control_s_axi_U/int_a/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_17_17 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_17_17 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_17_17 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_17_17 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_17_17 : label is 15;
  attribute ram_offset of mem_reg_0_15_17_17 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_17_17 : label is 17;
  attribute ram_slice_end of mem_reg_0_15_17_17 : label is 17;
  attribute RTL_RAM_BITS of mem_reg_0_15_18_18 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_0_15_18_18 : label is "control_s_axi_U/int_a/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_18_18 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_18_18 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_18_18 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_18_18 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_18_18 : label is 15;
  attribute ram_offset of mem_reg_0_15_18_18 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_18_18 : label is 18;
  attribute ram_slice_end of mem_reg_0_15_18_18 : label is 18;
  attribute RTL_RAM_BITS of mem_reg_0_15_19_19 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_0_15_19_19 : label is "control_s_axi_U/int_a/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_19_19 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_19_19 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_19_19 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_19_19 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_19_19 : label is 15;
  attribute ram_offset of mem_reg_0_15_19_19 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_19_19 : label is 19;
  attribute ram_slice_end of mem_reg_0_15_19_19 : label is 19;
  attribute RTL_RAM_BITS of mem_reg_0_15_1_1 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_0_15_1_1 : label is "control_s_axi_U/int_a/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_1_1 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_1_1 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_1_1 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_1_1 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_1_1 : label is 15;
  attribute ram_offset of mem_reg_0_15_1_1 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_1_1 : label is 1;
  attribute ram_slice_end of mem_reg_0_15_1_1 : label is 1;
  attribute RTL_RAM_BITS of mem_reg_0_15_20_20 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_0_15_20_20 : label is "control_s_axi_U/int_a/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_20_20 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_20_20 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_20_20 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_20_20 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_20_20 : label is 15;
  attribute ram_offset of mem_reg_0_15_20_20 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_20_20 : label is 20;
  attribute ram_slice_end of mem_reg_0_15_20_20 : label is 20;
  attribute RTL_RAM_BITS of mem_reg_0_15_21_21 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_0_15_21_21 : label is "control_s_axi_U/int_a/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_21_21 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_21_21 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_21_21 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_21_21 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_21_21 : label is 15;
  attribute ram_offset of mem_reg_0_15_21_21 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_21_21 : label is 21;
  attribute ram_slice_end of mem_reg_0_15_21_21 : label is 21;
  attribute RTL_RAM_BITS of mem_reg_0_15_22_22 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_0_15_22_22 : label is "control_s_axi_U/int_a/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_22_22 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_22_22 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_22_22 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_22_22 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_22_22 : label is 15;
  attribute ram_offset of mem_reg_0_15_22_22 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_22_22 : label is 22;
  attribute ram_slice_end of mem_reg_0_15_22_22 : label is 22;
  attribute RTL_RAM_BITS of mem_reg_0_15_23_23 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_0_15_23_23 : label is "control_s_axi_U/int_a/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_23_23 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_23_23 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_23_23 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_23_23 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_23_23 : label is 15;
  attribute ram_offset of mem_reg_0_15_23_23 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_23_23 : label is 23;
  attribute ram_slice_end of mem_reg_0_15_23_23 : label is 23;
  attribute RTL_RAM_BITS of mem_reg_0_15_24_24 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_0_15_24_24 : label is "control_s_axi_U/int_a/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_24_24 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_24_24 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_24_24 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_24_24 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_24_24 : label is 15;
  attribute ram_offset of mem_reg_0_15_24_24 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_24_24 : label is 24;
  attribute ram_slice_end of mem_reg_0_15_24_24 : label is 24;
  attribute RTL_RAM_BITS of mem_reg_0_15_25_25 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_0_15_25_25 : label is "control_s_axi_U/int_a/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_25_25 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_25_25 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_25_25 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_25_25 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_25_25 : label is 15;
  attribute ram_offset of mem_reg_0_15_25_25 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_25_25 : label is 25;
  attribute ram_slice_end of mem_reg_0_15_25_25 : label is 25;
  attribute RTL_RAM_BITS of mem_reg_0_15_26_26 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_0_15_26_26 : label is "control_s_axi_U/int_a/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_26_26 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_26_26 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_26_26 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_26_26 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_26_26 : label is 15;
  attribute ram_offset of mem_reg_0_15_26_26 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_26_26 : label is 26;
  attribute ram_slice_end of mem_reg_0_15_26_26 : label is 26;
  attribute RTL_RAM_BITS of mem_reg_0_15_27_27 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_0_15_27_27 : label is "control_s_axi_U/int_a/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_27_27 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_27_27 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_27_27 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_27_27 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_27_27 : label is 15;
  attribute ram_offset of mem_reg_0_15_27_27 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_27_27 : label is 27;
  attribute ram_slice_end of mem_reg_0_15_27_27 : label is 27;
  attribute RTL_RAM_BITS of mem_reg_0_15_28_28 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_0_15_28_28 : label is "control_s_axi_U/int_a/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_28_28 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_28_28 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_28_28 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_28_28 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_28_28 : label is 15;
  attribute ram_offset of mem_reg_0_15_28_28 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_28_28 : label is 28;
  attribute ram_slice_end of mem_reg_0_15_28_28 : label is 28;
  attribute RTL_RAM_BITS of mem_reg_0_15_29_29 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_0_15_29_29 : label is "control_s_axi_U/int_a/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_29_29 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_29_29 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_29_29 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_29_29 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_29_29 : label is 15;
  attribute ram_offset of mem_reg_0_15_29_29 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_29_29 : label is 29;
  attribute ram_slice_end of mem_reg_0_15_29_29 : label is 29;
  attribute RTL_RAM_BITS of mem_reg_0_15_2_2 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_0_15_2_2 : label is "control_s_axi_U/int_a/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_2_2 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_2_2 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_2_2 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_2_2 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_2_2 : label is 15;
  attribute ram_offset of mem_reg_0_15_2_2 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_2_2 : label is 2;
  attribute ram_slice_end of mem_reg_0_15_2_2 : label is 2;
  attribute RTL_RAM_BITS of mem_reg_0_15_30_30 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_0_15_30_30 : label is "control_s_axi_U/int_a/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_30_30 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_30_30 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_30_30 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_30_30 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_30_30 : label is 15;
  attribute ram_offset of mem_reg_0_15_30_30 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_30_30 : label is 30;
  attribute ram_slice_end of mem_reg_0_15_30_30 : label is 30;
  attribute RTL_RAM_BITS of mem_reg_0_15_31_31 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_0_15_31_31 : label is "control_s_axi_U/int_a/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_31_31 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_31_31 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_31_31 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_31_31 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_31_31 : label is 15;
  attribute ram_offset of mem_reg_0_15_31_31 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_31_31 : label is 31;
  attribute ram_slice_end of mem_reg_0_15_31_31 : label is 31;
  attribute RTL_RAM_BITS of mem_reg_0_15_3_3 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_0_15_3_3 : label is "control_s_axi_U/int_a/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_3_3 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_3_3 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_3_3 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_3_3 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_3_3 : label is 15;
  attribute ram_offset of mem_reg_0_15_3_3 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_3_3 : label is 3;
  attribute ram_slice_end of mem_reg_0_15_3_3 : label is 3;
  attribute RTL_RAM_BITS of mem_reg_0_15_4_4 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_0_15_4_4 : label is "control_s_axi_U/int_a/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_4_4 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_4_4 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_4_4 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_4_4 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_4_4 : label is 15;
  attribute ram_offset of mem_reg_0_15_4_4 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_4_4 : label is 4;
  attribute ram_slice_end of mem_reg_0_15_4_4 : label is 4;
  attribute RTL_RAM_BITS of mem_reg_0_15_5_5 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_0_15_5_5 : label is "control_s_axi_U/int_a/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_5_5 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_5_5 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_5_5 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_5_5 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_5_5 : label is 15;
  attribute ram_offset of mem_reg_0_15_5_5 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_5_5 : label is 5;
  attribute ram_slice_end of mem_reg_0_15_5_5 : label is 5;
  attribute RTL_RAM_BITS of mem_reg_0_15_6_6 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_0_15_6_6 : label is "control_s_axi_U/int_a/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_6_6 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_6_6 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_6_6 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_6_6 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_6_6 : label is 15;
  attribute ram_offset of mem_reg_0_15_6_6 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_6_6 : label is 6;
  attribute ram_slice_end of mem_reg_0_15_6_6 : label is 6;
  attribute RTL_RAM_BITS of mem_reg_0_15_7_7 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_0_15_7_7 : label is "control_s_axi_U/int_a/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_7_7 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_7_7 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_7_7 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_7_7 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_7_7 : label is 15;
  attribute ram_offset of mem_reg_0_15_7_7 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_7_7 : label is 7;
  attribute ram_slice_end of mem_reg_0_15_7_7 : label is 7;
  attribute RTL_RAM_BITS of mem_reg_0_15_8_8 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_0_15_8_8 : label is "control_s_axi_U/int_a/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_8_8 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_8_8 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_8_8 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_8_8 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_8_8 : label is 15;
  attribute ram_offset of mem_reg_0_15_8_8 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_8_8 : label is 8;
  attribute ram_slice_end of mem_reg_0_15_8_8 : label is 8;
  attribute RTL_RAM_BITS of mem_reg_0_15_9_9 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_0_15_9_9 : label is "control_s_axi_U/int_a/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_9_9 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_9_9 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_9_9 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_9_9 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_9_9 : label is 15;
  attribute ram_offset of mem_reg_0_15_9_9 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_9_9 : label is 9;
  attribute ram_slice_end of mem_reg_0_15_9_9 : label is 9;
begin
  ap_sig_allocacmp_i_1(3 downto 0) <= \^ap_sig_allocacmp_i_1\(3 downto 0);
  int_a_address1(3 downto 0) <= \^int_a_address1\(3 downto 0);
mem_reg_0_15_0_0: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \^int_a_address1\(0),
      A1 => \^int_a_address1\(1),
      A2 => \^int_a_address1\(2),
      A3 => \^int_a_address1\(3),
      A4 => '0',
      D => s_axi_control_WDATA(0),
      DPO => ap_clk_0(0),
      DPRA0 => \^ap_sig_allocacmp_i_1\(0),
      DPRA1 => \^ap_sig_allocacmp_i_1\(1),
      DPRA2 => \^ap_sig_allocacmp_i_1\(2),
      DPRA3 => \^ap_sig_allocacmp_i_1\(3),
      DPRA4 => '0',
      SPO => \q10__0\(0),
      WCLK => ap_clk,
      WE => p_0_in0_out(0)
    );
mem_reg_0_15_0_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800080008000"
    )
        port map (
      I0 => s_axi_control_WSTRB(0),
      I1 => \q1_reg[0]_1\,
      I2 => dout_reg,
      I3 => s_axi_control_WVALID,
      I4 => \q1_reg[0]_0\,
      I5 => s_axi_control_ARVALID,
      O => p_0_in0_out(0)
    );
mem_reg_0_15_0_0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s_axi_control_ARADDR(0),
      I1 => s_axi_control_ARVALID,
      I2 => \q1_reg[0]_0\,
      I3 => dout_reg_0(0),
      O => \^int_a_address1\(0)
    );
mem_reg_0_15_0_0_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s_axi_control_ARADDR(1),
      I1 => s_axi_control_ARVALID,
      I2 => \q1_reg[0]_0\,
      I3 => dout_reg_0(1),
      O => \^int_a_address1\(1)
    );
mem_reg_0_15_0_0_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s_axi_control_ARADDR(2),
      I1 => s_axi_control_ARVALID,
      I2 => \q1_reg[0]_0\,
      I3 => dout_reg_0(2),
      O => \^int_a_address1\(2)
    );
mem_reg_0_15_0_0_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s_axi_control_ARADDR(3),
      I1 => s_axi_control_ARVALID,
      I2 => \q1_reg[0]_0\,
      I3 => dout_reg_0(3),
      O => \^int_a_address1\(3)
    );
mem_reg_0_15_0_0_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => dout_reg_1(0),
      I1 => dout_reg_2,
      I2 => ap_loop_init,
      O => \^ap_sig_allocacmp_i_1\(0)
    );
mem_reg_0_15_0_0_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => dout_reg_1(1),
      I1 => dout_reg_2,
      I2 => ap_loop_init,
      O => \^ap_sig_allocacmp_i_1\(1)
    );
mem_reg_0_15_0_0_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => dout_reg_1(2),
      I1 => dout_reg_2,
      I2 => ap_loop_init,
      O => \^ap_sig_allocacmp_i_1\(2)
    );
mem_reg_0_15_0_0_i_9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => dout_reg_1(3),
      I1 => dout_reg_2,
      I2 => ap_loop_init,
      O => \^ap_sig_allocacmp_i_1\(3)
    );
mem_reg_0_15_10_10: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \^int_a_address1\(0),
      A1 => \^int_a_address1\(1),
      A2 => \^int_a_address1\(2),
      A3 => \^int_a_address1\(3),
      A4 => '0',
      D => s_axi_control_WDATA(10),
      DPO => ap_clk_0(10),
      DPRA0 => \^ap_sig_allocacmp_i_1\(0),
      DPRA1 => \^ap_sig_allocacmp_i_1\(1),
      DPRA2 => \^ap_sig_allocacmp_i_1\(2),
      DPRA3 => \^ap_sig_allocacmp_i_1\(3),
      DPRA4 => '0',
      SPO => \q10__0\(10),
      WCLK => ap_clk,
      WE => p_0_in0_out(8)
    );
mem_reg_0_15_11_11: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \^int_a_address1\(0),
      A1 => \^int_a_address1\(1),
      A2 => \^int_a_address1\(2),
      A3 => \^int_a_address1\(3),
      A4 => '0',
      D => s_axi_control_WDATA(11),
      DPO => ap_clk_0(11),
      DPRA0 => \^ap_sig_allocacmp_i_1\(0),
      DPRA1 => \^ap_sig_allocacmp_i_1\(1),
      DPRA2 => \^ap_sig_allocacmp_i_1\(2),
      DPRA3 => \^ap_sig_allocacmp_i_1\(3),
      DPRA4 => '0',
      SPO => \q10__0\(11),
      WCLK => ap_clk,
      WE => p_0_in0_out(8)
    );
mem_reg_0_15_12_12: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \^int_a_address1\(0),
      A1 => \^int_a_address1\(1),
      A2 => \^int_a_address1\(2),
      A3 => \^int_a_address1\(3),
      A4 => '0',
      D => s_axi_control_WDATA(12),
      DPO => ap_clk_0(12),
      DPRA0 => \^ap_sig_allocacmp_i_1\(0),
      DPRA1 => \^ap_sig_allocacmp_i_1\(1),
      DPRA2 => \^ap_sig_allocacmp_i_1\(2),
      DPRA3 => \^ap_sig_allocacmp_i_1\(3),
      DPRA4 => '0',
      SPO => \q10__0\(12),
      WCLK => ap_clk,
      WE => p_0_in0_out(8)
    );
mem_reg_0_15_13_13: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \^int_a_address1\(0),
      A1 => \^int_a_address1\(1),
      A2 => \^int_a_address1\(2),
      A3 => \^int_a_address1\(3),
      A4 => '0',
      D => s_axi_control_WDATA(13),
      DPO => ap_clk_0(13),
      DPRA0 => \^ap_sig_allocacmp_i_1\(0),
      DPRA1 => \^ap_sig_allocacmp_i_1\(1),
      DPRA2 => \^ap_sig_allocacmp_i_1\(2),
      DPRA3 => \^ap_sig_allocacmp_i_1\(3),
      DPRA4 => '0',
      SPO => \q10__0\(13),
      WCLK => ap_clk,
      WE => p_0_in0_out(8)
    );
mem_reg_0_15_14_14: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \^int_a_address1\(0),
      A1 => \^int_a_address1\(1),
      A2 => \^int_a_address1\(2),
      A3 => \^int_a_address1\(3),
      A4 => '0',
      D => s_axi_control_WDATA(14),
      DPO => ap_clk_0(14),
      DPRA0 => \^ap_sig_allocacmp_i_1\(0),
      DPRA1 => \^ap_sig_allocacmp_i_1\(1),
      DPRA2 => \^ap_sig_allocacmp_i_1\(2),
      DPRA3 => \^ap_sig_allocacmp_i_1\(3),
      DPRA4 => '0',
      SPO => \q10__0\(14),
      WCLK => ap_clk,
      WE => p_0_in0_out(8)
    );
mem_reg_0_15_15_15: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \^int_a_address1\(0),
      A1 => \^int_a_address1\(1),
      A2 => \^int_a_address1\(2),
      A3 => \^int_a_address1\(3),
      A4 => '0',
      D => s_axi_control_WDATA(15),
      DPO => ap_clk_0(15),
      DPRA0 => \^ap_sig_allocacmp_i_1\(0),
      DPRA1 => \^ap_sig_allocacmp_i_1\(1),
      DPRA2 => \^ap_sig_allocacmp_i_1\(2),
      DPRA3 => \^ap_sig_allocacmp_i_1\(3),
      DPRA4 => '0',
      SPO => \q10__0\(15),
      WCLK => ap_clk,
      WE => p_0_in0_out(8)
    );
mem_reg_0_15_16_16: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \^int_a_address1\(0),
      A1 => \^int_a_address1\(1),
      A2 => \^int_a_address1\(2),
      A3 => \^int_a_address1\(3),
      A4 => '0',
      D => s_axi_control_WDATA(16),
      DPO => ap_clk_0(16),
      DPRA0 => \^ap_sig_allocacmp_i_1\(0),
      DPRA1 => \^ap_sig_allocacmp_i_1\(1),
      DPRA2 => \^ap_sig_allocacmp_i_1\(2),
      DPRA3 => \^ap_sig_allocacmp_i_1\(3),
      DPRA4 => '0',
      SPO => \q10__0\(16),
      WCLK => ap_clk,
      WE => p_0_in0_out(16)
    );
mem_reg_0_15_16_16_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800080008000"
    )
        port map (
      I0 => s_axi_control_WSTRB(2),
      I1 => \q1_reg[0]_1\,
      I2 => dout_reg,
      I3 => s_axi_control_WVALID,
      I4 => \q1_reg[0]_0\,
      I5 => s_axi_control_ARVALID,
      O => p_0_in0_out(16)
    );
mem_reg_0_15_17_17: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \^int_a_address1\(0),
      A1 => \^int_a_address1\(1),
      A2 => \^int_a_address1\(2),
      A3 => \^int_a_address1\(3),
      A4 => '0',
      D => s_axi_control_WDATA(17),
      DPO => ap_clk_0(17),
      DPRA0 => \^ap_sig_allocacmp_i_1\(0),
      DPRA1 => \^ap_sig_allocacmp_i_1\(1),
      DPRA2 => \^ap_sig_allocacmp_i_1\(2),
      DPRA3 => \^ap_sig_allocacmp_i_1\(3),
      DPRA4 => '0',
      SPO => \q10__0\(17),
      WCLK => ap_clk,
      WE => p_0_in0_out(16)
    );
mem_reg_0_15_18_18: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \^int_a_address1\(0),
      A1 => \^int_a_address1\(1),
      A2 => \^int_a_address1\(2),
      A3 => \^int_a_address1\(3),
      A4 => '0',
      D => s_axi_control_WDATA(18),
      DPO => ap_clk_0(18),
      DPRA0 => \^ap_sig_allocacmp_i_1\(0),
      DPRA1 => \^ap_sig_allocacmp_i_1\(1),
      DPRA2 => \^ap_sig_allocacmp_i_1\(2),
      DPRA3 => \^ap_sig_allocacmp_i_1\(3),
      DPRA4 => '0',
      SPO => \q10__0\(18),
      WCLK => ap_clk,
      WE => p_0_in0_out(16)
    );
mem_reg_0_15_19_19: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \^int_a_address1\(0),
      A1 => \^int_a_address1\(1),
      A2 => \^int_a_address1\(2),
      A3 => \^int_a_address1\(3),
      A4 => '0',
      D => s_axi_control_WDATA(19),
      DPO => ap_clk_0(19),
      DPRA0 => \^ap_sig_allocacmp_i_1\(0),
      DPRA1 => \^ap_sig_allocacmp_i_1\(1),
      DPRA2 => \^ap_sig_allocacmp_i_1\(2),
      DPRA3 => \^ap_sig_allocacmp_i_1\(3),
      DPRA4 => '0',
      SPO => \q10__0\(19),
      WCLK => ap_clk,
      WE => p_0_in0_out(16)
    );
mem_reg_0_15_1_1: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \^int_a_address1\(0),
      A1 => \^int_a_address1\(1),
      A2 => \^int_a_address1\(2),
      A3 => \^int_a_address1\(3),
      A4 => '0',
      D => s_axi_control_WDATA(1),
      DPO => ap_clk_0(1),
      DPRA0 => \^ap_sig_allocacmp_i_1\(0),
      DPRA1 => \^ap_sig_allocacmp_i_1\(1),
      DPRA2 => \^ap_sig_allocacmp_i_1\(2),
      DPRA3 => \^ap_sig_allocacmp_i_1\(3),
      DPRA4 => '0',
      SPO => \q10__0\(1),
      WCLK => ap_clk,
      WE => p_0_in0_out(0)
    );
mem_reg_0_15_20_20: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \^int_a_address1\(0),
      A1 => \^int_a_address1\(1),
      A2 => \^int_a_address1\(2),
      A3 => \^int_a_address1\(3),
      A4 => '0',
      D => s_axi_control_WDATA(20),
      DPO => ap_clk_0(20),
      DPRA0 => \^ap_sig_allocacmp_i_1\(0),
      DPRA1 => \^ap_sig_allocacmp_i_1\(1),
      DPRA2 => \^ap_sig_allocacmp_i_1\(2),
      DPRA3 => \^ap_sig_allocacmp_i_1\(3),
      DPRA4 => '0',
      SPO => \q10__0\(20),
      WCLK => ap_clk,
      WE => p_0_in0_out(16)
    );
mem_reg_0_15_21_21: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \^int_a_address1\(0),
      A1 => \^int_a_address1\(1),
      A2 => \^int_a_address1\(2),
      A3 => \^int_a_address1\(3),
      A4 => '0',
      D => s_axi_control_WDATA(21),
      DPO => ap_clk_0(21),
      DPRA0 => \^ap_sig_allocacmp_i_1\(0),
      DPRA1 => \^ap_sig_allocacmp_i_1\(1),
      DPRA2 => \^ap_sig_allocacmp_i_1\(2),
      DPRA3 => \^ap_sig_allocacmp_i_1\(3),
      DPRA4 => '0',
      SPO => \q10__0\(21),
      WCLK => ap_clk,
      WE => p_0_in0_out(16)
    );
mem_reg_0_15_22_22: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \^int_a_address1\(0),
      A1 => \^int_a_address1\(1),
      A2 => \^int_a_address1\(2),
      A3 => \^int_a_address1\(3),
      A4 => '0',
      D => s_axi_control_WDATA(22),
      DPO => ap_clk_0(22),
      DPRA0 => \^ap_sig_allocacmp_i_1\(0),
      DPRA1 => \^ap_sig_allocacmp_i_1\(1),
      DPRA2 => \^ap_sig_allocacmp_i_1\(2),
      DPRA3 => \^ap_sig_allocacmp_i_1\(3),
      DPRA4 => '0',
      SPO => \q10__0\(22),
      WCLK => ap_clk,
      WE => p_0_in0_out(16)
    );
mem_reg_0_15_23_23: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \^int_a_address1\(0),
      A1 => \^int_a_address1\(1),
      A2 => \^int_a_address1\(2),
      A3 => \^int_a_address1\(3),
      A4 => '0',
      D => s_axi_control_WDATA(23),
      DPO => ap_clk_0(23),
      DPRA0 => \^ap_sig_allocacmp_i_1\(0),
      DPRA1 => \^ap_sig_allocacmp_i_1\(1),
      DPRA2 => \^ap_sig_allocacmp_i_1\(2),
      DPRA3 => \^ap_sig_allocacmp_i_1\(3),
      DPRA4 => '0',
      SPO => \q10__0\(23),
      WCLK => ap_clk,
      WE => p_0_in0_out(16)
    );
mem_reg_0_15_24_24: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \^int_a_address1\(0),
      A1 => \^int_a_address1\(1),
      A2 => \^int_a_address1\(2),
      A3 => \^int_a_address1\(3),
      A4 => '0',
      D => p_1_in(24),
      DPO => ap_clk_0(24),
      DPRA0 => \^ap_sig_allocacmp_i_1\(0),
      DPRA1 => \^ap_sig_allocacmp_i_1\(1),
      DPRA2 => \^ap_sig_allocacmp_i_1\(2),
      DPRA3 => \^ap_sig_allocacmp_i_1\(3),
      DPRA4 => '0',
      SPO => \q10__0\(24),
      WCLK => ap_clk,
      WE => p_0_in0_out(24)
    );
mem_reg_0_15_24_24_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => s_axi_control_WSTRB(3),
      I1 => \ar_hs__0\,
      I2 => s_axi_control_WVALID,
      I3 => dout_reg,
      I4 => \q1_reg[0]_1\,
      I5 => s_axi_control_WDATA(24),
      O => p_1_in(24)
    );
mem_reg_0_15_24_24_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0888000000000000"
    )
        port map (
      I0 => s_axi_control_WSTRB(3),
      I1 => dout_reg,
      I2 => s_axi_control_ARVALID,
      I3 => \q1_reg[0]_0\,
      I4 => \q1_reg[0]_1\,
      I5 => s_axi_control_WVALID,
      O => p_0_in0_out(24)
    );
mem_reg_0_15_25_25: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \^int_a_address1\(0),
      A1 => \^int_a_address1\(1),
      A2 => \^int_a_address1\(2),
      A3 => \^int_a_address1\(3),
      A4 => '0',
      D => p_1_in(25),
      DPO => ap_clk_0(25),
      DPRA0 => \^ap_sig_allocacmp_i_1\(0),
      DPRA1 => \^ap_sig_allocacmp_i_1\(1),
      DPRA2 => \^ap_sig_allocacmp_i_1\(2),
      DPRA3 => \^ap_sig_allocacmp_i_1\(3),
      DPRA4 => '0',
      SPO => \q10__0\(25),
      WCLK => ap_clk,
      WE => p_0_in0_out(24)
    );
mem_reg_0_15_25_25_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => s_axi_control_WSTRB(3),
      I1 => \ar_hs__0\,
      I2 => s_axi_control_WVALID,
      I3 => dout_reg,
      I4 => \q1_reg[0]_1\,
      I5 => s_axi_control_WDATA(25),
      O => p_1_in(25)
    );
mem_reg_0_15_26_26: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \^int_a_address1\(0),
      A1 => \^int_a_address1\(1),
      A2 => \^int_a_address1\(2),
      A3 => \^int_a_address1\(3),
      A4 => '0',
      D => p_1_in(26),
      DPO => ap_clk_0(26),
      DPRA0 => \^ap_sig_allocacmp_i_1\(0),
      DPRA1 => \^ap_sig_allocacmp_i_1\(1),
      DPRA2 => \^ap_sig_allocacmp_i_1\(2),
      DPRA3 => \^ap_sig_allocacmp_i_1\(3),
      DPRA4 => '0',
      SPO => \q10__0\(26),
      WCLK => ap_clk,
      WE => p_0_in0_out(24)
    );
mem_reg_0_15_26_26_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => s_axi_control_WSTRB(3),
      I1 => \ar_hs__0\,
      I2 => s_axi_control_WVALID,
      I3 => dout_reg,
      I4 => \q1_reg[0]_1\,
      I5 => s_axi_control_WDATA(26),
      O => p_1_in(26)
    );
mem_reg_0_15_27_27: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \^int_a_address1\(0),
      A1 => \^int_a_address1\(1),
      A2 => \^int_a_address1\(2),
      A3 => \^int_a_address1\(3),
      A4 => '0',
      D => p_1_in(27),
      DPO => ap_clk_0(27),
      DPRA0 => \^ap_sig_allocacmp_i_1\(0),
      DPRA1 => \^ap_sig_allocacmp_i_1\(1),
      DPRA2 => \^ap_sig_allocacmp_i_1\(2),
      DPRA3 => \^ap_sig_allocacmp_i_1\(3),
      DPRA4 => '0',
      SPO => \q10__0\(27),
      WCLK => ap_clk,
      WE => p_0_in0_out(24)
    );
mem_reg_0_15_27_27_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => s_axi_control_WSTRB(3),
      I1 => \ar_hs__0\,
      I2 => s_axi_control_WVALID,
      I3 => dout_reg,
      I4 => \q1_reg[0]_1\,
      I5 => s_axi_control_WDATA(27),
      O => p_1_in(27)
    );
mem_reg_0_15_28_28: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \^int_a_address1\(0),
      A1 => \^int_a_address1\(1),
      A2 => \^int_a_address1\(2),
      A3 => \^int_a_address1\(3),
      A4 => '0',
      D => p_1_in(28),
      DPO => ap_clk_0(28),
      DPRA0 => \^ap_sig_allocacmp_i_1\(0),
      DPRA1 => \^ap_sig_allocacmp_i_1\(1),
      DPRA2 => \^ap_sig_allocacmp_i_1\(2),
      DPRA3 => \^ap_sig_allocacmp_i_1\(3),
      DPRA4 => '0',
      SPO => \q10__0\(28),
      WCLK => ap_clk,
      WE => p_0_in0_out(24)
    );
mem_reg_0_15_28_28_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => s_axi_control_WSTRB(3),
      I1 => \ar_hs__0\,
      I2 => s_axi_control_WVALID,
      I3 => dout_reg,
      I4 => \q1_reg[0]_1\,
      I5 => s_axi_control_WDATA(28),
      O => p_1_in(28)
    );
mem_reg_0_15_29_29: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \^int_a_address1\(0),
      A1 => \^int_a_address1\(1),
      A2 => \^int_a_address1\(2),
      A3 => \^int_a_address1\(3),
      A4 => '0',
      D => p_1_in(29),
      DPO => ap_clk_0(29),
      DPRA0 => \^ap_sig_allocacmp_i_1\(0),
      DPRA1 => \^ap_sig_allocacmp_i_1\(1),
      DPRA2 => \^ap_sig_allocacmp_i_1\(2),
      DPRA3 => \^ap_sig_allocacmp_i_1\(3),
      DPRA4 => '0',
      SPO => \q10__0\(29),
      WCLK => ap_clk,
      WE => p_0_in0_out(24)
    );
mem_reg_0_15_29_29_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => s_axi_control_WSTRB(3),
      I1 => \ar_hs__0\,
      I2 => s_axi_control_WVALID,
      I3 => dout_reg,
      I4 => \q1_reg[0]_1\,
      I5 => s_axi_control_WDATA(29),
      O => p_1_in(29)
    );
mem_reg_0_15_2_2: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \^int_a_address1\(0),
      A1 => \^int_a_address1\(1),
      A2 => \^int_a_address1\(2),
      A3 => \^int_a_address1\(3),
      A4 => '0',
      D => s_axi_control_WDATA(2),
      DPO => ap_clk_0(2),
      DPRA0 => \^ap_sig_allocacmp_i_1\(0),
      DPRA1 => \^ap_sig_allocacmp_i_1\(1),
      DPRA2 => \^ap_sig_allocacmp_i_1\(2),
      DPRA3 => \^ap_sig_allocacmp_i_1\(3),
      DPRA4 => '0',
      SPO => \q10__0\(2),
      WCLK => ap_clk,
      WE => p_0_in0_out(0)
    );
mem_reg_0_15_30_30: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \^int_a_address1\(0),
      A1 => \^int_a_address1\(1),
      A2 => \^int_a_address1\(2),
      A3 => \^int_a_address1\(3),
      A4 => '0',
      D => p_1_in(30),
      DPO => ap_clk_0(30),
      DPRA0 => \^ap_sig_allocacmp_i_1\(0),
      DPRA1 => \^ap_sig_allocacmp_i_1\(1),
      DPRA2 => \^ap_sig_allocacmp_i_1\(2),
      DPRA3 => \^ap_sig_allocacmp_i_1\(3),
      DPRA4 => '0',
      SPO => \q10__0\(30),
      WCLK => ap_clk,
      WE => p_0_in0_out(24)
    );
mem_reg_0_15_30_30_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => s_axi_control_WSTRB(3),
      I1 => \ar_hs__0\,
      I2 => s_axi_control_WVALID,
      I3 => dout_reg,
      I4 => \q1_reg[0]_1\,
      I5 => s_axi_control_WDATA(30),
      O => p_1_in(30)
    );
mem_reg_0_15_31_31: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \^int_a_address1\(0),
      A1 => \^int_a_address1\(1),
      A2 => \^int_a_address1\(2),
      A3 => \^int_a_address1\(3),
      A4 => '0',
      D => p_1_in(31),
      DPO => ap_clk_0(31),
      DPRA0 => \^ap_sig_allocacmp_i_1\(0),
      DPRA1 => \^ap_sig_allocacmp_i_1\(1),
      DPRA2 => \^ap_sig_allocacmp_i_1\(2),
      DPRA3 => \^ap_sig_allocacmp_i_1\(3),
      DPRA4 => '0',
      SPO => \q10__0\(31),
      WCLK => ap_clk,
      WE => p_0_in0_out(24)
    );
mem_reg_0_15_31_31_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => s_axi_control_WSTRB(3),
      I1 => \ar_hs__0\,
      I2 => s_axi_control_WVALID,
      I3 => dout_reg,
      I4 => \q1_reg[0]_1\,
      I5 => s_axi_control_WDATA(31),
      O => p_1_in(31)
    );
mem_reg_0_15_3_3: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \^int_a_address1\(0),
      A1 => \^int_a_address1\(1),
      A2 => \^int_a_address1\(2),
      A3 => \^int_a_address1\(3),
      A4 => '0',
      D => s_axi_control_WDATA(3),
      DPO => ap_clk_0(3),
      DPRA0 => \^ap_sig_allocacmp_i_1\(0),
      DPRA1 => \^ap_sig_allocacmp_i_1\(1),
      DPRA2 => \^ap_sig_allocacmp_i_1\(2),
      DPRA3 => \^ap_sig_allocacmp_i_1\(3),
      DPRA4 => '0',
      SPO => \q10__0\(3),
      WCLK => ap_clk,
      WE => p_0_in0_out(0)
    );
mem_reg_0_15_4_4: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \^int_a_address1\(0),
      A1 => \^int_a_address1\(1),
      A2 => \^int_a_address1\(2),
      A3 => \^int_a_address1\(3),
      A4 => '0',
      D => s_axi_control_WDATA(4),
      DPO => ap_clk_0(4),
      DPRA0 => \^ap_sig_allocacmp_i_1\(0),
      DPRA1 => \^ap_sig_allocacmp_i_1\(1),
      DPRA2 => \^ap_sig_allocacmp_i_1\(2),
      DPRA3 => \^ap_sig_allocacmp_i_1\(3),
      DPRA4 => '0',
      SPO => \q10__0\(4),
      WCLK => ap_clk,
      WE => p_0_in0_out(0)
    );
mem_reg_0_15_5_5: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \^int_a_address1\(0),
      A1 => \^int_a_address1\(1),
      A2 => \^int_a_address1\(2),
      A3 => \^int_a_address1\(3),
      A4 => '0',
      D => s_axi_control_WDATA(5),
      DPO => ap_clk_0(5),
      DPRA0 => \^ap_sig_allocacmp_i_1\(0),
      DPRA1 => \^ap_sig_allocacmp_i_1\(1),
      DPRA2 => \^ap_sig_allocacmp_i_1\(2),
      DPRA3 => \^ap_sig_allocacmp_i_1\(3),
      DPRA4 => '0',
      SPO => \q10__0\(5),
      WCLK => ap_clk,
      WE => p_0_in0_out(0)
    );
mem_reg_0_15_6_6: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \^int_a_address1\(0),
      A1 => \^int_a_address1\(1),
      A2 => \^int_a_address1\(2),
      A3 => \^int_a_address1\(3),
      A4 => '0',
      D => s_axi_control_WDATA(6),
      DPO => ap_clk_0(6),
      DPRA0 => \^ap_sig_allocacmp_i_1\(0),
      DPRA1 => \^ap_sig_allocacmp_i_1\(1),
      DPRA2 => \^ap_sig_allocacmp_i_1\(2),
      DPRA3 => \^ap_sig_allocacmp_i_1\(3),
      DPRA4 => '0',
      SPO => \q10__0\(6),
      WCLK => ap_clk,
      WE => p_0_in0_out(0)
    );
mem_reg_0_15_7_7: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \^int_a_address1\(0),
      A1 => \^int_a_address1\(1),
      A2 => \^int_a_address1\(2),
      A3 => \^int_a_address1\(3),
      A4 => '0',
      D => s_axi_control_WDATA(7),
      DPO => ap_clk_0(7),
      DPRA0 => \^ap_sig_allocacmp_i_1\(0),
      DPRA1 => \^ap_sig_allocacmp_i_1\(1),
      DPRA2 => \^ap_sig_allocacmp_i_1\(2),
      DPRA3 => \^ap_sig_allocacmp_i_1\(3),
      DPRA4 => '0',
      SPO => \q10__0\(7),
      WCLK => ap_clk,
      WE => p_0_in0_out(0)
    );
mem_reg_0_15_8_8: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \^int_a_address1\(0),
      A1 => \^int_a_address1\(1),
      A2 => \^int_a_address1\(2),
      A3 => \^int_a_address1\(3),
      A4 => '0',
      D => s_axi_control_WDATA(8),
      DPO => ap_clk_0(8),
      DPRA0 => \^ap_sig_allocacmp_i_1\(0),
      DPRA1 => \^ap_sig_allocacmp_i_1\(1),
      DPRA2 => \^ap_sig_allocacmp_i_1\(2),
      DPRA3 => \^ap_sig_allocacmp_i_1\(3),
      DPRA4 => '0',
      SPO => \q10__0\(8),
      WCLK => ap_clk,
      WE => p_0_in0_out(8)
    );
mem_reg_0_15_8_8_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800080008000"
    )
        port map (
      I0 => s_axi_control_WSTRB(1),
      I1 => \q1_reg[0]_1\,
      I2 => dout_reg,
      I3 => s_axi_control_WVALID,
      I4 => \q1_reg[0]_0\,
      I5 => s_axi_control_ARVALID,
      O => p_0_in0_out(8)
    );
mem_reg_0_15_9_9: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \^int_a_address1\(0),
      A1 => \^int_a_address1\(1),
      A2 => \^int_a_address1\(2),
      A3 => \^int_a_address1\(3),
      A4 => '0',
      D => s_axi_control_WDATA(9),
      DPO => ap_clk_0(9),
      DPRA0 => \^ap_sig_allocacmp_i_1\(0),
      DPRA1 => \^ap_sig_allocacmp_i_1\(1),
      DPRA2 => \^ap_sig_allocacmp_i_1\(2),
      DPRA3 => \^ap_sig_allocacmp_i_1\(3),
      DPRA4 => '0',
      SPO => \q10__0\(9),
      WCLK => ap_clk,
      WE => p_0_in0_out(8)
    );
\q1[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s_axi_control_WVALID,
      I1 => \q1_reg[0]_1\,
      I2 => \q1_reg[0]_0\,
      I3 => s_axi_control_ARVALID,
      O => int_a_ce1
    );
\q1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_a_ce1,
      D => \q10__0\(0),
      Q => q1(0),
      R => '0'
    );
\q1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_a_ce1,
      D => \q10__0\(10),
      Q => \q1_reg[31]_0\(4),
      R => '0'
    );
\q1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_a_ce1,
      D => \q10__0\(11),
      Q => \q1_reg[31]_0\(5),
      R => '0'
    );
\q1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_a_ce1,
      D => \q10__0\(12),
      Q => \q1_reg[31]_0\(6),
      R => '0'
    );
\q1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_a_ce1,
      D => \q10__0\(13),
      Q => \q1_reg[31]_0\(7),
      R => '0'
    );
\q1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_a_ce1,
      D => \q10__0\(14),
      Q => \q1_reg[31]_0\(8),
      R => '0'
    );
\q1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_a_ce1,
      D => \q10__0\(15),
      Q => \q1_reg[31]_0\(9),
      R => '0'
    );
\q1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_a_ce1,
      D => \q10__0\(16),
      Q => \q1_reg[31]_0\(10),
      R => '0'
    );
\q1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_a_ce1,
      D => \q10__0\(17),
      Q => \q1_reg[31]_0\(11),
      R => '0'
    );
\q1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_a_ce1,
      D => \q10__0\(18),
      Q => \q1_reg[31]_0\(12),
      R => '0'
    );
\q1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_a_ce1,
      D => \q10__0\(19),
      Q => \q1_reg[31]_0\(13),
      R => '0'
    );
\q1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_a_ce1,
      D => \q10__0\(1),
      Q => q1(1),
      R => '0'
    );
\q1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_a_ce1,
      D => \q10__0\(20),
      Q => \q1_reg[31]_0\(14),
      R => '0'
    );
\q1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_a_ce1,
      D => \q10__0\(21),
      Q => \q1_reg[31]_0\(15),
      R => '0'
    );
\q1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_a_ce1,
      D => \q10__0\(22),
      Q => \q1_reg[31]_0\(16),
      R => '0'
    );
\q1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_a_ce1,
      D => \q10__0\(23),
      Q => \q1_reg[31]_0\(17),
      R => '0'
    );
\q1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_a_ce1,
      D => \q10__0\(24),
      Q => \q1_reg[31]_0\(18),
      R => '0'
    );
\q1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_a_ce1,
      D => \q10__0\(25),
      Q => \q1_reg[31]_0\(19),
      R => '0'
    );
\q1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_a_ce1,
      D => \q10__0\(26),
      Q => \q1_reg[31]_0\(20),
      R => '0'
    );
\q1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_a_ce1,
      D => \q10__0\(27),
      Q => \q1_reg[31]_0\(21),
      R => '0'
    );
\q1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_a_ce1,
      D => \q10__0\(28),
      Q => \q1_reg[31]_0\(22),
      R => '0'
    );
\q1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_a_ce1,
      D => \q10__0\(29),
      Q => \q1_reg[31]_0\(23),
      R => '0'
    );
\q1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_a_ce1,
      D => \q10__0\(2),
      Q => q1(2),
      R => '0'
    );
\q1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_a_ce1,
      D => \q10__0\(30),
      Q => \q1_reg[31]_0\(24),
      R => '0'
    );
\q1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_a_ce1,
      D => \q10__0\(31),
      Q => \q1_reg[31]_0\(25),
      R => '0'
    );
\q1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_a_ce1,
      D => \q10__0\(3),
      Q => q1(3),
      R => '0'
    );
\q1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_a_ce1,
      D => \q10__0\(4),
      Q => \q1_reg[31]_0\(0),
      R => '0'
    );
\q1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_a_ce1,
      D => \q10__0\(5),
      Q => \q1_reg[31]_0\(1),
      R => '0'
    );
\q1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_a_ce1,
      D => \q10__0\(6),
      Q => \q1_reg[31]_0\(2),
      R => '0'
    );
\q1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_a_ce1,
      D => \q10__0\(7),
      Q => q1(7),
      R => '0'
    );
\q1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_a_ce1,
      D => \q10__0\(8),
      Q => \q1_reg[31]_0\(3),
      R => '0'
    );
\q1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_a_ce1,
      D => \q10__0\(9),
      Q => q1(9),
      R => '0'
    );
\rdata[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \rdata_reg[0]\,
      I1 => Q(0),
      I2 => \rdata_reg[0]_0\,
      I3 => \rdata_reg[0]_1\,
      I4 => \rdata[0]_i_3_n_0\,
      O => D(0)
    );
\rdata[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2A3F2A00"
    )
        port map (
      I0 => q1(0),
      I1 => \q1_reg[0]_0\,
      I2 => s_axi_control_ARVALID,
      I3 => int_a_read,
      I4 => \rdata_reg[9]\(0),
      O => \rdata[0]_i_3_n_0\
    );
\rdata[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \rdata_reg[0]\,
      I1 => Q(1),
      I2 => \rdata_reg[0]_0\,
      I3 => \rdata_reg[1]\,
      I4 => \rdata[1]_i_4_n_0\,
      O => D(1)
    );
\rdata[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2A3F2A00"
    )
        port map (
      I0 => q1(1),
      I1 => \q1_reg[0]_0\,
      I2 => s_axi_control_ARVALID,
      I3 => int_a_read,
      I4 => \rdata_reg[9]\(1),
      O => \rdata[1]_i_4_n_0\
    );
\rdata[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF8F8F8"
    )
        port map (
      I0 => \rdata_reg[0]\,
      I1 => Q(2),
      I2 => \rdata[2]_i_2_n_0\,
      I3 => p_1_in_0(0),
      I4 => \rdata_reg[2]\,
      O => D(2)
    );
\rdata[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2A3F2A00"
    )
        port map (
      I0 => q1(2),
      I1 => \q1_reg[0]_0\,
      I2 => s_axi_control_ARVALID,
      I3 => int_a_read,
      I4 => \rdata_reg[9]\(2),
      O => \rdata[2]_i_2_n_0\
    );
\rdata[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF8F8F8"
    )
        port map (
      I0 => \rdata_reg[0]\,
      I1 => Q(3),
      I2 => \rdata[3]_i_2_n_0\,
      I3 => int_ap_ready,
      I4 => \rdata_reg[2]\,
      O => D(3)
    );
\rdata[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2A3F2A00"
    )
        port map (
      I0 => q1(3),
      I1 => \q1_reg[0]_0\,
      I2 => s_axi_control_ARVALID,
      I3 => int_a_read,
      I4 => \rdata_reg[9]\(3),
      O => \rdata[3]_i_2_n_0\
    );
\rdata[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF8F8F8"
    )
        port map (
      I0 => \rdata_reg[0]\,
      I1 => Q(4),
      I2 => \rdata[7]_i_2_n_0\,
      I3 => p_1_in_0(1),
      I4 => \rdata_reg[2]\,
      O => D(4)
    );
\rdata[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2A3F2A00"
    )
        port map (
      I0 => q1(7),
      I1 => \q1_reg[0]_0\,
      I2 => s_axi_control_ARVALID,
      I3 => int_a_read,
      I4 => \rdata_reg[9]\(4),
      O => \rdata[7]_i_2_n_0\
    );
\rdata[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF8F8F8"
    )
        port map (
      I0 => \rdata_reg[0]\,
      I1 => Q(5),
      I2 => \rdata[9]_i_2_n_0\,
      I3 => interrupt,
      I4 => \rdata_reg[2]\,
      O => D(5)
    );
\rdata[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2A3F2A00"
    )
        port map (
      I0 => q1(9),
      I1 => \q1_reg[0]_0\,
      I2 => s_axi_control_ARVALID,
      I3 => int_a_read,
      I4 => \rdata_reg[9]\(5),
      O => \rdata[9]_i_2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_muladd_0_0_muladd_control_s_axi_ram_0 is
  port (
    D : out STD_LOGIC_VECTOR ( 25 downto 0 );
    \ar_hs__0\ : out STD_LOGIC;
    q00 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \q1_reg[9]_0\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \rdata_reg[4]\ : in STD_LOGIC;
    \rdata_reg[4]_0\ : in STD_LOGIC;
    \rdata_reg[31]\ : in STD_LOGIC_VECTOR ( 25 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 25 downto 0 );
    \rdata_reg[4]_1\ : in STD_LOGIC;
    s_axi_control_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    tmp_product : in STD_LOGIC;
    s_axi_control_ARVALID : in STD_LOGIC;
    \q1_reg[0]_0\ : in STD_LOGIC;
    \q1_reg[0]_1\ : in STD_LOGIC;
    s_axi_control_WVALID : in STD_LOGIC;
    s_axi_control_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ap_clk : in STD_LOGIC;
    int_a_address1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ap_sig_allocacmp_i_1 : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_muladd_0_0_muladd_control_s_axi_ram_0 : entity is "muladd_control_s_axi_ram";
end design_1_muladd_0_0_muladd_control_s_axi_ram_0;

architecture STRUCTURE of design_1_muladd_0_0_muladd_control_s_axi_ram_0 is
  signal \^ar_hs__0\ : STD_LOGIC;
  signal int_b_ce1 : STD_LOGIC;
  signal \mem_reg_0_15_24_24_i_1__0_n_0\ : STD_LOGIC;
  signal \mem_reg_0_15_25_25_i_1__0_n_0\ : STD_LOGIC;
  signal \mem_reg_0_15_26_26_i_1__0_n_0\ : STD_LOGIC;
  signal \mem_reg_0_15_27_27_i_1__0_n_0\ : STD_LOGIC;
  signal \mem_reg_0_15_28_28_i_1__0_n_0\ : STD_LOGIC;
  signal \mem_reg_0_15_29_29_i_1__0_n_0\ : STD_LOGIC;
  signal \mem_reg_0_15_30_30_i_1__0_n_0\ : STD_LOGIC;
  signal \mem_reg_0_15_31_31_i_1__0_n_0\ : STD_LOGIC;
  signal \p_0_in0_out__0\ : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal q10 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \q1_reg_n_0_[10]\ : STD_LOGIC;
  signal \q1_reg_n_0_[11]\ : STD_LOGIC;
  signal \q1_reg_n_0_[12]\ : STD_LOGIC;
  signal \q1_reg_n_0_[13]\ : STD_LOGIC;
  signal \q1_reg_n_0_[14]\ : STD_LOGIC;
  signal \q1_reg_n_0_[15]\ : STD_LOGIC;
  signal \q1_reg_n_0_[16]\ : STD_LOGIC;
  signal \q1_reg_n_0_[17]\ : STD_LOGIC;
  signal \q1_reg_n_0_[18]\ : STD_LOGIC;
  signal \q1_reg_n_0_[19]\ : STD_LOGIC;
  signal \q1_reg_n_0_[20]\ : STD_LOGIC;
  signal \q1_reg_n_0_[21]\ : STD_LOGIC;
  signal \q1_reg_n_0_[22]\ : STD_LOGIC;
  signal \q1_reg_n_0_[23]\ : STD_LOGIC;
  signal \q1_reg_n_0_[24]\ : STD_LOGIC;
  signal \q1_reg_n_0_[25]\ : STD_LOGIC;
  signal \q1_reg_n_0_[26]\ : STD_LOGIC;
  signal \q1_reg_n_0_[27]\ : STD_LOGIC;
  signal \q1_reg_n_0_[28]\ : STD_LOGIC;
  signal \q1_reg_n_0_[29]\ : STD_LOGIC;
  signal \q1_reg_n_0_[30]\ : STD_LOGIC;
  signal \q1_reg_n_0_[31]\ : STD_LOGIC;
  signal \q1_reg_n_0_[4]\ : STD_LOGIC;
  signal \q1_reg_n_0_[5]\ : STD_LOGIC;
  signal \q1_reg_n_0_[6]\ : STD_LOGIC;
  signal \q1_reg_n_0_[8]\ : STD_LOGIC;
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of mem_reg_0_15_0_0 : label is 512;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of mem_reg_0_15_0_0 : label is "control_s_axi_U/int_b/mem_reg";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of mem_reg_0_15_0_0 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_0_0 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_0_0 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of mem_reg_0_15_0_0 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of mem_reg_0_15_0_0 : label is 15;
  attribute ram_offset : integer;
  attribute ram_offset of mem_reg_0_15_0_0 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of mem_reg_0_15_0_0 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of mem_reg_0_15_0_0 : label is 0;
  attribute RTL_RAM_BITS of mem_reg_0_15_10_10 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_0_15_10_10 : label is "control_s_axi_U/int_b/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_10_10 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_10_10 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_10_10 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_10_10 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_10_10 : label is 15;
  attribute ram_offset of mem_reg_0_15_10_10 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_10_10 : label is 10;
  attribute ram_slice_end of mem_reg_0_15_10_10 : label is 10;
  attribute RTL_RAM_BITS of mem_reg_0_15_11_11 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_0_15_11_11 : label is "control_s_axi_U/int_b/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_11_11 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_11_11 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_11_11 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_11_11 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_11_11 : label is 15;
  attribute ram_offset of mem_reg_0_15_11_11 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_11_11 : label is 11;
  attribute ram_slice_end of mem_reg_0_15_11_11 : label is 11;
  attribute RTL_RAM_BITS of mem_reg_0_15_12_12 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_0_15_12_12 : label is "control_s_axi_U/int_b/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_12_12 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_12_12 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_12_12 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_12_12 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_12_12 : label is 15;
  attribute ram_offset of mem_reg_0_15_12_12 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_12_12 : label is 12;
  attribute ram_slice_end of mem_reg_0_15_12_12 : label is 12;
  attribute RTL_RAM_BITS of mem_reg_0_15_13_13 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_0_15_13_13 : label is "control_s_axi_U/int_b/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_13_13 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_13_13 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_13_13 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_13_13 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_13_13 : label is 15;
  attribute ram_offset of mem_reg_0_15_13_13 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_13_13 : label is 13;
  attribute ram_slice_end of mem_reg_0_15_13_13 : label is 13;
  attribute RTL_RAM_BITS of mem_reg_0_15_14_14 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_0_15_14_14 : label is "control_s_axi_U/int_b/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_14_14 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_14_14 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_14_14 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_14_14 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_14_14 : label is 15;
  attribute ram_offset of mem_reg_0_15_14_14 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_14_14 : label is 14;
  attribute ram_slice_end of mem_reg_0_15_14_14 : label is 14;
  attribute RTL_RAM_BITS of mem_reg_0_15_15_15 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_0_15_15_15 : label is "control_s_axi_U/int_b/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_15_15 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_15_15 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_15_15 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_15_15 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_15_15 : label is 15;
  attribute ram_offset of mem_reg_0_15_15_15 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_15_15 : label is 15;
  attribute ram_slice_end of mem_reg_0_15_15_15 : label is 15;
  attribute RTL_RAM_BITS of mem_reg_0_15_16_16 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_0_15_16_16 : label is "control_s_axi_U/int_b/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_16_16 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_16_16 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_16_16 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_16_16 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_16_16 : label is 15;
  attribute ram_offset of mem_reg_0_15_16_16 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_16_16 : label is 16;
  attribute ram_slice_end of mem_reg_0_15_16_16 : label is 16;
  attribute RTL_RAM_BITS of mem_reg_0_15_17_17 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_0_15_17_17 : label is "control_s_axi_U/int_b/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_17_17 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_17_17 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_17_17 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_17_17 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_17_17 : label is 15;
  attribute ram_offset of mem_reg_0_15_17_17 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_17_17 : label is 17;
  attribute ram_slice_end of mem_reg_0_15_17_17 : label is 17;
  attribute RTL_RAM_BITS of mem_reg_0_15_18_18 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_0_15_18_18 : label is "control_s_axi_U/int_b/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_18_18 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_18_18 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_18_18 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_18_18 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_18_18 : label is 15;
  attribute ram_offset of mem_reg_0_15_18_18 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_18_18 : label is 18;
  attribute ram_slice_end of mem_reg_0_15_18_18 : label is 18;
  attribute RTL_RAM_BITS of mem_reg_0_15_19_19 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_0_15_19_19 : label is "control_s_axi_U/int_b/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_19_19 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_19_19 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_19_19 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_19_19 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_19_19 : label is 15;
  attribute ram_offset of mem_reg_0_15_19_19 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_19_19 : label is 19;
  attribute ram_slice_end of mem_reg_0_15_19_19 : label is 19;
  attribute RTL_RAM_BITS of mem_reg_0_15_1_1 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_0_15_1_1 : label is "control_s_axi_U/int_b/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_1_1 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_1_1 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_1_1 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_1_1 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_1_1 : label is 15;
  attribute ram_offset of mem_reg_0_15_1_1 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_1_1 : label is 1;
  attribute ram_slice_end of mem_reg_0_15_1_1 : label is 1;
  attribute RTL_RAM_BITS of mem_reg_0_15_20_20 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_0_15_20_20 : label is "control_s_axi_U/int_b/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_20_20 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_20_20 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_20_20 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_20_20 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_20_20 : label is 15;
  attribute ram_offset of mem_reg_0_15_20_20 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_20_20 : label is 20;
  attribute ram_slice_end of mem_reg_0_15_20_20 : label is 20;
  attribute RTL_RAM_BITS of mem_reg_0_15_21_21 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_0_15_21_21 : label is "control_s_axi_U/int_b/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_21_21 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_21_21 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_21_21 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_21_21 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_21_21 : label is 15;
  attribute ram_offset of mem_reg_0_15_21_21 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_21_21 : label is 21;
  attribute ram_slice_end of mem_reg_0_15_21_21 : label is 21;
  attribute RTL_RAM_BITS of mem_reg_0_15_22_22 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_0_15_22_22 : label is "control_s_axi_U/int_b/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_22_22 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_22_22 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_22_22 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_22_22 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_22_22 : label is 15;
  attribute ram_offset of mem_reg_0_15_22_22 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_22_22 : label is 22;
  attribute ram_slice_end of mem_reg_0_15_22_22 : label is 22;
  attribute RTL_RAM_BITS of mem_reg_0_15_23_23 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_0_15_23_23 : label is "control_s_axi_U/int_b/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_23_23 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_23_23 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_23_23 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_23_23 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_23_23 : label is 15;
  attribute ram_offset of mem_reg_0_15_23_23 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_23_23 : label is 23;
  attribute ram_slice_end of mem_reg_0_15_23_23 : label is 23;
  attribute RTL_RAM_BITS of mem_reg_0_15_24_24 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_0_15_24_24 : label is "control_s_axi_U/int_b/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_24_24 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_24_24 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_24_24 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_24_24 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_24_24 : label is 15;
  attribute ram_offset of mem_reg_0_15_24_24 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_24_24 : label is 24;
  attribute ram_slice_end of mem_reg_0_15_24_24 : label is 24;
  attribute RTL_RAM_BITS of mem_reg_0_15_25_25 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_0_15_25_25 : label is "control_s_axi_U/int_b/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_25_25 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_25_25 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_25_25 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_25_25 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_25_25 : label is 15;
  attribute ram_offset of mem_reg_0_15_25_25 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_25_25 : label is 25;
  attribute ram_slice_end of mem_reg_0_15_25_25 : label is 25;
  attribute RTL_RAM_BITS of mem_reg_0_15_26_26 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_0_15_26_26 : label is "control_s_axi_U/int_b/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_26_26 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_26_26 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_26_26 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_26_26 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_26_26 : label is 15;
  attribute ram_offset of mem_reg_0_15_26_26 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_26_26 : label is 26;
  attribute ram_slice_end of mem_reg_0_15_26_26 : label is 26;
  attribute RTL_RAM_BITS of mem_reg_0_15_27_27 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_0_15_27_27 : label is "control_s_axi_U/int_b/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_27_27 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_27_27 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_27_27 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_27_27 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_27_27 : label is 15;
  attribute ram_offset of mem_reg_0_15_27_27 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_27_27 : label is 27;
  attribute ram_slice_end of mem_reg_0_15_27_27 : label is 27;
  attribute RTL_RAM_BITS of mem_reg_0_15_28_28 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_0_15_28_28 : label is "control_s_axi_U/int_b/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_28_28 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_28_28 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_28_28 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_28_28 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_28_28 : label is 15;
  attribute ram_offset of mem_reg_0_15_28_28 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_28_28 : label is 28;
  attribute ram_slice_end of mem_reg_0_15_28_28 : label is 28;
  attribute RTL_RAM_BITS of mem_reg_0_15_29_29 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_0_15_29_29 : label is "control_s_axi_U/int_b/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_29_29 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_29_29 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_29_29 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_29_29 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_29_29 : label is 15;
  attribute ram_offset of mem_reg_0_15_29_29 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_29_29 : label is 29;
  attribute ram_slice_end of mem_reg_0_15_29_29 : label is 29;
  attribute RTL_RAM_BITS of mem_reg_0_15_2_2 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_0_15_2_2 : label is "control_s_axi_U/int_b/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_2_2 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_2_2 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_2_2 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_2_2 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_2_2 : label is 15;
  attribute ram_offset of mem_reg_0_15_2_2 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_2_2 : label is 2;
  attribute ram_slice_end of mem_reg_0_15_2_2 : label is 2;
  attribute RTL_RAM_BITS of mem_reg_0_15_30_30 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_0_15_30_30 : label is "control_s_axi_U/int_b/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_30_30 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_30_30 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_30_30 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_30_30 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_30_30 : label is 15;
  attribute ram_offset of mem_reg_0_15_30_30 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_30_30 : label is 30;
  attribute ram_slice_end of mem_reg_0_15_30_30 : label is 30;
  attribute RTL_RAM_BITS of mem_reg_0_15_31_31 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_0_15_31_31 : label is "control_s_axi_U/int_b/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_31_31 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_31_31 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_31_31 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_31_31 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_31_31 : label is 15;
  attribute ram_offset of mem_reg_0_15_31_31 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_31_31 : label is 31;
  attribute ram_slice_end of mem_reg_0_15_31_31 : label is 31;
  attribute RTL_RAM_BITS of mem_reg_0_15_3_3 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_0_15_3_3 : label is "control_s_axi_U/int_b/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_3_3 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_3_3 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_3_3 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_3_3 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_3_3 : label is 15;
  attribute ram_offset of mem_reg_0_15_3_3 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_3_3 : label is 3;
  attribute ram_slice_end of mem_reg_0_15_3_3 : label is 3;
  attribute RTL_RAM_BITS of mem_reg_0_15_4_4 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_0_15_4_4 : label is "control_s_axi_U/int_b/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_4_4 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_4_4 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_4_4 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_4_4 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_4_4 : label is 15;
  attribute ram_offset of mem_reg_0_15_4_4 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_4_4 : label is 4;
  attribute ram_slice_end of mem_reg_0_15_4_4 : label is 4;
  attribute RTL_RAM_BITS of mem_reg_0_15_5_5 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_0_15_5_5 : label is "control_s_axi_U/int_b/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_5_5 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_5_5 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_5_5 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_5_5 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_5_5 : label is 15;
  attribute ram_offset of mem_reg_0_15_5_5 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_5_5 : label is 5;
  attribute ram_slice_end of mem_reg_0_15_5_5 : label is 5;
  attribute RTL_RAM_BITS of mem_reg_0_15_6_6 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_0_15_6_6 : label is "control_s_axi_U/int_b/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_6_6 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_6_6 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_6_6 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_6_6 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_6_6 : label is 15;
  attribute ram_offset of mem_reg_0_15_6_6 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_6_6 : label is 6;
  attribute ram_slice_end of mem_reg_0_15_6_6 : label is 6;
  attribute RTL_RAM_BITS of mem_reg_0_15_7_7 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_0_15_7_7 : label is "control_s_axi_U/int_b/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_7_7 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_7_7 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_7_7 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_7_7 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_7_7 : label is 15;
  attribute ram_offset of mem_reg_0_15_7_7 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_7_7 : label is 7;
  attribute ram_slice_end of mem_reg_0_15_7_7 : label is 7;
  attribute RTL_RAM_BITS of mem_reg_0_15_8_8 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_0_15_8_8 : label is "control_s_axi_U/int_b/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_8_8 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_8_8 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_8_8 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_8_8 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_8_8 : label is 15;
  attribute ram_offset of mem_reg_0_15_8_8 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_8_8 : label is 8;
  attribute ram_slice_end of mem_reg_0_15_8_8 : label is 8;
  attribute RTL_RAM_BITS of mem_reg_0_15_9_9 : label is 512;
  attribute RTL_RAM_NAME of mem_reg_0_15_9_9 : label is "control_s_axi_U/int_b/mem_reg";
  attribute RTL_RAM_TYPE of mem_reg_0_15_9_9 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of mem_reg_0_15_9_9 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of mem_reg_0_15_9_9 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of mem_reg_0_15_9_9 : label is 0;
  attribute ram_addr_end of mem_reg_0_15_9_9 : label is 15;
  attribute ram_offset of mem_reg_0_15_9_9 : label is 0;
  attribute ram_slice_begin of mem_reg_0_15_9_9 : label is 9;
  attribute ram_slice_end of mem_reg_0_15_9_9 : label is 9;
begin
  \ar_hs__0\ <= \^ar_hs__0\;
mem_reg_0_15_0_0: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => s_axi_control_WDATA(0),
      DPO => q00(0),
      DPRA0 => ap_sig_allocacmp_i_1(0),
      DPRA1 => ap_sig_allocacmp_i_1(1),
      DPRA2 => ap_sig_allocacmp_i_1(2),
      DPRA3 => ap_sig_allocacmp_i_1(3),
      DPRA4 => '0',
      SPO => q10(0),
      WCLK => ap_clk,
      WE => \p_0_in0_out__0\(0)
    );
\mem_reg_0_15_0_0_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800080008000"
    )
        port map (
      I0 => s_axi_control_WSTRB(0),
      I1 => \q1_reg[0]_1\,
      I2 => tmp_product,
      I3 => s_axi_control_WVALID,
      I4 => \q1_reg[0]_0\,
      I5 => s_axi_control_ARVALID,
      O => \p_0_in0_out__0\(0)
    );
mem_reg_0_15_10_10: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => s_axi_control_WDATA(10),
      DPO => q00(10),
      DPRA0 => ap_sig_allocacmp_i_1(0),
      DPRA1 => ap_sig_allocacmp_i_1(1),
      DPRA2 => ap_sig_allocacmp_i_1(2),
      DPRA3 => ap_sig_allocacmp_i_1(3),
      DPRA4 => '0',
      SPO => q10(10),
      WCLK => ap_clk,
      WE => \p_0_in0_out__0\(8)
    );
mem_reg_0_15_11_11: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => s_axi_control_WDATA(11),
      DPO => q00(11),
      DPRA0 => ap_sig_allocacmp_i_1(0),
      DPRA1 => ap_sig_allocacmp_i_1(1),
      DPRA2 => ap_sig_allocacmp_i_1(2),
      DPRA3 => ap_sig_allocacmp_i_1(3),
      DPRA4 => '0',
      SPO => q10(11),
      WCLK => ap_clk,
      WE => \p_0_in0_out__0\(8)
    );
mem_reg_0_15_12_12: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => s_axi_control_WDATA(12),
      DPO => q00(12),
      DPRA0 => ap_sig_allocacmp_i_1(0),
      DPRA1 => ap_sig_allocacmp_i_1(1),
      DPRA2 => ap_sig_allocacmp_i_1(2),
      DPRA3 => ap_sig_allocacmp_i_1(3),
      DPRA4 => '0',
      SPO => q10(12),
      WCLK => ap_clk,
      WE => \p_0_in0_out__0\(8)
    );
mem_reg_0_15_13_13: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => s_axi_control_WDATA(13),
      DPO => q00(13),
      DPRA0 => ap_sig_allocacmp_i_1(0),
      DPRA1 => ap_sig_allocacmp_i_1(1),
      DPRA2 => ap_sig_allocacmp_i_1(2),
      DPRA3 => ap_sig_allocacmp_i_1(3),
      DPRA4 => '0',
      SPO => q10(13),
      WCLK => ap_clk,
      WE => \p_0_in0_out__0\(8)
    );
mem_reg_0_15_14_14: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => s_axi_control_WDATA(14),
      DPO => q00(14),
      DPRA0 => ap_sig_allocacmp_i_1(0),
      DPRA1 => ap_sig_allocacmp_i_1(1),
      DPRA2 => ap_sig_allocacmp_i_1(2),
      DPRA3 => ap_sig_allocacmp_i_1(3),
      DPRA4 => '0',
      SPO => q10(14),
      WCLK => ap_clk,
      WE => \p_0_in0_out__0\(8)
    );
mem_reg_0_15_15_15: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => s_axi_control_WDATA(15),
      DPO => q00(15),
      DPRA0 => ap_sig_allocacmp_i_1(0),
      DPRA1 => ap_sig_allocacmp_i_1(1),
      DPRA2 => ap_sig_allocacmp_i_1(2),
      DPRA3 => ap_sig_allocacmp_i_1(3),
      DPRA4 => '0',
      SPO => q10(15),
      WCLK => ap_clk,
      WE => \p_0_in0_out__0\(8)
    );
mem_reg_0_15_16_16: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => s_axi_control_WDATA(16),
      DPO => q00(16),
      DPRA0 => ap_sig_allocacmp_i_1(0),
      DPRA1 => ap_sig_allocacmp_i_1(1),
      DPRA2 => ap_sig_allocacmp_i_1(2),
      DPRA3 => ap_sig_allocacmp_i_1(3),
      DPRA4 => '0',
      SPO => q10(16),
      WCLK => ap_clk,
      WE => \p_0_in0_out__0\(16)
    );
\mem_reg_0_15_16_16_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800080008000"
    )
        port map (
      I0 => s_axi_control_WSTRB(2),
      I1 => \q1_reg[0]_1\,
      I2 => tmp_product,
      I3 => s_axi_control_WVALID,
      I4 => \q1_reg[0]_0\,
      I5 => s_axi_control_ARVALID,
      O => \p_0_in0_out__0\(16)
    );
mem_reg_0_15_17_17: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => s_axi_control_WDATA(17),
      DPO => q00(17),
      DPRA0 => ap_sig_allocacmp_i_1(0),
      DPRA1 => ap_sig_allocacmp_i_1(1),
      DPRA2 => ap_sig_allocacmp_i_1(2),
      DPRA3 => ap_sig_allocacmp_i_1(3),
      DPRA4 => '0',
      SPO => q10(17),
      WCLK => ap_clk,
      WE => \p_0_in0_out__0\(16)
    );
mem_reg_0_15_18_18: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => s_axi_control_WDATA(18),
      DPO => q00(18),
      DPRA0 => ap_sig_allocacmp_i_1(0),
      DPRA1 => ap_sig_allocacmp_i_1(1),
      DPRA2 => ap_sig_allocacmp_i_1(2),
      DPRA3 => ap_sig_allocacmp_i_1(3),
      DPRA4 => '0',
      SPO => q10(18),
      WCLK => ap_clk,
      WE => \p_0_in0_out__0\(16)
    );
mem_reg_0_15_19_19: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => s_axi_control_WDATA(19),
      DPO => q00(19),
      DPRA0 => ap_sig_allocacmp_i_1(0),
      DPRA1 => ap_sig_allocacmp_i_1(1),
      DPRA2 => ap_sig_allocacmp_i_1(2),
      DPRA3 => ap_sig_allocacmp_i_1(3),
      DPRA4 => '0',
      SPO => q10(19),
      WCLK => ap_clk,
      WE => \p_0_in0_out__0\(16)
    );
mem_reg_0_15_1_1: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => s_axi_control_WDATA(1),
      DPO => q00(1),
      DPRA0 => ap_sig_allocacmp_i_1(0),
      DPRA1 => ap_sig_allocacmp_i_1(1),
      DPRA2 => ap_sig_allocacmp_i_1(2),
      DPRA3 => ap_sig_allocacmp_i_1(3),
      DPRA4 => '0',
      SPO => q10(1),
      WCLK => ap_clk,
      WE => \p_0_in0_out__0\(0)
    );
mem_reg_0_15_20_20: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => s_axi_control_WDATA(20),
      DPO => q00(20),
      DPRA0 => ap_sig_allocacmp_i_1(0),
      DPRA1 => ap_sig_allocacmp_i_1(1),
      DPRA2 => ap_sig_allocacmp_i_1(2),
      DPRA3 => ap_sig_allocacmp_i_1(3),
      DPRA4 => '0',
      SPO => q10(20),
      WCLK => ap_clk,
      WE => \p_0_in0_out__0\(16)
    );
mem_reg_0_15_21_21: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => s_axi_control_WDATA(21),
      DPO => q00(21),
      DPRA0 => ap_sig_allocacmp_i_1(0),
      DPRA1 => ap_sig_allocacmp_i_1(1),
      DPRA2 => ap_sig_allocacmp_i_1(2),
      DPRA3 => ap_sig_allocacmp_i_1(3),
      DPRA4 => '0',
      SPO => q10(21),
      WCLK => ap_clk,
      WE => \p_0_in0_out__0\(16)
    );
mem_reg_0_15_22_22: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => s_axi_control_WDATA(22),
      DPO => q00(22),
      DPRA0 => ap_sig_allocacmp_i_1(0),
      DPRA1 => ap_sig_allocacmp_i_1(1),
      DPRA2 => ap_sig_allocacmp_i_1(2),
      DPRA3 => ap_sig_allocacmp_i_1(3),
      DPRA4 => '0',
      SPO => q10(22),
      WCLK => ap_clk,
      WE => \p_0_in0_out__0\(16)
    );
mem_reg_0_15_23_23: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => s_axi_control_WDATA(23),
      DPO => q00(23),
      DPRA0 => ap_sig_allocacmp_i_1(0),
      DPRA1 => ap_sig_allocacmp_i_1(1),
      DPRA2 => ap_sig_allocacmp_i_1(2),
      DPRA3 => ap_sig_allocacmp_i_1(3),
      DPRA4 => '0',
      SPO => q10(23),
      WCLK => ap_clk,
      WE => \p_0_in0_out__0\(16)
    );
mem_reg_0_15_24_24: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => \mem_reg_0_15_24_24_i_1__0_n_0\,
      DPO => q00(24),
      DPRA0 => ap_sig_allocacmp_i_1(0),
      DPRA1 => ap_sig_allocacmp_i_1(1),
      DPRA2 => ap_sig_allocacmp_i_1(2),
      DPRA3 => ap_sig_allocacmp_i_1(3),
      DPRA4 => '0',
      SPO => q10(24),
      WCLK => ap_clk,
      WE => \p_0_in0_out__0\(24)
    );
\mem_reg_0_15_24_24_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => s_axi_control_WSTRB(3),
      I1 => \^ar_hs__0\,
      I2 => s_axi_control_WVALID,
      I3 => tmp_product,
      I4 => \q1_reg[0]_1\,
      I5 => s_axi_control_WDATA(24),
      O => \mem_reg_0_15_24_24_i_1__0_n_0\
    );
\mem_reg_0_15_24_24_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0888000000000000"
    )
        port map (
      I0 => s_axi_control_WSTRB(3),
      I1 => tmp_product,
      I2 => s_axi_control_ARVALID,
      I3 => \q1_reg[0]_0\,
      I4 => \q1_reg[0]_1\,
      I5 => s_axi_control_WVALID,
      O => \p_0_in0_out__0\(24)
    );
mem_reg_0_15_24_24_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_control_ARVALID,
      I1 => \q1_reg[0]_0\,
      O => \^ar_hs__0\
    );
mem_reg_0_15_25_25: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => \mem_reg_0_15_25_25_i_1__0_n_0\,
      DPO => q00(25),
      DPRA0 => ap_sig_allocacmp_i_1(0),
      DPRA1 => ap_sig_allocacmp_i_1(1),
      DPRA2 => ap_sig_allocacmp_i_1(2),
      DPRA3 => ap_sig_allocacmp_i_1(3),
      DPRA4 => '0',
      SPO => q10(25),
      WCLK => ap_clk,
      WE => \p_0_in0_out__0\(24)
    );
\mem_reg_0_15_25_25_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => s_axi_control_WSTRB(3),
      I1 => \^ar_hs__0\,
      I2 => s_axi_control_WVALID,
      I3 => tmp_product,
      I4 => \q1_reg[0]_1\,
      I5 => s_axi_control_WDATA(25),
      O => \mem_reg_0_15_25_25_i_1__0_n_0\
    );
mem_reg_0_15_26_26: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => \mem_reg_0_15_26_26_i_1__0_n_0\,
      DPO => q00(26),
      DPRA0 => ap_sig_allocacmp_i_1(0),
      DPRA1 => ap_sig_allocacmp_i_1(1),
      DPRA2 => ap_sig_allocacmp_i_1(2),
      DPRA3 => ap_sig_allocacmp_i_1(3),
      DPRA4 => '0',
      SPO => q10(26),
      WCLK => ap_clk,
      WE => \p_0_in0_out__0\(24)
    );
\mem_reg_0_15_26_26_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => s_axi_control_WSTRB(3),
      I1 => \^ar_hs__0\,
      I2 => s_axi_control_WVALID,
      I3 => tmp_product,
      I4 => \q1_reg[0]_1\,
      I5 => s_axi_control_WDATA(26),
      O => \mem_reg_0_15_26_26_i_1__0_n_0\
    );
mem_reg_0_15_27_27: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => \mem_reg_0_15_27_27_i_1__0_n_0\,
      DPO => q00(27),
      DPRA0 => ap_sig_allocacmp_i_1(0),
      DPRA1 => ap_sig_allocacmp_i_1(1),
      DPRA2 => ap_sig_allocacmp_i_1(2),
      DPRA3 => ap_sig_allocacmp_i_1(3),
      DPRA4 => '0',
      SPO => q10(27),
      WCLK => ap_clk,
      WE => \p_0_in0_out__0\(24)
    );
\mem_reg_0_15_27_27_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => s_axi_control_WSTRB(3),
      I1 => \^ar_hs__0\,
      I2 => s_axi_control_WVALID,
      I3 => tmp_product,
      I4 => \q1_reg[0]_1\,
      I5 => s_axi_control_WDATA(27),
      O => \mem_reg_0_15_27_27_i_1__0_n_0\
    );
mem_reg_0_15_28_28: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => \mem_reg_0_15_28_28_i_1__0_n_0\,
      DPO => q00(28),
      DPRA0 => ap_sig_allocacmp_i_1(0),
      DPRA1 => ap_sig_allocacmp_i_1(1),
      DPRA2 => ap_sig_allocacmp_i_1(2),
      DPRA3 => ap_sig_allocacmp_i_1(3),
      DPRA4 => '0',
      SPO => q10(28),
      WCLK => ap_clk,
      WE => \p_0_in0_out__0\(24)
    );
\mem_reg_0_15_28_28_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => s_axi_control_WSTRB(3),
      I1 => \^ar_hs__0\,
      I2 => s_axi_control_WVALID,
      I3 => tmp_product,
      I4 => \q1_reg[0]_1\,
      I5 => s_axi_control_WDATA(28),
      O => \mem_reg_0_15_28_28_i_1__0_n_0\
    );
mem_reg_0_15_29_29: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => \mem_reg_0_15_29_29_i_1__0_n_0\,
      DPO => q00(29),
      DPRA0 => ap_sig_allocacmp_i_1(0),
      DPRA1 => ap_sig_allocacmp_i_1(1),
      DPRA2 => ap_sig_allocacmp_i_1(2),
      DPRA3 => ap_sig_allocacmp_i_1(3),
      DPRA4 => '0',
      SPO => q10(29),
      WCLK => ap_clk,
      WE => \p_0_in0_out__0\(24)
    );
\mem_reg_0_15_29_29_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => s_axi_control_WSTRB(3),
      I1 => \^ar_hs__0\,
      I2 => s_axi_control_WVALID,
      I3 => tmp_product,
      I4 => \q1_reg[0]_1\,
      I5 => s_axi_control_WDATA(29),
      O => \mem_reg_0_15_29_29_i_1__0_n_0\
    );
mem_reg_0_15_2_2: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => s_axi_control_WDATA(2),
      DPO => q00(2),
      DPRA0 => ap_sig_allocacmp_i_1(0),
      DPRA1 => ap_sig_allocacmp_i_1(1),
      DPRA2 => ap_sig_allocacmp_i_1(2),
      DPRA3 => ap_sig_allocacmp_i_1(3),
      DPRA4 => '0',
      SPO => q10(2),
      WCLK => ap_clk,
      WE => \p_0_in0_out__0\(0)
    );
mem_reg_0_15_30_30: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => \mem_reg_0_15_30_30_i_1__0_n_0\,
      DPO => q00(30),
      DPRA0 => ap_sig_allocacmp_i_1(0),
      DPRA1 => ap_sig_allocacmp_i_1(1),
      DPRA2 => ap_sig_allocacmp_i_1(2),
      DPRA3 => ap_sig_allocacmp_i_1(3),
      DPRA4 => '0',
      SPO => q10(30),
      WCLK => ap_clk,
      WE => \p_0_in0_out__0\(24)
    );
\mem_reg_0_15_30_30_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => s_axi_control_WSTRB(3),
      I1 => \^ar_hs__0\,
      I2 => s_axi_control_WVALID,
      I3 => tmp_product,
      I4 => \q1_reg[0]_1\,
      I5 => s_axi_control_WDATA(30),
      O => \mem_reg_0_15_30_30_i_1__0_n_0\
    );
mem_reg_0_15_31_31: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => \mem_reg_0_15_31_31_i_1__0_n_0\,
      DPO => q00(31),
      DPRA0 => ap_sig_allocacmp_i_1(0),
      DPRA1 => ap_sig_allocacmp_i_1(1),
      DPRA2 => ap_sig_allocacmp_i_1(2),
      DPRA3 => ap_sig_allocacmp_i_1(3),
      DPRA4 => '0',
      SPO => q10(31),
      WCLK => ap_clk,
      WE => \p_0_in0_out__0\(24)
    );
\mem_reg_0_15_31_31_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => s_axi_control_WSTRB(3),
      I1 => \^ar_hs__0\,
      I2 => s_axi_control_WVALID,
      I3 => tmp_product,
      I4 => \q1_reg[0]_1\,
      I5 => s_axi_control_WDATA(31),
      O => \mem_reg_0_15_31_31_i_1__0_n_0\
    );
mem_reg_0_15_3_3: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => s_axi_control_WDATA(3),
      DPO => q00(3),
      DPRA0 => ap_sig_allocacmp_i_1(0),
      DPRA1 => ap_sig_allocacmp_i_1(1),
      DPRA2 => ap_sig_allocacmp_i_1(2),
      DPRA3 => ap_sig_allocacmp_i_1(3),
      DPRA4 => '0',
      SPO => q10(3),
      WCLK => ap_clk,
      WE => \p_0_in0_out__0\(0)
    );
mem_reg_0_15_4_4: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => s_axi_control_WDATA(4),
      DPO => q00(4),
      DPRA0 => ap_sig_allocacmp_i_1(0),
      DPRA1 => ap_sig_allocacmp_i_1(1),
      DPRA2 => ap_sig_allocacmp_i_1(2),
      DPRA3 => ap_sig_allocacmp_i_1(3),
      DPRA4 => '0',
      SPO => q10(4),
      WCLK => ap_clk,
      WE => \p_0_in0_out__0\(0)
    );
mem_reg_0_15_5_5: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => s_axi_control_WDATA(5),
      DPO => q00(5),
      DPRA0 => ap_sig_allocacmp_i_1(0),
      DPRA1 => ap_sig_allocacmp_i_1(1),
      DPRA2 => ap_sig_allocacmp_i_1(2),
      DPRA3 => ap_sig_allocacmp_i_1(3),
      DPRA4 => '0',
      SPO => q10(5),
      WCLK => ap_clk,
      WE => \p_0_in0_out__0\(0)
    );
mem_reg_0_15_6_6: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => s_axi_control_WDATA(6),
      DPO => q00(6),
      DPRA0 => ap_sig_allocacmp_i_1(0),
      DPRA1 => ap_sig_allocacmp_i_1(1),
      DPRA2 => ap_sig_allocacmp_i_1(2),
      DPRA3 => ap_sig_allocacmp_i_1(3),
      DPRA4 => '0',
      SPO => q10(6),
      WCLK => ap_clk,
      WE => \p_0_in0_out__0\(0)
    );
mem_reg_0_15_7_7: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => s_axi_control_WDATA(7),
      DPO => q00(7),
      DPRA0 => ap_sig_allocacmp_i_1(0),
      DPRA1 => ap_sig_allocacmp_i_1(1),
      DPRA2 => ap_sig_allocacmp_i_1(2),
      DPRA3 => ap_sig_allocacmp_i_1(3),
      DPRA4 => '0',
      SPO => q10(7),
      WCLK => ap_clk,
      WE => \p_0_in0_out__0\(0)
    );
mem_reg_0_15_8_8: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => s_axi_control_WDATA(8),
      DPO => q00(8),
      DPRA0 => ap_sig_allocacmp_i_1(0),
      DPRA1 => ap_sig_allocacmp_i_1(1),
      DPRA2 => ap_sig_allocacmp_i_1(2),
      DPRA3 => ap_sig_allocacmp_i_1(3),
      DPRA4 => '0',
      SPO => q10(8),
      WCLK => ap_clk,
      WE => \p_0_in0_out__0\(8)
    );
\mem_reg_0_15_8_8_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800080008000"
    )
        port map (
      I0 => s_axi_control_WSTRB(1),
      I1 => \q1_reg[0]_1\,
      I2 => tmp_product,
      I3 => s_axi_control_WVALID,
      I4 => \q1_reg[0]_0\,
      I5 => s_axi_control_ARVALID,
      O => \p_0_in0_out__0\(8)
    );
mem_reg_0_15_9_9: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => int_a_address1(0),
      A1 => int_a_address1(1),
      A2 => int_a_address1(2),
      A3 => int_a_address1(3),
      A4 => '0',
      D => s_axi_control_WDATA(9),
      DPO => q00(9),
      DPRA0 => ap_sig_allocacmp_i_1(0),
      DPRA1 => ap_sig_allocacmp_i_1(1),
      DPRA2 => ap_sig_allocacmp_i_1(2),
      DPRA3 => ap_sig_allocacmp_i_1(3),
      DPRA4 => '0',
      SPO => q10(9),
      WCLK => ap_clk,
      WE => \p_0_in0_out__0\(8)
    );
\q1[31]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s_axi_control_WVALID,
      I1 => \q1_reg[0]_1\,
      I2 => \q1_reg[0]_0\,
      I3 => s_axi_control_ARVALID,
      O => int_b_ce1
    );
\q1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_b_ce1,
      D => q10(0),
      Q => \q1_reg[9]_0\(0),
      R => '0'
    );
\q1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_b_ce1,
      D => q10(10),
      Q => \q1_reg_n_0_[10]\,
      R => '0'
    );
\q1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_b_ce1,
      D => q10(11),
      Q => \q1_reg_n_0_[11]\,
      R => '0'
    );
\q1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_b_ce1,
      D => q10(12),
      Q => \q1_reg_n_0_[12]\,
      R => '0'
    );
\q1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_b_ce1,
      D => q10(13),
      Q => \q1_reg_n_0_[13]\,
      R => '0'
    );
\q1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_b_ce1,
      D => q10(14),
      Q => \q1_reg_n_0_[14]\,
      R => '0'
    );
\q1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_b_ce1,
      D => q10(15),
      Q => \q1_reg_n_0_[15]\,
      R => '0'
    );
\q1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_b_ce1,
      D => q10(16),
      Q => \q1_reg_n_0_[16]\,
      R => '0'
    );
\q1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_b_ce1,
      D => q10(17),
      Q => \q1_reg_n_0_[17]\,
      R => '0'
    );
\q1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_b_ce1,
      D => q10(18),
      Q => \q1_reg_n_0_[18]\,
      R => '0'
    );
\q1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_b_ce1,
      D => q10(19),
      Q => \q1_reg_n_0_[19]\,
      R => '0'
    );
\q1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_b_ce1,
      D => q10(1),
      Q => \q1_reg[9]_0\(1),
      R => '0'
    );
\q1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_b_ce1,
      D => q10(20),
      Q => \q1_reg_n_0_[20]\,
      R => '0'
    );
\q1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_b_ce1,
      D => q10(21),
      Q => \q1_reg_n_0_[21]\,
      R => '0'
    );
\q1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_b_ce1,
      D => q10(22),
      Q => \q1_reg_n_0_[22]\,
      R => '0'
    );
\q1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_b_ce1,
      D => q10(23),
      Q => \q1_reg_n_0_[23]\,
      R => '0'
    );
\q1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_b_ce1,
      D => q10(24),
      Q => \q1_reg_n_0_[24]\,
      R => '0'
    );
\q1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_b_ce1,
      D => q10(25),
      Q => \q1_reg_n_0_[25]\,
      R => '0'
    );
\q1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_b_ce1,
      D => q10(26),
      Q => \q1_reg_n_0_[26]\,
      R => '0'
    );
\q1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_b_ce1,
      D => q10(27),
      Q => \q1_reg_n_0_[27]\,
      R => '0'
    );
\q1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_b_ce1,
      D => q10(28),
      Q => \q1_reg_n_0_[28]\,
      R => '0'
    );
\q1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_b_ce1,
      D => q10(29),
      Q => \q1_reg_n_0_[29]\,
      R => '0'
    );
\q1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_b_ce1,
      D => q10(2),
      Q => \q1_reg[9]_0\(2),
      R => '0'
    );
\q1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_b_ce1,
      D => q10(30),
      Q => \q1_reg_n_0_[30]\,
      R => '0'
    );
\q1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_b_ce1,
      D => q10(31),
      Q => \q1_reg_n_0_[31]\,
      R => '0'
    );
\q1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_b_ce1,
      D => q10(3),
      Q => \q1_reg[9]_0\(3),
      R => '0'
    );
\q1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_b_ce1,
      D => q10(4),
      Q => \q1_reg_n_0_[4]\,
      R => '0'
    );
\q1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_b_ce1,
      D => q10(5),
      Q => \q1_reg_n_0_[5]\,
      R => '0'
    );
\q1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_b_ce1,
      D => q10(6),
      Q => \q1_reg_n_0_[6]\,
      R => '0'
    );
\q1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_b_ce1,
      D => q10(7),
      Q => \q1_reg[9]_0\(4),
      R => '0'
    );
\q1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_b_ce1,
      D => q10(8),
      Q => \q1_reg_n_0_[8]\,
      R => '0'
    );
\q1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => int_b_ce1,
      D => q10(9),
      Q => \q1_reg[9]_0\(5),
      R => '0'
    );
\rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \q1_reg_n_0_[10]\,
      I1 => \rdata_reg[4]\,
      I2 => \rdata_reg[4]_0\,
      I3 => \rdata_reg[31]\(4),
      I4 => Q(4),
      I5 => \rdata_reg[4]_1\,
      O => D(4)
    );
\rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \q1_reg_n_0_[11]\,
      I1 => \rdata_reg[4]\,
      I2 => \rdata_reg[4]_0\,
      I3 => \rdata_reg[31]\(5),
      I4 => Q(5),
      I5 => \rdata_reg[4]_1\,
      O => D(5)
    );
\rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \q1_reg_n_0_[12]\,
      I1 => \rdata_reg[4]\,
      I2 => \rdata_reg[4]_0\,
      I3 => \rdata_reg[31]\(6),
      I4 => Q(6),
      I5 => \rdata_reg[4]_1\,
      O => D(6)
    );
\rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \q1_reg_n_0_[13]\,
      I1 => \rdata_reg[4]\,
      I2 => \rdata_reg[4]_0\,
      I3 => \rdata_reg[31]\(7),
      I4 => Q(7),
      I5 => \rdata_reg[4]_1\,
      O => D(7)
    );
\rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \q1_reg_n_0_[14]\,
      I1 => \rdata_reg[4]\,
      I2 => \rdata_reg[4]_0\,
      I3 => \rdata_reg[31]\(8),
      I4 => Q(8),
      I5 => \rdata_reg[4]_1\,
      O => D(8)
    );
\rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \q1_reg_n_0_[15]\,
      I1 => \rdata_reg[4]\,
      I2 => \rdata_reg[4]_0\,
      I3 => \rdata_reg[31]\(9),
      I4 => Q(9),
      I5 => \rdata_reg[4]_1\,
      O => D(9)
    );
\rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \q1_reg_n_0_[16]\,
      I1 => \rdata_reg[4]\,
      I2 => \rdata_reg[4]_0\,
      I3 => \rdata_reg[31]\(10),
      I4 => Q(10),
      I5 => \rdata_reg[4]_1\,
      O => D(10)
    );
\rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \q1_reg_n_0_[17]\,
      I1 => \rdata_reg[4]\,
      I2 => \rdata_reg[4]_0\,
      I3 => \rdata_reg[31]\(11),
      I4 => Q(11),
      I5 => \rdata_reg[4]_1\,
      O => D(11)
    );
\rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \q1_reg_n_0_[18]\,
      I1 => \rdata_reg[4]\,
      I2 => \rdata_reg[4]_0\,
      I3 => \rdata_reg[31]\(12),
      I4 => Q(12),
      I5 => \rdata_reg[4]_1\,
      O => D(12)
    );
\rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \q1_reg_n_0_[19]\,
      I1 => \rdata_reg[4]\,
      I2 => \rdata_reg[4]_0\,
      I3 => \rdata_reg[31]\(13),
      I4 => Q(13),
      I5 => \rdata_reg[4]_1\,
      O => D(13)
    );
\rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \q1_reg_n_0_[20]\,
      I1 => \rdata_reg[4]\,
      I2 => \rdata_reg[4]_0\,
      I3 => \rdata_reg[31]\(14),
      I4 => Q(14),
      I5 => \rdata_reg[4]_1\,
      O => D(14)
    );
\rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \q1_reg_n_0_[21]\,
      I1 => \rdata_reg[4]\,
      I2 => \rdata_reg[4]_0\,
      I3 => \rdata_reg[31]\(15),
      I4 => Q(15),
      I5 => \rdata_reg[4]_1\,
      O => D(15)
    );
\rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \q1_reg_n_0_[22]\,
      I1 => \rdata_reg[4]\,
      I2 => \rdata_reg[4]_0\,
      I3 => \rdata_reg[31]\(16),
      I4 => Q(16),
      I5 => \rdata_reg[4]_1\,
      O => D(16)
    );
\rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \q1_reg_n_0_[23]\,
      I1 => \rdata_reg[4]\,
      I2 => \rdata_reg[4]_0\,
      I3 => \rdata_reg[31]\(17),
      I4 => Q(17),
      I5 => \rdata_reg[4]_1\,
      O => D(17)
    );
\rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \q1_reg_n_0_[24]\,
      I1 => \rdata_reg[4]\,
      I2 => \rdata_reg[4]_0\,
      I3 => \rdata_reg[31]\(18),
      I4 => Q(18),
      I5 => \rdata_reg[4]_1\,
      O => D(18)
    );
\rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \q1_reg_n_0_[25]\,
      I1 => \rdata_reg[4]\,
      I2 => \rdata_reg[4]_0\,
      I3 => \rdata_reg[31]\(19),
      I4 => Q(19),
      I5 => \rdata_reg[4]_1\,
      O => D(19)
    );
\rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \q1_reg_n_0_[26]\,
      I1 => \rdata_reg[4]\,
      I2 => \rdata_reg[4]_0\,
      I3 => \rdata_reg[31]\(20),
      I4 => Q(20),
      I5 => \rdata_reg[4]_1\,
      O => D(20)
    );
\rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \q1_reg_n_0_[27]\,
      I1 => \rdata_reg[4]\,
      I2 => \rdata_reg[4]_0\,
      I3 => \rdata_reg[31]\(21),
      I4 => Q(21),
      I5 => \rdata_reg[4]_1\,
      O => D(21)
    );
\rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \q1_reg_n_0_[28]\,
      I1 => \rdata_reg[4]\,
      I2 => \rdata_reg[4]_0\,
      I3 => \rdata_reg[31]\(22),
      I4 => Q(22),
      I5 => \rdata_reg[4]_1\,
      O => D(22)
    );
\rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \q1_reg_n_0_[29]\,
      I1 => \rdata_reg[4]\,
      I2 => \rdata_reg[4]_0\,
      I3 => \rdata_reg[31]\(23),
      I4 => Q(23),
      I5 => \rdata_reg[4]_1\,
      O => D(23)
    );
\rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \q1_reg_n_0_[30]\,
      I1 => \rdata_reg[4]\,
      I2 => \rdata_reg[4]_0\,
      I3 => \rdata_reg[31]\(24),
      I4 => Q(24),
      I5 => \rdata_reg[4]_1\,
      O => D(24)
    );
\rdata[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \q1_reg_n_0_[31]\,
      I1 => \rdata_reg[4]\,
      I2 => \rdata_reg[4]_0\,
      I3 => \rdata_reg[31]\(25),
      I4 => Q(25),
      I5 => \rdata_reg[4]_1\,
      O => D(25)
    );
\rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \q1_reg_n_0_[4]\,
      I1 => \rdata_reg[4]\,
      I2 => \rdata_reg[4]_0\,
      I3 => \rdata_reg[31]\(0),
      I4 => Q(0),
      I5 => \rdata_reg[4]_1\,
      O => D(0)
    );
\rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \q1_reg_n_0_[5]\,
      I1 => \rdata_reg[4]\,
      I2 => \rdata_reg[4]_0\,
      I3 => \rdata_reg[31]\(1),
      I4 => Q(1),
      I5 => \rdata_reg[4]_1\,
      O => D(1)
    );
\rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \q1_reg_n_0_[6]\,
      I1 => \rdata_reg[4]\,
      I2 => \rdata_reg[4]_0\,
      I3 => \rdata_reg[31]\(2),
      I4 => Q(2),
      I5 => \rdata_reg[4]_1\,
      O => D(2)
    );
\rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \q1_reg_n_0_[8]\,
      I1 => \rdata_reg[4]\,
      I2 => \rdata_reg[4]_0\,
      I3 => \rdata_reg[31]\(3),
      I4 => Q(3),
      I5 => \rdata_reg[4]_1\,
      O => D(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_muladd_0_0_muladd_flow_control_loop_pipe is
  port (
    ap_loop_init : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ap_condition_151 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    icmp_ln8_fu_105_p2 : out STD_LOGIC;
    ap_rst_n_0 : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ap_start : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_muladd_0_0_muladd_flow_control_loop_pipe : entity is "muladd_flow_control_loop_pipe";
end design_1_muladd_0_0_muladd_flow_control_loop_pipe;

architecture STRUCTURE of design_1_muladd_0_0_muladd_flow_control_loop_pipe is
  signal \^ap_condition_151\ : STD_LOGIC;
  signal \^ap_loop_init\ : STD_LOGIC;
  signal ap_loop_init_i_1_n_0 : STD_LOGIC;
  signal \^icmp_ln8_fu_105_p2\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of ap_enable_reg_pp0_iter1_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of ap_loop_init_i_1 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \i_fu_62[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \i_fu_62[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \i_fu_62[4]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \temp_fu_58[0]_i_1\ : label is "soft_lutpair8";
begin
  ap_condition_151 <= \^ap_condition_151\;
  ap_loop_init <= \^ap_loop_init\;
  icmp_ln8_fu_105_p2 <= \^icmp_ln8_fu_105_p2\;
ap_enable_reg_pp0_iter1_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => ap_rst_n,
      I1 => \^icmp_ln8_fu_105_p2\,
      I2 => ap_start,
      O => ap_rst_n_0
    );
ap_loop_init_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F5DD"
    )
        port map (
      I0 => ap_rst_n,
      I1 => \^ap_loop_init\,
      I2 => \^icmp_ln8_fu_105_p2\,
      I3 => ap_start,
      O => ap_loop_init_i_1_n_0
    );
ap_loop_init_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_loop_init_i_1_n_0,
      Q => \^ap_loop_init\,
      R => '0'
    );
\i_fu_62[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFFFFFEF"
    )
        port map (
      I0 => Q(2),
      I1 => Q(3),
      I2 => Q(4),
      I3 => Q(1),
      I4 => \^ap_condition_151\,
      I5 => Q(0),
      O => D(0)
    );
\i_fu_62[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => \^ap_condition_151\,
      O => D(1)
    );
\i_fu_62[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0708"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => \^ap_condition_151\,
      I3 => Q(2),
      O => D(2)
    );
\i_fu_62[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007800F0"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(3),
      I3 => \^ap_condition_151\,
      I4 => Q(2),
      O => D(3)
    );
\i_fu_62[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => \^ap_loop_init\,
      I1 => \^icmp_ln8_fu_105_p2\,
      I2 => ap_start,
      O => E(0)
    );
\i_fu_62[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"070F0F0E08000000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => \^ap_condition_151\,
      I3 => Q(0),
      I4 => Q(2),
      I5 => Q(4),
      O => D(4)
    );
int_ap_start_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => Q(1),
      I1 => Q(4),
      I2 => Q(0),
      I3 => Q(3),
      I4 => \^ap_condition_151\,
      I5 => Q(2),
      O => \^icmp_ln8_fu_105_p2\
    );
\temp_fu_58[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^ap_loop_init\,
      I1 => ap_start,
      O => \^ap_condition_151\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_muladd_0_0_muladd_mul_32s_32s_32_2_1 is
  port (
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ap_start : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    q00 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dout_reg_0 : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_muladd_0_0_muladd_mul_32s_32s_32_2_1 : entity is "muladd_mul_32s_32s_32_2_1";
end design_1_muladd_0_0_muladd_mul_32s_32s_32_2_1;

architecture STRUCTURE of design_1_muladd_0_0_muladd_mul_32s_32s_32_2_1 is
  signal \dout_reg[16]__0_n_0\ : STD_LOGIC;
  signal dout_reg_n_100 : STD_LOGIC;
  signal dout_reg_n_101 : STD_LOGIC;
  signal dout_reg_n_102 : STD_LOGIC;
  signal dout_reg_n_103 : STD_LOGIC;
  signal dout_reg_n_104 : STD_LOGIC;
  signal dout_reg_n_105 : STD_LOGIC;
  signal dout_reg_n_58 : STD_LOGIC;
  signal dout_reg_n_59 : STD_LOGIC;
  signal dout_reg_n_60 : STD_LOGIC;
  signal dout_reg_n_61 : STD_LOGIC;
  signal dout_reg_n_62 : STD_LOGIC;
  signal dout_reg_n_63 : STD_LOGIC;
  signal dout_reg_n_64 : STD_LOGIC;
  signal dout_reg_n_65 : STD_LOGIC;
  signal dout_reg_n_66 : STD_LOGIC;
  signal dout_reg_n_67 : STD_LOGIC;
  signal dout_reg_n_68 : STD_LOGIC;
  signal dout_reg_n_69 : STD_LOGIC;
  signal dout_reg_n_70 : STD_LOGIC;
  signal dout_reg_n_71 : STD_LOGIC;
  signal dout_reg_n_72 : STD_LOGIC;
  signal dout_reg_n_73 : STD_LOGIC;
  signal dout_reg_n_74 : STD_LOGIC;
  signal dout_reg_n_75 : STD_LOGIC;
  signal dout_reg_n_76 : STD_LOGIC;
  signal dout_reg_n_77 : STD_LOGIC;
  signal dout_reg_n_78 : STD_LOGIC;
  signal dout_reg_n_79 : STD_LOGIC;
  signal dout_reg_n_80 : STD_LOGIC;
  signal dout_reg_n_81 : STD_LOGIC;
  signal dout_reg_n_82 : STD_LOGIC;
  signal dout_reg_n_83 : STD_LOGIC;
  signal dout_reg_n_84 : STD_LOGIC;
  signal dout_reg_n_85 : STD_LOGIC;
  signal dout_reg_n_86 : STD_LOGIC;
  signal dout_reg_n_87 : STD_LOGIC;
  signal dout_reg_n_88 : STD_LOGIC;
  signal dout_reg_n_89 : STD_LOGIC;
  signal dout_reg_n_90 : STD_LOGIC;
  signal dout_reg_n_91 : STD_LOGIC;
  signal dout_reg_n_92 : STD_LOGIC;
  signal dout_reg_n_93 : STD_LOGIC;
  signal dout_reg_n_94 : STD_LOGIC;
  signal dout_reg_n_95 : STD_LOGIC;
  signal dout_reg_n_96 : STD_LOGIC;
  signal dout_reg_n_97 : STD_LOGIC;
  signal dout_reg_n_98 : STD_LOGIC;
  signal dout_reg_n_99 : STD_LOGIC;
  signal \mul_ln10_reg_187[19]_i_2_n_0\ : STD_LOGIC;
  signal \mul_ln10_reg_187[19]_i_3_n_0\ : STD_LOGIC;
  signal \mul_ln10_reg_187[19]_i_4_n_0\ : STD_LOGIC;
  signal \mul_ln10_reg_187[23]_i_2_n_0\ : STD_LOGIC;
  signal \mul_ln10_reg_187[23]_i_3_n_0\ : STD_LOGIC;
  signal \mul_ln10_reg_187[23]_i_4_n_0\ : STD_LOGIC;
  signal \mul_ln10_reg_187[23]_i_5_n_0\ : STD_LOGIC;
  signal \mul_ln10_reg_187[27]_i_2_n_0\ : STD_LOGIC;
  signal \mul_ln10_reg_187[27]_i_3_n_0\ : STD_LOGIC;
  signal \mul_ln10_reg_187[27]_i_4_n_0\ : STD_LOGIC;
  signal \mul_ln10_reg_187[27]_i_5_n_0\ : STD_LOGIC;
  signal \mul_ln10_reg_187[31]_i_2_n_0\ : STD_LOGIC;
  signal \mul_ln10_reg_187[31]_i_3_n_0\ : STD_LOGIC;
  signal \mul_ln10_reg_187[31]_i_4_n_0\ : STD_LOGIC;
  signal \mul_ln10_reg_187[31]_i_5_n_0\ : STD_LOGIC;
  signal \mul_ln10_reg_187_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \mul_ln10_reg_187_reg[19]_i_1_n_1\ : STD_LOGIC;
  signal \mul_ln10_reg_187_reg[19]_i_1_n_2\ : STD_LOGIC;
  signal \mul_ln10_reg_187_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \mul_ln10_reg_187_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \mul_ln10_reg_187_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \mul_ln10_reg_187_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \mul_ln10_reg_187_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \mul_ln10_reg_187_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \mul_ln10_reg_187_reg[27]_i_1_n_1\ : STD_LOGIC;
  signal \mul_ln10_reg_187_reg[27]_i_1_n_2\ : STD_LOGIC;
  signal \mul_ln10_reg_187_reg[27]_i_1_n_3\ : STD_LOGIC;
  signal \mul_ln10_reg_187_reg[31]_i_1_n_1\ : STD_LOGIC;
  signal \mul_ln10_reg_187_reg[31]_i_1_n_2\ : STD_LOGIC;
  signal \mul_ln10_reg_187_reg[31]_i_1_n_3\ : STD_LOGIC;
  signal \tmp_product__0_n_100\ : STD_LOGIC;
  signal \tmp_product__0_n_101\ : STD_LOGIC;
  signal \tmp_product__0_n_102\ : STD_LOGIC;
  signal \tmp_product__0_n_103\ : STD_LOGIC;
  signal \tmp_product__0_n_104\ : STD_LOGIC;
  signal \tmp_product__0_n_105\ : STD_LOGIC;
  signal \tmp_product__0_n_106\ : STD_LOGIC;
  signal \tmp_product__0_n_107\ : STD_LOGIC;
  signal \tmp_product__0_n_108\ : STD_LOGIC;
  signal \tmp_product__0_n_109\ : STD_LOGIC;
  signal \tmp_product__0_n_110\ : STD_LOGIC;
  signal \tmp_product__0_n_111\ : STD_LOGIC;
  signal \tmp_product__0_n_112\ : STD_LOGIC;
  signal \tmp_product__0_n_113\ : STD_LOGIC;
  signal \tmp_product__0_n_114\ : STD_LOGIC;
  signal \tmp_product__0_n_115\ : STD_LOGIC;
  signal \tmp_product__0_n_116\ : STD_LOGIC;
  signal \tmp_product__0_n_117\ : STD_LOGIC;
  signal \tmp_product__0_n_118\ : STD_LOGIC;
  signal \tmp_product__0_n_119\ : STD_LOGIC;
  signal \tmp_product__0_n_120\ : STD_LOGIC;
  signal \tmp_product__0_n_121\ : STD_LOGIC;
  signal \tmp_product__0_n_122\ : STD_LOGIC;
  signal \tmp_product__0_n_123\ : STD_LOGIC;
  signal \tmp_product__0_n_124\ : STD_LOGIC;
  signal \tmp_product__0_n_125\ : STD_LOGIC;
  signal \tmp_product__0_n_126\ : STD_LOGIC;
  signal \tmp_product__0_n_127\ : STD_LOGIC;
  signal \tmp_product__0_n_128\ : STD_LOGIC;
  signal \tmp_product__0_n_129\ : STD_LOGIC;
  signal \tmp_product__0_n_130\ : STD_LOGIC;
  signal \tmp_product__0_n_131\ : STD_LOGIC;
  signal \tmp_product__0_n_132\ : STD_LOGIC;
  signal \tmp_product__0_n_133\ : STD_LOGIC;
  signal \tmp_product__0_n_134\ : STD_LOGIC;
  signal \tmp_product__0_n_135\ : STD_LOGIC;
  signal \tmp_product__0_n_136\ : STD_LOGIC;
  signal \tmp_product__0_n_137\ : STD_LOGIC;
  signal \tmp_product__0_n_138\ : STD_LOGIC;
  signal \tmp_product__0_n_139\ : STD_LOGIC;
  signal \tmp_product__0_n_140\ : STD_LOGIC;
  signal \tmp_product__0_n_141\ : STD_LOGIC;
  signal \tmp_product__0_n_142\ : STD_LOGIC;
  signal \tmp_product__0_n_143\ : STD_LOGIC;
  signal \tmp_product__0_n_144\ : STD_LOGIC;
  signal \tmp_product__0_n_145\ : STD_LOGIC;
  signal \tmp_product__0_n_146\ : STD_LOGIC;
  signal \tmp_product__0_n_147\ : STD_LOGIC;
  signal \tmp_product__0_n_148\ : STD_LOGIC;
  signal \tmp_product__0_n_149\ : STD_LOGIC;
  signal \tmp_product__0_n_150\ : STD_LOGIC;
  signal \tmp_product__0_n_151\ : STD_LOGIC;
  signal \tmp_product__0_n_152\ : STD_LOGIC;
  signal \tmp_product__0_n_153\ : STD_LOGIC;
  signal \tmp_product__0_n_58\ : STD_LOGIC;
  signal \tmp_product__0_n_59\ : STD_LOGIC;
  signal \tmp_product__0_n_60\ : STD_LOGIC;
  signal \tmp_product__0_n_61\ : STD_LOGIC;
  signal \tmp_product__0_n_62\ : STD_LOGIC;
  signal \tmp_product__0_n_63\ : STD_LOGIC;
  signal \tmp_product__0_n_64\ : STD_LOGIC;
  signal \tmp_product__0_n_65\ : STD_LOGIC;
  signal \tmp_product__0_n_66\ : STD_LOGIC;
  signal \tmp_product__0_n_67\ : STD_LOGIC;
  signal \tmp_product__0_n_68\ : STD_LOGIC;
  signal \tmp_product__0_n_69\ : STD_LOGIC;
  signal \tmp_product__0_n_70\ : STD_LOGIC;
  signal \tmp_product__0_n_71\ : STD_LOGIC;
  signal \tmp_product__0_n_72\ : STD_LOGIC;
  signal \tmp_product__0_n_73\ : STD_LOGIC;
  signal \tmp_product__0_n_74\ : STD_LOGIC;
  signal \tmp_product__0_n_75\ : STD_LOGIC;
  signal \tmp_product__0_n_76\ : STD_LOGIC;
  signal \tmp_product__0_n_77\ : STD_LOGIC;
  signal \tmp_product__0_n_78\ : STD_LOGIC;
  signal \tmp_product__0_n_79\ : STD_LOGIC;
  signal \tmp_product__0_n_80\ : STD_LOGIC;
  signal \tmp_product__0_n_81\ : STD_LOGIC;
  signal \tmp_product__0_n_82\ : STD_LOGIC;
  signal \tmp_product__0_n_83\ : STD_LOGIC;
  signal \tmp_product__0_n_84\ : STD_LOGIC;
  signal \tmp_product__0_n_85\ : STD_LOGIC;
  signal \tmp_product__0_n_86\ : STD_LOGIC;
  signal \tmp_product__0_n_87\ : STD_LOGIC;
  signal \tmp_product__0_n_88\ : STD_LOGIC;
  signal \tmp_product__0_n_89\ : STD_LOGIC;
  signal \tmp_product__0_n_90\ : STD_LOGIC;
  signal \tmp_product__0_n_91\ : STD_LOGIC;
  signal \tmp_product__0_n_92\ : STD_LOGIC;
  signal \tmp_product__0_n_93\ : STD_LOGIC;
  signal \tmp_product__0_n_94\ : STD_LOGIC;
  signal \tmp_product__0_n_95\ : STD_LOGIC;
  signal \tmp_product__0_n_96\ : STD_LOGIC;
  signal \tmp_product__0_n_97\ : STD_LOGIC;
  signal \tmp_product__0_n_98\ : STD_LOGIC;
  signal \tmp_product__0_n_99\ : STD_LOGIC;
  signal tmp_product_n_100 : STD_LOGIC;
  signal tmp_product_n_101 : STD_LOGIC;
  signal tmp_product_n_102 : STD_LOGIC;
  signal tmp_product_n_103 : STD_LOGIC;
  signal tmp_product_n_104 : STD_LOGIC;
  signal tmp_product_n_105 : STD_LOGIC;
  signal tmp_product_n_106 : STD_LOGIC;
  signal tmp_product_n_107 : STD_LOGIC;
  signal tmp_product_n_108 : STD_LOGIC;
  signal tmp_product_n_109 : STD_LOGIC;
  signal tmp_product_n_110 : STD_LOGIC;
  signal tmp_product_n_111 : STD_LOGIC;
  signal tmp_product_n_112 : STD_LOGIC;
  signal tmp_product_n_113 : STD_LOGIC;
  signal tmp_product_n_114 : STD_LOGIC;
  signal tmp_product_n_115 : STD_LOGIC;
  signal tmp_product_n_116 : STD_LOGIC;
  signal tmp_product_n_117 : STD_LOGIC;
  signal tmp_product_n_118 : STD_LOGIC;
  signal tmp_product_n_119 : STD_LOGIC;
  signal tmp_product_n_120 : STD_LOGIC;
  signal tmp_product_n_121 : STD_LOGIC;
  signal tmp_product_n_122 : STD_LOGIC;
  signal tmp_product_n_123 : STD_LOGIC;
  signal tmp_product_n_124 : STD_LOGIC;
  signal tmp_product_n_125 : STD_LOGIC;
  signal tmp_product_n_126 : STD_LOGIC;
  signal tmp_product_n_127 : STD_LOGIC;
  signal tmp_product_n_128 : STD_LOGIC;
  signal tmp_product_n_129 : STD_LOGIC;
  signal tmp_product_n_130 : STD_LOGIC;
  signal tmp_product_n_131 : STD_LOGIC;
  signal tmp_product_n_132 : STD_LOGIC;
  signal tmp_product_n_133 : STD_LOGIC;
  signal tmp_product_n_134 : STD_LOGIC;
  signal tmp_product_n_135 : STD_LOGIC;
  signal tmp_product_n_136 : STD_LOGIC;
  signal tmp_product_n_137 : STD_LOGIC;
  signal tmp_product_n_138 : STD_LOGIC;
  signal tmp_product_n_139 : STD_LOGIC;
  signal tmp_product_n_140 : STD_LOGIC;
  signal tmp_product_n_141 : STD_LOGIC;
  signal tmp_product_n_142 : STD_LOGIC;
  signal tmp_product_n_143 : STD_LOGIC;
  signal tmp_product_n_144 : STD_LOGIC;
  signal tmp_product_n_145 : STD_LOGIC;
  signal tmp_product_n_146 : STD_LOGIC;
  signal tmp_product_n_147 : STD_LOGIC;
  signal tmp_product_n_148 : STD_LOGIC;
  signal tmp_product_n_149 : STD_LOGIC;
  signal tmp_product_n_150 : STD_LOGIC;
  signal tmp_product_n_151 : STD_LOGIC;
  signal tmp_product_n_152 : STD_LOGIC;
  signal tmp_product_n_153 : STD_LOGIC;
  signal tmp_product_n_58 : STD_LOGIC;
  signal tmp_product_n_59 : STD_LOGIC;
  signal tmp_product_n_60 : STD_LOGIC;
  signal tmp_product_n_61 : STD_LOGIC;
  signal tmp_product_n_62 : STD_LOGIC;
  signal tmp_product_n_63 : STD_LOGIC;
  signal tmp_product_n_64 : STD_LOGIC;
  signal tmp_product_n_65 : STD_LOGIC;
  signal tmp_product_n_66 : STD_LOGIC;
  signal tmp_product_n_67 : STD_LOGIC;
  signal tmp_product_n_68 : STD_LOGIC;
  signal tmp_product_n_69 : STD_LOGIC;
  signal tmp_product_n_70 : STD_LOGIC;
  signal tmp_product_n_71 : STD_LOGIC;
  signal tmp_product_n_72 : STD_LOGIC;
  signal tmp_product_n_73 : STD_LOGIC;
  signal tmp_product_n_74 : STD_LOGIC;
  signal tmp_product_n_75 : STD_LOGIC;
  signal tmp_product_n_76 : STD_LOGIC;
  signal tmp_product_n_77 : STD_LOGIC;
  signal tmp_product_n_78 : STD_LOGIC;
  signal tmp_product_n_79 : STD_LOGIC;
  signal tmp_product_n_80 : STD_LOGIC;
  signal tmp_product_n_81 : STD_LOGIC;
  signal tmp_product_n_82 : STD_LOGIC;
  signal tmp_product_n_83 : STD_LOGIC;
  signal tmp_product_n_84 : STD_LOGIC;
  signal tmp_product_n_85 : STD_LOGIC;
  signal tmp_product_n_86 : STD_LOGIC;
  signal tmp_product_n_87 : STD_LOGIC;
  signal tmp_product_n_88 : STD_LOGIC;
  signal tmp_product_n_89 : STD_LOGIC;
  signal tmp_product_n_90 : STD_LOGIC;
  signal tmp_product_n_91 : STD_LOGIC;
  signal tmp_product_n_92 : STD_LOGIC;
  signal tmp_product_n_93 : STD_LOGIC;
  signal tmp_product_n_94 : STD_LOGIC;
  signal tmp_product_n_95 : STD_LOGIC;
  signal tmp_product_n_96 : STD_LOGIC;
  signal tmp_product_n_97 : STD_LOGIC;
  signal tmp_product_n_98 : STD_LOGIC;
  signal tmp_product_n_99 : STD_LOGIC;
  signal NLW_dout_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_dout_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_dout_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_dout_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_dout_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_dout_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_dout_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_dout_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_dout_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_dout_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_mul_ln10_reg_187_reg[31]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_tmp_product_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_tmp_product_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_tmp_product_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_tmp_product__0_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_tmp_product__0_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_tmp_product__0_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_tmp_product__0_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_tmp_product__0_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_tmp_product__0_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_tmp_product__0_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_tmp_product__0_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_tmp_product__0_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of dout_reg : label is "{SYNTH-10 {cell *THIS*} {string 18x15 4}}";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \mul_ln10_reg_187_reg[19]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \mul_ln10_reg_187_reg[23]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \mul_ln10_reg_187_reg[27]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \mul_ln10_reg_187_reg[31]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of tmp_product : label is "{SYNTH-10 {cell *THIS*} {string 15x18 4}}";
  attribute METHODOLOGY_DRC_VIOS of \tmp_product__0\ : label is "{SYNTH-10 {cell *THIS*} {string 18x18 4}}";
begin
dout_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 2,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 2,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 2,
      BREG => 2,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 17) => B"0000000000000",
      A(16 downto 0) => q00(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_dout_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => dout_reg_0(31),
      B(16) => dout_reg_0(31),
      B(15) => dout_reg_0(31),
      B(14 downto 0) => dout_reg_0(31 downto 17),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_dout_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_dout_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_dout_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => ap_start,
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => ap_start,
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '1',
      CLK => ap_clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_dout_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"1010101",
      OVERFLOW => NLW_dout_reg_OVERFLOW_UNCONNECTED,
      P(47) => dout_reg_n_58,
      P(46) => dout_reg_n_59,
      P(45) => dout_reg_n_60,
      P(44) => dout_reg_n_61,
      P(43) => dout_reg_n_62,
      P(42) => dout_reg_n_63,
      P(41) => dout_reg_n_64,
      P(40) => dout_reg_n_65,
      P(39) => dout_reg_n_66,
      P(38) => dout_reg_n_67,
      P(37) => dout_reg_n_68,
      P(36) => dout_reg_n_69,
      P(35) => dout_reg_n_70,
      P(34) => dout_reg_n_71,
      P(33) => dout_reg_n_72,
      P(32) => dout_reg_n_73,
      P(31) => dout_reg_n_74,
      P(30) => dout_reg_n_75,
      P(29) => dout_reg_n_76,
      P(28) => dout_reg_n_77,
      P(27) => dout_reg_n_78,
      P(26) => dout_reg_n_79,
      P(25) => dout_reg_n_80,
      P(24) => dout_reg_n_81,
      P(23) => dout_reg_n_82,
      P(22) => dout_reg_n_83,
      P(21) => dout_reg_n_84,
      P(20) => dout_reg_n_85,
      P(19) => dout_reg_n_86,
      P(18) => dout_reg_n_87,
      P(17) => dout_reg_n_88,
      P(16) => dout_reg_n_89,
      P(15) => dout_reg_n_90,
      P(14) => dout_reg_n_91,
      P(13) => dout_reg_n_92,
      P(12) => dout_reg_n_93,
      P(11) => dout_reg_n_94,
      P(10) => dout_reg_n_95,
      P(9) => dout_reg_n_96,
      P(8) => dout_reg_n_97,
      P(7) => dout_reg_n_98,
      P(6) => dout_reg_n_99,
      P(5) => dout_reg_n_100,
      P(4) => dout_reg_n_101,
      P(3) => dout_reg_n_102,
      P(2) => dout_reg_n_103,
      P(1) => dout_reg_n_104,
      P(0) => dout_reg_n_105,
      PATTERNBDETECT => NLW_dout_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_dout_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47) => \tmp_product__0_n_106\,
      PCIN(46) => \tmp_product__0_n_107\,
      PCIN(45) => \tmp_product__0_n_108\,
      PCIN(44) => \tmp_product__0_n_109\,
      PCIN(43) => \tmp_product__0_n_110\,
      PCIN(42) => \tmp_product__0_n_111\,
      PCIN(41) => \tmp_product__0_n_112\,
      PCIN(40) => \tmp_product__0_n_113\,
      PCIN(39) => \tmp_product__0_n_114\,
      PCIN(38) => \tmp_product__0_n_115\,
      PCIN(37) => \tmp_product__0_n_116\,
      PCIN(36) => \tmp_product__0_n_117\,
      PCIN(35) => \tmp_product__0_n_118\,
      PCIN(34) => \tmp_product__0_n_119\,
      PCIN(33) => \tmp_product__0_n_120\,
      PCIN(32) => \tmp_product__0_n_121\,
      PCIN(31) => \tmp_product__0_n_122\,
      PCIN(30) => \tmp_product__0_n_123\,
      PCIN(29) => \tmp_product__0_n_124\,
      PCIN(28) => \tmp_product__0_n_125\,
      PCIN(27) => \tmp_product__0_n_126\,
      PCIN(26) => \tmp_product__0_n_127\,
      PCIN(25) => \tmp_product__0_n_128\,
      PCIN(24) => \tmp_product__0_n_129\,
      PCIN(23) => \tmp_product__0_n_130\,
      PCIN(22) => \tmp_product__0_n_131\,
      PCIN(21) => \tmp_product__0_n_132\,
      PCIN(20) => \tmp_product__0_n_133\,
      PCIN(19) => \tmp_product__0_n_134\,
      PCIN(18) => \tmp_product__0_n_135\,
      PCIN(17) => \tmp_product__0_n_136\,
      PCIN(16) => \tmp_product__0_n_137\,
      PCIN(15) => \tmp_product__0_n_138\,
      PCIN(14) => \tmp_product__0_n_139\,
      PCIN(13) => \tmp_product__0_n_140\,
      PCIN(12) => \tmp_product__0_n_141\,
      PCIN(11) => \tmp_product__0_n_142\,
      PCIN(10) => \tmp_product__0_n_143\,
      PCIN(9) => \tmp_product__0_n_144\,
      PCIN(8) => \tmp_product__0_n_145\,
      PCIN(7) => \tmp_product__0_n_146\,
      PCIN(6) => \tmp_product__0_n_147\,
      PCIN(5) => \tmp_product__0_n_148\,
      PCIN(4) => \tmp_product__0_n_149\,
      PCIN(3) => \tmp_product__0_n_150\,
      PCIN(2) => \tmp_product__0_n_151\,
      PCIN(1) => \tmp_product__0_n_152\,
      PCIN(0) => \tmp_product__0_n_153\,
      PCOUT(47 downto 0) => NLW_dout_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_dout_reg_UNDERFLOW_UNCONNECTED
    );
\dout_reg[0]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_product__0_n_105\,
      Q => D(0),
      R => '0'
    );
\dout_reg[10]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_product__0_n_95\,
      Q => D(10),
      R => '0'
    );
\dout_reg[11]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_product__0_n_94\,
      Q => D(11),
      R => '0'
    );
\dout_reg[12]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_product__0_n_93\,
      Q => D(12),
      R => '0'
    );
\dout_reg[13]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_product__0_n_92\,
      Q => D(13),
      R => '0'
    );
\dout_reg[14]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_product__0_n_91\,
      Q => D(14),
      R => '0'
    );
\dout_reg[15]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_product__0_n_90\,
      Q => D(15),
      R => '0'
    );
\dout_reg[16]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_product__0_n_89\,
      Q => \dout_reg[16]__0_n_0\,
      R => '0'
    );
\dout_reg[1]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_product__0_n_104\,
      Q => D(1),
      R => '0'
    );
\dout_reg[2]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_product__0_n_103\,
      Q => D(2),
      R => '0'
    );
\dout_reg[3]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_product__0_n_102\,
      Q => D(3),
      R => '0'
    );
\dout_reg[4]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_product__0_n_101\,
      Q => D(4),
      R => '0'
    );
\dout_reg[5]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_product__0_n_100\,
      Q => D(5),
      R => '0'
    );
\dout_reg[6]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_product__0_n_99\,
      Q => D(6),
      R => '0'
    );
\dout_reg[7]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_product__0_n_98\,
      Q => D(7),
      R => '0'
    );
\dout_reg[8]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_product__0_n_97\,
      Q => D(8),
      R => '0'
    );
\dout_reg[9]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_product__0_n_96\,
      Q => D(9),
      R => '0'
    );
\mul_ln10_reg_187[19]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dout_reg_n_103,
      I1 => tmp_product_n_103,
      O => \mul_ln10_reg_187[19]_i_2_n_0\
    );
\mul_ln10_reg_187[19]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dout_reg_n_104,
      I1 => tmp_product_n_104,
      O => \mul_ln10_reg_187[19]_i_3_n_0\
    );
\mul_ln10_reg_187[19]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dout_reg_n_105,
      I1 => tmp_product_n_105,
      O => \mul_ln10_reg_187[19]_i_4_n_0\
    );
\mul_ln10_reg_187[23]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dout_reg_n_99,
      I1 => tmp_product_n_99,
      O => \mul_ln10_reg_187[23]_i_2_n_0\
    );
\mul_ln10_reg_187[23]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dout_reg_n_100,
      I1 => tmp_product_n_100,
      O => \mul_ln10_reg_187[23]_i_3_n_0\
    );
\mul_ln10_reg_187[23]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dout_reg_n_101,
      I1 => tmp_product_n_101,
      O => \mul_ln10_reg_187[23]_i_4_n_0\
    );
\mul_ln10_reg_187[23]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dout_reg_n_102,
      I1 => tmp_product_n_102,
      O => \mul_ln10_reg_187[23]_i_5_n_0\
    );
\mul_ln10_reg_187[27]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dout_reg_n_95,
      I1 => tmp_product_n_95,
      O => \mul_ln10_reg_187[27]_i_2_n_0\
    );
\mul_ln10_reg_187[27]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dout_reg_n_96,
      I1 => tmp_product_n_96,
      O => \mul_ln10_reg_187[27]_i_3_n_0\
    );
\mul_ln10_reg_187[27]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dout_reg_n_97,
      I1 => tmp_product_n_97,
      O => \mul_ln10_reg_187[27]_i_4_n_0\
    );
\mul_ln10_reg_187[27]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dout_reg_n_98,
      I1 => tmp_product_n_98,
      O => \mul_ln10_reg_187[27]_i_5_n_0\
    );
\mul_ln10_reg_187[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dout_reg_n_91,
      I1 => tmp_product_n_91,
      O => \mul_ln10_reg_187[31]_i_2_n_0\
    );
\mul_ln10_reg_187[31]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dout_reg_n_92,
      I1 => tmp_product_n_92,
      O => \mul_ln10_reg_187[31]_i_3_n_0\
    );
\mul_ln10_reg_187[31]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dout_reg_n_93,
      I1 => tmp_product_n_93,
      O => \mul_ln10_reg_187[31]_i_4_n_0\
    );
\mul_ln10_reg_187[31]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dout_reg_n_94,
      I1 => tmp_product_n_94,
      O => \mul_ln10_reg_187[31]_i_5_n_0\
    );
\mul_ln10_reg_187_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \mul_ln10_reg_187_reg[19]_i_1_n_0\,
      CO(2) => \mul_ln10_reg_187_reg[19]_i_1_n_1\,
      CO(1) => \mul_ln10_reg_187_reg[19]_i_1_n_2\,
      CO(0) => \mul_ln10_reg_187_reg[19]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => dout_reg_n_103,
      DI(2) => dout_reg_n_104,
      DI(1) => dout_reg_n_105,
      DI(0) => '0',
      O(3 downto 0) => D(19 downto 16),
      S(3) => \mul_ln10_reg_187[19]_i_2_n_0\,
      S(2) => \mul_ln10_reg_187[19]_i_3_n_0\,
      S(1) => \mul_ln10_reg_187[19]_i_4_n_0\,
      S(0) => \dout_reg[16]__0_n_0\
    );
\mul_ln10_reg_187_reg[23]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \mul_ln10_reg_187_reg[19]_i_1_n_0\,
      CO(3) => \mul_ln10_reg_187_reg[23]_i_1_n_0\,
      CO(2) => \mul_ln10_reg_187_reg[23]_i_1_n_1\,
      CO(1) => \mul_ln10_reg_187_reg[23]_i_1_n_2\,
      CO(0) => \mul_ln10_reg_187_reg[23]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => dout_reg_n_99,
      DI(2) => dout_reg_n_100,
      DI(1) => dout_reg_n_101,
      DI(0) => dout_reg_n_102,
      O(3 downto 0) => D(23 downto 20),
      S(3) => \mul_ln10_reg_187[23]_i_2_n_0\,
      S(2) => \mul_ln10_reg_187[23]_i_3_n_0\,
      S(1) => \mul_ln10_reg_187[23]_i_4_n_0\,
      S(0) => \mul_ln10_reg_187[23]_i_5_n_0\
    );
\mul_ln10_reg_187_reg[27]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \mul_ln10_reg_187_reg[23]_i_1_n_0\,
      CO(3) => \mul_ln10_reg_187_reg[27]_i_1_n_0\,
      CO(2) => \mul_ln10_reg_187_reg[27]_i_1_n_1\,
      CO(1) => \mul_ln10_reg_187_reg[27]_i_1_n_2\,
      CO(0) => \mul_ln10_reg_187_reg[27]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => dout_reg_n_95,
      DI(2) => dout_reg_n_96,
      DI(1) => dout_reg_n_97,
      DI(0) => dout_reg_n_98,
      O(3 downto 0) => D(27 downto 24),
      S(3) => \mul_ln10_reg_187[27]_i_2_n_0\,
      S(2) => \mul_ln10_reg_187[27]_i_3_n_0\,
      S(1) => \mul_ln10_reg_187[27]_i_4_n_0\,
      S(0) => \mul_ln10_reg_187[27]_i_5_n_0\
    );
\mul_ln10_reg_187_reg[31]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \mul_ln10_reg_187_reg[27]_i_1_n_0\,
      CO(3) => \NLW_mul_ln10_reg_187_reg[31]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \mul_ln10_reg_187_reg[31]_i_1_n_1\,
      CO(1) => \mul_ln10_reg_187_reg[31]_i_1_n_2\,
      CO(0) => \mul_ln10_reg_187_reg[31]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => dout_reg_n_92,
      DI(1) => dout_reg_n_93,
      DI(0) => dout_reg_n_94,
      O(3 downto 0) => D(31 downto 28),
      S(3) => \mul_ln10_reg_187[31]_i_2_n_0\,
      S(2) => \mul_ln10_reg_187[31]_i_3_n_0\,
      S(1) => \mul_ln10_reg_187[31]_i_4_n_0\,
      S(0) => \mul_ln10_reg_187[31]_i_5_n_0\
    );
tmp_product: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 2,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 2,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 2,
      BREG => 2,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 17) => B"0000000000000",
      A(16 downto 0) => dout_reg_0(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_tmp_product_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => q00(31),
      B(16) => q00(31),
      B(15) => q00(31),
      B(14 downto 0) => q00(31 downto 17),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_tmp_product_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_tmp_product_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_tmp_product_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => ap_start,
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => ap_start,
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '1',
      CLK => ap_clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_tmp_product_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_tmp_product_OVERFLOW_UNCONNECTED,
      P(47) => tmp_product_n_58,
      P(46) => tmp_product_n_59,
      P(45) => tmp_product_n_60,
      P(44) => tmp_product_n_61,
      P(43) => tmp_product_n_62,
      P(42) => tmp_product_n_63,
      P(41) => tmp_product_n_64,
      P(40) => tmp_product_n_65,
      P(39) => tmp_product_n_66,
      P(38) => tmp_product_n_67,
      P(37) => tmp_product_n_68,
      P(36) => tmp_product_n_69,
      P(35) => tmp_product_n_70,
      P(34) => tmp_product_n_71,
      P(33) => tmp_product_n_72,
      P(32) => tmp_product_n_73,
      P(31) => tmp_product_n_74,
      P(30) => tmp_product_n_75,
      P(29) => tmp_product_n_76,
      P(28) => tmp_product_n_77,
      P(27) => tmp_product_n_78,
      P(26) => tmp_product_n_79,
      P(25) => tmp_product_n_80,
      P(24) => tmp_product_n_81,
      P(23) => tmp_product_n_82,
      P(22) => tmp_product_n_83,
      P(21) => tmp_product_n_84,
      P(20) => tmp_product_n_85,
      P(19) => tmp_product_n_86,
      P(18) => tmp_product_n_87,
      P(17) => tmp_product_n_88,
      P(16) => tmp_product_n_89,
      P(15) => tmp_product_n_90,
      P(14) => tmp_product_n_91,
      P(13) => tmp_product_n_92,
      P(12) => tmp_product_n_93,
      P(11) => tmp_product_n_94,
      P(10) => tmp_product_n_95,
      P(9) => tmp_product_n_96,
      P(8) => tmp_product_n_97,
      P(7) => tmp_product_n_98,
      P(6) => tmp_product_n_99,
      P(5) => tmp_product_n_100,
      P(4) => tmp_product_n_101,
      P(3) => tmp_product_n_102,
      P(2) => tmp_product_n_103,
      P(1) => tmp_product_n_104,
      P(0) => tmp_product_n_105,
      PATTERNBDETECT => NLW_tmp_product_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_tmp_product_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47) => tmp_product_n_106,
      PCOUT(46) => tmp_product_n_107,
      PCOUT(45) => tmp_product_n_108,
      PCOUT(44) => tmp_product_n_109,
      PCOUT(43) => tmp_product_n_110,
      PCOUT(42) => tmp_product_n_111,
      PCOUT(41) => tmp_product_n_112,
      PCOUT(40) => tmp_product_n_113,
      PCOUT(39) => tmp_product_n_114,
      PCOUT(38) => tmp_product_n_115,
      PCOUT(37) => tmp_product_n_116,
      PCOUT(36) => tmp_product_n_117,
      PCOUT(35) => tmp_product_n_118,
      PCOUT(34) => tmp_product_n_119,
      PCOUT(33) => tmp_product_n_120,
      PCOUT(32) => tmp_product_n_121,
      PCOUT(31) => tmp_product_n_122,
      PCOUT(30) => tmp_product_n_123,
      PCOUT(29) => tmp_product_n_124,
      PCOUT(28) => tmp_product_n_125,
      PCOUT(27) => tmp_product_n_126,
      PCOUT(26) => tmp_product_n_127,
      PCOUT(25) => tmp_product_n_128,
      PCOUT(24) => tmp_product_n_129,
      PCOUT(23) => tmp_product_n_130,
      PCOUT(22) => tmp_product_n_131,
      PCOUT(21) => tmp_product_n_132,
      PCOUT(20) => tmp_product_n_133,
      PCOUT(19) => tmp_product_n_134,
      PCOUT(18) => tmp_product_n_135,
      PCOUT(17) => tmp_product_n_136,
      PCOUT(16) => tmp_product_n_137,
      PCOUT(15) => tmp_product_n_138,
      PCOUT(14) => tmp_product_n_139,
      PCOUT(13) => tmp_product_n_140,
      PCOUT(12) => tmp_product_n_141,
      PCOUT(11) => tmp_product_n_142,
      PCOUT(10) => tmp_product_n_143,
      PCOUT(9) => tmp_product_n_144,
      PCOUT(8) => tmp_product_n_145,
      PCOUT(7) => tmp_product_n_146,
      PCOUT(6) => tmp_product_n_147,
      PCOUT(5) => tmp_product_n_148,
      PCOUT(4) => tmp_product_n_149,
      PCOUT(3) => tmp_product_n_150,
      PCOUT(2) => tmp_product_n_151,
      PCOUT(1) => tmp_product_n_152,
      PCOUT(0) => tmp_product_n_153,
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_tmp_product_UNDERFLOW_UNCONNECTED
    );
\tmp_product__0\: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 2,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 2,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 2,
      BREG => 2,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 17) => B"0000000000000",
      A(16 downto 0) => q00(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_tmp_product__0_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => '0',
      B(16 downto 0) => dout_reg_0(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_tmp_product__0_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_tmp_product__0_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_tmp_product__0_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => ap_start,
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => ap_start,
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => ap_clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_tmp_product__0_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => \NLW_tmp_product__0_OVERFLOW_UNCONNECTED\,
      P(47) => \tmp_product__0_n_58\,
      P(46) => \tmp_product__0_n_59\,
      P(45) => \tmp_product__0_n_60\,
      P(44) => \tmp_product__0_n_61\,
      P(43) => \tmp_product__0_n_62\,
      P(42) => \tmp_product__0_n_63\,
      P(41) => \tmp_product__0_n_64\,
      P(40) => \tmp_product__0_n_65\,
      P(39) => \tmp_product__0_n_66\,
      P(38) => \tmp_product__0_n_67\,
      P(37) => \tmp_product__0_n_68\,
      P(36) => \tmp_product__0_n_69\,
      P(35) => \tmp_product__0_n_70\,
      P(34) => \tmp_product__0_n_71\,
      P(33) => \tmp_product__0_n_72\,
      P(32) => \tmp_product__0_n_73\,
      P(31) => \tmp_product__0_n_74\,
      P(30) => \tmp_product__0_n_75\,
      P(29) => \tmp_product__0_n_76\,
      P(28) => \tmp_product__0_n_77\,
      P(27) => \tmp_product__0_n_78\,
      P(26) => \tmp_product__0_n_79\,
      P(25) => \tmp_product__0_n_80\,
      P(24) => \tmp_product__0_n_81\,
      P(23) => \tmp_product__0_n_82\,
      P(22) => \tmp_product__0_n_83\,
      P(21) => \tmp_product__0_n_84\,
      P(20) => \tmp_product__0_n_85\,
      P(19) => \tmp_product__0_n_86\,
      P(18) => \tmp_product__0_n_87\,
      P(17) => \tmp_product__0_n_88\,
      P(16) => \tmp_product__0_n_89\,
      P(15) => \tmp_product__0_n_90\,
      P(14) => \tmp_product__0_n_91\,
      P(13) => \tmp_product__0_n_92\,
      P(12) => \tmp_product__0_n_93\,
      P(11) => \tmp_product__0_n_94\,
      P(10) => \tmp_product__0_n_95\,
      P(9) => \tmp_product__0_n_96\,
      P(8) => \tmp_product__0_n_97\,
      P(7) => \tmp_product__0_n_98\,
      P(6) => \tmp_product__0_n_99\,
      P(5) => \tmp_product__0_n_100\,
      P(4) => \tmp_product__0_n_101\,
      P(3) => \tmp_product__0_n_102\,
      P(2) => \tmp_product__0_n_103\,
      P(1) => \tmp_product__0_n_104\,
      P(0) => \tmp_product__0_n_105\,
      PATTERNBDETECT => \NLW_tmp_product__0_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_tmp_product__0_PATTERNDETECT_UNCONNECTED\,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47) => \tmp_product__0_n_106\,
      PCOUT(46) => \tmp_product__0_n_107\,
      PCOUT(45) => \tmp_product__0_n_108\,
      PCOUT(44) => \tmp_product__0_n_109\,
      PCOUT(43) => \tmp_product__0_n_110\,
      PCOUT(42) => \tmp_product__0_n_111\,
      PCOUT(41) => \tmp_product__0_n_112\,
      PCOUT(40) => \tmp_product__0_n_113\,
      PCOUT(39) => \tmp_product__0_n_114\,
      PCOUT(38) => \tmp_product__0_n_115\,
      PCOUT(37) => \tmp_product__0_n_116\,
      PCOUT(36) => \tmp_product__0_n_117\,
      PCOUT(35) => \tmp_product__0_n_118\,
      PCOUT(34) => \tmp_product__0_n_119\,
      PCOUT(33) => \tmp_product__0_n_120\,
      PCOUT(32) => \tmp_product__0_n_121\,
      PCOUT(31) => \tmp_product__0_n_122\,
      PCOUT(30) => \tmp_product__0_n_123\,
      PCOUT(29) => \tmp_product__0_n_124\,
      PCOUT(28) => \tmp_product__0_n_125\,
      PCOUT(27) => \tmp_product__0_n_126\,
      PCOUT(26) => \tmp_product__0_n_127\,
      PCOUT(25) => \tmp_product__0_n_128\,
      PCOUT(24) => \tmp_product__0_n_129\,
      PCOUT(23) => \tmp_product__0_n_130\,
      PCOUT(22) => \tmp_product__0_n_131\,
      PCOUT(21) => \tmp_product__0_n_132\,
      PCOUT(20) => \tmp_product__0_n_133\,
      PCOUT(19) => \tmp_product__0_n_134\,
      PCOUT(18) => \tmp_product__0_n_135\,
      PCOUT(17) => \tmp_product__0_n_136\,
      PCOUT(16) => \tmp_product__0_n_137\,
      PCOUT(15) => \tmp_product__0_n_138\,
      PCOUT(14) => \tmp_product__0_n_139\,
      PCOUT(13) => \tmp_product__0_n_140\,
      PCOUT(12) => \tmp_product__0_n_141\,
      PCOUT(11) => \tmp_product__0_n_142\,
      PCOUT(10) => \tmp_product__0_n_143\,
      PCOUT(9) => \tmp_product__0_n_144\,
      PCOUT(8) => \tmp_product__0_n_145\,
      PCOUT(7) => \tmp_product__0_n_146\,
      PCOUT(6) => \tmp_product__0_n_147\,
      PCOUT(5) => \tmp_product__0_n_148\,
      PCOUT(4) => \tmp_product__0_n_149\,
      PCOUT(3) => \tmp_product__0_n_150\,
      PCOUT(2) => \tmp_product__0_n_151\,
      PCOUT(1) => \tmp_product__0_n_152\,
      PCOUT(0) => \tmp_product__0_n_153\,
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_tmp_product__0_UNDERFLOW_UNCONNECTED\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_muladd_0_0_muladd_control_s_axi is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    interrupt : out STD_LOGIC;
    \FSM_onehot_rstate_reg[1]_0\ : out STD_LOGIC;
    s_axi_control_RVALID : out STD_LOGIC;
    \FSM_onehot_wstate_reg[1]_0\ : out STD_LOGIC;
    s_axi_control_BVALID : out STD_LOGIC;
    s_axi_control_WREADY : out STD_LOGIC;
    ap_start : out STD_LOGIC;
    ap_loop_exit_ready : out STD_LOGIC;
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    O : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_control_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    q00 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ap_clk_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ap_clk : in STD_LOGIC;
    s_axi_control_ARVALID : in STD_LOGIC;
    s_axi_control_RREADY : in STD_LOGIC;
    s_axi_control_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_control_WVALID : in STD_LOGIC;
    s_axi_control_ARADDR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_control_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_AWVALID : in STD_LOGIC;
    s_axi_control_BREADY : in STD_LOGIC;
    ap_enable_reg_pp0_iter4 : in STD_LOGIC;
    ap_enable_reg_pp0_iter1 : in STD_LOGIC;
    ap_enable_reg_pp0_iter2 : in STD_LOGIC;
    ap_enable_reg_pp0_iter3 : in STD_LOGIC;
    icmp_ln8_fu_105_p2 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ap_loop_init : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n : in STD_LOGIC;
    \int_ap_return_reg[31]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \out\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_AWADDR : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_muladd_0_0_muladd_control_s_axi : entity is "muladd_control_s_axi";
end design_1_muladd_0_0_muladd_control_s_axi;

architecture STRUCTURE of design_1_muladd_0_0_muladd_control_s_axi is
  signal \FSM_onehot_rstate[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rstate[2]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_rstate_reg[1]_0\ : STD_LOGIC;
  signal \FSM_onehot_rstate_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_wstate[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[3]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_wstate_reg[1]_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate_reg_n_0_[2]\ : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ap_idle : STD_LOGIC;
  signal ap_sig_allocacmp_i_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^ap_start\ : STD_LOGIC;
  signal \ar_hs__0\ : STD_LOGIC;
  signal auto_restart_status_i_1_n_0 : STD_LOGIC;
  signal auto_restart_status_reg_n_0 : STD_LOGIC;
  signal aw_hs : STD_LOGIC;
  signal int_a_address1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal int_a_read : STD_LOGIC;
  signal int_a_read0 : STD_LOGIC;
  signal int_a_read2 : STD_LOGIC;
  signal int_a_write_i_1_n_0 : STD_LOGIC;
  signal int_a_write_reg_n_0 : STD_LOGIC;
  signal int_ap_ready : STD_LOGIC;
  signal int_ap_ready_i_1_n_0 : STD_LOGIC;
  signal int_ap_return : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \int_ap_return[0]_i_2_n_0\ : STD_LOGIC;
  signal \int_ap_return[0]_i_3_n_0\ : STD_LOGIC;
  signal \int_ap_return[0]_i_4_n_0\ : STD_LOGIC;
  signal \int_ap_return[0]_i_5_n_0\ : STD_LOGIC;
  signal \int_ap_return[11]_i_2_n_0\ : STD_LOGIC;
  signal \int_ap_return[11]_i_3_n_0\ : STD_LOGIC;
  signal \int_ap_return[11]_i_4_n_0\ : STD_LOGIC;
  signal \int_ap_return[11]_i_5_n_0\ : STD_LOGIC;
  signal \int_ap_return[15]_i_2_n_0\ : STD_LOGIC;
  signal \int_ap_return[15]_i_3_n_0\ : STD_LOGIC;
  signal \int_ap_return[15]_i_4_n_0\ : STD_LOGIC;
  signal \int_ap_return[15]_i_5_n_0\ : STD_LOGIC;
  signal \int_ap_return[19]_i_2_n_0\ : STD_LOGIC;
  signal \int_ap_return[19]_i_3_n_0\ : STD_LOGIC;
  signal \int_ap_return[19]_i_4_n_0\ : STD_LOGIC;
  signal \int_ap_return[19]_i_5_n_0\ : STD_LOGIC;
  signal \int_ap_return[23]_i_2_n_0\ : STD_LOGIC;
  signal \int_ap_return[23]_i_3_n_0\ : STD_LOGIC;
  signal \int_ap_return[23]_i_4_n_0\ : STD_LOGIC;
  signal \int_ap_return[23]_i_5_n_0\ : STD_LOGIC;
  signal \int_ap_return[27]_i_2_n_0\ : STD_LOGIC;
  signal \int_ap_return[27]_i_3_n_0\ : STD_LOGIC;
  signal \int_ap_return[27]_i_4_n_0\ : STD_LOGIC;
  signal \int_ap_return[27]_i_5_n_0\ : STD_LOGIC;
  signal \int_ap_return[31]_i_2_n_0\ : STD_LOGIC;
  signal \int_ap_return[31]_i_3_n_0\ : STD_LOGIC;
  signal \int_ap_return[31]_i_4_n_0\ : STD_LOGIC;
  signal \int_ap_return[31]_i_5_n_0\ : STD_LOGIC;
  signal \int_ap_return[3]_i_2_n_0\ : STD_LOGIC;
  signal \int_ap_return[3]_i_3_n_0\ : STD_LOGIC;
  signal \int_ap_return[3]_i_4_n_0\ : STD_LOGIC;
  signal \int_ap_return[3]_i_5_n_0\ : STD_LOGIC;
  signal \int_ap_return[7]_i_2_n_0\ : STD_LOGIC;
  signal \int_ap_return[7]_i_3_n_0\ : STD_LOGIC;
  signal \int_ap_return[7]_i_4_n_0\ : STD_LOGIC;
  signal \int_ap_return[7]_i_5_n_0\ : STD_LOGIC;
  signal \int_ap_return_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \int_ap_return_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \int_ap_return_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \int_ap_return_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \int_ap_return_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \int_ap_return_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \int_ap_return_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \int_ap_return_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \int_ap_return_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \int_ap_return_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \int_ap_return_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \int_ap_return_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \int_ap_return_reg[19]_i_1_n_1\ : STD_LOGIC;
  signal \int_ap_return_reg[19]_i_1_n_2\ : STD_LOGIC;
  signal \int_ap_return_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \int_ap_return_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \int_ap_return_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \int_ap_return_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \int_ap_return_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \int_ap_return_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \int_ap_return_reg[27]_i_1_n_1\ : STD_LOGIC;
  signal \int_ap_return_reg[27]_i_1_n_2\ : STD_LOGIC;
  signal \int_ap_return_reg[27]_i_1_n_3\ : STD_LOGIC;
  signal \int_ap_return_reg[31]_i_1_n_1\ : STD_LOGIC;
  signal \int_ap_return_reg[31]_i_1_n_2\ : STD_LOGIC;
  signal \int_ap_return_reg[31]_i_1_n_3\ : STD_LOGIC;
  signal \int_ap_return_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \int_ap_return_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \int_ap_return_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \int_ap_return_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \int_ap_return_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \int_ap_return_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \int_ap_return_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \int_ap_return_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal int_ap_start5_out : STD_LOGIC;
  signal int_ap_start_i_1_n_0 : STD_LOGIC;
  signal int_ap_start_i_4_n_0 : STD_LOGIC;
  signal int_auto_restart_i_1_n_0 : STD_LOGIC;
  signal int_b_n_59 : STD_LOGIC;
  signal int_b_n_60 : STD_LOGIC;
  signal int_b_n_61 : STD_LOGIC;
  signal int_b_n_62 : STD_LOGIC;
  signal int_b_n_63 : STD_LOGIC;
  signal int_b_n_64 : STD_LOGIC;
  signal int_b_read : STD_LOGIC;
  signal int_b_read0 : STD_LOGIC;
  signal int_b_write_i_1_n_0 : STD_LOGIC;
  signal int_b_write_reg_n_0 : STD_LOGIC;
  signal int_gie_i_1_n_0 : STD_LOGIC;
  signal int_gie_reg_n_0 : STD_LOGIC;
  signal \int_ier[0]_i_1_n_0\ : STD_LOGIC;
  signal \int_ier[1]_i_1_n_0\ : STD_LOGIC;
  signal \int_ier[1]_i_2_n_0\ : STD_LOGIC;
  signal \int_ier_reg_n_0_[0]\ : STD_LOGIC;
  signal \int_ier_reg_n_0_[1]\ : STD_LOGIC;
  signal int_interrupt0 : STD_LOGIC;
  signal int_isr7_out : STD_LOGIC;
  signal int_isr8_out : STD_LOGIC;
  signal \int_isr[0]_i_1_n_0\ : STD_LOGIC;
  signal \int_isr[1]_i_1_n_0\ : STD_LOGIC;
  signal \int_isr_reg_n_0_[0]\ : STD_LOGIC;
  signal \int_isr_reg_n_0_[1]\ : STD_LOGIC;
  signal int_task_ap_done : STD_LOGIC;
  signal \int_task_ap_done0__7\ : STD_LOGIC;
  signal int_task_ap_done_i_1_n_0 : STD_LOGIC;
  signal int_task_ap_done_i_3_n_0 : STD_LOGIC;
  signal \^interrupt\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal p_0_in_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_1_in_0 : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal p_24_in : STD_LOGIC;
  signal q1 : STD_LOGIC_VECTOR ( 31 downto 4 );
  signal \rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[1]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[31]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[31]_i_4_n_0\ : STD_LOGIC;
  signal \rdata[31]_i_5_n_0\ : STD_LOGIC;
  signal \rdata[31]_i_7_n_0\ : STD_LOGIC;
  signal \rdata[9]_i_3_n_0\ : STD_LOGIC;
  signal \^s_axi_control_bvalid\ : STD_LOGIC;
  signal temp_fu_58 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \waddr_reg_n_0_[0]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[1]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[6]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[7]\ : STD_LOGIC;
  signal \NLW_int_ap_return_reg[31]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_int_ap_return_reg[3]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_rstate_reg[1]\ : label is "RDIDLE:010,RDDATA:100,iSTATE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rstate_reg[2]\ : label is "RDIDLE:010,RDDATA:100,iSTATE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[1]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[2]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[3]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of ap_loop_exit_ready_pp0_iter2_reg_reg_srl2_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of int_a_read_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of int_ap_ready_i_1 : label is "soft_lutpair0";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \int_ap_return_reg[0]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \int_ap_return_reg[11]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \int_ap_return_reg[15]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \int_ap_return_reg[19]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \int_ap_return_reg[23]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \int_ap_return_reg[27]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \int_ap_return_reg[31]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \int_ap_return_reg[3]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \int_ap_return_reg[7]_i_1\ : label is 35;
  attribute SOFT_HLUTNM of int_b_read_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of int_b_write_i_2 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of int_task_ap_done_i_3 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rdata[1]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rdata[31]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \rdata[31]_i_4\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \rdata[31]_i_7\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of s_axi_control_RVALID_INST_0 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of s_axi_control_WREADY_INST_0 : label is "soft_lutpair3";
begin
  \FSM_onehot_rstate_reg[1]_0\ <= \^fsm_onehot_rstate_reg[1]_0\;
  \FSM_onehot_wstate_reg[1]_0\ <= \^fsm_onehot_wstate_reg[1]_0\;
  SR(0) <= \^sr\(0);
  ap_start <= \^ap_start\;
  interrupt <= \^interrupt\;
  s_axi_control_BVALID <= \^s_axi_control_bvalid\;
\FSM_onehot_rstate[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22772F7722772277"
    )
        port map (
      I0 => \^fsm_onehot_rstate_reg[1]_0\,
      I1 => s_axi_control_ARVALID,
      I2 => int_a_read,
      I3 => \FSM_onehot_rstate_reg_n_0_[2]\,
      I4 => int_b_read,
      I5 => s_axi_control_RREADY,
      O => \FSM_onehot_rstate[1]_i_1_n_0\
    );
\FSM_onehot_rstate[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFC8CCC8CCC8CC"
    )
        port map (
      I0 => int_a_read,
      I1 => \FSM_onehot_rstate_reg_n_0_[2]\,
      I2 => int_b_read,
      I3 => s_axi_control_RREADY,
      I4 => s_axi_control_ARVALID,
      I5 => \^fsm_onehot_rstate_reg[1]_0\,
      O => \FSM_onehot_rstate[2]_i_1_n_0\
    );
\FSM_onehot_rstate_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_rstate[1]_i_1_n_0\,
      Q => \^fsm_onehot_rstate_reg[1]_0\,
      R => \^sr\(0)
    );
\FSM_onehot_rstate_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_rstate[2]_i_1_n_0\,
      Q => \FSM_onehot_rstate_reg_n_0_[2]\,
      R => \^sr\(0)
    );
\FSM_onehot_wstate[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ap_rst_n,
      O => \^sr\(0)
    );
\FSM_onehot_wstate[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF0C1D1D"
    )
        port map (
      I0 => \FSM_onehot_wstate_reg_n_0_[2]\,
      I1 => \^fsm_onehot_wstate_reg[1]_0\,
      I2 => s_axi_control_AWVALID,
      I3 => s_axi_control_BREADY,
      I4 => \^s_axi_control_bvalid\,
      O => \FSM_onehot_wstate[1]_i_2_n_0\
    );
\FSM_onehot_wstate[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFA222A222A222"
    )
        port map (
      I0 => \FSM_onehot_wstate_reg_n_0_[2]\,
      I1 => s_axi_control_WVALID,
      I2 => \^fsm_onehot_rstate_reg[1]_0\,
      I3 => s_axi_control_ARVALID,
      I4 => s_axi_control_AWVALID,
      I5 => \^fsm_onehot_wstate_reg[1]_0\,
      O => \FSM_onehot_wstate[2]_i_1_n_0\
    );
\FSM_onehot_wstate[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444F444F444F444"
    )
        port map (
      I0 => s_axi_control_BREADY,
      I1 => \^s_axi_control_bvalid\,
      I2 => \FSM_onehot_wstate_reg_n_0_[2]\,
      I3 => s_axi_control_WVALID,
      I4 => \^fsm_onehot_rstate_reg[1]_0\,
      I5 => s_axi_control_ARVALID,
      O => \FSM_onehot_wstate[3]_i_1_n_0\
    );
\FSM_onehot_wstate_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[1]_i_2_n_0\,
      Q => \^fsm_onehot_wstate_reg[1]_0\,
      R => \^sr\(0)
    );
\FSM_onehot_wstate_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[2]_i_1_n_0\,
      Q => \FSM_onehot_wstate_reg_n_0_[2]\,
      R => \^sr\(0)
    );
\FSM_onehot_wstate_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[3]_i_1_n_0\,
      Q => \^s_axi_control_bvalid\,
      R => \^sr\(0)
    );
ap_loop_exit_ready_pp0_iter2_reg_reg_srl2_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^ap_start\,
      I1 => icmp_ln8_fu_105_p2,
      O => ap_loop_exit_ready
    );
auto_restart_status_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => p_1_in_0(7),
      I1 => ap_idle,
      I2 => auto_restart_status_reg_n_0,
      O => auto_restart_status_i_1_n_0
    );
auto_restart_status_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => auto_restart_status_i_1_n_0,
      Q => auto_restart_status_reg_n_0,
      R => \^sr\(0)
    );
int_a: entity work.design_1_muladd_0_0_muladd_control_s_axi_ram
     port map (
      D(5) => p_0_in(9),
      D(4) => p_0_in(7),
      D(3 downto 0) => p_0_in(3 downto 0),
      Q(5) => int_ap_return(9),
      Q(4) => int_ap_return(7),
      Q(3 downto 0) => int_ap_return(3 downto 0),
      ap_clk => ap_clk,
      ap_clk_0(31 downto 0) => ap_clk_0(31 downto 0),
      ap_loop_init => ap_loop_init,
      ap_sig_allocacmp_i_1(3 downto 0) => ap_sig_allocacmp_i_1(3 downto 0),
      \ar_hs__0\ => \ar_hs__0\,
      dout_reg => \FSM_onehot_wstate_reg_n_0_[2]\,
      dout_reg_0(3 downto 0) => p_0_in_1(3 downto 0),
      dout_reg_1(3 downto 0) => Q(3 downto 0),
      dout_reg_2 => \^ap_start\,
      int_a_address1(3 downto 0) => int_a_address1(3 downto 0),
      int_a_read => int_a_read,
      int_ap_ready => int_ap_ready,
      interrupt => \^interrupt\,
      p_1_in_0(1) => p_1_in_0(7),
      p_1_in_0(0) => p_1_in_0(2),
      \q1_reg[0]_0\ => \^fsm_onehot_rstate_reg[1]_0\,
      \q1_reg[0]_1\ => int_a_write_reg_n_0,
      \q1_reg[31]_0\(25 downto 4) => q1(31 downto 10),
      \q1_reg[31]_0\(3) => q1(8),
      \q1_reg[31]_0\(2 downto 0) => q1(6 downto 4),
      \rdata_reg[0]\ => \rdata[31]_i_5_n_0\,
      \rdata_reg[0]_0\ => \rdata[1]_i_2_n_0\,
      \rdata_reg[0]_1\ => \rdata[0]_i_2_n_0\,
      \rdata_reg[1]\ => \rdata[1]_i_3_n_0\,
      \rdata_reg[2]\ => \rdata[9]_i_3_n_0\,
      \rdata_reg[9]\(5) => int_b_n_59,
      \rdata_reg[9]\(4) => int_b_n_60,
      \rdata_reg[9]\(3) => int_b_n_61,
      \rdata_reg[9]\(2) => int_b_n_62,
      \rdata_reg[9]\(1) => int_b_n_63,
      \rdata_reg[9]\(0) => int_b_n_64,
      s_axi_control_ARADDR(3 downto 0) => s_axi_control_ARADDR(5 downto 2),
      s_axi_control_ARVALID => s_axi_control_ARVALID,
      s_axi_control_WDATA(31 downto 0) => s_axi_control_WDATA(31 downto 0),
      s_axi_control_WSTRB(3 downto 0) => s_axi_control_WSTRB(3 downto 0),
      s_axi_control_WVALID => s_axi_control_WVALID
    );
int_a_read_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s_axi_control_ARVALID,
      I1 => \^fsm_onehot_rstate_reg[1]_0\,
      I2 => s_axi_control_ARADDR(7),
      I3 => s_axi_control_ARADDR(6),
      O => int_a_read0
    );
int_a_read_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => int_a_read0,
      Q => int_a_read,
      R => \^sr\(0)
    );
int_a_write_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000FFFF40004000"
    )
        port map (
      I0 => s_axi_control_AWADDR(7),
      I1 => s_axi_control_AWADDR(6),
      I2 => s_axi_control_AWVALID,
      I3 => \^fsm_onehot_wstate_reg[1]_0\,
      I4 => p_24_in,
      I5 => int_a_write_reg_n_0,
      O => int_a_write_i_1_n_0
    );
int_a_write_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => int_a_write_i_1_n_0,
      Q => int_a_write_reg_n_0,
      R => \^sr\(0)
    );
int_ap_idle_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter4,
      I1 => ap_enable_reg_pp0_iter1,
      I2 => ap_enable_reg_pp0_iter2,
      I3 => \^ap_start\,
      I4 => ap_enable_reg_pp0_iter3,
      O => ap_idle
    );
int_ap_idle_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => ap_idle,
      Q => p_1_in_0(2),
      R => \^sr\(0)
    );
int_ap_ready_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40FF4040"
    )
        port map (
      I0 => p_1_in_0(7),
      I1 => \^ap_start\,
      I2 => icmp_ln8_fu_105_p2,
      I3 => \int_task_ap_done0__7\,
      I4 => int_ap_ready,
      O => int_ap_ready_i_1_n_0
    );
int_ap_ready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_ap_ready_i_1_n_0,
      Q => int_ap_ready,
      R => \^sr\(0)
    );
\int_ap_return[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \int_ap_return_reg[31]_0\(3),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => \out\(3),
      O => \int_ap_return[0]_i_2_n_0\
    );
\int_ap_return[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \int_ap_return_reg[31]_0\(2),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => \out\(2),
      O => \int_ap_return[0]_i_3_n_0\
    );
\int_ap_return[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \int_ap_return_reg[31]_0\(1),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => \out\(1),
      O => \int_ap_return[0]_i_4_n_0\
    );
\int_ap_return[0]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \int_ap_return_reg[31]_0\(0),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => \out\(0),
      O => \int_ap_return[0]_i_5_n_0\
    );
\int_ap_return[11]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \int_ap_return_reg[31]_0\(11),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => \out\(11),
      O => \int_ap_return[11]_i_2_n_0\
    );
\int_ap_return[11]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \int_ap_return_reg[31]_0\(10),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => \out\(10),
      O => \int_ap_return[11]_i_3_n_0\
    );
\int_ap_return[11]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \int_ap_return_reg[31]_0\(9),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => \out\(9),
      O => \int_ap_return[11]_i_4_n_0\
    );
\int_ap_return[11]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \int_ap_return_reg[31]_0\(8),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => \out\(8),
      O => \int_ap_return[11]_i_5_n_0\
    );
\int_ap_return[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \int_ap_return_reg[31]_0\(15),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => \out\(15),
      O => \int_ap_return[15]_i_2_n_0\
    );
\int_ap_return[15]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \int_ap_return_reg[31]_0\(14),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => \out\(14),
      O => \int_ap_return[15]_i_3_n_0\
    );
\int_ap_return[15]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \int_ap_return_reg[31]_0\(13),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => \out\(13),
      O => \int_ap_return[15]_i_4_n_0\
    );
\int_ap_return[15]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \int_ap_return_reg[31]_0\(12),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => \out\(12),
      O => \int_ap_return[15]_i_5_n_0\
    );
\int_ap_return[19]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \int_ap_return_reg[31]_0\(19),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => \out\(19),
      O => \int_ap_return[19]_i_2_n_0\
    );
\int_ap_return[19]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \int_ap_return_reg[31]_0\(18),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => \out\(18),
      O => \int_ap_return[19]_i_3_n_0\
    );
\int_ap_return[19]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \int_ap_return_reg[31]_0\(17),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => \out\(17),
      O => \int_ap_return[19]_i_4_n_0\
    );
\int_ap_return[19]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \int_ap_return_reg[31]_0\(16),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => \out\(16),
      O => \int_ap_return[19]_i_5_n_0\
    );
\int_ap_return[23]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \int_ap_return_reg[31]_0\(23),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => \out\(23),
      O => \int_ap_return[23]_i_2_n_0\
    );
\int_ap_return[23]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \int_ap_return_reg[31]_0\(22),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => \out\(22),
      O => \int_ap_return[23]_i_3_n_0\
    );
\int_ap_return[23]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \int_ap_return_reg[31]_0\(21),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => \out\(21),
      O => \int_ap_return[23]_i_4_n_0\
    );
\int_ap_return[23]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \int_ap_return_reg[31]_0\(20),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => \out\(20),
      O => \int_ap_return[23]_i_5_n_0\
    );
\int_ap_return[27]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \int_ap_return_reg[31]_0\(27),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => \out\(27),
      O => \int_ap_return[27]_i_2_n_0\
    );
\int_ap_return[27]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \int_ap_return_reg[31]_0\(26),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => \out\(26),
      O => \int_ap_return[27]_i_3_n_0\
    );
\int_ap_return[27]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \int_ap_return_reg[31]_0\(25),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => \out\(25),
      O => \int_ap_return[27]_i_4_n_0\
    );
\int_ap_return[27]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \int_ap_return_reg[31]_0\(24),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => \out\(24),
      O => \int_ap_return[27]_i_5_n_0\
    );
\int_ap_return[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \int_ap_return_reg[31]_0\(31),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => \out\(31),
      O => \int_ap_return[31]_i_2_n_0\
    );
\int_ap_return[31]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \int_ap_return_reg[31]_0\(30),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => \out\(30),
      O => \int_ap_return[31]_i_3_n_0\
    );
\int_ap_return[31]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \int_ap_return_reg[31]_0\(29),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => \out\(29),
      O => \int_ap_return[31]_i_4_n_0\
    );
\int_ap_return[31]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \int_ap_return_reg[31]_0\(28),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => \out\(28),
      O => \int_ap_return[31]_i_5_n_0\
    );
\int_ap_return[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \int_ap_return_reg[31]_0\(3),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => \out\(3),
      O => \int_ap_return[3]_i_2_n_0\
    );
\int_ap_return[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \int_ap_return_reg[31]_0\(2),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => \out\(2),
      O => \int_ap_return[3]_i_3_n_0\
    );
\int_ap_return[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \int_ap_return_reg[31]_0\(1),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => \out\(1),
      O => \int_ap_return[3]_i_4_n_0\
    );
\int_ap_return[3]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \int_ap_return_reg[31]_0\(0),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => \out\(0),
      O => \int_ap_return[3]_i_5_n_0\
    );
\int_ap_return[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \int_ap_return_reg[31]_0\(7),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => \out\(7),
      O => \int_ap_return[7]_i_2_n_0\
    );
\int_ap_return[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \int_ap_return_reg[31]_0\(6),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => \out\(6),
      O => \int_ap_return[7]_i_3_n_0\
    );
\int_ap_return[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \int_ap_return_reg[31]_0\(5),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => \out\(5),
      O => \int_ap_return[7]_i_4_n_0\
    );
\int_ap_return[7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \int_ap_return_reg[31]_0\(4),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => \out\(4),
      O => \int_ap_return[7]_i_5_n_0\
    );
\int_ap_return_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => temp_fu_58(0),
      Q => int_ap_return(0),
      R => \^sr\(0)
    );
\int_ap_return_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => CO(0),
      CO(2) => \int_ap_return_reg[0]_i_1_n_1\,
      CO(1) => \int_ap_return_reg[0]_i_1_n_2\,
      CO(0) => \int_ap_return_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \out\(3 downto 0),
      O(3 downto 1) => O(2 downto 0),
      O(0) => temp_fu_58(0),
      S(3) => \int_ap_return[0]_i_2_n_0\,
      S(2) => \int_ap_return[0]_i_3_n_0\,
      S(1) => \int_ap_return[0]_i_4_n_0\,
      S(0) => \int_ap_return[0]_i_5_n_0\
    );
\int_ap_return_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => temp_fu_58(10),
      Q => int_ap_return(10),
      R => \^sr\(0)
    );
\int_ap_return_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => temp_fu_58(11),
      Q => int_ap_return(11),
      R => \^sr\(0)
    );
\int_ap_return_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \int_ap_return_reg[7]_i_1_n_0\,
      CO(3) => \int_ap_return_reg[11]_i_1_n_0\,
      CO(2) => \int_ap_return_reg[11]_i_1_n_1\,
      CO(1) => \int_ap_return_reg[11]_i_1_n_2\,
      CO(0) => \int_ap_return_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \out\(11 downto 8),
      O(3 downto 0) => temp_fu_58(11 downto 8),
      S(3) => \int_ap_return[11]_i_2_n_0\,
      S(2) => \int_ap_return[11]_i_3_n_0\,
      S(1) => \int_ap_return[11]_i_4_n_0\,
      S(0) => \int_ap_return[11]_i_5_n_0\
    );
\int_ap_return_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => temp_fu_58(12),
      Q => int_ap_return(12),
      R => \^sr\(0)
    );
\int_ap_return_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => temp_fu_58(13),
      Q => int_ap_return(13),
      R => \^sr\(0)
    );
\int_ap_return_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => temp_fu_58(14),
      Q => int_ap_return(14),
      R => \^sr\(0)
    );
\int_ap_return_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => temp_fu_58(15),
      Q => int_ap_return(15),
      R => \^sr\(0)
    );
\int_ap_return_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \int_ap_return_reg[11]_i_1_n_0\,
      CO(3) => \int_ap_return_reg[15]_i_1_n_0\,
      CO(2) => \int_ap_return_reg[15]_i_1_n_1\,
      CO(1) => \int_ap_return_reg[15]_i_1_n_2\,
      CO(0) => \int_ap_return_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \out\(15 downto 12),
      O(3 downto 0) => temp_fu_58(15 downto 12),
      S(3) => \int_ap_return[15]_i_2_n_0\,
      S(2) => \int_ap_return[15]_i_3_n_0\,
      S(1) => \int_ap_return[15]_i_4_n_0\,
      S(0) => \int_ap_return[15]_i_5_n_0\
    );
\int_ap_return_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => temp_fu_58(16),
      Q => int_ap_return(16),
      R => \^sr\(0)
    );
\int_ap_return_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => temp_fu_58(17),
      Q => int_ap_return(17),
      R => \^sr\(0)
    );
\int_ap_return_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => temp_fu_58(18),
      Q => int_ap_return(18),
      R => \^sr\(0)
    );
\int_ap_return_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => temp_fu_58(19),
      Q => int_ap_return(19),
      R => \^sr\(0)
    );
\int_ap_return_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \int_ap_return_reg[15]_i_1_n_0\,
      CO(3) => \int_ap_return_reg[19]_i_1_n_0\,
      CO(2) => \int_ap_return_reg[19]_i_1_n_1\,
      CO(1) => \int_ap_return_reg[19]_i_1_n_2\,
      CO(0) => \int_ap_return_reg[19]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \out\(19 downto 16),
      O(3 downto 0) => temp_fu_58(19 downto 16),
      S(3) => \int_ap_return[19]_i_2_n_0\,
      S(2) => \int_ap_return[19]_i_3_n_0\,
      S(1) => \int_ap_return[19]_i_4_n_0\,
      S(0) => \int_ap_return[19]_i_5_n_0\
    );
\int_ap_return_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => temp_fu_58(1),
      Q => int_ap_return(1),
      R => \^sr\(0)
    );
\int_ap_return_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => temp_fu_58(20),
      Q => int_ap_return(20),
      R => \^sr\(0)
    );
\int_ap_return_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => temp_fu_58(21),
      Q => int_ap_return(21),
      R => \^sr\(0)
    );
\int_ap_return_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => temp_fu_58(22),
      Q => int_ap_return(22),
      R => \^sr\(0)
    );
\int_ap_return_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => temp_fu_58(23),
      Q => int_ap_return(23),
      R => \^sr\(0)
    );
\int_ap_return_reg[23]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \int_ap_return_reg[19]_i_1_n_0\,
      CO(3) => \int_ap_return_reg[23]_i_1_n_0\,
      CO(2) => \int_ap_return_reg[23]_i_1_n_1\,
      CO(1) => \int_ap_return_reg[23]_i_1_n_2\,
      CO(0) => \int_ap_return_reg[23]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \out\(23 downto 20),
      O(3 downto 0) => temp_fu_58(23 downto 20),
      S(3) => \int_ap_return[23]_i_2_n_0\,
      S(2) => \int_ap_return[23]_i_3_n_0\,
      S(1) => \int_ap_return[23]_i_4_n_0\,
      S(0) => \int_ap_return[23]_i_5_n_0\
    );
\int_ap_return_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => temp_fu_58(24),
      Q => int_ap_return(24),
      R => \^sr\(0)
    );
\int_ap_return_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => temp_fu_58(25),
      Q => int_ap_return(25),
      R => \^sr\(0)
    );
\int_ap_return_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => temp_fu_58(26),
      Q => int_ap_return(26),
      R => \^sr\(0)
    );
\int_ap_return_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => temp_fu_58(27),
      Q => int_ap_return(27),
      R => \^sr\(0)
    );
\int_ap_return_reg[27]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \int_ap_return_reg[23]_i_1_n_0\,
      CO(3) => \int_ap_return_reg[27]_i_1_n_0\,
      CO(2) => \int_ap_return_reg[27]_i_1_n_1\,
      CO(1) => \int_ap_return_reg[27]_i_1_n_2\,
      CO(0) => \int_ap_return_reg[27]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \out\(27 downto 24),
      O(3 downto 0) => temp_fu_58(27 downto 24),
      S(3) => \int_ap_return[27]_i_2_n_0\,
      S(2) => \int_ap_return[27]_i_3_n_0\,
      S(1) => \int_ap_return[27]_i_4_n_0\,
      S(0) => \int_ap_return[27]_i_5_n_0\
    );
\int_ap_return_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => temp_fu_58(28),
      Q => int_ap_return(28),
      R => \^sr\(0)
    );
\int_ap_return_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => temp_fu_58(29),
      Q => int_ap_return(29),
      R => \^sr\(0)
    );
\int_ap_return_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => temp_fu_58(2),
      Q => int_ap_return(2),
      R => \^sr\(0)
    );
\int_ap_return_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => temp_fu_58(30),
      Q => int_ap_return(30),
      R => \^sr\(0)
    );
\int_ap_return_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => temp_fu_58(31),
      Q => int_ap_return(31),
      R => \^sr\(0)
    );
\int_ap_return_reg[31]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \int_ap_return_reg[27]_i_1_n_0\,
      CO(3) => \NLW_int_ap_return_reg[31]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \int_ap_return_reg[31]_i_1_n_1\,
      CO(1) => \int_ap_return_reg[31]_i_1_n_2\,
      CO(0) => \int_ap_return_reg[31]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => \out\(30 downto 28),
      O(3 downto 0) => temp_fu_58(31 downto 28),
      S(3) => \int_ap_return[31]_i_2_n_0\,
      S(2) => \int_ap_return[31]_i_3_n_0\,
      S(1) => \int_ap_return[31]_i_4_n_0\,
      S(0) => \int_ap_return[31]_i_5_n_0\
    );
\int_ap_return_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => temp_fu_58(3),
      Q => int_ap_return(3),
      R => \^sr\(0)
    );
\int_ap_return_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \int_ap_return_reg[3]_i_1_n_0\,
      CO(2) => \int_ap_return_reg[3]_i_1_n_1\,
      CO(1) => \int_ap_return_reg[3]_i_1_n_2\,
      CO(0) => \int_ap_return_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \out\(3 downto 0),
      O(3 downto 1) => temp_fu_58(3 downto 1),
      O(0) => \NLW_int_ap_return_reg[3]_i_1_O_UNCONNECTED\(0),
      S(3) => \int_ap_return[3]_i_2_n_0\,
      S(2) => \int_ap_return[3]_i_3_n_0\,
      S(1) => \int_ap_return[3]_i_4_n_0\,
      S(0) => \int_ap_return[3]_i_5_n_0\
    );
\int_ap_return_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => temp_fu_58(4),
      Q => int_ap_return(4),
      R => \^sr\(0)
    );
\int_ap_return_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => temp_fu_58(5),
      Q => int_ap_return(5),
      R => \^sr\(0)
    );
\int_ap_return_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => temp_fu_58(6),
      Q => int_ap_return(6),
      R => \^sr\(0)
    );
\int_ap_return_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => temp_fu_58(7),
      Q => int_ap_return(7),
      R => \^sr\(0)
    );
\int_ap_return_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \int_ap_return_reg[3]_i_1_n_0\,
      CO(3) => \int_ap_return_reg[7]_i_1_n_0\,
      CO(2) => \int_ap_return_reg[7]_i_1_n_1\,
      CO(1) => \int_ap_return_reg[7]_i_1_n_2\,
      CO(0) => \int_ap_return_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \out\(7 downto 4),
      O(3 downto 0) => temp_fu_58(7 downto 4),
      S(3) => \int_ap_return[7]_i_2_n_0\,
      S(2) => \int_ap_return[7]_i_3_n_0\,
      S(1) => \int_ap_return[7]_i_4_n_0\,
      S(0) => \int_ap_return[7]_i_5_n_0\
    );
\int_ap_return_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => temp_fu_58(8),
      Q => int_ap_return(8),
      R => \^sr\(0)
    );
\int_ap_return_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => temp_fu_58(9),
      Q => int_ap_return(9),
      R => \^sr\(0)
    );
int_ap_start_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFB0"
    )
        port map (
      I0 => p_1_in_0(7),
      I1 => icmp_ln8_fu_105_p2,
      I2 => \^ap_start\,
      I3 => int_ap_start5_out,
      O => int_ap_start_i_1_n_0
    );
int_ap_start_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => s_axi_control_WDATA(0),
      I1 => s_axi_control_WSTRB(0),
      I2 => p_24_in,
      I3 => int_ap_start_i_4_n_0,
      I4 => p_0_in_1(0),
      I5 => p_0_in_1(1),
      O => int_ap_start5_out
    );
int_ap_start_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => p_0_in_1(2),
      I1 => p_0_in_1(3),
      I2 => \waddr_reg_n_0_[0]\,
      I3 => \waddr_reg_n_0_[1]\,
      I4 => \waddr_reg_n_0_[7]\,
      I5 => \waddr_reg_n_0_[6]\,
      O => int_ap_start_i_4_n_0
    );
int_ap_start_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_ap_start_i_1_n_0,
      Q => \^ap_start\,
      R => \^sr\(0)
    );
int_auto_restart_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0200"
    )
        port map (
      I0 => s_axi_control_WDATA(7),
      I1 => p_0_in_1(1),
      I2 => p_0_in_1(0),
      I3 => \int_ier[1]_i_2_n_0\,
      I4 => p_1_in_0(7),
      O => int_auto_restart_i_1_n_0
    );
int_auto_restart_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_auto_restart_i_1_n_0,
      Q => p_1_in_0(7),
      R => \^sr\(0)
    );
int_b: entity work.design_1_muladd_0_0_muladd_control_s_axi_ram_0
     port map (
      D(25 downto 4) => p_0_in(31 downto 10),
      D(3) => p_0_in(8),
      D(2 downto 0) => p_0_in(6 downto 4),
      Q(25 downto 4) => int_ap_return(31 downto 10),
      Q(3) => int_ap_return(8),
      Q(2 downto 0) => int_ap_return(6 downto 4),
      ap_clk => ap_clk,
      ap_sig_allocacmp_i_1(3 downto 0) => ap_sig_allocacmp_i_1(3 downto 0),
      \ar_hs__0\ => \ar_hs__0\,
      int_a_address1(3 downto 0) => int_a_address1(3 downto 0),
      q00(31 downto 0) => q00(31 downto 0),
      \q1_reg[0]_0\ => \^fsm_onehot_rstate_reg[1]_0\,
      \q1_reg[0]_1\ => int_b_write_reg_n_0,
      \q1_reg[9]_0\(5) => int_b_n_59,
      \q1_reg[9]_0\(4) => int_b_n_60,
      \q1_reg[9]_0\(3) => int_b_n_61,
      \q1_reg[9]_0\(2) => int_b_n_62,
      \q1_reg[9]_0\(1) => int_b_n_63,
      \q1_reg[9]_0\(0) => int_b_n_64,
      \rdata_reg[31]\(25 downto 4) => q1(31 downto 10),
      \rdata_reg[31]\(3) => q1(8),
      \rdata_reg[31]\(2 downto 0) => q1(6 downto 4),
      \rdata_reg[4]\ => \rdata[31]_i_3_n_0\,
      \rdata_reg[4]_0\ => \rdata[31]_i_4_n_0\,
      \rdata_reg[4]_1\ => \rdata[31]_i_5_n_0\,
      s_axi_control_ARVALID => s_axi_control_ARVALID,
      s_axi_control_WDATA(31 downto 0) => s_axi_control_WDATA(31 downto 0),
      s_axi_control_WSTRB(3 downto 0) => s_axi_control_WSTRB(3 downto 0),
      s_axi_control_WVALID => s_axi_control_WVALID,
      tmp_product => \FSM_onehot_wstate_reg_n_0_[2]\
    );
int_b_read_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s_axi_control_ARVALID,
      I1 => \^fsm_onehot_rstate_reg[1]_0\,
      I2 => s_axi_control_ARADDR(6),
      I3 => s_axi_control_ARADDR(7),
      O => int_b_read0
    );
int_b_read_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => int_b_read0,
      Q => int_b_read,
      R => \^sr\(0)
    );
int_b_write_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000FFFF20002000"
    )
        port map (
      I0 => s_axi_control_AWADDR(7),
      I1 => s_axi_control_AWADDR(6),
      I2 => s_axi_control_AWVALID,
      I3 => \^fsm_onehot_wstate_reg[1]_0\,
      I4 => p_24_in,
      I5 => int_b_write_reg_n_0,
      O => int_b_write_i_1_n_0
    );
int_b_write_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0888"
    )
        port map (
      I0 => \FSM_onehot_wstate_reg_n_0_[2]\,
      I1 => s_axi_control_WVALID,
      I2 => \^fsm_onehot_rstate_reg[1]_0\,
      I3 => s_axi_control_ARVALID,
      O => p_24_in
    );
int_b_write_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => int_b_write_i_1_n_0,
      Q => int_b_write_reg_n_0,
      R => \^sr\(0)
    );
int_gie_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => s_axi_control_WDATA(0),
      I1 => p_0_in_1(1),
      I2 => p_0_in_1(0),
      I3 => \int_ier[1]_i_2_n_0\,
      I4 => int_gie_reg_n_0,
      O => int_gie_i_1_n_0
    );
int_gie_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_gie_i_1_n_0,
      Q => int_gie_reg_n_0,
      R => \^sr\(0)
    );
\int_ier[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => s_axi_control_WDATA(0),
      I1 => p_0_in_1(0),
      I2 => p_0_in_1(1),
      I3 => \int_ier[1]_i_2_n_0\,
      I4 => \int_ier_reg_n_0_[0]\,
      O => \int_ier[0]_i_1_n_0\
    );
\int_ier[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => s_axi_control_WDATA(1),
      I1 => p_0_in_1(0),
      I2 => p_0_in_1(1),
      I3 => \int_ier[1]_i_2_n_0\,
      I4 => \int_ier_reg_n_0_[1]\,
      O => \int_ier[1]_i_1_n_0\
    );
\int_ier[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080808000000000"
    )
        port map (
      I0 => s_axi_control_WSTRB(0),
      I1 => \FSM_onehot_wstate_reg_n_0_[2]\,
      I2 => s_axi_control_WVALID,
      I3 => \^fsm_onehot_rstate_reg[1]_0\,
      I4 => s_axi_control_ARVALID,
      I5 => int_ap_start_i_4_n_0,
      O => \int_ier[1]_i_2_n_0\
    );
\int_ier_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \int_ier[0]_i_1_n_0\,
      Q => \int_ier_reg_n_0_[0]\,
      R => \^sr\(0)
    );
\int_ier_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \int_ier[1]_i_1_n_0\,
      Q => \int_ier_reg_n_0_[1]\,
      R => \^sr\(0)
    );
int_interrupt_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \int_isr_reg_n_0_[0]\,
      I1 => \int_isr_reg_n_0_[1]\,
      I2 => int_gie_reg_n_0,
      O => int_interrupt0
    );
int_interrupt_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_interrupt0,
      Q => \^interrupt\,
      R => \^sr\(0)
    );
\int_isr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFFFFFF8000"
    )
        port map (
      I0 => s_axi_control_WDATA(0),
      I1 => \int_ier[1]_i_2_n_0\,
      I2 => p_0_in_1(0),
      I3 => p_0_in_1(1),
      I4 => int_isr8_out,
      I5 => \int_isr_reg_n_0_[0]\,
      O => \int_isr[0]_i_1_n_0\
    );
\int_isr[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => E(0),
      I1 => \int_ier_reg_n_0_[0]\,
      O => int_isr8_out
    );
\int_isr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7777777F8888888"
    )
        port map (
      I0 => s_axi_control_WDATA(1),
      I1 => int_isr7_out,
      I2 => \int_ier_reg_n_0_[1]\,
      I3 => \^ap_start\,
      I4 => icmp_ln8_fu_105_p2,
      I5 => \int_isr_reg_n_0_[1]\,
      O => \int_isr[1]_i_1_n_0\
    );
\int_isr[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => p_0_in_1(1),
      I1 => p_0_in_1(0),
      I2 => int_ap_start_i_4_n_0,
      I3 => p_24_in,
      I4 => s_axi_control_WSTRB(0),
      O => int_isr7_out
    );
\int_isr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \int_isr[0]_i_1_n_0\,
      Q => \int_isr_reg_n_0_[0]\,
      R => \^sr\(0)
    );
\int_isr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \int_isr[1]_i_1_n_0\,
      Q => \int_isr_reg_n_0_[1]\,
      R => \^sr\(0)
    );
int_task_ap_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2E22FFFF2E222E22"
    )
        port map (
      I0 => E(0),
      I1 => auto_restart_status_reg_n_0,
      I2 => p_1_in_0(2),
      I3 => ap_idle,
      I4 => \int_task_ap_done0__7\,
      I5 => int_task_ap_done,
      O => int_task_ap_done_i_1_n_0
    );
int_task_ap_done_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => s_axi_control_ARADDR(6),
      I1 => s_axi_control_ARADDR(7),
      I2 => s_axi_control_ARADDR(5),
      I3 => s_axi_control_ARADDR(4),
      I4 => int_task_ap_done_i_3_n_0,
      I5 => \rdata[31]_i_7_n_0\,
      O => \int_task_ap_done0__7\
    );
int_task_ap_done_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_control_ARADDR(3),
      I1 => s_axi_control_ARADDR(2),
      O => int_task_ap_done_i_3_n_0
    );
int_task_ap_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_task_ap_done_i_1_n_0,
      Q => int_task_ap_done,
      R => \^sr\(0)
    );
\rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => int_gie_reg_n_0,
      I1 => \int_isr_reg_n_0_[0]\,
      I2 => s_axi_control_ARADDR(2),
      I3 => s_axi_control_ARADDR(3),
      I4 => \^ap_start\,
      I5 => \int_ier_reg_n_0_[0]\,
      O => \rdata[0]_i_2_n_0\
    );
\rdata[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => s_axi_control_ARADDR(4),
      I1 => int_a_read2,
      I2 => s_axi_control_ARADDR(5),
      I3 => \rdata[31]_i_7_n_0\,
      O => \rdata[1]_i_2_n_0\
    );
\rdata[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FC0A0C0A"
    )
        port map (
      I0 => int_task_ap_done,
      I1 => \int_ier_reg_n_0_[1]\,
      I2 => s_axi_control_ARADDR(2),
      I3 => s_axi_control_ARADDR(3),
      I4 => \int_isr_reg_n_0_[1]\,
      O => \rdata[1]_i_3_n_0\
    );
\rdata[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => int_a_read,
      I1 => s_axi_control_ARVALID,
      I2 => \^fsm_onehot_rstate_reg[1]_0\,
      I3 => int_b_read,
      O => \rdata[31]_i_1_n_0\
    );
\rdata[31]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \^fsm_onehot_rstate_reg[1]_0\,
      I1 => s_axi_control_ARVALID,
      I2 => int_a_read,
      O => \rdata[31]_i_3_n_0\
    );
\rdata[31]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => int_a_read,
      I1 => \^fsm_onehot_rstate_reg[1]_0\,
      I2 => s_axi_control_ARVALID,
      O => \rdata[31]_i_4_n_0\
    );
\rdata[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000400000000"
    )
        port map (
      I0 => s_axi_control_ARADDR(3),
      I1 => s_axi_control_ARADDR(4),
      I2 => s_axi_control_ARADDR(2),
      I3 => int_a_read2,
      I4 => s_axi_control_ARADDR(5),
      I5 => \rdata[31]_i_7_n_0\,
      O => \rdata[31]_i_5_n_0\
    );
\rdata[31]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_axi_control_ARADDR(6),
      I1 => s_axi_control_ARADDR(7),
      O => int_a_read2
    );
\rdata[31]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => s_axi_control_ARADDR(0),
      I1 => s_axi_control_ARADDR(1),
      I2 => \^fsm_onehot_rstate_reg[1]_0\,
      I3 => s_axi_control_ARVALID,
      O => \rdata[31]_i_7_n_0\
    );
\rdata[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \rdata[31]_i_7_n_0\,
      I1 => s_axi_control_ARADDR(5),
      I2 => int_a_read2,
      I3 => s_axi_control_ARADDR(4),
      I4 => s_axi_control_ARADDR(2),
      I5 => s_axi_control_ARADDR(3),
      O => \rdata[9]_i_3_n_0\
    );
\rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_1_n_0\,
      D => p_0_in(0),
      Q => s_axi_control_RDATA(0),
      R => '0'
    );
\rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_1_n_0\,
      D => p_0_in(10),
      Q => s_axi_control_RDATA(10),
      R => '0'
    );
\rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_1_n_0\,
      D => p_0_in(11),
      Q => s_axi_control_RDATA(11),
      R => '0'
    );
\rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_1_n_0\,
      D => p_0_in(12),
      Q => s_axi_control_RDATA(12),
      R => '0'
    );
\rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_1_n_0\,
      D => p_0_in(13),
      Q => s_axi_control_RDATA(13),
      R => '0'
    );
\rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_1_n_0\,
      D => p_0_in(14),
      Q => s_axi_control_RDATA(14),
      R => '0'
    );
\rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_1_n_0\,
      D => p_0_in(15),
      Q => s_axi_control_RDATA(15),
      R => '0'
    );
\rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_1_n_0\,
      D => p_0_in(16),
      Q => s_axi_control_RDATA(16),
      R => '0'
    );
\rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_1_n_0\,
      D => p_0_in(17),
      Q => s_axi_control_RDATA(17),
      R => '0'
    );
\rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_1_n_0\,
      D => p_0_in(18),
      Q => s_axi_control_RDATA(18),
      R => '0'
    );
\rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_1_n_0\,
      D => p_0_in(19),
      Q => s_axi_control_RDATA(19),
      R => '0'
    );
\rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_1_n_0\,
      D => p_0_in(1),
      Q => s_axi_control_RDATA(1),
      R => '0'
    );
\rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_1_n_0\,
      D => p_0_in(20),
      Q => s_axi_control_RDATA(20),
      R => '0'
    );
\rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_1_n_0\,
      D => p_0_in(21),
      Q => s_axi_control_RDATA(21),
      R => '0'
    );
\rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_1_n_0\,
      D => p_0_in(22),
      Q => s_axi_control_RDATA(22),
      R => '0'
    );
\rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_1_n_0\,
      D => p_0_in(23),
      Q => s_axi_control_RDATA(23),
      R => '0'
    );
\rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_1_n_0\,
      D => p_0_in(24),
      Q => s_axi_control_RDATA(24),
      R => '0'
    );
\rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_1_n_0\,
      D => p_0_in(25),
      Q => s_axi_control_RDATA(25),
      R => '0'
    );
\rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_1_n_0\,
      D => p_0_in(26),
      Q => s_axi_control_RDATA(26),
      R => '0'
    );
\rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_1_n_0\,
      D => p_0_in(27),
      Q => s_axi_control_RDATA(27),
      R => '0'
    );
\rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_1_n_0\,
      D => p_0_in(28),
      Q => s_axi_control_RDATA(28),
      R => '0'
    );
\rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_1_n_0\,
      D => p_0_in(29),
      Q => s_axi_control_RDATA(29),
      R => '0'
    );
\rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_1_n_0\,
      D => p_0_in(2),
      Q => s_axi_control_RDATA(2),
      R => '0'
    );
\rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_1_n_0\,
      D => p_0_in(30),
      Q => s_axi_control_RDATA(30),
      R => '0'
    );
\rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_1_n_0\,
      D => p_0_in(31),
      Q => s_axi_control_RDATA(31),
      R => '0'
    );
\rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_1_n_0\,
      D => p_0_in(3),
      Q => s_axi_control_RDATA(3),
      R => '0'
    );
\rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_1_n_0\,
      D => p_0_in(4),
      Q => s_axi_control_RDATA(4),
      R => '0'
    );
\rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_1_n_0\,
      D => p_0_in(5),
      Q => s_axi_control_RDATA(5),
      R => '0'
    );
\rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_1_n_0\,
      D => p_0_in(6),
      Q => s_axi_control_RDATA(6),
      R => '0'
    );
\rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_1_n_0\,
      D => p_0_in(7),
      Q => s_axi_control_RDATA(7),
      R => '0'
    );
\rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_1_n_0\,
      D => p_0_in(8),
      Q => s_axi_control_RDATA(8),
      R => '0'
    );
\rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_1_n_0\,
      D => p_0_in(9),
      Q => s_axi_control_RDATA(9),
      R => '0'
    );
s_axi_control_RVALID_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => int_b_read,
      I1 => \FSM_onehot_rstate_reg_n_0_[2]\,
      I2 => int_a_read,
      O => s_axi_control_RVALID
    );
s_axi_control_WREADY_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \FSM_onehot_wstate_reg_n_0_[2]\,
      I1 => \^fsm_onehot_rstate_reg[1]_0\,
      I2 => s_axi_control_ARVALID,
      O => s_axi_control_WREADY
    );
\waddr[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fsm_onehot_wstate_reg[1]_0\,
      I1 => s_axi_control_AWVALID,
      O => aw_hs
    );
\waddr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => aw_hs,
      D => s_axi_control_AWADDR(0),
      Q => \waddr_reg_n_0_[0]\,
      R => '0'
    );
\waddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => aw_hs,
      D => s_axi_control_AWADDR(1),
      Q => \waddr_reg_n_0_[1]\,
      R => '0'
    );
\waddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => aw_hs,
      D => s_axi_control_AWADDR(2),
      Q => p_0_in_1(0),
      R => '0'
    );
\waddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => aw_hs,
      D => s_axi_control_AWADDR(3),
      Q => p_0_in_1(1),
      R => '0'
    );
\waddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => aw_hs,
      D => s_axi_control_AWADDR(4),
      Q => p_0_in_1(2),
      R => '0'
    );
\waddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => aw_hs,
      D => s_axi_control_AWADDR(5),
      Q => p_0_in_1(3),
      R => '0'
    );
\waddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => aw_hs,
      D => s_axi_control_AWADDR(6),
      Q => \waddr_reg_n_0_[6]\,
      R => '0'
    );
\waddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => aw_hs,
      D => s_axi_control_AWADDR(7),
      Q => \waddr_reg_n_0_[7]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_muladd_0_0_muladd is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    s_axi_control_AWVALID : in STD_LOGIC;
    s_axi_control_AWREADY : out STD_LOGIC;
    s_axi_control_AWADDR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_control_WVALID : in STD_LOGIC;
    s_axi_control_WREADY : out STD_LOGIC;
    s_axi_control_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_control_ARVALID : in STD_LOGIC;
    s_axi_control_ARREADY : out STD_LOGIC;
    s_axi_control_ARADDR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_control_RVALID : out STD_LOGIC;
    s_axi_control_RREADY : in STD_LOGIC;
    s_axi_control_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_control_BVALID : out STD_LOGIC;
    s_axi_control_BREADY : in STD_LOGIC;
    s_axi_control_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    interrupt : out STD_LOGIC
  );
  attribute C_S_AXI_CONTROL_ADDR_WIDTH : integer;
  attribute C_S_AXI_CONTROL_ADDR_WIDTH of design_1_muladd_0_0_muladd : entity is 8;
  attribute C_S_AXI_CONTROL_DATA_WIDTH : integer;
  attribute C_S_AXI_CONTROL_DATA_WIDTH of design_1_muladd_0_0_muladd : entity is 32;
  attribute C_S_AXI_CONTROL_WSTRB_WIDTH : integer;
  attribute C_S_AXI_CONTROL_WSTRB_WIDTH of design_1_muladd_0_0_muladd : entity is 4;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of design_1_muladd_0_0_muladd : entity is 32;
  attribute C_S_AXI_WSTRB_WIDTH : integer;
  attribute C_S_AXI_WSTRB_WIDTH of design_1_muladd_0_0_muladd : entity is 4;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_muladd_0_0_muladd : entity is "muladd";
  attribute ap_ST_fsm_pp0_stage0 : string;
  attribute ap_ST_fsm_pp0_stage0 of design_1_muladd_0_0_muladd : entity is "1'b1";
  attribute hls_module : string;
  attribute hls_module of design_1_muladd_0_0_muladd : entity is "yes";
end design_1_muladd_0_0_muladd;

architecture STRUCTURE of design_1_muladd_0_0_muladd is
  signal \<const0>\ : STD_LOGIC;
  signal ap_condition_151 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter2 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter3 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter4 : STD_LOGIC;
  signal ap_loop_exit_ready : STD_LOGIC;
  signal ap_loop_exit_ready_pp0_iter2_reg_reg_srl2_n_0 : STD_LOGIC;
  signal ap_loop_exit_ready_pp0_iter3_reg : STD_LOGIC;
  signal ap_loop_init : STD_LOGIC;
  signal ap_rst_n_inv : STD_LOGIC;
  signal ap_start : STD_LOGIC;
  signal control_s_axi_U_n_10 : STD_LOGIC;
  signal control_s_axi_U_n_11 : STD_LOGIC;
  signal control_s_axi_U_n_12 : STD_LOGIC;
  signal control_s_axi_U_n_45 : STD_LOGIC;
  signal control_s_axi_U_n_46 : STD_LOGIC;
  signal control_s_axi_U_n_47 : STD_LOGIC;
  signal control_s_axi_U_n_48 : STD_LOGIC;
  signal control_s_axi_U_n_49 : STD_LOGIC;
  signal control_s_axi_U_n_50 : STD_LOGIC;
  signal control_s_axi_U_n_51 : STD_LOGIC;
  signal control_s_axi_U_n_52 : STD_LOGIC;
  signal control_s_axi_U_n_53 : STD_LOGIC;
  signal control_s_axi_U_n_54 : STD_LOGIC;
  signal control_s_axi_U_n_55 : STD_LOGIC;
  signal control_s_axi_U_n_56 : STD_LOGIC;
  signal control_s_axi_U_n_57 : STD_LOGIC;
  signal control_s_axi_U_n_58 : STD_LOGIC;
  signal control_s_axi_U_n_59 : STD_LOGIC;
  signal control_s_axi_U_n_60 : STD_LOGIC;
  signal control_s_axi_U_n_61 : STD_LOGIC;
  signal control_s_axi_U_n_62 : STD_LOGIC;
  signal control_s_axi_U_n_63 : STD_LOGIC;
  signal control_s_axi_U_n_64 : STD_LOGIC;
  signal control_s_axi_U_n_65 : STD_LOGIC;
  signal control_s_axi_U_n_66 : STD_LOGIC;
  signal control_s_axi_U_n_67 : STD_LOGIC;
  signal control_s_axi_U_n_68 : STD_LOGIC;
  signal control_s_axi_U_n_69 : STD_LOGIC;
  signal control_s_axi_U_n_70 : STD_LOGIC;
  signal control_s_axi_U_n_71 : STD_LOGIC;
  signal control_s_axi_U_n_72 : STD_LOGIC;
  signal control_s_axi_U_n_73 : STD_LOGIC;
  signal control_s_axi_U_n_74 : STD_LOGIC;
  signal control_s_axi_U_n_75 : STD_LOGIC;
  signal control_s_axi_U_n_76 : STD_LOGIC;
  signal control_s_axi_U_n_9 : STD_LOGIC;
  signal dout_reg : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal flow_control_loop_pipe_U_n_1 : STD_LOGIC;
  signal flow_control_loop_pipe_U_n_2 : STD_LOGIC;
  signal flow_control_loop_pipe_U_n_3 : STD_LOGIC;
  signal flow_control_loop_pipe_U_n_4 : STD_LOGIC;
  signal flow_control_loop_pipe_U_n_5 : STD_LOGIC;
  signal flow_control_loop_pipe_U_n_9 : STD_LOGIC;
  signal i_fu_62 : STD_LOGIC;
  signal \i_fu_62_reg_n_0_[0]\ : STD_LOGIC;
  signal \i_fu_62_reg_n_0_[1]\ : STD_LOGIC;
  signal \i_fu_62_reg_n_0_[2]\ : STD_LOGIC;
  signal \i_fu_62_reg_n_0_[3]\ : STD_LOGIC;
  signal \i_fu_62_reg_n_0_[4]\ : STD_LOGIC;
  signal icmp_ln8_fu_105_p2 : STD_LOGIC;
  signal mul_32s_32s_32_2_1_U1_n_16 : STD_LOGIC;
  signal mul_32s_32s_32_2_1_U1_n_17 : STD_LOGIC;
  signal mul_32s_32s_32_2_1_U1_n_18 : STD_LOGIC;
  signal mul_32s_32s_32_2_1_U1_n_19 : STD_LOGIC;
  signal mul_32s_32s_32_2_1_U1_n_20 : STD_LOGIC;
  signal mul_32s_32s_32_2_1_U1_n_21 : STD_LOGIC;
  signal mul_32s_32s_32_2_1_U1_n_22 : STD_LOGIC;
  signal mul_32s_32s_32_2_1_U1_n_23 : STD_LOGIC;
  signal mul_32s_32s_32_2_1_U1_n_24 : STD_LOGIC;
  signal mul_32s_32s_32_2_1_U1_n_25 : STD_LOGIC;
  signal mul_32s_32s_32_2_1_U1_n_26 : STD_LOGIC;
  signal mul_32s_32s_32_2_1_U1_n_27 : STD_LOGIC;
  signal mul_32s_32s_32_2_1_U1_n_28 : STD_LOGIC;
  signal mul_32s_32s_32_2_1_U1_n_29 : STD_LOGIC;
  signal mul_32s_32s_32_2_1_U1_n_30 : STD_LOGIC;
  signal mul_32s_32s_32_2_1_U1_n_31 : STD_LOGIC;
  signal mul_ln10_reg_187 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal q00 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \temp_fu_58[0]_i_2_n_0\ : STD_LOGIC;
  signal \temp_fu_58[12]_i_2_n_0\ : STD_LOGIC;
  signal \temp_fu_58[12]_i_3_n_0\ : STD_LOGIC;
  signal \temp_fu_58[12]_i_4_n_0\ : STD_LOGIC;
  signal \temp_fu_58[12]_i_5_n_0\ : STD_LOGIC;
  signal \temp_fu_58[16]_i_2_n_0\ : STD_LOGIC;
  signal \temp_fu_58[16]_i_3_n_0\ : STD_LOGIC;
  signal \temp_fu_58[16]_i_4_n_0\ : STD_LOGIC;
  signal \temp_fu_58[16]_i_5_n_0\ : STD_LOGIC;
  signal \temp_fu_58[20]_i_2_n_0\ : STD_LOGIC;
  signal \temp_fu_58[20]_i_3_n_0\ : STD_LOGIC;
  signal \temp_fu_58[20]_i_4_n_0\ : STD_LOGIC;
  signal \temp_fu_58[20]_i_5_n_0\ : STD_LOGIC;
  signal \temp_fu_58[24]_i_2_n_0\ : STD_LOGIC;
  signal \temp_fu_58[24]_i_3_n_0\ : STD_LOGIC;
  signal \temp_fu_58[24]_i_4_n_0\ : STD_LOGIC;
  signal \temp_fu_58[24]_i_5_n_0\ : STD_LOGIC;
  signal \temp_fu_58[28]_i_2_n_0\ : STD_LOGIC;
  signal \temp_fu_58[28]_i_3_n_0\ : STD_LOGIC;
  signal \temp_fu_58[28]_i_4_n_0\ : STD_LOGIC;
  signal \temp_fu_58[28]_i_5_n_0\ : STD_LOGIC;
  signal \temp_fu_58[4]_i_2_n_0\ : STD_LOGIC;
  signal \temp_fu_58[4]_i_3_n_0\ : STD_LOGIC;
  signal \temp_fu_58[4]_i_4_n_0\ : STD_LOGIC;
  signal \temp_fu_58[4]_i_5_n_0\ : STD_LOGIC;
  signal \temp_fu_58[8]_i_2_n_0\ : STD_LOGIC;
  signal \temp_fu_58[8]_i_3_n_0\ : STD_LOGIC;
  signal \temp_fu_58[8]_i_4_n_0\ : STD_LOGIC;
  signal \temp_fu_58[8]_i_5_n_0\ : STD_LOGIC;
  signal temp_fu_58_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \temp_fu_58_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \temp_fu_58_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \temp_fu_58_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \temp_fu_58_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \temp_fu_58_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \temp_fu_58_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \temp_fu_58_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \temp_fu_58_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \temp_fu_58_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \temp_fu_58_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \temp_fu_58_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \temp_fu_58_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \temp_fu_58_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \temp_fu_58_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \temp_fu_58_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \temp_fu_58_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \temp_fu_58_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \temp_fu_58_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \temp_fu_58_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \temp_fu_58_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \temp_fu_58_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \temp_fu_58_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \temp_fu_58_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \temp_fu_58_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \temp_fu_58_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \temp_fu_58_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \temp_fu_58_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \temp_fu_58_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \temp_fu_58_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \temp_fu_58_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \temp_fu_58_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \temp_fu_58_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \temp_fu_58_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \temp_fu_58_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \temp_fu_58_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \temp_fu_58_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \temp_fu_58_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \temp_fu_58_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \temp_fu_58_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \temp_fu_58_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \temp_fu_58_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \temp_fu_58_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \temp_fu_58_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \temp_fu_58_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \temp_fu_58_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \temp_fu_58_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \temp_fu_58_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \temp_fu_58_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \temp_fu_58_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \temp_fu_58_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \temp_fu_58_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \temp_fu_58_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \temp_fu_58_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \temp_fu_58_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \temp_fu_58_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_temp_fu_58_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute srl_name : string;
  attribute srl_name of ap_loop_exit_ready_pp0_iter2_reg_reg_srl2 : label is "inst/ap_loop_exit_ready_pp0_iter2_reg_reg_srl2";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \temp_fu_58_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \temp_fu_58_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \temp_fu_58_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \temp_fu_58_reg[24]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \temp_fu_58_reg[28]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \temp_fu_58_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \temp_fu_58_reg[8]_i_1\ : label is 11;
begin
  s_axi_control_BRESP(1) <= \<const0>\;
  s_axi_control_BRESP(0) <= \<const0>\;
  s_axi_control_RRESP(1) <= \<const0>\;
  s_axi_control_RRESP(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
ap_enable_reg_pp0_iter1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => flow_control_loop_pipe_U_n_9,
      Q => ap_enable_reg_pp0_iter1,
      R => '0'
    );
ap_enable_reg_pp0_iter2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter1,
      Q => ap_enable_reg_pp0_iter2,
      R => ap_rst_n_inv
    );
ap_enable_reg_pp0_iter3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter2,
      Q => ap_enable_reg_pp0_iter3,
      R => ap_rst_n_inv
    );
ap_enable_reg_pp0_iter4_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter3,
      Q => ap_enable_reg_pp0_iter4,
      R => ap_rst_n_inv
    );
ap_loop_exit_ready_pp0_iter2_reg_reg_srl2: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ap_clk,
      D => ap_loop_exit_ready,
      Q => ap_loop_exit_ready_pp0_iter2_reg_reg_srl2_n_0
    );
ap_loop_exit_ready_pp0_iter3_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => ap_loop_exit_ready_pp0_iter2_reg_reg_srl2_n_0,
      Q => ap_loop_exit_ready_pp0_iter3_reg,
      R => '0'
    );
control_s_axi_U: entity work.design_1_muladd_0_0_muladd_control_s_axi
     port map (
      CO(0) => control_s_axi_U_n_9,
      E(0) => ap_loop_exit_ready_pp0_iter3_reg,
      \FSM_onehot_rstate_reg[1]_0\ => s_axi_control_ARREADY,
      \FSM_onehot_wstate_reg[1]_0\ => s_axi_control_AWREADY,
      O(2) => control_s_axi_U_n_10,
      O(1) => control_s_axi_U_n_11,
      O(0) => control_s_axi_U_n_12,
      Q(3) => \i_fu_62_reg_n_0_[3]\,
      Q(2) => \i_fu_62_reg_n_0_[2]\,
      Q(1) => \i_fu_62_reg_n_0_[1]\,
      Q(0) => \i_fu_62_reg_n_0_[0]\,
      SR(0) => ap_rst_n_inv,
      ap_clk => ap_clk,
      ap_clk_0(31 downto 0) => q00(31 downto 0),
      ap_enable_reg_pp0_iter1 => ap_enable_reg_pp0_iter1,
      ap_enable_reg_pp0_iter2 => ap_enable_reg_pp0_iter2,
      ap_enable_reg_pp0_iter3 => ap_enable_reg_pp0_iter3,
      ap_enable_reg_pp0_iter4 => ap_enable_reg_pp0_iter4,
      ap_loop_exit_ready => ap_loop_exit_ready,
      ap_loop_init => ap_loop_init,
      ap_rst_n => ap_rst_n,
      ap_start => ap_start,
      icmp_ln8_fu_105_p2 => icmp_ln8_fu_105_p2,
      \int_ap_return_reg[31]_0\(31 downto 0) => mul_ln10_reg_187(31 downto 0),
      interrupt => interrupt,
      \out\(31 downto 0) => temp_fu_58_reg(31 downto 0),
      q00(31) => control_s_axi_U_n_45,
      q00(30) => control_s_axi_U_n_46,
      q00(29) => control_s_axi_U_n_47,
      q00(28) => control_s_axi_U_n_48,
      q00(27) => control_s_axi_U_n_49,
      q00(26) => control_s_axi_U_n_50,
      q00(25) => control_s_axi_U_n_51,
      q00(24) => control_s_axi_U_n_52,
      q00(23) => control_s_axi_U_n_53,
      q00(22) => control_s_axi_U_n_54,
      q00(21) => control_s_axi_U_n_55,
      q00(20) => control_s_axi_U_n_56,
      q00(19) => control_s_axi_U_n_57,
      q00(18) => control_s_axi_U_n_58,
      q00(17) => control_s_axi_U_n_59,
      q00(16) => control_s_axi_U_n_60,
      q00(15) => control_s_axi_U_n_61,
      q00(14) => control_s_axi_U_n_62,
      q00(13) => control_s_axi_U_n_63,
      q00(12) => control_s_axi_U_n_64,
      q00(11) => control_s_axi_U_n_65,
      q00(10) => control_s_axi_U_n_66,
      q00(9) => control_s_axi_U_n_67,
      q00(8) => control_s_axi_U_n_68,
      q00(7) => control_s_axi_U_n_69,
      q00(6) => control_s_axi_U_n_70,
      q00(5) => control_s_axi_U_n_71,
      q00(4) => control_s_axi_U_n_72,
      q00(3) => control_s_axi_U_n_73,
      q00(2) => control_s_axi_U_n_74,
      q00(1) => control_s_axi_U_n_75,
      q00(0) => control_s_axi_U_n_76,
      s_axi_control_ARADDR(7 downto 0) => s_axi_control_ARADDR(7 downto 0),
      s_axi_control_ARVALID => s_axi_control_ARVALID,
      s_axi_control_AWADDR(7 downto 0) => s_axi_control_AWADDR(7 downto 0),
      s_axi_control_AWVALID => s_axi_control_AWVALID,
      s_axi_control_BREADY => s_axi_control_BREADY,
      s_axi_control_BVALID => s_axi_control_BVALID,
      s_axi_control_RDATA(31 downto 0) => s_axi_control_RDATA(31 downto 0),
      s_axi_control_RREADY => s_axi_control_RREADY,
      s_axi_control_RVALID => s_axi_control_RVALID,
      s_axi_control_WDATA(31 downto 0) => s_axi_control_WDATA(31 downto 0),
      s_axi_control_WREADY => s_axi_control_WREADY,
      s_axi_control_WSTRB(3 downto 0) => s_axi_control_WSTRB(3 downto 0),
      s_axi_control_WVALID => s_axi_control_WVALID
    );
flow_control_loop_pipe_U: entity work.design_1_muladd_0_0_muladd_flow_control_loop_pipe
     port map (
      D(4) => flow_control_loop_pipe_U_n_1,
      D(3) => flow_control_loop_pipe_U_n_2,
      D(2) => flow_control_loop_pipe_U_n_3,
      D(1) => flow_control_loop_pipe_U_n_4,
      D(0) => flow_control_loop_pipe_U_n_5,
      E(0) => i_fu_62,
      Q(4) => \i_fu_62_reg_n_0_[4]\,
      Q(3) => \i_fu_62_reg_n_0_[3]\,
      Q(2) => \i_fu_62_reg_n_0_[2]\,
      Q(1) => \i_fu_62_reg_n_0_[1]\,
      Q(0) => \i_fu_62_reg_n_0_[0]\,
      ap_clk => ap_clk,
      ap_condition_151 => ap_condition_151,
      ap_loop_init => ap_loop_init,
      ap_rst_n => ap_rst_n,
      ap_rst_n_0 => flow_control_loop_pipe_U_n_9,
      ap_start => ap_start,
      icmp_ln8_fu_105_p2 => icmp_ln8_fu_105_p2
    );
\i_fu_62_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_fu_62,
      D => flow_control_loop_pipe_U_n_5,
      Q => \i_fu_62_reg_n_0_[0]\,
      R => '0'
    );
\i_fu_62_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_fu_62,
      D => flow_control_loop_pipe_U_n_4,
      Q => \i_fu_62_reg_n_0_[1]\,
      R => '0'
    );
\i_fu_62_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_fu_62,
      D => flow_control_loop_pipe_U_n_3,
      Q => \i_fu_62_reg_n_0_[2]\,
      R => '0'
    );
\i_fu_62_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_fu_62,
      D => flow_control_loop_pipe_U_n_2,
      Q => \i_fu_62_reg_n_0_[3]\,
      R => '0'
    );
\i_fu_62_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_fu_62,
      D => flow_control_loop_pipe_U_n_1,
      Q => \i_fu_62_reg_n_0_[4]\,
      R => '0'
    );
mul_32s_32s_32_2_1_U1: entity work.design_1_muladd_0_0_muladd_mul_32s_32s_32_2_1
     port map (
      D(31 downto 16) => dout_reg(31 downto 16),
      D(15) => mul_32s_32s_32_2_1_U1_n_16,
      D(14) => mul_32s_32s_32_2_1_U1_n_17,
      D(13) => mul_32s_32s_32_2_1_U1_n_18,
      D(12) => mul_32s_32s_32_2_1_U1_n_19,
      D(11) => mul_32s_32s_32_2_1_U1_n_20,
      D(10) => mul_32s_32s_32_2_1_U1_n_21,
      D(9) => mul_32s_32s_32_2_1_U1_n_22,
      D(8) => mul_32s_32s_32_2_1_U1_n_23,
      D(7) => mul_32s_32s_32_2_1_U1_n_24,
      D(6) => mul_32s_32s_32_2_1_U1_n_25,
      D(5) => mul_32s_32s_32_2_1_U1_n_26,
      D(4) => mul_32s_32s_32_2_1_U1_n_27,
      D(3) => mul_32s_32s_32_2_1_U1_n_28,
      D(2) => mul_32s_32s_32_2_1_U1_n_29,
      D(1) => mul_32s_32s_32_2_1_U1_n_30,
      D(0) => mul_32s_32s_32_2_1_U1_n_31,
      ap_clk => ap_clk,
      ap_start => ap_start,
      dout_reg_0(31 downto 0) => q00(31 downto 0),
      q00(31) => control_s_axi_U_n_45,
      q00(30) => control_s_axi_U_n_46,
      q00(29) => control_s_axi_U_n_47,
      q00(28) => control_s_axi_U_n_48,
      q00(27) => control_s_axi_U_n_49,
      q00(26) => control_s_axi_U_n_50,
      q00(25) => control_s_axi_U_n_51,
      q00(24) => control_s_axi_U_n_52,
      q00(23) => control_s_axi_U_n_53,
      q00(22) => control_s_axi_U_n_54,
      q00(21) => control_s_axi_U_n_55,
      q00(20) => control_s_axi_U_n_56,
      q00(19) => control_s_axi_U_n_57,
      q00(18) => control_s_axi_U_n_58,
      q00(17) => control_s_axi_U_n_59,
      q00(16) => control_s_axi_U_n_60,
      q00(15) => control_s_axi_U_n_61,
      q00(14) => control_s_axi_U_n_62,
      q00(13) => control_s_axi_U_n_63,
      q00(12) => control_s_axi_U_n_64,
      q00(11) => control_s_axi_U_n_65,
      q00(10) => control_s_axi_U_n_66,
      q00(9) => control_s_axi_U_n_67,
      q00(8) => control_s_axi_U_n_68,
      q00(7) => control_s_axi_U_n_69,
      q00(6) => control_s_axi_U_n_70,
      q00(5) => control_s_axi_U_n_71,
      q00(4) => control_s_axi_U_n_72,
      q00(3) => control_s_axi_U_n_73,
      q00(2) => control_s_axi_U_n_74,
      q00(1) => control_s_axi_U_n_75,
      q00(0) => control_s_axi_U_n_76
    );
\mul_ln10_reg_187_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => mul_32s_32s_32_2_1_U1_n_31,
      Q => mul_ln10_reg_187(0),
      R => '0'
    );
\mul_ln10_reg_187_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => mul_32s_32s_32_2_1_U1_n_21,
      Q => mul_ln10_reg_187(10),
      R => '0'
    );
\mul_ln10_reg_187_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => mul_32s_32s_32_2_1_U1_n_20,
      Q => mul_ln10_reg_187(11),
      R => '0'
    );
\mul_ln10_reg_187_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => mul_32s_32s_32_2_1_U1_n_19,
      Q => mul_ln10_reg_187(12),
      R => '0'
    );
\mul_ln10_reg_187_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => mul_32s_32s_32_2_1_U1_n_18,
      Q => mul_ln10_reg_187(13),
      R => '0'
    );
\mul_ln10_reg_187_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => mul_32s_32s_32_2_1_U1_n_17,
      Q => mul_ln10_reg_187(14),
      R => '0'
    );
\mul_ln10_reg_187_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => mul_32s_32s_32_2_1_U1_n_16,
      Q => mul_ln10_reg_187(15),
      R => '0'
    );
\mul_ln10_reg_187_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => dout_reg(16),
      Q => mul_ln10_reg_187(16),
      R => '0'
    );
\mul_ln10_reg_187_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => dout_reg(17),
      Q => mul_ln10_reg_187(17),
      R => '0'
    );
\mul_ln10_reg_187_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => dout_reg(18),
      Q => mul_ln10_reg_187(18),
      R => '0'
    );
\mul_ln10_reg_187_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => dout_reg(19),
      Q => mul_ln10_reg_187(19),
      R => '0'
    );
\mul_ln10_reg_187_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => mul_32s_32s_32_2_1_U1_n_30,
      Q => mul_ln10_reg_187(1),
      R => '0'
    );
\mul_ln10_reg_187_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => dout_reg(20),
      Q => mul_ln10_reg_187(20),
      R => '0'
    );
\mul_ln10_reg_187_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => dout_reg(21),
      Q => mul_ln10_reg_187(21),
      R => '0'
    );
\mul_ln10_reg_187_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => dout_reg(22),
      Q => mul_ln10_reg_187(22),
      R => '0'
    );
\mul_ln10_reg_187_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => dout_reg(23),
      Q => mul_ln10_reg_187(23),
      R => '0'
    );
\mul_ln10_reg_187_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => dout_reg(24),
      Q => mul_ln10_reg_187(24),
      R => '0'
    );
\mul_ln10_reg_187_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => dout_reg(25),
      Q => mul_ln10_reg_187(25),
      R => '0'
    );
\mul_ln10_reg_187_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => dout_reg(26),
      Q => mul_ln10_reg_187(26),
      R => '0'
    );
\mul_ln10_reg_187_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => dout_reg(27),
      Q => mul_ln10_reg_187(27),
      R => '0'
    );
\mul_ln10_reg_187_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => dout_reg(28),
      Q => mul_ln10_reg_187(28),
      R => '0'
    );
\mul_ln10_reg_187_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => dout_reg(29),
      Q => mul_ln10_reg_187(29),
      R => '0'
    );
\mul_ln10_reg_187_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => mul_32s_32s_32_2_1_U1_n_29,
      Q => mul_ln10_reg_187(2),
      R => '0'
    );
\mul_ln10_reg_187_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => dout_reg(30),
      Q => mul_ln10_reg_187(30),
      R => '0'
    );
\mul_ln10_reg_187_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => dout_reg(31),
      Q => mul_ln10_reg_187(31),
      R => '0'
    );
\mul_ln10_reg_187_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => mul_32s_32s_32_2_1_U1_n_28,
      Q => mul_ln10_reg_187(3),
      R => '0'
    );
\mul_ln10_reg_187_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => mul_32s_32s_32_2_1_U1_n_27,
      Q => mul_ln10_reg_187(4),
      R => '0'
    );
\mul_ln10_reg_187_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => mul_32s_32s_32_2_1_U1_n_26,
      Q => mul_ln10_reg_187(5),
      R => '0'
    );
\mul_ln10_reg_187_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => mul_32s_32s_32_2_1_U1_n_25,
      Q => mul_ln10_reg_187(6),
      R => '0'
    );
\mul_ln10_reg_187_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => mul_32s_32s_32_2_1_U1_n_24,
      Q => mul_ln10_reg_187(7),
      R => '0'
    );
\mul_ln10_reg_187_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => mul_32s_32s_32_2_1_U1_n_23,
      Q => mul_ln10_reg_187(8),
      R => '0'
    );
\mul_ln10_reg_187_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => mul_32s_32s_32_2_1_U1_n_22,
      Q => mul_ln10_reg_187(9),
      R => '0'
    );
\temp_fu_58[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => mul_ln10_reg_187(0),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => temp_fu_58_reg(0),
      O => \temp_fu_58[0]_i_2_n_0\
    );
\temp_fu_58[12]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => mul_ln10_reg_187(15),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => temp_fu_58_reg(15),
      O => \temp_fu_58[12]_i_2_n_0\
    );
\temp_fu_58[12]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => mul_ln10_reg_187(14),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => temp_fu_58_reg(14),
      O => \temp_fu_58[12]_i_3_n_0\
    );
\temp_fu_58[12]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => mul_ln10_reg_187(13),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => temp_fu_58_reg(13),
      O => \temp_fu_58[12]_i_4_n_0\
    );
\temp_fu_58[12]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => mul_ln10_reg_187(12),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => temp_fu_58_reg(12),
      O => \temp_fu_58[12]_i_5_n_0\
    );
\temp_fu_58[16]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => mul_ln10_reg_187(19),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => temp_fu_58_reg(19),
      O => \temp_fu_58[16]_i_2_n_0\
    );
\temp_fu_58[16]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => mul_ln10_reg_187(18),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => temp_fu_58_reg(18),
      O => \temp_fu_58[16]_i_3_n_0\
    );
\temp_fu_58[16]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => mul_ln10_reg_187(17),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => temp_fu_58_reg(17),
      O => \temp_fu_58[16]_i_4_n_0\
    );
\temp_fu_58[16]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => mul_ln10_reg_187(16),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => temp_fu_58_reg(16),
      O => \temp_fu_58[16]_i_5_n_0\
    );
\temp_fu_58[20]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => mul_ln10_reg_187(23),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => temp_fu_58_reg(23),
      O => \temp_fu_58[20]_i_2_n_0\
    );
\temp_fu_58[20]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => mul_ln10_reg_187(22),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => temp_fu_58_reg(22),
      O => \temp_fu_58[20]_i_3_n_0\
    );
\temp_fu_58[20]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => mul_ln10_reg_187(21),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => temp_fu_58_reg(21),
      O => \temp_fu_58[20]_i_4_n_0\
    );
\temp_fu_58[20]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => mul_ln10_reg_187(20),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => temp_fu_58_reg(20),
      O => \temp_fu_58[20]_i_5_n_0\
    );
\temp_fu_58[24]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => mul_ln10_reg_187(27),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => temp_fu_58_reg(27),
      O => \temp_fu_58[24]_i_2_n_0\
    );
\temp_fu_58[24]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => mul_ln10_reg_187(26),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => temp_fu_58_reg(26),
      O => \temp_fu_58[24]_i_3_n_0\
    );
\temp_fu_58[24]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => mul_ln10_reg_187(25),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => temp_fu_58_reg(25),
      O => \temp_fu_58[24]_i_4_n_0\
    );
\temp_fu_58[24]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => mul_ln10_reg_187(24),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => temp_fu_58_reg(24),
      O => \temp_fu_58[24]_i_5_n_0\
    );
\temp_fu_58[28]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => mul_ln10_reg_187(31),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => temp_fu_58_reg(31),
      O => \temp_fu_58[28]_i_2_n_0\
    );
\temp_fu_58[28]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => mul_ln10_reg_187(30),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => temp_fu_58_reg(30),
      O => \temp_fu_58[28]_i_3_n_0\
    );
\temp_fu_58[28]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => mul_ln10_reg_187(29),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => temp_fu_58_reg(29),
      O => \temp_fu_58[28]_i_4_n_0\
    );
\temp_fu_58[28]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => mul_ln10_reg_187(28),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => temp_fu_58_reg(28),
      O => \temp_fu_58[28]_i_5_n_0\
    );
\temp_fu_58[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => mul_ln10_reg_187(7),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => temp_fu_58_reg(7),
      O => \temp_fu_58[4]_i_2_n_0\
    );
\temp_fu_58[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => mul_ln10_reg_187(6),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => temp_fu_58_reg(6),
      O => \temp_fu_58[4]_i_3_n_0\
    );
\temp_fu_58[4]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => mul_ln10_reg_187(5),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => temp_fu_58_reg(5),
      O => \temp_fu_58[4]_i_4_n_0\
    );
\temp_fu_58[4]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => mul_ln10_reg_187(4),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => temp_fu_58_reg(4),
      O => \temp_fu_58[4]_i_5_n_0\
    );
\temp_fu_58[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => mul_ln10_reg_187(11),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => temp_fu_58_reg(11),
      O => \temp_fu_58[8]_i_2_n_0\
    );
\temp_fu_58[8]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => mul_ln10_reg_187(10),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => temp_fu_58_reg(10),
      O => \temp_fu_58[8]_i_3_n_0\
    );
\temp_fu_58[8]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => mul_ln10_reg_187(9),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => temp_fu_58_reg(9),
      O => \temp_fu_58[8]_i_4_n_0\
    );
\temp_fu_58[8]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => mul_ln10_reg_187(8),
      I1 => ap_enable_reg_pp0_iter4,
      I2 => temp_fu_58_reg(8),
      O => \temp_fu_58[8]_i_5_n_0\
    );
\temp_fu_58_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \temp_fu_58[0]_i_2_n_0\,
      Q => temp_fu_58_reg(0),
      R => ap_condition_151
    );
\temp_fu_58_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \temp_fu_58_reg[8]_i_1_n_5\,
      Q => temp_fu_58_reg(10),
      R => ap_condition_151
    );
\temp_fu_58_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \temp_fu_58_reg[8]_i_1_n_4\,
      Q => temp_fu_58_reg(11),
      R => ap_condition_151
    );
\temp_fu_58_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \temp_fu_58_reg[12]_i_1_n_7\,
      Q => temp_fu_58_reg(12),
      R => ap_condition_151
    );
\temp_fu_58_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \temp_fu_58_reg[8]_i_1_n_0\,
      CO(3) => \temp_fu_58_reg[12]_i_1_n_0\,
      CO(2) => \temp_fu_58_reg[12]_i_1_n_1\,
      CO(1) => \temp_fu_58_reg[12]_i_1_n_2\,
      CO(0) => \temp_fu_58_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => temp_fu_58_reg(15 downto 12),
      O(3) => \temp_fu_58_reg[12]_i_1_n_4\,
      O(2) => \temp_fu_58_reg[12]_i_1_n_5\,
      O(1) => \temp_fu_58_reg[12]_i_1_n_6\,
      O(0) => \temp_fu_58_reg[12]_i_1_n_7\,
      S(3) => \temp_fu_58[12]_i_2_n_0\,
      S(2) => \temp_fu_58[12]_i_3_n_0\,
      S(1) => \temp_fu_58[12]_i_4_n_0\,
      S(0) => \temp_fu_58[12]_i_5_n_0\
    );
\temp_fu_58_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \temp_fu_58_reg[12]_i_1_n_6\,
      Q => temp_fu_58_reg(13),
      R => ap_condition_151
    );
\temp_fu_58_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \temp_fu_58_reg[12]_i_1_n_5\,
      Q => temp_fu_58_reg(14),
      R => ap_condition_151
    );
\temp_fu_58_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \temp_fu_58_reg[12]_i_1_n_4\,
      Q => temp_fu_58_reg(15),
      R => ap_condition_151
    );
\temp_fu_58_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \temp_fu_58_reg[16]_i_1_n_7\,
      Q => temp_fu_58_reg(16),
      R => ap_condition_151
    );
\temp_fu_58_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \temp_fu_58_reg[12]_i_1_n_0\,
      CO(3) => \temp_fu_58_reg[16]_i_1_n_0\,
      CO(2) => \temp_fu_58_reg[16]_i_1_n_1\,
      CO(1) => \temp_fu_58_reg[16]_i_1_n_2\,
      CO(0) => \temp_fu_58_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => temp_fu_58_reg(19 downto 16),
      O(3) => \temp_fu_58_reg[16]_i_1_n_4\,
      O(2) => \temp_fu_58_reg[16]_i_1_n_5\,
      O(1) => \temp_fu_58_reg[16]_i_1_n_6\,
      O(0) => \temp_fu_58_reg[16]_i_1_n_7\,
      S(3) => \temp_fu_58[16]_i_2_n_0\,
      S(2) => \temp_fu_58[16]_i_3_n_0\,
      S(1) => \temp_fu_58[16]_i_4_n_0\,
      S(0) => \temp_fu_58[16]_i_5_n_0\
    );
\temp_fu_58_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \temp_fu_58_reg[16]_i_1_n_6\,
      Q => temp_fu_58_reg(17),
      R => ap_condition_151
    );
\temp_fu_58_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \temp_fu_58_reg[16]_i_1_n_5\,
      Q => temp_fu_58_reg(18),
      R => ap_condition_151
    );
\temp_fu_58_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \temp_fu_58_reg[16]_i_1_n_4\,
      Q => temp_fu_58_reg(19),
      R => ap_condition_151
    );
\temp_fu_58_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => control_s_axi_U_n_12,
      Q => temp_fu_58_reg(1),
      R => ap_condition_151
    );
\temp_fu_58_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \temp_fu_58_reg[20]_i_1_n_7\,
      Q => temp_fu_58_reg(20),
      R => ap_condition_151
    );
\temp_fu_58_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \temp_fu_58_reg[16]_i_1_n_0\,
      CO(3) => \temp_fu_58_reg[20]_i_1_n_0\,
      CO(2) => \temp_fu_58_reg[20]_i_1_n_1\,
      CO(1) => \temp_fu_58_reg[20]_i_1_n_2\,
      CO(0) => \temp_fu_58_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => temp_fu_58_reg(23 downto 20),
      O(3) => \temp_fu_58_reg[20]_i_1_n_4\,
      O(2) => \temp_fu_58_reg[20]_i_1_n_5\,
      O(1) => \temp_fu_58_reg[20]_i_1_n_6\,
      O(0) => \temp_fu_58_reg[20]_i_1_n_7\,
      S(3) => \temp_fu_58[20]_i_2_n_0\,
      S(2) => \temp_fu_58[20]_i_3_n_0\,
      S(1) => \temp_fu_58[20]_i_4_n_0\,
      S(0) => \temp_fu_58[20]_i_5_n_0\
    );
\temp_fu_58_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \temp_fu_58_reg[20]_i_1_n_6\,
      Q => temp_fu_58_reg(21),
      R => ap_condition_151
    );
\temp_fu_58_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \temp_fu_58_reg[20]_i_1_n_5\,
      Q => temp_fu_58_reg(22),
      R => ap_condition_151
    );
\temp_fu_58_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \temp_fu_58_reg[20]_i_1_n_4\,
      Q => temp_fu_58_reg(23),
      R => ap_condition_151
    );
\temp_fu_58_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \temp_fu_58_reg[24]_i_1_n_7\,
      Q => temp_fu_58_reg(24),
      R => ap_condition_151
    );
\temp_fu_58_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \temp_fu_58_reg[20]_i_1_n_0\,
      CO(3) => \temp_fu_58_reg[24]_i_1_n_0\,
      CO(2) => \temp_fu_58_reg[24]_i_1_n_1\,
      CO(1) => \temp_fu_58_reg[24]_i_1_n_2\,
      CO(0) => \temp_fu_58_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => temp_fu_58_reg(27 downto 24),
      O(3) => \temp_fu_58_reg[24]_i_1_n_4\,
      O(2) => \temp_fu_58_reg[24]_i_1_n_5\,
      O(1) => \temp_fu_58_reg[24]_i_1_n_6\,
      O(0) => \temp_fu_58_reg[24]_i_1_n_7\,
      S(3) => \temp_fu_58[24]_i_2_n_0\,
      S(2) => \temp_fu_58[24]_i_3_n_0\,
      S(1) => \temp_fu_58[24]_i_4_n_0\,
      S(0) => \temp_fu_58[24]_i_5_n_0\
    );
\temp_fu_58_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \temp_fu_58_reg[24]_i_1_n_6\,
      Q => temp_fu_58_reg(25),
      R => ap_condition_151
    );
\temp_fu_58_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \temp_fu_58_reg[24]_i_1_n_5\,
      Q => temp_fu_58_reg(26),
      R => ap_condition_151
    );
\temp_fu_58_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \temp_fu_58_reg[24]_i_1_n_4\,
      Q => temp_fu_58_reg(27),
      R => ap_condition_151
    );
\temp_fu_58_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \temp_fu_58_reg[28]_i_1_n_7\,
      Q => temp_fu_58_reg(28),
      R => ap_condition_151
    );
\temp_fu_58_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \temp_fu_58_reg[24]_i_1_n_0\,
      CO(3) => \NLW_temp_fu_58_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \temp_fu_58_reg[28]_i_1_n_1\,
      CO(1) => \temp_fu_58_reg[28]_i_1_n_2\,
      CO(0) => \temp_fu_58_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => temp_fu_58_reg(30 downto 28),
      O(3) => \temp_fu_58_reg[28]_i_1_n_4\,
      O(2) => \temp_fu_58_reg[28]_i_1_n_5\,
      O(1) => \temp_fu_58_reg[28]_i_1_n_6\,
      O(0) => \temp_fu_58_reg[28]_i_1_n_7\,
      S(3) => \temp_fu_58[28]_i_2_n_0\,
      S(2) => \temp_fu_58[28]_i_3_n_0\,
      S(1) => \temp_fu_58[28]_i_4_n_0\,
      S(0) => \temp_fu_58[28]_i_5_n_0\
    );
\temp_fu_58_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \temp_fu_58_reg[28]_i_1_n_6\,
      Q => temp_fu_58_reg(29),
      R => ap_condition_151
    );
\temp_fu_58_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => control_s_axi_U_n_11,
      Q => temp_fu_58_reg(2),
      R => ap_condition_151
    );
\temp_fu_58_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \temp_fu_58_reg[28]_i_1_n_5\,
      Q => temp_fu_58_reg(30),
      R => ap_condition_151
    );
\temp_fu_58_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \temp_fu_58_reg[28]_i_1_n_4\,
      Q => temp_fu_58_reg(31),
      R => ap_condition_151
    );
\temp_fu_58_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => control_s_axi_U_n_10,
      Q => temp_fu_58_reg(3),
      R => ap_condition_151
    );
\temp_fu_58_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \temp_fu_58_reg[4]_i_1_n_7\,
      Q => temp_fu_58_reg(4),
      R => ap_condition_151
    );
\temp_fu_58_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => control_s_axi_U_n_9,
      CO(3) => \temp_fu_58_reg[4]_i_1_n_0\,
      CO(2) => \temp_fu_58_reg[4]_i_1_n_1\,
      CO(1) => \temp_fu_58_reg[4]_i_1_n_2\,
      CO(0) => \temp_fu_58_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => temp_fu_58_reg(7 downto 4),
      O(3) => \temp_fu_58_reg[4]_i_1_n_4\,
      O(2) => \temp_fu_58_reg[4]_i_1_n_5\,
      O(1) => \temp_fu_58_reg[4]_i_1_n_6\,
      O(0) => \temp_fu_58_reg[4]_i_1_n_7\,
      S(3) => \temp_fu_58[4]_i_2_n_0\,
      S(2) => \temp_fu_58[4]_i_3_n_0\,
      S(1) => \temp_fu_58[4]_i_4_n_0\,
      S(0) => \temp_fu_58[4]_i_5_n_0\
    );
\temp_fu_58_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \temp_fu_58_reg[4]_i_1_n_6\,
      Q => temp_fu_58_reg(5),
      R => ap_condition_151
    );
\temp_fu_58_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \temp_fu_58_reg[4]_i_1_n_5\,
      Q => temp_fu_58_reg(6),
      R => ap_condition_151
    );
\temp_fu_58_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \temp_fu_58_reg[4]_i_1_n_4\,
      Q => temp_fu_58_reg(7),
      R => ap_condition_151
    );
\temp_fu_58_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \temp_fu_58_reg[8]_i_1_n_7\,
      Q => temp_fu_58_reg(8),
      R => ap_condition_151
    );
\temp_fu_58_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \temp_fu_58_reg[4]_i_1_n_0\,
      CO(3) => \temp_fu_58_reg[8]_i_1_n_0\,
      CO(2) => \temp_fu_58_reg[8]_i_1_n_1\,
      CO(1) => \temp_fu_58_reg[8]_i_1_n_2\,
      CO(0) => \temp_fu_58_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => temp_fu_58_reg(11 downto 8),
      O(3) => \temp_fu_58_reg[8]_i_1_n_4\,
      O(2) => \temp_fu_58_reg[8]_i_1_n_5\,
      O(1) => \temp_fu_58_reg[8]_i_1_n_6\,
      O(0) => \temp_fu_58_reg[8]_i_1_n_7\,
      S(3) => \temp_fu_58[8]_i_2_n_0\,
      S(2) => \temp_fu_58[8]_i_3_n_0\,
      S(1) => \temp_fu_58[8]_i_4_n_0\,
      S(0) => \temp_fu_58[8]_i_5_n_0\
    );
\temp_fu_58_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \temp_fu_58_reg[8]_i_1_n_6\,
      Q => temp_fu_58_reg(9),
      R => ap_condition_151
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_muladd_0_0 is
  port (
    s_axi_control_AWADDR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_control_AWVALID : in STD_LOGIC;
    s_axi_control_AWREADY : out STD_LOGIC;
    s_axi_control_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_control_WVALID : in STD_LOGIC;
    s_axi_control_WREADY : out STD_LOGIC;
    s_axi_control_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_control_BVALID : out STD_LOGIC;
    s_axi_control_BREADY : in STD_LOGIC;
    s_axi_control_ARADDR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_control_ARVALID : in STD_LOGIC;
    s_axi_control_ARREADY : out STD_LOGIC;
    s_axi_control_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_control_RVALID : out STD_LOGIC;
    s_axi_control_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_muladd_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_muladd_0_0 : entity is "design_1_muladd_0_0,muladd,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_muladd_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_muladd_0_0 : entity is "HLS";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_muladd_0_0 : entity is "muladd,Vivado 2022.2";
  attribute hls_module : string;
  attribute hls_module of design_1_muladd_0_0 : entity is "yes";
end design_1_muladd_0_0;

architecture STRUCTURE of design_1_muladd_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal NLW_inst_s_axi_control_BRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_s_axi_control_RRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_S_AXI_CONTROL_ADDR_WIDTH : integer;
  attribute C_S_AXI_CONTROL_ADDR_WIDTH of inst : label is 8;
  attribute C_S_AXI_CONTROL_DATA_WIDTH : integer;
  attribute C_S_AXI_CONTROL_DATA_WIDTH of inst : label is 32;
  attribute C_S_AXI_CONTROL_WSTRB_WIDTH : integer;
  attribute C_S_AXI_CONTROL_WSTRB_WIDTH of inst : label is 4;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of inst : label is 32;
  attribute C_S_AXI_WSTRB_WIDTH : integer;
  attribute C_S_AXI_WSTRB_WIDTH of inst : label is 4;
  attribute SDX_KERNEL : string;
  attribute SDX_KERNEL of inst : label is "true";
  attribute SDX_KERNEL_SYNTH_INST : string;
  attribute SDX_KERNEL_SYNTH_INST of inst : label is "inst";
  attribute SDX_KERNEL_TYPE : string;
  attribute SDX_KERNEL_TYPE of inst : label is "hls";
  attribute ap_ST_fsm_pp0_stage0 : string;
  attribute ap_ST_fsm_pp0_stage0 of inst : label is "1'b1";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_control, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_rst_n : signal is "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  attribute X_INTERFACE_PARAMETER of ap_rst_n : signal is "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of interrupt : signal is "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT";
  attribute X_INTERFACE_PARAMETER of interrupt : signal is "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute X_INTERFACE_INFO of s_axi_control_ARREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_control ARREADY";
  attribute X_INTERFACE_INFO of s_axi_control_ARVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_control ARVALID";
  attribute X_INTERFACE_INFO of s_axi_control_AWREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_control AWREADY";
  attribute X_INTERFACE_INFO of s_axi_control_AWVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_control AWVALID";
  attribute X_INTERFACE_INFO of s_axi_control_BREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_control BREADY";
  attribute X_INTERFACE_INFO of s_axi_control_BVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_control BVALID";
  attribute X_INTERFACE_INFO of s_axi_control_RREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_control RREADY";
  attribute X_INTERFACE_PARAMETER of s_axi_control_RREADY : signal is "XIL_INTERFACENAME s_axi_control, ADDR_WIDTH 8, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_control_RVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_control RVALID";
  attribute X_INTERFACE_INFO of s_axi_control_WREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_control WREADY";
  attribute X_INTERFACE_INFO of s_axi_control_WVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_control WVALID";
  attribute X_INTERFACE_INFO of s_axi_control_ARADDR : signal is "xilinx.com:interface:aximm:1.0 s_axi_control ARADDR";
  attribute X_INTERFACE_INFO of s_axi_control_AWADDR : signal is "xilinx.com:interface:aximm:1.0 s_axi_control AWADDR";
  attribute X_INTERFACE_INFO of s_axi_control_BRESP : signal is "xilinx.com:interface:aximm:1.0 s_axi_control BRESP";
  attribute X_INTERFACE_INFO of s_axi_control_RDATA : signal is "xilinx.com:interface:aximm:1.0 s_axi_control RDATA";
  attribute X_INTERFACE_INFO of s_axi_control_RRESP : signal is "xilinx.com:interface:aximm:1.0 s_axi_control RRESP";
  attribute X_INTERFACE_INFO of s_axi_control_WDATA : signal is "xilinx.com:interface:aximm:1.0 s_axi_control WDATA";
  attribute X_INTERFACE_INFO of s_axi_control_WSTRB : signal is "xilinx.com:interface:aximm:1.0 s_axi_control WSTRB";
begin
  s_axi_control_BRESP(1) <= \<const0>\;
  s_axi_control_BRESP(0) <= \<const0>\;
  s_axi_control_RRESP(1) <= \<const0>\;
  s_axi_control_RRESP(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_muladd_0_0_muladd
     port map (
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      interrupt => interrupt,
      s_axi_control_ARADDR(7 downto 0) => s_axi_control_ARADDR(7 downto 0),
      s_axi_control_ARREADY => s_axi_control_ARREADY,
      s_axi_control_ARVALID => s_axi_control_ARVALID,
      s_axi_control_AWADDR(7 downto 0) => s_axi_control_AWADDR(7 downto 0),
      s_axi_control_AWREADY => s_axi_control_AWREADY,
      s_axi_control_AWVALID => s_axi_control_AWVALID,
      s_axi_control_BREADY => s_axi_control_BREADY,
      s_axi_control_BRESP(1 downto 0) => NLW_inst_s_axi_control_BRESP_UNCONNECTED(1 downto 0),
      s_axi_control_BVALID => s_axi_control_BVALID,
      s_axi_control_RDATA(31 downto 0) => s_axi_control_RDATA(31 downto 0),
      s_axi_control_RREADY => s_axi_control_RREADY,
      s_axi_control_RRESP(1 downto 0) => NLW_inst_s_axi_control_RRESP_UNCONNECTED(1 downto 0),
      s_axi_control_RVALID => s_axi_control_RVALID,
      s_axi_control_WDATA(31 downto 0) => s_axi_control_WDATA(31 downto 0),
      s_axi_control_WREADY => s_axi_control_WREADY,
      s_axi_control_WSTRB(3 downto 0) => s_axi_control_WSTRB(3 downto 0),
      s_axi_control_WVALID => s_axi_control_WVALID
    );
end STRUCTURE;
