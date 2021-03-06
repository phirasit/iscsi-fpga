// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _iscsi_interface_HH_
#define _iscsi_interface_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "process_pdu.h"

namespace ap_rtl {

struct iscsi_interface : public sc_module {
    // Port declarations 12
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst_n;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<32> > tcp_in_V_V_TDATA;
    sc_in< sc_logic > tcp_in_V_V_TVALID;
    sc_out< sc_logic > tcp_in_V_V_TREADY;
    sc_out< sc_lv<32> > tcp_out_V_V_TDATA;
    sc_out< sc_logic > tcp_out_V_V_TVALID;
    sc_in< sc_logic > tcp_out_V_V_TREADY;


    // Module declarations
    iscsi_interface(sc_module_name name);
    SC_HAS_PROCESS(iscsi_interface);

    ~iscsi_interface();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    process_pdu* grp_process_pdu_fu_144;
    sc_signal< sc_logic > ap_rst_n_inv;
    sc_signal< sc_lv<5> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<32> > tcp_in_V_V_0_data_out;
    sc_signal< sc_logic > tcp_in_V_V_0_vld_in;
    sc_signal< sc_logic > tcp_in_V_V_0_vld_out;
    sc_signal< sc_logic > tcp_in_V_V_0_ack_in;
    sc_signal< sc_logic > tcp_in_V_V_0_ack_out;
    sc_signal< sc_lv<32> > tcp_in_V_V_0_payload_A;
    sc_signal< sc_lv<32> > tcp_in_V_V_0_payload_B;
    sc_signal< sc_logic > tcp_in_V_V_0_sel_rd;
    sc_signal< sc_logic > tcp_in_V_V_0_sel_wr;
    sc_signal< sc_logic > tcp_in_V_V_0_sel;
    sc_signal< sc_logic > tcp_in_V_V_0_load_A;
    sc_signal< sc_logic > tcp_in_V_V_0_load_B;
    sc_signal< sc_lv<2> > tcp_in_V_V_0_state;
    sc_signal< sc_logic > tcp_in_V_V_0_state_cmp_full;
    sc_signal< sc_lv<32> > tcp_out_V_V_1_data_in;
    sc_signal< sc_lv<32> > tcp_out_V_V_1_data_out;
    sc_signal< sc_logic > tcp_out_V_V_1_vld_in;
    sc_signal< sc_logic > tcp_out_V_V_1_vld_out;
    sc_signal< sc_logic > tcp_out_V_V_1_ack_in;
    sc_signal< sc_logic > tcp_out_V_V_1_ack_out;
    sc_signal< sc_lv<32> > tcp_out_V_V_1_payload_A;
    sc_signal< sc_lv<32> > tcp_out_V_V_1_payload_B;
    sc_signal< sc_logic > tcp_out_V_V_1_sel_rd;
    sc_signal< sc_logic > tcp_out_V_V_1_sel_wr;
    sc_signal< sc_logic > tcp_out_V_V_1_sel;
    sc_signal< sc_logic > tcp_out_V_V_1_load_A;
    sc_signal< sc_logic > tcp_out_V_V_1_load_B;
    sc_signal< sc_lv<2> > tcp_out_V_V_1_state;
    sc_signal< sc_logic > tcp_out_V_V_1_state_cmp_full;
    sc_signal< sc_logic > tcp_out_V_V_TDATA_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< bool > ap_block_state2_io;
    sc_signal< sc_logic > grp_process_pdu_fu_144_ap_start;
    sc_signal< sc_logic > grp_process_pdu_fu_144_ap_done;
    sc_signal< sc_logic > grp_process_pdu_fu_144_ap_idle;
    sc_signal< sc_logic > grp_process_pdu_fu_144_ap_ready;
    sc_signal< sc_logic > grp_process_pdu_fu_144_tcp_in_V_V_TVALID;
    sc_signal< sc_logic > grp_process_pdu_fu_144_tcp_in_V_V_TREADY;
    sc_signal< sc_lv<32> > grp_process_pdu_fu_144_tcp_out_V_V_TDATA;
    sc_signal< sc_logic > grp_process_pdu_fu_144_tcp_out_V_V_TVALID;
    sc_signal< sc_logic > grp_process_pdu_fu_144_tcp_out_V_V_TREADY;
    sc_signal< sc_logic > grp_process_pdu_fu_144_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<1> > x_fu_132;
    sc_signal< sc_lv<5> > ap_NS_fsm;
    sc_signal< bool > ap_block_state3_io;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<5> ap_ST_fsm_state1;
    static const sc_lv<5> ap_ST_fsm_state2;
    static const sc_lv<5> ap_ST_fsm_state3;
    static const sc_lv<5> ap_ST_fsm_state4;
    static const sc_lv<5> ap_ST_fsm_state5;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const bool ap_const_boolean_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_block_state2_io();
    void thread_ap_block_state3_io();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_rst_n_inv();
    void thread_grp_process_pdu_fu_144_ap_start();
    void thread_grp_process_pdu_fu_144_tcp_in_V_V_TVALID();
    void thread_grp_process_pdu_fu_144_tcp_out_V_V_TREADY();
    void thread_tcp_in_V_V_0_ack_in();
    void thread_tcp_in_V_V_0_ack_out();
    void thread_tcp_in_V_V_0_data_out();
    void thread_tcp_in_V_V_0_load_A();
    void thread_tcp_in_V_V_0_load_B();
    void thread_tcp_in_V_V_0_sel();
    void thread_tcp_in_V_V_0_state_cmp_full();
    void thread_tcp_in_V_V_0_vld_in();
    void thread_tcp_in_V_V_0_vld_out();
    void thread_tcp_in_V_V_TREADY();
    void thread_tcp_out_V_V_1_ack_in();
    void thread_tcp_out_V_V_1_ack_out();
    void thread_tcp_out_V_V_1_data_in();
    void thread_tcp_out_V_V_1_data_out();
    void thread_tcp_out_V_V_1_load_A();
    void thread_tcp_out_V_V_1_load_B();
    void thread_tcp_out_V_V_1_sel();
    void thread_tcp_out_V_V_1_state_cmp_full();
    void thread_tcp_out_V_V_1_vld_in();
    void thread_tcp_out_V_V_1_vld_out();
    void thread_tcp_out_V_V_TDATA();
    void thread_tcp_out_V_V_TDATA_blk_n();
    void thread_tcp_out_V_V_TVALID();
    void thread_x_fu_132();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
