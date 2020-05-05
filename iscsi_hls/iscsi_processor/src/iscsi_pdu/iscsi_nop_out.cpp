#include "iscsi_nop_out.hpp"

#define DEFAULT_INITIATOR_TASK_TAG  0xFFFFFFFF
#define DEFAULT_TARGET_TRANSFER_TAG 0xFFFFFFFF

void iscsi_nop_out(const iscsi_pdu_header& header, data_stream& tcp_in, data_stream& tcp_out) {
	struct iscsi_connection& connection = iscsi_connection::get_instance();
	connection.advance_stat_sn();

	// TODO check validity of the pdu
	int valid = 1;
	iscsi_nop_in_pdu response;
	response.set_opcode(PDU_OPCODE_NOP_IN);
	response.set_final(1);
	response.set_data_segment_length(header.data_segment_length());

	if (valid) {
		response.set_initiator_task_tag(header.initiator_task_tag());
		response.set_target_transfer_tag(header.target_transfer_tag());
		connection.advance_stat_sn();
	} else {
		response.set_initiator_task_tag(DEFAULT_INITIATOR_TASK_TAG);
		response.set_target_transfer_tag(DEFAULT_TARGET_TRANSFER_TAG);
	}

	connection.set_pdu_response_header(&response);
	response.set_data_segment_length(header.data_segment_length());

	// copy data from header to response
	for (int i = 0; i < header.data_segment_length(); i += 4) {
		tcp_out.write(tcp_in.read());
	}

}

