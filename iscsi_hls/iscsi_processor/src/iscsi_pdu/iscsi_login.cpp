#include "iscsi_login.hpp"

static enum LOGIN_STATUS setup_session(iscsi_session& session,
		const iscsi_login_pdu& header) {
	iscsi_connection_parameter& parameter =
			iscsi_connection_parameter::get_instance();
	if (header.tsih() == 0) {
		session.tsih = 0x01;
		if (parameter.has_session_type_discovery()) {
			// discovery session
			session.discovery = 1;
		} else if (parameter.has_target_name()) {
			// normal session
			session.discovery = 0;
			// TODO connect to target
		} else {
			return INITIATOR_ERROR;
		}
	} else {
		// TODO
		// connect to current session using TSIH
		return NOT_FOUND;
	}

	return SUCCESS;
}

void iscsi_login(const iscsi_pdu_header& pdu_header, data_stream& tcp_in,
		data_stream& tcp_out) {
	iscsi_connection_parameter& parameter =
			iscsi_connection_parameter::get_instance();
	enum LOGIN_STATUS status = SUCCESS;
	int response_length = 0;

	iscsi_login_pdu header(pdu_header);

	// read parameter
	parameter.read_from_tcp(tcp_in, header.data_segment_length());

	if (header.is_continue()) {
		// TODO: multi-step login
	}

	iscsi_connection& connection = iscsi_connection::get_instance();
	iscsi_session& session = iscsi_session::get_instance();
	if (!session.is_initialized()) {
		status = setup_session(session, header);
		if (status != SUCCESS) {
			// TODO reject login
			return;
		}
	}

	// setup connection
	connection.initialized = true;
	connection.advance_exp_cmd_sn();

	// response login
	// TODO change this for more authentication options
	static const unsigned char authentication_response[] = "AuthMethod=None";
	static const int authentication_strlen = 15;

	switch (header.csg()) {
	case SECURITY_NEGOTIATION:
		if (header.nsg() == FULL_FEATURE) {
			session.full_feature_phase = 1;
			status = SUCCESS;
		} else if (header.nsg() != SECURITY_NEGOTIATION) {
			status = INITIATOR_ERROR;
		}
		response_length = authentication_strlen;
		break;
	case LOGIN_OPERATIONAL:
		if (header.login_transit()) {
			if (header.nsg() == FULL_FEATURE) {
				session.full_feature_phase = 1;
			} else {
				status = INITIATOR_ERROR;
			}
		}
		parameter.generate_array();
		response_length = parameter.length();
		break;
	case FULL_FEATURE:
		status = INITIATOR_ERROR;
		break;
	}

	// generate response header
	iscsi_login_pdu response;

	response.set_opcode(PDU_OPCODE_LOGIN_RES);
	response.set_final(1);
	response.set_csg(header.csg());
	response.set_nsg(header.nsg());
	response.set_login_response_status(status);
	response.set_isid(header);
	response.set_tsih(session.get_tsih());
	response.set_initiator_task_tag(header.initiator_task_tag());
	connection.set_pdu_response_header(&response);
	response.set_data_segment_length(response_length);

	response.write_to_tcp(tcp_out);

	// generate data
	switch (header.csg()) {
	case SECURITY_NEGOTIATION:
		tcp_out.write_byte_array(authentication_response,
				authentication_strlen);
		break;
	case LOGIN_OPERATIONAL:
		parameter.write_to_tcp(tcp_out);
		break;
	}
}
