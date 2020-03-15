// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Sun Mar 15 20:28:19 2020
// Host        : phirasit-macbook running 64-bit Ubuntu 18.04.3 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/phirasit/project/san-adapter/iscsi_fpga/iscsi_fpga.srcs/sources_1/bd/design_1/ip/design_1_iscsi_interface_0_0/design_1_iscsi_interface_0_0_stub.v
// Design      : design_1_iscsi_interface_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "iscsi_interface,Vivado 2019.1" *)
module design_1_iscsi_interface_0_0(ap_clk, ap_rst_n, ap_start, ap_done, ap_idle, 
  ap_ready, tcp_in_V_V_TVALID, tcp_in_V_V_TREADY, tcp_in_V_V_TDATA, tcp_out_V_V_TVALID, 
  tcp_out_V_V_TREADY, tcp_out_V_V_TDATA)
/* synthesis syn_black_box black_box_pad_pin="ap_clk,ap_rst_n,ap_start,ap_done,ap_idle,ap_ready,tcp_in_V_V_TVALID,tcp_in_V_V_TREADY,tcp_in_V_V_TDATA[31:0],tcp_out_V_V_TVALID,tcp_out_V_V_TREADY,tcp_out_V_V_TDATA[31:0]" */;
  input ap_clk;
  input ap_rst_n;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  input tcp_in_V_V_TVALID;
  output tcp_in_V_V_TREADY;
  input [31:0]tcp_in_V_V_TDATA;
  output tcp_out_V_V_TVALID;
  input tcp_out_V_V_TREADY;
  output [31:0]tcp_out_V_V_TDATA;
endmodule
