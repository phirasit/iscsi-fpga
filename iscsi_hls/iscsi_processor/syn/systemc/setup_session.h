// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _setup_session_HH_
#define _setup_session_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "setup_session_p_str1328.h"
#include "setup_session_p_str1227.h"

namespace ap_rtl {

struct setup_session : public sc_module {
    // Port declarations 21
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<6> > header_buffer_V_address0;
    sc_out< sc_logic > header_buffer_V_ce0;
    sc_in< sc_lv<8> > header_buffer_V_q0;
    sc_out< sc_lv<6> > header_buffer_V_address1;
    sc_out< sc_logic > header_buffer_V_ce1;
    sc_in< sc_lv<8> > header_buffer_V_q1;
    sc_out< sc_lv<1> > instance_tsih;
    sc_out< sc_logic > instance_tsih_ap_vld;
    sc_in< sc_lv<32> > instance_data_length;
    sc_out< sc_lv<13> > instance_data_address0;
    sc_out< sc_logic > instance_data_ce0;
    sc_in< sc_lv<8> > instance_data_q0;
    sc_out< sc_lv<1> > instance_discovery;
    sc_out< sc_logic > instance_discovery_ap_vld;
    sc_out< sc_lv<10> > ap_return;


    // Module declarations
    setup_session(sc_module_name name);
    SC_HAS_PROCESS(setup_session);

    ~setup_session();

    sc_trace_file* mVcdFile;

    setup_session_p_str1328* p_str1328_U;
    setup_session_p_str1227* p_str1227_U;
    sc_signal< sc_lv<6> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<5> > p_str1328_address0;
    sc_signal< sc_logic > p_str1328_ce0;
    sc_signal< sc_lv<7> > p_str1328_q0;
    sc_signal< sc_lv<4> > p_str1227_address0;
    sc_signal< sc_logic > p_str1227_ce0;
    sc_signal< sc_lv<7> > p_str1227_q0;
    sc_signal< sc_lv<1> > icmp_ln7_fu_202_p2;
    sc_signal< sc_lv<1> > icmp_ln7_reg_344;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<1> > icmp_ln112_fu_222_p2;
    sc_signal< sc_lv<1> > icmp_ln112_reg_354;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<31> > i_fu_227_p2;
    sc_signal< sc_lv<31> > i_reg_358;
    sc_signal< sc_lv<32> > idx_fu_259_p3;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<1> > icmp_ln112_1_fu_277_p2;
    sc_signal< sc_lv<1> > icmp_ln112_1_reg_381;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<31> > i_7_fu_282_p2;
    sc_signal< sc_lv<31> > i_7_reg_385;
    sc_signal< sc_lv<32> > idx_1_fu_314_p3;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<31> > i_0_i_i_reg_120;
    sc_signal< sc_lv<1> > icmp_ln114_fu_267_p2;
    sc_signal< sc_lv<32> > idx_0_i_i_reg_131;
    sc_signal< sc_lv<31> > i_0_i_i2_reg_143;
    sc_signal< sc_lv<1> > icmp_ln114_1_fu_322_p2;
    sc_signal< sc_lv<32> > idx_0_i_i3_reg_154;
    sc_signal< sc_lv<1> > ap_phi_mux_storemerge_phi_fu_170_p4;
    sc_signal< sc_lv<1> > storemerge_reg_166;
    sc_signal< sc_lv<10> > ap_phi_mux_p_0_phi_fu_183_p6;
    sc_signal< sc_lv<10> > p_0_reg_178;
    sc_signal< sc_lv<64> > zext_ln113_fu_233_p1;
    sc_signal< sc_lv<64> > sext_ln113_fu_238_p1;
    sc_signal< sc_lv<64> > zext_ln113_1_fu_288_p1;
    sc_signal< sc_lv<64> > sext_ln113_1_fu_293_p1;
    sc_signal< sc_lv<16> > tmp_i_fu_194_p3;
    sc_signal< sc_lv<32> > zext_ln112_fu_218_p1;
    sc_signal< sc_lv<8> > zext_ln113_2_fu_243_p1;
    sc_signal< sc_lv<1> > icmp_ln113_fu_247_p2;
    sc_signal< sc_lv<32> > add_ln113_fu_253_p2;
    sc_signal< sc_lv<32> > zext_ln112_1_fu_273_p1;
    sc_signal< sc_lv<8> > zext_ln113_3_fu_298_p1;
    sc_signal< sc_lv<1> > icmp_ln113_1_fu_302_p2;
    sc_signal< sc_lv<32> > add_ln113_1_fu_308_p2;
    sc_signal< sc_lv<10> > ap_return_preg;
    sc_signal< sc_lv<6> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<6> ap_ST_fsm_state1;
    static const sc_lv<6> ap_ST_fsm_state2;
    static const sc_lv<6> ap_ST_fsm_state3;
    static const sc_lv<6> ap_ST_fsm_state4;
    static const sc_lv<6> ap_ST_fsm_state5;
    static const sc_lv<6> ap_ST_fsm_state6;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<31> ap_const_lv31_0;
    static const sc_lv<10> ap_const_lv10_0;
    static const sc_lv<10> ap_const_lv10_203;
    static const sc_lv<10> ap_const_lv10_200;
    static const sc_lv<64> ap_const_lv64_E;
    static const sc_lv<64> ap_const_lv64_F;
    static const sc_lv<16> ap_const_lv16_0;
    static const sc_lv<31> ap_const_lv31_1;
    static const sc_lv<32> ap_const_lv32_15;
    static const sc_lv<32> ap_const_lv32_A;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_add_ln113_1_fu_308_p2();
    void thread_add_ln113_fu_253_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_phi_mux_p_0_phi_fu_183_p6();
    void thread_ap_phi_mux_storemerge_phi_fu_170_p4();
    void thread_ap_ready();
    void thread_ap_return();
    void thread_header_buffer_V_address0();
    void thread_header_buffer_V_address1();
    void thread_header_buffer_V_ce0();
    void thread_header_buffer_V_ce1();
    void thread_i_7_fu_282_p2();
    void thread_i_fu_227_p2();
    void thread_icmp_ln112_1_fu_277_p2();
    void thread_icmp_ln112_fu_222_p2();
    void thread_icmp_ln113_1_fu_302_p2();
    void thread_icmp_ln113_fu_247_p2();
    void thread_icmp_ln114_1_fu_322_p2();
    void thread_icmp_ln114_fu_267_p2();
    void thread_icmp_ln7_fu_202_p2();
    void thread_idx_1_fu_314_p3();
    void thread_idx_fu_259_p3();
    void thread_instance_data_address0();
    void thread_instance_data_ce0();
    void thread_instance_discovery();
    void thread_instance_discovery_ap_vld();
    void thread_instance_tsih();
    void thread_instance_tsih_ap_vld();
    void thread_p_str1227_address0();
    void thread_p_str1227_ce0();
    void thread_p_str1328_address0();
    void thread_p_str1328_ce0();
    void thread_sext_ln113_1_fu_293_p1();
    void thread_sext_ln113_fu_238_p1();
    void thread_tmp_i_fu_194_p3();
    void thread_zext_ln112_1_fu_273_p1();
    void thread_zext_ln112_fu_218_p1();
    void thread_zext_ln113_1_fu_288_p1();
    void thread_zext_ln113_2_fu_243_p1();
    void thread_zext_ln113_3_fu_298_p1();
    void thread_zext_ln113_fu_233_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
