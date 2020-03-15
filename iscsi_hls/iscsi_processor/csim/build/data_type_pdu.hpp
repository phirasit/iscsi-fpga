#ifndef __DATA_TYPE_PDU_HPP__
#define __DATA_TYPE_PDU_HPP__

#include "data_type_primitives.hpp"

enum ISCSI_PDU_OPCODE {
	  PDU_OPCODE_NOP_OUT                = 0x00,
	  PDU_OPCODE_SCSI_CMD               = 0x01,
	  PDU_OPCODE_SCSI_TASK_MANAGE       = 0x02,
	  PDU_OPCODE_LOGIN                  = 0x03,
	  PDU_OPCODE_TEXT                   = 0x04,
	  PDU_OPCODE_SCSI_DATA_OUT          = 0x05,
	  PDU_OPCODE_LOGOUT                 = 0x06,
	  PDU_OPCODE_SNACK                  = 0x07,

	  PDU_OPCODE_NOP_IN                 = 0x20,
	  PDU_OPCODE_SCSI_CMD_RES           = 0x21,
	  PDU_OPCODE_SCSI_TASK_MANAGE_RES   = 0x22,
	  PDU_OPCODE_LOGIN_RES              = 0x23,
	  PDU_OPCODE_TEXT_RES               = 0x24,
	  PDU_OPCODE_SCSI_DATA_IN           = 0x25,
	  PDU_OPCODE_LOGOUT_RES             = 0x26,

	  PDU_OPCODE_R2T                    = 0x31,
	  PDU_OPCODE_ASYNC_MSG              = 0x32,

	  PDU_OPCODE_REJECT                 = 0x3f
};

struct iscsi_pdu_header {
	static const int num_bytes = 48;
	byte buffer[num_bytes];

	iscsi_pdu_header() {
		for (int i = 0; i < num_bytes; ++i) buffer[i] = 0;
	}
	iscsi_pdu_header(const iscsi_pdu_header& header) {
		for (int i = 0; i < num_bytes; ++i) buffer[i] = header.buffer[i];
	}

	inline byte& operator [] (int idx) { return buffer[idx]; }
	inline const byte& operator [] (int idx) const { return buffer[idx]; }

	int opcode() const { return buffer[0](5, 0); }
	void set_opcode(enum ISCSI_PDU_OPCODE opcode) { buffer[0](5, 0) = opcode; }

	int final() { return buffer[1](7, 7); }
	void set_final(bool final) { buffer[1](7, 7) = final; }

	bool is_continue() const { return buffer[1](6, 6); }

	int initiator_task_tag() const { return this->get_4byte(16); }
	void set_initiator_task_tag(int initiator_task_tag) { this->set_4byte(16, initiator_task_tag); }

	int target_transfer_tag() const { return 0; }
	void set_target_transfer_tag(ap_uint<32> target_transfer_tag) {
		buffer[20] = target_transfer_tag(31, 24);
		buffer[21] = target_transfer_tag(23, 16);
		buffer[22] = target_transfer_tag(15,  8);
		buffer[23] = target_transfer_tag( 7,  0);
	}

	int data_segment_length() const {
		return ((int) buffer[5] << 16) | ((int) buffer[6] << 8) | buffer[7];
	}
	void set_data_segment_length(ap_uint<24> length) {
		buffer[5] = length(23, 16);
		buffer[6] = length(15,  8);
		buffer[7] = length( 7,  0);
	}

	int get_4byte(int idx) const {
		return ((int) buffer[idx] << 24)
				| ((int) buffer[idx+1] << 16)
				| ((int) buffer[idx+2] <<  8)
				| ((int) buffer[idx+3]      );
	}

	void set_4byte(int idx, ap_uint<32> val) {
		buffer[idx  ] = val(31, 24);
		buffer[idx+1] = val(23, 16);
		buffer[idx+2] = val(15,  8);
		buffer[idx+3] = val( 7,  0);
	}

	void write_to_tcp(data_stream& out_stream) const {
		out_stream.write_byte_array((const unsigned char*) buffer, num_bytes);
	}

	void read_from_tcp(data_stream& inp_stream) {
		inp_stream.read_byte_array((unsigned char*) buffer, num_bytes);
	}

/*
private:
	void set_bit(byte* buf, int idx, bool val) {
		static char one = 0x01;
		idx = 7 - idx;
		*buf = (((val & one) << idx) | (*buf & ~(one << idx)));
	}
*/
};

#endif // __DATA_TYPE_PDU_HPP__
