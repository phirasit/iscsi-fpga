//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
//Date        : Sun Mar 15 20:19:37 2020
//Host        : phirasit-macbook running 64-bit Ubuntu 18.04.3 LTS
//Command     : generate_target bd_0.bd
//Design      : bd_0
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_0,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_0,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "bd_0.hwdef" *) 
module bd_0
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AP_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AP_CLK, ASSOCIATED_BUSIF tcp_in_V_V:tcp_out_V_V, ASSOCIATED_RESET ap_rst_n, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 100000000.0, INSERT_VIP 0, PHASE 0.000" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl " *) output ap_ctrl_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl " *) output ap_ctrl_idle;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl " *) output ap_ctrl_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl " *) input ap_ctrl_start;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AP_RST_N RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AP_RST_N, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tcp_in_V_V " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME tcp_in_V_V, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 100000000.0, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [31:0]tcp_in_V_V_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tcp_in_V_V " *) output tcp_in_V_V_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tcp_in_V_V " *) input tcp_in_V_V_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tcp_out_V_V " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME tcp_out_V_V, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 100000000.0, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [31:0]tcp_out_V_V_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tcp_out_V_V " *) input tcp_out_V_V_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tcp_out_V_V " *) output tcp_out_V_V_tvalid;

  wire ap_clk_0_1;
  wire ap_ctrl_0_1_done;
  wire ap_ctrl_0_1_idle;
  wire ap_ctrl_0_1_ready;
  wire ap_ctrl_0_1_start;
  wire ap_rst_n_0_1;
  wire [31:0]hls_inst_tcp_out_V_V_TDATA;
  wire hls_inst_tcp_out_V_V_TREADY;
  wire hls_inst_tcp_out_V_V_TVALID;
  wire [31:0]tcp_in_V_V_0_1_TDATA;
  wire tcp_in_V_V_0_1_TREADY;
  wire tcp_in_V_V_0_1_TVALID;

  assign ap_clk_0_1 = ap_clk;
  assign ap_ctrl_0_1_start = ap_ctrl_start;
  assign ap_ctrl_done = ap_ctrl_0_1_done;
  assign ap_ctrl_idle = ap_ctrl_0_1_idle;
  assign ap_ctrl_ready = ap_ctrl_0_1_ready;
  assign ap_rst_n_0_1 = ap_rst_n;
  assign hls_inst_tcp_out_V_V_TREADY = tcp_out_V_V_tready;
  assign tcp_in_V_V_0_1_TDATA = tcp_in_V_V_tdata[31:0];
  assign tcp_in_V_V_0_1_TVALID = tcp_in_V_V_tvalid;
  assign tcp_in_V_V_tready = tcp_in_V_V_0_1_TREADY;
  assign tcp_out_V_V_tdata[31:0] = hls_inst_tcp_out_V_V_TDATA;
  assign tcp_out_V_V_tvalid = hls_inst_tcp_out_V_V_TVALID;
  bd_0_hls_inst_0 hls_inst
       (.ap_clk(ap_clk_0_1),
        .ap_done(ap_ctrl_0_1_done),
        .ap_idle(ap_ctrl_0_1_idle),
        .ap_ready(ap_ctrl_0_1_ready),
        .ap_rst_n(ap_rst_n_0_1),
        .ap_start(ap_ctrl_0_1_start),
        .tcp_in_V_V_TDATA(tcp_in_V_V_0_1_TDATA),
        .tcp_in_V_V_TREADY(tcp_in_V_V_0_1_TREADY),
        .tcp_in_V_V_TVALID(tcp_in_V_V_0_1_TVALID),
        .tcp_out_V_V_TDATA(hls_inst_tcp_out_V_V_TDATA),
        .tcp_out_V_V_TREADY(hls_inst_tcp_out_V_V_TREADY),
        .tcp_out_V_V_TVALID(hls_inst_tcp_out_V_V_TVALID));
endmodule
