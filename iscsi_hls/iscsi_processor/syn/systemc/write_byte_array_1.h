// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _write_byte_array_1_HH_
#define _write_byte_array_1_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct write_byte_array_1 : public sc_module {
    // Port declarations 15
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<32> > stream_ap_uint_32_V_V_TDATA;
    sc_out< sc_logic > stream_ap_uint_32_V_V_TVALID;
    sc_in< sc_logic > stream_ap_uint_32_V_V_TREADY;
    sc_out< sc_lv<6> > data_address0;
    sc_out< sc_logic > data_ce0;
    sc_in< sc_lv<8> > data_q0;
    sc_out< sc_lv<6> > data_address1;
    sc_out< sc_logic > data_ce1;
    sc_in< sc_lv<8> > data_q1;


    // Module declarations
    write_byte_array_1(sc_module_name name);
    SC_HAS_PROCESS(write_byte_array_1);

    ~write_byte_array_1();

    sc_trace_file* mVcdFile;

    sc_signal< sc_lv<4> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > stream_ap_uint_32_V_V_TDATA_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<1> > icmp_ln22_fu_96_p2;
    sc_signal< sc_lv<8> > data_load_4_reg_170;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<8> > data_load_reg_175;
    sc_signal< sc_lv<6> > i_fu_140_p2;
    sc_signal< sc_lv<6> > i_reg_190;
    sc_signal< sc_lv<6> > i_0_reg_84;
    sc_signal< sc_lv<64> > zext_ln23_fu_102_p1;
    sc_signal< sc_lv<64> > zext_ln24_fu_113_p1;
    sc_signal< sc_lv<64> > zext_ln25_fu_124_p1;
    sc_signal< sc_lv<64> > zext_ln26_fu_135_p1;
    sc_signal< sc_lv<6> > or_ln24_fu_107_p2;
    sc_signal< sc_lv<6> > or_ln25_fu_118_p2;
    sc_signal< sc_lv<6> > or_ln26_fu_129_p2;
    sc_signal< sc_lv<4> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<4> ap_ST_fsm_state1;
    static const sc_lv<4> ap_ST_fsm_state2;
    static const sc_lv<4> ap_ST_fsm_state3;
    static const sc_lv<4> ap_ST_fsm_state4;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<6> ap_const_lv6_30;
    static const sc_lv<6> ap_const_lv6_1;
    static const sc_lv<6> ap_const_lv6_2;
    static const sc_lv<6> ap_const_lv6_3;
    static const sc_lv<6> ap_const_lv6_4;
    static const sc_lv<1> ap_const_lv1_0;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_data_address0();
    void thread_data_address1();
    void thread_data_ce0();
    void thread_data_ce1();
    void thread_i_fu_140_p2();
    void thread_icmp_ln22_fu_96_p2();
    void thread_or_ln24_fu_107_p2();
    void thread_or_ln25_fu_118_p2();
    void thread_or_ln26_fu_129_p2();
    void thread_stream_ap_uint_32_V_V_TDATA();
    void thread_stream_ap_uint_32_V_V_TDATA_blk_n();
    void thread_stream_ap_uint_32_V_V_TVALID();
    void thread_zext_ln23_fu_102_p1();
    void thread_zext_ln24_fu_113_p1();
    void thread_zext_ln25_fu_124_p1();
    void thread_zext_ln26_fu_135_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
