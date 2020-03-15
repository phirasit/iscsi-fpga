// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module update_value_int_2 (
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
        key_address0,
        key_ce0,
        key_q0,
        val_read,
        keep_max,
        ap_return
);

parameter    ap_ST_fsm_state1 = 8'd1;
parameter    ap_ST_fsm_state2 = 8'd2;
parameter    ap_ST_fsm_state3 = 8'd4;
parameter    ap_ST_fsm_state4 = 8'd8;
parameter    ap_ST_fsm_state5 = 8'd16;
parameter    ap_ST_fsm_state6 = 8'd32;
parameter    ap_ST_fsm_state7 = 8'd64;
parameter    ap_ST_fsm_state8 = 8'd128;

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
output  [4:0] key_address0;
output   key_ce0;
input  [7:0] key_q0;
input  [31:0] val_read;
input   keep_max;
output  [31:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[12:0] iscsi_connection_parameter_data_address0;
reg iscsi_connection_parameter_data_ce0;
reg key_ce0;
reg[31:0] ap_return;

(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [0:0] keep_max_read_read_fu_26_p2;
wire    ap_CS_fsm_state2;
reg  signed [7:0] key_load_reg_264;
wire    ap_CS_fsm_state3;
wire   [31:0] i_fu_133_p2;
reg   [31:0] i_reg_272;
wire   [0:0] icmp_ln122_fu_127_p2;
wire  signed [31:0] add_ln132_fu_162_p2;
reg  signed [31:0] add_ln132_reg_285;
wire    ap_CS_fsm_state5;
reg   [7:0] iscsi_connection_par_15_reg_295;
wire    ap_CS_fsm_state6;
wire   [31:0] select_ln138_fu_184_p3;
wire   [0:0] icmp_ln134_fu_173_p2;
wire   [31:0] select_ln136_fu_196_p3;
wire   [31:0] nw_val_fu_234_p2;
wire    ap_CS_fsm_state7;
reg  signed [31:0] i_0_i_reg_78;
wire    ap_CS_fsm_state4;
wire   [0:0] icmp_ln123_fu_156_p2;
reg   [31:0] idx_assign_0_in_reg_90;
reg   [31:0] nw_val_0_reg_99;
reg   [31:0] val_0_reg_111;
wire  signed [63:0] sext_ln122_fu_122_p1;
wire  signed [63:0] sext_ln123_fu_144_p1;
wire  signed [63:0] sext_ln134_fu_168_p1;
wire  signed [7:0] icmp_ln122_fu_127_p0;
wire   [31:0] add_ln123_fu_139_p2;
wire   [8:0] zext_ln123_fu_149_p1;
wire  signed [8:0] sext_ln123_2_fu_153_p1;
wire   [0:0] icmp_ln138_fu_179_p2;
wire   [0:0] icmp_ln136_fu_191_p2;
wire   [31:0] shl_ln134_fu_203_p2;
wire   [31:0] shl_ln134_3_fu_209_p2;
wire   [8:0] zext_ln134_fu_215_p1;
wire   [8:0] add_ln134_5_fu_224_p2;
wire  signed [31:0] sext_ln134_3_fu_230_p1;
wire   [31:0] add_ln134_fu_218_p2;
reg   [31:0] ap_return_preg;
wire    ap_CS_fsm_state8;
reg   [7:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_return_preg = 32'd0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 32'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state8)) begin
            ap_return_preg <= val_0_reg_111;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln123_fu_156_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        i_0_i_reg_78 <= i_reg_272;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_0_i_reg_78 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln122_fu_127_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        idx_assign_0_in_reg_90 <= idx;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        idx_assign_0_in_reg_90 <= add_ln132_reg_285;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln122_fu_127_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        nw_val_0_reg_99 <= 32'd0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        nw_val_0_reg_99 <= nw_val_fu_234_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln123_fu_156_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        val_0_reg_111 <= val_read;
    end else if (((icmp_ln134_fu_173_p2 == 1'd1) & (keep_max_read_read_fu_26_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        val_0_reg_111 <= select_ln138_fu_184_p3;
    end else if (((icmp_ln134_fu_173_p2 == 1'd1) & (keep_max_read_read_fu_26_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        val_0_reg_111 <= select_ln136_fu_196_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        add_ln132_reg_285 <= add_ln132_fu_162_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        i_reg_272 <= i_fu_133_p2;
        key_load_reg_264 <= key_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        iscsi_connection_par_15_reg_295 <= iscsi_connection_parameter_data_q0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if ((1'b1 == ap_CS_fsm_state8)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        ap_return = val_0_reg_111;
    end else begin
        ap_return = ap_return_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        iscsi_connection_parameter_data_address0 = sext_ln134_fu_168_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        iscsi_connection_parameter_data_address0 = sext_ln123_fu_144_p1;
    end else begin
        iscsi_connection_parameter_data_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3))) begin
        iscsi_connection_parameter_data_ce0 = 1'b1;
    end else begin
        iscsi_connection_parameter_data_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        key_ce0 = 1'b1;
    end else begin
        key_ce0 = 1'b0;
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
            if (((icmp_ln122_fu_127_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((icmp_ln123_fu_156_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((icmp_ln134_fu_173_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln123_fu_139_p2 = ($signed(i_0_i_reg_78) + $signed(idx));

assign add_ln132_fu_162_p2 = (idx_assign_0_in_reg_90 + 32'd1);

assign add_ln134_5_fu_224_p2 = ($signed(9'd464) + $signed(zext_ln134_fu_215_p1));

assign add_ln134_fu_218_p2 = (shl_ln134_fu_203_p2 + shl_ln134_3_fu_209_p2);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign i_fu_133_p2 = ($signed(i_0_i_reg_78) + $signed(32'd1));

assign icmp_ln122_fu_127_p0 = key_q0;

assign icmp_ln122_fu_127_p2 = ((icmp_ln122_fu_127_p0 == 8'd0) ? 1'b1 : 1'b0);

assign icmp_ln123_fu_156_p2 = ((zext_ln123_fu_149_p1 == sext_ln123_2_fu_153_p1) ? 1'b1 : 1'b0);

assign icmp_ln134_fu_173_p2 = ((iscsi_connection_parameter_data_q0 == 8'd0) ? 1'b1 : 1'b0);

assign icmp_ln136_fu_191_p2 = (($signed(nw_val_0_reg_99) < $signed(val_read)) ? 1'b1 : 1'b0);

assign icmp_ln138_fu_179_p2 = (($signed(nw_val_0_reg_99) > $signed(val_read)) ? 1'b1 : 1'b0);

assign keep_max_read_read_fu_26_p2 = keep_max;

assign key_address0 = sext_ln122_fu_122_p1;

assign nw_val_fu_234_p2 = ($signed(sext_ln134_3_fu_230_p1) + $signed(add_ln134_fu_218_p2));

assign select_ln136_fu_196_p3 = ((icmp_ln136_fu_191_p2[0:0] === 1'b1) ? val_read : nw_val_0_reg_99);

assign select_ln138_fu_184_p3 = ((icmp_ln138_fu_179_p2[0:0] === 1'b1) ? val_read : nw_val_0_reg_99);

assign sext_ln122_fu_122_p1 = i_0_i_reg_78;

assign sext_ln123_2_fu_153_p1 = key_load_reg_264;

assign sext_ln123_fu_144_p1 = $signed(add_ln123_fu_139_p2);

assign sext_ln134_3_fu_230_p1 = $signed(add_ln134_5_fu_224_p2);

assign sext_ln134_fu_168_p1 = add_ln132_fu_162_p2;

assign shl_ln134_3_fu_209_p2 = nw_val_0_reg_99 << 32'd1;

assign shl_ln134_fu_203_p2 = nw_val_0_reg_99 << 32'd3;

assign zext_ln123_fu_149_p1 = iscsi_connection_parameter_data_q0;

assign zext_ln134_fu_215_p1 = iscsi_connection_par_15_reg_295;

endmodule //update_value_int_2