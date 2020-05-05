// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module update_value_bool_2 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        iscsi_connection_parameter_data_address0,
        iscsi_connection_parameter_data_ce0,
        iscsi_connection_parameter_data_q0,
        idx,
        val_r_i,
        val_r_o,
        val_r_o_ap_vld
);

parameter    ap_ST_fsm_state1 = 7'd1;
parameter    ap_ST_fsm_state2 = 7'd2;
parameter    ap_ST_fsm_state3 = 7'd4;
parameter    ap_ST_fsm_state4 = 7'd8;
parameter    ap_ST_fsm_state5 = 7'd16;
parameter    ap_ST_fsm_state6 = 7'd32;
parameter    ap_ST_fsm_state7 = 7'd64;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [12:0] iscsi_connection_parameter_data_address0;
output   iscsi_connection_parameter_data_ce0;
input  [7:0] iscsi_connection_parameter_data_q0;
input  [31:0] idx;
input  [31:0] val_r_i;
output  [31:0] val_r_o;
output   val_r_o_ap_vld;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[12:0] iscsi_connection_parameter_data_address0;
reg iscsi_connection_parameter_data_ce0;
reg[31:0] val_r_o;
reg val_r_o_ap_vld;

(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [3:0] p_str5_address0;
reg    p_str5_ce0;
wire   [6:0] p_str5_q0;
wire   [1:0] p_str13_address0;
reg    p_str13_ce0;
wire   [6:0] p_str13_q0;
wire    ap_CS_fsm_state2;
wire   [7:0] zext_ln122_11_fu_165_p1;
reg   [7:0] zext_ln122_11_reg_276;
wire    ap_CS_fsm_state3;
wire   [0:0] icmp_ln122_fu_169_p2;
reg   [0:0] icmp_ln122_reg_281;
wire   [3:0] i_fu_175_p2;
reg   [3:0] i_reg_285;
wire    ap_CS_fsm_state5;
wire   [7:0] zext_ln122_12_fu_201_p1;
reg   [7:0] zext_ln122_12_reg_303;
wire    ap_CS_fsm_state6;
wire   [0:0] icmp_ln122_2_fu_205_p2;
reg   [0:0] icmp_ln122_2_reg_308;
wire   [1:0] i_4_fu_211_p2;
reg   [1:0] i_4_reg_312;
reg   [3:0] i_0_i_reg_120;
wire    ap_CS_fsm_state4;
wire   [0:0] icmp_ln123_fu_191_p2;
reg   [1:0] i_0_i1_reg_132;
wire    ap_CS_fsm_state7;
wire   [0:0] icmp_ln123_2_fu_231_p2;
reg   [0:0] ap_phi_mux_p_0_i12_phi_fu_148_p4;
reg   [0:0] p_0_i12_reg_144;
wire   [63:0] zext_ln122_fu_156_p1;
wire  signed [63:0] sext_ln123_fu_186_p1;
wire   [63:0] zext_ln122_2_fu_196_p1;
wire  signed [63:0] sext_ln123_4_fu_226_p1;
wire   [31:0] or_ln_fu_256_p3;
wire   [31:0] zext_ln122_10_fu_161_p1;
wire   [31:0] add_ln123_fu_181_p2;
wire   [31:0] zext_ln123_fu_217_p1;
wire   [31:0] add_ln123_2_fu_221_p2;
wire   [0:0] trunc_ln145_fu_236_p1;
wire   [30:0] tmp_5_fu_246_p4;
wire   [0:0] or_ln145_fu_240_p2;
reg   [6:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 7'd1;
end

update_value_bool_2_p_str5 #(
    .DataWidth( 7 ),
    .AddressRange( 14 ),
    .AddressWidth( 4 ))
p_str5_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(p_str5_address0),
    .ce0(p_str5_ce0),
    .q0(p_str5_q0)
);

update_value_bool_3_p_str13 #(
    .DataWidth( 7 ),
    .AddressRange( 4 ),
    .AddressWidth( 2 ))
