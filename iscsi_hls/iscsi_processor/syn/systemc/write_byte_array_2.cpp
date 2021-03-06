// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "write_byte_array_2.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic write_byte_array_2::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic write_byte_array_2::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<3> write_byte_array_2::ap_ST_fsm_state1 = "1";
const sc_lv<3> write_byte_array_2::ap_ST_fsm_state2 = "10";
const sc_lv<3> write_byte_array_2::ap_ST_fsm_state3 = "100";
const sc_lv<32> write_byte_array_2::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> write_byte_array_2::ap_const_lv32_2 = "10";
const sc_lv<32> write_byte_array_2::ap_const_lv32_1 = "1";
const sc_lv<1> write_byte_array_2::ap_const_lv1_1 = "1";
const sc_lv<5> write_byte_array_2::ap_const_lv5_0 = "00000";
const sc_lv<5> write_byte_array_2::ap_const_lv5_F = "1111";
const sc_lv<4> write_byte_array_2::ap_const_lv4_1 = "1";
const sc_lv<4> write_byte_array_2::ap_const_lv4_2 = "10";
const sc_lv<4> write_byte_array_2::ap_const_lv4_3 = "11";
const sc_lv<4> write_byte_array_2::ap_const_lv4_F = "1111";
const sc_lv<5> write_byte_array_2::ap_const_lv5_4 = "100";
const sc_lv<7> write_byte_array_2::ap_const_lv7_0 = "0000000";
const sc_lv<1> write_byte_array_2::ap_const_lv1_0 = "0";
const bool write_byte_array_2::ap_const_boolean_1 = true;

