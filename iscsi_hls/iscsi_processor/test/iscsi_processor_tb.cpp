#include <iostream>
#include <iomanip>
#include <fstream>

#include "../src/iscsi_top_level.hpp"

int main() {
	// read input file
	std::ifstream inp ("discovery_in.txt");

	data_stream in_stream, out_stream;
	data_stream_element elem;

	while (!inp.eof()) {
		int byte;
		inp.read((char*) &byte, 4);
		in_stream.write(byte);
		std::cout << std::setfill('0') << std::setw(8) << std::hex << byte << std::endl;
	}
	std::cout << std::endl;
	inp.close();

	while (in_stream.size() > 10) {
		std::cout << "Input Size = " << std::dec << in_stream.size() << std::endl;
		process_pdu(in_stream, out_stream);
	}

	std::cout << "Output Size = " << out_stream.size() << std::endl;
	while (!out_stream.empty()) {
		data_stream_element val;
		out_stream.read(val);
		std::cout << std::setfill('0') << std::setw(8) << std::hex << ((int) val(31, 0)) << std::endl;
	}
	std::cout << std::endl << "Pass" << std::endl;

	return 0;
}
