#ifndef __ISCSI_CONNECTION_HPP__
#define __ISCSI_CONNECTION_HPP__

#include "iscsi_connection_parameter.hpp"

struct iscsi_connection {
	// singleton
	static iscsi_connection& get_instance() {
		static iscsi_connection instance = iscsi_connection();
		return instance;
	}

	// initialize connection
	iscsi_connection() {
		this->initialized = false;
		this->stat_sn = 0;
		this->exp_cmd_sn = 0;
		this->max_cmd_sn = 0;
	}

	// parameter for each connection
	iscsi_connection_parameter parameter;

	bool initialized;
	int stat_sn;
	int exp_cmd_sn;
	int max_cmd_sn;

	bool is_initialized() const { return this->initialized; }

	void advance_stat_sn() {
		++this->stat_sn;
	}

	void advance_exp_cmd_sn() {
		++this->exp_cmd_sn;
		this->max_cmd_sn = this->exp_cmd_sn;
	}

	void set_pdu_response_header(iscsi_pdu_header* pdu);
};

#endif // __ISCSI_CONNECTION_HPP__
