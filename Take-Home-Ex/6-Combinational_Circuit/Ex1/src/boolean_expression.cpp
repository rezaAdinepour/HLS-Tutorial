void boolean_expression( bool a,
						 bool b,
						 bool c,
						 bool e,
						 bool g,
						 bool f,
						 bool &h )


{
	#pragma HLS INTERFACE mode=ap_ctrl_none port=return
	#pragma HLS INTERFACE mode=ap_none port=a
	#pragma HLS INTERFACE mode=ap_none port=b
	#pragma HLS INTERFACE mode=ap_none port=c
	#pragma HLS INTERFACE mode=ap_none port=e
	#pragma HLS INTERFACE mode=ap_none port=g
	#pragma HLS INTERFACE mode=ap_none port=f


	h = ( a | (b & c) ^ (e || (f & g) ) );
}
