# ==============================================================
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
# ==============================================================
CSIM_DESIGN = 1

__SIM_FPO__ = 1

__SIM_MATHHLS__ = 1

__SIM_OPENCV__ = 1

__SIM_FFT__ = 1

__SIM_FIR__ = 1

__SIM_DDS__ = 1

ObjDir = obj

HLS_SOURCES = ../../test/iscsi_processor_tb.cpp ../../src/iscsi_connection.cpp ../../src/iscsi_connection_parameter.cpp ../../src/iscsi_pdu/iscsi_login.cpp ../../src/iscsi_pdu/iscsi_nop_out.cpp ../../src/iscsi_session.cpp ../../src/iscsi_pdu/iscsi_text.cpp ../../src/iscsi_top_level.cpp

TARGET := csim.exe

AUTOPILOT_ROOT := /opt/vivado/Vivado/2019.1
AUTOPILOT_MACH := lnx64
ifdef AP_GCC_M32
  AUTOPILOT_MACH := Linux_x86
  IFLAG += -m32
endif
IFLAG += -fPIC
ifndef AP_GCC_PATH
  AP_GCC_PATH := /opt/vivado/Vivado/2019.1/tps/lnx64/gcc-6.2.0/bin
endif
AUTOPILOT_TOOL := ${AUTOPILOT_ROOT}/${AUTOPILOT_MACH}/tools
AP_CLANG_PATH := ${AUTOPILOT_TOOL}/clang-3.9/bin
AUTOPILOT_TECH := ${AUTOPILOT_ROOT}/common/technology


IFLAG += -I "${AUTOPILOT_TOOL}/systemc/include"
IFLAG += -I "${AUTOPILOT_ROOT}/include"
IFLAG += -I "${AUTOPILOT_ROOT}/include/opencv"
IFLAG += -I "${AUTOPILOT_ROOT}/include/ap_sysc"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC/AESL_FP_comp"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC/AESL_comp"
IFLAG += -I "${AUTOPILOT_TOOL}/auto_cc/include"
IFLAG += -I "/usr/include/x86_64-linux-gnu"
IFLAG += -D__SIM_FPO__

IFLAG += -D__SIM_OPENCV__

IFLAG += -D__SIM_FFT__

IFLAG += -D__SIM_FIR__

IFLAG += -D__SIM_DDS__

IFLAG += -D__DSP48E1__
IFLAG += -Wno-unknown-pragmas 
IFLAG += -g
DFLAG += -D__xilinx_ip_top= -DAESL_TB
CCFLAG += 
TOOLCHAIN += 



include ./Makefile.rules

all: $(TARGET)



$(ObjDir)/iscsi_processor_tb.o: ../../test/iscsi_processor_tb.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../test/iscsi_processor_tb.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD -Wno-unknown-pragmas -Wno-unknown-pragmas  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/iscsi_processor_tb.d

$(ObjDir)/iscsi_connection.o: ../../src/iscsi_connection.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../src/iscsi_connection.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/iscsi_connection.d

$(ObjDir)/iscsi_connection_parameter.o: ../../src/iscsi_connection_parameter.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../src/iscsi_connection_parameter.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/iscsi_connection_parameter.d

$(ObjDir)/iscsi_login.o: ../../src/iscsi_pdu/iscsi_login.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../src/iscsi_pdu/iscsi_login.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/iscsi_login.d

$(ObjDir)/iscsi_nop_out.o: ../../src/iscsi_pdu/iscsi_nop_out.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../src/iscsi_pdu/iscsi_nop_out.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/iscsi_nop_out.d

$(ObjDir)/iscsi_session.o: ../../src/iscsi_session.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../src/iscsi_session.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/iscsi_session.d

$(ObjDir)/iscsi_text.o: ../../src/iscsi_pdu/iscsi_text.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../src/iscsi_pdu/iscsi_text.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/iscsi_text.d

$(ObjDir)/iscsi_top_level.o: ../../src/iscsi_top_level.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../src/iscsi_top_level.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/iscsi_top_level.d
