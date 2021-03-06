// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _write_to_tcp_1_HH_
#define _write_to_tcp_1_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "write_byte_array_3.h"

namespace ap_rtl {

struct write_to_tcp_1 : public sc_module {
    // Port declarations 16
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<32> > tcp_out_V_V_TDATA;
    sc_out< sc_logic > tcp_out_V_V_TVALID;
    sc_in< sc_logic > tcp_out_V_V_TREADY;
    sc_in< sc_lv<32> > instance_data_length;
    sc_out< sc_lv<13> > instance_data_address0;
    sc_out< sc_logic > instance_data_ce0;
    sc_in< sc_lv<8> > instance_data_q0;
    sc_out< sc_lv<13> > instance_data_address1;
    sc_out< sc_logic > instance_data_ce1;
    sc_in< sc_lv<8> > instance_data_q1;


    // Module declarations
    write_to_tcp_1(sc_module_name name);
    SC_HAS_PROCESS(write_to_tcp_1);

    ~write_to_tcp_1();

    sc_trace_file* mVcdFile;

    write_byte_array_3* grp_write_byte_array_3_fu_18;
    sc_signal< sc_lv<2> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > grp_write_byte_array_3_fu_18_ap_start;
    sc_signal< sc_logic > grp_write_byte_array_3_fu_18_ap_done;
    sc_signal< sc_logic > grp_write_byte_array_3_fu_18_ap_idle;
    sc_signal< sc_logic > grp_write_byte_array_3_fu_18_ap_ready;
    sc_signal< sc_lv<32> > grp_write_byte_array_3_fu_18_stream_ap_uint_32_V_V_TDATA;
    sc_signal< sc_logic > grp_write_byte_array_3_fu_18_stream_ap_uint_32_V_V_TVALID;
    sc_signal< sc_logic > grp_write_byte_array_3_fu_18_stream_ap_uint_32_V_V_TREADY;
    sc_signal< sc_lv<13> > grp_write_byte_array_3_fu_18_data_address0;
    sc_signal< sc_logic > grp_write_byte_array_3_fu_18_data_ce0;
    sc_signal< sc_lv<13> > grp_write_byte_array_3_fu_18_data_address1;
    sc_signal< sc_logic > grp_write_byte_array_3_fu_18_data_ce1;
    sc_signal< sc_logic > grp_write_byte_array_3_fu_18_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<2> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<2> ap_ST_fsm_state1;
    static const sc_lv<2> ap_ST_fsm_state2;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_grp_write_byte_array_3_fu_18_ap_start();
    void thread_grp_write_byte_array_3_fu_18_stream_ap_uint_32_V_V_TREADY();
    void thread_instance_data_address0();
    void thread_instance_data_address1();
    void thread_instance_data_ce0();
    void thread_instance_data_ce1();
    void thread_tcp_out_V_V_TDATA();
    void thread_tcp_out_V_V_TVALID();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
