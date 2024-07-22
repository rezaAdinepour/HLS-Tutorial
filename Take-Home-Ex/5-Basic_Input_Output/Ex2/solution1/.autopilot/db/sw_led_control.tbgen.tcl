set moduleName sw_led_control
set isTopModule 1
set isCombinational 1
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {sw_led_control}
set C_modelType { void 0 }
set C_modelArgList {
	{ sw0 uint 1 unused  }
	{ sw1 uint 1 unused  }
	{ sw2 uint 1 unused  }
	{ sw3 uint 1 unused  }
	{ sw4 uint 1 unused  }
	{ led0 int 1 unused {pointer 0}  }
	{ led1 int 1 unused {pointer 0}  }
	{ led2 int 1 unused {pointer 0}  }
	{ led3 int 1 unused {pointer 0}  }
	{ led4 int 1 unused {pointer 0}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "sw0", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "sw1", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "sw2", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "sw3", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "sw4", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "led0", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "led1", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "led2", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "led3", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "led4", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 10
set portList { 
	{ sw0 sc_in sc_lv 1 signal 0 } 
	{ sw1 sc_in sc_lv 1 signal 1 } 
	{ sw2 sc_in sc_lv 1 signal 2 } 
	{ sw3 sc_in sc_lv 1 signal 3 } 
	{ sw4 sc_in sc_lv 1 signal 4 } 
	{ led0 sc_in sc_lv 1 signal 5 } 
	{ led1 sc_in sc_lv 1 signal 6 } 
	{ led2 sc_in sc_lv 1 signal 7 } 
	{ led3 sc_in sc_lv 1 signal 8 } 
	{ led4 sc_in sc_lv 1 signal 9 } 
}
set NewPortList {[ 
	{ "name": "sw0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sw0", "role": "default" }} , 
 	{ "name": "sw1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sw1", "role": "default" }} , 
 	{ "name": "sw2", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sw2", "role": "default" }} , 
 	{ "name": "sw3", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sw3", "role": "default" }} , 
 	{ "name": "sw4", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sw4", "role": "default" }} , 
 	{ "name": "led0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "led0", "role": "default" }} , 
 	{ "name": "led1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "led1", "role": "default" }} , 
 	{ "name": "led2", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "led2", "role": "default" }} , 
 	{ "name": "led3", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "led3", "role": "default" }} , 
 	{ "name": "led4", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "led4", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "sw_led_control",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sw0", "Type" : "None", "Direction" : "I"},
			{"Name" : "sw1", "Type" : "None", "Direction" : "I"},
			{"Name" : "sw2", "Type" : "None", "Direction" : "I"},
			{"Name" : "sw3", "Type" : "None", "Direction" : "I"},
			{"Name" : "sw4", "Type" : "None", "Direction" : "I"},
			{"Name" : "led0", "Type" : "None", "Direction" : "I"},
			{"Name" : "led1", "Type" : "None", "Direction" : "I"},
			{"Name" : "led2", "Type" : "None", "Direction" : "I"},
			{"Name" : "led3", "Type" : "None", "Direction" : "I"},
			{"Name" : "led4", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	sw_led_control {
		sw0 {Type I LastRead -1 FirstWrite -1}
		sw1 {Type I LastRead -1 FirstWrite -1}
		sw2 {Type I LastRead -1 FirstWrite -1}
		sw3 {Type I LastRead -1 FirstWrite -1}
		sw4 {Type I LastRead -1 FirstWrite -1}
		led0 {Type I LastRead -1 FirstWrite -1}
		led1 {Type I LastRead -1 FirstWrite -1}
		led2 {Type I LastRead -1 FirstWrite -1}
		led3 {Type I LastRead -1 FirstWrite -1}
		led4 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	sw0 { ap_none {  { sw0 in_data 0 1 } } }
	sw1 { ap_none {  { sw1 in_data 0 1 } } }
	sw2 { ap_none {  { sw2 in_data 0 1 } } }
	sw3 { ap_none {  { sw3 in_data 0 1 } } }
	sw4 { ap_none {  { sw4 in_data 0 1 } } }
	led0 { ap_none {  { led0 in_data 0 1 } } }
	led1 { ap_none {  { led1 in_data 0 1 } } }
	led2 { ap_none {  { led2 in_data 0 1 } } }
	led3 { ap_none {  { led3 in_data 0 1 } } }
	led4 { ap_none {  { led4 in_data 0 1 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
