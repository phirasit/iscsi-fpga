// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __update_value_bool_2_p_str5_H__
#define __update_value_bool_2_p_str5_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct update_value_bool_2_p_str5_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 7;
  static const unsigned AddressRange = 14;
  static const unsigned AddressWidth = 4;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(update_value_bool_2_p_str5_ram) {
        ram[0] = "0b1001001";
        ram[1] = "0b1101101";
        ram[2] = "0b1101101";
        ram[3] = "0b1100101";
        ram[4] = "0b1100100";
        ram[5] = "0b1101001";
        ram[6] = "0b1100001";
        ram[7] = "0b1110100";
        ram[8] = "0b1100101";
        ram[9] = "0b1000100";
        ram[10] = "0b1100001";
        ram[11] = "0b1110100";
        ram[12] = "0b1100001";
        ram[13] = "0b0000000";


SC_METHOD(prc_write_0);
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


}; //endmodule


SC_MODULE(update_value_bool_2_p_str5) {


static const unsigned DataWidth = 7;
static const unsigned AddressRange = 14;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


update_value_bool_2_p_str5_ram* meminst;


SC_CTOR(update_value_bool_2_p_str5) {
meminst = new update_value_bool_2_p_str5_ram("update_value_bool_2_p_str5_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~update_value_bool_2_p_str5() {
    delete meminst;
}


};//endmodule
#endif
