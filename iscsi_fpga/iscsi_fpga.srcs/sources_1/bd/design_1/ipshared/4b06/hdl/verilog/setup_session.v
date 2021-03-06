// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module setup_session (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        header_buffer_V_address0,
        header_buffer_V_ce0,
        header_buffer_V_q0,
        header_buffer_V_address1,
        header_buffer_V_ce1,
        header_buffer_V_q1,
        instance_tsih,
        instance_tsih_ap_vld,
        instance_data_length,
        instance_data_address0,
        instance_data_ce0,
        instance_data_q0,
        instance_discovery,
        instance_discovery_ap_vld,
        ap_return
);

parameter    ap_ST_fsm_state1 = 6'd1;
parameter    ap_ST_fsm_state2 = 6'd2;
parameter    ap_ST_fsm_state3 = 6'd4;
parameter    ap_ST_fsm_state4 = 6'd8;
parameter    ap_ST_fsm_state5 = 6'd16;
parameter    ap_ST_fsm_state6 = 6'd32;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] header_buffer_V_address0;
output   header_buffer_V_ce0;
input  [7:0] header_buffer_V_q0;
output  [5:0] header_buffer_V_address1;
output   header_buffer_V_ce1;
input  [7:0] header_buffer_V_q1;
output  [0:0] instance_tsih;
output   instance_tsih_ap_vld;
input  [31:0] instance_data_length;
output  [12:0] instance_data_address0;
output   instance_data_ce0;
input  [7:0] instance_data_q0;
output  [0:0] instance_discovery;
output   instance_discovery_ap_vld;
output  [9:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg header_buffer_V_ce0;
reg header_buffer_V_ce1;
reg instance_tsih_ap_vld;
reg[12:0] instance_data_address0;
reg instance_data_ce0;
reg instance_discovery_ap_vld;
reg[9:0] ap_return;

(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [4:0] p_str1328_address0;
reg    p_str1328_ce0;
wire   [6:0] p_str1328_q0;
wire   [3:0] p_str1227_address0;
reg    p_str1227_ce0;
wire   [6:0] p_str1227_q0;
wire   [0:0] icmp_ln5_fu_202_p2;
reg   [0:0] icmp_ln5_reg_344;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln112_fu_222_p2;
reg   [0:0] icmp_ln112_reg_354;
wire    ap_CS_fsm_state3;
wire   [30:0] i_fu_227_p2;
reg   [30:0] i_reg_358;
wire   [31:0] idx_fu_259_p3;
wire    ap_CS_fsm_state4;
wire   [0:0] icmp_ln112_1_fu_277_p2;
reg   [0:0] icmp_ln112_1_reg_381;
wire    ap_CS_fsm_state5;
wire   [30:0] i_7_fu_282_p2;
reg   [30:0] i_7_reg_385;
wire   [31:0] idx_1_fu_314_p3;
wire    ap_CS_fsm_state6;
reg   [30:0] i_0_i_i_reg_120;
wire   [0:0] icmp_ln114_fu_267_p2;
reg  signed [31:0] idx_0_i_i_reg_131;
reg   [30:0] i_0_i_i2_reg_143;
wire   [0:0] icmp_ln114_1_fu_322_p2;
reg  signed [31:0] idx_0_i_i3_reg_154;
reg   [0:0] ap_phi_mux_storemerge_phi_fu_170_p4;
reg   [0:0] storemerge_reg_166;
reg   [9:0] ap_phi_mux_p_0_phi_fu_183_p6;
reg   [9:0] p_0_reg_178;
wire   [63:0] zext_ln113_fu_233_p1;
wire  signed [63:0] sext_ln113_fu_238_p1;
wire   [63:0] zext_ln113_1_fu_288_p1;
wire  signed [63:0] sext_ln113_1_fu_293_p1;
wire   [15:0] tmp_i_fu_194_p3;
wire   [31:0] zext_ln112_fu_218_p1;
wire   [7:0] zext_ln113_2_fu_243_p1;
wire   [0:0] icmp_ln113_fu_247_p2;
wire   [31:0] add_ln113_fu_253_p2;
wire   [31:0] zext_ln112_1_fu_273_p1;
wire   [7:0] zext_ln113_3_fu_298_p1;
wire   [0:0] icmp_ln113_1_fu_302_p2;
wire   [31:0] add_ln113_1_fu_308_p2;
reg   [9:0] ap_return_preg;
reg   [5:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 6'd1;
#0 ap_return_preg = 10'd0;
end

setup_session_p_str1328 #(
    .DataWidth( 7 ),
    .AddressRange( 22 ),
    .AddressWidth( 5 ))
p_str1328_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(p_str1328_address0),
    .ce0(p_str1328_ce0),
    .q0(p_str1328_q0)
);

setup_session_p_str1227 #(
    .DataWidth( 7 ),
    .AddressRange( 11 ),
    .AddressWidth( 4 ))
