-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity cnn_top_conv2d_1_weight0_0_ROM_AUTO_1R is 
    generic(
             DataWidth     : integer := 32; 
             AddressWidth     : integer := 6; 
             AddressRange    : integer := 36
    ); 
    port (
 
          address0        : in std_logic_vector(AddressWidth-1 downto 0); 
          ce0             : in std_logic; 
          q0              : out std_logic_vector(DataWidth-1 downto 0);
 
          address1        : in std_logic_vector(AddressWidth-1 downto 0); 
          ce1             : in std_logic; 
          q1              : out std_logic_vector(DataWidth-1 downto 0);
 
          address2        : in std_logic_vector(AddressWidth-1 downto 0); 
          ce2             : in std_logic; 
          q2              : out std_logic_vector(DataWidth-1 downto 0);
 
          address3        : in std_logic_vector(AddressWidth-1 downto 0); 
          ce3             : in std_logic; 
          q3              : out std_logic_vector(DataWidth-1 downto 0);
 
          address4        : in std_logic_vector(AddressWidth-1 downto 0); 
          ce4             : in std_logic; 
          q4              : out std_logic_vector(DataWidth-1 downto 0);
 
          address5        : in std_logic_vector(AddressWidth-1 downto 0); 
          ce5             : in std_logic; 
          q5              : out std_logic_vector(DataWidth-1 downto 0);
 
          address6        : in std_logic_vector(AddressWidth-1 downto 0); 
          ce6             : in std_logic; 
          q6              : out std_logic_vector(DataWidth-1 downto 0);
 
          address7        : in std_logic_vector(AddressWidth-1 downto 0); 
          ce7             : in std_logic; 
          q7              : out std_logic_vector(DataWidth-1 downto 0);
 
          address8        : in std_logic_vector(AddressWidth-1 downto 0); 
          ce8             : in std_logic; 
          q8              : out std_logic_vector(DataWidth-1 downto 0);

          reset               : in std_logic;
          clk                 : in std_logic
    ); 
end entity; 


architecture rtl of cnn_top_conv2d_1_weight0_0_ROM_AUTO_1R is 
 
signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0);  
signal address1_tmp : std_logic_vector(AddressWidth-1 downto 0);  
signal address2_tmp : std_logic_vector(AddressWidth-1 downto 0);  
signal address3_tmp : std_logic_vector(AddressWidth-1 downto 0);  
signal address4_tmp : std_logic_vector(AddressWidth-1 downto 0);  
signal address5_tmp : std_logic_vector(AddressWidth-1 downto 0);  
signal address6_tmp : std_logic_vector(AddressWidth-1 downto 0);  
signal address7_tmp : std_logic_vector(AddressWidth-1 downto 0);  
signal address8_tmp : std_logic_vector(AddressWidth-1 downto 0); 

type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 

signal mem0 : mem_array := (
    0 => "00111111001001010000010010000001", 1 => "00111111000101111010111000010100", 2 => "10111110000100100001111111110011", 3 => "00111111001110001100011111100011", 
    4 => "00111110010110111111010010001000", 5 => "10111101000111111011111001110111", 6 => "00111111000110001110111100110101", 7 => "00111110011100011010100111111100", 
    8 => "10111110100111010001010011100100", 9 => "10111110100001011000011110010100", 10 => "00111111001011010011110000110110", 11 => "00111111010011101010010010101001", 
    12 => "00111110110000101101000011100101", 13 => "00111111000010000111100100111110", 14 => "00111110011100000110111101101001", 15 => "00111111001001100101001010111101", 
    16 => "00111110001110010010001110100011", 17 => "00111111000110011111010101011010", 18 => "00111110111110110110010001011010", 19 => "00111110000111111010010001000000", 
    20 => "10111111000100010111110000011100", 21 => "00111110111111111101100010101110", 22 => "00111101101110111001100011001000", 23 => "10111111001000010110100001110011", 
    24 => "00111110001111010000011111001000", 25 => "00111101101010011001001100001100", 26 => "10111111000100000001001110101001", 27 => "10111111001001010110000001000010", 
    28 => "10111111001000011010001101101110", 29 => "10111101110011110100000111110010", 30 => "10111110000101111100000110111110", 31 => "10111100111010110001110001000011", 
    32 => "00111101100000011010001101101110", 33 => "00111111001100010110000111100101", 34 => "00111110101110100000001001110101", 35 => "00111110110000101110101100011100");

