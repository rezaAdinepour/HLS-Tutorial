void comprator( bool a0,
				bool a1,
				bool a2,
				bool a3,
				bool b0,
				bool b1,
				bool b2,
				bool b3,
				bool &M,
				bool &N,
				bool &P )
{
	#pragma HLS INTERFACE mode=ap_ctrl_none port=return
	#pragma HLS INTERFACE mode=ap_none port=a0
	#pragma HLS INTERFACE mode=ap_none port=a1
	#pragma HLS INTERFACE mode=ap_none port=a2
	#pragma HLS INTERFACE mode=ap_none port=a3
	#pragma HLS INTERFACE mode=ap_none port=b0
	#pragma HLS INTERFACE mode=ap_none port=b1
	#pragma HLS INTERFACE mode=ap_none port=b2
	#pragma HLS INTERFACE mode=ap_none port=b3
	#pragma HLS INTERFACE mode=ap_none port=M
	#pragma HLS INTERFACE mode=ap_none port=N
	#pragma HLS INTERFACE mode=ap_none port=P


	if ( (a3 == b3) && (a2 == b2) && (a1 == b1) && (a0 == b0) )
	{
		M = 1;
		N = 0;
		P = 0;
	}
	else if( (a3 > b3) || (a2 > b2) || (a1 > b1) || (a0 > b0) )
	{
		M = 0;
		N = 1;
		P = 0;
	}
	else
	{
		M = 0;
		N = 0;
		P = 1;
	}
}
