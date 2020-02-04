// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Fri Jan 31 15:24:54 2020
// Host        : phirasit-macbook running 64-bit Ubuntu 18.04.3 LTS
// Command     : write_verilog -force -mode funcsim -rename_top design_1_iscsi_interface_0_0 -prefix
//               design_1_iscsi_interface_0_0_ design_1_iscsi_interface_0_0_sim_netlist.v
// Design      : design_1_iscsi_interface_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_iscsi_interface_0_0,iscsi_interface,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "iscsi_interface,Vivado 2019.1" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module design_1_iscsi_interface_0_0
   (ap_clk,
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
    tcp_out_TID);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF tcp_in:tcp_out, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *) input ap_start;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *) output ap_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *) output ap_idle;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *) output ap_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tcp_in TVALID" *) input tcp_in_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tcp_in TREADY" *) output tcp_in_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tcp_in TDATA" *) input [31:0]tcp_in_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tcp_in TDEST" *) input [0:0]tcp_in_TDEST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tcp_in TKEEP" *) input [3:0]tcp_in_TKEEP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tcp_in TSTRB" *) input [3:0]tcp_in_TSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tcp_in TUSER" *) input [0:0]tcp_in_TUSER;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tcp_in TLAST" *) input [0:0]tcp_in_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tcp_in TID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME tcp_in, TDATA_NUM_BYTES 4, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, LAYERED_METADATA undef, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input [0:0]tcp_in_TID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tcp_out TVALID" *) output tcp_out_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tcp_out TREADY" *) input tcp_out_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tcp_out TDATA" *) output [31:0]tcp_out_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tcp_out TDEST" *) output [0:0]tcp_out_TDEST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tcp_out TKEEP" *) output [3:0]tcp_out_TKEEP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tcp_out TSTRB" *) output [3:0]tcp_out_TSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tcp_out TUSER" *) output [0:0]tcp_out_TUSER;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tcp_out TLAST" *) output [0:0]tcp_out_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tcp_out TID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME tcp_out, TDATA_NUM_BYTES 4, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) output [0:0]tcp_out_TID;

  wire ap_clk;
  wire ap_done;
  wire ap_idle;
  wire ap_ready;
  wire ap_rst_n;
  wire ap_start;
  wire [31:0]tcp_in_TDATA;
  wire [0:0]tcp_in_TDEST;
  wire [0:0]tcp_in_TID;
  wire [3:0]tcp_in_TKEEP;
  wire [0:0]tcp_in_TLAST;
  wire tcp_in_TREADY;
  wire [3:0]tcp_in_TSTRB;
  wire [0:0]tcp_in_TUSER;
  wire tcp_in_TVALID;
  wire [31:0]tcp_out_TDATA;
  wire [0:0]tcp_out_TDEST;
  wire [0:0]tcp_out_TID;
  wire [3:0]tcp_out_TKEEP;
  wire [0:0]tcp_out_TLAST;
  wire tcp_out_TREADY;
  wire [3:0]tcp_out_TSTRB;
  wire [0:0]tcp_out_TUSER;
  wire tcp_out_TVALID;

  (* ap_ST_fsm_state1 = "3'b001" *) 
  (* ap_ST_fsm_state2 = "3'b010" *) 
  (* ap_ST_fsm_state3 = "3'b100" *) 
  design_1_iscsi_interface_0_0_iscsi_interface inst
       (.ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_idle(ap_idle),
        .ap_ready(ap_ready),
        .ap_rst_n(ap_rst_n),
        .ap_start(ap_start),
        .tcp_in_TDATA(tcp_in_TDATA),
        .tcp_in_TDEST(tcp_in_TDEST),
        .tcp_in_TID(tcp_in_TID),
        .tcp_in_TKEEP(tcp_in_TKEEP),
        .tcp_in_TLAST(tcp_in_TLAST),
        .tcp_in_TREADY(tcp_in_TREADY),
        .tcp_in_TSTRB(tcp_in_TSTRB),
        .tcp_in_TUSER(tcp_in_TUSER),
        .tcp_in_TVALID(tcp_in_TVALID),
        .tcp_out_TDATA(tcp_out_TDATA),
        .tcp_out_TDEST(tcp_out_TDEST),
        .tcp_out_TID(tcp_out_TID),
        .tcp_out_TKEEP(tcp_out_TKEEP),
        .tcp_out_TLAST(tcp_out_TLAST),
        .tcp_out_TREADY(tcp_out_TREADY),
        .tcp_out_TSTRB(tcp_out_TSTRB),
        .tcp_out_TUSER(tcp_out_TUSER),
        .tcp_out_TVALID(tcp_out_TVALID));
endmodule

