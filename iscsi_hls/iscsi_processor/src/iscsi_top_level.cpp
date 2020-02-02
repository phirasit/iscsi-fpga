#include <hls_stream.h>
#include <ap_axi_sdata.h>

#include "data_type.hpp"

/** iscsi_interface
 *  top level of the iscsi processor
 *  @param[in]		tcp_in
 *  @param[out]		tcp_out
 */
typedef ap_axis<32,1,1,1> data_element;
typedef hls::stream<data_element> data_stream;

void iscsi_interface(
	// tcp information
	data_stream &tcp_in,
	data_stream &tcp_out
) {
#pragma HLS INTERFACE axis port=tcp_in
#pragma HLS INTERFACE axis port=tcp_out
#pragma HLS pipeline II=1 enable_flush

	// do a loop back function
	while (true)
	{
		tcp_out.write(tcp_in.read());
	}

	// connect tcp to PDU_buffer

	// connect PDU_buffer to PDU_processor

	// connect PDU_processor to sata
}
