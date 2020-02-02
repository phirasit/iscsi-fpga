// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Fri Jan 31 15:24:54 2020
// Host        : phirasit-macbook running 64-bit Ubuntu 18.04.3 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_iscsi_interface_0_0_stub.v
// Design      : design_1_iscsi_interface_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "iscsi_interface,Vivado 2019.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(ap_clk, ap_rst_n, ap_start, ap_done, ap_idle, 
  ap_ready, tcp_in_TVALID, tcp_in_TREADY, tcp_in_TDATA, tcp_in_TDEST, tcp_in_TKEEP, 
  tcp_in_TSTRB, tcp_in_TUSER, tcp_in_TLAST, tcp_in_TID, tcp_out_TVALID, tcp_out_TREADY, 
  tcp_out_TDATA, tcp_out_TDEST, tcp_out_TKEEP, tcp_out_TSTRB, tcp_out_TUSER, tcp_out_TLAST, 
  tcp_out_TID)
/* synthesis syn_black_box black_box_pad_pin="ap_clk,ap_rst_n,ap_start,ap_done,ap_idle,ap_ready,tcp_in_TVALID,tcp_in_TREADY,tcp_in_TDATA[31:0],tcp_in_TDEST[0:0],tcp_in_TKEEP[3:0],tcp_in_TSTRB[3:0],tcp_in_TUSER[0:0],tcp_in_TLAST[0:0],tcp_in_TID[0:0],tcp_out_TVALID,tcp_out_TREADY,tcp_out_TDATA[31:0],tcp_out_TDEST[0:0],tcp_out_TKEEP[3:0],tcp_out_TSTRB[3:0],tcp_out_TUSER[0:0],tcp_out_TLAST[0:0],tcp_out_TID[0:0]" */;
  input ap_clk;
  input ap_rst_n;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  input tcp_in_TVALID;
  output tcp_in_TREADY;
  input [31:0]tcp_in_TDATA;
  input [0:0]tcp_in_TDEST;
  input [3:0]tcp_in_TKEEP;
  input [3:0]tcp_in_TSTRB;
  input [0:0]tcp_in_TUSER;
  input [0:0]tcp_in_TLAST;
  input [0:0]tcp_in_TID;
  output tcp_out_TVALID;
  input tcp_out_TREADY;
  output [31:0]tcp_out_TDATA;
  output [0:0]tcp_out_TDEST;
  output [3:0]tcp_out_TKEEP;
  output [3:0]tcp_out_TSTRB;
  output [0:0]tcp_out_TUSER;
  output [0:0]tcp_out_TLAST;
  output [0:0]tcp_out_TID;
endmodule
