#ifndef __DATA_TYPE_PRIMITIVES__
#define __DATA_TYPE_PRIMITIVES__

#include <ap_int.h>

typedef ap_uint<8> byte;
typedef ap_uint<32> byte4;

#define HLS_STREAM_WAIT_FOR_DATA_IN_BLOCKING_READ

#include <hls_stream.h>
#include <ap_axi_sdata.h>

//typedef ap_axis<32, 1, 1, 1> data_stream_element;
typedef ap_uint<32> data_stream_element;

class data_stream : public hls::stream<data_stream_element> {

public:
	void write_byte_array(const unsigned char* data, int length) {
		data_stream_element data_elem;
		for (int i = 0; i < length; i += 4) {
			data_elem( 7,  0) =                 data[i  ];
			data_elem(15,  8) = (i+1 < length ? data[i+1] : 0);
			data_elem(23, 16) = (i+2 < length ? data[i+2] : 0);
			data_elem(31, 24) = (i+3 < length ? data[i+3] : 0);
			this->write(data_elem);
		}
	}

	void read_byte_array(unsigned char* data, int length) {
//		std::cout << "read length = " << length << std::endl;
		data_stream_element data_elem;
		for (int i = 0; i < length; i += 4) {
			this->read(data_elem);
			data[i  ] = data_elem( 7,  0);
			data[i+1] = data_elem(15,  8);
			data[i+2] = data_elem(23, 16);
			data[i+3] = data_elem(31, 24);
		}
	}
};


#endif // __DATA_TYPE_PRIMITIVES__
