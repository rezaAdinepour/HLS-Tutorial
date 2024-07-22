void sw_led_control( char &lower_leds,
                     char &upper_leds,
                     char lower_sws,
                     char upper_sws )
{

	#pragma HLS INTERFACE mode=ap_ctrl_none port=return
	#pragma HLS INTERFACE mode=ap_none port=lower_leds
	#pragma HLS INTERFACE mode=ap_none port=upper_leds
	#pragma HLS INTERFACE mode=ap_none port=lower_leds
	#pragma HLS INTERFACE mode=ap_none port=lower_sws


	// lower_sws = lower_leds;
	// upper_sws = upper_leds;
	// or

	lower_leds = lower_sws;
	upper_leds = upper_sws;


}
