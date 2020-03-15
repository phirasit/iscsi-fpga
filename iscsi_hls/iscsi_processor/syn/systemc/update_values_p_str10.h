// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __update_values_p_str10_H__
#define __update_values_p_str10_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct update_values_p_str10_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 8;
  static const unsigned AddressRange = 17;
  static const unsigned AddressWidth = 5;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(update_values_p_str10_ram) {
        ram[0] = "0b01000100";
        ram[1] = "0b01100101";
        ram[2] = "0b01100110";
        ram[3] = "0b01100001";
        ram[4] = "0b01110101";
        ram[5] = "0b01101100";
        ram[6] = "0b01110100";
        ram[7] = "0b01010100";
        ram[8] = "0b01101001";
        ram[9] = "0b01101101";
        ram[10] = "0b01100101";
        ram[11] = "0b00110010";
        ram[12] = "0b01010111";
        ram[13] = "0b01100001";
        ram[14] = "0b01101001";
        ram[15] = "0b01110100";
        ram[16] = "0b00000000";


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


SC_MODULE(update_values_p_str10) {


static const unsigned DataWidth = 8;
static const unsigned AddressRange = 17;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


update_values_p_str10_ram* meminst;


SC_CTOR(update_values_p_str10) {
meminst = new update_values_p_str10_ram("update_values_p_str10_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~update_values_p_str10() {
    delete meminst;
}


};//endmodule
#endif
