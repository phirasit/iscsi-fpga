-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Sun Mar 15 20:21:39 2020
-- Host        : phirasit-macbook running 64-bit Ubuntu 18.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/phirasit/project/san-adapter/iscsi_hls/iscsi_processor/impl/verilog/project.srcs/sources_1/bd/bd_0/ip/bd_0_hls_inst_0/bd_0_hls_inst_0_stub.vhdl
-- Design      : bd_0_hls_inst_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bd_0_hls_inst_0 is
  Port ( 
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    tcp_in_V_V_TVALID : in STD_LOGIC;
    tcp_in_V_V_TREADY : out STD_LOGIC;
    tcp_in_V_V_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    tcp_out_V_V_TVALID : out STD_LOGIC;
    tcp_out_V_V_TREADY : in STD_LOGIC;
    tcp_out_V_V_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end bd_0_hls_inst_0;

architecture stub of bd_0_hls_inst_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ap_clk,ap_rst_n,ap_start,ap_done,ap_idle,ap_ready,tcp_in_V_V_TVALID,tcp_in_V_V_TREADY,tcp_in_V_V_TDATA[31:0],tcp_out_V_V_TVALID,tcp_out_V_V_TREADY,tcp_out_V_V_TDATA[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "iscsi_interface,Vivado 2019.1";
begin
end;
