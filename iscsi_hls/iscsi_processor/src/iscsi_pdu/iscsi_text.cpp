#include "iscsi_text.hpp"

void iscsi_text(const iscsi_pdu_header& header, data_stream& tcp_in, data_stream& tcp_out)
{
	iscsi_connection& connection = iscsi_connection::get_instance();
	iscsi_session& session = iscsi_session::get_instance();

	iscsi_connection_parameter parameter;
	parameter.read_from_tcp(tcp_in, header.data_segment_length());

	connection.advance_cmd_sn();
	connection.advance_stat_sn();
	iscsi_pdu_header response;

	if (header.is_continue()) {
		// TODO return empty response
	} else if (parameter.has_send_targets()) {
		// send list of target here
		static const unsigned char response_text[]
			= "TargetName=" ISCSI_TARGET_IQN;
		static const int response_text_strlen = 55;

		response.set_opcode(PDU_OPCODE_TEXT_RES);
		response.set_final(1);
		response.set_data_segment_length(response_text_strlen);
		response.set_initiator_task_tag(header.initiator_task_tag());
		response.set_target_transfer_tag(DEFAULT_TARGET_TRANSFER_TAG);
		connection.set_pdu_response_header(&response);

		response.write_to_tcp(tcp_out);
		tcp_out.write_byte_array(response_text, response_text_strlen);

	} else if (session.is_discovery()) { // TODO add vendor specific
		// TODO reject the PDU
	} else {
		// TODO get response from target
	}
}
