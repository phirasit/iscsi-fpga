#ifndef __ISCSI_TEXT__
#define __ISCSI_TEXT__

#include "iscsi_request.hpp"

void iscsi_text(const iscsi_pdu_header& header, data_stream& tcp_in, data_stream& tcp_out);

#endif
