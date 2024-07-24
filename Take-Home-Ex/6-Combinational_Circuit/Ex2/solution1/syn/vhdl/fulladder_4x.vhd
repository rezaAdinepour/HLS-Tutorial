-- ==============================================================
-- Generated by Vitis HLS v2023.2
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- ==============================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity fulladder_4x is
port (
    a0 : IN STD_LOGIC_VECTOR (0 downto 0);
    a1 : IN STD_LOGIC_VECTOR (0 downto 0);
    a2 : IN STD_LOGIC_VECTOR (0 downto 0);
    a3 : IN STD_LOGIC_VECTOR (0 downto 0);
    b0 : IN STD_LOGIC_VECTOR (0 downto 0);
    b1 : IN STD_LOGIC_VECTOR (0 downto 0);
    b2 : IN STD_LOGIC_VECTOR (0 downto 0);
    b3 : IN STD_LOGIC_VECTOR (0 downto 0);
    s0 : OUT STD_LOGIC_VECTOR (0 downto 0);
    s1 : OUT STD_LOGIC_VECTOR (0 downto 0);
    s2 : OUT STD_LOGIC_VECTOR (0 downto 0);
    s3 : OUT STD_LOGIC_VECTOR (0 downto 0);
    cout : OUT STD_LOGIC_VECTOR (0 downto 0) );
end;


architecture behav of fulladder_4x is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "fulladder_4x_fulladder_4x,hls_ip_2023_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xcvu11p-flga2577-1-e,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=0.592000,HLS_SYN_LAT=0,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=0,HLS_SYN_LUT=40,HLS_VERSION=2023_2}";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';

    signal c0_fu_138_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln12_1_fu_144_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln13_fu_163_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln13_fu_157_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln13_1_fu_169_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal c1_fu_175_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln12_3_fu_181_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln13_1_fu_200_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln13_2_fu_194_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln13_3_fu_206_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal c2_fu_212_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln12_5_fu_218_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln13_2_fu_237_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln13_4_fu_231_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln13_5_fu_243_p2 : STD_LOGIC_VECTOR (0 downto 0);


begin



    and_ln13_1_fu_169_p2 <= (or_ln13_fu_163_p2 and c0_fu_138_p2);
    and_ln13_2_fu_194_p2 <= (b2 and a2);
    and_ln13_3_fu_206_p2 <= (or_ln13_1_fu_200_p2 and c1_fu_175_p2);
    and_ln13_4_fu_231_p2 <= (b3 and a3);
    and_ln13_5_fu_243_p2 <= (or_ln13_2_fu_237_p2 and c2_fu_212_p2);
    and_ln13_fu_157_p2 <= (b1 and a1);
    c0_fu_138_p2 <= (b0 and a0);
    c1_fu_175_p2 <= (and_ln13_fu_157_p2 or and_ln13_1_fu_169_p2);
    c2_fu_212_p2 <= (and_ln13_3_fu_206_p2 or and_ln13_2_fu_194_p2);
    cout <= (and_ln13_5_fu_243_p2 or and_ln13_4_fu_231_p2);
    or_ln13_1_fu_200_p2 <= (b2 or a2);
    or_ln13_2_fu_237_p2 <= (b3 or a3);
    or_ln13_fu_163_p2 <= (b1 or a1);
    s0 <= (b0 xor a0);
    s1 <= (xor_ln12_1_fu_144_p2 xor a1);
    s2 <= (xor_ln12_3_fu_181_p2 xor a2);
    s3 <= (xor_ln12_5_fu_218_p2 xor a3);
    xor_ln12_1_fu_144_p2 <= (c0_fu_138_p2 xor b1);
    xor_ln12_3_fu_181_p2 <= (c1_fu_175_p2 xor b2);
    xor_ln12_5_fu_218_p2 <= (c2_fu_212_p2 xor b3);
end behav;
