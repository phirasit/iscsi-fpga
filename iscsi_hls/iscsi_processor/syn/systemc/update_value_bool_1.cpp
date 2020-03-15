// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "update_value_bool_1.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic update_value_bool_1::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic update_value_bool_1::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<7> update_value_bool_1::ap_ST_fsm_state1 = "1";
const sc_lv<7> update_value_bool_1::ap_ST_fsm_state2 = "10";
const sc_lv<7> update_value_bool_1::ap_ST_fsm_state3 = "100";
const sc_lv<7> update_value_bool_1::ap_ST_fsm_state4 = "1000";
const sc_lv<7> update_value_bool_1::ap_ST_fsm_state5 = "10000";
const sc_lv<7> update_value_bool_1::ap_ST_fsm_state6 = "100000";
const sc_lv<7> update_value_bool_1::ap_ST_fsm_state7 = "1000000";
const sc_lv<32> update_value_bool_1::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> update_value_bool_1::ap_const_lv32_1 = "1";
const sc_lv<32> update_value_bool_1::ap_const_lv32_2 = "10";
const sc_lv<1> update_value_bool_1::ap_const_lv1_0 = "0";
const sc_lv<32> update_value_bool_1::ap_const_lv32_4 = "100";
const sc_lv<32> update_value_bool_1::ap_const_lv32_5 = "101";
const sc_lv<4> update_value_bool_1::ap_const_lv4_0 = "0000";
const sc_lv<32> update_value_bool_1::ap_const_lv32_3 = "11";
const sc_lv<1> update_value_bool_1::ap_const_lv1_1 = "1";
const sc_lv<32> update_value_bool_1::ap_const_lv32_6 = "110";
const sc_lv<2> update_value_bool_1::ap_const_lv2_0 = "00";
const sc_lv<4> update_value_bool_1::ap_const_lv4_E = "1110";
const sc_lv<4> update_value_bool_1::ap_const_lv4_1 = "1";
const sc_lv<2> update_value_bool_1::ap_const_lv2_3 = "11";
const sc_lv<2> update_value_bool_1::ap_const_lv2_1 = "1";
const sc_lv<32> update_value_bool_1::ap_const_lv32_1F = "11111";
const bool update_value_bool_1::ap_const_boolean_1 = true;

