-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Fri Jan 31 15:24:54 2020
-- Host        : phirasit-macbook running 64-bit Ubuntu 18.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top design_1_iscsi_interface_0_0 -prefix
--               design_1_iscsi_interface_0_0_ design_1_iscsi_interface_0_0_stub.vhdl
-- Design      : design_1_iscsi_interface_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_iscsi_interface_0_0 is
  Port ( 
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    tcp_in_TVALID : in STD_LOGIC;
    tcp_in_TREADY : out STD_LOGIC;
    tcp_in_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    tcp_in_TDEST : in STD_LOGIC_VECTOR ( 0 to 0 );
    tcp_in_TKEEP : in STD_LOGIC_VECTOR ( 3 downto 0 );
    tcp_in_TSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    tcp_in_TUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    tcp_in_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    tcp_in_TID : in STD_LOGIC_VECTOR ( 0 to 0 );
    tcp_out_TVALID : out STD_LOGIC;
    tcp_out_TREADY : in STD_LOGIC;
    tcp_out_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    tcp_out_TDEST : out STD_LOGIC_VECTOR ( 0 to 0 );
    tcp_out_TKEEP : out STD_LOGIC_VECTOR ( 3 downto 0 );
    tcp_out_TSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    tcp_out_TUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    tcp_out_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    tcp_out_TID : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

end design_1_iscsi_interface_0_0;

architecture stub of design_1_iscsi_interface_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ap_clk,ap_rst_n,ap_start,ap_done,ap_idle,ap_ready,tcp_in_TVALID,tcp_in_TREADY,tcp_in_TDATA[31:0],tcp_in_TDEST[0:0],tcp_in_TKEEP[3:0],tcp_in_TSTRB[3:0],tcp_in_TUSER[0:0],tcp_in_TLAST[0:0],tcp_in_TID[0:0],tcp_out_TVALID,tcp_out_TREADY,tcp_out_TDATA[31:0],tcp_out_TDEST[0:0],tcp_out_TKEEP[3:0],tcp_out_TSTRB[3:0],tcp_out_TUSER[0:0],tcp_out_TLAST[0:0],tcp_out_TID[0:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "iscsi_interface,Vivado 2019.1";
begin
end;
