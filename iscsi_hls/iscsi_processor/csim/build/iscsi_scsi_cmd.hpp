#ifndef __ISCSI_SCSI_CMD_HPP__
#define __ISCSI_SCSI_CMD_HPP__

#include "iscsi_request.hpp"

void iscsi_scsi_cmd(const iscsi_pdu_header& header, data_stream& tcp_in, data_stream& tcp_out);

#endif // __ISCSI_SCSI_CMD_HPP__
