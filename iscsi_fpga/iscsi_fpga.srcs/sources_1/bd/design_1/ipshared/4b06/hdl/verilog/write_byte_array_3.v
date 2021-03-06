// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module write_byte_array_3 (
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
        data_q0,
        data_address1,
        data_ce1,
        data_q1,
        length_r
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_state3 = 4'd4;
parameter    ap_ST_fsm_state4 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [31:0] stream_ap_uint_32_V_V_TDATA;
output   stream_ap_uint_32_V_V_TVALID;
input   stream_ap_uint_32_V_V_TREADY;
output  [12:0] data_address0;
output   data_ce0;
input  [7:0] data_q0;
output  [12:0] data_address1;
output   data_ce1;
input  [7:0] data_q1;
input  [31:0] length_r;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg stream_ap_uint_32_V_V_TVALID;
reg[12:0] data_address0;
reg data_ce0;
reg[12:0] data_address1;
reg data_ce1;

(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    stream_ap_uint_32_V_V_TDATA_blk_n;
wire    ap_CS_fsm_state4;
wire   [31:0] tmp_12_fu_184_p3;
reg   [31:0] tmp_12_reg_295;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln22_fu_192_p2;
wire   [0:0] icmp_ln24_fu_208_p2;
reg   [0:0] icmp_ln24_reg_308;
reg   [7:0] data_load_3_reg_318;
wire    ap_CS_fsm_state3;
wire   [7:0] select_ln24_fu_218_p3;
reg   [7:0] select_ln24_reg_323;
wire   [0:0] icmp_ln25_fu_231_p2;
reg   [0:0] icmp_ln25_reg_328;
wire   [0:0] icmp_ln26_fu_247_p2;
reg   [0:0] icmp_ln26_reg_338;
wire   [31:0] i_fu_257_p2;
reg   [31:0] i_reg_348;
reg  signed [31:0] i_0_reg_102;
wire  signed [63:0] sext_ln23_fu_197_p1;
wire  signed [63:0] sext_ln24_fu_213_p1;
wire  signed [63:0] sext_ln25_fu_236_p1;
wire  signed [63:0] sext_ln26_fu_252_p1;
wire   [31:0] add_ln22_fu_122_p2;
wire   [31:0] sub_ln22_fu_136_p2;
wire   [29:0] p_lshr_fu_142_p4;
wire   [0:0] tmp_10_fu_128_p3;
wire   [29:0] sub_ln22_1_fu_152_p2;
wire   [29:0] tmp_11_fu_158_p4;
wire   [0:0] tmp_fu_114_p3;
wire   [29:0] select_ln22_fu_168_p3;
wire   [29:0] select_ln22_1_fu_176_p3;
wire  signed [31:0] or_ln24_fu_202_p2;
wire  signed [31:0] or_ln25_fu_225_p2;
wire  signed [31:0] or_ln26_fu_241_p2;
wire   [7:0] select_ln26_fu_270_p3;
wire   [7:0] select_ln25_fu_263_p3;
reg   [3:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 4'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((stream_ap_uint_32_V_V_TREADY == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        i_0_reg_102 <= i_reg_348;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_0_reg_102 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        data_load_3_reg_318 <= data_q0;
        i_reg_348 <= i_fu_257_p2;
        icmp_ln25_reg_328 <= icmp_ln25_fu_231_p2;
        icmp_ln26_reg_338 <= icmp_ln26_fu_247_p2;
        select_ln24_reg_323 <= select_ln24_fu_218_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln22_fu_192_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        icmp_ln24_reg_308 <= icmp_ln24_fu_208_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        tmp_12_reg_295[31 : 2] <= tmp_12_fu_184_p3[31 : 2];
    end
end

always @ (*) begin
    if ((((icmp_ln22_fu_192_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((icmp_ln22_fu_192_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        data_address0 = sext_ln25_fu_236_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        data_address0 = sext_ln23_fu_197_p1;
    end else begin
        data_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        data_address1 = sext_ln26_fu_252_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        data_address1 = sext_ln24_fu_213_p1;
    end else begin
        data_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2))) begin
        data_ce0 = 1'b1;
    end else begin
        data_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2))) begin
        data_ce1 = 1'b1;
    end else begin
        data_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        stream_ap_uint_32_V_V_TDATA_blk_n = stream_ap_uint_32_V_V_TREADY;
    end else begin
        stream_ap_uint_32_V_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((stream_ap_uint_32_V_V_TREADY == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        stream_ap_uint_32_V_V_TVALID = 1'b1;
    end else begin
        stream_ap_uint_32_V_V_TVALID = 1'b0;
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
            if (((icmp_ln22_fu_192_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((stream_ap_uint_32_V_V_TREADY == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln22_fu_122_p2 = (length_r + 32'd3);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign i_fu_257_p2 = ($signed(i_0_reg_102) + $signed(32'd4));

assign icmp_ln22_fu_192_p2 = ((i_0_reg_102 == tmp_12_reg_295) ? 1'b1 : 1'b0);

assign icmp_ln24_fu_208_p2 = (($signed(or_ln24_fu_202_p2) < $signed(length_r)) ? 1'b1 : 1'b0);

assign icmp_ln25_fu_231_p2 = (($signed(or_ln25_fu_225_p2) < $signed(length_r)) ? 1'b1 : 1'b0);

assign icmp_ln26_fu_247_p2 = (($signed(or_ln26_fu_241_p2) < $signed(length_r)) ? 1'b1 : 1'b0);

assign or_ln24_fu_202_p2 = (i_0_reg_102 | 32'd1);

assign or_ln25_fu_225_p2 = (i_0_reg_102 | 32'd2);

assign or_ln26_fu_241_p2 = (i_0_reg_102 | 32'd3);

assign p_lshr_fu_142_p4 = {{sub_ln22_fu_136_p2[31:2]}};

assign select_ln22_1_fu_176_p3 = ((tmp_fu_114_p3[0:0] === 1'b1) ? 30'd0 : select_ln22_fu_168_p3);

assign select_ln22_fu_168_p3 = ((tmp_10_fu_128_p3[0:0] === 1'b1) ? sub_ln22_1_fu_152_p2 : tmp_11_fu_158_p4);

assign select_ln24_fu_218_p3 = ((icmp_ln24_reg_308[0:0] === 1'b1) ? data_q1 : 8'd0);

assign select_ln25_fu_263_p3 = ((icmp_ln25_reg_328[0:0] === 1'b1) ? data_q0 : 8'd0);

assign select_ln26_fu_270_p3 = ((icmp_ln26_reg_338[0:0] === 1'b1) ? data_q1 : 8'd0);

assign sext_ln23_fu_197_p1 = i_0_reg_102;

assign sext_ln24_fu_213_p1 = or_ln24_fu_202_p2;

assign sext_ln25_fu_236_p1 = or_ln25_fu_225_p2;

assign sext_ln26_fu_252_p1 = or_ln26_fu_241_p2;

assign stream_ap_uint_32_V_V_TDATA = {{{{select_ln26_fu_270_p3}, {select_ln25_fu_263_p3}}, {select_ln24_reg_323}}, {data_load_3_reg_318}};

assign sub_ln22_1_fu_152_p2 = (30'd0 - p_lshr_fu_142_p4);

assign sub_ln22_fu_136_p2 = ($signed(32'd4294967293) - $signed(length_r));

assign tmp_10_fu_128_p3 = add_ln22_fu_122_p2[32'd31];

assign tmp_11_fu_158_p4 = {{add_ln22_fu_122_p2[31:2]}};

assign tmp_12_fu_184_p3 = {{select_ln22_1_fu_176_p3}, {2'd0}};

assign tmp_fu_114_p3 = length_r[32'd31];

always @ (posedge ap_clk) begin
    tmp_12_reg_295[1:0] <= 2'b00;
end

endmodule //write_byte_array_3
