-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity cnn_top_cnn_top_Pipeline_VITIS_LOOP_2835_1_VITIS_LOOP_2838_2_bias2_ROM_AUTO_1R is 
    generic(
             DataWidth     : integer := 32; 
             AddressWidth     : integer := 5; 
             AddressRange    : integer := 32
    ); 
    port (
 
          address0        : in std_logic_vector(AddressWidth-1 downto 0); 
          ce0             : in std_logic; 
          q0              : out std_logic_vector(DataWidth-1 downto 0);

          reset               : in std_logic;
          clk                 : in std_logic
    ); 
end entity; 


architecture rtl of cnn_top_cnn_top_Pipeline_VITIS_LOOP_2835_1_VITIS_LOOP_2838_2_bias2_ROM_AUTO_1R is 
 
signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 

type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 

signal mem0 : mem_array := (
    0 => "00111101010100000111110010000101", 1 => "00111101010000100010011010000001", 2 => "10111101011101101111110100100010", 3 => "10111101000000100100000010111000", 
    4 => "10111101101101100100010110100010", 5 => "00111011101101111000000000110100", 6 => "00111100111111111001011100100100", 7 => "10111011001101111000000000110100", 
    8 => "00111110000000011000100100110111", 9 => "10111011101110101100011100010001", 10 => "00111101101001010100011000001011", 11 => "10111101101101101110001011101011", 
    12 => "10111101010010011110111011001100", 13 => "00111101001111111011000101011011", 14 => "10111011110100011011011100010111", 15 => "00111101001101010111001111101011", 
    16 => "10111011001111100000110111101101", 17 => "10111011111101011100001010001111", 18 => "00111101000011101000101001110010", 19 => "10111101101010111101001111000011", 
    20 => "10111100101100011100010000110011", 21 => "00111101001110011111010101011010", 22 => "10111101000101000100011001110100", 23 => "10111100011111111001011100100100", 
    24 => "10111101001100010101101101010111", 25 => "00111101001010101100110110011111", 26 => "10111101010101000010110000111101", 27 => "00111101001001010111101001111000", 
    28 => "10111101001001000011111111100110", 29 => "00111100111010001010011100011110", 30 => "00111101101011110001101010100000", 31 => "00111101000001011000011110010100");



begin 

 
memory_access_guard_0: process (address0) 
begin
      address0_tmp <= address0;
--synthesis translate_off
      if (CONV_INTEGER(address0) > AddressRange-1) then
           address0_tmp <= (others => '0');
      else 
           address0_tmp <= address0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
 
        if (ce0 = '1') then  
            q0 <= mem0(CONV_INTEGER(address0_tmp)); 
        end if;

end if;
end process;

end rtl;

