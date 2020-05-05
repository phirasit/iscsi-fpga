#ifndef __ISCSI_SCSI_CMD_HPP__
#define __ISCSI_SCSI_CMD_HPP__

#include "iscsi_request.hpp"

struct iscsi_scsi_cmd_header: public iscsi_pdu_header {
	int exp_data_tranfer_length() const {
		return this->get_4byte(20);
	}
	bool is_read_cmd() const {
		return this->buffer[1](6, 6);
	}
	bool is_write_cmd() const {
		return this->buffer[1](5, 5);
	}

	scsi_cdb_t get_scsi_cdb() const {
		scsi_cdb_t result;
		for (int i = 0; i < 16; ++i) {
			result(8 * i + 7, 8 * i) = buffer[15 - i];
		}
		return result;
	}

	iscsi_scsi_cmd_header(const iscsi_pdu_header& pdu) :
			iscsi_pdu_header(pdu) {
	}
};

struct iscsi_scsi_response_header: public iscsi_pdu_header {
	void set_scsi_response(int response) {
		this->buffer[2] = response;
	}
	void set_scsi_target_status(int status) {
		this->buffer[3] = status;
	}
	void set_sense_buffer_length(int length) {
		this->set_data_segment_length(2 + length);
	}

};

void iscsi_scsi_cmd(const iscsi_pdu_header& pdu_header, data_stream& tcp_in,
		data_stream& tcp_out);

#endif // __ISCSI_SCSI_CMD_HPP__
