#ifndef __ISCSI_TARGET_HPP__
#define __ISCSI_TARGET_HPP__

#include "data_type_primitives.hpp"

typedef ap_uint<128> scsi_cdb_t;

struct iscsi_target {

	static struct iscsi_target& get_instance() {
		static iscsi_target target;
		return target;
	}

	unsigned char sense_buffer[30];
	int sense_buffer_length; // TODO fix this to actual value
	int scsi_response;

	int get_target_status() const {
		return scsi_response;
	}
	int get_sense_buffer_length() const {
		return sense_buffer_length;
	}

	void write_sense_buffer_to_tcp(data_stream& tcp_out) {
		sense_buffer[0] = (sense_buffer_length >> 8) & 0xFF;
		sense_buffer[1] = (sense_buffer_length) & 0xFF;
		tcp_out.write_byte_array(sense_buffer, get_sense_buffer_length() + 2);
	}

	void execute_scsi_cdb(scsi_cdb_t cdb) {
		// TODO implement this
		scsi_response = 0;
	}

	iscsi_target() :
			sense_buffer_length(16), scsi_response(0) {
	}
};

#endif
