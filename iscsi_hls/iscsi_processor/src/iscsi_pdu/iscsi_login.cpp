#include "iscsi_login.hpp"

static enum LOGIN_STATUS setup_session(iscsi_session& session, const iscsi_pdu_header& header) {
	iscsi_connection_parameter& parameter = iscsi_connection_parameter::get_instance();
	if (header.login_tsih() == 0) {
		if (parameter.has_session_type_discovery()) {
			// discovery session
			session.discovery = 1;
		} else if (parameter.has_target_name()){
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

void iscsi_login(const iscsi_pdu_header& header, data_stream& tcp_in, data_stream& tcp_out) {
	iscsi_connection_parameter& parameter = iscsi_connection_parameter::get_instance();
	enum LOGIN_STATUS status = SUCCESS;
	int response_length = 0;

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

	// response login
	// TODO change this for more authentication options
	static const char authentication_response[] = "AuthMethod=None";
	static const int authentication_strlen = 15;

	switch (header.login_csg()) {
	case SECURITY_NEGOTIATION:
		if (header.login_nsg() == FULL_FEATURE) {
			session.full_feature_phase = 1;
			status = SUCCESS;
		} else if (header.login_nsg() != SECURITY_NEGOTIATION) {
			status = INITIATOR_ERROR;
		}
		response_length = authentication_strlen;
		break;
	case LOGIN_OPERATIONAL:
		if (header.login_transit()) {
			if (header.login_nsg() == FULL_FEATURE) {
				session.full_feature_phase = 1;
			} else {
				status = INITIATOR_ERROR;
			}
		}
		response_length = parameter.length();
		break;
	case FULL_FEATURE:
		status = INITIATOR_ERROR;
		break;
	}

	// generate response header
	iscsi_login_pdu response;
	connection.set_pdu_response_header(&response);
	response.set_opcode(PDU_OPCODE_LOGIN_RES);
	response.set_final(1);
	response.set_login_response_status(status);
	response.set_tsih(session.get_tsih());
	response.set_data_segment_length(response_length);

	response.write_to_tcp(tcp_out);

	// generate data
	switch (header.login_csg()) {
	case SECURITY_NEGOTIATION:
		tcp_out.write_byte_array(authentication_response, authentication_strlen);
		break;
	case LOGIN_OPERATIONAL:
		parameter.write_to_tcp(tcp_out);
		break;
	}
}
