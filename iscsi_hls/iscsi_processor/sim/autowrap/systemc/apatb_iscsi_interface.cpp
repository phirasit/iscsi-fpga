// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================

#define AP_INT_MAX_W 32678

#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;


// [dump_struct_tree [build_nameSpaceTree] dumpedStructList] ---------->
    typedef struct data_stream {
        ap_int<32> V;
       } data_stream;



// [dump_enumeration [get_enumeration_list]] ---------->


// wrapc file define: "tcp_in_V_V"
#define AUTOTB_TVIN_tcp_in_V_V  "../tv/cdatafile/c.iscsi_interface.autotvin_tcp_in_V_V.dat"
// wrapc file define: "tcp_out_V_V"
#define AUTOTB_TVOUT_tcp_out_V_V  "../tv/cdatafile/c.iscsi_interface.autotvout_tcp_out_V_V.dat"
#define AUTOTB_TVIN_tcp_out_V_V  "../tv/cdatafile/c.iscsi_interface.autotvin_tcp_out_V_V.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "tcp_out_V_V"
#define AUTOTB_TVOUT_PC_tcp_out_V_V  "../tv/rtldatafile/rtl.iscsi_interface.autotvout_tcp_out_V_V.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			tcp_in_V_V_depth = 0;
			tcp_out_V_V_depth = 0;
			trans_num =0;
		}

		~INTER_TCL_FILE() {
			mFile.open(mName);
			if (!mFile.good()) {
				cout << "Failed to open file ref.tcl" << endl;
				exit (1);
			}
			string total_list = get_depth_list();
			mFile << "set depth_list {\n";
			mFile << total_list;
			mFile << "}\n";
			mFile << "set trans_num "<<trans_num<<endl;
			mFile.close();
		}

		string get_depth_list () {
			stringstream total_list;
			total_list << "{tcp_in_V_V " << tcp_in_V_V_depth << "}\n";
			total_list << "{tcp_out_V_V " << tcp_out_V_V_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int tcp_in_V_V_depth;
		int tcp_out_V_V_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern void iscsi_interface (
data_stream (&tcp_in),
data_stream (&tcp_out));

void AESL_WRAP_iscsi_interface (
data_stream (&tcp_in),
data_stream (&tcp_out))
{
	refine_signal_handler();
	fstream wrapc_switch_file_token;
	wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
	int AESL_i;
	if (wrapc_switch_file_token.good())
	{
		CodeState = ENTER_WRAPC_PC;
		static unsigned AESL_transaction_pc = 0;
		string AESL_token;
		string AESL_num;
		static AESL_FILE_HANDLER aesl_fh;


		// output port post check: "tcp_out_V_V"
		aesl_fh.read(AUTOTB_TVOUT_PC_tcp_out_V_V, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_tcp_out_V_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_tcp_out_V_V, AESL_token); // data

			sc_bv<32> *tcp_out_V_V_pc_buffer = new sc_bv<32>[1];
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'tcp_out_V_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'tcp_out_V_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					tcp_out_V_V_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_tcp_out_V_V, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_tcp_out_V_V))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: tcp_out_V_V
				{
					// bitslice(31, 0)
					// {
						// celement: tcp_out.V.V(31, 0)
						// {
							sc_lv<32>* tcp_out_V_V_lv0_0_0_1 = new sc_lv<32>[1];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: tcp_out.V.V(31, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								if (&(tcp_out.V) != NULL) // check the null address if the c port is array or others
								{
									tcp_out_V_V_lv0_0_0_1[hls_map_index].range(31, 0) = sc_bv<32>(tcp_out_V_V_pc_buffer[hls_map_index].range(31, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: tcp_out.V.V(31, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : tcp_out.V
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : tcp_out.V
								// output_left_conversion : tcp_out.V
								// output_type_conversion : (tcp_out_V_V_lv0_0_0_1[hls_map_index]).to_string(SC_BIN).c_str()
								if (&(tcp_out.V) != NULL) // check the null address if the c port is array or others
								{
									tcp_out.V = (tcp_out_V_V_lv0_0_0_1[hls_map_index]).to_string(SC_BIN).c_str();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] tcp_out_V_V_pc_buffer;
		}

		AESL_transaction_pc++;
	}
	else
	{
		CodeState = ENTER_WRAPC;
		static unsigned AESL_transaction;

		static AESL_FILE_HANDLER aesl_fh;

		// "tcp_in_V_V"
		char* tvin_tcp_in_V_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_tcp_in_V_V);

		// "tcp_out_V_V"
		char* tvin_tcp_out_V_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_tcp_out_V_V);
		char* tvout_tcp_out_V_V = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_tcp_out_V_V);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// [[transaction]]
		sprintf(tvin_tcp_in_V_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_tcp_in_V_V, tvin_tcp_in_V_V);

		sc_bv<32>* tcp_in_V_V_tvin_wrapc_buffer = new sc_bv<32>[1];

		// RTL Name: tcp_in_V_V
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: tcp_in.V.V(31, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : tcp_in.V
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : tcp_in.V
						// regulate_c_name       : tcp_in_V_V
						// input_type_conversion : (tcp_in.V).to_string(2).c_str()
						if (&(tcp_in.V) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> tcp_in_V_V_tmp_mem;
							tcp_in_V_V_tmp_mem = (tcp_in.V).to_string(2).c_str();
							tcp_in_V_V_tvin_wrapc_buffer[hls_map_index].range(31, 0) = tcp_in_V_V_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_tcp_in_V_V, "%s\n", (tcp_in_V_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_tcp_in_V_V, tvin_tcp_in_V_V);
		}

		tcl_file.set_num(1, &tcl_file.tcp_in_V_V_depth);
		sprintf(tvin_tcp_in_V_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_tcp_in_V_V, tvin_tcp_in_V_V);

		// release memory allocation
		delete [] tcp_in_V_V_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_tcp_out_V_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_tcp_out_V_V, tvin_tcp_out_V_V);

		sc_bv<32>* tcp_out_V_V_tvin_wrapc_buffer = new sc_bv<32>[1];

		// RTL Name: tcp_out_V_V
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: tcp_out.V.V(31, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : tcp_out.V
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : tcp_out.V
						// regulate_c_name       : tcp_out_V_V
						// input_type_conversion : (tcp_out.V).to_string(2).c_str()
						if (&(tcp_out.V) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> tcp_out_V_V_tmp_mem;
							tcp_out_V_V_tmp_mem = (tcp_out.V).to_string(2).c_str();
							tcp_out_V_V_tvin_wrapc_buffer[hls_map_index].range(31, 0) = tcp_out_V_V_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_tcp_out_V_V, "%s\n", (tcp_out_V_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_tcp_out_V_V, tvin_tcp_out_V_V);
		}

		tcl_file.set_num(1, &tcl_file.tcp_out_V_V_depth);
		sprintf(tvin_tcp_out_V_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_tcp_out_V_V, tvin_tcp_out_V_V);

		// release memory allocation
		delete [] tcp_out_V_V_tvin_wrapc_buffer;

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		iscsi_interface(tcp_in, tcp_out);

		CodeState = DUMP_OUTPUTS;

		// [[transaction]]
		sprintf(tvout_tcp_out_V_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_tcp_out_V_V, tvout_tcp_out_V_V);

		sc_bv<32>* tcp_out_V_V_tvout_wrapc_buffer = new sc_bv<32>[1];

		// RTL Name: tcp_out_V_V
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: tcp_out.V.V(31, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : tcp_out.V
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : tcp_out.V
						// regulate_c_name       : tcp_out_V_V
						// input_type_conversion : (tcp_out.V).to_string(2).c_str()
						if (&(tcp_out.V) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> tcp_out_V_V_tmp_mem;
							tcp_out_V_V_tmp_mem = (tcp_out.V).to_string(2).c_str();
							tcp_out_V_V_tvout_wrapc_buffer[hls_map_index].range(31, 0) = tcp_out_V_V_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvout_tcp_out_V_V, "%s\n", (tcp_out_V_V_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_tcp_out_V_V, tvout_tcp_out_V_V);
		}

		tcl_file.set_num(1, &tcl_file.tcp_out_V_V_depth);
		sprintf(tvout_tcp_out_V_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_tcp_out_V_V, tvout_tcp_out_V_V);

		// release memory allocation
		delete [] tcp_out_V_V_tvout_wrapc_buffer;

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "tcp_in_V_V"
		delete [] tvin_tcp_in_V_V;
		// release memory allocation: "tcp_out_V_V"
		delete [] tvout_tcp_out_V_V;
		delete [] tvin_tcp_out_V_V;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
	}
}

