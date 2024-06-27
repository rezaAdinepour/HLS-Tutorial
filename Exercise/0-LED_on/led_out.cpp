void led_on(unsigned char *o_led)
{
#pragma HLS INTERFACE mode=ap_none port=o_led
#pragma HLS INTERFACE mode=ap_ctrl_none port=return

	*o_led = 0xf0;
}
