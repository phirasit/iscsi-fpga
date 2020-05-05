#ifndef __ISCSI_LOGIN_HPP__
#define __ISCSI_LOGIN_HPP__

#include "iscsi_request.hpp"

enum LOGIN_STATUS {
	SUCCESS = 0x0000,
	TARGET_MOVED_TEMPORARILY = 0x0101,
	TARGET_MOVED_PERMANENTLY = 0x0102,
	INITIATOR_ERROR = 0x0200,
	AUTHENTICATION_ERROR = 0x0201,
	AUTHORIZATION_ERROR = 0x0202,
	NOT_FOUND = 0x0203,
	TARGET_MOVED = 0x0204,
	UNSUPPORTED_VERSION = 0x0205,
	TOO_MANY_CONNECTION = 0x0206,
	MISSING_PARAMETER = 0x0207,
	CANT_INCLUDE_SESSION = 0x0208,
	SESSION_NOT_SUPPORTED = 0x0209,
	SESSION_NOT_EXIST = 0x020A,
	INVALID_DURING_LOGIN = 0x020B,
	TARGET_ERROR = 0x0300,
	SERVICE_UNAVAILABLE = 0x0301,
	OUT_OF_RESOURCE = 0x0302
};

enum LOGIN_STATE {
	SECURITY_NEGOTIATION = 0, LOGIN_OPERATIONAL = 1, FULL_FEATURE = 3
};

struct iscsi_login_pdu: public iscsi_pdu_header {

	iscsi_login_pdu() :
			iscsi_pdu_header() {
	}
	iscsi_login_pdu(const iscsi_pdu_header& pdu) :
			iscsi_pdu_header(pdu) {
	}

	int csg() const {
		return buffer[1](3, 2);
	}
	void set_csg(ap_uint<2> csg) {
		buffer[1](3, 2) = csg;
	}
	int nsg() const {
		return buffer[1](1, 0);
	}
	void set_nsg(ap_uint<2> nsg) {
		buffer[1](1, 0) = nsg;
	}

	int login_transit() const {
		return buffer[1](7, 7);
	}
	void set_login_transit(bool transmit) {
		buffer[1](7, 7) = transmit;
	}

	void set_login_response_status(ap_uint<16> status) {
		buffer[36] = status(15, 8);
		buffer[37] = status(7, 0);
	}

	int tsih() const {
		return ((int) buffer[14] << 8) | buffer[15];
	}
	void set_tsih(ap_uint<16> tsih) {
		buffer[14] = tsih(15, 8);
		buffer[15] = tsih(7, 0);
	}

	void set_isid(const iscsi_login_pdu &pdu) {
		for (int i = 8; i <= 13; ++i) {
			buffer[i] = pdu.buffer[i];
		}
	}
};

void iscsi_login(const iscsi_pdu_header& header, data_stream& tcp_in,
		data_stream& tcp_out);

#endif // __ISCSI_LOGIN_HPP__