write_byte_array_2::write_byte_array_2(sc_module_name name) : sc_module(name), mVcdFile(0) {
    authentication_respo_U = new write_byte_array_2_authentication_respo("authentication_respo_U");
    authentication_respo_U->clk(ap_clk);
    authentication_respo_U->reset(ap_rst);
    authentication_respo_U->address0(authentication_respo_address0);
    authentication_respo_U->ce0(authentication_respo_ce0);
    authentication_respo_U->q0(authentication_respo_q0);
    authentication_respo_U->address1(authentication_respo_address1);
    authentication_respo_U->ce1(authentication_respo_ce1);
    authentication_respo_U->q1(authentication_respo_q1);
    authentication_respo_U->address2(authentication_respo_address2);
    authentication_respo_U->ce2(authentication_respo_ce2);
    authentication_respo_U->q2(authentication_respo_q2);
    authentication_respo_U->address3(authentication_respo_address3);
    authentication_respo_U->ce3(authentication_respo_ce3);
    authentication_respo_U->q3(authentication_respo_q3);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln22_fu_107_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln22_fu_107_p2 );

    SC_METHOD(thread_authentication_respo_address0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( zext_ln23_fu_113_p1 );

    SC_METHOD(thread_authentication_respo_address1);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( zext_ln24_fu_128_p1 );

    SC_METHOD(thread_authentication_respo_address2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( zext_ln25_fu_139_p1 );

    SC_METHOD(thread_authentication_respo_address3);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( zext_ln26_fu_156_p1 );

    SC_METHOD(thread_authentication_respo_ce0);
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_authentication_respo_ce1);
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_authentication_respo_ce2);
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_authentication_respo_ce3);
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_i_fu_161_p2);
    sensitive << ( i_0_reg_96 );

    SC_METHOD(thread_icmp_ln22_fu_107_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( i_0_reg_96 );

    SC_METHOD(thread_icmp_ln26_fu_150_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln22_fu_107_p2 );
    sensitive << ( or_ln26_fu_144_p2 );

    SC_METHOD(thread_or_ln24_fu_122_p2);
    sensitive << ( trunc_ln22_fu_118_p1 );

    SC_METHOD(thread_or_ln25_fu_133_p2);
    sensitive << ( trunc_ln22_fu_118_p1 );

    SC_METHOD(thread_or_ln26_fu_144_p2);
    sensitive << ( trunc_ln22_fu_118_p1 );

    SC_METHOD(thread_select_ln26_fu_179_p3);
    sensitive << ( authentication_respo_q3 );
    sensitive << ( icmp_ln26_reg_221 );

    SC_METHOD(thread_stream_ap_uint_32_V_V_TDATA);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( tmp_fu_186_p5 );

    SC_METHOD(thread_stream_ap_uint_32_V_V_TDATA_blk_n);
    sensitive << ( stream_ap_uint_32_V_V_TREADY );
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_stream_ap_uint_32_V_V_TVALID);
    sensitive << ( stream_ap_uint_32_V_V_TREADY );
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_tmp_fu_186_p5);
    sensitive << ( select_ln26_fu_179_p3 );
    sensitive << ( zext_ln25_1_fu_175_p1 );
    sensitive << ( zext_ln24_1_fu_171_p1 );
    sensitive << ( zext_ln23_1_fu_167_p1 );

    SC_METHOD(thread_trunc_ln22_fu_118_p1);
    sensitive << ( i_0_reg_96 );

    SC_METHOD(thread_zext_ln23_1_fu_167_p1);
    sensitive << ( authentication_respo_q0 );

    SC_METHOD(thread_zext_ln23_fu_113_p1);
    sensitive << ( i_0_reg_96 );

    SC_METHOD(thread_zext_ln24_1_fu_171_p1);
    sensitive << ( authentication_respo_q1 );

    SC_METHOD(thread_zext_ln24_fu_128_p1);
    sensitive << ( or_ln24_fu_122_p2 );

    SC_METHOD(thread_zext_ln25_1_fu_175_p1);
    sensitive << ( authentication_respo_q2 );

    SC_METHOD(thread_zext_ln25_fu_139_p1);
    sensitive << ( or_ln25_fu_133_p2 );

    SC_METHOD(thread_zext_ln26_fu_156_p1);
    sensitive << ( or_ln26_fu_144_p2 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( stream_ap_uint_32_V_V_TREADY );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln22_fu_107_p2 );

    ap_CS_fsm = "001";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "write_byte_array_2_sc_trace_" << apTFileNum ++;
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
    sc_trace(mVcdFile, stream_ap_uint_32_V_V_TDATA, "(port)stream_ap_uint_32_V_V_TDATA");
    sc_trace(mVcdFile, stream_ap_uint_32_V_V_TVALID, "(port)stream_ap_uint_32_V_V_TVALID");
    sc_trace(mVcdFile, stream_ap_uint_32_V_V_TREADY, "(port)stream_ap_uint_32_V_V_TREADY");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, authentication_respo_address0, "authentication_respo_address0");
    sc_trace(mVcdFile, authentication_respo_ce0, "authentication_respo_ce0");
    sc_trace(mVcdFile, authentication_respo_q0, "authentication_respo_q0");
    sc_trace(mVcdFile, authentication_respo_address1, "authentication_respo_address1");
    sc_trace(mVcdFile, authentication_respo_ce1, "authentication_respo_ce1");
    sc_trace(mVcdFile, authentication_respo_q1, "authentication_respo_q1");
    sc_trace(mVcdFile, authentication_respo_address2, "authentication_respo_address2");
    sc_trace(mVcdFile, authentication_respo_ce2, "authentication_respo_ce2");
    sc_trace(mVcdFile, authentication_respo_q2, "authentication_respo_q2");
    sc_trace(mVcdFile, authentication_respo_address3, "authentication_respo_address3");
    sc_trace(mVcdFile, authentication_respo_ce3, "authentication_respo_ce3");
    sc_trace(mVcdFile, authentication_respo_q3, "authentication_respo_q3");
    sc_trace(mVcdFile, stream_ap_uint_32_V_V_TDATA_blk_n, "stream_ap_uint_32_V_V_TDATA_blk_n");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, icmp_ln22_fu_107_p2, "icmp_ln22_fu_107_p2");
    sc_trace(mVcdFile, icmp_ln26_fu_150_p2, "icmp_ln26_fu_150_p2");
    sc_trace(mVcdFile, icmp_ln26_reg_221, "icmp_ln26_reg_221");
    sc_trace(mVcdFile, i_fu_161_p2, "i_fu_161_p2");
    sc_trace(mVcdFile, i_reg_231, "i_reg_231");
    sc_trace(mVcdFile, i_0_reg_96, "i_0_reg_96");
    sc_trace(mVcdFile, zext_ln23_fu_113_p1, "zext_ln23_fu_113_p1");
    sc_trace(mVcdFile, zext_ln24_fu_128_p1, "zext_ln24_fu_128_p1");
    sc_trace(mVcdFile, zext_ln25_fu_139_p1, "zext_ln25_fu_139_p1");
    sc_trace(mVcdFile, zext_ln26_fu_156_p1, "zext_ln26_fu_156_p1");
    sc_trace(mVcdFile, trunc_ln22_fu_118_p1, "trunc_ln22_fu_118_p1");
    sc_trace(mVcdFile, or_ln24_fu_122_p2, "or_ln24_fu_122_p2");
    sc_trace(mVcdFile, or_ln25_fu_133_p2, "or_ln25_fu_133_p2");
    sc_trace(mVcdFile, or_ln26_fu_144_p2, "or_ln26_fu_144_p2");
    sc_trace(mVcdFile, select_ln26_fu_179_p3, "select_ln26_fu_179_p3");
    sc_trace(mVcdFile, zext_ln25_1_fu_175_p1, "zext_ln25_1_fu_175_p1");
    sc_trace(mVcdFile, zext_ln24_1_fu_171_p1, "zext_ln24_1_fu_171_p1");
    sc_trace(mVcdFile, zext_ln23_1_fu_167_p1, "zext_ln23_1_fu_167_p1");
    sc_trace(mVcdFile, tmp_fu_186_p5, "tmp_fu_186_p5");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