(* ap_ST_fsm_state1 = "3'b001" *) (* ap_ST_fsm_state2 = "3'b010" *) (* ap_ST_fsm_state3 = "3'b100" *) 
(* hls_module = "yes" *) 
module design_1_iscsi_interface_0_0_iscsi_interface
   (ap_clk,
    ap_rst_n,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    tcp_in_TDATA,
    tcp_in_TVALID,
    tcp_in_TREADY,
    tcp_in_TKEEP,
    tcp_in_TSTRB,
    tcp_in_TUSER,
    tcp_in_TLAST,
    tcp_in_TID,
    tcp_in_TDEST,
    tcp_out_TDATA,
    tcp_out_TVALID,
    tcp_out_TREADY,
    tcp_out_TKEEP,
    tcp_out_TSTRB,
    tcp_out_TUSER,
    tcp_out_TLAST,
    tcp_out_TID,
    tcp_out_TDEST);
  input ap_clk;
  input ap_rst_n;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  input [31:0]tcp_in_TDATA;
  input tcp_in_TVALID;
  output tcp_in_TREADY;
  input [3:0]tcp_in_TKEEP;
  input [3:0]tcp_in_TSTRB;
  input [0:0]tcp_in_TUSER;
  input [0:0]tcp_in_TLAST;
  input [0:0]tcp_in_TID;
  input [0:0]tcp_in_TDEST;
  output [31:0]tcp_out_TDATA;
  output tcp_out_TVALID;
  input tcp_out_TREADY;
  output [3:0]tcp_out_TKEEP;
  output [3:0]tcp_out_TSTRB;
  output [0:0]tcp_out_TUSER;
  output [0:0]tcp_out_TLAST;
  output [0:0]tcp_out_TID;
  output [0:0]tcp_out_TDEST;

  wire \<const0> ;
  wire \ap_CS_fsm_reg_n_0_[0] ;
  wire \ap_CS_fsm_reg_n_0_[2] ;
  wire ap_CS_fsm_state2;
  wire [2:0]ap_NS_fsm;
  wire ap_clk;
  wire ap_idle;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire ap_start;
  wire p_186_in;
  wire [31:0]tcp_in_TDATA;
  wire [0:0]tcp_in_TDEST;
  wire [0:0]tcp_in_TID;
  wire [3:0]tcp_in_TKEEP;
  wire [0:0]tcp_in_TLAST;
  wire tcp_in_TREADY;
  wire [3:0]tcp_in_TSTRB;
  wire [0:0]tcp_in_TUSER;
  wire tcp_in_TVALID;
  wire tcp_in_V_data_V_0_ack_in;
  wire [31:0]tcp_in_V_data_V_0_data_out;
  wire tcp_in_V_data_V_0_load_B;
  wire [31:0]tcp_in_V_data_V_0_payload_A;
  wire \tcp_in_V_data_V_0_payload_A[31]_i_1_n_0 ;
  wire [31:0]tcp_in_V_data_V_0_payload_B;
  wire tcp_in_V_data_V_0_sel;
  wire tcp_in_V_data_V_0_sel_rd_i_1_n_0;
  wire tcp_in_V_data_V_0_sel_wr;
  wire tcp_in_V_data_V_0_sel_wr_i_1_n_0;
  wire \tcp_in_V_data_V_0_state[0]_i_1_n_0 ;
  wire \tcp_in_V_data_V_0_state[1]_i_1_n_0 ;
  wire \tcp_in_V_data_V_0_state_reg_n_0_[0] ;
  wire tcp_in_V_dest_V_0_payload_A;
  wire \tcp_in_V_dest_V_0_payload_A[0]_i_1_n_0 ;
  wire tcp_in_V_dest_V_0_payload_B;
  wire \tcp_in_V_dest_V_0_payload_B[0]_i_1_n_0 ;
  wire tcp_in_V_dest_V_0_sel;
  wire tcp_in_V_dest_V_0_sel_rd_i_1_n_0;
  wire tcp_in_V_dest_V_0_sel_wr;
  wire tcp_in_V_dest_V_0_sel_wr_i_1_n_0;
  wire \tcp_in_V_dest_V_0_state[0]_i_1_n_0 ;
  wire \tcp_in_V_dest_V_0_state[1]_i_2_n_0 ;
  wire \tcp_in_V_dest_V_0_state_reg_n_0_[0] ;
  wire tcp_in_V_id_V_0_ack_in;
  wire tcp_in_V_id_V_0_payload_A;
  wire \tcp_in_V_id_V_0_payload_A[0]_i_1_n_0 ;
  wire tcp_in_V_id_V_0_payload_B;
  wire \tcp_in_V_id_V_0_payload_B[0]_i_1_n_0 ;
  wire tcp_in_V_id_V_0_sel;
  wire tcp_in_V_id_V_0_sel_rd_i_1_n_0;
  wire tcp_in_V_id_V_0_sel_wr;
  wire tcp_in_V_id_V_0_sel_wr_i_1_n_0;
  wire \tcp_in_V_id_V_0_state[0]_i_1_n_0 ;
  wire \tcp_in_V_id_V_0_state[1]_i_1_n_0 ;
  wire \tcp_in_V_id_V_0_state_reg_n_0_[0] ;
  wire tcp_in_V_keep_V_0_ack_in;
  wire [3:0]tcp_in_V_keep_V_0_data_out;
  wire tcp_in_V_keep_V_0_load_B;
  wire [3:0]tcp_in_V_keep_V_0_payload_A;
  wire \tcp_in_V_keep_V_0_payload_A[3]_i_1_n_0 ;
  wire [3:0]tcp_in_V_keep_V_0_payload_B;
  wire tcp_in_V_keep_V_0_sel;
  wire tcp_in_V_keep_V_0_sel_rd_i_1_n_0;
  wire tcp_in_V_keep_V_0_sel_wr;
  wire tcp_in_V_keep_V_0_sel_wr_i_1_n_0;
  wire \tcp_in_V_keep_V_0_state[0]_i_1_n_0 ;
  wire \tcp_in_V_keep_V_0_state[1]_i_1_n_0 ;
  wire \tcp_in_V_keep_V_0_state_reg_n_0_[0] ;
  wire tcp_in_V_last_V_0_ack_in;
  wire tcp_in_V_last_V_0_payload_A;
  wire \tcp_in_V_last_V_0_payload_A[0]_i_1_n_0 ;
  wire tcp_in_V_last_V_0_payload_B;
  wire \tcp_in_V_last_V_0_payload_B[0]_i_1_n_0 ;
  wire tcp_in_V_last_V_0_sel;
  wire tcp_in_V_last_V_0_sel_rd_i_1_n_0;
  wire tcp_in_V_last_V_0_sel_wr;
  wire tcp_in_V_last_V_0_sel_wr_i_1_n_0;
  wire \tcp_in_V_last_V_0_state[0]_i_1_n_0 ;
  wire \tcp_in_V_last_V_0_state[1]_i_1_n_0 ;
  wire \tcp_in_V_last_V_0_state_reg_n_0_[0] ;
  wire tcp_in_V_strb_V_0_ack_in;
  wire [3:0]tcp_in_V_strb_V_0_data_out;
  wire tcp_in_V_strb_V_0_load_B;
  wire [3:0]tcp_in_V_strb_V_0_payload_A;
  wire \tcp_in_V_strb_V_0_payload_A[3]_i_1_n_0 ;
  wire [3:0]tcp_in_V_strb_V_0_payload_B;
  wire tcp_in_V_strb_V_0_sel;
  wire tcp_in_V_strb_V_0_sel_rd_i_1_n_0;
  wire tcp_in_V_strb_V_0_sel_wr;
  wire tcp_in_V_strb_V_0_sel_wr_i_1_n_0;
  wire \tcp_in_V_strb_V_0_state[0]_i_1_n_0 ;
  wire \tcp_in_V_strb_V_0_state[1]_i_1_n_0 ;
  wire \tcp_in_V_strb_V_0_state_reg_n_0_[0] ;
  wire tcp_in_V_user_V_0_ack_in;
  wire tcp_in_V_user_V_0_payload_A;
  wire \tcp_in_V_user_V_0_payload_A[0]_i_1_n_0 ;
  wire tcp_in_V_user_V_0_payload_B;
  wire \tcp_in_V_user_V_0_payload_B[0]_i_1_n_0 ;
  wire tcp_in_V_user_V_0_sel;
  wire tcp_in_V_user_V_0_sel_rd_i_1_n_0;
  wire tcp_in_V_user_V_0_sel_wr;
  wire tcp_in_V_user_V_0_sel_wr_i_1_n_0;
  wire \tcp_in_V_user_V_0_state[0]_i_1_n_0 ;
  wire \tcp_in_V_user_V_0_state[1]_i_1_n_0 ;
  wire \tcp_in_V_user_V_0_state_reg_n_0_[0] ;
  wire [31:0]tcp_out_TDATA;
  wire [0:0]tcp_out_TDEST;
  wire [0:0]tcp_out_TID;
  wire [3:0]tcp_out_TKEEP;
  wire [0:0]tcp_out_TLAST;
  wire tcp_out_TREADY;
  wire [3:0]tcp_out_TSTRB;
  wire [0:0]tcp_out_TUSER;
  wire tcp_out_TVALID;
  wire tcp_out_V_data_V_1_ack_in;
  wire tcp_out_V_data_V_1_load_B;
  wire [31:0]tcp_out_V_data_V_1_payload_A;
  wire \tcp_out_V_data_V_1_payload_A[31]_i_1_n_0 ;
  wire [31:0]tcp_out_V_data_V_1_payload_B;
  wire tcp_out_V_data_V_1_sel;
  wire tcp_out_V_data_V_1_sel_rd_i_1_n_0;
  wire tcp_out_V_data_V_1_sel_wr;
  wire tcp_out_V_data_V_1_sel_wr_i_1_n_0;
  wire \tcp_out_V_data_V_1_state[0]_i_1_n_0 ;
  wire \tcp_out_V_data_V_1_state[1]_i_1_n_0 ;
  wire \tcp_out_V_data_V_1_state_reg_n_0_[0] ;
  wire tcp_out_V_dest_V_1_ack_in;
  wire tcp_out_V_dest_V_1_payload_A;
  wire \tcp_out_V_dest_V_1_payload_A[0]_i_1_n_0 ;
  wire \tcp_out_V_dest_V_1_payload_A[0]_i_2_n_0 ;
  wire tcp_out_V_dest_V_1_payload_B;
  wire \tcp_out_V_dest_V_1_payload_B[0]_i_1_n_0 ;
  wire tcp_out_V_dest_V_1_sel;
  wire tcp_out_V_dest_V_1_sel_rd_i_1_n_0;
  wire tcp_out_V_dest_V_1_sel_wr;
  wire tcp_out_V_dest_V_1_sel_wr_i_1_n_0;
  wire \tcp_out_V_dest_V_1_state[0]_i_1_n_0 ;
  wire \tcp_out_V_dest_V_1_state[1]_i_1_n_0 ;
  wire tcp_out_V_id_V_1_ack_in;
  wire tcp_out_V_id_V_1_payload_A;
  wire \tcp_out_V_id_V_1_payload_A[0]_i_1_n_0 ;
  wire tcp_out_V_id_V_1_payload_B;
  wire \tcp_out_V_id_V_1_payload_B[0]_i_1_n_0 ;
  wire tcp_out_V_id_V_1_sel;
  wire tcp_out_V_id_V_1_sel_rd_i_1_n_0;
  wire tcp_out_V_id_V_1_sel_wr;
  wire tcp_out_V_id_V_1_sel_wr_i_1_n_0;
  wire \tcp_out_V_id_V_1_state[0]_i_1_n_0 ;
  wire \tcp_out_V_id_V_1_state[1]_i_1_n_0 ;
  wire tcp_out_V_id_V_1_state_cmp_full;
  wire \tcp_out_V_id_V_1_state_reg_n_0_[0] ;
  wire tcp_out_V_keep_V_1_ack_in;
  wire tcp_out_V_keep_V_1_load_B;
  wire [3:0]tcp_out_V_keep_V_1_payload_A;
  wire \tcp_out_V_keep_V_1_payload_A[3]_i_1_n_0 ;
  wire [3:0]tcp_out_V_keep_V_1_payload_B;
  wire tcp_out_V_keep_V_1_sel;
  wire tcp_out_V_keep_V_1_sel_rd_i_1_n_0;
  wire tcp_out_V_keep_V_1_sel_wr;
  wire tcp_out_V_keep_V_1_sel_wr_i_1_n_0;
  wire \tcp_out_V_keep_V_1_state[0]_i_1_n_0 ;
  wire \tcp_out_V_keep_V_1_state[1]_i_1_n_0 ;
  wire \tcp_out_V_keep_V_1_state_reg_n_0_[0] ;
  wire tcp_out_V_last_V_1_ack_in;
  wire tcp_out_V_last_V_1_payload_A;
  wire \tcp_out_V_last_V_1_payload_A[0]_i_1_n_0 ;
  wire tcp_out_V_last_V_1_payload_B;
  wire \tcp_out_V_last_V_1_payload_B[0]_i_1_n_0 ;
  wire tcp_out_V_last_V_1_sel;
  wire tcp_out_V_last_V_1_sel_rd_i_1_n_0;
  wire tcp_out_V_last_V_1_sel_wr;
  wire tcp_out_V_last_V_1_sel_wr_i_1_n_0;
  wire \tcp_out_V_last_V_1_state[0]_i_1_n_0 ;
  wire \tcp_out_V_last_V_1_state[1]_i_1_n_0 ;
  wire tcp_out_V_last_V_1_state_cmp_full;
  wire \tcp_out_V_last_V_1_state_reg_n_0_[0] ;
  wire tcp_out_V_strb_V_1_ack_in;
  wire tcp_out_V_strb_V_1_load_B;
  wire [3:0]tcp_out_V_strb_V_1_payload_A;
  wire \tcp_out_V_strb_V_1_payload_A[3]_i_1_n_0 ;
  wire [3:0]tcp_out_V_strb_V_1_payload_B;
  wire tcp_out_V_strb_V_1_sel;
  wire tcp_out_V_strb_V_1_sel_rd_i_1_n_0;
  wire tcp_out_V_strb_V_1_sel_wr;
  wire tcp_out_V_strb_V_1_sel_wr_i_1_n_0;
  wire \tcp_out_V_strb_V_1_state[0]_i_1_n_0 ;
  wire \tcp_out_V_strb_V_1_state[1]_i_1_n_0 ;
  wire \tcp_out_V_strb_V_1_state_reg_n_0_[0] ;
  wire tcp_out_V_user_V_1_ack_in;
  wire tcp_out_V_user_V_1_payload_A;
  wire \tcp_out_V_user_V_1_payload_A[0]_i_1_n_0 ;
  wire tcp_out_V_user_V_1_payload_B;
  wire \tcp_out_V_user_V_1_payload_B[0]_i_1_n_0 ;
  wire tcp_out_V_user_V_1_sel;
  wire tcp_out_V_user_V_1_sel_rd_i_1_n_0;
  wire tcp_out_V_user_V_1_sel_wr;
  wire tcp_out_V_user_V_1_sel_wr_i_1_n_0;
  wire \tcp_out_V_user_V_1_state[0]_i_1_n_0 ;
  wire \tcp_out_V_user_V_1_state[1]_i_1_n_0 ;
  wire tcp_out_V_user_V_1_state_cmp_full;
  wire \tcp_out_V_user_V_1_state_reg_n_0_[0] ;

  assign ap_done = \<const0> ;
  assign ap_ready = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0111)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(ap_CS_fsm_state2),
        .I1(\ap_CS_fsm_reg_n_0_[2] ),
        .I2(\ap_CS_fsm_reg_n_0_[0] ),
        .I3(ap_start),
        .O(ap_NS_fsm[0]));
  LUT6 #(
    .INIT(64'h0B0BB888BBBBB888)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(ap_start),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(tcp_out_V_data_V_1_ack_in),
        .I3(\ap_CS_fsm_reg_n_0_[2] ),
        .I4(ap_CS_fsm_state2),
        .I5(\tcp_in_V_data_V_0_state_reg_n_0_[0] ),
        .O(ap_NS_fsm[1]));
  LUT5 #(
    .INIT(32'h45110111)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(ap_CS_fsm_state2),
        .I2(\ap_CS_fsm_reg_n_0_[2] ),
        .I3(tcp_out_V_data_V_1_ack_in),
        .I4(\tcp_in_V_data_V_0_state_reg_n_0_[0] ),
        .O(ap_NS_fsm[2]));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(\ap_CS_fsm_reg_n_0_[0] ),
        .S(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_state2),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(\ap_CS_fsm_reg_n_0_[2] ),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ap_idle_INST_0
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(ap_start),
        .O(ap_idle));
  LUT3 #(
    .INIT(8'h0D)) 
    \tcp_in_V_data_V_0_payload_A[31]_i_1 
       (.I0(\tcp_in_V_data_V_0_state_reg_n_0_[0] ),
        .I1(tcp_in_V_data_V_0_ack_in),
        .I2(tcp_in_V_data_V_0_sel_wr),
        .O(\tcp_in_V_data_V_0_payload_A[31]_i_1_n_0 ));
  FDRE \tcp_in_V_data_V_0_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(\tcp_in_V_data_V_0_payload_A[31]_i_1_n_0 ),
        .D(tcp_in_TDATA[0]),
        .Q(tcp_in_V_data_V_0_payload_A[0]),
        .R(1'b0));
  FDRE \tcp_in_V_data_V_0_payload_A_reg[10] 
       (.C(ap_clk),
        .CE(\tcp_in_V_data_V_0_payload_A[31]_i_1_n_0 ),
        .D(tcp_in_TDATA[10]),
        .Q(tcp_in_V_data_V_0_payload_A[10]),
        .R(1'b0));
  FDRE \tcp_in_V_data_V_0_payload_A_reg[11] 
       (.C(ap_clk),
        .CE(\tcp_in_V_data_V_0_payload_A[31]_i_1_n_0 ),
        .D(tcp_in_TDATA[11]),
        .Q(tcp_in_V_data_V_0_payload_A[11]),
        .R(1'b0));
  FDRE \tcp_in_V_data_V_0_payload_A_reg[12] 
       (.C(ap_clk),
        .CE(\tcp_in_V_data_V_0_payload_A[31]_i_1_n_0 ),
        .D(tcp_in_TDATA[12]),
        .Q(tcp_in_V_data_V_0_payload_A[12]),
        .R(1'b0));
  FDRE \tcp_in_V_data_V_0_payload_A_reg[13] 
       (.C(ap_clk),
        .CE(\tcp_in_V_data_V_0_payload_A[31]_i_1_n_0 ),
        .D(tcp_in_TDATA[13]),
        .Q(tcp_in_V_data_V_0_payload_A[13]),
        .R(1'b0));
  FDRE \tcp_in_V_data_V_0_payload_A_reg[14] 
       (.C(ap_clk),
        .CE(\tcp_in_V_data_V_0_payload_A[31]_i_1_n_0 ),
        .D(tcp_in_TDATA[14]),
        .Q(tcp_in_V_data_V_0_payload_A[14]),
        .R(1'b0));
  FDRE \tcp_in_V_data_V_0_payload_A_reg[15] 
       (.C(ap_clk),
        .CE(\tcp_in_V_data_V_0_payload_A[31]_i_1_n_0 ),
        .D(tcp_in_TDATA[15]),
        .Q(tcp_in_V_data_V_0_payload_A[15]),
        .R(1'b0));
  FDRE \tcp_in_V_data_V_0_payload_A_reg[16] 
       (.C(ap_clk),
        .CE(\tcp_in_V_data_V_0_payload_A[31]_i_1_n_0 ),
        .D(tcp_in_TDATA[16]),
        .Q(tcp_in_V_data_V_0_payload_A[16]),
        .R(1'b0));
  FDRE \tcp_in_V_data_V_0_payload_A_reg[17] 
       (.C(ap_clk),
        .CE(\tcp_in_V_data_V_0_payload_A[31]_i_1_n_0 ),
        .D(tcp_in_TDATA[17]),
        .Q(tcp_in_V_data_V_0_payload_A[17]),
        .R(1'b0));
  FDRE \tcp_in_V_data_V_0_payload_A_reg[18] 
       (.C(ap_clk),
        .CE(\tcp_in_V_data_V_0_payload_A[31]_i_1_n_0 ),
        .D(tcp_in_TDATA[18]),
        .Q(tcp_in_V_data_V_0_payload_A[18]),
        .R(1'b0));
  FDRE \tcp_in_V_data_V_0_payload_A_reg[19] 
       (.C(ap_clk),
        .CE(\tcp_in_V_data_V_0_payload_A[31]_i_1_n_0 ),
        .D(tcp_in_TDATA[19]),
        .Q(tcp_in_V_data_V_0_payload_A[19]),
        .R(1'b0));
  FDRE \tcp_in_V_data_V_0_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(\tcp_in_V_data_V_0_payload_A[31]_i_1_n_0 ),
        .D(tcp_in_TDATA[1]),
        .Q(tcp_in_V_data_V_0_payload_A[1]),
        .R(1'b0));
  FDRE \tcp_in_V_data_V_0_payload_A_reg[20] 
       (.C(ap_clk),
        .CE(\tcp_in_V_data_V_0_payload_A[31]_i_1_n_0 ),
        .D(tcp_in_TDATA[20]),
        .Q(tcp_in_V_data_V_0_payload_A[20]),
        .R(1'b0));
  FDRE \tcp_in_V_data_V_0_payload_A_reg[21] 
       (.C(ap_clk),
        .CE(\tcp_in_V_data_V_0_payload_A[31]_i_1_n_0 ),
        .D(tcp_in_TDATA[21]),
        .Q(tcp_in_V_data_V_0_payload_A[21]),
        .R(1'b0));
  FDRE \tcp_in_V_data_V_0_payload_A_reg[22] 
       (.C(ap_clk),
        .CE(\tcp_in_V_data_V_0_payload_A[31]_i_1_n_0 ),
        .D(tcp_in_TDATA[22]),
        .Q(tcp_in_V_data_V_0_payload_A[22]),
        .R(1'b0));
  FDRE \tcp_in_V_data_V_0_payload_A_reg[23] 
       (.C(ap_clk),
        .CE(\tcp_in_V_data_V_0_payload_A[31]_i_1_n_0 ),
        .D(tcp_in_TDATA[23]),
        .Q(tcp_in_V_data_V_0_payload_A[23]),
        .R(1'b0));
  FDRE \tcp_in_V_data_V_0_payload_A_reg[24] 
       (.C(ap_clk),
        .CE(\tcp_in_V_data_V_0_payload_A[31]_i_1_n_0 ),
        .D(tcp_in_TDATA[24]),
        .Q(tcp_in_V_data_V_0_payload_A[24]),
        .R(1'b0));
  FDRE \tcp_in_V_data_V_0_payload_A_reg[25] 
       (.C(ap_clk),
        .CE(\tcp_in_V_data_V_0_payload_A[31]_i_1_n_0 ),
        .D(tcp_in_TDATA[25]),
        .Q(tcp_in_V_data_V_0_payload_A[25]),
        .R(1'b0));
  FDRE \tcp_in_V_data_V_0_payload_A_reg[26] 
       (.C(ap_clk),
        .CE(\tcp_in_V_data_V_0_payload_A[31]_i_1_n_0 ),
        .D(tcp_in_TDATA[26]),
        .Q(tcp_in_V_data_V_0_payload_A[26]),
        .R(1'b0));
  FDRE \tcp_in_V_data_V_0_payload_A_reg[27] 
       (.C(ap_clk),
        .CE(\tcp_in_V_data_V_0_payload_A[31]_i_1_n_0 ),
        .D(tcp_in_TDATA[27]),
        .Q(tcp_in_V_data_V_0_payload_A[27]),
        .R(1'b0));
  FDRE \tcp_in_V_data_V_0_payload_A_reg[28] 
       (.C(ap_clk),
        .CE(\tcp_in_V_data_V_0_payload_A[31]_i_1_n_0 ),
        .D(tcp_in_TDATA[28]),
        .Q(tcp_in_V_data_V_0_payload_A[28]),
        .R(1'b0));
  FDRE \tcp_in_V_data_V_0_payload_A_reg[29] 
       (.C(ap_clk),
        .CE(\tcp_in_V_data_V_0_payload_A[31]_i_1_n_0 ),
        .D(tcp_in_TDATA[29]),
        .Q(tcp_in_V_data_V_0_payload_A[29]),
        .R(1'b0));
  FDRE \tcp_in_V_data_V_0_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(\tcp_in_V_data_V_0_payload_A[31]_i_1_n_0 ),
        .D(tcp_in_TDATA[2]),
        .Q(tcp_in_V_data_V_0_payload_A[2]),
        .R(1'b0));
  FDRE \tcp_in_V_data_V_0_payload_A_reg[30] 
       (.C(ap_clk),
        .CE(\tcp_in_V_data_V_0_payload_A[31]_i_1_n_0 ),
        .D(tcp_in_TDATA[30]),
        .Q(tcp_in_V_data_V_0_payload_A[30]),
        .R(1'b0));
  FDRE \tcp_in_V_data_V_0_payload_A_reg[31] 
       (.C(ap_clk),
        .CE(\tcp_in_V_data_V_0_payload_A[31]_i_1_n_0 ),
        .D(tcp_in_TDATA[31]),
        .Q(tcp_in_V_data_V_0_payload_A[31]),
        .R(1'b0));
  FDRE \tcp_in_V_data_V_0_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(\tcp_in_V_data_V_0_payload_A[31]_i_1_n_0 ),
        .D(tcp_in_TDATA[3]),
        .Q(tcp_in_V_data_V_0_payload_A[3]),
        .R(1'b0));
  FDRE \tcp_in_V_data_V_0_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(\tcp_in_V_data_V_0_payload_A[31]_i_1_n_0 ),
        .D(tcp_in_TDATA[4]),
        .Q(tcp_in_V_data_V_0_payload_A[4]),
        .R(1'b0));
  FDRE \tcp_in_V_data_V_0_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(\tcp_in_V_data_V_0_payload_A[31]_i_1_n_0 ),
        .D(tcp_in_TDATA[5]),
        .Q(tcp_in_V_data_V_0_payload_A[5]),
        .R(1'b0));
  FDRE \tcp_in_V_data_V_0_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(\tcp_in_V_data_V_0_payload_A[31]_i_1_n_0 ),
        .D(tcp_in_TDATA[6]),
        .Q(tcp_in_V_data_V_0_payload_A[6]),
        .R(1'b0));
  FDRE \tcp_in_V_data_V_0_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(\tcp_in_V_data_V_0_payload_A[31]_i_1_n_0 ),
        .D(tcp_in_TDATA[7]),
        .Q(tcp_in_V_data_V_0_payload_A[7]),
        .R(1'b0));
  FDRE \tcp_in_V_data_V_0_payload_A_reg[8] 
       (.C(ap_clk),
        .CE(\tcp_in_V_data_V_0_payload_A[31]_i_1_n_0 ),
        .D(tcp_in_TDATA[8]),
        .Q(tcp_in_V_data_V_0_payload_A[8]),
        .R(1'b0));
  FDRE \tcp_in_V_data_V_0_payload_A_reg[9] 
       (.C(ap_clk),
        .CE(\tcp_in_V_data_V_0_payload_A[31]_i_1_n_0 ),
        .D(tcp_in_TDATA[9]),
        .Q(tcp_in_V_data_V_0_payload_A[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hA2)) 
    \tcp_in_V_data_V_0_payload_B[31]_i_1 
       (.I0(tcp_in_V_data_V_0_sel_wr),
        .I1(\tcp_in_V_data_V_0_state_reg_n_0_[0] ),
        .I2(tcp_in_V_data_V_0_ack_in),
        .O(tcp_in_V_data_V_0_load_B));
  FDRE \tcp_in_V_data_V_0_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(tcp_in_V_data_V_0_load_B),
        .D(tcp_in_TDATA[0]),
        .Q(tcp_in_V_data_V_0_payload_B[0]),
        .R(1'b0));
  FDRE \tcp_in_V_data_V_0_payload_B_reg[10] 
       (.C(ap_clk),
        .CE(tcp_in_V_data_V_0_load_B),
        .D(tcp_in_TDATA[10]),
        .Q(tcp_in_V_data_V_0_payload_B[10]),
        .R(1'b0));
  FDRE \tcp_in_V_data_V_0_payload_B_reg[11] 
       (.C(ap_clk),
        .CE(tcp_in_V_data_V_0_load_B),
        .D(tcp_in_TDATA[11]),
        .Q(tcp_in_V_data_V_0_payload_B[11]),
        .R(1'b0));
  FDRE \tcp_in_V_data_V_0_payload_B_reg[12] 
       (.C(ap_clk),
        .CE(tcp_in_V_data_V_0_load_B),
        .D(tcp_in_TDATA[12]),
        .Q(tcp_in_V_data_V_0_payload_B[12]),
        .R(1'b0));
  FDRE \tcp_in_V_data_V_0_payload_B_reg[13] 
       (.C(ap_clk),
        .CE(tcp_in_V_data_V_0_load_B),
        .D(tcp_in_TDATA[13]),
        .Q(tcp_in_V_data_V_0_payload_B[13]),
        .R(1'b0));
  FDRE \tcp_in_V_data_V_0_payload_B_reg[14] 
       (.C(ap_clk),
        .CE(tcp_in_V_data_V_0_load_B),
        .D(tcp_in_TDATA[14]),
        .Q(tcp_in_V_data_V_0_payload_B[14]),
        .R(1'b0));
  FDRE \tcp_in_V_data_V_0_payload_B_reg[15] 
       (.C(ap_clk),
        .CE(tcp_in_V_data_V_0_load_B),
        .D(tcp_in_TDATA[15]),
        .Q(tcp_in_V_data_V_0_payload_B[15]),
        .R(1'b0));
  FDRE \tcp_in_V_data_V_0_payload_B_reg[16] 
       (.C(ap_clk),
        .CE(tcp_in_V_data_V_0_load_B),
        .D(tcp_in_TDATA[16]),
        .Q(tcp_in_V_data_V_0_payload_B[16]),
        .R(1'b0));
  FDRE \tcp_in_V_data_V_0_payload_B_reg[17] 
       (.C(ap_clk),
        .CE(tcp_in_V_data_V_0_load_B),
        .D(tcp_in_TDATA[17]),
        .Q(tcp_in_V_data_V_0_payload_B[17]),
        .R(1'b0));
  FDRE \tcp_in_V_data_V_0_payload_B_reg[18] 
       (.C(ap_clk),
        .CE(tcp_in_V_data_V_0_load_B),
        .D(tcp_in_TDATA[18]),
        .Q(tcp_in_V_data_V_0_payload_B[18]),
        .R(1'b0));
  FDRE \tcp_in_V_data_V_0_payload_B_reg[19] 
       (.C(ap_clk),
        .CE(tcp_in_V_data_V_0_load_B),
        .D(tcp_in_TDATA[19]),
        .Q(tcp_in_V_data_V_0_payload_B[19]),
        .R(1'b0));
  FDRE \tcp_in_V_data_V_0_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(tcp_in_V_data_V_0_load_B),
        .D(tcp_in_TDATA[1]),
        .Q(tcp_in_V_data_V_0_payload_B[1]),
        .R(1'b0));
  FDRE \tcp_in_V_data_V_0_payload_B_reg[20] 
       (.C(ap_clk),
        .CE(tcp_in_V_data_V_0_load_B),
        .D(tcp_in_TDATA[20]),
        .Q(tcp_in_V_data_V_0_payload_B[20]),
        .R(1'b0));
  FDRE \tcp_in_V_data_V_0_payload_B_reg[21] 
       (.C(ap_clk),
        .CE(tcp_in_V_data_V_0_load_B),
        .D(tcp_in_TDATA[21]),
        .Q(tcp_in_V_data_V_0_payload_B[21]),
        .R(1'b0));
  FDRE \tcp_in_V_data_V_0_payload_B_reg[22] 
       (.C(ap_clk),
        .CE(tcp_in_V_data_V_0_load_B),
        .D(tcp_in_TDATA[22]),
        .Q(tcp_in_V_data_V_0_payload_B[22]),
        .R(1'b0));
  FDRE \tcp_in_V_data_V_0_payload_B_reg[23] 
       (.C(ap_clk),
        .CE(tcp_in_V_data_V_0_load_B),
        .D(tcp_in_TDATA[23]),
        .Q(tcp_in_V_data_V_0_payload_B[23]),
        .R(1'b0));
  FDRE \tcp_in_V_data_V_0_payload_B_reg[24] 
       (.C(ap_clk),
        .CE(tcp_in_V_data_V_0_load_B),
        .D(tcp_in_TDATA[24]),
        .Q(tcp_in_V_data_V_0_payload_B[24]),
        .R(1'b0));
  FDRE \tcp_in_V_data_V_0_payload_B_reg[25] 
       (.C(ap_clk),
        .CE(tcp_in_V_data_V_0_load_B),
        .D(tcp_in_TDATA[25]),
        .Q(tcp_in_V_data_V_0_payload_B[25]),
        .R(1'b0));
  FDRE \tcp_in_V_data_V_0_payload_B_reg[26] 
       (.C(ap_clk),
        .CE(tcp_in_V_data_V_0_load_B),
        .D(tcp_in_TDATA[26]),
        .Q(tcp_in_V_data_V_0_payload_B[26]),
        .R(1'b0));
  FDRE \tcp_in_V_data_V_0_payload_B_reg[27] 
       (.C(ap_clk),
        .CE(tcp_in_V_data_V_0_load_B),
        .D(tcp_in_TDATA[27]),
        .Q(tcp_in_V_data_V_0_payload_B[27]),
        .R(1'b0));
  FDRE \tcp_in_V_data_V_0_payload_B_reg[28] 
       (.C(ap_clk),
        .CE(tcp_in_V_data_V_0_load_B),
        .D(tcp_in_TDATA[28]),
        .Q(tcp_in_V_data_V_0_payload_B[28]),
        .R(1'b0));
  FDRE \tcp_in_V_data_V_0_payload_B_reg[29] 
       (.C(ap_clk),
        .CE(tcp_in_V_data_V_0_load_B),
        .D(tcp_in_TDATA[29]),
        .Q(tcp_in_V_data_V_0_payload_B[29]),
        .R(1'b0));
  FDRE \tcp_in_V_data_V_0_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(tcp_in_V_data_V_0_load_B),
        .D(tcp_in_TDATA[2]),
        .Q(tcp_in_V_data_V_0_payload_B[2]),
        .R(1'b0));
  FDRE \tcp_in_V_data_V_0_payload_B_reg[30] 
       (.C(ap_clk),
        .CE(tcp_in_V_data_V_0_load_B),
        .D(tcp_in_TDATA[30]),
        .Q(tcp_in_V_data_V_0_payload_B[30]),
        .R(1'b0));
  FDRE \tcp_in_V_data_V_0_payload_B_reg[31] 
       (.C(ap_clk),
        .CE(tcp_in_V_data_V_0_load_B),
        .D(tcp_in_TDATA[31]),
        .Q(tcp_in_V_data_V_0_payload_B[31]),
        .R(1'b0));
  FDRE \tcp_in_V_data_V_0_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(tcp_in_V_data_V_0_load_B),
        .D(tcp_in_TDATA[3]),
        .Q(tcp_in_V_data_V_0_payload_B[3]),
        .R(1'b0));
  FDRE \tcp_in_V_data_V_0_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(tcp_in_V_data_V_0_load_B),
        .D(tcp_in_TDATA[4]),
        .Q(tcp_in_V_data_V_0_payload_B[4]),
        .R(1'b0));
  FDRE \tcp_in_V_data_V_0_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(tcp_in_V_data_V_0_load_B),
        .D(tcp_in_TDATA[5]),
        .Q(tcp_in_V_data_V_0_payload_B[5]),
        .R(1'b0));
  FDRE \tcp_in_V_data_V_0_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(tcp_in_V_data_V_0_load_B),
        .D(tcp_in_TDATA[6]),
        .Q(tcp_in_V_data_V_0_payload_B[6]),
        .R(1'b0));
  FDRE \tcp_in_V_data_V_0_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(tcp_in_V_data_V_0_load_B),
        .D(tcp_in_TDATA[7]),
        .Q(tcp_in_V_data_V_0_payload_B[7]),
        .R(1'b0));
  FDRE \tcp_in_V_data_V_0_payload_B_reg[8] 
       (.C(ap_clk),
        .CE(tcp_in_V_data_V_0_load_B),
        .D(tcp_in_TDATA[8]),
        .Q(tcp_in_V_data_V_0_payload_B[8]),
        .R(1'b0));
  FDRE \tcp_in_V_data_V_0_payload_B_reg[9] 
       (.C(ap_clk),
        .CE(tcp_in_V_data_V_0_load_B),
        .D(tcp_in_TDATA[9]),
        .Q(tcp_in_V_data_V_0_payload_B[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    tcp_in_V_data_V_0_sel_rd_i_1
       (.I0(ap_CS_fsm_state2),
        .I1(\tcp_in_V_data_V_0_state_reg_n_0_[0] ),
        .I2(tcp_out_V_data_V_1_ack_in),
        .I3(tcp_in_V_data_V_0_sel),
        .O(tcp_in_V_data_V_0_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tcp_in_V_data_V_0_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(tcp_in_V_data_V_0_sel_rd_i_1_n_0),
        .Q(tcp_in_V_data_V_0_sel),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h78)) 
    tcp_in_V_data_V_0_sel_wr_i_1
       (.I0(tcp_in_TVALID),
        .I1(tcp_in_V_data_V_0_ack_in),
        .I2(tcp_in_V_data_V_0_sel_wr),
        .O(tcp_in_V_data_V_0_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tcp_in_V_data_V_0_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(tcp_in_V_data_V_0_sel_wr_i_1_n_0),
        .Q(tcp_in_V_data_V_0_sel_wr),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hA820A8A0A8A0A8A0)) 
    \tcp_in_V_data_V_0_state[0]_i_1 
       (.I0(ap_rst_n),
        .I1(tcp_in_V_data_V_0_ack_in),
        .I2(\tcp_in_V_data_V_0_state_reg_n_0_[0] ),
        .I3(tcp_in_TVALID),
        .I4(ap_CS_fsm_state2),
        .I5(tcp_out_V_data_V_1_ack_in),
        .O(\tcp_in_V_data_V_0_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h8F88FFFF)) 
    \tcp_in_V_data_V_0_state[1]_i_1 
       (.I0(ap_CS_fsm_state2),
        .I1(tcp_out_V_data_V_1_ack_in),
        .I2(tcp_in_TVALID),
        .I3(tcp_in_V_data_V_0_ack_in),
        .I4(\tcp_in_V_data_V_0_state_reg_n_0_[0] ),
        .O(\tcp_in_V_data_V_0_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tcp_in_V_data_V_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tcp_in_V_data_V_0_state[0]_i_1_n_0 ),
        .Q(\tcp_in_V_data_V_0_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tcp_in_V_data_V_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tcp_in_V_data_V_0_state[1]_i_1_n_0 ),
        .Q(tcp_in_V_data_V_0_ack_in),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hFFAE00A2)) 
    \tcp_in_V_dest_V_0_payload_A[0]_i_1 
       (.I0(tcp_in_TDEST),
        .I1(\tcp_in_V_dest_V_0_state_reg_n_0_[0] ),
        .I2(tcp_in_TREADY),
        .I3(tcp_in_V_dest_V_0_sel_wr),
        .I4(tcp_in_V_dest_V_0_payload_A),
        .O(\tcp_in_V_dest_V_0_payload_A[0]_i_1_n_0 ));
  FDRE \tcp_in_V_dest_V_0_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tcp_in_V_dest_V_0_payload_A[0]_i_1_n_0 ),
        .Q(tcp_in_V_dest_V_0_payload_A),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBBFB8808)) 
    \tcp_in_V_dest_V_0_payload_B[0]_i_1 
       (.I0(tcp_in_TDEST),
        .I1(tcp_in_V_dest_V_0_sel_wr),
        .I2(\tcp_in_V_dest_V_0_state_reg_n_0_[0] ),
        .I3(tcp_in_TREADY),
        .I4(tcp_in_V_dest_V_0_payload_B),
        .O(\tcp_in_V_dest_V_0_payload_B[0]_i_1_n_0 ));
  FDRE \tcp_in_V_dest_V_0_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tcp_in_V_dest_V_0_payload_B[0]_i_1_n_0 ),
        .Q(tcp_in_V_dest_V_0_payload_B),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    tcp_in_V_dest_V_0_sel_rd_i_1
       (.I0(ap_CS_fsm_state2),
        .I1(\tcp_in_V_data_V_0_state_reg_n_0_[0] ),
        .I2(tcp_out_V_data_V_1_ack_in),
        .I3(\tcp_in_V_dest_V_0_state_reg_n_0_[0] ),
        .I4(tcp_in_V_dest_V_0_sel),
        .O(tcp_in_V_dest_V_0_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tcp_in_V_dest_V_0_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(tcp_in_V_dest_V_0_sel_rd_i_1_n_0),
        .Q(tcp_in_V_dest_V_0_sel),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'h78)) 
    tcp_in_V_dest_V_0_sel_wr_i_1
       (.I0(tcp_in_TVALID),
        .I1(tcp_in_TREADY),
        .I2(tcp_in_V_dest_V_0_sel_wr),
        .O(tcp_in_V_dest_V_0_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tcp_in_V_dest_V_0_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(tcp_in_V_dest_V_0_sel_wr_i_1_n_0),
        .Q(tcp_in_V_dest_V_0_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hA2A0AA00)) 
    \tcp_in_V_dest_V_0_state[0]_i_1 
       (.I0(ap_rst_n),
        .I1(p_186_in),
        .I2(tcp_in_TVALID),
        .I3(\tcp_in_V_dest_V_0_state_reg_n_0_[0] ),
        .I4(tcp_in_TREADY),
        .O(\tcp_in_V_dest_V_0_state[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \tcp_in_V_dest_V_0_state[1]_i_1 
       (.I0(ap_rst_n),
        .O(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h80FF8080FFFFFFFF)) 
    \tcp_in_V_dest_V_0_state[1]_i_2 
       (.I0(ap_CS_fsm_state2),
        .I1(\tcp_in_V_data_V_0_state_reg_n_0_[0] ),
        .I2(tcp_out_V_data_V_1_ack_in),
        .I3(tcp_in_TVALID),
        .I4(tcp_in_TREADY),
        .I5(\tcp_in_V_dest_V_0_state_reg_n_0_[0] ),
        .O(\tcp_in_V_dest_V_0_state[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tcp_in_V_dest_V_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tcp_in_V_dest_V_0_state[0]_i_1_n_0 ),
        .Q(\tcp_in_V_dest_V_0_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tcp_in_V_dest_V_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tcp_in_V_dest_V_0_state[1]_i_2_n_0 ),
        .Q(tcp_in_TREADY),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hFFAE00A2)) 
    \tcp_in_V_id_V_0_payload_A[0]_i_1 
       (.I0(tcp_in_TID),
        .I1(\tcp_in_V_id_V_0_state_reg_n_0_[0] ),
        .I2(tcp_in_V_id_V_0_ack_in),
        .I3(tcp_in_V_id_V_0_sel_wr),
        .I4(tcp_in_V_id_V_0_payload_A),
        .O(\tcp_in_V_id_V_0_payload_A[0]_i_1_n_0 ));
  FDRE \tcp_in_V_id_V_0_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tcp_in_V_id_V_0_payload_A[0]_i_1_n_0 ),
        .Q(tcp_in_V_id_V_0_payload_A),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBBFB8808)) 
    \tcp_in_V_id_V_0_payload_B[0]_i_1 
       (.I0(tcp_in_TID),
        .I1(tcp_in_V_id_V_0_sel_wr),
        .I2(\tcp_in_V_id_V_0_state_reg_n_0_[0] ),
        .I3(tcp_in_V_id_V_0_ack_in),
        .I4(tcp_in_V_id_V_0_payload_B),
        .O(\tcp_in_V_id_V_0_payload_B[0]_i_1_n_0 ));
  FDRE \tcp_in_V_id_V_0_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tcp_in_V_id_V_0_payload_B[0]_i_1_n_0 ),
        .Q(tcp_in_V_id_V_0_payload_B),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    tcp_in_V_id_V_0_sel_rd_i_1
       (.I0(ap_CS_fsm_state2),
        .I1(\tcp_in_V_data_V_0_state_reg_n_0_[0] ),
        .I2(tcp_out_V_data_V_1_ack_in),
        .I3(\tcp_in_V_id_V_0_state_reg_n_0_[0] ),
        .I4(tcp_in_V_id_V_0_sel),
        .O(tcp_in_V_id_V_0_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tcp_in_V_id_V_0_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(tcp_in_V_id_V_0_sel_rd_i_1_n_0),
        .Q(tcp_in_V_id_V_0_sel),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h78)) 
    tcp_in_V_id_V_0_sel_wr_i_1
       (.I0(tcp_in_TVALID),
        .I1(tcp_in_V_id_V_0_ack_in),
        .I2(tcp_in_V_id_V_0_sel_wr),
        .O(tcp_in_V_id_V_0_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tcp_in_V_id_V_0_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(tcp_in_V_id_V_0_sel_wr_i_1_n_0),
        .Q(tcp_in_V_id_V_0_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hA820A8A0)) 
    \tcp_in_V_id_V_0_state[0]_i_1 
       (.I0(ap_rst_n),
        .I1(tcp_in_V_id_V_0_ack_in),
        .I2(\tcp_in_V_id_V_0_state_reg_n_0_[0] ),
        .I3(tcp_in_TVALID),
        .I4(p_186_in),
        .O(\tcp_in_V_id_V_0_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80FF8080FFFFFFFF)) 
    \tcp_in_V_id_V_0_state[1]_i_1 
       (.I0(ap_CS_fsm_state2),
        .I1(\tcp_in_V_data_V_0_state_reg_n_0_[0] ),
        .I2(tcp_out_V_data_V_1_ack_in),
        .I3(tcp_in_TVALID),
        .I4(tcp_in_V_id_V_0_ack_in),
        .I5(\tcp_in_V_id_V_0_state_reg_n_0_[0] ),
        .O(\tcp_in_V_id_V_0_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tcp_in_V_id_V_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tcp_in_V_id_V_0_state[0]_i_1_n_0 ),
        .Q(\tcp_in_V_id_V_0_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tcp_in_V_id_V_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tcp_in_V_id_V_0_state[1]_i_1_n_0 ),
        .Q(tcp_in_V_id_V_0_ack_in),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'h0D)) 
    \tcp_in_V_keep_V_0_payload_A[3]_i_1 
       (.I0(\tcp_in_V_keep_V_0_state_reg_n_0_[0] ),
        .I1(tcp_in_V_keep_V_0_ack_in),
        .I2(tcp_in_V_keep_V_0_sel_wr),
        .O(\tcp_in_V_keep_V_0_payload_A[3]_i_1_n_0 ));
  FDRE \tcp_in_V_keep_V_0_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(\tcp_in_V_keep_V_0_payload_A[3]_i_1_n_0 ),
        .D(tcp_in_TKEEP[0]),
        .Q(tcp_in_V_keep_V_0_payload_A[0]),
        .R(1'b0));
  FDRE \tcp_in_V_keep_V_0_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(\tcp_in_V_keep_V_0_payload_A[3]_i_1_n_0 ),
        .D(tcp_in_TKEEP[1]),
        .Q(tcp_in_V_keep_V_0_payload_A[1]),
        .R(1'b0));
  FDRE \tcp_in_V_keep_V_0_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(\tcp_in_V_keep_V_0_payload_A[3]_i_1_n_0 ),
        .D(tcp_in_TKEEP[2]),
        .Q(tcp_in_V_keep_V_0_payload_A[2]),
        .R(1'b0));
  FDRE \tcp_in_V_keep_V_0_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(\tcp_in_V_keep_V_0_payload_A[3]_i_1_n_0 ),
        .D(tcp_in_TKEEP[3]),
        .Q(tcp_in_V_keep_V_0_payload_A[3]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hA2)) 
    \tcp_in_V_keep_V_0_payload_B[3]_i_1 
       (.I0(tcp_in_V_keep_V_0_sel_wr),
        .I1(\tcp_in_V_keep_V_0_state_reg_n_0_[0] ),
        .I2(tcp_in_V_keep_V_0_ack_in),
        .O(tcp_in_V_keep_V_0_load_B));
  FDRE \tcp_in_V_keep_V_0_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(tcp_in_V_keep_V_0_load_B),
        .D(tcp_in_TKEEP[0]),
        .Q(tcp_in_V_keep_V_0_payload_B[0]),
        .R(1'b0));
  FDRE \tcp_in_V_keep_V_0_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(tcp_in_V_keep_V_0_load_B),
        .D(tcp_in_TKEEP[1]),
        .Q(tcp_in_V_keep_V_0_payload_B[1]),
        .R(1'b0));
  FDRE \tcp_in_V_keep_V_0_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(tcp_in_V_keep_V_0_load_B),
        .D(tcp_in_TKEEP[2]),
        .Q(tcp_in_V_keep_V_0_payload_B[2]),
        .R(1'b0));
  FDRE \tcp_in_V_keep_V_0_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(tcp_in_V_keep_V_0_load_B),
        .D(tcp_in_TKEEP[3]),
        .Q(tcp_in_V_keep_V_0_payload_B[3]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    tcp_in_V_keep_V_0_sel_rd_i_1
       (.I0(ap_CS_fsm_state2),
        .I1(\tcp_in_V_data_V_0_state_reg_n_0_[0] ),
        .I2(tcp_out_V_data_V_1_ack_in),
        .I3(\tcp_in_V_keep_V_0_state_reg_n_0_[0] ),
        .I4(tcp_in_V_keep_V_0_sel),
        .O(tcp_in_V_keep_V_0_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tcp_in_V_keep_V_0_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(tcp_in_V_keep_V_0_sel_rd_i_1_n_0),
        .Q(tcp_in_V_keep_V_0_sel),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h78)) 
    tcp_in_V_keep_V_0_sel_wr_i_1
       (.I0(tcp_in_TVALID),
        .I1(tcp_in_V_keep_V_0_ack_in),
        .I2(tcp_in_V_keep_V_0_sel_wr),
        .O(tcp_in_V_keep_V_0_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tcp_in_V_keep_V_0_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(tcp_in_V_keep_V_0_sel_wr_i_1_n_0),
        .Q(tcp_in_V_keep_V_0_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hA820A8A0)) 
    \tcp_in_V_keep_V_0_state[0]_i_1 
       (.I0(ap_rst_n),
        .I1(tcp_in_V_keep_V_0_ack_in),
        .I2(\tcp_in_V_keep_V_0_state_reg_n_0_[0] ),
        .I3(tcp_in_TVALID),
        .I4(p_186_in),
        .O(\tcp_in_V_keep_V_0_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80FF8080FFFFFFFF)) 
    \tcp_in_V_keep_V_0_state[1]_i_1 
       (.I0(ap_CS_fsm_state2),
        .I1(\tcp_in_V_data_V_0_state_reg_n_0_[0] ),
        .I2(tcp_out_V_data_V_1_ack_in),
        .I3(tcp_in_TVALID),
        .I4(tcp_in_V_keep_V_0_ack_in),
        .I5(\tcp_in_V_keep_V_0_state_reg_n_0_[0] ),
        .O(\tcp_in_V_keep_V_0_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tcp_in_V_keep_V_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tcp_in_V_keep_V_0_state[0]_i_1_n_0 ),
        .Q(\tcp_in_V_keep_V_0_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tcp_in_V_keep_V_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tcp_in_V_keep_V_0_state[1]_i_1_n_0 ),
        .Q(tcp_in_V_keep_V_0_ack_in),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hFFAE00A2)) 
    \tcp_in_V_last_V_0_payload_A[0]_i_1 
       (.I0(tcp_in_TLAST),
        .I1(\tcp_in_V_last_V_0_state_reg_n_0_[0] ),
        .I2(tcp_in_V_last_V_0_ack_in),
        .I3(tcp_in_V_last_V_0_sel_wr),
        .I4(tcp_in_V_last_V_0_payload_A),
        .O(\tcp_in_V_last_V_0_payload_A[0]_i_1_n_0 ));
  FDRE \tcp_in_V_last_V_0_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tcp_in_V_last_V_0_payload_A[0]_i_1_n_0 ),
        .Q(tcp_in_V_last_V_0_payload_A),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBBFB8808)) 
    \tcp_in_V_last_V_0_payload_B[0]_i_1 
       (.I0(tcp_in_TLAST),
        .I1(tcp_in_V_last_V_0_sel_wr),
        .I2(\tcp_in_V_last_V_0_state_reg_n_0_[0] ),
        .I3(tcp_in_V_last_V_0_ack_in),
        .I4(tcp_in_V_last_V_0_payload_B),
        .O(\tcp_in_V_last_V_0_payload_B[0]_i_1_n_0 ));
  FDRE \tcp_in_V_last_V_0_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tcp_in_V_last_V_0_payload_B[0]_i_1_n_0 ),
        .Q(tcp_in_V_last_V_0_payload_B),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    tcp_in_V_last_V_0_sel_rd_i_1
       (.I0(ap_CS_fsm_state2),
        .I1(\tcp_in_V_data_V_0_state_reg_n_0_[0] ),
        .I2(tcp_out_V_data_V_1_ack_in),
        .I3(\tcp_in_V_last_V_0_state_reg_n_0_[0] ),
        .I4(tcp_in_V_last_V_0_sel),
        .O(tcp_in_V_last_V_0_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tcp_in_V_last_V_0_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(tcp_in_V_last_V_0_sel_rd_i_1_n_0),
        .Q(tcp_in_V_last_V_0_sel),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h78)) 
    tcp_in_V_last_V_0_sel_wr_i_1
       (.I0(tcp_in_TVALID),
        .I1(tcp_in_V_last_V_0_ack_in),
        .I2(tcp_in_V_last_V_0_sel_wr),
        .O(tcp_in_V_last_V_0_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tcp_in_V_last_V_0_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(tcp_in_V_last_V_0_sel_wr_i_1_n_0),
        .Q(tcp_in_V_last_V_0_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hA820A8A0)) 
    \tcp_in_V_last_V_0_state[0]_i_1 
       (.I0(ap_rst_n),
        .I1(tcp_in_V_last_V_0_ack_in),
        .I2(\tcp_in_V_last_V_0_state_reg_n_0_[0] ),
        .I3(tcp_in_TVALID),
        .I4(p_186_in),
        .O(\tcp_in_V_last_V_0_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80FF8080FFFFFFFF)) 
    \tcp_in_V_last_V_0_state[1]_i_1 
       (.I0(ap_CS_fsm_state2),
        .I1(\tcp_in_V_data_V_0_state_reg_n_0_[0] ),
        .I2(tcp_out_V_data_V_1_ack_in),
        .I3(tcp_in_TVALID),
        .I4(tcp_in_V_last_V_0_ack_in),
        .I5(\tcp_in_V_last_V_0_state_reg_n_0_[0] ),
        .O(\tcp_in_V_last_V_0_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tcp_in_V_last_V_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tcp_in_V_last_V_0_state[0]_i_1_n_0 ),
        .Q(\tcp_in_V_last_V_0_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tcp_in_V_last_V_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tcp_in_V_last_V_0_state[1]_i_1_n_0 ),
        .Q(tcp_in_V_last_V_0_ack_in),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'h0D)) 
    \tcp_in_V_strb_V_0_payload_A[3]_i_1 
       (.I0(\tcp_in_V_strb_V_0_state_reg_n_0_[0] ),
        .I1(tcp_in_V_strb_V_0_ack_in),
        .I2(tcp_in_V_strb_V_0_sel_wr),
        .O(\tcp_in_V_strb_V_0_payload_A[3]_i_1_n_0 ));
  FDRE \tcp_in_V_strb_V_0_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(\tcp_in_V_strb_V_0_payload_A[3]_i_1_n_0 ),
        .D(tcp_in_TSTRB[0]),
        .Q(tcp_in_V_strb_V_0_payload_A[0]),
        .R(1'b0));
  FDRE \tcp_in_V_strb_V_0_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(\tcp_in_V_strb_V_0_payload_A[3]_i_1_n_0 ),
        .D(tcp_in_TSTRB[1]),
        .Q(tcp_in_V_strb_V_0_payload_A[1]),
        .R(1'b0));
  FDRE \tcp_in_V_strb_V_0_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(\tcp_in_V_strb_V_0_payload_A[3]_i_1_n_0 ),
        .D(tcp_in_TSTRB[2]),
        .Q(tcp_in_V_strb_V_0_payload_A[2]),
        .R(1'b0));
  FDRE \tcp_in_V_strb_V_0_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(\tcp_in_V_strb_V_0_payload_A[3]_i_1_n_0 ),
        .D(tcp_in_TSTRB[3]),
        .Q(tcp_in_V_strb_V_0_payload_A[3]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hA2)) 
    \tcp_in_V_strb_V_0_payload_B[3]_i_1 
       (.I0(tcp_in_V_strb_V_0_sel_wr),
        .I1(\tcp_in_V_strb_V_0_state_reg_n_0_[0] ),
        .I2(tcp_in_V_strb_V_0_ack_in),
        .O(tcp_in_V_strb_V_0_load_B));
  FDRE \tcp_in_V_strb_V_0_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(tcp_in_V_strb_V_0_load_B),
        .D(tcp_in_TSTRB[0]),
        .Q(tcp_in_V_strb_V_0_payload_B[0]),
        .R(1'b0));
  FDRE \tcp_in_V_strb_V_0_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(tcp_in_V_strb_V_0_load_B),
        .D(tcp_in_TSTRB[1]),
        .Q(tcp_in_V_strb_V_0_payload_B[1]),
        .R(1'b0));
  FDRE \tcp_in_V_strb_V_0_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(tcp_in_V_strb_V_0_load_B),
        .D(tcp_in_TSTRB[2]),
        .Q(tcp_in_V_strb_V_0_payload_B[2]),
        .R(1'b0));
  FDRE \tcp_in_V_strb_V_0_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(tcp_in_V_strb_V_0_load_B),
        .D(tcp_in_TSTRB[3]),
        .Q(tcp_in_V_strb_V_0_payload_B[3]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    tcp_in_V_strb_V_0_sel_rd_i_1
       (.I0(ap_CS_fsm_state2),
        .I1(\tcp_in_V_data_V_0_state_reg_n_0_[0] ),
        .I2(tcp_out_V_data_V_1_ack_in),
        .I3(\tcp_in_V_strb_V_0_state_reg_n_0_[0] ),
        .I4(tcp_in_V_strb_V_0_sel),
        .O(tcp_in_V_strb_V_0_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tcp_in_V_strb_V_0_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(tcp_in_V_strb_V_0_sel_rd_i_1_n_0),
        .Q(tcp_in_V_strb_V_0_sel),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h78)) 
    tcp_in_V_strb_V_0_sel_wr_i_1
       (.I0(tcp_in_V_strb_V_0_ack_in),
        .I1(tcp_in_TVALID),
        .I2(tcp_in_V_strb_V_0_sel_wr),
        .O(tcp_in_V_strb_V_0_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tcp_in_V_strb_V_0_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(tcp_in_V_strb_V_0_sel_wr_i_1_n_0),
        .Q(tcp_in_V_strb_V_0_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hA820A8A0)) 
    \tcp_in_V_strb_V_0_state[0]_i_1 
       (.I0(ap_rst_n),
        .I1(tcp_in_V_strb_V_0_ack_in),
        .I2(\tcp_in_V_strb_V_0_state_reg_n_0_[0] ),
        .I3(tcp_in_TVALID),
        .I4(p_186_in),
        .O(\tcp_in_V_strb_V_0_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80FF8080FFFFFFFF)) 
    \tcp_in_V_strb_V_0_state[1]_i_1 
       (.I0(ap_CS_fsm_state2),
        .I1(\tcp_in_V_data_V_0_state_reg_n_0_[0] ),
        .I2(tcp_out_V_data_V_1_ack_in),
        .I3(tcp_in_TVALID),
        .I4(tcp_in_V_strb_V_0_ack_in),
        .I5(\tcp_in_V_strb_V_0_state_reg_n_0_[0] ),
        .O(\tcp_in_V_strb_V_0_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tcp_in_V_strb_V_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tcp_in_V_strb_V_0_state[0]_i_1_n_0 ),
        .Q(\tcp_in_V_strb_V_0_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tcp_in_V_strb_V_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tcp_in_V_strb_V_0_state[1]_i_1_n_0 ),
        .Q(tcp_in_V_strb_V_0_ack_in),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hFFAE00A2)) 
    \tcp_in_V_user_V_0_payload_A[0]_i_1 
       (.I0(tcp_in_TUSER),
        .I1(\tcp_in_V_user_V_0_state_reg_n_0_[0] ),
        .I2(tcp_in_V_user_V_0_ack_in),
        .I3(tcp_in_V_user_V_0_sel_wr),
        .I4(tcp_in_V_user_V_0_payload_A),
        .O(\tcp_in_V_user_V_0_payload_A[0]_i_1_n_0 ));
  FDRE \tcp_in_V_user_V_0_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tcp_in_V_user_V_0_payload_A[0]_i_1_n_0 ),
        .Q(tcp_in_V_user_V_0_payload_A),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBBFB8808)) 
    \tcp_in_V_user_V_0_payload_B[0]_i_1 
       (.I0(tcp_in_TUSER),
        .I1(tcp_in_V_user_V_0_sel_wr),
        .I2(\tcp_in_V_user_V_0_state_reg_n_0_[0] ),
        .I3(tcp_in_V_user_V_0_ack_in),
        .I4(tcp_in_V_user_V_0_payload_B),
        .O(\tcp_in_V_user_V_0_payload_B[0]_i_1_n_0 ));
  FDRE \tcp_in_V_user_V_0_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tcp_in_V_user_V_0_payload_B[0]_i_1_n_0 ),
        .Q(tcp_in_V_user_V_0_payload_B),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    tcp_in_V_user_V_0_sel_rd_i_1
       (.I0(ap_CS_fsm_state2),
        .I1(\tcp_in_V_data_V_0_state_reg_n_0_[0] ),
        .I2(tcp_out_V_data_V_1_ack_in),
        .I3(\tcp_in_V_user_V_0_state_reg_n_0_[0] ),
        .I4(tcp_in_V_user_V_0_sel),
        .O(tcp_in_V_user_V_0_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tcp_in_V_user_V_0_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(tcp_in_V_user_V_0_sel_rd_i_1_n_0),
        .Q(tcp_in_V_user_V_0_sel),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h78)) 
    tcp_in_V_user_V_0_sel_wr_i_1
       (.I0(tcp_in_TVALID),
        .I1(tcp_in_V_user_V_0_ack_in),
        .I2(tcp_in_V_user_V_0_sel_wr),
        .O(tcp_in_V_user_V_0_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tcp_in_V_user_V_0_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(tcp_in_V_user_V_0_sel_wr_i_1_n_0),
        .Q(tcp_in_V_user_V_0_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hA2A0AA00)) 
    \tcp_in_V_user_V_0_state[0]_i_1 
       (.I0(ap_rst_n),
        .I1(p_186_in),
        .I2(tcp_in_TVALID),
        .I3(\tcp_in_V_user_V_0_state_reg_n_0_[0] ),
        .I4(tcp_in_V_user_V_0_ack_in),
        .O(\tcp_in_V_user_V_0_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80FF8080FFFFFFFF)) 
    \tcp_in_V_user_V_0_state[1]_i_1 
       (.I0(ap_CS_fsm_state2),
        .I1(\tcp_in_V_data_V_0_state_reg_n_0_[0] ),
        .I2(tcp_out_V_data_V_1_ack_in),
        .I3(tcp_in_TVALID),
        .I4(tcp_in_V_user_V_0_ack_in),
        .I5(\tcp_in_V_user_V_0_state_reg_n_0_[0] ),
        .O(\tcp_in_V_user_V_0_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tcp_in_V_user_V_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tcp_in_V_user_V_0_state[0]_i_1_n_0 ),
        .Q(\tcp_in_V_user_V_0_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tcp_in_V_user_V_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tcp_in_V_user_V_0_state[1]_i_1_n_0 ),
        .Q(tcp_in_V_user_V_0_ack_in),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tcp_out_TDATA[0]_INST_0 
       (.I0(tcp_out_V_data_V_1_payload_B[0]),
        .I1(tcp_out_V_data_V_1_payload_A[0]),
        .I2(tcp_out_V_data_V_1_sel),
        .O(tcp_out_TDATA[0]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tcp_out_TDATA[10]_INST_0 
       (.I0(tcp_out_V_data_V_1_payload_B[10]),
        .I1(tcp_out_V_data_V_1_payload_A[10]),
        .I2(tcp_out_V_data_V_1_sel),
        .O(tcp_out_TDATA[10]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tcp_out_TDATA[11]_INST_0 
       (.I0(tcp_out_V_data_V_1_payload_B[11]),
        .I1(tcp_out_V_data_V_1_payload_A[11]),
        .I2(tcp_out_V_data_V_1_sel),
        .O(tcp_out_TDATA[11]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tcp_out_TDATA[12]_INST_0 
       (.I0(tcp_out_V_data_V_1_payload_B[12]),
        .I1(tcp_out_V_data_V_1_payload_A[12]),
        .I2(tcp_out_V_data_V_1_sel),
        .O(tcp_out_TDATA[12]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tcp_out_TDATA[13]_INST_0 
       (.I0(tcp_out_V_data_V_1_payload_B[13]),
        .I1(tcp_out_V_data_V_1_payload_A[13]),
        .I2(tcp_out_V_data_V_1_sel),
        .O(tcp_out_TDATA[13]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tcp_out_TDATA[14]_INST_0 
       (.I0(tcp_out_V_data_V_1_payload_B[14]),
        .I1(tcp_out_V_data_V_1_payload_A[14]),
        .I2(tcp_out_V_data_V_1_sel),
        .O(tcp_out_TDATA[14]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tcp_out_TDATA[15]_INST_0 
       (.I0(tcp_out_V_data_V_1_payload_B[15]),
        .I1(tcp_out_V_data_V_1_payload_A[15]),
        .I2(tcp_out_V_data_V_1_sel),
        .O(tcp_out_TDATA[15]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tcp_out_TDATA[16]_INST_0 
       (.I0(tcp_out_V_data_V_1_payload_B[16]),
        .I1(tcp_out_V_data_V_1_payload_A[16]),
        .I2(tcp_out_V_data_V_1_sel),
        .O(tcp_out_TDATA[16]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tcp_out_TDATA[17]_INST_0 
       (.I0(tcp_out_V_data_V_1_payload_B[17]),
        .I1(tcp_out_V_data_V_1_payload_A[17]),
        .I2(tcp_out_V_data_V_1_sel),
        .O(tcp_out_TDATA[17]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tcp_out_TDATA[18]_INST_0 
       (.I0(tcp_out_V_data_V_1_payload_B[18]),
        .I1(tcp_out_V_data_V_1_payload_A[18]),
        .I2(tcp_out_V_data_V_1_sel),
        .O(tcp_out_TDATA[18]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tcp_out_TDATA[19]_INST_0 
       (.I0(tcp_out_V_data_V_1_payload_B[19]),
        .I1(tcp_out_V_data_V_1_payload_A[19]),
        .I2(tcp_out_V_data_V_1_sel),
        .O(tcp_out_TDATA[19]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tcp_out_TDATA[1]_INST_0 
       (.I0(tcp_out_V_data_V_1_payload_B[1]),
        .I1(tcp_out_V_data_V_1_payload_A[1]),
        .I2(tcp_out_V_data_V_1_sel),
        .O(tcp_out_TDATA[1]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tcp_out_TDATA[20]_INST_0 
       (.I0(tcp_out_V_data_V_1_payload_B[20]),
        .I1(tcp_out_V_data_V_1_payload_A[20]),
        .I2(tcp_out_V_data_V_1_sel),
        .O(tcp_out_TDATA[20]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tcp_out_TDATA[21]_INST_0 
       (.I0(tcp_out_V_data_V_1_payload_B[21]),
        .I1(tcp_out_V_data_V_1_payload_A[21]),
        .I2(tcp_out_V_data_V_1_sel),
        .O(tcp_out_TDATA[21]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tcp_out_TDATA[22]_INST_0 
       (.I0(tcp_out_V_data_V_1_payload_B[22]),
        .I1(tcp_out_V_data_V_1_payload_A[22]),
        .I2(tcp_out_V_data_V_1_sel),
        .O(tcp_out_TDATA[22]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tcp_out_TDATA[23]_INST_0 
       (.I0(tcp_out_V_data_V_1_payload_B[23]),
        .I1(tcp_out_V_data_V_1_payload_A[23]),
        .I2(tcp_out_V_data_V_1_sel),
        .O(tcp_out_TDATA[23]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tcp_out_TDATA[24]_INST_0 
       (.I0(tcp_out_V_data_V_1_payload_B[24]),
        .I1(tcp_out_V_data_V_1_payload_A[24]),
        .I2(tcp_out_V_data_V_1_sel),
        .O(tcp_out_TDATA[24]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tcp_out_TDATA[25]_INST_0 
       (.I0(tcp_out_V_data_V_1_payload_B[25]),
        .I1(tcp_out_V_data_V_1_payload_A[25]),
        .I2(tcp_out_V_data_V_1_sel),
        .O(tcp_out_TDATA[25]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tcp_out_TDATA[26]_INST_0 
       (.I0(tcp_out_V_data_V_1_payload_B[26]),
        .I1(tcp_out_V_data_V_1_payload_A[26]),
        .I2(tcp_out_V_data_V_1_sel),
        .O(tcp_out_TDATA[26]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tcp_out_TDATA[27]_INST_0 
       (.I0(tcp_out_V_data_V_1_payload_B[27]),
        .I1(tcp_out_V_data_V_1_payload_A[27]),
        .I2(tcp_out_V_data_V_1_sel),
        .O(tcp_out_TDATA[27]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tcp_out_TDATA[28]_INST_0 
       (.I0(tcp_out_V_data_V_1_payload_B[28]),
        .I1(tcp_out_V_data_V_1_payload_A[28]),
        .I2(tcp_out_V_data_V_1_sel),
        .O(tcp_out_TDATA[28]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tcp_out_TDATA[29]_INST_0 
       (.I0(tcp_out_V_data_V_1_payload_B[29]),
        .I1(tcp_out_V_data_V_1_payload_A[29]),
        .I2(tcp_out_V_data_V_1_sel),
        .O(tcp_out_TDATA[29]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tcp_out_TDATA[2]_INST_0 
       (.I0(tcp_out_V_data_V_1_payload_B[2]),
        .I1(tcp_out_V_data_V_1_payload_A[2]),
        .I2(tcp_out_V_data_V_1_sel),
        .O(tcp_out_TDATA[2]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tcp_out_TDATA[30]_INST_0 
       (.I0(tcp_out_V_data_V_1_payload_B[30]),
        .I1(tcp_out_V_data_V_1_payload_A[30]),
        .I2(tcp_out_V_data_V_1_sel),
        .O(tcp_out_TDATA[30]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tcp_out_TDATA[31]_INST_0 
       (.I0(tcp_out_V_data_V_1_payload_B[31]),
        .I1(tcp_out_V_data_V_1_payload_A[31]),
        .I2(tcp_out_V_data_V_1_sel),
        .O(tcp_out_TDATA[31]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tcp_out_TDATA[3]_INST_0 
       (.I0(tcp_out_V_data_V_1_payload_B[3]),
        .I1(tcp_out_V_data_V_1_payload_A[3]),
        .I2(tcp_out_V_data_V_1_sel),
        .O(tcp_out_TDATA[3]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tcp_out_TDATA[4]_INST_0 
       (.I0(tcp_out_V_data_V_1_payload_B[4]),
        .I1(tcp_out_V_data_V_1_payload_A[4]),
        .I2(tcp_out_V_data_V_1_sel),
        .O(tcp_out_TDATA[4]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tcp_out_TDATA[5]_INST_0 
       (.I0(tcp_out_V_data_V_1_payload_B[5]),
        .I1(tcp_out_V_data_V_1_payload_A[5]),
        .I2(tcp_out_V_data_V_1_sel),
        .O(tcp_out_TDATA[5]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tcp_out_TDATA[6]_INST_0 
       (.I0(tcp_out_V_data_V_1_payload_B[6]),
        .I1(tcp_out_V_data_V_1_payload_A[6]),
        .I2(tcp_out_V_data_V_1_sel),
        .O(tcp_out_TDATA[6]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tcp_out_TDATA[7]_INST_0 
       (.I0(tcp_out_V_data_V_1_payload_B[7]),
        .I1(tcp_out_V_data_V_1_payload_A[7]),
        .I2(tcp_out_V_data_V_1_sel),
        .O(tcp_out_TDATA[7]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tcp_out_TDATA[8]_INST_0 
       (.I0(tcp_out_V_data_V_1_payload_B[8]),
        .I1(tcp_out_V_data_V_1_payload_A[8]),
        .I2(tcp_out_V_data_V_1_sel),
        .O(tcp_out_TDATA[8]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tcp_out_TDATA[9]_INST_0 
       (.I0(tcp_out_V_data_V_1_payload_B[9]),
        .I1(tcp_out_V_data_V_1_payload_A[9]),
        .I2(tcp_out_V_data_V_1_sel),
        .O(tcp_out_TDATA[9]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tcp_out_TDEST[0]_INST_0 
       (.I0(tcp_out_V_dest_V_1_payload_B),
        .I1(tcp_out_V_dest_V_1_sel),
        .I2(tcp_out_V_dest_V_1_payload_A),
        .O(tcp_out_TDEST));
  LUT3 #(
    .INIT(8'hB8)) 
    \tcp_out_TID[0]_INST_0 
       (.I0(tcp_out_V_id_V_1_payload_B),
        .I1(tcp_out_V_id_V_1_sel),
        .I2(tcp_out_V_id_V_1_payload_A),
        .O(tcp_out_TID));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tcp_out_TKEEP[0]_INST_0 
       (.I0(tcp_out_V_keep_V_1_payload_B[0]),
        .I1(tcp_out_V_keep_V_1_sel),
        .I2(tcp_out_V_keep_V_1_payload_A[0]),
        .O(tcp_out_TKEEP[0]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tcp_out_TKEEP[1]_INST_0 
       (.I0(tcp_out_V_keep_V_1_payload_B[1]),
        .I1(tcp_out_V_keep_V_1_sel),
        .I2(tcp_out_V_keep_V_1_payload_A[1]),
        .O(tcp_out_TKEEP[1]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tcp_out_TKEEP[2]_INST_0 
       (.I0(tcp_out_V_keep_V_1_payload_B[2]),
        .I1(tcp_out_V_keep_V_1_sel),
        .I2(tcp_out_V_keep_V_1_payload_A[2]),
        .O(tcp_out_TKEEP[2]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tcp_out_TKEEP[3]_INST_0 
       (.I0(tcp_out_V_keep_V_1_payload_B[3]),
        .I1(tcp_out_V_keep_V_1_sel),
        .I2(tcp_out_V_keep_V_1_payload_A[3]),
        .O(tcp_out_TKEEP[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \tcp_out_TLAST[0]_INST_0 
       (.I0(tcp_out_V_last_V_1_payload_B),
        .I1(tcp_out_V_last_V_1_sel),
        .I2(tcp_out_V_last_V_1_payload_A),
        .O(tcp_out_TLAST));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tcp_out_TSTRB[0]_INST_0 
       (.I0(tcp_out_V_strb_V_1_payload_B[0]),
        .I1(tcp_out_V_strb_V_1_sel),
        .I2(tcp_out_V_strb_V_1_payload_A[0]),
        .O(tcp_out_TSTRB[0]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tcp_out_TSTRB[1]_INST_0 
       (.I0(tcp_out_V_strb_V_1_payload_B[1]),
        .I1(tcp_out_V_strb_V_1_sel),
        .I2(tcp_out_V_strb_V_1_payload_A[1]),
        .O(tcp_out_TSTRB[1]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tcp_out_TSTRB[2]_INST_0 
       (.I0(tcp_out_V_strb_V_1_payload_B[2]),
        .I1(tcp_out_V_strb_V_1_sel),
        .I2(tcp_out_V_strb_V_1_payload_A[2]),
        .O(tcp_out_TSTRB[2]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tcp_out_TSTRB[3]_INST_0 
       (.I0(tcp_out_V_strb_V_1_payload_B[3]),
        .I1(tcp_out_V_strb_V_1_sel),
        .I2(tcp_out_V_strb_V_1_payload_A[3]),
        .O(tcp_out_TSTRB[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \tcp_out_TUSER[0]_INST_0 
       (.I0(tcp_out_V_user_V_1_payload_B),
        .I1(tcp_out_V_user_V_1_sel),
        .I2(tcp_out_V_user_V_1_payload_A),
        .O(tcp_out_TUSER));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tcp_out_V_data_V_1_payload_A[0]_i_1 
       (.I0(tcp_in_V_data_V_0_payload_B[0]),
        .I1(tcp_in_V_data_V_0_payload_A[0]),
        .I2(tcp_in_V_data_V_0_sel),
        .O(tcp_in_V_data_V_0_data_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tcp_out_V_data_V_1_payload_A[10]_i_1 
       (.I0(tcp_in_V_data_V_0_payload_B[10]),
        .I1(tcp_in_V_data_V_0_payload_A[10]),
        .I2(tcp_in_V_data_V_0_sel),
        .O(tcp_in_V_data_V_0_data_out[10]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tcp_out_V_data_V_1_payload_A[11]_i_1 
       (.I0(tcp_in_V_data_V_0_payload_B[11]),
        .I1(tcp_in_V_data_V_0_payload_A[11]),
        .I2(tcp_in_V_data_V_0_sel),
        .O(tcp_in_V_data_V_0_data_out[11]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tcp_out_V_data_V_1_payload_A[12]_i_1 
       (.I0(tcp_in_V_data_V_0_payload_B[12]),
        .I1(tcp_in_V_data_V_0_payload_A[12]),
        .I2(tcp_in_V_data_V_0_sel),
        .O(tcp_in_V_data_V_0_data_out[12]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tcp_out_V_data_V_1_payload_A[13]_i_1 
       (.I0(tcp_in_V_data_V_0_payload_B[13]),
        .I1(tcp_in_V_data_V_0_payload_A[13]),
        .I2(tcp_in_V_data_V_0_sel),
        .O(tcp_in_V_data_V_0_data_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tcp_out_V_data_V_1_payload_A[14]_i_1 
       (.I0(tcp_in_V_data_V_0_payload_B[14]),
        .I1(tcp_in_V_data_V_0_payload_A[14]),
        .I2(tcp_in_V_data_V_0_sel),
        .O(tcp_in_V_data_V_0_data_out[14]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tcp_out_V_data_V_1_payload_A[15]_i_1 
       (.I0(tcp_in_V_data_V_0_payload_B[15]),
        .I1(tcp_in_V_data_V_0_payload_A[15]),
        .I2(tcp_in_V_data_V_0_sel),
        .O(tcp_in_V_data_V_0_data_out[15]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tcp_out_V_data_V_1_payload_A[16]_i_1 
       (.I0(tcp_in_V_data_V_0_payload_B[16]),
        .I1(tcp_in_V_data_V_0_payload_A[16]),
        .I2(tcp_in_V_data_V_0_sel),
        .O(tcp_in_V_data_V_0_data_out[16]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tcp_out_V_data_V_1_payload_A[17]_i_1 
       (.I0(tcp_in_V_data_V_0_payload_B[17]),
        .I1(tcp_in_V_data_V_0_payload_A[17]),
        .I2(tcp_in_V_data_V_0_sel),
        .O(tcp_in_V_data_V_0_data_out[17]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tcp_out_V_data_V_1_payload_A[18]_i_1 
       (.I0(tcp_in_V_data_V_0_payload_B[18]),
        .I1(tcp_in_V_data_V_0_payload_A[18]),
        .I2(tcp_in_V_data_V_0_sel),
        .O(tcp_in_V_data_V_0_data_out[18]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tcp_out_V_data_V_1_payload_A[19]_i_1 
       (.I0(tcp_in_V_data_V_0_payload_B[19]),
        .I1(tcp_in_V_data_V_0_payload_A[19]),
        .I2(tcp_in_V_data_V_0_sel),
        .O(tcp_in_V_data_V_0_data_out[19]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tcp_out_V_data_V_1_payload_A[1]_i_1 
       (.I0(tcp_in_V_data_V_0_payload_B[1]),
        .I1(tcp_in_V_data_V_0_payload_A[1]),
        .I2(tcp_in_V_data_V_0_sel),
        .O(tcp_in_V_data_V_0_data_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tcp_out_V_data_V_1_payload_A[20]_i_1 
       (.I0(tcp_in_V_data_V_0_payload_B[20]),
        .I1(tcp_in_V_data_V_0_payload_A[20]),
        .I2(tcp_in_V_data_V_0_sel),
        .O(tcp_in_V_data_V_0_data_out[20]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tcp_out_V_data_V_1_payload_A[21]_i_1 
       (.I0(tcp_in_V_data_V_0_payload_B[21]),
        .I1(tcp_in_V_data_V_0_payload_A[21]),
        .I2(tcp_in_V_data_V_0_sel),
        .O(tcp_in_V_data_V_0_data_out[21]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tcp_out_V_data_V_1_payload_A[22]_i_1 
       (.I0(tcp_in_V_data_V_0_payload_B[22]),
        .I1(tcp_in_V_data_V_0_payload_A[22]),
        .I2(tcp_in_V_data_V_0_sel),
        .O(tcp_in_V_data_V_0_data_out[22]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tcp_out_V_data_V_1_payload_A[23]_i_1 
       (.I0(tcp_in_V_data_V_0_payload_B[23]),
        .I1(tcp_in_V_data_V_0_payload_A[23]),
        .I2(tcp_in_V_data_V_0_sel),
        .O(tcp_in_V_data_V_0_data_out[23]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tcp_out_V_data_V_1_payload_A[24]_i_1 
       (.I0(tcp_in_V_data_V_0_payload_B[24]),
        .I1(tcp_in_V_data_V_0_payload_A[24]),
        .I2(tcp_in_V_data_V_0_sel),
        .O(tcp_in_V_data_V_0_data_out[24]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tcp_out_V_data_V_1_payload_A[25]_i_1 
       (.I0(tcp_in_V_data_V_0_payload_B[25]),
        .I1(tcp_in_V_data_V_0_payload_A[25]),
        .I2(tcp_in_V_data_V_0_sel),
        .O(tcp_in_V_data_V_0_data_out[25]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tcp_out_V_data_V_1_payload_A[26]_i_1 
       (.I0(tcp_in_V_data_V_0_payload_B[26]),
        .I1(tcp_in_V_data_V_0_payload_A[26]),
        .I2(tcp_in_V_data_V_0_sel),
        .O(tcp_in_V_data_V_0_data_out[26]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tcp_out_V_data_V_1_payload_A[27]_i_1 
       (.I0(tcp_in_V_data_V_0_payload_B[27]),
        .I1(tcp_in_V_data_V_0_payload_A[27]),
        .I2(tcp_in_V_data_V_0_sel),
        .O(tcp_in_V_data_V_0_data_out[27]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tcp_out_V_data_V_1_payload_A[28]_i_1 
       (.I0(tcp_in_V_data_V_0_payload_B[28]),
        .I1(tcp_in_V_data_V_0_payload_A[28]),
        .I2(tcp_in_V_data_V_0_sel),
        .O(tcp_in_V_data_V_0_data_out[28]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tcp_out_V_data_V_1_payload_A[29]_i_1 
       (.I0(tcp_in_V_data_V_0_payload_B[29]),
        .I1(tcp_in_V_data_V_0_payload_A[29]),
        .I2(tcp_in_V_data_V_0_sel),
        .O(tcp_in_V_data_V_0_data_out[29]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tcp_out_V_data_V_1_payload_A[2]_i_1 
       (.I0(tcp_in_V_data_V_0_payload_B[2]),
        .I1(tcp_in_V_data_V_0_payload_A[2]),
        .I2(tcp_in_V_data_V_0_sel),
        .O(tcp_in_V_data_V_0_data_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tcp_out_V_data_V_1_payload_A[30]_i_1 
       (.I0(tcp_in_V_data_V_0_payload_B[30]),
        .I1(tcp_in_V_data_V_0_payload_A[30]),
        .I2(tcp_in_V_data_V_0_sel),
        .O(tcp_in_V_data_V_0_data_out[30]));
  LUT3 #(
    .INIT(8'h0D)) 
    \tcp_out_V_data_V_1_payload_A[31]_i_1 
       (.I0(\tcp_out_V_data_V_1_state_reg_n_0_[0] ),
        .I1(tcp_out_V_data_V_1_ack_in),
        .I2(tcp_out_V_data_V_1_sel_wr),
        .O(\tcp_out_V_data_V_1_payload_A[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tcp_out_V_data_V_1_payload_A[31]_i_2 
       (.I0(tcp_in_V_data_V_0_payload_B[31]),
        .I1(tcp_in_V_data_V_0_payload_A[31]),
        .I2(tcp_in_V_data_V_0_sel),
        .O(tcp_in_V_data_V_0_data_out[31]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tcp_out_V_data_V_1_payload_A[3]_i_1 
       (.I0(tcp_in_V_data_V_0_payload_B[3]),
        .I1(tcp_in_V_data_V_0_payload_A[3]),
        .I2(tcp_in_V_data_V_0_sel),
        .O(tcp_in_V_data_V_0_data_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tcp_out_V_data_V_1_payload_A[4]_i_1 
       (.I0(tcp_in_V_data_V_0_payload_B[4]),
        .I1(tcp_in_V_data_V_0_payload_A[4]),
        .I2(tcp_in_V_data_V_0_sel),
        .O(tcp_in_V_data_V_0_data_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tcp_out_V_data_V_1_payload_A[5]_i_1 
       (.I0(tcp_in_V_data_V_0_payload_B[5]),
        .I1(tcp_in_V_data_V_0_payload_A[5]),
        .I2(tcp_in_V_data_V_0_sel),
        .O(tcp_in_V_data_V_0_data_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tcp_out_V_data_V_1_payload_A[6]_i_1 
       (.I0(tcp_in_V_data_V_0_payload_B[6]),
        .I1(tcp_in_V_data_V_0_payload_A[6]),
        .I2(tcp_in_V_data_V_0_sel),
        .O(tcp_in_V_data_V_0_data_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tcp_out_V_data_V_1_payload_A[7]_i_1 
       (.I0(tcp_in_V_data_V_0_payload_B[7]),
        .I1(tcp_in_V_data_V_0_payload_A[7]),
        .I2(tcp_in_V_data_V_0_sel),
        .O(tcp_in_V_data_V_0_data_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tcp_out_V_data_V_1_payload_A[8]_i_1 
       (.I0(tcp_in_V_data_V_0_payload_B[8]),
        .I1(tcp_in_V_data_V_0_payload_A[8]),
        .I2(tcp_in_V_data_V_0_sel),
        .O(tcp_in_V_data_V_0_data_out[8]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \tcp_out_V_data_V_1_payload_A[9]_i_1 
       (.I0(tcp_in_V_data_V_0_payload_B[9]),
        .I1(tcp_in_V_data_V_0_payload_A[9]),
        .I2(tcp_in_V_data_V_0_sel),
        .O(tcp_in_V_data_V_0_data_out[9]));
  FDRE \tcp_out_V_data_V_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(\tcp_out_V_data_V_1_payload_A[31]_i_1_n_0 ),
        .D(tcp_in_V_data_V_0_data_out[0]),
        .Q(tcp_out_V_data_V_1_payload_A[0]),
        .R(1'b0));
  FDRE \tcp_out_V_data_V_1_payload_A_reg[10] 
       (.C(ap_clk),
        .CE(\tcp_out_V_data_V_1_payload_A[31]_i_1_n_0 ),
        .D(tcp_in_V_data_V_0_data_out[10]),
        .Q(tcp_out_V_data_V_1_payload_A[10]),
        .R(1'b0));
  FDRE \tcp_out_V_data_V_1_payload_A_reg[11] 
       (.C(ap_clk),
        .CE(\tcp_out_V_data_V_1_payload_A[31]_i_1_n_0 ),
        .D(tcp_in_V_data_V_0_data_out[11]),
        .Q(tcp_out_V_data_V_1_payload_A[11]),
        .R(1'b0));
  FDRE \tcp_out_V_data_V_1_payload_A_reg[12] 
       (.C(ap_clk),
        .CE(\tcp_out_V_data_V_1_payload_A[31]_i_1_n_0 ),
        .D(tcp_in_V_data_V_0_data_out[12]),
        .Q(tcp_out_V_data_V_1_payload_A[12]),
        .R(1'b0));
  FDRE \tcp_out_V_data_V_1_payload_A_reg[13] 
       (.C(ap_clk),
        .CE(\tcp_out_V_data_V_1_payload_A[31]_i_1_n_0 ),
        .D(tcp_in_V_data_V_0_data_out[13]),
        .Q(tcp_out_V_data_V_1_payload_A[13]),
        .R(1'b0));
  FDRE \tcp_out_V_data_V_1_payload_A_reg[14] 
       (.C(ap_clk),
        .CE(\tcp_out_V_data_V_1_payload_A[31]_i_1_n_0 ),
        .D(tcp_in_V_data_V_0_data_out[14]),
        .Q(tcp_out_V_data_V_1_payload_A[14]),
        .R(1'b0));
  FDRE \tcp_out_V_data_V_1_payload_A_reg[15] 
       (.C(ap_clk),
        .CE(\tcp_out_V_data_V_1_payload_A[31]_i_1_n_0 ),
        .D(tcp_in_V_data_V_0_data_out[15]),
        .Q(tcp_out_V_data_V_1_payload_A[15]),
        .R(1'b0));
  FDRE \tcp_out_V_data_V_1_payload_A_reg[16] 
       (.C(ap_clk),
        .CE(\tcp_out_V_data_V_1_payload_A[31]_i_1_n_0 ),
        .D(tcp_in_V_data_V_0_data_out[16]),
        .Q(tcp_out_V_data_V_1_payload_A[16]),
        .R(1'b0));
  FDRE \tcp_out_V_data_V_1_payload_A_reg[17] 
       (.C(ap_clk),
        .CE(\tcp_out_V_data_V_1_payload_A[31]_i_1_n_0 ),
        .D(tcp_in_V_data_V_0_data_out[17]),
        .Q(tcp_out_V_data_V_1_payload_A[17]),
        .R(1'b0));
  FDRE \tcp_out_V_data_V_1_payload_A_reg[18] 
       (.C(ap_clk),
        .CE(\tcp_out_V_data_V_1_payload_A[31]_i_1_n_0 ),
        .D(tcp_in_V_data_V_0_data_out[18]),
        .Q(tcp_out_V_data_V_1_payload_A[18]),
        .R(1'b0));
  FDRE \tcp_out_V_data_V_1_payload_A_reg[19] 
       (.C(ap_clk),
        .CE(\tcp_out_V_data_V_1_payload_A[31]_i_1_n_0 ),
        .D(tcp_in_V_data_V_0_data_out[19]),
        .Q(tcp_out_V_data_V_1_payload_A[19]),
        .R(1'b0));
  FDRE \tcp_out_V_data_V_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(\tcp_out_V_data_V_1_payload_A[31]_i_1_n_0 ),
        .D(tcp_in_V_data_V_0_data_out[1]),
        .Q(tcp_out_V_data_V_1_payload_A[1]),
        .R(1'b0));
  FDRE \tcp_out_V_data_V_1_payload_A_reg[20] 
       (.C(ap_clk),
        .CE(\tcp_out_V_data_V_1_payload_A[31]_i_1_n_0 ),
        .D(tcp_in_V_data_V_0_data_out[20]),
        .Q(tcp_out_V_data_V_1_payload_A[20]),
        .R(1'b0));
  FDRE \tcp_out_V_data_V_1_payload_A_reg[21] 
       (.C(ap_clk),
        .CE(\tcp_out_V_data_V_1_payload_A[31]_i_1_n_0 ),
        .D(tcp_in_V_data_V_0_data_out[21]),
        .Q(tcp_out_V_data_V_1_payload_A[21]),
        .R(1'b0));
  FDRE \tcp_out_V_data_V_1_payload_A_reg[22] 
       (.C(ap_clk),
        .CE(\tcp_out_V_data_V_1_payload_A[31]_i_1_n_0 ),
        .D(tcp_in_V_data_V_0_data_out[22]),
        .Q(tcp_out_V_data_V_1_payload_A[22]),
        .R(1'b0));
  FDRE \tcp_out_V_data_V_1_payload_A_reg[23] 
       (.C(ap_clk),
        .CE(\tcp_out_V_data_V_1_payload_A[31]_i_1_n_0 ),
        .D(tcp_in_V_data_V_0_data_out[23]),
        .Q(tcp_out_V_data_V_1_payload_A[23]),
        .R(1'b0));
  FDRE \tcp_out_V_data_V_1_payload_A_reg[24] 
       (.C(ap_clk),
        .CE(\tcp_out_V_data_V_1_payload_A[31]_i_1_n_0 ),
        .D(tcp_in_V_data_V_0_data_out[24]),
        .Q(tcp_out_V_data_V_1_payload_A[24]),
        .R(1'b0));
  FDRE \tcp_out_V_data_V_1_payload_A_reg[25] 
       (.C(ap_clk),
        .CE(\tcp_out_V_data_V_1_payload_A[31]_i_1_n_0 ),
        .D(tcp_in_V_data_V_0_data_out[25]),
        .Q(tcp_out_V_data_V_1_payload_A[25]),
        .R(1'b0));
  FDRE \tcp_out_V_data_V_1_payload_A_reg[26] 
       (.C(ap_clk),
        .CE(\tcp_out_V_data_V_1_payload_A[31]_i_1_n_0 ),
        .D(tcp_in_V_data_V_0_data_out[26]),
        .Q(tcp_out_V_data_V_1_payload_A[26]),
        .R(1'b0));
  FDRE \tcp_out_V_data_V_1_payload_A_reg[27] 
       (.C(ap_clk),
        .CE(\tcp_out_V_data_V_1_payload_A[31]_i_1_n_0 ),
        .D(tcp_in_V_data_V_0_data_out[27]),
        .Q(tcp_out_V_data_V_1_payload_A[27]),
        .R(1'b0));
  FDRE \tcp_out_V_data_V_1_payload_A_reg[28] 
       (.C(ap_clk),
        .CE(\tcp_out_V_data_V_1_payload_A[31]_i_1_n_0 ),
        .D(tcp_in_V_data_V_0_data_out[28]),
        .Q(tcp_out_V_data_V_1_payload_A[28]),
        .R(1'b0));
  FDRE \tcp_out_V_data_V_1_payload_A_reg[29] 
       (.C(ap_clk),
        .CE(\tcp_out_V_data_V_1_payload_A[31]_i_1_n_0 ),
        .D(tcp_in_V_data_V_0_data_out[29]),
        .Q(tcp_out_V_data_V_1_payload_A[29]),
        .R(1'b0));
  FDRE \tcp_out_V_data_V_1_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(\tcp_out_V_data_V_1_payload_A[31]_i_1_n_0 ),
        .D(tcp_in_V_data_V_0_data_out[2]),
        .Q(tcp_out_V_data_V_1_payload_A[2]),
        .R(1'b0));
  FDRE \tcp_out_V_data_V_1_payload_A_reg[30] 
       (.C(ap_clk),
        .CE(\tcp_out_V_data_V_1_payload_A[31]_i_1_n_0 ),
        .D(tcp_in_V_data_V_0_data_out[30]),
        .Q(tcp_out_V_data_V_1_payload_A[30]),
        .R(1'b0));
  FDRE \tcp_out_V_data_V_1_payload_A_reg[31] 
       (.C(ap_clk),
        .CE(\tcp_out_V_data_V_1_payload_A[31]_i_1_n_0 ),
        .D(tcp_in_V_data_V_0_data_out[31]),
        .Q(tcp_out_V_data_V_1_payload_A[31]),
        .R(1'b0));
  FDRE \tcp_out_V_data_V_1_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(\tcp_out_V_data_V_1_payload_A[31]_i_1_n_0 ),
        .D(tcp_in_V_data_V_0_data_out[3]),
        .Q(tcp_out_V_data_V_1_payload_A[3]),
        .R(1'b0));
  FDRE \tcp_out_V_data_V_1_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(\tcp_out_V_data_V_1_payload_A[31]_i_1_n_0 ),
        .D(tcp_in_V_data_V_0_data_out[4]),
        .Q(tcp_out_V_data_V_1_payload_A[4]),
        .R(1'b0));
  FDRE \tcp_out_V_data_V_1_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(\tcp_out_V_data_V_1_payload_A[31]_i_1_n_0 ),
        .D(tcp_in_V_data_V_0_data_out[5]),
        .Q(tcp_out_V_data_V_1_payload_A[5]),
        .R(1'b0));
  FDRE \tcp_out_V_data_V_1_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(\tcp_out_V_data_V_1_payload_A[31]_i_1_n_0 ),
        .D(tcp_in_V_data_V_0_data_out[6]),
        .Q(tcp_out_V_data_V_1_payload_A[6]),
        .R(1'b0));
  FDRE \tcp_out_V_data_V_1_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(\tcp_out_V_data_V_1_payload_A[31]_i_1_n_0 ),
        .D(tcp_in_V_data_V_0_data_out[7]),
        .Q(tcp_out_V_data_V_1_payload_A[7]),
        .R(1'b0));
  FDRE \tcp_out_V_data_V_1_payload_A_reg[8] 
       (.C(ap_clk),
        .CE(\tcp_out_V_data_V_1_payload_A[31]_i_1_n_0 ),
        .D(tcp_in_V_data_V_0_data_out[8]),
        .Q(tcp_out_V_data_V_1_payload_A[8]),
        .R(1'b0));
  FDRE \tcp_out_V_data_V_1_payload_A_reg[9] 
       (.C(ap_clk),
        .CE(\tcp_out_V_data_V_1_payload_A[31]_i_1_n_0 ),
        .D(tcp_in_V_data_V_0_data_out[9]),
        .Q(tcp_out_V_data_V_1_payload_A[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hA2)) 
    \tcp_out_V_data_V_1_payload_B[31]_i_1 
       (.I0(tcp_out_V_data_V_1_sel_wr),
        .I1(\tcp_out_V_data_V_1_state_reg_n_0_[0] ),
        .I2(tcp_out_V_data_V_1_ack_in),
        .O(tcp_out_V_data_V_1_load_B));
  FDRE \tcp_out_V_data_V_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(tcp_out_V_data_V_1_load_B),
        .D(tcp_in_V_data_V_0_data_out[0]),
        .Q(tcp_out_V_data_V_1_payload_B[0]),
        .R(1'b0));
  FDRE \tcp_out_V_data_V_1_payload_B_reg[10] 
       (.C(ap_clk),
        .CE(tcp_out_V_data_V_1_load_B),
        .D(tcp_in_V_data_V_0_data_out[10]),
        .Q(tcp_out_V_data_V_1_payload_B[10]),
        .R(1'b0));
  FDRE \tcp_out_V_data_V_1_payload_B_reg[11] 
       (.C(ap_clk),
        .CE(tcp_out_V_data_V_1_load_B),
        .D(tcp_in_V_data_V_0_data_out[11]),
        .Q(tcp_out_V_data_V_1_payload_B[11]),
        .R(1'b0));
  FDRE \tcp_out_V_data_V_1_payload_B_reg[12] 
       (.C(ap_clk),
        .CE(tcp_out_V_data_V_1_load_B),
        .D(tcp_in_V_data_V_0_data_out[12]),
        .Q(tcp_out_V_data_V_1_payload_B[12]),
        .R(1'b0));
  FDRE \tcp_out_V_data_V_1_payload_B_reg[13] 
       (.C(ap_clk),
        .CE(tcp_out_V_data_V_1_load_B),
        .D(tcp_in_V_data_V_0_data_out[13]),
        .Q(tcp_out_V_data_V_1_payload_B[13]),
        .R(1'b0));
  FDRE \tcp_out_V_data_V_1_payload_B_reg[14] 
       (.C(ap_clk),
        .CE(tcp_out_V_data_V_1_load_B),
        .D(tcp_in_V_data_V_0_data_out[14]),
        .Q(tcp_out_V_data_V_1_payload_B[14]),
        .R(1'b0));
  FDRE \tcp_out_V_data_V_1_payload_B_reg[15] 
       (.C(ap_clk),
        .CE(tcp_out_V_data_V_1_load_B),
        .D(tcp_in_V_data_V_0_data_out[15]),
        .Q(tcp_out_V_data_V_1_payload_B[15]),
        .R(1'b0));
  FDRE \tcp_out_V_data_V_1_payload_B_reg[16] 
       (.C(ap_clk),
        .CE(tcp_out_V_data_V_1_load_B),
        .D(tcp_in_V_data_V_0_data_out[16]),
        .Q(tcp_out_V_data_V_1_payload_B[16]),
        .R(1'b0));
  FDRE \tcp_out_V_data_V_1_payload_B_reg[17] 
       (.C(ap_clk),
        .CE(tcp_out_V_data_V_1_load_B),
        .D(tcp_in_V_data_V_0_data_out[17]),
        .Q(tcp_out_V_data_V_1_payload_B[17]),
        .R(1'b0));
  FDRE \tcp_out_V_data_V_1_payload_B_reg[18] 
       (.C(ap_clk),
        .CE(tcp_out_V_data_V_1_load_B),
        .D(tcp_in_V_data_V_0_data_out[18]),
        .Q(tcp_out_V_data_V_1_payload_B[18]),
        .R(1'b0));
  FDRE \tcp_out_V_data_V_1_payload_B_reg[19] 
       (.C(ap_clk),
        .CE(tcp_out_V_data_V_1_load_B),
        .D(tcp_in_V_data_V_0_data_out[19]),
        .Q(tcp_out_V_data_V_1_payload_B[19]),
        .R(1'b0));
  FDRE \tcp_out_V_data_V_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(tcp_out_V_data_V_1_load_B),
        .D(tcp_in_V_data_V_0_data_out[1]),
        .Q(tcp_out_V_data_V_1_payload_B[1]),
        .R(1'b0));
  FDRE \tcp_out_V_data_V_1_payload_B_reg[20] 
       (.C(ap_clk),
        .CE(tcp_out_V_data_V_1_load_B),
        .D(tcp_in_V_data_V_0_data_out[20]),
        .Q(tcp_out_V_data_V_1_payload_B[20]),
        .R(1'b0));
  FDRE \tcp_out_V_data_V_1_payload_B_reg[21] 
       (.C(ap_clk),
        .CE(tcp_out_V_data_V_1_load_B),
        .D(tcp_in_V_data_V_0_data_out[21]),
        .Q(tcp_out_V_data_V_1_payload_B[21]),
        .R(1'b0));
  FDRE \tcp_out_V_data_V_1_payload_B_reg[22] 
       (.C(ap_clk),
        .CE(tcp_out_V_data_V_1_load_B),
        .D(tcp_in_V_data_V_0_data_out[22]),
        .Q(tcp_out_V_data_V_1_payload_B[22]),
        .R(1'b0));
  FDRE \tcp_out_V_data_V_1_payload_B_reg[23] 
       (.C(ap_clk),
        .CE(tcp_out_V_data_V_1_load_B),
        .D(tcp_in_V_data_V_0_data_out[23]),
        .Q(tcp_out_V_data_V_1_payload_B[23]),
        .R(1'b0));
  FDRE \tcp_out_V_data_V_1_payload_B_reg[24] 
       (.C(ap_clk),
        .CE(tcp_out_V_data_V_1_load_B),
        .D(tcp_in_V_data_V_0_data_out[24]),
        .Q(tcp_out_V_data_V_1_payload_B[24]),
        .R(1'b0));
  FDRE \tcp_out_V_data_V_1_payload_B_reg[25] 
       (.C(ap_clk),
        .CE(tcp_out_V_data_V_1_load_B),
        .D(tcp_in_V_data_V_0_data_out[25]),
        .Q(tcp_out_V_data_V_1_payload_B[25]),
        .R(1'b0));
  FDRE \tcp_out_V_data_V_1_payload_B_reg[26] 
       (.C(ap_clk),
        .CE(tcp_out_V_data_V_1_load_B),
        .D(tcp_in_V_data_V_0_data_out[26]),
        .Q(tcp_out_V_data_V_1_payload_B[26]),
        .R(1'b0));
  FDRE \tcp_out_V_data_V_1_payload_B_reg[27] 
       (.C(ap_clk),
        .CE(tcp_out_V_data_V_1_load_B),
        .D(tcp_in_V_data_V_0_data_out[27]),
        .Q(tcp_out_V_data_V_1_payload_B[27]),
        .R(1'b0));
  FDRE \tcp_out_V_data_V_1_payload_B_reg[28] 
       (.C(ap_clk),
        .CE(tcp_out_V_data_V_1_load_B),
        .D(tcp_in_V_data_V_0_data_out[28]),
        .Q(tcp_out_V_data_V_1_payload_B[28]),
        .R(1'b0));
  FDRE \tcp_out_V_data_V_1_payload_B_reg[29] 
       (.C(ap_clk),
        .CE(tcp_out_V_data_V_1_load_B),
        .D(tcp_in_V_data_V_0_data_out[29]),
        .Q(tcp_out_V_data_V_1_payload_B[29]),
        .R(1'b0));
  FDRE \tcp_out_V_data_V_1_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(tcp_out_V_data_V_1_load_B),
        .D(tcp_in_V_data_V_0_data_out[2]),
        .Q(tcp_out_V_data_V_1_payload_B[2]),
        .R(1'b0));
  FDRE \tcp_out_V_data_V_1_payload_B_reg[30] 
       (.C(ap_clk),
        .CE(tcp_out_V_data_V_1_load_B),
        .D(tcp_in_V_data_V_0_data_out[30]),
        .Q(tcp_out_V_data_V_1_payload_B[30]),
        .R(1'b0));
  FDRE \tcp_out_V_data_V_1_payload_B_reg[31] 
       (.C(ap_clk),
        .CE(tcp_out_V_data_V_1_load_B),
        .D(tcp_in_V_data_V_0_data_out[31]),
        .Q(tcp_out_V_data_V_1_payload_B[31]),
        .R(1'b0));
  FDRE \tcp_out_V_data_V_1_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(tcp_out_V_data_V_1_load_B),
        .D(tcp_in_V_data_V_0_data_out[3]),
        .Q(tcp_out_V_data_V_1_payload_B[3]),
        .R(1'b0));
  FDRE \tcp_out_V_data_V_1_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(tcp_out_V_data_V_1_load_B),
        .D(tcp_in_V_data_V_0_data_out[4]),
        .Q(tcp_out_V_data_V_1_payload_B[4]),
        .R(1'b0));
  FDRE \tcp_out_V_data_V_1_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(tcp_out_V_data_V_1_load_B),
        .D(tcp_in_V_data_V_0_data_out[5]),
        .Q(tcp_out_V_data_V_1_payload_B[5]),
        .R(1'b0));
  FDRE \tcp_out_V_data_V_1_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(tcp_out_V_data_V_1_load_B),
        .D(tcp_in_V_data_V_0_data_out[6]),
        .Q(tcp_out_V_data_V_1_payload_B[6]),
        .R(1'b0));
  FDRE \tcp_out_V_data_V_1_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(tcp_out_V_data_V_1_load_B),
        .D(tcp_in_V_data_V_0_data_out[7]),
        .Q(tcp_out_V_data_V_1_payload_B[7]),
        .R(1'b0));
  FDRE \tcp_out_V_data_V_1_payload_B_reg[8] 
       (.C(ap_clk),
        .CE(tcp_out_V_data_V_1_load_B),
        .D(tcp_in_V_data_V_0_data_out[8]),
        .Q(tcp_out_V_data_V_1_payload_B[8]),
        .R(1'b0));
  FDRE \tcp_out_V_data_V_1_payload_B_reg[9] 
       (.C(ap_clk),
        .CE(tcp_out_V_data_V_1_load_B),
        .D(tcp_in_V_data_V_0_data_out[9]),
        .Q(tcp_out_V_data_V_1_payload_B[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h78)) 
    tcp_out_V_data_V_1_sel_rd_i_1
       (.I0(tcp_out_TREADY),
        .I1(\tcp_out_V_data_V_1_state_reg_n_0_[0] ),
        .I2(tcp_out_V_data_V_1_sel),
        .O(tcp_out_V_data_V_1_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tcp_out_V_data_V_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(tcp_out_V_data_V_1_sel_rd_i_1_n_0),
        .Q(tcp_out_V_data_V_1_sel),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    tcp_out_V_data_V_1_sel_wr_i_1
       (.I0(tcp_out_V_data_V_1_ack_in),
        .I1(ap_CS_fsm_state2),
        .I2(\tcp_in_V_data_V_0_state_reg_n_0_[0] ),
        .I3(tcp_out_V_data_V_1_sel_wr),
        .O(tcp_out_V_data_V_1_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tcp_out_V_data_V_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(tcp_out_V_data_V_1_sel_wr_i_1_n_0),
        .Q(tcp_out_V_data_V_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hA8A8088808880888)) 
    \tcp_out_V_data_V_1_state[0]_i_1 
       (.I0(ap_rst_n),
        .I1(\tcp_out_V_data_V_1_state_reg_n_0_[0] ),
        .I2(tcp_out_V_data_V_1_ack_in),
        .I3(tcp_out_TREADY),
        .I4(\tcp_in_V_data_V_0_state_reg_n_0_[0] ),
        .I5(ap_CS_fsm_state2),
        .O(\tcp_out_V_data_V_1_state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF7FFF0FF)) 
    \tcp_out_V_data_V_1_state[1]_i_1 
       (.I0(\tcp_in_V_data_V_0_state_reg_n_0_[0] ),
        .I1(ap_CS_fsm_state2),
        .I2(tcp_out_TREADY),
        .I3(\tcp_out_V_data_V_1_state_reg_n_0_[0] ),
        .I4(tcp_out_V_data_V_1_ack_in),
        .O(\tcp_out_V_data_V_1_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tcp_out_V_data_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tcp_out_V_data_V_1_state[0]_i_1_n_0 ),
        .Q(\tcp_out_V_data_V_1_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tcp_out_V_data_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tcp_out_V_data_V_1_state[1]_i_1_n_0 ),
        .Q(tcp_out_V_data_V_1_ack_in),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFFFFFB8000000B8)) 
    \tcp_out_V_dest_V_1_payload_A[0]_i_1 
       (.I0(tcp_in_V_dest_V_0_payload_B),
        .I1(tcp_in_V_dest_V_0_sel),
        .I2(tcp_in_V_dest_V_0_payload_A),
        .I3(\tcp_out_V_dest_V_1_payload_A[0]_i_2_n_0 ),
        .I4(tcp_out_V_dest_V_1_sel_wr),
        .I5(tcp_out_V_dest_V_1_payload_A),
        .O(\tcp_out_V_dest_V_1_payload_A[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \tcp_out_V_dest_V_1_payload_A[0]_i_2 
       (.I0(tcp_out_TVALID),
        .I1(tcp_out_V_dest_V_1_ack_in),
        .O(\tcp_out_V_dest_V_1_payload_A[0]_i_2_n_0 ));
  FDRE \tcp_out_V_dest_V_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tcp_out_V_dest_V_1_payload_A[0]_i_1_n_0 ),
        .Q(tcp_out_V_dest_V_1_payload_A),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    \tcp_out_V_dest_V_1_payload_B[0]_i_1 
       (.I0(tcp_in_V_dest_V_0_payload_B),
        .I1(tcp_in_V_dest_V_0_sel),
        .I2(tcp_in_V_dest_V_0_payload_A),
        .I3(tcp_out_V_dest_V_1_sel_wr),
        .I4(\tcp_out_V_dest_V_1_payload_A[0]_i_2_n_0 ),
        .I5(tcp_out_V_dest_V_1_payload_B),
        .O(\tcp_out_V_dest_V_1_payload_B[0]_i_1_n_0 ));
  FDRE \tcp_out_V_dest_V_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tcp_out_V_dest_V_1_payload_B[0]_i_1_n_0 ),
        .Q(tcp_out_V_dest_V_1_payload_B),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h78)) 
    tcp_out_V_dest_V_1_sel_rd_i_1
       (.I0(tcp_out_TVALID),
        .I1(tcp_out_TREADY),
        .I2(tcp_out_V_dest_V_1_sel),
        .O(tcp_out_V_dest_V_1_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tcp_out_V_dest_V_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(tcp_out_V_dest_V_1_sel_rd_i_1_n_0),
        .Q(tcp_out_V_dest_V_1_sel),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    tcp_out_V_dest_V_1_sel_wr_i_1
       (.I0(tcp_out_V_dest_V_1_ack_in),
        .I1(ap_CS_fsm_state2),
        .I2(\tcp_in_V_data_V_0_state_reg_n_0_[0] ),
        .I3(tcp_out_V_data_V_1_ack_in),
        .I4(tcp_out_V_dest_V_1_sel_wr),
        .O(tcp_out_V_dest_V_1_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tcp_out_V_dest_V_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(tcp_out_V_dest_V_1_sel_wr_i_1_n_0),
        .Q(tcp_out_V_dest_V_1_sel_wr),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hA8A80888)) 
    \tcp_out_V_dest_V_1_state[0]_i_1 
       (.I0(ap_rst_n),
        .I1(tcp_out_TVALID),
        .I2(tcp_out_V_dest_V_1_ack_in),
        .I3(tcp_out_TREADY),
        .I4(p_186_in),
        .O(\tcp_out_V_dest_V_1_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \tcp_out_V_dest_V_1_state[0]_i_2 
       (.I0(ap_CS_fsm_state2),
        .I1(\tcp_in_V_data_V_0_state_reg_n_0_[0] ),
        .I2(tcp_out_V_data_V_1_ack_in),
        .O(p_186_in));
  LUT6 #(
    .INIT(64'hFF7FFFFFFF00FFFF)) 
    \tcp_out_V_dest_V_1_state[1]_i_1 
       (.I0(tcp_out_V_data_V_1_ack_in),
        .I1(\tcp_in_V_data_V_0_state_reg_n_0_[0] ),
        .I2(ap_CS_fsm_state2),
        .I3(tcp_out_TREADY),
        .I4(tcp_out_TVALID),
        .I5(tcp_out_V_dest_V_1_ack_in),
        .O(\tcp_out_V_dest_V_1_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tcp_out_V_dest_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tcp_out_V_dest_V_1_state[0]_i_1_n_0 ),
        .Q(tcp_out_TVALID),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tcp_out_V_dest_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tcp_out_V_dest_V_1_state[1]_i_1_n_0 ),
        .Q(tcp_out_V_dest_V_1_ack_in),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    \tcp_out_V_id_V_1_payload_A[0]_i_1 
       (.I0(tcp_in_V_id_V_0_payload_B),
        .I1(tcp_in_V_id_V_0_sel),
        .I2(tcp_in_V_id_V_0_payload_A),
        .I3(tcp_out_V_id_V_1_state_cmp_full),
        .I4(tcp_out_V_id_V_1_sel_wr),
        .I5(tcp_out_V_id_V_1_payload_A),
        .O(\tcp_out_V_id_V_1_payload_A[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \tcp_out_V_id_V_1_payload_A[0]_i_2 
       (.I0(tcp_out_V_id_V_1_ack_in),
        .I1(\tcp_out_V_id_V_1_state_reg_n_0_[0] ),
        .O(tcp_out_V_id_V_1_state_cmp_full));
  FDRE \tcp_out_V_id_V_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tcp_out_V_id_V_1_payload_A[0]_i_1_n_0 ),
        .Q(tcp_out_V_id_V_1_payload_A),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \tcp_out_V_id_V_1_payload_B[0]_i_1 
       (.I0(tcp_in_V_id_V_0_payload_B),
        .I1(tcp_in_V_id_V_0_sel),
        .I2(tcp_in_V_id_V_0_payload_A),
        .I3(tcp_out_V_id_V_1_sel_wr),
        .I4(tcp_out_V_id_V_1_state_cmp_full),
        .I5(tcp_out_V_id_V_1_payload_B),
        .O(\tcp_out_V_id_V_1_payload_B[0]_i_1_n_0 ));
  FDRE \tcp_out_V_id_V_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tcp_out_V_id_V_1_payload_B[0]_i_1_n_0 ),
        .Q(tcp_out_V_id_V_1_payload_B),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h78)) 
    tcp_out_V_id_V_1_sel_rd_i_1
       (.I0(\tcp_out_V_id_V_1_state_reg_n_0_[0] ),
        .I1(tcp_out_TREADY),
        .I2(tcp_out_V_id_V_1_sel),
        .O(tcp_out_V_id_V_1_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tcp_out_V_id_V_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(tcp_out_V_id_V_1_sel_rd_i_1_n_0),
        .Q(tcp_out_V_id_V_1_sel),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    tcp_out_V_id_V_1_sel_wr_i_1
       (.I0(tcp_out_V_id_V_1_ack_in),
        .I1(ap_CS_fsm_state2),
        .I2(\tcp_in_V_data_V_0_state_reg_n_0_[0] ),
        .I3(tcp_out_V_data_V_1_ack_in),
        .I4(tcp_out_V_id_V_1_sel_wr),
        .O(tcp_out_V_id_V_1_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tcp_out_V_id_V_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(tcp_out_V_id_V_1_sel_wr_i_1_n_0),
        .Q(tcp_out_V_id_V_1_sel_wr),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hA8A80888)) 
    \tcp_out_V_id_V_1_state[0]_i_1 
       (.I0(ap_rst_n),
        .I1(\tcp_out_V_id_V_1_state_reg_n_0_[0] ),
        .I2(tcp_out_V_id_V_1_ack_in),
        .I3(tcp_out_TREADY),
        .I4(p_186_in),
        .O(\tcp_out_V_id_V_1_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF7FFFFFFF00FFFF)) 
    \tcp_out_V_id_V_1_state[1]_i_1 
       (.I0(tcp_out_V_data_V_1_ack_in),
        .I1(\tcp_in_V_data_V_0_state_reg_n_0_[0] ),
        .I2(ap_CS_fsm_state2),
        .I3(tcp_out_TREADY),
        .I4(\tcp_out_V_id_V_1_state_reg_n_0_[0] ),
        .I5(tcp_out_V_id_V_1_ack_in),
        .O(\tcp_out_V_id_V_1_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tcp_out_V_id_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tcp_out_V_id_V_1_state[0]_i_1_n_0 ),
        .Q(\tcp_out_V_id_V_1_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tcp_out_V_id_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tcp_out_V_id_V_1_state[1]_i_1_n_0 ),
        .Q(tcp_out_V_id_V_1_ack_in),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tcp_out_V_keep_V_1_payload_A[0]_i_1 
       (.I0(tcp_in_V_keep_V_0_payload_B[0]),
        .I1(tcp_in_V_keep_V_0_sel),
        .I2(tcp_in_V_keep_V_0_payload_A[0]),
        .O(tcp_in_V_keep_V_0_data_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tcp_out_V_keep_V_1_payload_A[1]_i_1 
       (.I0(tcp_in_V_keep_V_0_payload_B[1]),
        .I1(tcp_in_V_keep_V_0_sel),
        .I2(tcp_in_V_keep_V_0_payload_A[1]),
        .O(tcp_in_V_keep_V_0_data_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tcp_out_V_keep_V_1_payload_A[2]_i_1 
       (.I0(tcp_in_V_keep_V_0_payload_B[2]),
        .I1(tcp_in_V_keep_V_0_sel),
        .I2(tcp_in_V_keep_V_0_payload_A[2]),
        .O(tcp_in_V_keep_V_0_data_out[2]));
  LUT3 #(
    .INIT(8'h0D)) 
    \tcp_out_V_keep_V_1_payload_A[3]_i_1 
       (.I0(\tcp_out_V_keep_V_1_state_reg_n_0_[0] ),
        .I1(tcp_out_V_keep_V_1_ack_in),
        .I2(tcp_out_V_keep_V_1_sel_wr),
        .O(\tcp_out_V_keep_V_1_payload_A[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tcp_out_V_keep_V_1_payload_A[3]_i_2 
       (.I0(tcp_in_V_keep_V_0_payload_B[3]),
        .I1(tcp_in_V_keep_V_0_sel),
        .I2(tcp_in_V_keep_V_0_payload_A[3]),
        .O(tcp_in_V_keep_V_0_data_out[3]));
  FDRE \tcp_out_V_keep_V_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(\tcp_out_V_keep_V_1_payload_A[3]_i_1_n_0 ),
        .D(tcp_in_V_keep_V_0_data_out[0]),
        .Q(tcp_out_V_keep_V_1_payload_A[0]),
        .R(1'b0));
  FDRE \tcp_out_V_keep_V_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(\tcp_out_V_keep_V_1_payload_A[3]_i_1_n_0 ),
        .D(tcp_in_V_keep_V_0_data_out[1]),
        .Q(tcp_out_V_keep_V_1_payload_A[1]),
        .R(1'b0));
  FDRE \tcp_out_V_keep_V_1_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(\tcp_out_V_keep_V_1_payload_A[3]_i_1_n_0 ),
        .D(tcp_in_V_keep_V_0_data_out[2]),
        .Q(tcp_out_V_keep_V_1_payload_A[2]),
        .R(1'b0));
  FDRE \tcp_out_V_keep_V_1_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(\tcp_out_V_keep_V_1_payload_A[3]_i_1_n_0 ),
        .D(tcp_in_V_keep_V_0_data_out[3]),
        .Q(tcp_out_V_keep_V_1_payload_A[3]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hA2)) 
    \tcp_out_V_keep_V_1_payload_B[3]_i_1 
       (.I0(tcp_out_V_keep_V_1_sel_wr),
        .I1(\tcp_out_V_keep_V_1_state_reg_n_0_[0] ),
        .I2(tcp_out_V_keep_V_1_ack_in),
        .O(tcp_out_V_keep_V_1_load_B));
  FDRE \tcp_out_V_keep_V_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(tcp_out_V_keep_V_1_load_B),
        .D(tcp_in_V_keep_V_0_data_out[0]),
        .Q(tcp_out_V_keep_V_1_payload_B[0]),
        .R(1'b0));
  FDRE \tcp_out_V_keep_V_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(tcp_out_V_keep_V_1_load_B),
        .D(tcp_in_V_keep_V_0_data_out[1]),
        .Q(tcp_out_V_keep_V_1_payload_B[1]),
        .R(1'b0));
  FDRE \tcp_out_V_keep_V_1_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(tcp_out_V_keep_V_1_load_B),
        .D(tcp_in_V_keep_V_0_data_out[2]),
        .Q(tcp_out_V_keep_V_1_payload_B[2]),
        .R(1'b0));
  FDRE \tcp_out_V_keep_V_1_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(tcp_out_V_keep_V_1_load_B),
        .D(tcp_in_V_keep_V_0_data_out[3]),
        .Q(tcp_out_V_keep_V_1_payload_B[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h78)) 
    tcp_out_V_keep_V_1_sel_rd_i_1
       (.I0(\tcp_out_V_keep_V_1_state_reg_n_0_[0] ),
        .I1(tcp_out_TREADY),
        .I2(tcp_out_V_keep_V_1_sel),
        .O(tcp_out_V_keep_V_1_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tcp_out_V_keep_V_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(tcp_out_V_keep_V_1_sel_rd_i_1_n_0),
        .Q(tcp_out_V_keep_V_1_sel),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    tcp_out_V_keep_V_1_sel_wr_i_1
       (.I0(tcp_out_V_keep_V_1_ack_in),
        .I1(ap_CS_fsm_state2),
        .I2(\tcp_in_V_data_V_0_state_reg_n_0_[0] ),
        .I3(tcp_out_V_data_V_1_ack_in),
        .I4(tcp_out_V_keep_V_1_sel_wr),
        .O(tcp_out_V_keep_V_1_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tcp_out_V_keep_V_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(tcp_out_V_keep_V_1_sel_wr_i_1_n_0),
        .Q(tcp_out_V_keep_V_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hA8A80888)) 
    \tcp_out_V_keep_V_1_state[0]_i_1 
       (.I0(ap_rst_n),
        .I1(\tcp_out_V_keep_V_1_state_reg_n_0_[0] ),
        .I2(tcp_out_V_keep_V_1_ack_in),
        .I3(tcp_out_TREADY),
        .I4(p_186_in),
        .O(\tcp_out_V_keep_V_1_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF7FFFFFFF00FFFF)) 
    \tcp_out_V_keep_V_1_state[1]_i_1 
       (.I0(tcp_out_V_data_V_1_ack_in),
        .I1(\tcp_in_V_data_V_0_state_reg_n_0_[0] ),
        .I2(ap_CS_fsm_state2),
        .I3(tcp_out_TREADY),
        .I4(\tcp_out_V_keep_V_1_state_reg_n_0_[0] ),
        .I5(tcp_out_V_keep_V_1_ack_in),
        .O(\tcp_out_V_keep_V_1_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tcp_out_V_keep_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tcp_out_V_keep_V_1_state[0]_i_1_n_0 ),
        .Q(\tcp_out_V_keep_V_1_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tcp_out_V_keep_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tcp_out_V_keep_V_1_state[1]_i_1_n_0 ),
        .Q(tcp_out_V_keep_V_1_ack_in),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    \tcp_out_V_last_V_1_payload_A[0]_i_1 
       (.I0(tcp_in_V_last_V_0_payload_B),
        .I1(tcp_in_V_last_V_0_sel),
        .I2(tcp_in_V_last_V_0_payload_A),
        .I3(tcp_out_V_last_V_1_state_cmp_full),
        .I4(tcp_out_V_last_V_1_sel_wr),
        .I5(tcp_out_V_last_V_1_payload_A),
        .O(\tcp_out_V_last_V_1_payload_A[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \tcp_out_V_last_V_1_payload_A[0]_i_2 
       (.I0(tcp_out_V_last_V_1_ack_in),
        .I1(\tcp_out_V_last_V_1_state_reg_n_0_[0] ),
        .O(tcp_out_V_last_V_1_state_cmp_full));
  FDRE \tcp_out_V_last_V_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tcp_out_V_last_V_1_payload_A[0]_i_1_n_0 ),
        .Q(tcp_out_V_last_V_1_payload_A),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \tcp_out_V_last_V_1_payload_B[0]_i_1 
       (.I0(tcp_in_V_last_V_0_payload_B),
        .I1(tcp_in_V_last_V_0_sel),
        .I2(tcp_in_V_last_V_0_payload_A),
        .I3(tcp_out_V_last_V_1_sel_wr),
        .I4(tcp_out_V_last_V_1_state_cmp_full),
        .I5(tcp_out_V_last_V_1_payload_B),
        .O(\tcp_out_V_last_V_1_payload_B[0]_i_1_n_0 ));
  FDRE \tcp_out_V_last_V_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tcp_out_V_last_V_1_payload_B[0]_i_1_n_0 ),
        .Q(tcp_out_V_last_V_1_payload_B),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h78)) 
    tcp_out_V_last_V_1_sel_rd_i_1
       (.I0(\tcp_out_V_last_V_1_state_reg_n_0_[0] ),
        .I1(tcp_out_TREADY),
        .I2(tcp_out_V_last_V_1_sel),
        .O(tcp_out_V_last_V_1_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tcp_out_V_last_V_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(tcp_out_V_last_V_1_sel_rd_i_1_n_0),
        .Q(tcp_out_V_last_V_1_sel),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    tcp_out_V_last_V_1_sel_wr_i_1
       (.I0(tcp_out_V_last_V_1_ack_in),
        .I1(ap_CS_fsm_state2),
        .I2(\tcp_in_V_data_V_0_state_reg_n_0_[0] ),
        .I3(tcp_out_V_data_V_1_ack_in),
        .I4(tcp_out_V_last_V_1_sel_wr),
        .O(tcp_out_V_last_V_1_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tcp_out_V_last_V_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(tcp_out_V_last_V_1_sel_wr_i_1_n_0),
        .Q(tcp_out_V_last_V_1_sel_wr),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hA8A80888)) 
    \tcp_out_V_last_V_1_state[0]_i_1 
       (.I0(ap_rst_n),
        .I1(\tcp_out_V_last_V_1_state_reg_n_0_[0] ),
        .I2(tcp_out_V_last_V_1_ack_in),
        .I3(tcp_out_TREADY),
        .I4(p_186_in),
        .O(\tcp_out_V_last_V_1_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF7FFFFFFF00FFFF)) 
    \tcp_out_V_last_V_1_state[1]_i_1 
       (.I0(tcp_out_V_data_V_1_ack_in),
        .I1(\tcp_in_V_data_V_0_state_reg_n_0_[0] ),
        .I2(ap_CS_fsm_state2),
        .I3(tcp_out_TREADY),
        .I4(\tcp_out_V_last_V_1_state_reg_n_0_[0] ),
        .I5(tcp_out_V_last_V_1_ack_in),
        .O(\tcp_out_V_last_V_1_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tcp_out_V_last_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tcp_out_V_last_V_1_state[0]_i_1_n_0 ),
        .Q(\tcp_out_V_last_V_1_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tcp_out_V_last_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tcp_out_V_last_V_1_state[1]_i_1_n_0 ),
        .Q(tcp_out_V_last_V_1_ack_in),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tcp_out_V_strb_V_1_payload_A[0]_i_1 
       (.I0(tcp_in_V_strb_V_0_payload_B[0]),
        .I1(tcp_in_V_strb_V_0_sel),
        .I2(tcp_in_V_strb_V_0_payload_A[0]),
        .O(tcp_in_V_strb_V_0_data_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tcp_out_V_strb_V_1_payload_A[1]_i_1 
       (.I0(tcp_in_V_strb_V_0_payload_B[1]),
        .I1(tcp_in_V_strb_V_0_sel),
        .I2(tcp_in_V_strb_V_0_payload_A[1]),
        .O(tcp_in_V_strb_V_0_data_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tcp_out_V_strb_V_1_payload_A[2]_i_1 
       (.I0(tcp_in_V_strb_V_0_payload_B[2]),
        .I1(tcp_in_V_strb_V_0_sel),
        .I2(tcp_in_V_strb_V_0_payload_A[2]),
        .O(tcp_in_V_strb_V_0_data_out[2]));
  LUT3 #(
    .INIT(8'h0D)) 
    \tcp_out_V_strb_V_1_payload_A[3]_i_1 
       (.I0(\tcp_out_V_strb_V_1_state_reg_n_0_[0] ),
        .I1(tcp_out_V_strb_V_1_ack_in),
        .I2(tcp_out_V_strb_V_1_sel_wr),
        .O(\tcp_out_V_strb_V_1_payload_A[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tcp_out_V_strb_V_1_payload_A[3]_i_2 
       (.I0(tcp_in_V_strb_V_0_payload_B[3]),
        .I1(tcp_in_V_strb_V_0_sel),
        .I2(tcp_in_V_strb_V_0_payload_A[3]),
        .O(tcp_in_V_strb_V_0_data_out[3]));
  FDRE \tcp_out_V_strb_V_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(\tcp_out_V_strb_V_1_payload_A[3]_i_1_n_0 ),
        .D(tcp_in_V_strb_V_0_data_out[0]),
        .Q(tcp_out_V_strb_V_1_payload_A[0]),
        .R(1'b0));
  FDRE \tcp_out_V_strb_V_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(\tcp_out_V_strb_V_1_payload_A[3]_i_1_n_0 ),
        .D(tcp_in_V_strb_V_0_data_out[1]),
        .Q(tcp_out_V_strb_V_1_payload_A[1]),
        .R(1'b0));
  FDRE \tcp_out_V_strb_V_1_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(\tcp_out_V_strb_V_1_payload_A[3]_i_1_n_0 ),
        .D(tcp_in_V_strb_V_0_data_out[2]),
        .Q(tcp_out_V_strb_V_1_payload_A[2]),
        .R(1'b0));
  FDRE \tcp_out_V_strb_V_1_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(\tcp_out_V_strb_V_1_payload_A[3]_i_1_n_0 ),
        .D(tcp_in_V_strb_V_0_data_out[3]),
        .Q(tcp_out_V_strb_V_1_payload_A[3]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hA2)) 
    \tcp_out_V_strb_V_1_payload_B[3]_i_1 
       (.I0(tcp_out_V_strb_V_1_sel_wr),
        .I1(\tcp_out_V_strb_V_1_state_reg_n_0_[0] ),
        .I2(tcp_out_V_strb_V_1_ack_in),
        .O(tcp_out_V_strb_V_1_load_B));
  FDRE \tcp_out_V_strb_V_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(tcp_out_V_strb_V_1_load_B),
        .D(tcp_in_V_strb_V_0_data_out[0]),
        .Q(tcp_out_V_strb_V_1_payload_B[0]),
        .R(1'b0));
  FDRE \tcp_out_V_strb_V_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(tcp_out_V_strb_V_1_load_B),
        .D(tcp_in_V_strb_V_0_data_out[1]),
        .Q(tcp_out_V_strb_V_1_payload_B[1]),
        .R(1'b0));
  FDRE \tcp_out_V_strb_V_1_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(tcp_out_V_strb_V_1_load_B),
        .D(tcp_in_V_strb_V_0_data_out[2]),
        .Q(tcp_out_V_strb_V_1_payload_B[2]),
        .R(1'b0));
  FDRE \tcp_out_V_strb_V_1_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(tcp_out_V_strb_V_1_load_B),
        .D(tcp_in_V_strb_V_0_data_out[3]),
        .Q(tcp_out_V_strb_V_1_payload_B[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h78)) 
    tcp_out_V_strb_V_1_sel_rd_i_1
       (.I0(\tcp_out_V_strb_V_1_state_reg_n_0_[0] ),
        .I1(tcp_out_TREADY),
        .I2(tcp_out_V_strb_V_1_sel),
        .O(tcp_out_V_strb_V_1_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tcp_out_V_strb_V_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(tcp_out_V_strb_V_1_sel_rd_i_1_n_0),
        .Q(tcp_out_V_strb_V_1_sel),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    tcp_out_V_strb_V_1_sel_wr_i_1
       (.I0(tcp_out_V_strb_V_1_ack_in),
        .I1(ap_CS_fsm_state2),
        .I2(\tcp_in_V_data_V_0_state_reg_n_0_[0] ),
        .I3(tcp_out_V_data_V_1_ack_in),
        .I4(tcp_out_V_strb_V_1_sel_wr),
        .O(tcp_out_V_strb_V_1_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tcp_out_V_strb_V_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(tcp_out_V_strb_V_1_sel_wr_i_1_n_0),
        .Q(tcp_out_V_strb_V_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hA8A80888)) 
    \tcp_out_V_strb_V_1_state[0]_i_1 
       (.I0(ap_rst_n),
        .I1(\tcp_out_V_strb_V_1_state_reg_n_0_[0] ),
        .I2(tcp_out_V_strb_V_1_ack_in),
        .I3(tcp_out_TREADY),
        .I4(p_186_in),
        .O(\tcp_out_V_strb_V_1_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF3FBFBFBFBFBFBFB)) 
    \tcp_out_V_strb_V_1_state[1]_i_1 
       (.I0(tcp_out_V_strb_V_1_ack_in),
        .I1(\tcp_out_V_strb_V_1_state_reg_n_0_[0] ),
        .I2(tcp_out_TREADY),
        .I3(ap_CS_fsm_state2),
        .I4(\tcp_in_V_data_V_0_state_reg_n_0_[0] ),
        .I5(tcp_out_V_data_V_1_ack_in),
        .O(\tcp_out_V_strb_V_1_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tcp_out_V_strb_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tcp_out_V_strb_V_1_state[0]_i_1_n_0 ),
        .Q(\tcp_out_V_strb_V_1_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tcp_out_V_strb_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tcp_out_V_strb_V_1_state[1]_i_1_n_0 ),
        .Q(tcp_out_V_strb_V_1_ack_in),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    \tcp_out_V_user_V_1_payload_A[0]_i_1 
       (.I0(tcp_in_V_user_V_0_payload_B),
        .I1(tcp_in_V_user_V_0_sel),
        .I2(tcp_in_V_user_V_0_payload_A),
        .I3(tcp_out_V_user_V_1_state_cmp_full),
        .I4(tcp_out_V_user_V_1_sel_wr),
        .I5(tcp_out_V_user_V_1_payload_A),
        .O(\tcp_out_V_user_V_1_payload_A[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \tcp_out_V_user_V_1_payload_A[0]_i_2 
       (.I0(tcp_out_V_user_V_1_ack_in),
        .I1(\tcp_out_V_user_V_1_state_reg_n_0_[0] ),
        .O(tcp_out_V_user_V_1_state_cmp_full));
  FDRE \tcp_out_V_user_V_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tcp_out_V_user_V_1_payload_A[0]_i_1_n_0 ),
        .Q(tcp_out_V_user_V_1_payload_A),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \tcp_out_V_user_V_1_payload_B[0]_i_1 
       (.I0(tcp_in_V_user_V_0_payload_B),
        .I1(tcp_in_V_user_V_0_sel),
        .I2(tcp_in_V_user_V_0_payload_A),
        .I3(tcp_out_V_user_V_1_sel_wr),
        .I4(tcp_out_V_user_V_1_state_cmp_full),
        .I5(tcp_out_V_user_V_1_payload_B),
        .O(\tcp_out_V_user_V_1_payload_B[0]_i_1_n_0 ));
  FDRE \tcp_out_V_user_V_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tcp_out_V_user_V_1_payload_B[0]_i_1_n_0 ),
        .Q(tcp_out_V_user_V_1_payload_B),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h78)) 
    tcp_out_V_user_V_1_sel_rd_i_1
       (.I0(\tcp_out_V_user_V_1_state_reg_n_0_[0] ),
        .I1(tcp_out_TREADY),
        .I2(tcp_out_V_user_V_1_sel),
        .O(tcp_out_V_user_V_1_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tcp_out_V_user_V_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(tcp_out_V_user_V_1_sel_rd_i_1_n_0),
        .Q(tcp_out_V_user_V_1_sel),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    tcp_out_V_user_V_1_sel_wr_i_1
       (.I0(tcp_out_V_user_V_1_ack_in),
        .I1(ap_CS_fsm_state2),
        .I2(\tcp_in_V_data_V_0_state_reg_n_0_[0] ),
        .I3(tcp_out_V_data_V_1_ack_in),
        .I4(tcp_out_V_user_V_1_sel_wr),
        .O(tcp_out_V_user_V_1_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tcp_out_V_user_V_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(tcp_out_V_user_V_1_sel_wr_i_1_n_0),
        .Q(tcp_out_V_user_V_1_sel_wr),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hA8A80888)) 
    \tcp_out_V_user_V_1_state[0]_i_1 
       (.I0(ap_rst_n),
        .I1(\tcp_out_V_user_V_1_state_reg_n_0_[0] ),
        .I2(tcp_out_V_user_V_1_ack_in),
        .I3(tcp_out_TREADY),
        .I4(p_186_in),
        .O(\tcp_out_V_user_V_1_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF3FBFBFBFBFBFBFB)) 
    \tcp_out_V_user_V_1_state[1]_i_1 
       (.I0(tcp_out_V_user_V_1_ack_in),
        .I1(\tcp_out_V_user_V_1_state_reg_n_0_[0] ),
        .I2(tcp_out_TREADY),
        .I3(ap_CS_fsm_state2),
        .I4(\tcp_in_V_data_V_0_state_reg_n_0_[0] ),
        .I5(tcp_out_V_data_V_1_ack_in),
        .O(\tcp_out_V_user_V_1_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tcp_out_V_user_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tcp_out_V_user_V_1_state[0]_i_1_n_0 ),
        .Q(\tcp_out_V_user_V_1_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tcp_out_V_user_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tcp_out_V_user_V_1_state[1]_i_1_n_0 ),
        .Q(tcp_out_V_user_V_1_ack_in),
        .R(ap_rst_n_inv));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
