// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "read_byte_array_1.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic read_byte_array_1::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic read_byte_array_1::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<3> read_byte_array_1::ap_ST_fsm_state1 = "1";
const sc_lv<3> read_byte_array_1::ap_ST_fsm_state2 = "10";
const sc_lv<3> read_byte_array_1::ap_ST_fsm_state3 = "100";
const sc_lv<32> read_byte_array_1::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> read_byte_array_1::ap_const_lv32_1 = "1";
const sc_lv<1> read_byte_array_1::ap_const_lv1_0 = "0";
const sc_lv<32> read_byte_array_1::ap_const_lv32_2 = "10";
const sc_lv<25> read_byte_array_1::ap_const_lv25_3 = "11";
const sc_lv<32> read_byte_array_1::ap_const_lv32_18 = "11000";
const sc_lv<2> read_byte_array_1::ap_const_lv2_0 = "00";
const sc_lv<32> read_byte_array_1::ap_const_lv32_8 = "1000";
const sc_lv<32> read_byte_array_1::ap_const_lv32_F = "1111";
const sc_lv<32> read_byte_array_1::ap_const_lv32_10 = "10000";
const sc_lv<32> read_byte_array_1::ap_const_lv32_17 = "10111";
const sc_lv<32> read_byte_array_1::ap_const_lv32_1F = "11111";
const sc_lv<32> read_byte_array_1::ap_const_lv32_3 = "11";
const sc_lv<32> read_byte_array_1::ap_const_lv32_4 = "100";
const sc_lv<1> read_byte_array_1::ap_const_lv1_1 = "1";
const bool read_byte_array_1::ap_const_boolean_1 = true;

