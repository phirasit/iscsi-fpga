-makelib xcelium_lib/xilinx_vip -sv \
  "/opt/vivado/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "/opt/vivado/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "/opt/vivado/Vivado/2019.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "/opt/vivado/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "/opt/vivado/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "/opt/vivado/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "/opt/vivado/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "/opt/vivado/Vivado/2019.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "/opt/vivado/Vivado/2019.1/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "/opt/vivado/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "/opt/vivado/Vivado/2019.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "/opt/vivado/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "/opt/vivado/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../san_adapter_fpga.srcs/sources_1/bd/Zynq7/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_5 -sv \
  "../../../../san_adapter_fpga.srcs/sources_1/bd/Zynq7/ipshared/d4a8/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/processing_system7_vip_v1_0_7 -sv \
  "../../../../san_adapter_fpga.srcs/sources_1/bd/Zynq7/ipshared/8c62/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/Zynq7/ip/Zynq7_processing_system7_0_1/sim/Zynq7_processing_system7_0_1.v" \
-endlib
-makelib xcelium_lib/lib_pkg_v1_0_2 \
  "../../../../san_adapter_fpga.srcs/sources_1/bd/Zynq7/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_4 \
  "../../../../san_adapter_fpga.srcs/sources_1/bd/Zynq7/ipshared/1f5a/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_4 \
  "../../../../san_adapter_fpga.srcs/sources_1/bd/Zynq7/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_4 \
  "../../../../san_adapter_fpga.srcs/sources_1/bd/Zynq7/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/lib_fifo_v1_0_13 \
  "../../../../san_adapter_fpga.srcs/sources_1/bd/Zynq7/ipshared/4dac/hdl/lib_fifo_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_srl_fifo_v1_0_2 \
  "../../../../san_adapter_fpga.srcs/sources_1/bd/Zynq7/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../san_adapter_fpga.srcs/sources_1/bd/Zynq7/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_datamover_v5_1_21 \
  "../../../../san_adapter_fpga.srcs/sources_1/bd/Zynq7/ipshared/e644/hdl/axi_datamover_v5_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_sg_v4_1_12 \
  "../../../../san_adapter_fpga.srcs/sources_1/bd/Zynq7/ipshared/91f3/hdl/axi_sg_v4_1_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_dma_v7_1_20 \
  "../../../../san_adapter_fpga.srcs/sources_1/bd/Zynq7/ipshared/260a/hdl/axi_dma_v7_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/Zynq7/ip/Zynq7_axi_dma_0_0/sim/Zynq7_axi_dma_0_0.vhd" \