write_byte_array_2::~write_byte_array_2() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete authentication_respo_U;
}

void write_byte_array_2::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
         esl_seteq<1,1,1>(stream_ap_uint_32_V_V_TREADY.read(), ap_const_logic_1))) {
        i_0_reg_96 = i_reg_231.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        i_0_reg_96 = ap_const_lv5_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(icmp_ln22_fu_107_p2.read(), ap_const_lv1_1))) {
        i_reg_231 = i_fu_161_p2.read();
        icmp_ln26_reg_221 = icmp_ln26_fu_150_p2.read();
    }
}

void write_byte_array_2::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void write_byte_array_2::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void write_byte_array_2::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void write_byte_array_2::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          esl_seteq<1,1,1>(icmp_ln22_fu_107_p2.read(), ap_const_lv1_0)))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void write_byte_array_2::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void write_byte_array_2::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(icmp_ln22_fu_107_p2.read(), ap_const_lv1_0))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void write_byte_array_2::thread_authentication_respo_address0() {
    authentication_respo_address0 =  (sc_lv<4>) (zext_ln23_fu_113_p1.read());
}

void write_byte_array_2::thread_authentication_respo_address1() {
    authentication_respo_address1 =  (sc_lv<4>) (zext_ln24_fu_128_p1.read());
}

void write_byte_array_2::thread_authentication_respo_address2() {
    authentication_respo_address2 =  (sc_lv<4>) (zext_ln25_fu_139_p1.read());
}

void write_byte_array_2::thread_authentication_respo_address3() {
    authentication_respo_address3 =  (sc_lv<4>) (zext_ln26_fu_156_p1.read());
}

void write_byte_array_2::thread_authentication_respo_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        authentication_respo_ce0 = ap_const_logic_1;
    } else {
        authentication_respo_ce0 = ap_const_logic_0;
    }
}

void write_byte_array_2::thread_authentication_respo_ce1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        authentication_respo_ce1 = ap_const_logic_1;
    } else {
        authentication_respo_ce1 = ap_const_logic_0;
    }
}

void write_byte_array_2::thread_authentication_respo_ce2() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        authentication_respo_ce2 = ap_const_logic_1;
    } else {
        authentication_respo_ce2 = ap_const_logic_0;
    }
}

void write_byte_array_2::thread_authentication_respo_ce3() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        authentication_respo_ce3 = ap_const_logic_1;
    } else {
        authentication_respo_ce3 = ap_const_logic_0;
    }
}

void write_byte_array_2::thread_i_fu_161_p2() {
    i_fu_161_p2 = (!ap_const_lv5_4.is_01() || !i_0_reg_96.read().is_01())? sc_lv<5>(): (sc_biguint<5>(ap_const_lv5_4) + sc_biguint<5>(i_0_reg_96.read()));
}

void write_byte_array_2::thread_icmp_ln22_fu_107_p2() {
    icmp_ln22_fu_107_p2 = (!i_0_reg_96.read().is_01() || !ap_const_lv5_F.is_01())? sc_lv<1>(): (sc_biguint<5>(i_0_reg_96.read()) < sc_biguint<5>(ap_const_lv5_F));
}

