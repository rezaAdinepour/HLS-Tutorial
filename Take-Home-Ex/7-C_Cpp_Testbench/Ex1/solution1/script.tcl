############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
## Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
############################################################
open_project Ex1
set_top trafic_light_controller
add_files Ex1/src/trafic_light_controller.cpp
add_files Ex1/src/trafic_light_controller.h
add_files -tb Ex1/src/tb_trafic_light_controller.cpp
add_files -tb Ex1/src/tb_trafic_light_controller.h
open_solution "solution1" -flow_target vivado
set_part {xcvu11p-flga2577-1-e}
create_clock -period 10 -name default
#source "./Ex1/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog