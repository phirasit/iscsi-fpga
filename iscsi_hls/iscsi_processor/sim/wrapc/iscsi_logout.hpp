#ifndef __ISCSI_LOGOUT_HPP__
#define __ISCSI_LOGOUT_HPP__

#include "iscsi_request.hpp"

void iscsi_logout(const iscsi_pdu_header& header, data_stream& tcp_in, data_stream& tcp_out);

#endif // __ISCSI_LOGOUT_HPP__
