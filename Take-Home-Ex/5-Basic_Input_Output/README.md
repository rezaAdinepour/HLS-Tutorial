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

```
