void sw_led_control(short int sw, short int &led)
{
	#pragma HLS INTERFACE mode=ap_none port=led
	#pragma HLS INTERFACE mode=ap_none port=sw
	#pragma HLS INTERFACE mode=ap_ctrl_none port=return

	led = sw;
}
