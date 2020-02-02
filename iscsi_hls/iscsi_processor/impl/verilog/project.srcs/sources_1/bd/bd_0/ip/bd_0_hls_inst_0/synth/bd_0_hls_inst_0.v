// (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:hls:iscsi_interface:1.0
// IP Revision: 2001311517

(* X_CORE_INFO = "iscsi_interface,Vivado 2019.1" *)
(* CHECK_LICENSE_TYPE = "bd_0_hls_inst_0,iscsi_interface,{}" *)
(* CORE_GENERATION_INFO = "bd_0_hls_inst_0,iscsi_interface,{x_ipProduct=Vivado 2019.1,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=iscsi_interface,x_ipVersion=1.0,x_ipCoreRevision=2001311517,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "HLS" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module bd_0_hls_inst_0 (
  ap_clk,
  ap_rst_n,
  ap_start,
  ap_done,
  ap_idle,
  ap_ready,
  tcp_in_TVALID,
  tcp_in_TREADY,
  tcp_in_TDATA,
  tcp_in_TDEST,
  tcp_in_TKEEP,
  tcp_in_TSTRB,
  tcp_in_TUSER,
  tcp_in_TLAST,
  tcp_in_TID,
  tcp_out_TVALID,
  tcp_out_TREADY,
  tcp_out_TDATA,
  tcp_out_TDEST,
  tcp_out_TKEEP,
  tcp_out_TSTRB,
  tcp_out_TUSER,
  tcp_out_TLAST,
  tcp_out_TID
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF tcp_in:tcp_out, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 100000000.0, PHASE 0.000, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *)
input wire ap_rst_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *)
input wire ap_start;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *)
output wire ap_done;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *)
output wire ap_idle;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *)
output wire ap_ready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tcp_in TVALID" *)
input wire tcp_in_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tcp_in TREADY" *)
output wire tcp_in_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tcp_in TDATA" *)
input wire [31 : 0] tcp_in_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tcp_in TDEST" *)
input wire [0 : 0] tcp_in_TDEST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tcp_in TKEEP" *)
input wire [3 : 0] tcp_in_TKEEP;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tcp_in TSTRB" *)
input wire [3 : 0] tcp_in_TSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tcp_in TUSER" *)
input wire [0 : 0] tcp_in_TUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tcp_in TLAST" *)
input wire [0 : 0] tcp_in_TLAST;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME tcp_in, TDATA_NUM_BYTES 4, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, LAYERED_METADATA undef, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000.0, PHASE 0.000, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tcp_in TID" *)
input wire [0 : 0] tcp_in_TID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tcp_out TVALID" *)
output wire tcp_out_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tcp_out TREADY" *)
input wire tcp_out_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tcp_out TDATA" *)
output wire [31 : 0] tcp_out_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tcp_out TDEST" *)
output wire [0 : 0] tcp_out_TDEST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tcp_out TKEEP" *)
output wire [3 : 0] tcp_out_TKEEP;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tcp_out TSTRB" *)
output wire [3 : 0] tcp_out_TSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tcp_out TUSER" *)
output wire [0 : 0] tcp_out_TUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tcp_out TLAST" *)
output wire [0 : 0] tcp_out_TLAST;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME tcp_out, TDATA_NUM_BYTES 4, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000.0, PHASE 0.000, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tcp_out TID" *)
output wire [0 : 0] tcp_out_TID;

  iscsi_interface inst (
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .ap_start(ap_start),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .ap_ready(ap_ready),
    .tcp_in_TVALID(tcp_in_TVALID),
    .tcp_in_TREADY(tcp_in_TREADY),
    .tcp_in_TDATA(tcp_in_TDATA),
    .tcp_in_TDEST(tcp_in_TDEST),
    .tcp_in_TKEEP(tcp_in_TKEEP),
    .tcp_in_TSTRB(tcp_in_TSTRB),
    .tcp_in_TUSER(tcp_in_TUSER),
    .tcp_in_TLAST(tcp_in_TLAST),
    .tcp_in_TID(tcp_in_TID),
    .tcp_out_TVALID(tcp_out_TVALID),
    .tcp_out_TREADY(tcp_out_TREADY),
    .tcp_out_TDATA(tcp_out_TDATA),
    .tcp_out_TDEST(tcp_out_TDEST),
    .tcp_out_TKEEP(tcp_out_TKEEP),
    .tcp_out_TSTRB(tcp_out_TSTRB),
    .tcp_out_TUSER(tcp_out_TUSER),
    .tcp_out_TLAST(tcp_out_TLAST),
    .tcp_out_TID(tcp_out_TID)
  );
endmodule
