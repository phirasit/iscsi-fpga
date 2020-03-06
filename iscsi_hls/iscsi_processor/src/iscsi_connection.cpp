#include "iscsi_connection.hpp"

void iscsi_connection::set_pdu_response_header(iscsi_pdu_header* pdu) {
	pdu->set_4byte(24, this->stat_sn);
	pdu->set_4byte(28, this->exp_cmd_sn);
	pdu->set_4byte(32, this->max_cmd_sn);
}
