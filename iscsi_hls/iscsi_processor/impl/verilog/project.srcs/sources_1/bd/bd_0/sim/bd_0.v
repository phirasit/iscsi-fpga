//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
//Date        : Fri Jan 31 15:17:46 2020
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AP_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AP_CLK, ASSOCIATED_BUSIF tcp_in:tcp_out, ASSOCIATED_RESET ap_rst_n, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 100000000.0, INSERT_VIP 0, PHASE 0.000" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl " *) output ap_ctrl_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl " *) output ap_ctrl_idle;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl " *) output ap_ctrl_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl " *) input ap_ctrl_start;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AP_RST_N RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AP_RST_N, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tcp_in " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME tcp_in, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 100000000.0, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 1, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 4, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1" *) input [31:0]tcp_in_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tcp_in " *) input [0:0]tcp_in_tdest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tcp_in " *) input [0:0]tcp_in_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tcp_in " *) input [3:0]tcp_in_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tcp_in " *) input [0:0]tcp_in_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tcp_in " *) output tcp_in_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tcp_in " *) input [3:0]tcp_in_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tcp_in " *) input [0:0]tcp_in_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tcp_in " *) input tcp_in_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tcp_out " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME tcp_out, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 100000000.0, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 1, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 4, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1" *) output [31:0]tcp_out_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tcp_out " *) output [0:0]tcp_out_tdest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tcp_out " *) output [0:0]tcp_out_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tcp_out " *) output [3:0]tcp_out_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tcp_out " *) output [0:0]tcp_out_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tcp_out " *) input tcp_out_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tcp_out " *) output [3:0]tcp_out_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tcp_out " *) output [0:0]tcp_out_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tcp_out " *) output tcp_out_tvalid;

  wire ap_clk_0_1;
  wire ap_ctrl_0_1_done;
  wire ap_ctrl_0_1_idle;
  wire ap_ctrl_0_1_ready;
  wire ap_ctrl_0_1_start;
  wire ap_rst_n_0_1;
  wire [31:0]hls_inst_tcp_out_TDATA;
  wire [0:0]hls_inst_tcp_out_TDEST;
  wire [0:0]hls_inst_tcp_out_TID;
  wire [3:0]hls_inst_tcp_out_TKEEP;
  wire [0:0]hls_inst_tcp_out_TLAST;
  wire hls_inst_tcp_out_TREADY;
  wire [3:0]hls_inst_tcp_out_TSTRB;
  wire [0:0]hls_inst_tcp_out_TUSER;
  wire hls_inst_tcp_out_TVALID;
  wire [31:0]tcp_in_0_1_TDATA;
  wire [0:0]tcp_in_0_1_TDEST;
  wire [0:0]tcp_in_0_1_TID;
  wire [3:0]tcp_in_0_1_TKEEP;
  wire [0:0]tcp_in_0_1_TLAST;
  wire tcp_in_0_1_TREADY;
  wire [3:0]tcp_in_0_1_TSTRB;
  wire [0:0]tcp_in_0_1_TUSER;
  wire tcp_in_0_1_TVALID;

  assign ap_clk_0_1 = ap_clk;
  assign ap_ctrl_0_1_start = ap_ctrl_start;
  assign ap_ctrl_done = ap_ctrl_0_1_done;
  assign ap_ctrl_idle = ap_ctrl_0_1_idle;
  assign ap_ctrl_ready = ap_ctrl_0_1_ready;
  assign ap_rst_n_0_1 = ap_rst_n;
  assign hls_inst_tcp_out_TREADY = tcp_out_tready;
  assign tcp_in_0_1_TDATA = tcp_in_tdata[31:0];
  assign tcp_in_0_1_TDEST = tcp_in_tdest[0];
  assign tcp_in_0_1_TID = tcp_in_tid[0];
  assign tcp_in_0_1_TKEEP = tcp_in_tkeep[3:0];
  assign tcp_in_0_1_TLAST = tcp_in_tlast[0];
  assign tcp_in_0_1_TSTRB = tcp_in_tstrb[3:0];
  assign tcp_in_0_1_TUSER = tcp_in_tuser[0];
  assign tcp_in_0_1_TVALID = tcp_in_tvalid;
  assign tcp_in_tready = tcp_in_0_1_TREADY;
  assign tcp_out_tdata[31:0] = hls_inst_tcp_out_TDATA;
  assign tcp_out_tdest[0] = hls_inst_tcp_out_TDEST;
  assign tcp_out_tid[0] = hls_inst_tcp_out_TID;
  assign tcp_out_tkeep[3:0] = hls_inst_tcp_out_TKEEP;
  assign tcp_out_tlast[0] = hls_inst_tcp_out_TLAST;
  assign tcp_out_tstrb[3:0] = hls_inst_tcp_out_TSTRB;
  assign tcp_out_tuser[0] = hls_inst_tcp_out_TUSER;
  assign tcp_out_tvalid = hls_inst_tcp_out_TVALID;
  bd_0_hls_inst_0 hls_inst
       (.ap_clk(ap_clk_0_1),
        .ap_done(ap_ctrl_0_1_done),
        .ap_idle(ap_ctrl_0_1_idle),
        .ap_ready(ap_ctrl_0_1_ready),
        .ap_rst_n(ap_rst_n_0_1),
        .ap_start(ap_ctrl_0_1_start),
        .tcp_in_TDATA(tcp_in_0_1_TDATA),
        .tcp_in_TDEST(tcp_in_0_1_TDEST),
        .tcp_in_TID(tcp_in_0_1_TID),
        .tcp_in_TKEEP(tcp_in_0_1_TKEEP),
        .tcp_in_TLAST(tcp_in_0_1_TLAST),
        .tcp_in_TREADY(tcp_in_0_1_TREADY),
        .tcp_in_TSTRB(tcp_in_0_1_TSTRB),
        .tcp_in_TUSER(tcp_in_0_1_TUSER),
        .tcp_in_TVALID(tcp_in_0_1_TVALID),
        .tcp_out_TDATA(hls_inst_tcp_out_TDATA),
        .tcp_out_TDEST(hls_inst_tcp_out_TDEST),
        .tcp_out_TID(hls_inst_tcp_out_TID),
        .tcp_out_TKEEP(hls_inst_tcp_out_TKEEP),
        .tcp_out_TLAST(hls_inst_tcp_out_TLAST),
        .tcp_out_TREADY(hls_inst_tcp_out_TREADY),
        .tcp_out_TSTRB(hls_inst_tcp_out_TSTRB),
        .tcp_out_TUSER(hls_inst_tcp_out_TUSER),
        .tcp_out_TVALID(hls_inst_tcp_out_TVALID));
endmodule
