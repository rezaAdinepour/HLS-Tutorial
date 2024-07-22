#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("lower_leds", 8, hls_out, 0, "ap_none", "out_data", 1),
	Port_Property("upper_leds", 8, hls_out, 1, "ap_none", "out_data", 1),
	Port_Property("lower_sws", 8, hls_in, 2, "ap_none", "in_data", 1),
	Port_Property("upper_sws", 8, hls_in, 3, "ap_none", "in_data", 1),
};
const char* HLS_Design_Meta::dut_name = "sw_led_control";