read_byte_array_1::read_byte_array_1(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_add_ln34_fu_125_p2);
    sensitive << ( zext_ln34_fu_121_p1 );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_block_state2);
    sensitive << ( stream_ap_uint_32_V_V_TVALID );
    sensitive << ( icmp_ln34_fu_153_p2 );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( stream_ap_uint_32_V_V_TVALID );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln34_fu_153_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( stream_ap_uint_32_V_V_TVALID );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln34_fu_153_p2 );

    SC_METHOD(thread_data_address0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( sext_ln36_fu_163_p1 );
    sensitive << ( sext_ln38_fu_216_p1 );

    SC_METHOD(thread_data_address1);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( sext_ln37_fu_185_p1 );
    sensitive << ( sext_ln39_fu_227_p1 );

    SC_METHOD(thread_data_ce0);
    sensitive << ( stream_ap_uint_32_V_V_TVALID );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln34_fu_153_p2 );
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_data_ce1);
    sensitive << ( stream_ap_uint_32_V_V_TVALID );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln34_fu_153_p2 );
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_data_d0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( p_Result_1_reg_246 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( trunc_ln681_fu_158_p1 );

    SC_METHOD(thread_data_d1);
    sensitive << ( stream_ap_uint_32_V_V_TDATA );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( p_Result_2_reg_251 );
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_data_we0);
    sensitive << ( stream_ap_uint_32_V_V_TVALID );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln34_fu_153_p2 );
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_data_we1);
    sensitive << ( stream_ap_uint_32_V_V_TVALID );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln34_fu_153_p2 );
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_i_fu_232_p2);
    sensitive << ( i_0_reg_109 );

    SC_METHOD(thread_icmp_ln34_fu_153_p2);
    sensitive << ( stream_ap_uint_32_V_V_TVALID );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln34_fu_153_p2 );
    sensitive << ( zext_ln34_1_reg_238 );
    sensitive << ( i_0_reg_109 );

    SC_METHOD(thread_or_ln37_fu_179_p2);
    sensitive << ( i_0_reg_109 );

    SC_METHOD(thread_or_ln38_fu_210_p2);
    sensitive << ( i_0_reg_109 );

    SC_METHOD(thread_or_ln39_fu_221_p2);
    sensitive << ( i_0_reg_109 );

    SC_METHOD(thread_sext_ln36_fu_163_p1);
    sensitive << ( i_0_reg_109 );

    SC_METHOD(thread_sext_ln37_fu_185_p1);
    sensitive << ( or_ln37_fu_179_p2 );

    SC_METHOD(thread_sext_ln38_fu_216_p1);
    sensitive << ( or_ln38_fu_210_p2 );

    SC_METHOD(thread_sext_ln39_fu_227_p1);
    sensitive << ( or_ln39_fu_221_p2 );

    SC_METHOD(thread_stream_ap_uint_32_V_V_TDATA_blk_n);
    sensitive << ( stream_ap_uint_32_V_V_TVALID );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln34_fu_153_p2 );

    SC_METHOD(thread_stream_ap_uint_32_V_V_TREADY);
    sensitive << ( stream_ap_uint_32_V_V_TVALID );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln34_fu_153_p2 );

    SC_METHOD(thread_tmp_13_fu_141_p3);
    sensitive << ( tmp_fu_131_p4 );

    SC_METHOD(thread_tmp_fu_131_p4);
    sensitive << ( add_ln34_fu_125_p2 );

    SC_METHOD(thread_trunc_ln681_fu_158_p1);
    sensitive << ( stream_ap_uint_32_V_V_TDATA );

    SC_METHOD(thread_zext_ln34_1_fu_149_p1);
    sensitive << ( tmp_13_fu_141_p3 );

    SC_METHOD(thread_zext_ln34_fu_121_p1);
    sensitive << ( length_r );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( stream_ap_uint_32_V_V_TVALID );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln34_fu_153_p2 );

    ap_CS_fsm = "001";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "read_byte_array_1_sc_trace_" << apTFileNum ++;
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
    sc_trace(mVcdFile, data_address0, "(port)data_address0");
    sc_trace(mVcdFile, data_ce0, "(port)data_ce0");
    sc_trace(mVcdFile, data_we0, "(port)data_we0");
    sc_trace(mVcdFile, data_d0, "(port)data_d0");
    sc_trace(mVcdFile, data_address1, "(port)data_address1");
    sc_trace(mVcdFile, data_ce1, "(port)data_ce1");
    sc_trace(mVcdFile, data_we1, "(port)data_we1");
    sc_trace(mVcdFile, data_d1, "(port)data_d1");
    sc_trace(mVcdFile, length_r, "(port)length_r");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, stream_ap_uint_32_V_V_TDATA_blk_n, "stream_ap_uint_32_V_V_TDATA_blk_n");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, icmp_ln34_fu_153_p2, "icmp_ln34_fu_153_p2");
    sc_trace(mVcdFile, zext_ln34_1_fu_149_p1, "zext_ln34_1_fu_149_p1");
    sc_trace(mVcdFile, zext_ln34_1_reg_238, "zext_ln34_1_reg_238");
    sc_trace(mVcdFile, p_Result_1_reg_246, "p_Result_1_reg_246");
    sc_trace(mVcdFile, ap_block_state2, "ap_block_state2");
    sc_trace(mVcdFile, p_Result_2_reg_251, "p_Result_2_reg_251");
    sc_trace(mVcdFile, i_fu_232_p2, "i_fu_232_p2");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, i_0_reg_109, "i_0_reg_109");
    sc_trace(mVcdFile, sext_ln36_fu_163_p1, "sext_ln36_fu_163_p1");
    sc_trace(mVcdFile, sext_ln37_fu_185_p1, "sext_ln37_fu_185_p1");
    sc_trace(mVcdFile, sext_ln38_fu_216_p1, "sext_ln38_fu_216_p1");
    sc_trace(mVcdFile, sext_ln39_fu_227_p1, "sext_ln39_fu_227_p1");
    sc_trace(mVcdFile, trunc_ln681_fu_158_p1, "trunc_ln681_fu_158_p1");
    sc_trace(mVcdFile, zext_ln34_fu_121_p1, "zext_ln34_fu_121_p1");
    sc_trace(mVcdFile, add_ln34_fu_125_p2, "add_ln34_fu_125_p2");
    sc_trace(mVcdFile, tmp_fu_131_p4, "tmp_fu_131_p4");
    sc_trace(mVcdFile, tmp_13_fu_141_p3, "tmp_13_fu_141_p3");
    sc_trace(mVcdFile, or_ln37_fu_179_p2, "or_ln37_fu_179_p2");
    sc_trace(mVcdFile, or_ln38_fu_210_p2, "or_ln38_fu_210_p2");
    sc_trace(mVcdFile, or_ln39_fu_221_p2, "or_ln39_fu_221_p2");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

read_byte_array_1::~read_byte_array_1() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void read_byte_array_1::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        i_0_reg_109 = i_fu_232_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        i_0_reg_109 = ap_const_lv32_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(icmp_ln34_fu_153_p2.read(), ap_const_lv1_0) && !(esl_seteq<1,1,1>(icmp_ln34_fu_153_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_0, stream_ap_uint_32_V_V_TVALID.read())))) {
        p_Result_1_reg_246 = stream_ap_uint_32_V_V_TDATA.read().range(23, 16);
        p_Result_2_reg_251 = stream_ap_uint_32_V_V_TDATA.read().range(31, 24);
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        zext_ln34_1_reg_238 = zext_ln34_1_fu_149_p1.read();
    }
}

