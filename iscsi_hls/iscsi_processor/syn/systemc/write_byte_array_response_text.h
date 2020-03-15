// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __write_byte_array_response_text_H__
#define __write_byte_array_response_text_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct write_byte_array_response_text_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 7;
  static const unsigned AddressRange = 55;
  static const unsigned AddressWidth = 6;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in <sc_lv<AddressWidth> > address1;
sc_core::sc_in <sc_logic> ce1;
sc_core::sc_out <sc_lv<DataWidth> > q1;
sc_core::sc_in <sc_lv<AddressWidth> > address2;
sc_core::sc_in <sc_logic> ce2;
sc_core::sc_out <sc_lv<DataWidth> > q2;
sc_core::sc_in <sc_lv<AddressWidth> > address3;
sc_core::sc_in <sc_logic> ce3;
sc_core::sc_out <sc_lv<DataWidth> > q3;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(write_byte_array_response_text_ram) {
        ram[0] = "0b1010100";
        ram[1] = "0b1100001";
        ram[2] = "0b1110010";
        ram[3] = "0b1100111";
        ram[4] = "0b1100101";
        ram[5] = "0b1110100";
        ram[6] = "0b1001110";
        ram[7] = "0b1100001";
        ram[8] = "0b1101101";
        ram[9] = "0b1100101";
        ram[10] = "0b0111101";
        ram[11] = "0b1101001";
        ram[12] = "0b1110001";
        ram[13] = "0b1101110";
        ram[14] = "0b0101110";
        ram[15] = "0b0110010";
        ram[16] = "0b0110000";
        ram[17] = "0b0110001";
        ram[18] = "0b0111001";
        ram[19] = "0b0101101";
        ram[20] = "0b0110001";
        ram[21] = "0b0110000";
        ram[22] = "0b0101110";
        ram[23] = "0b1100011";
        ram[24] = "0b1101000";
        ram[25] = "0b1110101";
        ram[26] = "0b1101100";
        ram[27] = "0b1100001";
        ram[28] = "0b0101110";
        ram[29] = "0b1100001";
        ram[30] = "0b1100011";
        ram[31] = "0b0101110";
        ram[32] = "0b1110100";
        ram[33] = "0b1101000";
        ram[34] = "0b0111010";
        ram[35] = "0b1101001";
        ram[36] = "0b1110011";
        ram[37] = "0b1100011";
        ram[38] = "0b1110011";
        ram[39] = "0b1101001";
        ram[40] = "0b0101101";
        ram[41] = "0b1100100";
        ram[42] = "0b1101001";
        ram[43] = "0b1110011";
        ram[44] = "0b1101011";
        ram[45] = "0b0101110";
        ram[46] = "0b1110011";
        ram[47] = "0b1101110";
        ram[48] = "0b0101110";
        ram[49] = "0b0110001";
        ram[50] = "0b0110010";
        ram[51] = "0b0110011";
        ram[52] = "0b0110100";
        ram[53] = "0b0110101";
        ram[54] = "0b0000000";


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();


SC_METHOD(prc_write_1);
  sensitive<<clk.pos();


SC_METHOD(prc_write_2);
  sensitive<<clk.pos();


SC_METHOD(prc_write_3);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
            if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
              q0 = ram[address0.read().to_uint()];
            else
              q0 = sc_lv<DataWidth>();
    }
}


void prc_write_1()
{
    if (ce1.read() == sc_dt::Log_1) 
    {
            if(address1.read().is_01() && address1.read().to_uint()<AddressRange)
              q1 = ram[address1.read().to_uint()];
            else
              q1 = sc_lv<DataWidth>();
    }
}


void prc_write_2()
{
    if (ce2.read() == sc_dt::Log_1) 
    {
            if(address2.read().is_01() && address2.read().to_uint()<AddressRange)
              q2 = ram[address2.read().to_uint()];
            else
              q2 = sc_lv<DataWidth>();
    }
}


void prc_write_3()
{
    if (ce3.read() == sc_dt::Log_1) 
    {
            if(address3.read().is_01() && address3.read().to_uint()<AddressRange)
              q3 = ram[address3.read().to_uint()];
            else
              q3 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(write_byte_array_response_text) {


static const unsigned DataWidth = 7;
static const unsigned AddressRange = 55;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in <sc_lv<AddressWidth> > address1;
sc_core::sc_in<sc_logic> ce1;
sc_core::sc_out <sc_lv<DataWidth> > q1;
sc_core::sc_in <sc_lv<AddressWidth> > address2;
sc_core::sc_in<sc_logic> ce2;
sc_core::sc_out <sc_lv<DataWidth> > q2;
sc_core::sc_in <sc_lv<AddressWidth> > address3;
sc_core::sc_in<sc_logic> ce3;
sc_core::sc_out <sc_lv<DataWidth> > q3;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


write_byte_array_response_text_ram* meminst;


SC_CTOR(write_byte_array_response_text) {
meminst = new write_byte_array_response_text_ram("write_byte_array_response_text_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->address1(address1);
meminst->ce1(ce1);
meminst->q1(q1);

meminst->address2(address2);
meminst->ce2(ce2);
meminst->q2(q2);

meminst->address3(address3);
meminst->ce3(ce3);
meminst->q3(q3);

meminst->reset(reset);
meminst->clk(clk);
}
~write_byte_array_response_text() {
    delete meminst;
}


};//endmodule
#endif
