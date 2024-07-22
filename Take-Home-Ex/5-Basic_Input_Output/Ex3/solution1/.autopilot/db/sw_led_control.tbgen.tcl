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
	{ lower_leds int 8 regular {pointer 1}  }
	{ upper_leds int 8 regular {pointer 1}  }
	{ lower_sws int 8 regular  }
	{ upper_sws int 8 regular  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "lower_leds", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "upper_leds", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "lower_sws", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "upper_sws", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 4
set portList { 
	{ lower_leds sc_out sc_lv 8 signal 0 } 
	{ upper_leds sc_out sc_lv 8 signal 1 } 
	{ lower_sws sc_in sc_lv 8 signal 2 } 
	{ upper_sws sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "lower_leds", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "lower_leds", "role": "default" }} , 
 	{ "name": "upper_leds", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "upper_leds", "role": "default" }} , 
 	{ "name": "lower_sws", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "lower_sws", "role": "default" }} , 
 	{ "name": "upper_sws", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "upper_sws", "role": "default" }}  ]}

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
			{"Name" : "lower_leds", "Type" : "None", "Direction" : "O"},
			{"Name" : "upper_leds", "Type" : "None", "Direction" : "O"},
			{"Name" : "lower_sws", "Type" : "None", "Direction" : "I"},
			{"Name" : "upper_sws", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	sw_led_control {
		lower_leds {Type O LastRead -1 FirstWrite 0}
		upper_leds {Type O LastRead -1 FirstWrite 0}
		lower_sws {Type I LastRead 0 FirstWrite -1}
		upper_sws {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	lower_leds { ap_none {  { lower_leds out_data 1 8 } } }
	upper_leds { ap_none {  { upper_leds out_data 1 8 } } }
	lower_sws { ap_none {  { lower_sws in_data 0 8 } } }
	upper_sws { ap_none {  { upper_sws in_data 0 8 } } }
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
