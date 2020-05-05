#include "iscsi_data_in.hpp"

static inline int __divide_round_up(int a, int b) {
	return (a + b-1) / b;
}

void iscsi_data_in_send(int intiator_task_tag, int expected_data_transfer_length, data_stream& tcp_out)
{
	struct iscsi_connection& connection = iscsi_connection::get_instance();
	struct iscsi_connection_parameter& parameter = iscsi_connection_parameter::get_instance();
	int max_received_length = parameter.max_receive_data_segment_length;
	int num_pdu = __divide_round_up(expected_data_transfer_length, max_received_length);

	int acknowledge = 0; // TODO this
	int status = 0; // TODO add error if exists

	byte *target_data;

	int offset = 0;
	for (int i = 0; offset < expected_data_transfer_length; ++i) {
		int data_length = min(expected_data_transfer_length - offset, max_received_length);

		iscsi_pdu_data_in response;
		response.set_opcode(PDU_OPCODE_SCSI_DATA_IN);
		response.set_final(offset + data_length == expected_data_transfer_length);
		response.set_acknowledge(acknowledge);
		response.set_status(status);

		connection.set_pdu_response_header(&response);
		response.write_to_tcp(tcp_out);

		offset += data_length;

		connection.advance_stat_sn();
	}
}
