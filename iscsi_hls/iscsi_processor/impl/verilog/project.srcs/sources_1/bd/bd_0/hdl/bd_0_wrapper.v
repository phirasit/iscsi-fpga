//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
//Date        : Fri Jan 31 15:17:46 2020
//Host        : phirasit-macbook running 64-bit Ubuntu 18.04.3 LTS
//Command     : generate_target bd_0_wrapper.bd
//Design      : bd_0_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_0_wrapper
   (ap_clk,
    ap_ctrl_done,
    ap_ctrl_idle,
    ap_ctrl_ready,
    ap_ctrl_start,
    ap_rst_n,
    tcp_in_tdata,
    tcp_in_tdest,
    tcp_in_tid,
    tcp_in_tkeep,
    tcp_in_tlast,
    tcp_in_tready,
    tcp_in_tstrb,
    tcp_in_tuser,
    tcp_in_tvalid,
    tcp_out_tdata,
    tcp_out_tdest,
    tcp_out_tid,
    tcp_out_tkeep,
    tcp_out_tlast,
    tcp_out_tready,
    tcp_out_tstrb,
    tcp_out_tuser,
    tcp_out_tvalid);
  input ap_clk;
  output ap_ctrl_done;
  output ap_ctrl_idle;
  output ap_ctrl_ready;
  input ap_ctrl_start;
  input ap_rst_n;
  input [31:0]tcp_in_tdata;
  input [0:0]tcp_in_tdest;
  input [0:0]tcp_in_tid;
  input [3:0]tcp_in_tkeep;
  input [0:0]tcp_in_tlast;
  output tcp_in_tready;
  input [3:0]tcp_in_tstrb;
  input [0:0]tcp_in_tuser;
  input tcp_in_tvalid;
  output [31:0]tcp_out_tdata;
  output [0:0]tcp_out_tdest;
  output [0:0]tcp_out_tid;
  output [3:0]tcp_out_tkeep;
  output [0:0]tcp_out_tlast;
  input tcp_out_tready;
  output [3:0]tcp_out_tstrb;
  output [0:0]tcp_out_tuser;
  output tcp_out_tvalid;

  wire ap_clk;
  wire ap_ctrl_done;
  wire ap_ctrl_idle;
  wire ap_ctrl_ready;
  wire ap_ctrl_start;
  wire ap_rst_n;
  wire [31:0]tcp_in_tdata;
  wire [0:0]tcp_in_tdest;
  wire [0:0]tcp_in_tid;
  wire [3:0]tcp_in_tkeep;
  wire [0:0]tcp_in_tlast;
  wire tcp_in_tready;
  wire [3:0]tcp_in_tstrb;
  wire [0:0]tcp_in_tuser;
  wire tcp_in_tvalid;
  wire [31:0]tcp_out_tdata;
  wire [0:0]tcp_out_tdest;
  wire [0:0]tcp_out_tid;
  wire [3:0]tcp_out_tkeep;
  wire [0:0]tcp_out_tlast;
  wire tcp_out_tready;
  wire [3:0]tcp_out_tstrb;
  wire [0:0]tcp_out_tuser;
  wire tcp_out_tvalid;

  bd_0 bd_0_i
       (.ap_clk(ap_clk),
        .ap_ctrl_done(ap_ctrl_done),
        .ap_ctrl_idle(ap_ctrl_idle),
        .ap_ctrl_ready(ap_ctrl_ready),
        .ap_ctrl_start(ap_ctrl_start),
        .ap_rst_n(ap_rst_n),
        .tcp_in_tdata(tcp_in_tdata),
        .tcp_in_tdest(tcp_in_tdest),
        .tcp_in_tid(tcp_in_tid),
        .tcp_in_tkeep(tcp_in_tkeep),
        .tcp_in_tlast(tcp_in_tlast),
        .tcp_in_tready(tcp_in_tready),
        .tcp_in_tstrb(tcp_in_tstrb),
        .tcp_in_tuser(tcp_in_tuser),
        .tcp_in_tvalid(tcp_in_tvalid),
        .tcp_out_tdata(tcp_out_tdata),
        .tcp_out_tdest(tcp_out_tdest),
        .tcp_out_tid(tcp_out_tid),
        .tcp_out_tkeep(tcp_out_tkeep),
        .tcp_out_tlast(tcp_out_tlast),
        .tcp_out_tready(tcp_out_tready),
        .tcp_out_tstrb(tcp_out_tstrb),
        .tcp_out_tuser(tcp_out_tuser),
        .tcp_out_tvalid(tcp_out_tvalid));
endmodule
