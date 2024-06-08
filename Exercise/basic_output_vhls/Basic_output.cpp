void led_out(unsigned int *o)
{
#pragma HLS INTERFACE ap_none port=o
#pragma HLS INTERFACE ap_ctrl_none port=return

	*o = 0xff00;
}
