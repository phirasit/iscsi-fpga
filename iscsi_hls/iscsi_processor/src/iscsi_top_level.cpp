#include "iscsi_top_level.hpp"

/** iscsi_interface
 *  top level of the iscsi processor
 *  @param[in]		tcp_in
 *  @param[out]		tcp_out
 */
void iscsi_interface(
	// tcp information
	data_stream& tcp_in,
	data_stream& tcp_out
) {
#pragma HLS INTERFACE axis port=tcp_in
#pragma HLS INTERFACE axis port=tcp_out

// #define LOOPBACK
#ifdef LOOPBACK
	// loop back function
	 while (true) {
		 data_stream_element elem;
		 tcp_in.read(elem);
		 elem(15, 0) = 0;
		 tcp_out.write(elem);
	 }
#else
	// bullshit code to indicate output direction
	volatile bool x = false;
	if (x) {
		data_stream_element elem;
		tcp_out.write(elem);
	}

	while (true) {
		process_pdu(tcp_in, tcp_out);
	}
#endif
}

void process_pdu(data_stream& tcp_in, data_stream& tcp_out)
{
	static iscsi_connection& connection = iscsi_connection::get_instance();
	static iscsi_session& session = iscsi_session::get_instance();

	// read PDU header
	iscsi_pdu_header header;
	header.read_from_tcp(tcp_in);
//	std::cout << "PDU opcode = " << header.opcode() << std::endl;
//	std::cout << "data segment size = " << header.data_segment_length() << std::endl;

	// check if login
	if (!connection.is_initialized() || !session.is_full_feature_phase()) {
		// if not login
		if (header.opcode() == PDU_OPCODE_LOGIN) {
			iscsi_login(header, tcp_in, tcp_out);
		} else {
			// TODO add require login
			// iscsi_require_login(header, tcp_in, tcp_out);
		}
		return;
	}

	// already login
	switch (header.opcode()) {
	/*
	case PDU_OPCODE_LOGOUT:
		iscsi_logout(header, tcp_in, tcp_out);
		return;
	*/
	case PDU_OPCODE_TEXT:
		iscsi_text(header, tcp_in, tcp_out);
		return;
	}

	// if in discovery mode
	if (session.is_discovery()) {
		// iscsi_reject(tcp_out, REJECT_PROTOCOL_ERROR);
		return;
	}

	switch (header.opcode()) {
	case PDU_OPCODE_NOP_OUT:
		iscsi_nop_out(header, tcp_in, tcp_out);
		return;
	/*
	case PDU_OPCODE_SCSI_CMD:
		iscsi_scsi_cmd(header, tcp_in, tcp_out);
		return;
	case PDU_OPCODE_DATA_OUT:
		iscsi_data_out(header, tcp_in, tcp_out);
		return;
	 */
	}
}