signal mem1 : mem_array := (
    0 => "00111111001001010000010010000001", 1 => "00111111000101111010111000010100", 2 => "10111110000100100001111111110011", 3 => "00111111001110001100011111100011", 
    4 => "00111110010110111111010010001000", 5 => "10111101000111111011111001110111", 6 => "00111111000110001110111100110101", 7 => "00111110011100011010100111111100", 
    8 => "10111110100111010001010011100100", 9 => "10111110100001011000011110010100", 10 => "00111111001011010011110000110110", 11 => "00111111010011101010010010101001", 
    12 => "00111110110000101101000011100101", 13 => "00111111000010000111100100111110", 14 => "00111110011100000110111101101001", 15 => "00111111001001100101001010111101", 
    16 => "00111110001110010010001110100011", 17 => "00111111000110011111010101011010", 18 => "00111110111110110110010001011010", 19 => "00111110000111111010010001000000", 
    20 => "10111111000100010111110000011100", 21 => "00111110111111111101100010101110", 22 => "00111101101110111001100011001000", 23 => "10111111001000010110100001110011", 
    24 => "00111110001111010000011111001000", 25 => "00111101101010011001001100001100", 26 => "10111111000100000001001110101001", 27 => "10111111001001010110000001000010", 
    28 => "10111111001000011010001101101110", 29 => "10111101110011110100000111110010", 30 => "10111110000101111100000110111110", 31 => "10111100111010110001110001000011", 
    32 => "00111101100000011010001101101110", 33 => "00111111001100010110000111100101", 34 => "00111110101110100000001001110101", 35 => "00111110110000101110101100011100");

signal mem2 : mem_array := (
    0 => "00111111001001010000010010000001", 1 => "00111111000101111010111000010100", 2 => "10111110000100100001111111110011", 3 => "00111111001110001100011111100011", 
    4 => "00111110010110111111010010001000", 5 => "10111101000111111011111001110111", 6 => "00111111000110001110111100110101", 7 => "00111110011100011010100111111100", 
    8 => "10111110100111010001010011100100", 9 => "10111110100001011000011110010100", 10 => "00111111001011010011110000110110", 11 => "00111111010011101010010010101001", 
    12 => "00111110110000101101000011100101", 13 => "00111111000010000111100100111110", 14 => "00111110011100000110111101101001", 15 => "00111111001001100101001010111101", 
    16 => "00111110001110010010001110100011", 17 => "00111111000110011111010101011010", 18 => "00111110111110110110010001011010", 19 => "00111110000111111010010001000000", 
    20 => "10111111000100010111110000011100", 21 => "00111110111111111101100010101110", 22 => "00111101101110111001100011001000", 23 => "10111111001000010110100001110011", 
    24 => "00111110001111010000011111001000", 25 => "00111101101010011001001100001100", 26 => "10111111000100000001001110101001", 27 => "10111111001001010110000001000010", 
    28 => "10111111001000011010001101101110", 29 => "10111101110011110100000111110010", 30 => "10111110000101111100000110111110", 31 => "10111100111010110001110001000011", 
    32 => "00111101100000011010001101101110", 33 => "00111111001100010110000111100101", 34 => "00111110101110100000001001110101", 35 => "00111110110000101110101100011100");

signal mem3 : mem_array := (
    0 => "00111111001001010000010010000001", 1 => "00111111000101111010111000010100", 2 => "10111110000100100001111111110011", 3 => "00111111001110001100011111100011", 
    4 => "00111110010110111111010010001000", 5 => "10111101000111111011111001110111", 6 => "00111111000110001110111100110101", 7 => "00111110011100011010100111111100", 
    8 => "10111110100111010001010011100100", 9 => "10111110100001011000011110010100", 10 => "00111111001011010011110000110110", 11 => "00111111010011101010010010101001", 
    12 => "00111110110000101101000011100101", 13 => "00111111000010000111100100111110", 14 => "00111110011100000110111101101001", 15 => "00111111001001100101001010111101", 
    16 => "00111110001110010010001110100011", 17 => "00111111000110011111010101011010", 18 => "00111110111110110110010001011010", 19 => "00111110000111111010010001000000", 
    20 => "10111111000100010111110000011100", 21 => "00111110111111111101100010101110", 22 => "00111101101110111001100011001000", 23 => "10111111001000010110100001110011", 
    24 => "00111110001111010000011111001000", 25 => "00111101101010011001001100001100", 26 => "10111111000100000001001110101001", 27 => "10111111001001010110000001000010", 
    28 => "10111111001000011010001101101110", 29 => "10111101110011110100000111110010", 30 => "10111110000101111100000110111110", 31 => "10111100111010110001110001000011", 
    32 => "00111101100000011010001101101110", 33 => "00111111001100010110000111100101", 34 => "00111110101110100000001001110101", 35 => "00111110110000101110101100011100");