p_str13_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(p_str13_address0),
    .ce0(p_str13_ce0),
    .q0(p_str13_q0)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln122_fu_169_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        i_0_i1_reg_132 <= 2'd0;
    end else if (((icmp_ln122_2_reg_308 == 1'd0) & (icmp_ln122_reg_281 == 1'd1) & (1'b1 == ap_CS_fsm_state7) & (icmp_ln123_2_fu_231_p2 == 1'd1))) begin
        i_0_i1_reg_132 <= i_4_reg_312;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln123_fu_191_p2 == 1'd1))) begin
        i_0_i_reg_120 <= i_reg_285;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_0_i_reg_120 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln122_2_reg_308 == 1'd0) & (icmp_ln123_2_fu_231_p2 == 1'd0) & (icmp_ln122_reg_281 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        p_0_i12_reg_144 <= 1'd0;
    end else if (((icmp_ln122_2_fu_205_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        p_0_i12_reg_144 <= 1'd1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        i_4_reg_312 <= i_4_fu_211_p2;
        icmp_ln122_2_reg_308 <= icmp_ln122_2_fu_205_p2;
        zext_ln122_12_reg_303[6 : 0] <= zext_ln122_12_fu_201_p1[6 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        i_reg_285 <= i_fu_175_p2;
        icmp_ln122_reg_281 <= icmp_ln122_fu_169_p2;
        zext_ln122_11_reg_276[6 : 0] <= zext_ln122_11_fu_165_p1[6 : 0];
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state7) & ((icmp_ln122_reg_281 == 1'd0) | ((icmp_ln122_2_reg_308 == 1'd1) | (icmp_ln123_2_fu_231_p2 == 1'd0)))))) begin
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
    if (((icmp_ln122_2_reg_308 == 1'd0) & (icmp_ln123_2_fu_231_p2 == 1'd0) & (icmp_ln122_reg_281 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        ap_phi_mux_p_0_i12_phi_fu_148_p4 = 1'd0;
    end else begin
        ap_phi_mux_p_0_i12_phi_fu_148_p4 = p_0_i12_reg_144;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) & ((icmp_ln122_reg_281 == 1'd0) | ((icmp_ln122_2_reg_308 == 1'd1) | (icmp_ln123_2_fu_231_p2 == 1'd0))))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        iscsi_connection_parameter_data_address0 = sext_ln123_4_fu_226_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        iscsi_connection_parameter_data_address0 = sext_ln123_fu_186_p1;
    end else begin
        iscsi_connection_parameter_data_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state3))) begin
        iscsi_connection_parameter_data_ce0 = 1'b1;
    end else begin
        iscsi_connection_parameter_data_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        p_str13_ce0 = 1'b1;
    end else begin
        p_str13_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        p_str5_ce0 = 1'b1;
    end else begin
        p_str5_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) & (((icmp_ln122_2_reg_308 == 1'd1) & (icmp_ln122_reg_281 == 1'd1)) | ((icmp_ln123_2_fu_231_p2 == 1'd0) & (icmp_ln122_reg_281 == 1'd1))))) begin
        val_r_o = or_ln_fu_256_p3;
    end else begin
        val_r_o = val_r_i;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) & (((icmp_ln122_2_reg_308 == 1'd1) & (icmp_ln122_reg_281 == 1'd1)) | ((icmp_ln123_2_fu_231_p2 == 1'd0) & (icmp_ln122_reg_281 == 1'd1))))) begin
        val_r_o_ap_vld = 1'b1;
    end else begin
        val_r_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln122_fu_169_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((icmp_ln123_fu_191_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            if (((1'b1 == ap_CS_fsm_state7) & ((icmp_ln122_reg_281 == 1'd0) | ((icmp_ln122_2_reg_308 == 1'd1) | (icmp_ln123_2_fu_231_p2 == 1'd0))))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln123_2_fu_221_p2 = (zext_ln123_fu_217_p1 + idx);

assign add_ln123_fu_181_p2 = (zext_ln122_10_fu_161_p1 + idx);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign i_4_fu_211_p2 = (i_0_i1_reg_132 + 2'd1);

assign i_fu_175_p2 = (i_0_i_reg_120 + 4'd1);

assign icmp_ln122_2_fu_205_p2 = ((i_0_i1_reg_132 == 2'd3) ? 1'b1 : 1'b0);

assign icmp_ln122_fu_169_p2 = ((i_0_i_reg_120 == 4'd13) ? 1'b1 : 1'b0);

assign icmp_ln123_2_fu_231_p2 = ((iscsi_connection_parameter_data_q0 == zext_ln122_12_reg_303) ? 1'b1 : 1'b0);

assign icmp_ln123_fu_191_p2 = ((iscsi_connection_parameter_data_q0 == zext_ln122_11_reg_276) ? 1'b1 : 1'b0);

assign or_ln145_fu_240_p2 = (trunc_ln145_fu_236_p1 | ap_phi_mux_p_0_i12_phi_fu_148_p4);

assign or_ln_fu_256_p3 = {{tmp_5_fu_246_p4}, {or_ln145_fu_240_p2}};

assign p_str13_address0 = zext_ln122_2_fu_196_p1;

assign p_str5_address0 = zext_ln122_fu_156_p1;

assign sext_ln123_4_fu_226_p1 = $signed(add_ln123_2_fu_221_p2);

assign sext_ln123_fu_186_p1 = $signed(add_ln123_fu_181_p2);

assign tmp_5_fu_246_p4 = {{val_r_i[31:1]}};

assign trunc_ln145_fu_236_p1 = val_r_i[0:0];

assign zext_ln122_10_fu_161_p1 = i_0_i_reg_120;

assign zext_ln122_11_fu_165_p1 = p_str5_q0;

assign zext_ln122_12_fu_201_p1 = p_str13_q0;

assign zext_ln122_2_fu_196_p1 = i_0_i1_reg_132;

assign zext_ln122_fu_156_p1 = i_0_i_reg_120;

assign zext_ln123_fu_217_p1 = i_4_fu_211_p2;

always @ (posedge ap_clk) begin
    zext_ln122_11_reg_276[7] <= 1'b0;
    zext_ln122_12_reg_303[7] <= 1'b0;
end

endmodule //update_value_bool_2
