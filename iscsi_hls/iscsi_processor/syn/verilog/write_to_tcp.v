// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module write_to_tcp (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        iscsi_pdu_header_buffer_V_address0,
        iscsi_pdu_header_buffer_V_ce0,
        iscsi_pdu_header_buffer_V_q0,
        iscsi_pdu_header_buffer_V_address1,
        iscsi_pdu_header_buffer_V_ce1,
        iscsi_pdu_header_buffer_V_q1,
        out_stream_V_V_TDATA,
        out_stream_V_V_TVALID,
        out_stream_V_V_TREADY
);

parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_state2 = 2'd2;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] iscsi_pdu_header_buffer_V_address0;
output   iscsi_pdu_header_buffer_V_ce0;
input  [7:0] iscsi_pdu_header_buffer_V_q0;
output  [5:0] iscsi_pdu_header_buffer_V_address1;
output   iscsi_pdu_header_buffer_V_ce1;
input  [7:0] iscsi_pdu_header_buffer_V_q1;
output  [31:0] out_stream_V_V_TDATA;
output   out_stream_V_V_TVALID;
input   out_stream_V_V_TREADY;

reg ap_done;
reg ap_idle;
reg ap_ready;

(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire    grp_write_byte_array_1_fu_16_ap_start;
wire    grp_write_byte_array_1_fu_16_ap_done;
wire    grp_write_byte_array_1_fu_16_ap_idle;
wire    grp_write_byte_array_1_fu_16_ap_ready;
wire   [31:0] grp_write_byte_array_1_fu_16_stream_ap_uint_32_V_V_TDATA;
wire    grp_write_byte_array_1_fu_16_stream_ap_uint_32_V_V_TVALID;
wire    grp_write_byte_array_1_fu_16_stream_ap_uint_32_V_V_TREADY;
wire   [5:0] grp_write_byte_array_1_fu_16_data_address0;
wire    grp_write_byte_array_1_fu_16_data_ce0;
wire   [5:0] grp_write_byte_array_1_fu_16_data_address1;
wire    grp_write_byte_array_1_fu_16_data_ce1;
reg    grp_write_byte_array_1_fu_16_ap_start_reg;
wire    ap_CS_fsm_state2;
reg   [1:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 2'd1;
#0 grp_write_byte_array_1_fu_16_ap_start_reg = 1'b0;
end

write_byte_array_1 grp_write_byte_array_1_fu_16(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_write_byte_array_1_fu_16_ap_start),
    .ap_done(grp_write_byte_array_1_fu_16_ap_done),
    .ap_idle(grp_write_byte_array_1_fu_16_ap_idle),
    .ap_ready(grp_write_byte_array_1_fu_16_ap_ready),
    .stream_ap_uint_32_V_V_TDATA(grp_write_byte_array_1_fu_16_stream_ap_uint_32_V_V_TDATA),
    .stream_ap_uint_32_V_V_TVALID(grp_write_byte_array_1_fu_16_stream_ap_uint_32_V_V_TVALID),
    .stream_ap_uint_32_V_V_TREADY(grp_write_byte_array_1_fu_16_stream_ap_uint_32_V_V_TREADY),
    .data_address0(grp_write_byte_array_1_fu_16_data_address0),
    .data_ce0(grp_write_byte_array_1_fu_16_data_ce0),
    .data_q0(iscsi_pdu_header_buffer_V_q0),
    .data_address1(grp_write_byte_array_1_fu_16_data_address1),
    .data_ce1(grp_write_byte_array_1_fu_16_data_ce1),
    .data_q1(iscsi_pdu_header_buffer_V_q1)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_write_byte_array_1_fu_16_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_write_byte_array_1_fu_16_ap_start_reg <= 1'b1;
        end else if ((grp_write_byte_array_1_fu_16_ap_ready == 1'b1)) begin
            grp_write_byte_array_1_fu_16_ap_start_reg <= 1'b0;
        end
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((grp_write_byte_array_1_fu_16_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((grp_write_byte_array_1_fu_16_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((grp_write_byte_array_1_fu_16_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign grp_write_byte_array_1_fu_16_ap_start = grp_write_byte_array_1_fu_16_ap_start_reg;

assign grp_write_byte_array_1_fu_16_stream_ap_uint_32_V_V_TREADY = (out_stream_V_V_TREADY & ap_CS_fsm_state2);

assign iscsi_pdu_header_buffer_V_address0 = grp_write_byte_array_1_fu_16_data_address0;

assign iscsi_pdu_header_buffer_V_address1 = grp_write_byte_array_1_fu_16_data_address1;

assign iscsi_pdu_header_buffer_V_ce0 = grp_write_byte_array_1_fu_16_data_ce0;

assign iscsi_pdu_header_buffer_V_ce1 = grp_write_byte_array_1_fu_16_data_ce1;

assign out_stream_V_V_TDATA = grp_write_byte_array_1_fu_16_stream_ap_uint_32_V_V_TDATA;

assign out_stream_V_V_TVALID = grp_write_byte_array_1_fu_16_stream_ap_uint_32_V_V_TVALID;

endmodule //write_to_tcp
