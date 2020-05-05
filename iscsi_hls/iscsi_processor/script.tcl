############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project iscsi_hls
set_top iscsi_interface
add_files iscsi_hls/iscsi_processor/src/data_type.hpp
add_files iscsi_hls/iscsi_processor/src/data_type_pdu.hpp
add_files iscsi_hls/iscsi_processor/src/data_type_primitives.hpp
add_files iscsi_hls/iscsi_processor/src/iscsi.hpp
add_files iscsi_hls/iscsi_processor/src/iscsi_connection.cpp
add_files iscsi_hls/iscsi_processor/src/iscsi_connection.hpp
add_files iscsi_hls/iscsi_processor/src/iscsi_connection_parameter.cpp
add_files iscsi_hls/iscsi_processor/src/iscsi_connection_parameter.hpp
add_files iscsi_hls/iscsi_processor/src/iscsi_pdu/iscsi_data_in.cpp
add_files iscsi_hls/iscsi_processor/src/iscsi_pdu/iscsi_data_in.hpp
add_files iscsi_hls/iscsi_processor/src/iscsi_pdu/iscsi_login.cpp
add_files iscsi_hls/iscsi_processor/src/iscsi_pdu/iscsi_login.hpp
add_files iscsi_hls/iscsi_processor/src/iscsi_pdu/iscsi_logout.hpp
add_files iscsi_hls/iscsi_processor/src/iscsi_pdu/iscsi_nop_out.cpp
add_files iscsi_hls/iscsi_processor/src/iscsi_pdu/iscsi_nop_out.hpp
add_files iscsi_hls/iscsi_processor/src/iscsi_pdu/iscsi_request.hpp
add_files iscsi_hls/iscsi_processor/src/iscsi_requests.hpp
add_files iscsi_hls/iscsi_processor/src/iscsi_pdu/iscsi_scsi_cmd.cpp
add_files iscsi_hls/iscsi_processor/src/iscsi_pdu/iscsi_scsi_cmd.hpp
add_files iscsi_hls/iscsi_processor/src/iscsi_session.cpp
add_files iscsi_hls/iscsi_processor/src/iscsi_session.hpp
add_files iscsi_hls/iscsi_processor/src/iscsi_target.hpp
add_files iscsi_hls/iscsi_processor/src/iscsi_pdu/iscsi_text.cpp
add_files iscsi_hls/iscsi_processor/src/iscsi_pdu/iscsi_text.hpp
add_files iscsi_hls/iscsi_processor/src/iscsi_top_level.cpp
add_files iscsi_hls/iscsi_processor/src/iscsi_top_level.hpp
add_files -tb iscsi_hls/iscsi_processor/test/discovery_in.txt -cflags "-Wno-unknown-pragmas"
add_files -tb iscsi_hls/iscsi_processor/test/iscsi_processor_tb.cpp -cflags "-Wno-unknown-pragmas"
open_solution "iscsi_processor"
set_part {xc7z020-clg484-1} -tool vivado
create_clock -period 10 -name default
config_export -format ip_catalog -rtl verilog
#source "./iscsi_hls/iscsi_processor/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -flow impl -rtl verilog -format ip_catalog
