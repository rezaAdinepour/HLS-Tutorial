// ==============================================================
// Generated by Vitis HLS v2023.2
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="boolean_expression_boolean_expression,hls_ip_2023_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xcvu11p-flga2577-1-e,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=0.148000,HLS_SYN_LAT=0,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=0,HLS_SYN_LUT=10,HLS_VERSION=2023_2}" *)

module boolean_expression (
        a,
        b,
        c,
        e,
        g,
        f,
        h,
        h_ap_vld
);


input  [0:0] a;
input  [0:0] b;
input  [0:0] c;
input  [0:0] e;
input  [0:0] g;
input  [0:0] f;
output  [0:0] h;
output   h_ap_vld;

wire   [0:0] and_ln20_1_fu_87_p2;
wire   [0:0] and_ln20_fu_81_p2;
wire   [0:0] or_ln20_fu_93_p2;
wire   [0:0] xor_ln20_fu_99_p2;

assign and_ln20_1_fu_87_p2 = (g & f);

assign and_ln20_fu_81_p2 = (c & b);

assign or_ln20_fu_93_p2 = (e | and_ln20_1_fu_87_p2);

assign xor_ln20_fu_99_p2 = (or_ln20_fu_93_p2 ^ and_ln20_fu_81_p2);

assign h = (xor_ln20_fu_99_p2 | a);

assign h_ap_vld = 1'b1;

endmodule //boolean_expression
