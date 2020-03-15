//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
//Date        : Sun Mar 15 20:19:37 2020
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
    tcp_in_V_V_tdata,
    tcp_in_V_V_tready,
    tcp_in_V_V_tvalid,
    tcp_out_V_V_tdata,
    tcp_out_V_V_tready,
    tcp_out_V_V_tvalid);
  input ap_clk;
  output ap_ctrl_done;
  output ap_ctrl_idle;
  output ap_ctrl_ready;
  input ap_ctrl_start;
  input ap_rst_n;
  input [31:0]tcp_in_V_V_tdata;
  output tcp_in_V_V_tready;
  input tcp_in_V_V_tvalid;
  output [31:0]tcp_out_V_V_tdata;
  input tcp_out_V_V_tready;
  output tcp_out_V_V_tvalid;

  wire ap_clk;
  wire ap_ctrl_done;
  wire ap_ctrl_idle;
  wire ap_ctrl_ready;
  wire ap_ctrl_start;
  wire ap_rst_n;
  wire [31:0]tcp_in_V_V_tdata;
  wire tcp_in_V_V_tready;
  wire tcp_in_V_V_tvalid;
  wire [31:0]tcp_out_V_V_tdata;
  wire tcp_out_V_V_tready;
  wire tcp_out_V_V_tvalid;

  bd_0 bd_0_i
       (.ap_clk(ap_clk),
        .ap_ctrl_done(ap_ctrl_done),
        .ap_ctrl_idle(ap_ctrl_idle),
        .ap_ctrl_ready(ap_ctrl_ready),
        .ap_ctrl_start(ap_ctrl_start),
        .ap_rst_n(ap_rst_n),
        .tcp_in_V_V_tdata(tcp_in_V_V_tdata),
        .tcp_in_V_V_tready(tcp_in_V_V_tready),
        .tcp_in_V_V_tvalid(tcp_in_V_V_tvalid),
        .tcp_out_V_V_tdata(tcp_out_V_V_tdata),
        .tcp_out_V_V_tready(tcp_out_V_V_tready),
        .tcp_out_V_V_tvalid(tcp_out_V_V_tvalid));
endmodule
