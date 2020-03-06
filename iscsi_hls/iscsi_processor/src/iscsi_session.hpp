#ifndef __ISCSI_SESSION_HPP__
#define __ISCSI_SESSION_HPP__

struct iscsi_session {
	// singleton
	static iscsi_session& get_instance() {
		static iscsi_session instance = iscsi_session();
		return instance;
	}

	bool initialized;

	int tsih;
	int exp_cmd_sn;
	int command_numbering_start;
	int full_feature_phase;
	int discovery;
	int error_recovery_level;
	int transfer_tag;

	bool is_initialized() const { return initialized; }
	int is_full_feature_phase() const { return full_feature_phase; }
	int is_discovery() const { return discovery; }

	int get_tsih() const { return tsih; }
};

#endif // __ISCSI_SESSION_HPP__