update_value_bool_1::update_value_bool_1(sc_module_name name) : sc_module(name), mVcdFile(0) {
    p_str8_U = new update_value_bool_1_p_str8("p_str8_U");
    p_str8_U->clk(ap_clk);
    p_str8_U->reset(ap_rst);
    p_str8_U->address0(p_str8_address0);
    p_str8_U->ce0(p_str8_ce0);
    p_str8_U->q0(p_str8_q0);
    p_str13_U = new update_value_bool_3_p_str13("p_str13_U");
    p_str13_U->clk(ap_clk);
    p_str13_U->reset(ap_rst);
    p_str13_U->address0(p_str13_address0);
    p_str13_U->ce0(p_str13_ce0);
    p_str13_U->q0(p_str13_q0);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_add_ln123_3_fu_221_p2);
    sensitive << ( idx );
    sensitive << ( zext_ln123_fu_217_p1 );

    SC_METHOD(thread_add_ln123_fu_181_p2);
    sensitive << ( idx );
    sensitive << ( zext_ln122_13_fu_161_p1 );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state4);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state5);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state6);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state7);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( icmp_ln122_reg_281 );
    sensitive << ( icmp_ln122_3_reg_308 );
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( icmp_ln123_3_fu_231_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_phi_mux_p_0_i12_phi_fu_148_p4);
    sensitive << ( icmp_ln122_reg_281 );
    sensitive << ( icmp_ln122_3_reg_308 );
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( icmp_ln123_3_fu_231_p2 );
    sensitive << ( p_0_i12_reg_144 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( icmp_ln122_reg_281 );
    sensitive << ( icmp_ln122_3_reg_308 );
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( icmp_ln123_3_fu_231_p2 );

    SC_METHOD(thread_i_5_fu_211_p2);
    sensitive << ( i_0_i1_reg_132 );

    SC_METHOD(thread_i_fu_175_p2);
    sensitive << ( i_0_i_reg_120 );

    SC_METHOD(thread_icmp_ln122_3_fu_205_p2);
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( i_0_i1_reg_132 );

    SC_METHOD(thread_icmp_ln122_fu_169_p2);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( i_0_i_reg_120 );

    SC_METHOD(thread_icmp_ln123_3_fu_231_p2);
    sensitive << ( iscsi_connection_parameter_data_q0 );
    sensitive << ( icmp_ln122_reg_281 );
    sensitive << ( zext_ln122_15_reg_303 );
    sensitive << ( icmp_ln122_3_reg_308 );
    sensitive << ( ap_CS_fsm_state7 );

    SC_METHOD(thread_icmp_ln123_fu_191_p2);
    sensitive << ( iscsi_connection_parameter_data_q0 );
    sensitive << ( zext_ln122_14_reg_276 );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_iscsi_connection_parameter_data_address0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( sext_ln123_fu_186_p1 );
    sensitive << ( sext_ln123_5_fu_226_p1 );

    SC_METHOD(thread_iscsi_connection_parameter_data_ce0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state6 );

    SC_METHOD(thread_or_ln145_fu_240_p2);
    sensitive << ( ap_phi_mux_p_0_i12_phi_fu_148_p4 );
    sensitive << ( trunc_ln145_fu_236_p1 );

    SC_METHOD(thread_or_ln_fu_256_p3);
    sensitive << ( tmp_6_fu_246_p4 );
    sensitive << ( or_ln145_fu_240_p2 );

    SC_METHOD(thread_p_str13_address0);
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( zext_ln122_3_fu_196_p1 );

    SC_METHOD(thread_p_str13_ce0);
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_p_str8_address0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( zext_ln122_fu_156_p1 );

    SC_METHOD(thread_p_str8_ce0);
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_sext_ln123_5_fu_226_p1);
    sensitive << ( add_ln123_3_fu_221_p2 );

    SC_METHOD(thread_sext_ln123_fu_186_p1);
    sensitive << ( add_ln123_fu_181_p2 );

    SC_METHOD(thread_tmp_6_fu_246_p4);
    sensitive << ( val_r_i );

    SC_METHOD(thread_trunc_ln145_fu_236_p1);
    sensitive << ( val_r_i );

    SC_METHOD(thread_val_r_o);
    sensitive << ( val_r_i );
    sensitive << ( icmp_ln122_reg_281 );
    sensitive << ( icmp_ln122_3_reg_308 );
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( icmp_ln123_3_fu_231_p2 );
    sensitive << ( or_ln_fu_256_p3 );

    SC_METHOD(thread_val_r_o_ap_vld);
    sensitive << ( icmp_ln122_reg_281 );
    sensitive << ( icmp_ln122_3_reg_308 );
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( icmp_ln123_3_fu_231_p2 );

    SC_METHOD(thread_zext_ln122_13_fu_161_p1);
    sensitive << ( i_0_i_reg_120 );

    SC_METHOD(thread_zext_ln122_14_fu_165_p1);
    sensitive << ( p_str8_q0 );

    SC_METHOD(thread_zext_ln122_15_fu_201_p1);
    sensitive << ( p_str13_q0 );

    SC_METHOD(thread_zext_ln122_3_fu_196_p1);
    sensitive << ( i_0_i1_reg_132 );

    SC_METHOD(thread_zext_ln122_fu_156_p1);
    sensitive << ( i_0_i_reg_120 );

    SC_METHOD(thread_zext_ln123_fu_217_p1);
    sensitive << ( i_5_fu_211_p2 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( icmp_ln122_fu_169_p2 );
    sensitive << ( icmp_ln122_reg_281 );
    sensitive << ( icmp_ln122_3_reg_308 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( icmp_ln123_fu_191_p2 );
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( icmp_ln123_3_fu_231_p2 );

    ap_CS_fsm = "0000001";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "update_value_bool_1_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, iscsi_connection_parameter_data_address0, "(port)iscsi_connection_parameter_data_address0");
    sc_trace(mVcdFile, iscsi_connection_parameter_data_ce0, "(port)iscsi_connection_parameter_data_ce0");
    sc_trace(mVcdFile, iscsi_connection_parameter_data_q0, "(port)iscsi_connection_parameter_data_q0");
    sc_trace(mVcdFile, idx, "(port)idx");
    sc_trace(mVcdFile, val_r_i, "(port)val_r_i");
    sc_trace(mVcdFile, val_r_o, "(port)val_r_o");
    sc_trace(mVcdFile, val_r_o_ap_vld, "(port)val_r_o_ap_vld");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, p_str8_address0, "p_str8_address0");
    sc_trace(mVcdFile, p_str8_ce0, "p_str8_ce0");
    sc_trace(mVcdFile, p_str8_q0, "p_str8_q0");
    sc_trace(mVcdFile, p_str13_address0, "p_str13_address0");
    sc_trace(mVcdFile, p_str13_ce0, "p_str13_ce0");
    sc_trace(mVcdFile, p_str13_q0, "p_str13_q0");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, zext_ln122_14_fu_165_p1, "zext_ln122_14_fu_165_p1");
    sc_trace(mVcdFile, zext_ln122_14_reg_276, "zext_ln122_14_reg_276");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, icmp_ln122_fu_169_p2, "icmp_ln122_fu_169_p2");
    sc_trace(mVcdFile, icmp_ln122_reg_281, "icmp_ln122_reg_281");
    sc_trace(mVcdFile, i_fu_175_p2, "i_fu_175_p2");
    sc_trace(mVcdFile, i_reg_285, "i_reg_285");
    sc_trace(mVcdFile, ap_CS_fsm_state5, "ap_CS_fsm_state5");
    sc_trace(mVcdFile, zext_ln122_15_fu_201_p1, "zext_ln122_15_fu_201_p1");
    sc_trace(mVcdFile, zext_ln122_15_reg_303, "zext_ln122_15_reg_303");
    sc_trace(mVcdFile, ap_CS_fsm_state6, "ap_CS_fsm_state6");
    sc_trace(mVcdFile, icmp_ln122_3_fu_205_p2, "icmp_ln122_3_fu_205_p2");
    sc_trace(mVcdFile, icmp_ln122_3_reg_308, "icmp_ln122_3_reg_308");
    sc_trace(mVcdFile, i_5_fu_211_p2, "i_5_fu_211_p2");
    sc_trace(mVcdFile, i_5_reg_312, "i_5_reg_312");
    sc_trace(mVcdFile, i_0_i_reg_120, "i_0_i_reg_120");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, icmp_ln123_fu_191_p2, "icmp_ln123_fu_191_p2");
    sc_trace(mVcdFile, i_0_i1_reg_132, "i_0_i1_reg_132");
    sc_trace(mVcdFile, ap_CS_fsm_state7, "ap_CS_fsm_state7");
    sc_trace(mVcdFile, icmp_ln123_3_fu_231_p2, "icmp_ln123_3_fu_231_p2");
    sc_trace(mVcdFile, ap_phi_mux_p_0_i12_phi_fu_148_p4, "ap_phi_mux_p_0_i12_phi_fu_148_p4");
    sc_trace(mVcdFile, p_0_i12_reg_144, "p_0_i12_reg_144");
    sc_trace(mVcdFile, zext_ln122_fu_156_p1, "zext_ln122_fu_156_p1");
    sc_trace(mVcdFile, sext_ln123_fu_186_p1, "sext_ln123_fu_186_p1");
    sc_trace(mVcdFile, zext_ln122_3_fu_196_p1, "zext_ln122_3_fu_196_p1");
    sc_trace(mVcdFile, sext_ln123_5_fu_226_p1, "sext_ln123_5_fu_226_p1");
    sc_trace(mVcdFile, or_ln_fu_256_p3, "or_ln_fu_256_p3");
    sc_trace(mVcdFile, zext_ln122_13_fu_161_p1, "zext_ln122_13_fu_161_p1");
    sc_trace(mVcdFile, add_ln123_fu_181_p2, "add_ln123_fu_181_p2");
    sc_trace(mVcdFile, zext_ln123_fu_217_p1, "zext_ln123_fu_217_p1");
    sc_trace(mVcdFile, add_ln123_3_fu_221_p2, "add_ln123_3_fu_221_p2");
    sc_trace(mVcdFile, trunc_ln145_fu_236_p1, "trunc_ln145_fu_236_p1");
    sc_trace(mVcdFile, tmp_6_fu_246_p4, "tmp_6_fu_246_p4");
    sc_trace(mVcdFile, or_ln145_fu_240_p2, "or_ln145_fu_240_p2");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