void read_byte_array_1::thread_add_ln34_fu_125_p2() {
    add_ln34_fu_125_p2 = (!zext_ln34_fu_121_p1.read().is_01() || !ap_const_lv25_3.is_01())? sc_lv<25>(): (sc_biguint<25>(zext_ln34_fu_121_p1.read()) + sc_biguint<25>(ap_const_lv25_3));
}

void read_byte_array_1::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void read_byte_array_1::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void read_byte_array_1::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void read_byte_array_1::thread_ap_block_state2() {
    ap_block_state2 = (esl_seteq<1,1,1>(icmp_ln34_fu_153_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_0, stream_ap_uint_32_V_V_TVALID.read()));
}

void read_byte_array_1::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          !(esl_seteq<1,1,1>(icmp_ln34_fu_153_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_0, stream_ap_uint_32_V_V_TVALID.read())) && 
          esl_seteq<1,1,1>(icmp_ln34_fu_153_p2.read(), ap_const_lv1_1)))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void read_byte_array_1::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void read_byte_array_1::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         !(esl_seteq<1,1,1>(icmp_ln34_fu_153_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_0, stream_ap_uint_32_V_V_TVALID.read())) && 
         esl_seteq<1,1,1>(icmp_ln34_fu_153_p2.read(), ap_const_lv1_1))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void read_byte_array_1::thread_data_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        data_address0 =  (sc_lv<13>) (sext_ln38_fu_216_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        data_address0 =  (sc_lv<13>) (sext_ln36_fu_163_p1.read());
    } else {
        data_address0 = "XXXXXXXXXXXXX";
    }
}

void read_byte_array_1::thread_data_address1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        data_address1 =  (sc_lv<13>) (sext_ln39_fu_227_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        data_address1 =  (sc_lv<13>) (sext_ln37_fu_185_p1.read());
    } else {
        data_address1 = "XXXXXXXXXXXXX";
    }
}

void read_byte_array_1::thread_data_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          !(esl_seteq<1,1,1>(icmp_ln34_fu_153_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_0, stream_ap_uint_32_V_V_TVALID.read()))) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()))) {
        data_ce0 = ap_const_logic_1;
    } else {
        data_ce0 = ap_const_logic_0;
    }
}

void read_byte_array_1::thread_data_ce1() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          !(esl_seteq<1,1,1>(icmp_ln34_fu_153_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_0, stream_ap_uint_32_V_V_TVALID.read()))) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()))) {
        data_ce1 = ap_const_logic_1;
    } else {
        data_ce1 = ap_const_logic_0;
    }
}

void read_byte_array_1::thread_data_d0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        data_d0 = p_Result_1_reg_246.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        data_d0 = trunc_ln681_fu_158_p1.read();
    } else {
        data_d0 =  (sc_lv<8>) ("XXXXXXXX");
    }
}

void read_byte_array_1::thread_data_d1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        data_d1 = p_Result_2_reg_251.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        data_d1 = stream_ap_uint_32_V_V_TDATA.read().range(15, 8);
    } else {
        data_d1 =  (sc_lv<8>) ("XXXXXXXX");
    }
}

void read_byte_array_1::thread_data_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          esl_seteq<1,1,1>(icmp_ln34_fu_153_p2.read(), ap_const_lv1_0) && 
          !(esl_seteq<1,1,1>(icmp_ln34_fu_153_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_0, stream_ap_uint_32_V_V_TVALID.read()))) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()))) {
        data_we0 = ap_const_logic_1;
    } else {
        data_we0 = ap_const_logic_0;
    }
}

void read_byte_array_1::thread_data_we1() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          esl_seteq<1,1,1>(icmp_ln34_fu_153_p2.read(), ap_const_lv1_0) && 
          !(esl_seteq<1,1,1>(icmp_ln34_fu_153_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_0, stream_ap_uint_32_V_V_TVALID.read()))) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()))) {
        data_we1 = ap_const_logic_1;
    } else {
        data_we1 = ap_const_logic_0;
    }
}

