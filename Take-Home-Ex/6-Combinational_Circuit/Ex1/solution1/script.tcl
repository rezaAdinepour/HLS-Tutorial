############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
## Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
############################################################
open_project Ex1
set_top boolean_expression
add_files Ex1/src/boolean_expression.cpp
open_solution "solution1" -flow_target vivado
set_part {xcvu11p-flga2577-1-e}
create_clock -period 10 -name default
#source "./Ex1/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -format ip_catalog