update_value_bool_1::~update_value_bool_1() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete p_str8_U;
    delete p_str13_U;
}

void update_value_bool_1::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
         esl_seteq<1,1,1>(icmp_ln122_fu_169_p2.read(), ap_const_lv1_1))) {
        i_0_i1_reg_132 = ap_const_lv2_0;
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read()) && 
                esl_seteq<1,1,1>(icmp_ln122_reg_281.read(), ap_const_lv1_1) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln122_3_reg_308.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln123_3_fu_231_p2.read()))) {
        i_0_i1_reg_132 = i_5_reg_312.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(icmp_ln123_fu_191_p2.read(), ap_const_lv1_1))) {
        i_0_i_reg_120 = i_reg_285.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        i_0_i_reg_120 = ap_const_lv4_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read()) && 
         esl_seteq<1,1,1>(icmp_ln122_reg_281.read(), ap_const_lv1_1) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln122_3_reg_308.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln123_3_fu_231_p2.read()))) {
        p_0_i12_reg_144 = ap_const_lv1_0;
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()) && 
                esl_seteq<1,1,1>(icmp_ln122_3_fu_205_p2.read(), ap_const_lv1_1))) {
        p_0_i12_reg_144 = ap_const_lv1_1;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        i_5_reg_312 = i_5_fu_211_p2.read();
        icmp_ln122_3_reg_308 = icmp_ln122_3_fu_205_p2.read();
        zext_ln122_15_reg_303 = zext_ln122_15_fu_201_p1.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        i_reg_285 = i_fu_175_p2.read();
        icmp_ln122_reg_281 = icmp_ln122_fu_169_p2.read();
        zext_ln122_14_reg_276 = zext_ln122_14_fu_165_p1.read();
    }
}

