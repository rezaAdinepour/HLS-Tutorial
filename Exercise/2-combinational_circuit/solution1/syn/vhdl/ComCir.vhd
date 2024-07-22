-- ==============================================================
-- Generated by Vitis HLS v2023.2
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- ==============================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ComCir is
port (
    a : IN STD_LOGIC_VECTOR (0 downto 0);
    b : IN STD_LOGIC_VECTOR (0 downto 0);
    c : IN STD_LOGIC_VECTOR (0 downto 0);
    d : OUT STD_LOGIC_VECTOR (0 downto 0) );
end;


architecture behav of ComCir is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "ComCir_ComCir,hls_ip_2023_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xcvu11p-flga2577-1-e,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=0.148000,HLS_SYN_LAT=0,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=0,HLS_SYN_LUT=6,HLS_VERSION=2023_2}";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';

    signal and_ln11_fu_57_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln11_fu_63_p2 : STD_LOGIC_VECTOR (0 downto 0);


begin



    and_ln11_fu_57_p2 <= (b and a);
    d <= (xor_ln11_fu_63_p2 or and_ln11_fu_57_p2);
    xor_ln11_fu_63_p2 <= (c xor ap_const_lv1_1);
end behav;