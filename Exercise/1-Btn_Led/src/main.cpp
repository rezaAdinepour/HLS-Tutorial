/* solution 1 */
/*void btn_led(unsigned char btn, unsigned char *led)
{
#pragma HLS INTERFACE mode=ap_none port=btn;
#pragma HLS INTERFACE mode=ap_none port=led;
#pragma HLS INTERFACE mode=ap_ctrl_none port=return


	*led = btn;
}/*




/* solution 2 */
/*typedef unsigned char data_type;

void btn_led(data_type btn, data_type *led)
{
#pragma HLS INTERFACE mode=ap_none port=btn;
#pragma HLS INTERFACE mode=ap_none port=led;
#pragma HLS INTERFACE mode=ap_ctrl_none port=return


	*led = btn;
}*/



/* solution 3 */
/*void btn_led(unsigned char btn, unsigned char &led)
{
#pragma HLS INTERFACE mode=ap_none port=btn;
#pragma HLS INTERFACE mode=ap_none port=led;
#pragma HLS INTERFACE mode=ap_ctrl_none port=return

	led = btn;
}*/




/* solution 4 */
unsigned char btn_led(unsigned char btn)
{
#pragma HLS INTERFACE mode=ap_none port=btn;
#pragma HLS INTERFACE mode=ap_ctrl_none port=return


	return btn;
}
