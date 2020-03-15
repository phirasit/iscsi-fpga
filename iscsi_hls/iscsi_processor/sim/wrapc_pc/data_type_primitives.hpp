#ifndef __DATA_TYPE_PRIMITIVES__
#define __DATA_TYPE_PRIMITIVES__

#include <ap_int.h>

typedef ap_uint<8> byte;
typedef ap_uint<32> byte4;

#define HLS_STREAM_WAIT_FOR_DATA_IN_BLOCKING_READ

#include <hls_stream.h>
#include <ap_axi_sdata.h>

//typedef ap_axis<32, 0, 0, 0> data_stream_element;
typedef ap_int<32> data_stream_element;

class data_stream : public hls::stream<data_stream_element> {

public:
	void write_byte_array(const char* data, int length) {
		for (int i = 0; i < length; i += 4) {
			data_stream_element data_elem;
			#pragma HLS DATA_PACK variable=data_elem
			int elem_data = ((int) data[i] << 24)
					| ((int) data[i+1] << 16)
					| ((int) data[i+2] <<  8)
					| ((int) data[i+3]      );
			data_elem = elem_data;
			this->write(data_elem);
		}
	}

	void read_byte_array(char* data, int length) {
		for (int i = 0; i < length; i += 4) {
			data_stream_element data_elem;
			#pragma HLS DATA_PACK variable=data_elem
			this->read(data_elem);
			data[i  ] = data_elem( 0,  7);
			data[i+1] = data_elem( 8, 15);
			data[i+2] = data_elem(16, 23);
			data[i+3] = data_elem(24, 31);
		}
	}
};


#endif // __DATA_TYPE_PRIMITIVES__