p_str1227_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(p_str1227_address0),
    .ce0(p_str1227_ce0),
    .q0(p_str1227_q0)
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
                ap_return_preg[0] <= 1'b0;
        ap_return_preg[1] <= 1'b0;
        ap_return_preg[9] <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state6) & ((icmp_ln5_reg_344 == 1'd0) | ((icmp_ln112_reg_354 == 1'd1) | ((icmp_ln114_1_fu_322_p2 == 1'd1) | (icmp_ln112_1_reg_381 == 1'd0)))))) begin
                        ap_return_preg[1 : 0] <= ap_phi_mux_p_0_phi_fu_183_p6[1 : 0];
            ap_return_preg[9] <= ap_phi_mux_p_0_phi_fu_183_p6[9];
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln112_fu_222_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        i_0_i_i2_reg_143 <= 31'd0;
    end else if (((icmp_ln112_reg_354 == 1'd0) & (icmp_ln112_1_reg_381 == 1'd1) & (icmp_ln5_reg_344 == 1'd1) & (1'b1 == ap_CS_fsm_state6) & (icmp_ln114_1_fu_322_p2 == 1'd0))) begin
        i_0_i_i2_reg_143 <= i_7_reg_385;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln114_fu_267_p2 == 1'd0))) begin
        i_0_i_i_reg_120 <= i_reg_358;
    end else if (((icmp_ln5_fu_202_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        i_0_i_i_reg_120 <= 31'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln112_fu_222_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        idx_0_i_i3_reg_154 <= 32'd0;
    end else if (((icmp_ln112_reg_354 == 1'd0) & (icmp_ln112_1_reg_381 == 1'd1) & (icmp_ln5_reg_344 == 1'd1) & (1'b1 == ap_CS_fsm_state6) & (icmp_ln114_1_fu_322_p2 == 1'd0))) begin
        idx_0_i_i3_reg_154 <= idx_1_fu_314_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln114_fu_267_p2 == 1'd0))) begin
        idx_0_i_i_reg_131 <= idx_fu_259_p3;
    end else if (((icmp_ln5_fu_202_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        idx_0_i_i_reg_131 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln112_1_fu_277_p2 == 1'd0))) begin
                p_0_reg_178[0] <= 1'b0;
        p_0_reg_178[1] <= 1'b0;
        p_0_reg_178[9] <= 1'b1;
    end else if (((icmp_ln5_fu_202_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                p_0_reg_178[0] <= 1'b1;
        p_0_reg_178[1] <= 1'b1;
        p_0_reg_178[9] <= 1'b1;
    end else if (((1'b1 == ap_CS_fsm_state6) & (((icmp_ln112_reg_354 == 1'd1) & (icmp_ln5_reg_344 == 1'd1)) | ((icmp_ln114_1_fu_322_p2 == 1'd1) & (icmp_ln112_1_reg_381 == 1'd1) & (icmp_ln5_reg_344 == 1'd1))))) begin
                p_0_reg_178[0] <= 1'b0;
        p_0_reg_178[1] <= 1'b0;
        p_0_reg_178[9] <= 1'b0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln114_fu_267_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        storemerge_reg_166 <= 1'd1;
    end else if (((icmp_ln112_reg_354 == 1'd0) & (icmp_ln114_1_fu_322_p2 == 1'd1) & (icmp_ln112_1_reg_381 == 1'd1) & (icmp_ln5_reg_344 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        storemerge_reg_166 <= 1'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        i_7_reg_385 <= i_7_fu_282_p2;
        icmp_ln112_1_reg_381 <= icmp_ln112_1_fu_277_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        i_reg_358 <= i_fu_227_p2;
        icmp_ln112_reg_354 <= icmp_ln112_fu_222_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        icmp_ln5_reg_344 <= icmp_ln5_fu_202_p2;
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state6) & ((icmp_ln5_reg_344 == 1'd0) | ((icmp_ln112_reg_354 == 1'd1) | ((icmp_ln114_1_fu_322_p2 == 1'd1) | (icmp_ln112_1_reg_381 == 1'd0))))))) begin
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
    if (((1'b1 == ap_CS_fsm_state6) & (((icmp_ln112_reg_354 == 1'd1) & (icmp_ln5_reg_344 == 1'd1)) | ((icmp_ln114_1_fu_322_p2 == 1'd1) & (icmp_ln112_1_reg_381 == 1'd1) & (icmp_ln5_reg_344 == 1'd1))))) begin
        ap_phi_mux_p_0_phi_fu_183_p6 = 10'd0;
    end else begin
        ap_phi_mux_p_0_phi_fu_183_p6 = p_0_reg_178;
    end
end

always @ (*) begin
    if (((icmp_ln112_reg_354 == 1'd0) & (icmp_ln114_1_fu_322_p2 == 1'd1) & (icmp_ln112_1_reg_381 == 1'd1) & (icmp_ln5_reg_344 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        ap_phi_mux_storemerge_phi_fu_170_p4 = 1'd0;
    end else begin
        ap_phi_mux_storemerge_phi_fu_170_p4 = storemerge_reg_166;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) & ((icmp_ln5_reg_344 == 1'd0) | ((icmp_ln112_reg_354 == 1'd1) | ((icmp_ln114_1_fu_322_p2 == 1'd1) | (icmp_ln112_1_reg_381 == 1'd0)))))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) & ((icmp_ln5_reg_344 == 1'd0) | ((icmp_ln112_reg_354 == 1'd1) | ((icmp_ln114_1_fu_322_p2 == 1'd1) | (icmp_ln112_1_reg_381 == 1'd0)))))) begin
        ap_return = ap_phi_mux_p_0_phi_fu_183_p6;
    end else begin
        ap_return = ap_return_preg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        header_buffer_V_ce0 = 1'b1;
    end else begin
        header_buffer_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        header_buffer_V_ce1 = 1'b1;
    end else begin
        header_buffer_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        instance_data_address0 = zext_ln113_1_fu_288_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        instance_data_address0 = zext_ln113_fu_233_p1;
    end else begin
        instance_data_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state5))) begin
        instance_data_ce0 = 1'b1;
    end else begin
        instance_data_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) & (((icmp_ln112_reg_354 == 1'd1) & (icmp_ln5_reg_344 == 1'd1)) | ((icmp_ln114_1_fu_322_p2 == 1'd1) & (icmp_ln112_1_reg_381 == 1'd1) & (icmp_ln5_reg_344 == 1'd1))))) begin
        instance_discovery_ap_vld = 1'b1;
    end else begin
        instance_discovery_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln5_fu_202_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        instance_tsih_ap_vld = 1'b1;
    end else begin
        instance_tsih_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        p_str1227_ce0 = 1'b1;
    end else begin
        p_str1227_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        p_str1328_ce0 = 1'b1;
    end else begin
        p_str1328_ce0 = 1'b0;
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
            if (((icmp_ln5_fu_202_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln112_fu_222_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((icmp_ln114_fu_267_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & ((icmp_ln5_reg_344 == 1'd0) | ((icmp_ln112_reg_354 == 1'd1) | ((icmp_ln114_1_fu_322_p2 == 1'd1) | (icmp_ln112_1_reg_381 == 1'd0)))))) begin
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

assign add_ln113_1_fu_308_p2 = ($signed(idx_0_i_i3_reg_154) + $signed(32'd1));

assign add_ln113_fu_253_p2 = ($signed(idx_0_i_i_reg_131) + $signed(32'd1));

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign header_buffer_V_address0 = 64'd14;

assign header_buffer_V_address1 = 64'd15;

assign i_7_fu_282_p2 = (i_0_i_i2_reg_143 + 31'd1);

assign i_fu_227_p2 = (i_0_i_i_reg_120 + 31'd1);

assign icmp_ln112_1_fu_277_p2 = (($signed(zext_ln112_1_fu_273_p1) < $signed(instance_data_length)) ? 1'b1 : 1'b0);

assign icmp_ln112_fu_222_p2 = (($signed(zext_ln112_fu_218_p1) < $signed(instance_data_length)) ? 1'b1 : 1'b0);

assign icmp_ln113_1_fu_302_p2 = ((instance_data_q0 == zext_ln113_3_fu_298_p1) ? 1'b1 : 1'b0);

assign icmp_ln113_fu_247_p2 = ((instance_data_q0 == zext_ln113_2_fu_243_p1) ? 1'b1 : 1'b0);

assign icmp_ln114_1_fu_322_p2 = ((idx_1_fu_314_p3 == 32'd10) ? 1'b1 : 1'b0);

assign icmp_ln114_fu_267_p2 = ((idx_fu_259_p3 == 32'd21) ? 1'b1 : 1'b0);

assign icmp_ln5_fu_202_p2 = ((tmp_i_fu_194_p3 == 16'd0) ? 1'b1 : 1'b0);

assign idx_1_fu_314_p3 = ((icmp_ln113_1_fu_302_p2[0:0] === 1'b1) ? add_ln113_1_fu_308_p2 : 32'd0);

assign idx_fu_259_p3 = ((icmp_ln113_fu_247_p2[0:0] === 1'b1) ? add_ln113_fu_253_p2 : 32'd0);

assign instance_discovery = ap_phi_mux_storemerge_phi_fu_170_p4;

assign instance_tsih = 1'd1;

assign p_str1227_address0 = sext_ln113_1_fu_293_p1;

assign p_str1328_address0 = sext_ln113_fu_238_p1;

assign sext_ln113_1_fu_293_p1 = idx_0_i_i3_reg_154;

assign sext_ln113_fu_238_p1 = idx_0_i_i_reg_131;

assign tmp_i_fu_194_p3 = {{header_buffer_V_q0}, {header_buffer_V_q1}};

assign zext_ln112_1_fu_273_p1 = i_0_i_i2_reg_143;

assign zext_ln112_fu_218_p1 = i_0_i_i_reg_120;

assign zext_ln113_1_fu_288_p1 = i_0_i_i2_reg_143;

assign zext_ln113_2_fu_243_p1 = p_str1328_q0;

assign zext_ln113_3_fu_298_p1 = p_str1227_q0;

assign zext_ln113_fu_233_p1 = i_0_i_i_reg_120;

always @ (posedge ap_clk) begin
    p_0_reg_178[8:2] <= 7'b0000000;
    ap_return_preg[8:2] <= 7'b0000000;
end

endmodule //setup_session
