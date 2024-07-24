// ==============================================================
// Generated by Vitis HLS v2023.2
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="fulladder_4x_fulladder_4x,hls_ip_2023_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xcvu11p-flga2577-1-e,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=0.592000,HLS_SYN_LAT=0,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=0,HLS_SYN_LUT=40,HLS_VERSION=2023_2}" *)

module fulladder_4x (
        a0,
        a1,
        a2,
        a3,
        b0,
        b1,
        b2,
        b3,
        s0,
        s1,
        s2,
        s3,
        cout
);


input  [0:0] a0;
input  [0:0] a1;
input  [0:0] a2;
input  [0:0] a3;
input  [0:0] b0;
input  [0:0] b1;
input  [0:0] b2;
input  [0:0] b3;
output  [0:0] s0;
output  [0:0] s1;
output  [0:0] s2;
output  [0:0] s3;
output  [0:0] cout;

wire   [0:0] c0_fu_138_p2;
wire   [0:0] xor_ln12_1_fu_144_p2;
wire   [0:0] or_ln13_fu_163_p2;
wire   [0:0] and_ln13_fu_157_p2;
wire   [0:0] and_ln13_1_fu_169_p2;
wire   [0:0] c1_fu_175_p2;
wire   [0:0] xor_ln12_3_fu_181_p2;
wire   [0:0] or_ln13_1_fu_200_p2;
wire   [0:0] and_ln13_2_fu_194_p2;
wire   [0:0] and_ln13_3_fu_206_p2;
wire   [0:0] c2_fu_212_p2;
wire   [0:0] xor_ln12_5_fu_218_p2;
wire   [0:0] or_ln13_2_fu_237_p2;
wire   [0:0] and_ln13_4_fu_231_p2;
wire   [0:0] and_ln13_5_fu_243_p2;

assign and_ln13_1_fu_169_p2 = (or_ln13_fu_163_p2 & c0_fu_138_p2);

assign and_ln13_2_fu_194_p2 = (b2 & a2);

assign and_ln13_3_fu_206_p2 = (or_ln13_1_fu_200_p2 & c1_fu_175_p2);

assign and_ln13_4_fu_231_p2 = (b3 & a3);

assign and_ln13_5_fu_243_p2 = (or_ln13_2_fu_237_p2 & c2_fu_212_p2);

assign and_ln13_fu_157_p2 = (b1 & a1);

assign c0_fu_138_p2 = (b0 & a0);

assign c1_fu_175_p2 = (and_ln13_fu_157_p2 | and_ln13_1_fu_169_p2);

assign c2_fu_212_p2 = (and_ln13_3_fu_206_p2 | and_ln13_2_fu_194_p2);

assign or_ln13_1_fu_200_p2 = (b2 | a2);

assign or_ln13_2_fu_237_p2 = (b3 | a3);

assign or_ln13_fu_163_p2 = (b1 | a1);

assign xor_ln12_1_fu_144_p2 = (c0_fu_138_p2 ^ b1);

assign xor_ln12_3_fu_181_p2 = (c1_fu_175_p2 ^ b2);

assign xor_ln12_5_fu_218_p2 = (c2_fu_212_p2 ^ b3);

assign cout = (and_ln13_5_fu_243_p2 | and_ln13_4_fu_231_p2);

assign s0 = (b0 ^ a0);

assign s1 = (xor_ln12_1_fu_144_p2 ^ a1);

assign s2 = (xor_ln12_3_fu_181_p2 ^ a2);

assign s3 = (xor_ln12_5_fu_218_p2 ^ a3);

endmodule //fulladder_4x
