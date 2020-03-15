-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2019.1
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity read_from_tcp_1 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    iscsi_connection_parameter_max_receive_data_segment_length_i : IN STD_LOGIC_VECTOR (31 downto 0);
    iscsi_connection_parameter_max_receive_data_segment_length_o : OUT STD_LOGIC_VECTOR (31 downto 0);
    iscsi_connection_parameter_max_receive_data_segment_length_o_ap_vld : OUT STD_LOGIC;
    iscsi_connection_parameter_max_connections_i : IN STD_LOGIC_VECTOR (31 downto 0);
    iscsi_connection_parameter_max_connections_o : OUT STD_LOGIC_VECTOR (31 downto 0);
    iscsi_connection_parameter_max_connections_o_ap_vld : OUT STD_LOGIC;
    iscsi_connection_parameter_initial_r2t_i : IN STD_LOGIC_VECTOR (31 downto 0);
    iscsi_connection_parameter_initial_r2t_o : OUT STD_LOGIC_VECTOR (31 downto 0);
    iscsi_connection_parameter_initial_r2t_o_ap_vld : OUT STD_LOGIC;
    iscsi_connection_parameter_immediate_data_i : IN STD_LOGIC_VECTOR (31 downto 0);
    iscsi_connection_parameter_immediate_data_o : OUT STD_LOGIC_VECTOR (31 downto 0);
    iscsi_connection_parameter_immediate_data_o_ap_vld : OUT STD_LOGIC;
    iscsi_connection_parameter_max_burst_length_i : IN STD_LOGIC_VECTOR (31 downto 0);
    iscsi_connection_parameter_max_burst_length_o : OUT STD_LOGIC_VECTOR (31 downto 0);
    iscsi_connection_parameter_max_burst_length_o_ap_vld : OUT STD_LOGIC;
    iscsi_connection_parameter_first_burst_length_i : IN STD_LOGIC_VECTOR (31 downto 0);
    iscsi_connection_parameter_first_burst_length_o : OUT STD_LOGIC_VECTOR (31 downto 0);
    iscsi_connection_parameter_first_burst_length_o_ap_vld : OUT STD_LOGIC;
    iscsi_connection_parameter_data_pdu_in_order_i : IN STD_LOGIC_VECTOR (31 downto 0);
    iscsi_connection_parameter_data_pdu_in_order_o : OUT STD_LOGIC_VECTOR (31 downto 0);
    iscsi_connection_parameter_data_pdu_in_order_o_ap_vld : OUT STD_LOGIC;
    iscsi_connection_parameter_data_sequence_in_order_i : IN STD_LOGIC_VECTOR (31 downto 0);
    iscsi_connection_parameter_data_sequence_in_order_o : OUT STD_LOGIC_VECTOR (31 downto 0);
    iscsi_connection_parameter_data_sequence_in_order_o_ap_vld : OUT STD_LOGIC;
    iscsi_connection_parameter_default_time_2_wait_i : IN STD_LOGIC_VECTOR (31 downto 0);
    iscsi_connection_parameter_default_time_2_wait_o : OUT STD_LOGIC_VECTOR (31 downto 0);
    iscsi_connection_parameter_default_time_2_wait_o_ap_vld : OUT STD_LOGIC;
    iscsi_connection_parameter_default_time_2_retain_i : IN STD_LOGIC_VECTOR (31 downto 0);
    iscsi_connection_parameter_default_time_2_retain_o : OUT STD_LOGIC_VECTOR (31 downto 0);
    iscsi_connection_parameter_default_time_2_retain_o_ap_vld : OUT STD_LOGIC;
    iscsi_connection_parameter_max_outstanding_r2t_i : IN STD_LOGIC_VECTOR (31 downto 0);
    iscsi_connection_parameter_max_outstanding_r2t_o : OUT STD_LOGIC_VECTOR (31 downto 0);
    iscsi_connection_parameter_max_outstanding_r2t_o_ap_vld : OUT STD_LOGIC;
    iscsi_connection_parameter_data_address0 : OUT STD_LOGIC_VECTOR (12 downto 0);
    iscsi_connection_parameter_data_ce0 : OUT STD_LOGIC;
    iscsi_connection_parameter_data_we0 : OUT STD_LOGIC;
    iscsi_connection_parameter_data_d0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    iscsi_connection_parameter_data_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    iscsi_connection_parameter_data_address1 : OUT STD_LOGIC_VECTOR (12 downto 0);
    iscsi_connection_parameter_data_ce1 : OUT STD_LOGIC;
    iscsi_connection_parameter_data_we1 : OUT STD_LOGIC;
    iscsi_connection_parameter_data_d1 : OUT STD_LOGIC_VECTOR (7 downto 0);
    tcp_in_V_V_TDATA : IN STD_LOGIC_VECTOR (31 downto 0);
    tcp_in_V_V_TVALID : IN STD_LOGIC;
    tcp_in_V_V_TREADY : OUT STD_LOGIC;
    length_r : IN STD_LOGIC_VECTOR (23 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (23 downto 0) );
