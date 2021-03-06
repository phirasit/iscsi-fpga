// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module write_byte_array (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        stream_ap_uint_32_V_V_TDATA,
        stream_ap_uint_32_V_V_TVALID,
        stream_ap_uint_32_V_V_TREADY
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
output  [31:0] stream_ap_uint_32_V_V_TDATA;
output   stream_ap_uint_32_V_V_TVALID;
input   stream_ap_uint_32_V_V_TREADY;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg stream_ap_uint_32_V_V_TVALID;

(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [5:0] response_text_address0;
reg    response_text_ce0;
wire   [6:0] response_text_q0;
wire   [5:0] response_text_address1;
reg    response_text_ce1;
wire   [6:0] response_text_q1;
wire   [5:0] response_text_address2;
reg    response_text_ce2;
wire   [6:0] response_text_q2;
wire   [5:0] response_text_address3;
reg    response_text_ce3;
wire   [6:0] response_text_q3;
reg    stream_ap_uint_32_V_V_TDATA_blk_n;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln22_fu_105_p2;
wire   [0:0] icmp_ln24_fu_122_p2;
reg   [0:0] icmp_ln24_reg_231;
wire   [0:0] icmp_ln25_fu_139_p2;
reg   [0:0] icmp_ln25_reg_241;
wire   [0:0] icmp_ln26_fu_156_p2;
reg   [0:0] icmp_ln26_reg_251;
wire   [5:0] i_fu_167_p2;
reg   [5:0] i_reg_261;
reg   [5:0] i_0_reg_94;
wire   [63:0] zext_ln23_fu_111_p1;
wire   [63:0] zext_ln24_fu_128_p1;
wire   [63:0] zext_ln25_fu_145_p1;
wire   [63:0] zext_ln26_fu_162_p1;
wire   [5:0] or_ln24_fu_116_p2;
wire   [5:0] or_ln25_fu_133_p2;
wire   [5:0] or_ln26_fu_150_p2;
wire   [6:0] select_ln24_fu_177_p3;
wire   [6:0] select_ln25_fu_188_p3;
wire   [6:0] select_ln26_fu_199_p3;
wire   [7:0] zext_ln25_2_fu_195_p1;
wire   [7:0] zext_ln24_2_fu_184_p1;
wire   [7:0] zext_ln23_2_fu_173_p1;
wire   [30:0] tmp_fu_206_p5;
reg   [2:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
end

write_byte_array_response_text #(
    .DataWidth( 7 ),
    .AddressRange( 55 ),
    .AddressWidth( 6 ))
response_text_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(response_text_address0),
    .ce0(response_text_ce0),
    .q0(response_text_q0),
    .address1(response_text_address1),
    .ce1(response_text_ce1),
    .q1(response_text_q1),
    .address2(response_text_address2),
    .ce2(response_text_ce2),
    .q2(response_text_q2),
    .address3(response_text_address3),
    .ce3(response_text_ce3),
    .q3(response_text_q3)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((stream_ap_uint_32_V_V_TREADY == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        i_0_reg_94 <= i_reg_261;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_0_reg_94 <= 6'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln22_fu_105_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        i_reg_261 <= i_fu_167_p2;
        icmp_ln24_reg_231 <= icmp_ln24_fu_122_p2;
        icmp_ln25_reg_241 <= icmp_ln25_fu_139_p2;
        icmp_ln26_reg_251 <= icmp_ln26_fu_156_p2;
    end
end

always @ (*) begin
    if ((((icmp_ln22_fu_105_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((icmp_ln22_fu_105_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        response_text_ce0 = 1'b1;
    end else begin
        response_text_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        response_text_ce1 = 1'b1;
    end else begin
        response_text_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        response_text_ce2 = 1'b1;
    end else begin
        response_text_ce2 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        response_text_ce3 = 1'b1;
    end else begin
        response_text_ce3 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        stream_ap_uint_32_V_V_TDATA_blk_n = stream_ap_uint_32_V_V_TREADY;
    end else begin
        stream_ap_uint_32_V_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((stream_ap_uint_32_V_V_TREADY == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
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
            if (((icmp_ln22_fu_105_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((stream_ap_uint_32_V_V_TREADY == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign i_fu_167_p2 = (i_0_reg_94 + 6'd4);

assign icmp_ln22_fu_105_p2 = ((i_0_reg_94 < 6'd55) ? 1'b1 : 1'b0);

assign icmp_ln24_fu_122_p2 = ((or_ln24_fu_116_p2 < 6'd55) ? 1'b1 : 1'b0);

assign icmp_ln25_fu_139_p2 = ((or_ln25_fu_133_p2 < 6'd55) ? 1'b1 : 1'b0);

assign icmp_ln26_fu_156_p2 = ((or_ln26_fu_150_p2 < 6'd55) ? 1'b1 : 1'b0);

assign or_ln24_fu_116_p2 = (i_0_reg_94 | 6'd1);

assign or_ln25_fu_133_p2 = (i_0_reg_94 | 6'd2);

assign or_ln26_fu_150_p2 = (i_0_reg_94 | 6'd3);

assign response_text_address0 = zext_ln23_fu_111_p1;

assign response_text_address1 = zext_ln24_fu_128_p1;

assign response_text_address2 = zext_ln25_fu_145_p1;

assign response_text_address3 = zext_ln26_fu_162_p1;

assign select_ln24_fu_177_p3 = ((icmp_ln24_reg_231[0:0] === 1'b1) ? response_text_q1 : 7'd0);

assign select_ln25_fu_188_p3 = ((icmp_ln25_reg_241[0:0] === 1'b1) ? response_text_q2 : 7'd0);

assign select_ln26_fu_199_p3 = ((icmp_ln26_reg_251[0:0] === 1'b1) ? response_text_q3 : 7'd0);

assign stream_ap_uint_32_V_V_TDATA = tmp_fu_206_p5;

assign tmp_fu_206_p5 = {{{{select_ln26_fu_199_p3}, {zext_ln25_2_fu_195_p1}}, {zext_ln24_2_fu_184_p1}}, {zext_ln23_2_fu_173_p1}};

assign zext_ln23_2_fu_173_p1 = response_text_q0;

assign zext_ln23_fu_111_p1 = i_0_reg_94;

assign zext_ln24_2_fu_184_p1 = select_ln24_fu_177_p3;

assign zext_ln24_fu_128_p1 = or_ln24_fu_116_p2;

assign zext_ln25_2_fu_195_p1 = select_ln25_fu_188_p3;

assign zext_ln25_fu_145_p1 = or_ln25_fu_133_p2;

assign zext_ln26_fu_162_p1 = or_ln26_fu_150_p2;

endmodule //write_byte_array