void write_byte_array_2::thread_icmp_ln26_fu_150_p2() {
    icmp_ln26_fu_150_p2 = (!or_ln26_fu_144_p2.read().is_01() || !ap_const_lv4_F.is_01())? sc_lv<1>(): sc_lv<1>(or_ln26_fu_144_p2.read() != ap_const_lv4_F);
}

void write_byte_array_2::thread_or_ln24_fu_122_p2() {
    or_ln24_fu_122_p2 = (trunc_ln22_fu_118_p1.read() | ap_const_lv4_1);
}

void write_byte_array_2::thread_or_ln25_fu_133_p2() {
    or_ln25_fu_133_p2 = (trunc_ln22_fu_118_p1.read() | ap_const_lv4_2);
}

void write_byte_array_2::thread_or_ln26_fu_144_p2() {
    or_ln26_fu_144_p2 = (trunc_ln22_fu_118_p1.read() | ap_const_lv4_3);
}

void write_byte_array_2::thread_select_ln26_fu_179_p3() {
    select_ln26_fu_179_p3 = (!icmp_ln26_reg_221.read()[0].is_01())? sc_lv<7>(): ((icmp_ln26_reg_221.read()[0].to_bool())? authentication_respo_q3.read(): ap_const_lv7_0);
}

void write_byte_array_2::thread_stream_ap_uint_32_V_V_TDATA() {
    stream_ap_uint_32_V_V_TDATA = esl_zext<32,31>(tmp_fu_186_p5.read());
}

void write_byte_array_2::thread_stream_ap_uint_32_V_V_TDATA_blk_n() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        stream_ap_uint_32_V_V_TDATA_blk_n = stream_ap_uint_32_V_V_TREADY.read();
    } else {
        stream_ap_uint_32_V_V_TDATA_blk_n = ap_const_logic_1;
    }
}

void write_byte_array_2::thread_stream_ap_uint_32_V_V_TVALID() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
         esl_seteq<1,1,1>(stream_ap_uint_32_V_V_TREADY.read(), ap_const_logic_1))) {
        stream_ap_uint_32_V_V_TVALID = ap_const_logic_1;
    } else {
        stream_ap_uint_32_V_V_TVALID = ap_const_logic_0;
    }
}

void write_byte_array_2::thread_tmp_fu_186_p5() {
    tmp_fu_186_p5 = esl_concat<23,8>(esl_concat<15,8>(esl_concat<7,8>(select_ln26_fu_179_p3.read(), zext_ln25_1_fu_175_p1.read()), zext_ln24_1_fu_171_p1.read()), zext_ln23_1_fu_167_p1.read());
}

void write_byte_array_2::thread_trunc_ln22_fu_118_p1() {
    trunc_ln22_fu_118_p1 = i_0_reg_96.read().range(4-1, 0);
}

void write_byte_array_2::thread_zext_ln23_1_fu_167_p1() {
    zext_ln23_1_fu_167_p1 = esl_zext<8,7>(authentication_respo_q0.read());
}

void write_byte_array_2::thread_zext_ln23_fu_113_p1() {
    zext_ln23_fu_113_p1 = esl_zext<64,5>(i_0_reg_96.read());
}

void write_byte_array_2::thread_zext_ln24_1_fu_171_p1() {
    zext_ln24_1_fu_171_p1 = esl_zext<8,7>(authentication_respo_q1.read());
}

void write_byte_array_2::thread_zext_ln24_fu_128_p1() {
    zext_ln24_fu_128_p1 = esl_zext<64,4>(or_ln24_fu_122_p2.read());
}

void write_byte_array_2::thread_zext_ln25_1_fu_175_p1() {
    zext_ln25_1_fu_175_p1 = esl_zext<8,7>(authentication_respo_q2.read());
}

void write_byte_array_2::thread_zext_ln25_fu_139_p1() {
    zext_ln25_fu_139_p1 = esl_zext<64,4>(or_ln25_fu_133_p2.read());
}

void write_byte_array_2::thread_zext_ln26_fu_156_p1() {
    zext_ln26_fu_156_p1 = esl_zext<64,4>(or_ln26_fu_144_p2.read());
}

void write_byte_array_2::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(icmp_ln22_fu_107_p2.read(), ap_const_lv1_0))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        case 4 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(stream_ap_uint_32_V_V_TREADY.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        default : 
            ap_NS_fsm = "XXX";
            break;
    }
}

}

