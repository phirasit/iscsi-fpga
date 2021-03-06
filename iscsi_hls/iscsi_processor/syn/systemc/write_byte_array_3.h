// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _write_byte_array_3_HH_
#define _write_byte_array_3_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct write_byte_array_3 : public sc_module {
    // Port declarations 16
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<32> > stream_ap_uint_32_V_V_TDATA;
    sc_out< sc_logic > stream_ap_uint_32_V_V_TVALID;
    sc_in< sc_logic > stream_ap_uint_32_V_V_TREADY;
    sc_out< sc_lv<13> > data_address0;
    sc_out< sc_logic > data_ce0;
    sc_in< sc_lv<8> > data_q0;
    sc_out< sc_lv<13> > data_address1;
    sc_out< sc_logic > data_ce1;
    sc_in< sc_lv<8> > data_q1;
    sc_in< sc_lv<32> > length_r;


    // Module declarations
    write_byte_array_3(sc_module_name name);
    SC_HAS_PROCESS(write_byte_array_3);

    ~write_byte_array_3();

    sc_trace_file* mVcdFile;

    sc_signal< sc_lv<4> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > stream_ap_uint_32_V_V_TDATA_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<32> > tmp_12_fu_184_p3;
    sc_signal< sc_lv<32> > tmp_12_reg_295;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<1> > icmp_ln22_fu_192_p2;
    sc_signal< sc_lv<1> > icmp_ln24_fu_208_p2;
    sc_signal< sc_lv<1> > icmp_ln24_reg_308;
    sc_signal< sc_lv<8> > data_load_3_reg_318;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<8> > select_ln24_fu_218_p3;
    sc_signal< sc_lv<8> > select_ln24_reg_323;
    sc_signal< sc_lv<1> > icmp_ln25_fu_231_p2;
    sc_signal< sc_lv<1> > icmp_ln25_reg_328;
    sc_signal< sc_lv<1> > icmp_ln26_fu_247_p2;
    sc_signal< sc_lv<1> > icmp_ln26_reg_338;
    sc_signal< sc_lv<32> > i_fu_257_p2;
    sc_signal< sc_lv<32> > i_reg_348;
    sc_signal< sc_lv<32> > i_0_reg_102;
    sc_signal< sc_lv<64> > sext_ln23_fu_197_p1;
    sc_signal< sc_lv<64> > sext_ln24_fu_213_p1;
    sc_signal< sc_lv<64> > sext_ln25_fu_236_p1;
    sc_signal< sc_lv<64> > sext_ln26_fu_252_p1;
    sc_signal< sc_lv<32> > add_ln22_fu_122_p2;
    sc_signal< sc_lv<32> > sub_ln22_fu_136_p2;
    sc_signal< sc_lv<30> > p_lshr_fu_142_p4;
    sc_signal< sc_lv<1> > tmp_10_fu_128_p3;
    sc_signal< sc_lv<30> > sub_ln22_1_fu_152_p2;
    sc_signal< sc_lv<30> > tmp_11_fu_158_p4;
    sc_signal< sc_lv<1> > tmp_fu_114_p3;
    sc_signal< sc_lv<30> > select_ln22_fu_168_p3;
    sc_signal< sc_lv<30> > select_ln22_1_fu_176_p3;
    sc_signal< sc_lv<32> > or_ln24_fu_202_p2;
    sc_signal< sc_lv<32> > or_ln25_fu_225_p2;
    sc_signal< sc_lv<32> > or_ln26_fu_241_p2;
    sc_signal< sc_lv<8> > select_ln26_fu_270_p3;
    sc_signal< sc_lv<8> > select_ln25_fu_263_p3;
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
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<32> ap_const_lv32_FFFFFFFD;
    static const sc_lv<30> ap_const_lv30_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<1> ap_const_lv1_1;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_add_ln22_fu_122_p2();
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
    void thread_i_fu_257_p2();
    void thread_icmp_ln22_fu_192_p2();
    void thread_icmp_ln24_fu_208_p2();
    void thread_icmp_ln25_fu_231_p2();
    void thread_icmp_ln26_fu_247_p2();
    void thread_or_ln24_fu_202_p2();
    void thread_or_ln25_fu_225_p2();
    void thread_or_ln26_fu_241_p2();
    void thread_p_lshr_fu_142_p4();
    void thread_select_ln22_1_fu_176_p3();
    void thread_select_ln22_fu_168_p3();
    void thread_select_ln24_fu_218_p3();
    void thread_select_ln25_fu_263_p3();
    void thread_select_ln26_fu_270_p3();
    void thread_sext_ln23_fu_197_p1();
    void thread_sext_ln24_fu_213_p1();
    void thread_sext_ln25_fu_236_p1();
    void thread_sext_ln26_fu_252_p1();
    void thread_stream_ap_uint_32_V_V_TDATA();
    void thread_stream_ap_uint_32_V_V_TDATA_blk_n();
    void thread_stream_ap_uint_32_V_V_TVALID();
    void thread_sub_ln22_1_fu_152_p2();
    void thread_sub_ln22_fu_136_p2();
    void thread_tmp_10_fu_128_p3();
    void thread_tmp_11_fu_158_p4();
    void thread_tmp_12_fu_184_p3();
    void thread_tmp_fu_114_p3();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