void read_byte_array_1::thread_i_fu_232_p2() {
    i_fu_232_p2 = (!ap_const_lv32_4.is_01() || !i_0_reg_109.read().is_01())? sc_lv<32>(): (sc_biguint<32>(ap_const_lv32_4) + sc_bigint<32>(i_0_reg_109.read()));
}

void read_byte_array_1::thread_icmp_ln34_fu_153_p2() {
    icmp_ln34_fu_153_p2 = (!i_0_reg_109.read().is_01() || !zext_ln34_1_reg_238.read().is_01())? sc_lv<1>(): sc_lv<1>(i_0_reg_109.read() == zext_ln34_1_reg_238.read());
}

void read_byte_array_1::thread_or_ln37_fu_179_p2() {
    or_ln37_fu_179_p2 = (i_0_reg_109.read() | ap_const_lv32_1);
}

void read_byte_array_1::thread_or_ln38_fu_210_p2() {
    or_ln38_fu_210_p2 = (i_0_reg_109.read() | ap_const_lv32_2);
}

void read_byte_array_1::thread_or_ln39_fu_221_p2() {
    or_ln39_fu_221_p2 = (i_0_reg_109.read() | ap_const_lv32_3);
}

void read_byte_array_1::thread_sext_ln36_fu_163_p1() {
    sext_ln36_fu_163_p1 = esl_sext<64,32>(i_0_reg_109.read());
}

void read_byte_array_1::thread_sext_ln37_fu_185_p1() {
    sext_ln37_fu_185_p1 = esl_sext<64,32>(or_ln37_fu_179_p2.read());
}

void read_byte_array_1::thread_sext_ln38_fu_216_p1() {
    sext_ln38_fu_216_p1 = esl_sext<64,32>(or_ln38_fu_210_p2.read());
}

void read_byte_array_1::thread_sext_ln39_fu_227_p1() {
    sext_ln39_fu_227_p1 = esl_sext<64,32>(or_ln39_fu_221_p2.read());
}

void read_byte_array_1::thread_stream_ap_uint_32_V_V_TDATA_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(icmp_ln34_fu_153_p2.read(), ap_const_lv1_0))) {
        stream_ap_uint_32_V_V_TDATA_blk_n = stream_ap_uint_32_V_V_TVALID.read();
    } else {
        stream_ap_uint_32_V_V_TDATA_blk_n = ap_const_logic_1;
    }
}

void read_byte_array_1::thread_stream_ap_uint_32_V_V_TREADY() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(icmp_ln34_fu_153_p2.read(), ap_const_lv1_0) && 
         !(esl_seteq<1,1,1>(icmp_ln34_fu_153_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_0, stream_ap_uint_32_V_V_TVALID.read())))) {
        stream_ap_uint_32_V_V_TREADY = ap_const_logic_1;
    } else {
        stream_ap_uint_32_V_V_TREADY = ap_const_logic_0;
    }
}

void read_byte_array_1::thread_tmp_13_fu_141_p3() {
    tmp_13_fu_141_p3 = esl_concat<23,2>(tmp_fu_131_p4.read(), ap_const_lv2_0);
}

void read_byte_array_1::thread_tmp_fu_131_p4() {
    tmp_fu_131_p4 = add_ln34_fu_125_p2.read().range(24, 2);
}

void read_byte_array_1::thread_trunc_ln681_fu_158_p1() {
    trunc_ln681_fu_158_p1 = stream_ap_uint_32_V_V_TDATA.read().range(8-1, 0);
}

void read_byte_array_1::thread_zext_ln34_1_fu_149_p1() {
    zext_ln34_1_fu_149_p1 = esl_zext<32,25>(tmp_13_fu_141_p3.read());
}

void read_byte_array_1::thread_zext_ln34_fu_121_p1() {
    zext_ln34_fu_121_p1 = esl_zext<25,24>(length_r.read());
}

void read_byte_array_1::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && !(esl_seteq<1,1,1>(icmp_ln34_fu_153_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_0, stream_ap_uint_32_V_V_TVALID.read())) && esl_seteq<1,1,1>(icmp_ln34_fu_153_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(icmp_ln34_fu_153_p2.read(), ap_const_lv1_0) && !(esl_seteq<1,1,1>(icmp_ln34_fu_153_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_0, stream_ap_uint_32_V_V_TVALID.read())))) {
                ap_NS_fsm = ap_ST_fsm_state3;
            } else {
                ap_NS_fsm = ap_ST_fsm_state2;
            }
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_fsm_state2;
            break;
        default : 
            ap_NS_fsm =  (sc_lv<3>) ("XXX");
            break;
    }
}

}
