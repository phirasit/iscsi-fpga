#ifndef __ISCSI_DATA_IN_HPP__
#define __ISCSI_DATA_IN_HPP__

#include "iscsi_request.hpp"

struct iscsi_pdu_data_in : public iscsi_pdu_header {
	void set_status(bool status) {
		this->buffer[1](0, 0) = status;
	}
	void set_acknowledge(bool acknowledge) {
		this->buffer[1](6, 6) = acknowledge;
	}

};

void iscsi_data_in_send(int intiator_task_tag, int expected_data_transfer_length, data_stream& tcp_out);

#endif
