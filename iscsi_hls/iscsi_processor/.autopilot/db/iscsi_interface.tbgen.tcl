set moduleName iscsi_interface
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {iscsi_interface}
set C_modelType { void 0 }
set C_modelArgList {
	{ tcp_in_V_data_V int 32 regular {axi_s 0 volatile  { tcp_in Data } }  }
	{ tcp_in_V_keep_V int 4 regular {axi_s 0 volatile  { tcp_in Keep } }  }
	{ tcp_in_V_strb_V int 4 regular {axi_s 0 volatile  { tcp_in Strb } }  }
	{ tcp_in_V_user_V int 1 regular {axi_s 0 volatile  { tcp_in User } }  }
	{ tcp_in_V_last_V int 1 regular {axi_s 0 volatile  { tcp_in Last } }  }
	{ tcp_in_V_id_V int 1 regular {axi_s 0 volatile  { tcp_in ID } }  }
	{ tcp_in_V_dest_V int 1 regular {axi_s 0 volatile  { tcp_in Dest } }  }
	{ tcp_out_V_data_V int 32 regular {axi_s 1 volatile  { tcp_out Data } }  }
	{ tcp_out_V_keep_V int 4 regular {axi_s 1 volatile  { tcp_out Keep } }  }
	{ tcp_out_V_strb_V int 4 regular {axi_s 1 volatile  { tcp_out Strb } }  }
	{ tcp_out_V_user_V int 1 regular {axi_s 1 volatile  { tcp_out User } }  }
	{ tcp_out_V_last_V int 1 regular {axi_s 1 volatile  { tcp_out Last } }  }
	{ tcp_out_V_id_V int 1 regular {axi_s 1 volatile  { tcp_out ID } }  }
	{ tcp_out_V_dest_V int 1 regular {axi_s 1 volatile  { tcp_out Dest } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "tcp_in_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "tcp_in.V.data.V","cData": "int32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "tcp_in_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "tcp_in.V.keep.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "tcp_in_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "tcp_in.V.strb.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "tcp_in_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "tcp_in.V.user.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "tcp_in_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "tcp_in.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "tcp_in_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "tcp_in.V.id.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "tcp_in_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "tcp_in.V.dest.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "tcp_out_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "tcp_out.V.data.V","cData": "int32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "tcp_out_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "tcp_out.V.keep.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "tcp_out_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "tcp_out.V.strb.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "tcp_out_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "tcp_out.V.user.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "tcp_out_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "tcp_out.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "tcp_out_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "tcp_out.V.id.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "tcp_out_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "tcp_out.V.dest.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 24
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ tcp_in_TDATA sc_in sc_lv 32 signal 0 } 
	{ tcp_in_TVALID sc_in sc_logic 1 invld 6 } 
	{ tcp_in_TREADY sc_out sc_logic 1 inacc 6 } 
	{ tcp_in_TKEEP sc_in sc_lv 4 signal 1 } 
	{ tcp_in_TSTRB sc_in sc_lv 4 signal 2 } 
	{ tcp_in_TUSER sc_in sc_lv 1 signal 3 } 
	{ tcp_in_TLAST sc_in sc_lv 1 signal 4 } 
	{ tcp_in_TID sc_in sc_lv 1 signal 5 } 
	{ tcp_in_TDEST sc_in sc_lv 1 signal 6 } 
	{ tcp_out_TDATA sc_out sc_lv 32 signal 7 } 
	{ tcp_out_TVALID sc_out sc_logic 1 outvld 13 } 
	{ tcp_out_TREADY sc_in sc_logic 1 outacc 7 } 
	{ tcp_out_TKEEP sc_out sc_lv 4 signal 8 } 
	{ tcp_out_TSTRB sc_out sc_lv 4 signal 9 } 
	{ tcp_out_TUSER sc_out sc_lv 1 signal 10 } 
	{ tcp_out_TLAST sc_out sc_lv 1 signal 11 } 
	{ tcp_out_TID sc_out sc_lv 1 signal 12 } 
	{ tcp_out_TDEST sc_out sc_lv 1 signal 13 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "tcp_in_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tcp_in_V_data_V", "role": "default" }} , 
 	{ "name": "tcp_in_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "tcp_in_V_dest_V", "role": "default" }} , 
 	{ "name": "tcp_in_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "tcp_in_V_dest_V", "role": "default" }} , 
 	{ "name": "tcp_in_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tcp_in_V_keep_V", "role": "default" }} , 
 	{ "name": "tcp_in_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tcp_in_V_strb_V", "role": "default" }} , 
 	{ "name": "tcp_in_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tcp_in_V_user_V", "role": "default" }} , 
 	{ "name": "tcp_in_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tcp_in_V_last_V", "role": "default" }} , 
 	{ "name": "tcp_in_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tcp_in_V_id_V", "role": "default" }} , 
 	{ "name": "tcp_in_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tcp_in_V_dest_V", "role": "default" }} , 
 	{ "name": "tcp_out_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tcp_out_V_data_V", "role": "default" }} , 
 	{ "name": "tcp_out_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tcp_out_V_dest_V", "role": "default" }} , 
 	{ "name": "tcp_out_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "tcp_out_V_data_V", "role": "default" }} , 
 	{ "name": "tcp_out_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tcp_out_V_keep_V", "role": "default" }} , 
 	{ "name": "tcp_out_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tcp_out_V_strb_V", "role": "default" }} , 
 	{ "name": "tcp_out_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tcp_out_V_user_V", "role": "default" }} , 
 	{ "name": "tcp_out_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tcp_out_V_last_V", "role": "default" }} , 
 	{ "name": "tcp_out_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tcp_out_V_id_V", "role": "default" }} , 
 	{ "name": "tcp_out_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tcp_out_V_dest_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "iscsi_interface",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "tcp_in_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "tcp_in_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tcp_in_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "tcp_in_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "tcp_in_V_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "tcp_in_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "tcp_in_V_id_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "tcp_in_V_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "tcp_out_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "tcp_out_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tcp_out_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "tcp_out_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "tcp_out_V_user_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "tcp_out_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "tcp_out_V_id_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "tcp_out_V_dest_V", "Type" : "Axis", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	iscsi_interface {
		tcp_in_V_data_V {Type I LastRead 1 FirstWrite -1}
		tcp_in_V_keep_V {Type I LastRead 1 FirstWrite -1}
		tcp_in_V_strb_V {Type I LastRead 1 FirstWrite -1}
		tcp_in_V_user_V {Type I LastRead 1 FirstWrite -1}
		tcp_in_V_last_V {Type I LastRead 1 FirstWrite -1}
		tcp_in_V_id_V {Type I LastRead 1 FirstWrite -1}
		tcp_in_V_dest_V {Type I LastRead 1 FirstWrite -1}
		tcp_out_V_data_V {Type O LastRead -1 FirstWrite 1}
		tcp_out_V_keep_V {Type O LastRead -1 FirstWrite 1}
		tcp_out_V_strb_V {Type O LastRead -1 FirstWrite 1}
		tcp_out_V_user_V {Type O LastRead -1 FirstWrite 1}
		tcp_out_V_last_V {Type O LastRead -1 FirstWrite 1}
		tcp_out_V_id_V {Type O LastRead -1 FirstWrite 1}
		tcp_out_V_dest_V {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	tcp_in_V_data_V { axis {  { tcp_in_TDATA in_data 0 32 } } }
	tcp_in_V_keep_V { axis {  { tcp_in_TKEEP in_data 0 4 } } }
	tcp_in_V_strb_V { axis {  { tcp_in_TSTRB in_data 0 4 } } }
	tcp_in_V_user_V { axis {  { tcp_in_TUSER in_data 0 1 } } }
	tcp_in_V_last_V { axis {  { tcp_in_TLAST in_data 0 1 } } }
	tcp_in_V_id_V { axis {  { tcp_in_TID in_data 0 1 } } }
	tcp_in_V_dest_V { axis {  { tcp_in_TVALID in_vld 0 1 }  { tcp_in_TREADY in_acc 1 1 }  { tcp_in_TDEST in_data 0 1 } } }
	tcp_out_V_data_V { axis {  { tcp_out_TDATA out_data 1 32 }  { tcp_out_TREADY out_acc 0 1 } } }
	tcp_out_V_keep_V { axis {  { tcp_out_TKEEP out_data 1 4 } } }
	tcp_out_V_strb_V { axis {  { tcp_out_TSTRB out_data 1 4 } } }
	tcp_out_V_user_V { axis {  { tcp_out_TUSER out_data 1 1 } } }
	tcp_out_V_last_V { axis {  { tcp_out_TLAST out_data 1 1 } } }
	tcp_out_V_id_V { axis {  { tcp_out_TID out_data 1 1 } } }
	tcp_out_V_dest_V { axis {  { tcp_out_TVALID out_vld 1 1 }  { tcp_out_TDEST out_data 1 1 } } }
}

set busDeadlockParameterList { 
}

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
