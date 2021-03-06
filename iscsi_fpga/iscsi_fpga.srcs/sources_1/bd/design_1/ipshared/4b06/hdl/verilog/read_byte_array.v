// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module read_byte_array (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        stream_ap_uint_32_V_V_TDATA,
        stream_ap_uint_32_V_V_TVALID,
        stream_ap_uint_32_V_V_TREADY,
        data_address0,
        data_ce0,
        data_we0,
        data_d0,
        data_address1,
        data_ce1,
        data_we1,
        data_d1
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_state2 = 3'd2;
parameter    ap_ST_fsm_state3 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] stream_ap_uint_32_V_V_TDATA;
input   stream_ap_uint_32_V_V_TVALID;
output   stream_ap_uint_32_V_V_TREADY;
output  [5:0] data_address0;
output   data_ce0;
output   data_we0;
output  [7:0] data_d0;
output  [5:0] data_address1;
output   data_ce1;
output   data_we1;
output  [7:0] data_d1;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg stream_ap_uint_32_V_V_TREADY;
reg[5:0] data_address0;
reg data_ce0;
reg data_we0;
reg[7:0] data_d0;
reg[5:0] data_address1;
reg data_ce1;
reg data_we1;
reg[7:0] data_d1;

(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    stream_ap_uint_32_V_V_TDATA_blk_n;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln34_fu_107_p2;
reg   [7:0] p_Result_3_reg_196;
reg    ap_block_state2;
reg   [7:0] p_Result_4_reg_201;
wire   [5:0] i_fu_187_p2;
wire    ap_CS_fsm_state3;
reg   [5:0] i_0_reg_95;
wire   [63:0] zext_ln36_fu_118_p1;
wire   [63:0] zext_ln37_fu_140_p1;
wire   [63:0] zext_ln38_fu_171_p1;
wire   [63:0] zext_ln39_fu_182_p1;
wire   [7:0] trunc_ln681_fu_113_p1;
wire   [5:0] or_ln37_fu_134_p2;
wire   [5:0] or_ln38_fu_165_p2;
wire   [5:0] or_ln39_fu_176_p2;
reg   [2:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        i_0_reg_95 <= i_fu_187_p2;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_0_reg_95 <= 6'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((~((icmp_ln34_fu_107_p2 == 1'd1) & (stream_ap_uint_32_V_V_TVALID == 1'b0)) & (icmp_ln34_fu_107_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        p_Result_3_reg_196 <= {{stream_ap_uint_32_V_V_TDATA[23:16]}};
        p_Result_4_reg_201 <= {{stream_ap_uint_32_V_V_TDATA[31:24]}};
    end
end

always @ (*) begin
    if (((~((icmp_ln34_fu_107_p2 == 1'd1) & (stream_ap_uint_32_V_V_TVALID == 1'b0)) & (icmp_ln34_fu_107_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if ((~((icmp_ln34_fu_107_p2 == 1'd1) & (stream_ap_uint_32_V_V_TVALID == 1'b0)) & (icmp_ln34_fu_107_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        data_address0 = zext_ln38_fu_171_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        data_address0 = zext_ln36_fu_118_p1;
    end else begin
        data_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        data_address1 = zext_ln39_fu_182_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        data_address1 = zext_ln37_fu_140_p1;
    end else begin
        data_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (~((icmp_ln34_fu_107_p2 == 1'd1) & (stream_ap_uint_32_V_V_TVALID == 1'b0)) & (1'b1 == ap_CS_fsm_state2)))) begin
        data_ce0 = 1'b1;
    end else begin
        data_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (~((icmp_ln34_fu_107_p2 == 1'd1) & (stream_ap_uint_32_V_V_TVALID == 1'b0)) & (1'b1 == ap_CS_fsm_state2)))) begin
        data_ce1 = 1'b1;
    end else begin
        data_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        data_d0 = p_Result_3_reg_196;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        data_d0 = trunc_ln681_fu_113_p1;
    end else begin
        data_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        data_d1 = p_Result_4_reg_201;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        data_d1 = {{stream_ap_uint_32_V_V_TDATA[15:8]}};
    end else begin
        data_d1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (~((icmp_ln34_fu_107_p2 == 1'd1) & (stream_ap_uint_32_V_V_TVALID == 1'b0)) & (icmp_ln34_fu_107_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)))) begin
        data_we0 = 1'b1;
    end else begin
        data_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (~((icmp_ln34_fu_107_p2 == 1'd1) & (stream_ap_uint_32_V_V_TVALID == 1'b0)) & (icmp_ln34_fu_107_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)))) begin
        data_we1 = 1'b1;
    end else begin
        data_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln34_fu_107_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        stream_ap_uint_32_V_V_TDATA_blk_n = stream_ap_uint_32_V_V_TVALID;
    end else begin
        stream_ap_uint_32_V_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((icmp_ln34_fu_107_p2 == 1'd1) & (stream_ap_uint_32_V_V_TVALID == 1'b0)) & (icmp_ln34_fu_107_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        stream_ap_uint_32_V_V_TREADY = 1'b1;
    end else begin
        stream_ap_uint_32_V_V_TREADY = 1'b0;
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
            if ((~((icmp_ln34_fu_107_p2 == 1'd1) & (stream_ap_uint_32_V_V_TVALID == 1'b0)) & (icmp_ln34_fu_107_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if ((~((icmp_ln34_fu_107_p2 == 1'd1) & (stream_ap_uint_32_V_V_TVALID == 1'b0)) & (icmp_ln34_fu_107_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

always @ (*) begin
    ap_block_state2 = ((icmp_ln34_fu_107_p2 == 1'd1) & (stream_ap_uint_32_V_V_TVALID == 1'b0));
end

assign i_fu_187_p2 = (6'd4 + i_0_reg_95);

assign icmp_ln34_fu_107_p2 = ((i_0_reg_95 < 6'd48) ? 1'b1 : 1'b0);

assign or_ln37_fu_134_p2 = (i_0_reg_95 | 6'd1);

assign or_ln38_fu_165_p2 = (i_0_reg_95 | 6'd2);

assign or_ln39_fu_176_p2 = (i_0_reg_95 | 6'd3);

assign trunc_ln681_fu_113_p1 = stream_ap_uint_32_V_V_TDATA[7:0];

assign zext_ln36_fu_118_p1 = i_0_reg_95;

assign zext_ln37_fu_140_p1 = or_ln37_fu_134_p2;

assign zext_ln38_fu_171_p1 = or_ln38_fu_165_p2;

assign zext_ln39_fu_182_p1 = or_ln39_fu_176_p2;

endmodule //read_byte_array
