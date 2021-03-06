-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2019.1
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity write_byte_array_1 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    stream_ap_uint_32_V_V_TDATA : OUT STD_LOGIC_VECTOR (31 downto 0);
    stream_ap_uint_32_V_V_TVALID : OUT STD_LOGIC;
    stream_ap_uint_32_V_V_TREADY : IN STD_LOGIC;
    data_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    data_ce0 : OUT STD_LOGIC;
    data_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    data_address1 : OUT STD_LOGIC_VECTOR (5 downto 0);
    data_ce1 : OUT STD_LOGIC;
    data_q1 : IN STD_LOGIC_VECTOR (7 downto 0) );
end;


architecture behav of write_byte_array_1 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (3 downto 0) := "0100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv6_0 : STD_LOGIC_VECTOR (5 downto 0) := "000000";
    constant ap_const_lv6_30 : STD_LOGIC_VECTOR (5 downto 0) := "110000";
    constant ap_const_lv6_1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_const_lv6_2 : STD_LOGIC_VECTOR (5 downto 0) := "000010";
    constant ap_const_lv6_3 : STD_LOGIC_VECTOR (5 downto 0) := "000011";
    constant ap_const_lv6_4 : STD_LOGIC_VECTOR (5 downto 0) := "000100";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal stream_ap_uint_32_V_V_TDATA_blk_n : STD_LOGIC;
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal icmp_ln22_fu_96_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal data_load_4_reg_170 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal data_load_reg_175 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_fu_140_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal i_reg_190 : STD_LOGIC_VECTOR (5 downto 0);
    signal i_0_reg_84 : STD_LOGIC_VECTOR (5 downto 0);
    signal zext_ln23_fu_102_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln24_fu_113_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln25_fu_124_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln26_fu_135_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal or_ln24_fu_107_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal or_ln25_fu_118_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal or_ln26_fu_129_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (3 downto 0);


begin




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


    i_0_reg_84_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((stream_ap_uint_32_V_V_TREADY = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                i_0_reg_84 <= i_reg_190;
            elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                i_0_reg_84 <= ap_const_lv6_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                data_load_4_reg_170 <= data_q0;
                data_load_reg_175 <= data_q1;
                i_reg_190 <= i_fu_140_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, stream_ap_uint_32_V_V_TREADY, ap_CS_fsm_state4, ap_CS_fsm_state2, icmp_ln22_fu_96_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((icmp_ln22_fu_96_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                if (((stream_ap_uint_32_V_V_TREADY = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
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

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state2, icmp_ln22_fu_96_p2)
    begin
        if ((((icmp_ln22_fu_96_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2)) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
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


    ap_ready_assign_proc : process(ap_CS_fsm_state2, icmp_ln22_fu_96_p2)
    begin
        if (((icmp_ln22_fu_96_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    data_address0_assign_proc : process(ap_CS_fsm_state2, ap_CS_fsm_state3, zext_ln23_fu_102_p1, zext_ln25_fu_124_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            data_address0 <= zext_ln25_fu_124_p1(6 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            data_address0 <= zext_ln23_fu_102_p1(6 - 1 downto 0);
        else 
            data_address0 <= "XXXXXX";
        end if; 
    end process;


    data_address1_assign_proc : process(ap_CS_fsm_state2, ap_CS_fsm_state3, zext_ln24_fu_113_p1, zext_ln26_fu_135_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            data_address1 <= zext_ln26_fu_135_p1(6 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            data_address1 <= zext_ln24_fu_113_p1(6 - 1 downto 0);
        else 
            data_address1 <= "XXXXXX";
        end if; 
    end process;


    data_ce0_assign_proc : process(ap_CS_fsm_state2, ap_CS_fsm_state3)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            data_ce0 <= ap_const_logic_1;
        else 
            data_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    data_ce1_assign_proc : process(ap_CS_fsm_state2, ap_CS_fsm_state3)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            data_ce1 <= ap_const_logic_1;
        else 
            data_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    i_fu_140_p2 <= std_logic_vector(unsigned(i_0_reg_84) + unsigned(ap_const_lv6_4));
    icmp_ln22_fu_96_p2 <= "1" when (unsigned(i_0_reg_84) < unsigned(ap_const_lv6_30)) else "0";
    or_ln24_fu_107_p2 <= (i_0_reg_84 or ap_const_lv6_1);
    or_ln25_fu_118_p2 <= (i_0_reg_84 or ap_const_lv6_2);
    or_ln26_fu_129_p2 <= (i_0_reg_84 or ap_const_lv6_3);
    stream_ap_uint_32_V_V_TDATA <= (((data_q1 & data_q0) & data_load_reg_175) & data_load_4_reg_170);

    stream_ap_uint_32_V_V_TDATA_blk_n_assign_proc : process(stream_ap_uint_32_V_V_TREADY, ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            stream_ap_uint_32_V_V_TDATA_blk_n <= stream_ap_uint_32_V_V_TREADY;
        else 
            stream_ap_uint_32_V_V_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    stream_ap_uint_32_V_V_TVALID_assign_proc : process(stream_ap_uint_32_V_V_TREADY, ap_CS_fsm_state4)
    begin
        if (((stream_ap_uint_32_V_V_TREADY = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            stream_ap_uint_32_V_V_TVALID <= ap_const_logic_1;
        else 
            stream_ap_uint_32_V_V_TVALID <= ap_const_logic_0;
        end if; 
    end process;

    zext_ln23_fu_102_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_0_reg_84),64));
    zext_ln24_fu_113_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(or_ln24_fu_107_p2),64));
    zext_ln25_fu_124_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(or_ln25_fu_118_p2),64));
    zext_ln26_fu_135_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(or_ln26_fu_129_p2),64));
end behav;