void update_value_bool_1::thread_add_ln123_3_fu_221_p2() {
    add_ln123_3_fu_221_p2 = (!zext_ln123_fu_217_p1.read().is_01() || !idx.read().is_01())? sc_lv<32>(): (sc_biguint<32>(zext_ln123_fu_217_p1.read()) + sc_biguint<32>(idx.read()));
}

void update_value_bool_1::thread_add_ln123_fu_181_p2() {
    add_ln123_fu_181_p2 = (!zext_ln122_13_fu_161_p1.read().is_01() || !idx.read().is_01())? sc_lv<32>(): (sc_biguint<32>(zext_ln122_13_fu_161_p1.read()) + sc_biguint<32>(idx.read()));
}

void update_value_bool_1::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void update_value_bool_1::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void update_value_bool_1::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void update_value_bool_1::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void update_value_bool_1::thread_ap_CS_fsm_state5() {
    ap_CS_fsm_state5 = ap_CS_fsm.read()[4];
}

void update_value_bool_1::thread_ap_CS_fsm_state6() {
    ap_CS_fsm_state6 = ap_CS_fsm.read()[5];
}

void update_value_bool_1::thread_ap_CS_fsm_state7() {
    ap_CS_fsm_state7 = ap_CS_fsm.read()[6];
}

void update_value_bool_1::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read()) && 
          ((esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln123_3_fu_231_p2.read()) || 
            esl_seteq<1,1,1>(icmp_ln122_3_reg_308.read(), ap_const_lv1_1)) || 
           esl_seteq<1,1,1>(icmp_ln122_reg_281.read(), ap_const_lv1_0))))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void update_value_bool_1::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void update_value_bool_1::thread_ap_phi_mux_p_0_i12_phi_fu_148_p4() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read()) && 
         esl_seteq<1,1,1>(icmp_ln122_reg_281.read(), ap_const_lv1_1) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln122_3_reg_308.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln123_3_fu_231_p2.read()))) {
        ap_phi_mux_p_0_i12_phi_fu_148_p4 = ap_const_lv1_0;
    } else {
        ap_phi_mux_p_0_i12_phi_fu_148_p4 = p_0_i12_reg_144.read();
    }
}

