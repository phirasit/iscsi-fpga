#ifndef __ISCSI_CONNECTION_PARAMTER__
#define __ISCSI_CONNECTION_PARAMTER__

#include "data_type.hpp"

#include <string>

struct iscsi_connection_parameter {
	int max_receive_data_segment_length;
	int max_connections;
	int initial_r2t;
	int immediate_data;
	int max_burst_length;
	int first_burst_length;
	int data_pdu_in_order;
	int data_sequence_in_order;
	int default_time_2_wait;
	int default_time_2_retain;
	int max_outstanding_r2t;

	char data[200];
	int len;

	static iscsi_connection_parameter& get_instance() {
		static iscsi_connection_parameter instance;
		return instance;
	}

	void read_from_tcp(data_stream& tcp_in, int length) {
		tcp_in.read_byte_array((char*) data, length);
	}

	void write_to_tcp(data_stream& tcp_out) const {
		tcp_out.write_byte_array(data, len);
	}

	int length() const { return this->len; }


	bool has_send_targets() const {
		return this->matchstring("SendTargets");
	}

	bool has_session_type_discovery() const {
		return this->matchstring("SessionType=Discovery");
	}

	bool has_target_name() const {
		return this->matchstring("TargetName");
	}

private:
	bool matchstring(const char* name) const {
		for (int i = 0, idx = 0; i < this->len; ++i) {
			idx = (this->data[i] == name[idx] ? idx+1 : 0);
			if (name[idx] == 0) {
				return true;
			}
		}
		return false;
	}
};

#endif // __ISCSI_CONNECTION_PARAMTER__