end;


architecture behav of read_from_tcp_1 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (3 downto 0) := "0100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal grp_update_values_fu_74_ap_start : STD_LOGIC;
    signal grp_update_values_fu_74_ap_done : STD_LOGIC;
    signal grp_update_values_fu_74_ap_idle : STD_LOGIC;
    signal grp_update_values_fu_74_ap_ready : STD_LOGIC;
    signal grp_update_values_fu_74_iscsi_connection_parameter_max_receive_data_segment_length_o : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_update_values_fu_74_iscsi_connection_parameter_max_receive_data_segment_length_o_ap_vld : STD_LOGIC;
    signal grp_update_values_fu_74_iscsi_connection_parameter_max_connections_o : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_update_values_fu_74_iscsi_connection_parameter_max_connections_o_ap_vld : STD_LOGIC;
    signal grp_update_values_fu_74_iscsi_connection_parameter_initial_r2t_o : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_update_values_fu_74_iscsi_connection_parameter_initial_r2t_o_ap_vld : STD_LOGIC;
    signal grp_update_values_fu_74_iscsi_connection_parameter_immediate_data_o : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_update_values_fu_74_iscsi_connection_parameter_immediate_data_o_ap_vld : STD_LOGIC;
    signal grp_update_values_fu_74_iscsi_connection_parameter_max_burst_length_o : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_update_values_fu_74_iscsi_connection_parameter_max_burst_length_o_ap_vld : STD_LOGIC;
    signal grp_update_values_fu_74_iscsi_connection_parameter_first_burst_length_o : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_update_values_fu_74_iscsi_connection_parameter_first_burst_length_o_ap_vld : STD_LOGIC;
    signal grp_update_values_fu_74_iscsi_connection_parameter_data_pdu_in_order_o : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_update_values_fu_74_iscsi_connection_parameter_data_pdu_in_order_o_ap_vld : STD_LOGIC;
    signal grp_update_values_fu_74_iscsi_connection_parameter_data_sequence_in_order_o : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_update_values_fu_74_iscsi_connection_parameter_data_sequence_in_order_o_ap_vld : STD_LOGIC;
    signal grp_update_values_fu_74_iscsi_connection_parameter_default_time_2_wait_o : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_update_values_fu_74_iscsi_connection_parameter_default_time_2_wait_o_ap_vld : STD_LOGIC;
    signal grp_update_values_fu_74_iscsi_connection_parameter_default_time_2_retain_o : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_update_values_fu_74_iscsi_connection_parameter_default_time_2_retain_o_ap_vld : STD_LOGIC;
    signal grp_update_values_fu_74_iscsi_connection_parameter_max_outstanding_r2t_o : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_update_values_fu_74_iscsi_connection_parameter_max_outstanding_r2t_o_ap_vld : STD_LOGIC;
    signal grp_update_values_fu_74_iscsi_connection_parameter_data_address0 : STD_LOGIC_VECTOR (12 downto 0);
    signal grp_update_values_fu_74_iscsi_connection_parameter_data_ce0 : STD_LOGIC;
    signal grp_read_byte_array_1_fu_127_ap_start : STD_LOGIC;
    signal grp_read_byte_array_1_fu_127_ap_done : STD_LOGIC;
    signal grp_read_byte_array_1_fu_127_ap_idle : STD_LOGIC;
    signal grp_read_byte_array_1_fu_127_ap_ready : STD_LOGIC;
    signal grp_read_byte_array_1_fu_127_stream_ap_uint_32_V_V_TREADY : STD_LOGIC;
    signal grp_read_byte_array_1_fu_127_data_address0 : STD_LOGIC_VECTOR (12 downto 0);
    signal grp_read_byte_array_1_fu_127_data_ce0 : STD_LOGIC;
    signal grp_read_byte_array_1_fu_127_data_we0 : STD_LOGIC;
    signal grp_read_byte_array_1_fu_127_data_d0 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_read_byte_array_1_fu_127_data_address1 : STD_LOGIC_VECTOR (12 downto 0);
    signal grp_read_byte_array_1_fu_127_data_ce1 : STD_LOGIC;
    signal grp_read_byte_array_1_fu_127_data_we1 : STD_LOGIC;
    signal grp_read_byte_array_1_fu_127_data_d1 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_update_values_fu_74_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal grp_read_byte_array_1_fu_127_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (3 downto 0);

    component update_values IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        iscsi_connection_parameter_max_receive_data_segment_length_i : IN STD_LOGIC_VECTOR (31 downto 0);
        iscsi_connection_parameter_max_receive_data_segment_length_o : OUT STD_LOGIC_VECTOR (31 downto 0);
        iscsi_connection_parameter_max_receive_data_segment_length_o_ap_vld : OUT STD_LOGIC;
        iscsi_connection_parameter_max_connections_i : IN STD_LOGIC_VECTOR (31 downto 0);
        iscsi_connection_parameter_max_connections_o : OUT STD_LOGIC_VECTOR (31 downto 0);
        iscsi_connection_parameter_max_connections_o_ap_vld : OUT STD_LOGIC;
        iscsi_connection_parameter_initial_r2t_i : IN STD_LOGIC_VECTOR (31 downto 0);
        iscsi_connection_parameter_initial_r2t_o : OUT STD_LOGIC_VECTOR (31 downto 0);
        iscsi_connection_parameter_initial_r2t_o_ap_vld : OUT STD_LOGIC;
        iscsi_connection_parameter_immediate_data_i : IN STD_LOGIC_VECTOR (31 downto 0);
        iscsi_connection_parameter_immediate_data_o : OUT STD_LOGIC_VECTOR (31 downto 0);
        iscsi_connection_parameter_immediate_data_o_ap_vld : OUT STD_LOGIC;
        iscsi_connection_parameter_max_burst_length_i : IN STD_LOGIC_VECTOR (31 downto 0);
        iscsi_connection_parameter_max_burst_length_o : OUT STD_LOGIC_VECTOR (31 downto 0);
        iscsi_connection_parameter_max_burst_length_o_ap_vld : OUT STD_LOGIC;
        iscsi_connection_parameter_first_burst_length_i : IN STD_LOGIC_VECTOR (31 downto 0);
        iscsi_connection_parameter_first_burst_length_o : OUT STD_LOGIC_VECTOR (31 downto 0);
        iscsi_connection_parameter_first_burst_length_o_ap_vld : OUT STD_LOGIC;
        iscsi_connection_parameter_data_pdu_in_order_i : IN STD_LOGIC_VECTOR (31 downto 0);
        iscsi_connection_parameter_data_pdu_in_order_o : OUT STD_LOGIC_VECTOR (31 downto 0);
        iscsi_connection_parameter_data_pdu_in_order_o_ap_vld : OUT STD_LOGIC;
        iscsi_connection_parameter_data_sequence_in_order_i : IN STD_LOGIC_VECTOR (31 downto 0);
        iscsi_connection_parameter_data_sequence_in_order_o : OUT STD_LOGIC_VECTOR (31 downto 0);
        iscsi_connection_parameter_data_sequence_in_order_o_ap_vld : OUT STD_LOGIC;
        iscsi_connection_parameter_default_time_2_wait_i : IN STD_LOGIC_VECTOR (31 downto 0);
        iscsi_connection_parameter_default_time_2_wait_o : OUT STD_LOGIC_VECTOR (31 downto 0);
        iscsi_connection_parameter_default_time_2_wait_o_ap_vld : OUT STD_LOGIC;
        iscsi_connection_parameter_default_time_2_retain_i : IN STD_LOGIC_VECTOR (31 downto 0);
        iscsi_connection_parameter_default_time_2_retain_o : OUT STD_LOGIC_VECTOR (31 downto 0);
        iscsi_connection_parameter_default_time_2_retain_o_ap_vld : OUT STD_LOGIC;
        iscsi_connection_parameter_max_outstanding_r2t_i : IN STD_LOGIC_VECTOR (31 downto 0);
        iscsi_connection_parameter_max_outstanding_r2t_o : OUT STD_LOGIC_VECTOR (31 downto 0);
        iscsi_connection_parameter_max_outstanding_r2t_o_ap_vld : OUT STD_LOGIC;
        iscsi_connection_parameter_data_address0 : OUT STD_LOGIC_VECTOR (12 downto 0);
        iscsi_connection_parameter_data_ce0 : OUT STD_LOGIC;
        iscsi_connection_parameter_data_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
        iscsi_connection_parameter_data_length_read : IN STD_LOGIC_VECTOR (23 downto 0) );
    end component;


    component read_byte_array_1 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        stream_ap_uint_32_V_V_TDATA : IN STD_LOGIC_VECTOR (31 downto 0);
        stream_ap_uint_32_V_V_TVALID : IN STD_LOGIC;
        stream_ap_uint_32_V_V_TREADY : OUT STD_LOGIC;
        data_address0 : OUT STD_LOGIC_VECTOR (12 downto 0);
        data_ce0 : OUT STD_LOGIC;
        data_we0 : OUT STD_LOGIC;
        data_d0 : OUT STD_LOGIC_VECTOR (7 downto 0);
        data_address1 : OUT STD_LOGIC_VECTOR (12 downto 0);
        data_ce1 : OUT STD_LOGIC;
        data_we1 : OUT STD_LOGIC;
        data_d1 : OUT STD_LOGIC_VECTOR (7 downto 0);
        length_r : IN STD_LOGIC_VECTOR (23 downto 0) );
    end component;



