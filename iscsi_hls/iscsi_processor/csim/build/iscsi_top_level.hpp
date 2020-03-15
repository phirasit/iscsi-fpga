#ifndef __ISCSI_TOP_LEVEL_HPP__
#define __ISCSI_TOP_LEVEL_HPP__

#include "iscsi.hpp"

void iscsi_interface(
	// tcp information
	data_stream& tcp_in,
	data_stream& tcp_out
);

void process_pdu(
	data_stream& tcp_in,
	data_stream& tcp_out
);

#endif
