void basic_output(unsigned char *o)
{
	#pragma HLS INTERFACE ap_none port=o
	/* or we can write: #pragma HLS INTERFACE mode=ap_none port=o */

	#pragma HLS INTERFACE ap_ctrl_none port=return
	/* or we can write: #pragma HLS INTERFACE mode=ap_ctrl_none port=return */

	*o = 0xf0;
}