signal mem4 : mem_array := (
    0 => "00111111001001010000010010000001", 1 => "00111111000101111010111000010100", 2 => "10111110000100100001111111110011", 3 => "00111111001110001100011111100011", 
    4 => "00111110010110111111010010001000", 5 => "10111101000111111011111001110111", 6 => "00111111000110001110111100110101", 7 => "00111110011100011010100111111100", 
    8 => "10111110100111010001010011100100", 9 => "10111110100001011000011110010100", 10 => "00111111001011010011110000110110", 11 => "00111111010011101010010010101001", 
    12 => "00111110110000101101000011100101", 13 => "00111111000010000111100100111110", 14 => "00111110011100000110111101101001", 15 => "00111111001001100101001010111101", 
    16 => "00111110001110010010001110100011", 17 => "00111111000110011111010101011010", 18 => "00111110111110110110010001011010", 19 => "00111110000111111010010001000000", 
    20 => "10111111000100010111110000011100", 21 => "00111110111111111101100010101110", 22 => "00111101101110111001100011001000", 23 => "10111111001000010110100001110011", 
    24 => "00111110001111010000011111001000", 25 => "00111101101010011001001100001100", 26 => "10111111000100000001001110101001", 27 => "10111111001001010110000001000010", 
    28 => "10111111001000011010001101101110", 29 => "10111101110011110100000111110010", 30 => "10111110000101111100000110111110", 31 => "10111100111010110001110001000011", 
    32 => "00111101100000011010001101101110", 33 => "00111111001100010110000111100101", 34 => "00111110101110100000001001110101", 35 => "00111110110000101110101100011100");



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
 
memory_access_guard_1: process (address1) 
begin
      address1_tmp <= address1;
--synthesis translate_off
      if (CONV_INTEGER(address1) > AddressRange-1) then
           address1_tmp <= (others => '0');
      else 
           address1_tmp <= address1;
      end if;
--synthesis translate_on
end process;
 
memory_access_guard_2: process (address2) 
begin
      address2_tmp <= address2;
--synthesis translate_off
      if (CONV_INTEGER(address2) > AddressRange-1) then
           address2_tmp <= (others => '0');
      else 
           address2_tmp <= address2;
      end if;
--synthesis translate_on
end process;
 
memory_access_guard_3: process (address3) 
begin
      address3_tmp <= address3;
--synthesis translate_off
      if (CONV_INTEGER(address3) > AddressRange-1) then
           address3_tmp <= (others => '0');
      else 
           address3_tmp <= address3;
      end if;
--synthesis translate_on
end process;
 
memory_access_guard_4: process (address4) 
begin
      address4_tmp <= address4;
--synthesis translate_off
      if (CONV_INTEGER(address4) > AddressRange-1) then
           address4_tmp <= (others => '0');
      else 
           address4_tmp <= address4;
      end if;
--synthesis translate_on
end process;
 
memory_access_guard_5: process (address5) 
begin
      address5_tmp <= address5;
--synthesis translate_off
      if (CONV_INTEGER(address5) > AddressRange-1) then
           address5_tmp <= (others => '0');
      else 
           address5_tmp <= address5;
      end if;
--synthesis translate_on
end process;
 
memory_access_guard_6: process (address6) 
begin
      address6_tmp <= address6;
--synthesis translate_off
      if (CONV_INTEGER(address6) > AddressRange-1) then
           address6_tmp <= (others => '0');
      else 
           address6_tmp <= address6;
      end if;
--synthesis translate_on
end process;
 
memory_access_guard_7: process (address7) 
begin
      address7_tmp <= address7;
--synthesis translate_off
      if (CONV_INTEGER(address7) > AddressRange-1) then
           address7_tmp <= (others => '0');
      else 
           address7_tmp <= address7;
      end if;
--synthesis translate_on
end process;
 
memory_access_guard_8: process (address8) 
begin
      address8_tmp <= address8;
--synthesis translate_off
      if (CONV_INTEGER(address8) > AddressRange-1) then
           address8_tmp <= (others => '0');
      else 
           address8_tmp <= address8;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
 
        if (ce0 = '1') then  
            q0 <= mem0(CONV_INTEGER(address0_tmp)); 
        end if;
 
        if (ce1 = '1') then  
            q1 <= mem0(CONV_INTEGER(address1_tmp)); 
        end if;
 
        if (ce2 = '1') then  
            q2 <= mem1(CONV_INTEGER(address2_tmp)); 
        end if;
 
        if (ce3 = '1') then  
            q3 <= mem1(CONV_INTEGER(address3_tmp)); 
        end if;
 
        if (ce4 = '1') then  
            q4 <= mem2(CONV_INTEGER(address4_tmp)); 
        end if;
 
        if (ce5 = '1') then  
            q5 <= mem2(CONV_INTEGER(address5_tmp)); 
        end if;
 
        if (ce6 = '1') then  
            q6 <= mem3(CONV_INTEGER(address6_tmp)); 
        end if;
 
        if (ce7 = '1') then  
            q7 <= mem3(CONV_INTEGER(address7_tmp)); 
        end if;
 
        if (ce8 = '1') then  
            q8 <= mem4(CONV_INTEGER(address8_tmp)); 
        end if;

end if;
end process;

end rtl;

