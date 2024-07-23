# Take Home Exercise - 6.Combinational Circuit


### 1. Describe the following logical expression in Vivado-HLS

```c
f = (a OR (b AND c)) XOR (e OR (f AND g))
```
    a) Synthesise the code and make sure that the resulted hardware is combinational 

    b) By looking at the synthesis report find the approximation of the design propagation delay

### Solution:

```c
void boolean_expression( bool a,
			 bool b,
			 bool c, 
			 bool e,
			 bool g,
			 bool &f )
						 

{
	#pragma HLS INTERFACE mode=ap_ctrl_none port=return
	#pragma HLS INTERFACE mode=ap_none port=a
	#pragma HLS INTERFACE mode=ap_none port=b
	#pragma HLS INTERFACE mode=ap_none port=c
	#pragma HLS INTERFACE mode=ap_none port=e
	#pragma HLS INTERFACE mode=ap_none port=g
	#pragma HLS INTERFACE mode=ap_none port=f
	
	
	f = ( a || (b && c) ^ (e || (f && g) ) )
}

```






### 2. Describe an 8-bit binary adder in Vivado-HLS using the full-adder circuit proposed in the fifth lecture of this section.

    a) Synthesise the code into a combinational circuit and find the design propagation delay.

    b) What is the resource utilisation of LUTs?

    c) Using the Vivado toolset generate the FPGA bitstream and check the results on the Basys3 board.

### Solution:

```C
/* 8-bit full adder */


void boolean_full_adder( bool cin,
			 bool a0,
			 bool a1,
			 bool a2,
			 bool a3,
			 bool b0,
			 bool b1,
			 bool b2,
			 bool b3,
			 bool &s0,
			 bool &s1,
			 bool &s2,
			 bool &s3,
			 bool &cout )
{
	#pragma HLS INTERFACE mode=ap_ctrl_none port=return
	#pragma HLS INTERFACE mode=ap_none port=cin
	#pragma HLS INTERFACE mode=ap_none port=a0
	#pragma HLS INTERFACE mode=ap_none port=a1
	#pragma HLS INTERFACE mode=ap_none port=a2
	#pragma HLS INTERFACE mode=ap_none port=a3
	#pragma HLS INTERFACE mode=ap_none port=b0
	#pragma HLS INTERFACE mode=ap_none port=b1
	#pragma HLS INTERFACE mode=ap_none port=b2
	#pragma HLS INTERFACE mode=ap_none port=b3

	bool cout_temp1;
	bool cout_temp2;
	bool cout_temp3;
	
	*/stage 1/*
	s0 = (a0 ^ b0) ^ cin;
	cout_temp1 = (a0 && b0) || ( (a0 ^ b0) && cin );
	
	*/stage 2/*
	s1 = (a1 ^ b1) ^ cout_temcout_temp1;
	cout_temp2 = (a1 && b1) || ( (a1 ^ b1) && cout_temp1 );
	
	*/stage 3/*
	s2 = (a2 ^ b2) ^ cout_temcout_temp2;
	cout_temp3 = (a2 && b2) || ( (a2 ^ b2) && cout_temp2 );
	
	*/stage 4/*
	s3 = (a3 ^ b3) ^ cout_temcout_temp3;
	cout = (a3 && b3) || ( (a3 ^ b3) && cout_temp3 );
}
						 
```






### 3. The following figure shows a 4-bit comparator that takes two 4-bit binary numbers`a3a2a1a0` and `b3b2b1b0` and determines whether they are equal and, if not, which one is larger. There are three outputs, defined as follows:

- `M = 1` only if the two input numbers are equal.

- `N = 1` only if

`a3a2a1a0` is greater than `b3b2b1b0`.
`P = 1` only if `b3b2b1b0` is greater than `a3a2a1a0`.

<img src="img_ex3.png" alt="img_ex3" style="width:350px;"/>

### Solution:
```
write code here
```



