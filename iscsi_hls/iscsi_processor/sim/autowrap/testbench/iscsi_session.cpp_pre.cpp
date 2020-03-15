# 1 "/home/phirasit/project/san-adapter/iscsi_hls/iscsi_processor/src/iscsi_session.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/home/phirasit/project/san-adapter/iscsi_hls/iscsi_processor/src/iscsi_session.cpp"
# 1 "/home/phirasit/project/san-adapter/iscsi_hls/iscsi_processor/src/iscsi_session.hpp" 1



struct iscsi_session {

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
# 1 "/home/phirasit/project/san-adapter/iscsi_hls/iscsi_processor/src/iscsi_session.cpp" 2