-endlib
-makelib xcelium_lib/xlconstant_v1_1_6 \
  "../../../../san_adapter_fpga.srcs/sources_1/bd/Zynq7/ipshared/66e7/hdl/xlconstant_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/Zynq7/ip/Zynq7_axi_smc_0/bd_0/ip/ip_0/sim/bd_31d9_one_0.v" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../san_adapter_fpga.srcs/sources_1/bd/Zynq7/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/Zynq7/ip/Zynq7_axi_smc_0/bd_0/ip/ip_1/sim/bd_31d9_psr_aclk_0.vhd" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../san_adapter_fpga.srcs/sources_1/bd/Zynq7/ipshared/1ddd/hdl/sc_util_v1_0_vl_rfs.sv" \
  "../../../../san_adapter_fpga.srcs/sources_1/bd/Zynq7/ipshared/c012/hdl/sc_switchboard_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/Zynq7/ip/Zynq7_axi_smc_0/bd_0/ip/ip_2/sim/bd_31d9_arsw_0.sv" \
  "../../../bd/Zynq7/ip/Zynq7_axi_smc_0/bd_0/ip/ip_3/sim/bd_31d9_rsw_0.sv" \
  "../../../bd/Zynq7/ip/Zynq7_axi_smc_0/bd_0/ip/ip_4/sim/bd_31d9_awsw_0.sv" \
  "../../../bd/Zynq7/ip/Zynq7_axi_smc_0/bd_0/ip/ip_5/sim/bd_31d9_wsw_0.sv" \
  "../../../bd/Zynq7/ip/Zynq7_axi_smc_0/bd_0/ip/ip_6/sim/bd_31d9_bsw_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../san_adapter_fpga.srcs/sources_1/bd/Zynq7/ipshared/f85e/hdl/sc_mmu_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/Zynq7/ip/Zynq7_axi_smc_0/bd_0/ip/ip_7/sim/bd_31d9_s00mmu_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../san_adapter_fpga.srcs/sources_1/bd/Zynq7/ipshared/ca72/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/Zynq7/ip/Zynq7_axi_smc_0/bd_0/ip/ip_8/sim/bd_31d9_s00tr_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../san_adapter_fpga.srcs/sources_1/bd/Zynq7/ipshared/7de4/hdl/sc_si_converter_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/Zynq7/ip/Zynq7_axi_smc_0/bd_0/ip/ip_9/sim/bd_31d9_s00sic_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../san_adapter_fpga.srcs/sources_1/bd/Zynq7/ipshared/b89e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/Zynq7/ip/Zynq7_axi_smc_0/bd_0/ip/ip_10/sim/bd_31d9_s00a2s_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../san_adapter_fpga.srcs/sources_1/bd/Zynq7/ipshared/b2d0/hdl/sc_node_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/Zynq7/ip/Zynq7_axi_smc_0/bd_0/ip/ip_11/sim/bd_31d9_sarn_0.sv" \
  "../../../bd/Zynq7/ip/Zynq7_axi_smc_0/bd_0/ip/ip_12/sim/bd_31d9_srn_0.sv" \
  "../../../bd/Zynq7/ip/Zynq7_axi_smc_0/bd_0/ip/ip_13/sim/bd_31d9_sawn_0.sv" \
  "../../../bd/Zynq7/ip/Zynq7_axi_smc_0/bd_0/ip/ip_14/sim/bd_31d9_swn_0.sv" \
  "../../../bd/Zynq7/ip/Zynq7_axi_smc_0/bd_0/ip/ip_15/sim/bd_31d9_sbn_0.sv" \
  "../../../bd/Zynq7/ip/Zynq7_axi_smc_0/bd_0/ip/ip_16/sim/bd_31d9_s01mmu_0.sv" \
  "../../../bd/Zynq7/ip/Zynq7_axi_smc_0/bd_0/ip/ip_17/sim/bd_31d9_s01tr_0.sv" \
  "../../../bd/Zynq7/ip/Zynq7_axi_smc_0/bd_0/ip/ip_18/sim/bd_31d9_s01sic_0.sv" \
  "../../../bd/Zynq7/ip/Zynq7_axi_smc_0/bd_0/ip/ip_19/sim/bd_31d9_s01a2s_0.sv" \
  "../../../bd/Zynq7/ip/Zynq7_axi_smc_0/bd_0/ip/ip_20/sim/bd_31d9_sarn_1.sv" \
  "../../../bd/Zynq7/ip/Zynq7_axi_smc_0/bd_0/ip/ip_21/sim/bd_31d9_srn_1.sv" \
  "../../../bd/Zynq7/ip/Zynq7_axi_smc_0/bd_0/ip/ip_22/sim/bd_31d9_s02mmu_0.sv" \
  "../../../bd/Zynq7/ip/Zynq7_axi_smc_0/bd_0/ip/ip_23/sim/bd_31d9_s02tr_0.sv" \
  "../../../bd/Zynq7/ip/Zynq7_axi_smc_0/bd_0/ip/ip_24/sim/bd_31d9_s02sic_0.sv" \
  "../../../bd/Zynq7/ip/Zynq7_axi_smc_0/bd_0/ip/ip_25/sim/bd_31d9_s02a2s_0.sv" \
  "../../../bd/Zynq7/ip/Zynq7_axi_smc_0/bd_0/ip/ip_26/sim/bd_31d9_sawn_1.sv" \
  "../../../bd/Zynq7/ip/Zynq7_axi_smc_0/bd_0/ip/ip_27/sim/bd_31d9_swn_1.sv" \
  "../../../bd/Zynq7/ip/Zynq7_axi_smc_0/bd_0/ip/ip_28/sim/bd_31d9_sbn_1.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../san_adapter_fpga.srcs/sources_1/bd/Zynq7/ipshared/7005/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/Zynq7/ip/Zynq7_axi_smc_0/bd_0/ip/ip_29/sim/bd_31d9_m00s2a_0.sv" \
  "../../../bd/Zynq7/ip/Zynq7_axi_smc_0/bd_0/ip/ip_30/sim/bd_31d9_m00arn_0.sv" \
  "../../../bd/Zynq7/ip/Zynq7_axi_smc_0/bd_0/ip/ip_31/sim/bd_31d9_m00rn_0.sv" \
  "../../../bd/Zynq7/ip/Zynq7_axi_smc_0/bd_0/ip/ip_32/sim/bd_31d9_m00awn_0.sv" \
  "../../../bd/Zynq7/ip/Zynq7_axi_smc_0/bd_0/ip/ip_33/sim/bd_31d9_m00wn_0.sv" \
  "../../../bd/Zynq7/ip/Zynq7_axi_smc_0/bd_0/ip/ip_34/sim/bd_31d9_m00bn_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../san_adapter_fpga.srcs/sources_1/bd/Zynq7/ipshared/b387/hdl/sc_exit_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/Zynq7/ip/Zynq7_axi_smc_0/bd_0/ip/ip_35/sim/bd_31d9_m00e_0.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/Zynq7/ip/Zynq7_axi_smc_0/bd_0/sim/bd_31d9.v" \
  "../../../bd/Zynq7/ip/Zynq7_axi_smc_0/sim/Zynq7_axi_smc_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/Zynq7/ip/Zynq7_rst_ps7_0_100M_0/sim/Zynq7_rst_ps7_0_100M_0.vhd" \
-endlib
-makelib xcelium_lib/axis_infrastructure_v1_1_0 \
  "../../../../san_adapter_fpga.srcs/sources_1/bd/Zynq7/ipshared/8713/hdl/axis_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axis_data_fifo_v2_0_1 \
  "../../../../san_adapter_fpga.srcs/sources_1/bd/Zynq7/ipshared/e1b1/hdl/axis_data_fifo_v2_0_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/Zynq7/ip/Zynq7_axis_data_fifo_0_0/sim/Zynq7_axis_data_fifo_0_0.v" \
-endlib
-makelib xcelium_lib/xlconcat_v2_1_3 \
  "../../../../san_adapter_fpga.srcs/sources_1/bd/Zynq7/ipshared/442e/hdl/xlconcat_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/Zynq7/ip/Zynq7_xlconcat_0_0/sim/Zynq7_xlconcat_0_0.v" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../san_adapter_fpga.srcs/sources_1/bd/Zynq7/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_18 \
  "../../../../san_adapter_fpga.srcs/sources_1/bd/Zynq7/ipshared/5b9c/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_19 \
  "../../../../san_adapter_fpga.srcs/sources_1/bd/Zynq7/ipshared/4d88/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_protocol_converter_v2_1_19 \
  "../../../../san_adapter_fpga.srcs/sources_1/bd/Zynq7/ipshared/c83a/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/Zynq7/ip/Zynq7_auto_pc_0/sim/Zynq7_auto_pc_0.v" \
  "../../../bd/Zynq7/sim/Zynq7.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

