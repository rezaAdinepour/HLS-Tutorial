#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("a0", 1, hls_in, 0, "ap_none", "in_data", 1),
	Port_Property("a1", 1, hls_in, 1, "ap_none", "in_data", 1),
	Port_Property("a2", 1, hls_in, 2, "ap_none", "in_data", 1),
	Port_Property("a3", 1, hls_in, 3, "ap_none", "in_data", 1),
	Port_Property("b0", 1, hls_in, 4, "ap_none", "in_data", 1),
	Port_Property("b1", 1, hls_in, 5, "ap_none", "in_data", 1),
	Port_Property("b2", 1, hls_in, 6, "ap_none", "in_data", 1),
	Port_Property("b3", 1, hls_in, 7, "ap_none", "in_data", 1),
	Port_Property("s0", 1, hls_out, 8, "ap_none", "out_data", 1),
	Port_Property("s1", 1, hls_out, 9, "ap_none", "out_data", 1),
	Port_Property("s2", 1, hls_out, 10, "ap_none", "out_data", 1),
	Port_Property("s3", 1, hls_out, 11, "ap_none", "out_data", 1),
	Port_Property("cout", 1, hls_out, 12, "ap_none", "out_data", 1),
};
const char* HLS_Design_Meta::dut_name = "fulladder_4x";
