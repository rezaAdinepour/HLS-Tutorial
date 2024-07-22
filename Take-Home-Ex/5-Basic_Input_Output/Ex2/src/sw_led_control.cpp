void sw_led_control( bool sw0,
					 bool sw1,
					 bool sw2,
					 bool sw3,
					 bool sw4,
					 bool &led0,
					 bool &led1,
					 bool &led2,
					 bool &led3,
					 bool &led4 )
{
	#pragma HLS INTERFACE mode=ap_ctrl_none port=return
	#pragma HLS INTERFACE mode=ap_none port=sw0
	#pragma HLS INTERFACE mode=ap_none port=sw1
	#pragma HLS INTERFACE mode=ap_none port=sw2
	#pragma HLS INTERFACE mode=ap_none port=sw3
	#pragma HLS INTERFACE mode=ap_none port=sw4

	#pragma HLS INTERFACE mode=ap_none port=led0
	#pragma HLS INTERFACE mode=ap_none port=led1
	#pragma HLS INTERFACE mode=ap_none port=led2
	#pragma HLS INTERFACE mode=ap_none port=led3



	sw0 = led0;
	sw1 = led1;
	sw2 = led2;
	sw3 = led3;
	sw4 = led4;
}