void update_value_bool_1::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read()) && 
         ((esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln123_3_fu_231_p2.read()) || 
           esl_seteq<1,1,1>(icmp_ln122_3_reg_308.read(), ap_const_lv1_1)) || 
          esl_seteq<1,1,1>(icmp_ln122_reg_281.read(), ap_const_lv1_0)))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void update_value_bool_1::thread_i_5_fu_211_p2() {
    i_5_fu_211_p2 = (!i_0_i1_reg_132.read().is_01() || !ap_const_lv2_1.is_01())? sc_lv<2>(): (sc_biguint<2>(i_0_i1_reg_132.read()) + sc_biguint<2>(ap_const_lv2_1));
}

void update_value_bool_1::thread_i_fu_175_p2() {
    i_fu_175_p2 = (!i_0_i_reg_120.read().is_01() || !ap_const_lv4_1.is_01())? sc_lv<4>(): (sc_biguint<4>(i_0_i_reg_120.read()) + sc_biguint<4>(ap_const_lv4_1));
}

void update_value_bool_1::thread_icmp_ln122_3_fu_205_p2() {
    icmp_ln122_3_fu_205_p2 = (!i_0_i1_reg_132.read().is_01() || !ap_const_lv2_3.is_01())? sc_lv<1>(): sc_lv<1>(i_0_i1_reg_132.read() == ap_const_lv2_3);
}

void update_value_bool_1::thread_icmp_ln122_fu_169_p2() {
    icmp_ln122_fu_169_p2 = (!i_0_i_reg_120.read().is_01() || !ap_const_lv4_E.is_01())? sc_lv<1>(): sc_lv<1>(i_0_i_reg_120.read() == ap_const_lv4_E);
}

void update_value_bool_1::thread_icmp_ln123_3_fu_231_p2() {
    icmp_ln123_3_fu_231_p2 = (!iscsi_connection_parameter_data_q0.read().is_01() || !zext_ln122_15_reg_303.read().is_01())? sc_lv<1>(): sc_lv<1>(iscsi_connection_parameter_data_q0.read() == zext_ln122_15_reg_303.read());
}

void update_value_bool_1::thread_icmp_ln123_fu_191_p2() {
    icmp_ln123_fu_191_p2 = (!iscsi_connection_parameter_data_q0.read().is_01() || !zext_ln122_14_reg_276.read().is_01())? sc_lv<1>(): sc_lv<1>(iscsi_connection_parameter_data_q0.read() == zext_ln122_14_reg_276.read());
}

void update_value_bool_1::thread_iscsi_connection_parameter_data_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        iscsi_connection_parameter_data_address0 =  (sc_lv<13>) (sext_ln123_5_fu_226_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        iscsi_connection_parameter_data_address0 =  (sc_lv<13>) (sext_ln123_fu_186_p1.read());
    } else {
        iscsi_connection_parameter_data_address0 = "XXXXXXXXXXXXX";
    }
}

void update_value_bool_1::thread_iscsi_connection_parameter_data_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()))) {
        iscsi_connection_parameter_data_ce0 = ap_const_logic_1;
    } else {
        iscsi_connection_parameter_data_ce0 = ap_const_logic_0;
    }
}

void update_value_bool_1::thread_or_ln145_fu_240_p2() {
    or_ln145_fu_240_p2 = (trunc_ln145_fu_236_p1.read() | ap_phi_mux_p_0_i12_phi_fu_148_p4.read());
}

void update_value_bool_1::thread_or_ln_fu_256_p3() {
    or_ln_fu_256_p3 = esl_concat<31,1>(tmp_6_fu_246_p4.read(), or_ln145_fu_240_p2.read());
}

void update_value_bool_1::thread_p_str13_address0() {
    p_str13_address0 =  (sc_lv<2>) (zext_ln122_3_fu_196_p1.read());
}

void update_value_bool_1::thread_p_str13_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        p_str13_ce0 = ap_const_logic_1;
    } else {
        p_str13_ce0 = ap_const_logic_0;
    }
}

void update_value_bool_1::thread_p_str8_address0() {
    p_str8_address0 =  (sc_lv<4>) (zext_ln122_fu_156_p1.read());
}

void update_value_bool_1::thread_p_str8_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        p_str8_ce0 = ap_const_logic_1;
    } else {
        p_str8_ce0 = ap_const_logic_0;
    }
}

