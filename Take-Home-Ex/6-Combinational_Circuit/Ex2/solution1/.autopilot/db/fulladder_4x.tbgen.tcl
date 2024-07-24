set moduleName fulladder_4x
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
set C_modelName {fulladder_4x}
set C_modelType { void 0 }
set C_modelArgList {
	{ a0 uint 1 regular  }
	{ a1 uint 1 regular  }
	{ a2 uint 1 regular  }
	{ a3 uint 1 regular  }
	{ b0 uint 1 regular  }
	{ b1 uint 1 regular  }
	{ b2 uint 1 regular  }
	{ b3 uint 1 regular  }
	{ s0 int 1 regular {pointer 1}  }
	{ s1 int 1 regular {pointer 1}  }
	{ s2 int 1 regular {pointer 1}  }
	{ s3 int 1 regular {pointer 1}  }
	{ cout int 1 regular {pointer 1}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "a0", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "a1", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "a2", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "a3", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "b0", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "b1", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "b2", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "b3", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "s0", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s1", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s2", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s3", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cout", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ a0 sc_in sc_lv 1 signal 0 } 
	{ a1 sc_in sc_lv 1 signal 1 } 
	{ a2 sc_in sc_lv 1 signal 2 } 
	{ a3 sc_in sc_lv 1 signal 3 } 
	{ b0 sc_in sc_lv 1 signal 4 } 
	{ b1 sc_in sc_lv 1 signal 5 } 
	{ b2 sc_in sc_lv 1 signal 6 } 
	{ b3 sc_in sc_lv 1 signal 7 } 
	{ s0 sc_out sc_lv 1 signal 8 } 
	{ s1 sc_out sc_lv 1 signal 9 } 
	{ s2 sc_out sc_lv 1 signal 10 } 
	{ s3 sc_out sc_lv 1 signal 11 } 
	{ cout sc_out sc_lv 1 signal 12 } 
}
set NewPortList {[ 
	{ "name": "a0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a0", "role": "default" }} , 
 	{ "name": "a1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a1", "role": "default" }} , 
 	{ "name": "a2", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a2", "role": "default" }} , 
 	{ "name": "a3", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a3", "role": "default" }} , 
 	{ "name": "b0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "b0", "role": "default" }} , 
 	{ "name": "b1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "b1", "role": "default" }} , 
 	{ "name": "b2", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "b2", "role": "default" }} , 
 	{ "name": "b3", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "b3", "role": "default" }} , 
 	{ "name": "s0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s0", "role": "default" }} , 
 	{ "name": "s1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s1", "role": "default" }} , 
 	{ "name": "s2", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s2", "role": "default" }} , 
 	{ "name": "s3", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s3", "role": "default" }} , 
 	{ "name": "cout", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cout", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "fulladder_4x",
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
			{"Name" : "a0", "Type" : "None", "Direction" : "I"},
			{"Name" : "a1", "Type" : "None", "Direction" : "I"},
			{"Name" : "a2", "Type" : "None", "Direction" : "I"},
			{"Name" : "a3", "Type" : "None", "Direction" : "I"},
			{"Name" : "b0", "Type" : "None", "Direction" : "I"},
			{"Name" : "b1", "Type" : "None", "Direction" : "I"},
			{"Name" : "b2", "Type" : "None", "Direction" : "I"},
			{"Name" : "b3", "Type" : "None", "Direction" : "I"},
			{"Name" : "s0", "Type" : "None", "Direction" : "O"},
			{"Name" : "s1", "Type" : "None", "Direction" : "O"},
			{"Name" : "s2", "Type" : "None", "Direction" : "O"},
			{"Name" : "s3", "Type" : "None", "Direction" : "O"},
			{"Name" : "cout", "Type" : "None", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	fulladder_4x {
		a0 {Type I LastRead 0 FirstWrite -1}
		a1 {Type I LastRead 0 FirstWrite -1}
		a2 {Type I LastRead 0 FirstWrite -1}
		a3 {Type I LastRead 0 FirstWrite -1}
		b0 {Type I LastRead 0 FirstWrite -1}
		b1 {Type I LastRead 0 FirstWrite -1}
		b2 {Type I LastRead 0 FirstWrite -1}
		b3 {Type I LastRead 0 FirstWrite -1}
		s0 {Type O LastRead -1 FirstWrite 0}
		s1 {Type O LastRead -1 FirstWrite 0}
		s2 {Type O LastRead -1 FirstWrite 0}
		s3 {Type O LastRead -1 FirstWrite 0}
		cout {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	a0 { ap_none {  { a0 in_data 0 1 } } }
	a1 { ap_none {  { a1 in_data 0 1 } } }
	a2 { ap_none {  { a2 in_data 0 1 } } }
	a3 { ap_none {  { a3 in_data 0 1 } } }
	b0 { ap_none {  { b0 in_data 0 1 } } }
	b1 { ap_none {  { b1 in_data 0 1 } } }
	b2 { ap_none {  { b2 in_data 0 1 } } }
	b3 { ap_none {  { b3 in_data 0 1 } } }
	s0 { ap_none {  { s0 out_data 1 1 } } }
	s1 { ap_none {  { s1 out_data 1 1 } } }
	s2 { ap_none {  { s2 out_data 1 1 } } }
	s3 { ap_none {  { s3 out_data 1 1 } } }
	cout { ap_none {  { cout out_data 1 1 } } }
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
