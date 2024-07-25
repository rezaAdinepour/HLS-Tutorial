#include "trafic_light_controller.h"

// Solution 1: with pointer structure
void rule1(bool l_sensor, bool r_sensor, bool u_sensor, bool d_sensor, bool *rule1_out)
{
	*rule1_out = l_sensor && r_sensor;
}

void rule2(bool l_sensor, bool r_sensor, bool u_sensor, bool d_sensor, bool *rule2_out)
{
	*rule2_out = ( (l_sensor ^ r_sensor) && !(u_sensor && d_sensor) );
}

void rule3(bool l_sensor, bool r_sensor, bool u_sensor, bool d_sensor, bool *rule3_out)
{
	*rule3_out = ( !(r_sensor && l_sensor) && (u_sensor && d_sensor) );
}

void rule4(bool l_sensor, bool r_sensor, bool u_sensor, bool d_sensor, bool *rule4_out)
{
	*rule4_out = ( !(r_sensor || l_sensor) && (u_sensor ^ d_sensor) );
}

void rule5(bool l_sensor, bool r_sensor, bool u_sensor, bool d_sensor, bool *rule5_out)
{
	*rule5_out = ( !(r_sensor || l_sensor) ^ !(u_sensor || d_sensor) );
}


void trafic_light_controller(bool l_sensor, bool r_sensor, bool u_sensor, bool d_sensor, bool *ew, bool *ns)
{

	#pragma HLS INTERFACE mode=ap_ctrl_none port=return
	#pragma HLS INTERFACE mode=ap_none port=l_sensor
	#pragma HLS INTERFACE mode=ap_none port=r_sensor
	#pragma HLS INTERFACE mode=ap_none port=u_sensor
	#pragma HLS INTERFACE mode=ap_none port=d_sensor
	#pragma HLS INTERFACE mode=ap_none port=ew
	#pragma HLS INTERFACE mode=ap_none port=ns


	bool temp1, temp2, temp3, temp4, temp5;

	rule1(l_sensor, r_sensor, u_sensor, d_sensor, &temp1);
	rule2(l_sensor, r_sensor, u_sensor, d_sensor, &temp2);
	rule3(l_sensor, r_sensor, u_sensor, d_sensor, &temp3);
	rule4(l_sensor, r_sensor, u_sensor, d_sensor, &temp4);
	rule5(l_sensor, r_sensor, u_sensor, d_sensor, &temp5);

	*ew = temp1 || temp2 || temp3;
	*ns = temp4 || temp5;
}




// Solution 2: with call by reference structure
/*bool rule1(bool l_sensor, bool r_sensor, bool u_sensor, bool d_sensor)
{
	return l_sensor && r_sensor;
}

bool rule2(bool l_sensor, bool r_sensor, bool u_sensor, bool d_sensor)
{
	return ( (l_sensor ^ r_sensor) && !(u_sensor && d_sensor) );
}

bool rule3(bool l_sensor, bool r_sensor, bool u_sensor, bool d_sensor)
{
	return ( !(r_sensor && l_sensor) && (u_sensor && d_sensor) );
}

bool rule4(bool l_sensor, bool r_sensor, bool u_sensor, bool d_sensor)
{
	return ( !(r_sensor || l_sensor) && (u_sensor ^ d_sensor) );
}

bool rule5(bool l_sensor, bool r_sensor, bool u_sensor, bool d_sensor)
{
	return ( !(r_sensor || l_sensor) ^ !(u_sensor || d_sensor) );
}



void trafic_light_controller(bool l_sensor, bool r_sensor, bool u_sensor, bool d_sensor, bool *ew, bool *ns)
{

	#pragma HLS INTERFACE mode=ap_ctrl_none port=return
	#pragma HLS INTERFACE mode=ap_none port=l_sensor
	#pragma HLS INTERFACE mode=ap_none port=r_sensor
	#pragma HLS INTERFACE mode=ap_none port=u_sensor
	#pragma HLS INTERFACE mode=ap_none port=d_sensor
	#pragma HLS INTERFACE mode=ap_none port=ew
	#pragma HLS INTERFACE mode=ap_none port=ns


	bool temp1, temp2, temp3, temp4, temp5;

	temp1 = rule1(l_sensor, r_sensor, u_sensor, d_sensor);
	temp2 = rule2(l_sensor, r_sensor, u_sensor, d_sensor);
	temp3 = rule5(l_sensor, r_sensor, u_sensor, d_sensor);

	temp4 = rule3(l_sensor, r_sensor, u_sensor, d_sensor);
	temp5 = rule4(l_sensor, r_sensor, u_sensor, d_sensor);

	*ew = temp1 || temp2 || temp3;
	*ns = temp4 || temp5;
}*/
