#ifndef __ISCSI_NOP_OUT_HPP__
#define __ISCSI_NOP_OUT_HPP__

#include "iscsi_request.hpp"

struct iscsi_nop_in_pdu : public iscsi_pdu_header {

};

void iscsi_nop_out(const iscsi_pdu_header& header, data_stream& tcp_in, data_stream& tcp_out);

#endif // __ISCSI_LOGIN_HPP__