begin
    grp_update_values_fu_74 : component update_values
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_update_values_fu_74_ap_start,
        ap_done => grp_update_values_fu_74_ap_done,
        ap_idle => grp_update_values_fu_74_ap_idle,
        ap_ready => grp_update_values_fu_74_ap_ready,
        iscsi_connection_parameter_max_receive_data_segment_length_i => iscsi_connection_parameter_max_receive_data_segment_length_i,
        iscsi_connection_parameter_max_receive_data_segment_length_o => grp_update_values_fu_74_iscsi_connection_parameter_max_receive_data_segment_length_o,
        iscsi_connection_parameter_max_receive_data_segment_length_o_ap_vld => grp_update_values_fu_74_iscsi_connection_parameter_max_receive_data_segment_length_o_ap_vld,
        iscsi_connection_parameter_max_connections_i => iscsi_connection_parameter_max_connections_i,
        iscsi_connection_parameter_max_connections_o => grp_update_values_fu_74_iscsi_connection_parameter_max_connections_o,
        iscsi_connection_parameter_max_connections_o_ap_vld => grp_update_values_fu_74_iscsi_connection_parameter_max_connections_o_ap_vld,
        iscsi_connection_parameter_initial_r2t_i => iscsi_connection_parameter_initial_r2t_i,
        iscsi_connection_parameter_initial_r2t_o => grp_update_values_fu_74_iscsi_connection_parameter_initial_r2t_o,
        iscsi_connection_parameter_initial_r2t_o_ap_vld => grp_update_values_fu_74_iscsi_connection_parameter_initial_r2t_o_ap_vld,
        iscsi_connection_parameter_immediate_data_i => iscsi_connection_parameter_immediate_data_i,
        iscsi_connection_parameter_immediate_data_o => grp_update_values_fu_74_iscsi_connection_parameter_immediate_data_o,
        iscsi_connection_parameter_immediate_data_o_ap_vld => grp_update_values_fu_74_iscsi_connection_parameter_immediate_data_o_ap_vld,
        iscsi_connection_parameter_max_burst_length_i => iscsi_connection_parameter_max_burst_length_i,
        iscsi_connection_parameter_max_burst_length_o => grp_update_values_fu_74_iscsi_connection_parameter_max_burst_length_o,
        iscsi_connection_parameter_max_burst_length_o_ap_vld => grp_update_values_fu_74_iscsi_connection_parameter_max_burst_length_o_ap_vld,
        iscsi_connection_parameter_first_burst_length_i => iscsi_connection_parameter_first_burst_length_i,
        iscsi_connection_parameter_first_burst_length_o => grp_update_values_fu_74_iscsi_connection_parameter_first_burst_length_o,
        iscsi_connection_parameter_first_burst_length_o_ap_vld => grp_update_values_fu_74_iscsi_connection_parameter_first_burst_length_o_ap_vld,
        iscsi_connection_parameter_data_pdu_in_order_i => iscsi_connection_parameter_data_pdu_in_order_i,
        iscsi_connection_parameter_data_pdu_in_order_o => grp_update_values_fu_74_iscsi_connection_parameter_data_pdu_in_order_o,
        iscsi_connection_parameter_data_pdu_in_order_o_ap_vld => grp_update_values_fu_74_iscsi_connection_parameter_data_pdu_in_order_o_ap_vld,
        iscsi_connection_parameter_data_sequence_in_order_i => iscsi_connection_parameter_data_sequence_in_order_i,
        iscsi_connection_parameter_data_sequence_in_order_o => grp_update_values_fu_74_iscsi_connection_parameter_data_sequence_in_order_o,
        iscsi_connection_parameter_data_sequence_in_order_o_ap_vld => grp_update_values_fu_74_iscsi_connection_parameter_data_sequence_in_order_o_ap_vld,
        iscsi_connection_parameter_default_time_2_wait_i => iscsi_connection_parameter_default_time_2_wait_i,
        iscsi_connection_parameter_default_time_2_wait_o => grp_update_values_fu_74_iscsi_connection_parameter_default_time_2_wait_o,
        iscsi_connection_parameter_default_time_2_wait_o_ap_vld => grp_update_values_fu_74_iscsi_connection_parameter_default_time_2_wait_o_ap_vld,
        iscsi_connection_parameter_default_time_2_retain_i => iscsi_connection_parameter_default_time_2_retain_i,
        iscsi_connection_parameter_default_time_2_retain_o => grp_update_values_fu_74_iscsi_connection_parameter_default_time_2_retain_o,
        iscsi_connection_parameter_default_time_2_retain_o_ap_vld => grp_update_values_fu_74_iscsi_connection_parameter_default_time_2_retain_o_ap_vld,
        iscsi_connection_parameter_max_outstanding_r2t_i => iscsi_connection_parameter_max_outstanding_r2t_i,
        iscsi_connection_parameter_max_outstanding_r2t_o => grp_update_values_fu_74_iscsi_connection_parameter_max_outstanding_r2t_o,
        iscsi_connection_parameter_max_outstanding_r2t_o_ap_vld => grp_update_values_fu_74_iscsi_connection_parameter_max_outstanding_r2t_o_ap_vld,
        iscsi_connection_parameter_data_address0 => grp_update_values_fu_74_iscsi_connection_parameter_data_address0,
        iscsi_connection_parameter_data_ce0 => grp_update_values_fu_74_iscsi_connection_parameter_data_ce0,
        iscsi_connection_parameter_data_q0 => iscsi_connection_parameter_data_q0,
        iscsi_connection_parameter_data_length_read => length_r);

    grp_read_byte_array_1_fu_127 : component read_byte_array_1
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_read_byte_array_1_fu_127_ap_start,
        ap_done => grp_read_byte_array_1_fu_127_ap_done,
        ap_idle => grp_read_byte_array_1_fu_127_ap_idle,
        ap_ready => grp_read_byte_array_1_fu_127_ap_ready,
        stream_ap_uint_32_V_V_TDATA => tcp_in_V_V_TDATA,
        stream_ap_uint_32_V_V_TVALID => tcp_in_V_V_TVALID,
        stream_ap_uint_32_V_V_TREADY => grp_read_byte_array_1_fu_127_stream_ap_uint_32_V_V_TREADY,
        data_address0 => grp_read_byte_array_1_fu_127_data_address0,
        data_ce0 => grp_read_byte_array_1_fu_127_data_ce0,
        data_we0 => grp_read_byte_array_1_fu_127_data_we0,
        data_d0 => grp_read_byte_array_1_fu_127_data_d0,
        data_address1 => grp_read_byte_array_1_fu_127_data_address1,
        data_ce1 => grp_read_byte_array_1_fu_127_data_ce1,
        data_we1 => grp_read_byte_array_1_fu_127_data_we1,
        data_d1 => grp_read_byte_array_1_fu_127_data_d1,
        length_r => length_r);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    grp_read_byte_array_1_fu_127_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_read_byte_array_1_fu_127_ap_start_reg <= ap_const_logic_0;
            else
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    grp_read_byte_array_1_fu_127_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_read_byte_array_1_fu_127_ap_ready = ap_const_logic_1)) then 
                    grp_read_byte_array_1_fu_127_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    grp_update_values_fu_74_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_update_values_fu_74_ap_start_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
                    grp_update_values_fu_74_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_update_values_fu_74_ap_ready = ap_const_logic_1)) then 
                    grp_update_values_fu_74_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, grp_update_values_fu_74_ap_done, grp_read_byte_array_1_fu_127_ap_done, ap_CS_fsm_state4, ap_CS_fsm_state2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (grp_read_byte_array_1_fu_127_ap_done = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                if (((grp_update_values_fu_74_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, grp_update_values_fu_74_ap_done, ap_CS_fsm_state4)
    begin
        if ((((grp_update_values_fu_74_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state4)) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(grp_update_values_fu_74_ap_done, ap_CS_fsm_state4)
    begin
        if (((grp_update_values_fu_74_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    ap_return <= length_r;
    grp_read_byte_array_1_fu_127_ap_start <= grp_read_byte_array_1_fu_127_ap_start_reg;
    grp_update_values_fu_74_ap_start <= grp_update_values_fu_74_ap_start_reg;

    iscsi_connection_parameter_data_address0_assign_proc : process(grp_update_values_fu_74_iscsi_connection_parameter_data_address0, grp_read_byte_array_1_fu_127_data_address0, ap_CS_fsm_state4, ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            iscsi_connection_parameter_data_address0 <= grp_read_byte_array_1_fu_127_data_address0;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            iscsi_connection_parameter_data_address0 <= grp_update_values_fu_74_iscsi_connection_parameter_data_address0;
        else 
            iscsi_connection_parameter_data_address0 <= "XXXXXXXXXXXXX";
        end if; 
    end process;

    iscsi_connection_parameter_data_address1 <= grp_read_byte_array_1_fu_127_data_address1;

    iscsi_connection_parameter_data_ce0_assign_proc : process(grp_update_values_fu_74_iscsi_connection_parameter_data_ce0, grp_read_byte_array_1_fu_127_data_ce0, ap_CS_fsm_state4, ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            iscsi_connection_parameter_data_ce0 <= grp_read_byte_array_1_fu_127_data_ce0;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            iscsi_connection_parameter_data_ce0 <= grp_update_values_fu_74_iscsi_connection_parameter_data_ce0;
        else 
            iscsi_connection_parameter_data_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    iscsi_connection_parameter_data_ce1_assign_proc : process(grp_read_byte_array_1_fu_127_data_ce1, ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            iscsi_connection_parameter_data_ce1 <= grp_read_byte_array_1_fu_127_data_ce1;
        else 
            iscsi_connection_parameter_data_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    iscsi_connection_parameter_data_d0 <= grp_read_byte_array_1_fu_127_data_d0;
    iscsi_connection_parameter_data_d1 <= grp_read_byte_array_1_fu_127_data_d1;

    iscsi_connection_parameter_data_pdu_in_order_o_assign_proc : process(iscsi_connection_parameter_data_pdu_in_order_i, grp_update_values_fu_74_iscsi_connection_parameter_data_pdu_in_order_o, grp_update_values_fu_74_iscsi_connection_parameter_data_pdu_in_order_o_ap_vld, ap_CS_fsm_state4)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state4) and (grp_update_values_fu_74_iscsi_connection_parameter_data_pdu_in_order_o_ap_vld = ap_const_logic_1))) then 
            iscsi_connection_parameter_data_pdu_in_order_o <= grp_update_values_fu_74_iscsi_connection_parameter_data_pdu_in_order_o;
        else 
            iscsi_connection_parameter_data_pdu_in_order_o <= iscsi_connection_parameter_data_pdu_in_order_i;
        end if; 
    end process;

    iscsi_connection_parameter_data_pdu_in_order_o_ap_vld <= grp_update_values_fu_74_iscsi_connection_parameter_data_pdu_in_order_o_ap_vld;

    iscsi_connection_parameter_data_sequence_in_order_o_assign_proc : process(iscsi_connection_parameter_data_sequence_in_order_i, grp_update_values_fu_74_iscsi_connection_parameter_data_sequence_in_order_o, grp_update_values_fu_74_iscsi_connection_parameter_data_sequence_in_order_o_ap_vld, ap_CS_fsm_state4)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state4) and (grp_update_values_fu_74_iscsi_connection_parameter_data_sequence_in_order_o_ap_vld = ap_const_logic_1))) then 
            iscsi_connection_parameter_data_sequence_in_order_o <= grp_update_values_fu_74_iscsi_connection_parameter_data_sequence_in_order_o;
        else 
            iscsi_connection_parameter_data_sequence_in_order_o <= iscsi_connection_parameter_data_sequence_in_order_i;
        end if; 
    end process;

    iscsi_connection_parameter_data_sequence_in_order_o_ap_vld <= grp_update_values_fu_74_iscsi_connection_parameter_data_sequence_in_order_o_ap_vld;

    iscsi_connection_parameter_data_we0_assign_proc : process(grp_read_byte_array_1_fu_127_data_we0, ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            iscsi_connection_parameter_data_we0 <= grp_read_byte_array_1_fu_127_data_we0;
        else 
            iscsi_connection_parameter_data_we0 <= ap_const_logic_0;
        end if; 
    end process;


    iscsi_connection_parameter_data_we1_assign_proc : process(grp_read_byte_array_1_fu_127_data_we1, ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            iscsi_connection_parameter_data_we1 <= grp_read_byte_array_1_fu_127_data_we1;
        else 
            iscsi_connection_parameter_data_we1 <= ap_const_logic_0;
        end if; 
    end process;


    iscsi_connection_parameter_default_time_2_retain_o_assign_proc : process(iscsi_connection_parameter_default_time_2_retain_i, grp_update_values_fu_74_iscsi_connection_parameter_default_time_2_retain_o, grp_update_values_fu_74_iscsi_connection_parameter_default_time_2_retain_o_ap_vld, ap_CS_fsm_state4)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state4) and (grp_update_values_fu_74_iscsi_connection_parameter_default_time_2_retain_o_ap_vld = ap_const_logic_1))) then 
            iscsi_connection_parameter_default_time_2_retain_o <= grp_update_values_fu_74_iscsi_connection_parameter_default_time_2_retain_o;
        else 
            iscsi_connection_parameter_default_time_2_retain_o <= iscsi_connection_parameter_default_time_2_retain_i;
        end if; 
    end process;

    iscsi_connection_parameter_default_time_2_retain_o_ap_vld <= grp_update_values_fu_74_iscsi_connection_parameter_default_time_2_retain_o_ap_vld;

    iscsi_connection_parameter_default_time_2_wait_o_assign_proc : process(iscsi_connection_parameter_default_time_2_wait_i, grp_update_values_fu_74_iscsi_connection_parameter_default_time_2_wait_o, grp_update_values_fu_74_iscsi_connection_parameter_default_time_2_wait_o_ap_vld, ap_CS_fsm_state4)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state4) and (grp_update_values_fu_74_iscsi_connection_parameter_default_time_2_wait_o_ap_vld = ap_const_logic_1))) then 
            iscsi_connection_parameter_default_time_2_wait_o <= grp_update_values_fu_74_iscsi_connection_parameter_default_time_2_wait_o;
        else 
            iscsi_connection_parameter_default_time_2_wait_o <= iscsi_connection_parameter_default_time_2_wait_i;
        end if; 
    end process;

    iscsi_connection_parameter_default_time_2_wait_o_ap_vld <= grp_update_values_fu_74_iscsi_connection_parameter_default_time_2_wait_o_ap_vld;

    iscsi_connection_parameter_first_burst_length_o_assign_proc : process(iscsi_connection_parameter_first_burst_length_i, grp_update_values_fu_74_iscsi_connection_parameter_first_burst_length_o, grp_update_values_fu_74_iscsi_connection_parameter_first_burst_length_o_ap_vld, ap_CS_fsm_state4)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state4) and (grp_update_values_fu_74_iscsi_connection_parameter_first_burst_length_o_ap_vld = ap_const_logic_1))) then 
            iscsi_connection_parameter_first_burst_length_o <= grp_update_values_fu_74_iscsi_connection_parameter_first_burst_length_o;
        else 
            iscsi_connection_parameter_first_burst_length_o <= iscsi_connection_parameter_first_burst_length_i;
        end if; 
    end process;

    iscsi_connection_parameter_first_burst_length_o_ap_vld <= grp_update_values_fu_74_iscsi_connection_parameter_first_burst_length_o_ap_vld;

    iscsi_connection_parameter_immediate_data_o_assign_proc : process(iscsi_connection_parameter_immediate_data_i, grp_update_values_fu_74_iscsi_connection_parameter_immediate_data_o, grp_update_values_fu_74_iscsi_connection_parameter_immediate_data_o_ap_vld, ap_CS_fsm_state4)
    begin
        if (((grp_update_values_fu_74_iscsi_connection_parameter_immediate_data_o_ap_vld = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            iscsi_connection_parameter_immediate_data_o <= grp_update_values_fu_74_iscsi_connection_parameter_immediate_data_o;
        else 
            iscsi_connection_parameter_immediate_data_o <= iscsi_connection_parameter_immediate_data_i;
        end if; 
    end process;

    iscsi_connection_parameter_immediate_data_o_ap_vld <= grp_update_values_fu_74_iscsi_connection_parameter_immediate_data_o_ap_vld;

    iscsi_connection_parameter_initial_r2t_o_assign_proc : process(iscsi_connection_parameter_initial_r2t_i, grp_update_values_fu_74_iscsi_connection_parameter_initial_r2t_o, grp_update_values_fu_74_iscsi_connection_parameter_initial_r2t_o_ap_vld, ap_CS_fsm_state4)
    begin
        if (((grp_update_values_fu_74_iscsi_connection_parameter_initial_r2t_o_ap_vld = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            iscsi_connection_parameter_initial_r2t_o <= grp_update_values_fu_74_iscsi_connection_parameter_initial_r2t_o;
        else 
            iscsi_connection_parameter_initial_r2t_o <= iscsi_connection_parameter_initial_r2t_i;
        end if; 
    end process;

    iscsi_connection_parameter_initial_r2t_o_ap_vld <= grp_update_values_fu_74_iscsi_connection_parameter_initial_r2t_o_ap_vld;

    iscsi_connection_parameter_max_burst_length_o_assign_proc : process(iscsi_connection_parameter_max_burst_length_i, grp_update_values_fu_74_iscsi_connection_parameter_max_burst_length_o, grp_update_values_fu_74_iscsi_connection_parameter_max_burst_length_o_ap_vld, ap_CS_fsm_state4)
    begin
        if (((grp_update_values_fu_74_iscsi_connection_parameter_max_burst_length_o_ap_vld = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            iscsi_connection_parameter_max_burst_length_o <= grp_update_values_fu_74_iscsi_connection_parameter_max_burst_length_o;
        else 
            iscsi_connection_parameter_max_burst_length_o <= iscsi_connection_parameter_max_burst_length_i;
        end if; 
    end process;

    iscsi_connection_parameter_max_burst_length_o_ap_vld <= grp_update_values_fu_74_iscsi_connection_parameter_max_burst_length_o_ap_vld;

    iscsi_connection_parameter_max_connections_o_assign_proc : process(iscsi_connection_parameter_max_connections_i, grp_update_values_fu_74_iscsi_connection_parameter_max_connections_o, grp_update_values_fu_74_iscsi_connection_parameter_max_connections_o_ap_vld, ap_CS_fsm_state4)
    begin
        if (((grp_update_values_fu_74_iscsi_connection_parameter_max_connections_o_ap_vld = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            iscsi_connection_parameter_max_connections_o <= grp_update_values_fu_74_iscsi_connection_parameter_max_connections_o;
        else 
            iscsi_connection_parameter_max_connections_o <= iscsi_connection_parameter_max_connections_i;
        end if; 
    end process;

    iscsi_connection_parameter_max_connections_o_ap_vld <= grp_update_values_fu_74_iscsi_connection_parameter_max_connections_o_ap_vld;

    iscsi_connection_parameter_max_outstanding_r2t_o_assign_proc : process(iscsi_connection_parameter_max_outstanding_r2t_i, grp_update_values_fu_74_iscsi_connection_parameter_max_outstanding_r2t_o, grp_update_values_fu_74_iscsi_connection_parameter_max_outstanding_r2t_o_ap_vld, ap_CS_fsm_state4)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state4) and (grp_update_values_fu_74_iscsi_connection_parameter_max_outstanding_r2t_o_ap_vld = ap_const_logic_1))) then 
            iscsi_connection_parameter_max_outstanding_r2t_o <= grp_update_values_fu_74_iscsi_connection_parameter_max_outstanding_r2t_o;
        else 
            iscsi_connection_parameter_max_outstanding_r2t_o <= iscsi_connection_parameter_max_outstanding_r2t_i;
        end if; 
    end process;

    iscsi_connection_parameter_max_outstanding_r2t_o_ap_vld <= grp_update_values_fu_74_iscsi_connection_parameter_max_outstanding_r2t_o_ap_vld;

    iscsi_connection_parameter_max_receive_data_segment_length_o_assign_proc : process(iscsi_connection_parameter_max_receive_data_segment_length_i, grp_update_values_fu_74_iscsi_connection_parameter_max_receive_data_segment_length_o, grp_update_values_fu_74_iscsi_connection_parameter_max_receive_data_segment_length_o_ap_vld, ap_CS_fsm_state4)
    begin
        if (((grp_update_values_fu_74_iscsi_connection_parameter_max_receive_data_segment_length_o_ap_vld = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            iscsi_connection_parameter_max_receive_data_segment_length_o <= grp_update_values_fu_74_iscsi_connection_parameter_max_receive_data_segment_length_o;
        else 
            iscsi_connection_parameter_max_receive_data_segment_length_o <= iscsi_connection_parameter_max_receive_data_segment_length_i;
        end if; 
    end process;

    iscsi_connection_parameter_max_receive_data_segment_length_o_ap_vld <= grp_update_values_fu_74_iscsi_connection_parameter_max_receive_data_segment_length_o_ap_vld;

    tcp_in_V_V_TREADY_assign_proc : process(grp_read_byte_array_1_fu_127_stream_ap_uint_32_V_V_TREADY, ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            tcp_in_V_V_TREADY <= grp_read_byte_array_1_fu_127_stream_ap_uint_32_V_V_TREADY;
        else 
            tcp_in_V_V_TREADY <= ap_const_logic_0;
        end if; 
    end process;

end behav;