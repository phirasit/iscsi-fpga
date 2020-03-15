vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_5
vlib riviera/processing_system7_vip_v1_0_7
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_13
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/interrupt_control_v3_1_4
vlib riviera/axi_gpio_v2_0_21
vlib riviera/lib_pkg_v1_0_2
vlib riviera/fifo_generator_v13_2_4
vlib riviera/lib_fifo_v1_0_13
vlib riviera/axi_fifo_mm_s_v4_2_1
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/axi_register_slice_v2_1_19
vlib riviera/axi_data_fifo_v2_1_18
vlib riviera/axi_crossbar_v2_1_20
vlib riviera/axi_protocol_converter_v2_1_19

vmap xilinx_vip riviera/xilinx_vip
vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_5 riviera/axi_vip_v1_1_5
vmap processing_system7_vip_v1_0_7 riviera/processing_system7_vip_v1_0_7
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 riviera/proc_sys_reset_v5_0_13
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap interrupt_control_v3_1_4 riviera/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_21 riviera/axi_gpio_v2_0_21
vmap lib_pkg_v1_0_2 riviera/lib_pkg_v1_0_2
vmap fifo_generator_v13_2_4 riviera/fifo_generator_v13_2_4
vmap lib_fifo_v1_0_13 riviera/lib_fifo_v1_0_13
vmap axi_fifo_mm_s_v4_2_1 riviera/axi_fifo_mm_s_v4_2_1
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_19 riviera/axi_register_slice_v2_1_19
vmap axi_data_fifo_v2_1_18 riviera/axi_data_fifo_v2_1_18
vmap axi_crossbar_v2_1_20 riviera/axi_crossbar_v2_1_20
vmap axi_protocol_converter_v2_1_19 riviera/axi_protocol_converter_v2_1_19

