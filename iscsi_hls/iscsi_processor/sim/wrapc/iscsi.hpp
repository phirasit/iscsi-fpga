#ifndef __ISCSI_HPP__
#define __ISCSI_HPP__

#include "data_type.hpp"

#include "iscsi_connection.hpp"
#include "iscsi_session.hpp"

// import all requests
#include "iscsi_requests.hpp"

iscsi_pdu_header iscsi_pdu_header_read(data_stream& inp_stream);

#endif // __ISCSI_HPP__
