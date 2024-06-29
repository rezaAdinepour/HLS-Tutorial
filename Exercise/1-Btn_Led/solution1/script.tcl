############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
## Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
############################################################
open_project 1-Btn_Led
set_top btn_led
add_files 1-Btn_Led/src/main.cpp
open_solution "solution1" -flow_target vivado
set_part {xcvu11p-flga2577-1-e}
create_clock -period 10 -name default
config_export -format sysgen
#source "./1-Btn_Led/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl verilog -format sysgen