vlog -work xilinx_vip  -sv2k12 "+incdir+/opt/vivado/Vivado/2019.1/data/xilinx_vip/include" \
"/opt/vivado/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/opt/vivado/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/opt/vivado/Vivado/2019.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/opt/vivado/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/opt/vivado/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/opt/vivado/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/opt/vivado/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/opt/vivado/Vivado/2019.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/opt/vivado/Vivado/2019.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+/opt/vivado/Vivado/2019.1/data/xilinx_vip/include" \
"/opt/vivado/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/opt/vivado/Vivado/2019.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/opt/vivado/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"/opt/vivado/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+/opt/vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_5  -sv2k12 "+incdir+../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+/opt/vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/d4a8/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_7  -sv2k12 "+incdir+../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+/opt/vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/8c62/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+/opt/vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_rst_ps7_0_50M_0/sim/design_1_rst_ps7_0_50M_0.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -93 \
"../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_21 -93 \
"../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/9c6e/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_gpio_0_1/sim/design_1_axi_gpio_0_1.vhd" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_4  -v2k5 "+incdir+../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+/opt/vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/1f5a/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_4 -93 \
"../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_4  -v2k5 "+incdir+../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+/opt/vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_13 -93 \
"../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/4dac/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work axi_fifo_mm_s_v4_2_1 -93 \
"../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/fd10/hdl/axi_fifo_mm_s_v4_2_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_fifo_mm_s_0_0/sim/design_1_axi_fifo_mm_s_0_0.vhd" \
"../../../bd/design_1/ip/design_1_axi_fifo_mm_s_1_0/sim/design_1_axi_fifo_mm_s_1_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+/opt/vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_19  -v2k5 "+incdir+../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+/opt/vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/4d88/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_18  -v2k5 "+incdir+../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+/opt/vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/5b9c/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_20  -v2k5 "+incdir+../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+/opt/vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/ace7/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+/opt/vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xbar_2/sim/design_1_xbar_2.v" \
"../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/4b06/hdl/verilog/iscsi_interface_srem_32s_5ns_6_36_seq_1.v" \
"../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/4b06/hdl/verilog/iscsi_login.v" \
"../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/4b06/hdl/verilog/iscsi_login_buffer_r.v" \
"../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/4b06/hdl/verilog/iscsi_login_header_buffer_V.v" \
"../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/4b06/hdl/verilog/iscsi_login_instance_data.v" \
"../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/4b06/hdl/verilog/iscsi_login_p_str15.v" \
"../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/4b06/hdl/verilog/iscsi_login_p_str318.v" \
"../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/4b06/hdl/verilog/iscsi_login_p_str419.v" \
"../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/4b06/hdl/verilog/iscsi_login_p_str722.v" \
"../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/4b06/hdl/verilog/iscsi_login_p_str1126.v" \
"../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/4b06/hdl/verilog/iscsi_login_response_buffer_V.v" \
"../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/4b06/hdl/verilog/iscsi_nop_out.v" \
"../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/4b06/hdl/verilog/iscsi_text.v" \
"../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/4b06/hdl/verilog/iscsi_text_p_str14.v" \
"../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/4b06/hdl/verilog/iscsi_text_parameter_data.v" \
"../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/4b06/hdl/verilog/process_pdu.v" \
"../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/4b06/hdl/verilog/read_byte_array.v" \
"../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/4b06/hdl/verilog/read_byte_array_1.v" \
"../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/4b06/hdl/verilog/read_from_tcp.v" \
"../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/4b06/hdl/verilog/read_from_tcp_1.v" \
"../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/4b06/hdl/verilog/setup_session.v" \
"../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/4b06/hdl/verilog/setup_session_p_str1227.v" \
"../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/4b06/hdl/verilog/setup_session_p_str1328.v" \
"../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/4b06/hdl/verilog/update_value_bool.v" \
"../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/4b06/hdl/verilog/update_value_bool_1.v" \
"../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/4b06/hdl/verilog/update_value_bool_1_p_str8.v" \
"../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/4b06/hdl/verilog/update_value_bool_2.v" \
"../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/4b06/hdl/verilog/update_value_bool_2_p_str5.v" \
"../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/4b06/hdl/verilog/update_value_bool_3.v" \
"../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/4b06/hdl/verilog/update_value_bool_3_p_str4.v" \
"../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/4b06/hdl/verilog/update_value_bool_3_p_str13.v" \
"../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/4b06/hdl/verilog/update_value_bool_p_str9.v" \
"../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/4b06/hdl/verilog/update_value_int.v" \
"../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/4b06/hdl/verilog/update_value_int_1.v" \
"../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/4b06/hdl/verilog/update_value_int_1_p_str11.v" \
"../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/4b06/hdl/verilog/update_value_int_2.v" \
"../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/4b06/hdl/verilog/update_value_int_3.v" \
"../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/4b06/hdl/verilog/update_value_int_4.v" \
"../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/4b06/hdl/verilog/update_value_int_4_p_str25.v" \
"../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/4b06/hdl/verilog/update_value_int_p_str12.v" \
"../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/4b06/hdl/verilog/update_values.v" \
"../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/4b06/hdl/verilog/update_values_p_str6.v" \
"../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/4b06/hdl/verilog/update_values_p_str7.v" \
"../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/4b06/hdl/verilog/update_values_p_str10.v" \
"../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/4b06/hdl/verilog/update_values_p_str36.v" \
"../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/4b06/hdl/verilog/write_byte_array.v" \
"../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/4b06/hdl/verilog/write_byte_array_1.v" \
"../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/4b06/hdl/verilog/write_byte_array_2.v" \
"../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/4b06/hdl/verilog/write_byte_array_2_authentication_respo.v" \
"../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/4b06/hdl/verilog/write_byte_array_3.v" \
"../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/4b06/hdl/verilog/write_byte_array_response_text.v" \
"../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/4b06/hdl/verilog/write_key_value_int.v" \
"../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/4b06/hdl/verilog/write_key_value_int_1.v" \
"../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/4b06/hdl/verilog/write_key_value_int_2.v" \
"../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/4b06/hdl/verilog/write_key_value_int_3.v" \
"../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/4b06/hdl/verilog/write_to_tcp.v" \
"../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/4b06/hdl/verilog/write_to_tcp_1.v" \
"../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/4b06/hdl/verilog/iscsi_interface.v" \
"../../../bd/design_1/ip/design_1_iscsi_interface_0_0/sim/design_1_iscsi_interface_0_0.v" \

vlog -work axi_protocol_converter_v2_1_19  -v2k5 "+incdir+../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+/opt/vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/c83a/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../iscsi_fpga.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+/opt/vivado/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

