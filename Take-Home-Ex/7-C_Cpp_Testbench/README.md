# Take Home Exercise - 7.C/C++ Testbench

### 1) Write an HLS testbench for the traffic-light controller expel explained in the previous section.
    
    a. Perform the C-simulation and test the circuit functionality.
    
    b. Perform the Co-Simulation and check the RTL correctness.

`trafic_ligth_controller.c` is:
```c
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

```

and testbench is:
```c
#include <iostream>
#include "tb_trafic_light_controller.h"


using namespace std;




void traffic_light_sotfware(
		bool  l_sensor,
		bool  r_sensor,
		bool  u_sensor,
		bool  d_sensor,
		bool *ns_light,
		bool *ew_light	)
{

	//rule 1
	 if (r_sensor == 1 && l_sensor==1) //both lanes R and L are occupied
	 {
		 *ew_light = 1;
		 *ns_light = 0;
	 }
	 //rule 2
	 if (((r_sensor == 1 || l_sensor==0) || (r_sensor == 0 || l_sensor== 1))  //one of lanes R and L is occupied
			 && (u_sensor == 0 && d_sensor == 0)  //both lanes U and D are not occupied
	    )
	 {
		 *ew_light = 1;
		 *ns_light = 0;
	 }
	 // rule 3
	 if ((u_sensor == 1 && d_sensor == 1) //both lanes U and D are occupied
			 && !(r_sensor == 1 && l_sensor==1) //cars are not detected on both lanes L and R
	    )
	 {
		 *ew_light = 0;
		 *ns_light = 1;
	 }
	 //rule 4
	 if (((u_sensor == 1 || d_sensor == 0) || (u_sensor == 0 || d_sensor == 1)) //one of the lanes U and D is occupied
			&& (r_sensor == 0 && l_sensor== 0) //  both lanes L and R are vacant
		 )
	 {
		 *ew_light = 0;
		 *ns_light = 1;
	 }
	 //rule 5
	 if ((r_sensor == 0 || l_sensor==0) && (u_sensor == 0 && d_sensor == 0)) //all lanes are vacant
	 {
		 *ew_light = 1;
		 *ns_light = 0;
	 }

}

int main()
{

	int status = 0;

	bool  l_sensor;
	bool  r_sensor;
	bool  u_sensor;
	bool  d_sensor;

	bool  ns_light_hw;
	bool  ew_light_hw;

	bool  ns_light_sw;
	bool  ew_light_sw;


	for (int l = 0; (l < 2) && (status == 0); l++)
	{
		for (int r = 0; (r < 2) && (status == 0); r++)
		{
			for (int u = 0; (u < 2) && (status == 0); u++)
			{
				for (int d = 0; (d < 2) && (status == 0); d++)
				{

					l_sensor = l;
					r_sensor = r;
					u_sensor = u;
					d_sensor = d;


					trafic_light_controller(l_sensor, r_sensor, u_sensor, d_sensor, &ew_light_hw, &ns_light_hw);
					traffic_light_sotfware(l_sensor, r_sensor, u_sensor, d_sensor, &ns_light_sw, &ew_light_sw);


					if ((ns_light_hw != ns_light_sw) || (ew_light_hw != ew_light_sw))
					{

						status = -1;
						std::cout << "Error at "
								  << " l_sensor = " << l_sensor
								  << " r_sensor = " << r_sensor
								  << " u_sensor = " << u_sensor
								  << " d_sensor = " << d_sensor
								  << " ns_light_hw = " << ns_light_hw << " ns_light_sw = " << ns_light_sw
								  << " ew_light_hw = " << ew_light_hw << " ew_light_sw = " << ew_light_sw
								  << std::endl;
					}
				}
			}
		}
	}


	if (status == 0)
	{
		std::cout << "Test Passed" << std::endl;
	}
	else
	{
		std::cout << "Test Failed" << std::endl;
	}


	return status;
}


```

the output is:
` 
Error at  l_sensor = 0 r_sensor = 0 u_sensor = 0 d_sensor = 0 ns_light_hw = 0 ns_light_sw = 0 ew_light_hw = 0 ew_light_sw = 1

Test Failed
`




### 2) Write a testbench for the 4-bit adder explained in the exercises of the previous section.


### 3) Write a test bench for the comparator explained in the exercises of the previous section.