void update_value_bool_1::thread_sext_ln123_5_fu_226_p1() {
    sext_ln123_5_fu_226_p1 = esl_sext<64,32>(add_ln123_3_fu_221_p2.read());
}

void update_value_bool_1::thread_sext_ln123_fu_186_p1() {
    sext_ln123_fu_186_p1 = esl_sext<64,32>(add_ln123_fu_181_p2.read());
}

void update_value_bool_1::thread_tmp_6_fu_246_p4() {
    tmp_6_fu_246_p4 = val_r_i.read().range(31, 1);
}

void update_value_bool_1::thread_trunc_ln145_fu_236_p1() {
    trunc_ln145_fu_236_p1 = val_r_i.read().range(1-1, 0);
}

void update_value_bool_1::thread_val_r_o() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read()) && 
         ((esl_seteq<1,1,1>(icmp_ln122_reg_281.read(), ap_const_lv1_1) && 
           esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln123_3_fu_231_p2.read())) || 
          (esl_seteq<1,1,1>(icmp_ln122_reg_281.read(), ap_const_lv1_1) && 
           esl_seteq<1,1,1>(icmp_ln122_3_reg_308.read(), ap_const_lv1_1))))) {
        val_r_o = or_ln_fu_256_p3.read();
    } else {
        val_r_o = val_r_i.read();
    }
}

void update_value_bool_1::thread_val_r_o_ap_vld() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read()) && 
         ((esl_seteq<1,1,1>(icmp_ln122_reg_281.read(), ap_const_lv1_1) && 
           esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln123_3_fu_231_p2.read())) || 
          (esl_seteq<1,1,1>(icmp_ln122_reg_281.read(), ap_const_lv1_1) && 
           esl_seteq<1,1,1>(icmp_ln122_3_reg_308.read(), ap_const_lv1_1))))) {
        val_r_o_ap_vld = ap_const_logic_1;
    } else {
        val_r_o_ap_vld = ap_const_logic_0;
    }
}

void update_value_bool_1::thread_zext_ln122_13_fu_161_p1() {
    zext_ln122_13_fu_161_p1 = esl_zext<32,4>(i_0_i_reg_120.read());
}

void update_value_bool_1::thread_zext_ln122_14_fu_165_p1() {
    zext_ln122_14_fu_165_p1 = esl_zext<8,7>(p_str8_q0.read());
}

void update_value_bool_1::thread_zext_ln122_15_fu_201_p1() {
    zext_ln122_15_fu_201_p1 = esl_zext<8,7>(p_str13_q0.read());
}

void update_value_bool_1::thread_zext_ln122_3_fu_196_p1() {
    zext_ln122_3_fu_196_p1 = esl_zext<64,2>(i_0_i1_reg_132.read());
}

void update_value_bool_1::thread_zext_ln122_fu_156_p1() {
    zext_ln122_fu_156_p1 = esl_zext<64,4>(i_0_i_reg_120.read());
}

void update_value_bool_1::thread_zext_ln123_fu_217_p1() {
    zext_ln123_fu_217_p1 = esl_zext<32,2>(i_5_fu_211_p2.read());
}

void update_value_bool_1::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            ap_NS_fsm = ap_ST_fsm_state3;
            break;
        case 4 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(icmp_ln122_fu_169_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state5;
            } else {
                ap_NS_fsm = ap_ST_fsm_state4;
            }
            break;
        case 8 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln123_fu_191_p2.read()))) {
                ap_NS_fsm = ap_ST_fsm_state7;
            } else {
                ap_NS_fsm = ap_ST_fsm_state2;
            }
            break;
        case 16 : 
            ap_NS_fsm = ap_ST_fsm_state6;
            break;
        case 32 : 
            ap_NS_fsm = ap_ST_fsm_state7;
            break;
        case 64 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read()) && ((esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln123_3_fu_231_p2.read()) || 
   esl_seteq<1,1,1>(icmp_ln122_3_reg_308.read(), ap_const_lv1_1)) || 
  esl_seteq<1,1,1>(icmp_ln122_reg_281.read(), ap_const_lv1_0)))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state5;
            }
            break;
        default : 
            ap_NS_fsm =  (sc_lv<7>) ("XXXXXXX");
            break;
    }
}

}
