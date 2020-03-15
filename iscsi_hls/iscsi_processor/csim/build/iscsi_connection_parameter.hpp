#ifndef __ISCSI_CONNECTION_PARAMTER__
#define __ISCSI_CONNECTION_PARAMTER__

#include "data_type.hpp"

#define min(a, b) ((a) < (b) ? (a) : (b))
#define max(a, b) ((a) > (b) ? (a) : (b))

#define MAX_RECEIVE_DATA_SEGMENT    "MaxRecvDataSegmentLength"
#define MAX_CONNECTIONS             "MaxConnections"
#define INITIAL_R2T                 "InitialR2T"
#define IMMEDIATE_DATA              "ImmediateData"
#define MAX_BURST_LENGTH            "MaxBurstLength"
#define FIRST_BURST_LENGTH          "FirstBurstLength"
#define DATA_PDU_IN_ORDER           "DataPDUInOrder"
#define DATA_SEQUENCE_IN_ORDER      "DataSequenceInOrder"
#define DEFAULT_TIME_2_WAIT         "DefaultTime2Wait"
#define DEFAULT_TIME_2_RETAIN       "DefaultTime2Retain"
#define MAX_OUTSTANDING_R2T         "MaxOutstandingR2T"

#define ISCSI_CONNECTION_PARAMETER_BUFFER_SIZE               8192
#define ISCSI_CONNECTION_PARAMETER_MAX_CONNECTIONS           1
#define ISCSI_CONNECTION_PARAMETER_INITIAL_R2T               1
#define ISCSI_CONNECTION_PARAMETER_IMMEDIATE_DATA            1
#define ISCSI_CONNECTION_PARAMETER_MAX_BURST_LENGTH          8192
#define ISCSI_CONNECTION_PARAMETER_FIRST_BURST_LENGTH        8192
#define ISCSI_CONNECTION_PARAMETER_DATA_PDU_IN_ORDER         1
#define ISCSI_CONNECTION_PARAMETER_DATA_SEQUENCE_IN_ORDER    1
#define ISCSI_CONNECTION_PARAMETER_DEFAULT_TIME_2_WAIT       10
#define ISCSI_CONNECTION_PARAMETER_DEFAULT_TIME_2_RETAIN     10
#define ISCSI_CONNECTION_PARAMETER_MAX_OUTSTANDING_R2T       10

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

	unsigned char data[ISCSI_CONNECTION_PARAMETER_BUFFER_SIZE];
	int data_length;

	iscsi_connection_parameter() {
		max_receive_data_segment_length = ISCSI_CONNECTION_PARAMETER_BUFFER_SIZE;
		max_connections          = ISCSI_CONNECTION_PARAMETER_MAX_CONNECTIONS;
		initial_r2t              = ISCSI_CONNECTION_PARAMETER_INITIAL_R2T;
		immediate_data           = ISCSI_CONNECTION_PARAMETER_IMMEDIATE_DATA;
		max_burst_length         = ISCSI_CONNECTION_PARAMETER_MAX_BURST_LENGTH;
		first_burst_length       = ISCSI_CONNECTION_PARAMETER_FIRST_BURST_LENGTH;
		data_pdu_in_order        = ISCSI_CONNECTION_PARAMETER_DATA_PDU_IN_ORDER;
		data_sequence_in_order   = ISCSI_CONNECTION_PARAMETER_DATA_SEQUENCE_IN_ORDER;
		default_time_2_wait      = ISCSI_CONNECTION_PARAMETER_DEFAULT_TIME_2_WAIT;
		default_time_2_retain    = ISCSI_CONNECTION_PARAMETER_DEFAULT_TIME_2_RETAIN;
		max_outstanding_r2t      = ISCSI_CONNECTION_PARAMETER_MAX_OUTSTANDING_R2T;
		data_length = 0;
	}

	static iscsi_connection_parameter& get_instance() {
		static iscsi_connection_parameter instance;
		return instance;
	}

	void read_from_tcp(data_stream& tcp_in, int length) {
		tcp_in.read_byte_array(data, length);
		data_length = length;
		this->update_values();
	}

	void generate_array() {
		data_length = 0;

		this->write_key_value_int (MAX_CONNECTIONS,        max_connections);
		this->write_key_value_bool(INITIAL_R2T,            initial_r2t);
		this->write_key_value_bool(IMMEDIATE_DATA,         immediate_data);
		this->write_key_value_int (MAX_BURST_LENGTH,       max_burst_length);
		this->write_key_value_int (FIRST_BURST_LENGTH,     first_burst_length);
		this->write_key_value_bool(DATA_PDU_IN_ORDER,      data_pdu_in_order);
		this->write_key_value_bool(DATA_SEQUENCE_IN_ORDER, data_sequence_in_order);
		this->write_key_value_int (DEFAULT_TIME_2_WAIT,    default_time_2_wait);
		this->write_key_value_int (DEFAULT_TIME_2_RETAIN,  default_time_2_retain);
		this->write_key_value_int (MAX_OUTSTANDING_R2T,    max_outstanding_r2t);
	}

	void write_to_tcp(data_stream& tcp_out) {
		tcp_out.write_byte_array(data, data_length);
	}

	int length() const { return this->data_length; }

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
		for (int i = 0, idx = 0; i < this->data_length; ++i) {
			idx = (this->data[i] == name[idx] ? idx+1 : 0);
			if (name[idx] == 0) {
				return true;
			}
		}
		return false;
	}

	bool key_equal(int& idx, const char* key) {
		for (int i = 0; key[i]; ++i) {
			if (data[idx+i] != key[i]) {
				return false;
			}
		}
		return true;
	}

	void update_value_int(int idx, const char* key, int& val, bool keep_max=false) {
		if (!key_equal(idx, key)) return;
		++idx;
		int nw_val = 0;
		while (data[idx]) nw_val = 10 * nw_val + (data[idx++] - '0');
		if (keep_max) {
			val = max(val, nw_val);
		} else {
			val = min(val, nw_val);
		}
	}

	void update_value_bool(int idx, const char* key, int& val) {
		if (!key_equal(idx, key)) return;
		++idx;
		val |= key_equal(idx, "Yes");
	}

	void update_values() {
		for (int i = 0; i < data_length; ++i) {
			update_value_int (i, MAX_RECEIVE_DATA_SEGMENT, max_receive_data_segment_length);
			update_value_int (i, MAX_CONNECTIONS,          max_connections);
			update_value_bool(i, INITIAL_R2T,              initial_r2t);
			update_value_bool(i, IMMEDIATE_DATA,           immediate_data);
			update_value_int (i, MAX_BURST_LENGTH,         max_burst_length);
			update_value_int (i, FIRST_BURST_LENGTH,       first_burst_length);
			update_value_bool(i, DATA_PDU_IN_ORDER,        data_pdu_in_order);
			update_value_bool(i, DATA_SEQUENCE_IN_ORDER,   data_sequence_in_order);
			update_value_int (i, DEFAULT_TIME_2_WAIT,      default_time_2_wait, true);
			update_value_int (i, DEFAULT_TIME_2_RETAIN,    default_time_2_retain, true);
			update_value_int (i, MAX_OUTSTANDING_R2T,      max_outstanding_r2t);

			while (i < data_length && data[i]) ++i;
		}
	}


	void write_key(const char* key) {
		for (int i = 0; key[i]; ++i) {
			data[data_length++] = key[i];
		}
		data[data_length++] = '=';
	}

	void write_key_value_int(const char* key, int value) {
		write_key(key);
		// write int as base10

		static char buffer[20];
		int length = 0;
		if (value == 0) {
			buffer[length++] = '0';
		}
		while (value) {
			buffer[length++] = '0' + (value % 10);
			value /= 10;
		}
		while (length > 0) {
			data[data_length++] = buffer[--length];
		}
		data[data_length++] = 0;
	}

	void write_key_value_bool(const char* key, bool value) {
		write_key(key);
		const char* buffer = (value ? "Yes" : "No");
		for (int i = 0; buffer[i]; ++i) {
			data[data_length++] = buffer[i];
		}
		data[data_length++] = 0;
	}


};

#endif // __ISCSI_CONNECTION_PARAMTER__
