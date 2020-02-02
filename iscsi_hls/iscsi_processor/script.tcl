############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project iscsi_hls
set_top iscsi_interface
add_files iscsi_hls/iscsi_processor/src/iscsi_top_level.cpp
add_files iscsi_hls/iscsi_processor/src/data_type.hpp
open_solution "iscsi_processor"
set_part {xc7z020-clg484-1} -tool vivado
create_clock -period 10 -name default
config_export -format ip_catalog -rtl verilog
#source "./iscsi_hls/iscsi_processor/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -flow impl -rtl verilog -format ip_catalog
