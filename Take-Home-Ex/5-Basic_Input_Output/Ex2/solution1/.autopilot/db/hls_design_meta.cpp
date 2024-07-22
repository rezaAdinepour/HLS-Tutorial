#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("sw0", 1, hls_in, 0, "ap_none", "in_data", 1),
	Port_Property("sw1", 1, hls_in, 1, "ap_none", "in_data", 1),
	Port_Property("sw2", 1, hls_in, 2, "ap_none", "in_data", 1),
	Port_Property("sw3", 1, hls_in, 3, "ap_none", "in_data", 1),
	Port_Property("sw4", 1, hls_in, 4, "ap_none", "in_data", 1),
	Port_Property("led0", 1, hls_in, 5, "ap_none", "in_data", 1),
	Port_Property("led1", 1, hls_in, 6, "ap_none", "in_data", 1),
	Port_Property("led2", 1, hls_in, 7, "ap_none", "in_data", 1),
	Port_Property("led3", 1, hls_in, 8, "ap_none", "in_data", 1),
	Port_Property("led4", 1, hls_in, 9, "ap_none", "in_data", 1),
};
const char* HLS_Design_Meta::dut_name = "sw_led_control";
