############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
## Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
############################################################
open_project 0-LED_on
set_top led_on
add_files 0-LED_on/led_out.cpp
open_solution "solution1" -flow_target vivado
set_part {xc7z010-clg400-1}
create_clock -period 10 -name default
config_export -format sysgen -output C:/OneDrive/Desktop/HLS-Tutorial/Exercise/0-LED_on -rtl verilog
source "./0-LED_on/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl verilog -format sysgen -output C:/OneDrive/Desktop/HLS-Tutorial/Exercise/0-LED_on
