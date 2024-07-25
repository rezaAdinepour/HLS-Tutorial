set moduleName trafic_light_controller
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
set C_modelName {trafic_light_controller}
set C_modelType { void 0 }
set C_modelArgList {
	{ l_sensor uint 1 regular  }
	{ r_sensor uint 1 regular  }
	{ u_sensor uint 1 regular  }
	{ d_sensor uint 1 regular  }
	{ ew int 1 regular {pointer 1}  }
	{ ns int 1 regular {pointer 1}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "l_sensor", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "r_sensor", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "u_sensor", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "d_sensor", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "ew", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ns", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 6
set portList { 
	{ l_sensor sc_in sc_lv 1 signal 0 } 
	{ r_sensor sc_in sc_lv 1 signal 1 } 
	{ u_sensor sc_in sc_lv 1 signal 2 } 
	{ d_sensor sc_in sc_lv 1 signal 3 } 
	{ ew sc_out sc_lv 1 signal 4 } 
	{ ns sc_out sc_lv 1 signal 5 } 
}
set NewPortList {[ 
	{ "name": "l_sensor", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "l_sensor", "role": "default" }} , 
 	{ "name": "r_sensor", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "r_sensor", "role": "default" }} , 
 	{ "name": "u_sensor", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_sensor", "role": "default" }} , 
 	{ "name": "d_sensor", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "d_sensor", "role": "default" }} , 
 	{ "name": "ew", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ew", "role": "default" }} , 
 	{ "name": "ns", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ns", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "trafic_light_controller",
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
			{"Name" : "l_sensor", "Type" : "None", "Direction" : "I"},
			{"Name" : "r_sensor", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_sensor", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_sensor", "Type" : "None", "Direction" : "I"},
			{"Name" : "ew", "Type" : "None", "Direction" : "O"},
			{"Name" : "ns", "Type" : "None", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	trafic_light_controller {
		l_sensor {Type I LastRead 0 FirstWrite -1}
		r_sensor {Type I LastRead 0 FirstWrite -1}
		u_sensor {Type I LastRead 0 FirstWrite -1}
		d_sensor {Type I LastRead 0 FirstWrite -1}
		ew {Type O LastRead -1 FirstWrite 0}
		ns {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	l_sensor { ap_none {  { l_sensor in_data 0 1 } } }
	r_sensor { ap_none {  { r_sensor in_data 0 1 } } }
	u_sensor { ap_none {  { u_sensor in_data 0 1 } } }
	d_sensor { ap_none {  { d_sensor in_data 0 1 } } }
	ew { ap_none {  { ew out_data 1 1 } } }
	ns { ap_none {  { ns out_data 1 1 } } }
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
