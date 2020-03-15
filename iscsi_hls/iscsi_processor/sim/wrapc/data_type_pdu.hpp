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

	inline byte& operator [] (int idx) { return buffer[idx]; }
	inline const byte& operator [] (int idx) const { return buffer[idx]; }

	int opcode() const { return buffer[0] & 0x3F; }
	void set_opcode(enum ISCSI_PDU_OPCODE opcode) { buffer[0] = (buffer[0] & ~(0x3F)) | opcode; }

	// TODO implement this
	int final() { return 0; }
	void set_final(int final) {}

	bool is_continue() const { return (buffer[1] >> 6) & 0x01; }

	int initiator_task_tag() const { return 0; }
	void set_initiator_task_tag(int initiator_task_tag) {}

	int target_transfer_tag() const { return 0; }
	void set_target_transfer_tag(int target_transfer_tag) {}

	int data_segment_length() const { return (int) buffer[5] << 16 | (int) buffer[6] << 8 | buffer[7]; }
	void set_data_segment_length(int data_segment_length) {}

	void set_4byte(int idx, int val) {
		buffer[idx  ] = (val >> 24) & 0xF;
		buffer[idx+1] = (val >> 16) & 0xF;
		buffer[idx+2] = (val >>  8) & 0xF;
		buffer[idx+3] = (val      ) & 0xF;
	}

	// login function
	int login_csg() const { return (buffer[1] >> 2) & 0x3; }
	int login_nsg() const { return buffer[1] & 0x3; }
	int login_transit() const { return buffer[1] >> 7; }
	int login_tsih() const { return ((int) buffer[14] << 8) | buffer[15]; }

	void write_to_tcp(data_stream& out_stream) const {
		out_stream.write_byte_array((const char*) buffer, num_bytes);
	}

	void read_from_tcp(data_stream& inp_stream) {
		inp_stream.read_byte_array((char*) buffer, num_bytes);
	}

};

#endif // __DATA_TYPE_PDU_HPP__
