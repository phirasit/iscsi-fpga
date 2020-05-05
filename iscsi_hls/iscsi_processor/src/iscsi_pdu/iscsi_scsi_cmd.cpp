#include "iscsi_scsi_cmd.hpp"
#include "iscsi_data_in.hpp"

static inline int __divide_round_up(int a, int b) {
	return (a + b - 1) / b;
}
static inline int __min(int a, int b) {
	return (a < b) ? a : b;
}

void iscsi_scsi_response(const iscsi_scsi_cmd_header& header,
		data_stream& tcp_out) {
	struct iscsi_connection& connection = iscsi_connection::get_instance();
	struct iscsi_target& target = iscsi_target::get_instance();

	iscsi_scsi_response_header response;

	response.set_opcode(PDU_OPCODE_SCSI_CMD_RES);
	response.set_final(1);
	response.set_scsi_response(0);
	response.set_scsi_target_status(target.get_target_status());
	response.set_initiator_task_tag(header.initiator_task_tag());
	response.set_sense_buffer_length(target.get_sense_buffer_length());
	connection.set_pdu_response_header(&response);

	response.write_to_tcp(tcp_out);
	target.write_sense_buffer_to_tcp(tcp_out);
}

void iscsi_scsi_cmd(const iscsi_pdu_header& pdu_header, data_stream& tcp_in,
		data_stream& tcp_out) {
	iscsi_scsi_cmd_header header (pdu_header);

	struct iscsi_connection& connection = iscsi_connection::get_instance();
	struct iscsi_connection_parameter& parameter =
			iscsi_connection_parameter::get_instance();
	struct iscsi_session& session = iscsi_session::get_instance();
	struct iscsi_target& target = iscsi_target::get_instance();

	connection.advance_exp_cmd_sn();

	int transfer_tag = session.transfer_tag;
	int data_seg_length = header.data_segment_length();
	int exp_data_transfer = header.exp_data_tranfer_length();
	int byte_left = exp_data_transfer - data_seg_length;

	/*
	 if (header.is_write_cmd() && data_seg_length < exp_data_transfer) {
	 if (!parameter.initial_r2t) {
	 int first_data_pdu_length = __min(
	 parameter.first_burst_length,
	 exp_data_transfer
	 ) - data_seg_length;
	 }

	 int connection_target_max_received = parameter.max_receive_data_segment_length;
	 int total_r2t = __divide_round_up(byte_left, connection_target_max_received);
	 int outgoing_r2t = min(parameter.max_outstanding_r2t(), total_r2t);

	 iscsi_transfer_entry_create(
	 transfer_entry,
	 header.cmd_cdb,
	 exp_data_transfer,
	 connection_target_max_received,
	 transfer_tag
	 );

	 for (int i = 0; i < outgoing_r2t; ++i) {
	 iscsi_request_r2t_send(
	 header.initator_task_tag(),
	 trasfer_tag,
	 i,
	 next_offset,
	 min(connection_target_max_received, exp_data_transfer - next_offset),
	 response
	 );

	 next_offset += connection_target_max_received;
	 }
	 }
	 */

	int expect_data_transfer_length = header.exp_data_tranfer_length();
	target.execute_scsi_cdb(header.get_scsi_cdb());

	// execute command
	if (header.is_read_cmd()) {
		iscsi_data_in_send(header.initiator_task_tag(),
				expect_data_transfer_length, tcp_out);
	} else {
		iscsi_scsi_response(header, tcp_out);
	}
}
