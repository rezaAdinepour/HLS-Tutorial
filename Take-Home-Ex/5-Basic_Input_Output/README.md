# Take Home Exercise - 5.Basic Input Output


### 1. A simple hardware circuit uses 16 switched on the Basys3 board to control the 16 LEDs.

    a) Describe the hardware in Vivado-HLS and generate the RTL-IP.

    b) Import the design into the Xilinx Vivado suite and generate the FPAG bitstream.

    c) Program the Basys3 board and check the output.

### Solution:
```c
void sw_led_control(short int sw, short int &led)
{
	#pragma HLS INTERFACE mode=ap_none port=led
	#pragma HLS INTERFACE mode=ap_none port=sw
	#pragma HLS INTERFACE mode=ap_ctrl_none port=return

	led = sw;
}

```

### 2. A simple hardware circuit connects five lower LEDs (i.e., LD0 to LD4) on the Basys3 board to the five lower slide switches.

    a) Describe the hardware in Vivado-HLS and generate the RTL-IP.

    b) Import the design into the Xilinx Vivado suite and generate the FPAG bitstream.

    c) Program the Basys3 board and check the output.


### Solution:
```c
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

```
