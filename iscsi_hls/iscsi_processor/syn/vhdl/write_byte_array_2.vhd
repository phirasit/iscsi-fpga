-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2019.1
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity write_byte_array_2 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    stream_ap_uint_32_V_V_TDATA : OUT STD_LOGIC_VECTOR (31 downto 0);
    stream_ap_uint_32_V_V_TVALID : OUT STD_LOGIC;
    stream_ap_uint_32_V_V_TREADY : IN STD_LOGIC );
end;


architecture behav of write_byte_array_2 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv5_F : STD_LOGIC_VECTOR (4 downto 0) := "01111";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_lv4_2 : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    constant ap_const_lv4_3 : STD_LOGIC_VECTOR (3 downto 0) := "0011";
    constant ap_const_lv4_F : STD_LOGIC_VECTOR (3 downto 0) := "1111";
    constant ap_const_lv5_4 : STD_LOGIC_VECTOR (4 downto 0) := "00100";
    constant ap_const_lv7_0 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (2 downto 0) := "001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal authentication_respo_address0 : STD_LOGIC_VECTOR (3 downto 0);
    signal authentication_respo_ce0 : STD_LOGIC;
    signal authentication_respo_q0 : STD_LOGIC_VECTOR (6 downto 0);
    signal authentication_respo_address1 : STD_LOGIC_VECTOR (3 downto 0);
    signal authentication_respo_ce1 : STD_LOGIC;
    signal authentication_respo_q1 : STD_LOGIC_VECTOR (6 downto 0);
    signal authentication_respo_address2 : STD_LOGIC_VECTOR (3 downto 0);
    signal authentication_respo_ce2 : STD_LOGIC;
    signal authentication_respo_q2 : STD_LOGIC_VECTOR (6 downto 0);
    signal authentication_respo_address3 : STD_LOGIC_VECTOR (3 downto 0);
    signal authentication_respo_ce3 : STD_LOGIC;
    signal authentication_respo_q3 : STD_LOGIC_VECTOR (6 downto 0);
    signal stream_ap_uint_32_V_V_TDATA_blk_n : STD_LOGIC;
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal icmp_ln22_fu_107_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln26_fu_150_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln26_reg_221 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_fu_161_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal i_reg_231 : STD_LOGIC_VECTOR (4 downto 0);
    signal i_0_reg_96 : STD_LOGIC_VECTOR (4 downto 0);
    signal zext_ln23_fu_113_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln24_fu_128_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln25_fu_139_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln26_fu_156_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal trunc_ln22_fu_118_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal or_ln24_fu_122_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal or_ln25_fu_133_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal or_ln26_fu_144_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal select_ln26_fu_179_p3 : STD_LOGIC_VECTOR (6 downto 0);
    signal zext_ln25_1_fu_175_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal zext_ln24_1_fu_171_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal zext_ln23_1_fu_167_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_fu_186_p5 : STD_LOGIC_VECTOR (30 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (2 downto 0);

    component write_byte_array_2_authentication_respo IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (3 downto 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR (6 downto 0);
        address1 : IN STD_LOGIC_VECTOR (3 downto 0);
        ce1 : IN STD_LOGIC;
        q1 : OUT STD_LOGIC_VECTOR (6 downto 0);
        address2 : IN STD_LOGIC_VECTOR (3 downto 0);
        ce2 : IN STD_LOGIC;
        q2 : OUT STD_LOGIC_VECTOR (6 downto 0);
        address3 : IN STD_LOGIC_VECTOR (3 downto 0);
        ce3 : IN STD_LOGIC;
        q3 : OUT STD_LOGIC_VECTOR (6 downto 0) );
    end component;



begin
    authentication_respo_U : component write_byte_array_2_authentication_respo
    generic map (
        DataWidth => 7,
        AddressRange => 16,
        AddressWidth => 4)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => authentication_respo_address0,
        ce0 => authentication_respo_ce0,
        q0 => authentication_respo_q0,
        address1 => authentication_respo_address1,
        ce1 => authentication_respo_ce1,
        q1 => authentication_respo_q1,
        address2 => authentication_respo_address2,
        ce2 => authentication_respo_ce2,
        q2 => authentication_respo_q2,
        address3 => authentication_respo_address3,
        ce3 => authentication_respo_ce3,
        q3 => authentication_respo_q3);





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


    i_0_reg_96_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((stream_ap_uint_32_V_V_TREADY = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                i_0_reg_96 <= i_reg_231;
            elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                i_0_reg_96 <= ap_const_lv5_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln22_fu_107_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                i_reg_231 <= i_fu_161_p2;
                icmp_ln26_reg_221 <= icmp_ln26_fu_150_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, stream_ap_uint_32_V_V_TREADY, ap_CS_fsm_state3, ap_CS_fsm_state2, icmp_ln22_fu_107_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((icmp_ln22_fu_107_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((stream_ap_uint_32_V_V_TREADY = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when others =>  
                ap_NS_fsm <= "XXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state2, icmp_ln22_fu_107_p2)
    begin
        if ((((icmp_ln22_fu_107_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2)) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
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


    ap_ready_assign_proc : process(ap_CS_fsm_state2, icmp_ln22_fu_107_p2)
    begin
        if (((icmp_ln22_fu_107_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    authentication_respo_address0 <= zext_ln23_fu_113_p1(4 - 1 downto 0);
    authentication_respo_address1 <= zext_ln24_fu_128_p1(4 - 1 downto 0);
    authentication_respo_address2 <= zext_ln25_fu_139_p1(4 - 1 downto 0);
    authentication_respo_address3 <= zext_ln26_fu_156_p1(4 - 1 downto 0);

    authentication_respo_ce0_assign_proc : process(ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            authentication_respo_ce0 <= ap_const_logic_1;
        else 
            authentication_respo_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    authentication_respo_ce1_assign_proc : process(ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            authentication_respo_ce1 <= ap_const_logic_1;
        else 
            authentication_respo_ce1 <= ap_const_logic_0;
        end if; 
    end process;


    authentication_respo_ce2_assign_proc : process(ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            authentication_respo_ce2 <= ap_const_logic_1;
        else 
            authentication_respo_ce2 <= ap_const_logic_0;
        end if; 
    end process;


    authentication_respo_ce3_assign_proc : process(ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            authentication_respo_ce3 <= ap_const_logic_1;
        else 
            authentication_respo_ce3 <= ap_const_logic_0;
        end if; 
    end process;

    i_fu_161_p2 <= std_logic_vector(unsigned(ap_const_lv5_4) + unsigned(i_0_reg_96));
    icmp_ln22_fu_107_p2 <= "1" when (unsigned(i_0_reg_96) < unsigned(ap_const_lv5_F)) else "0";
    icmp_ln26_fu_150_p2 <= "0" when (or_ln26_fu_144_p2 = ap_const_lv4_F) else "1";
    or_ln24_fu_122_p2 <= (trunc_ln22_fu_118_p1 or ap_const_lv4_1);
    or_ln25_fu_133_p2 <= (trunc_ln22_fu_118_p1 or ap_const_lv4_2);
    or_ln26_fu_144_p2 <= (trunc_ln22_fu_118_p1 or ap_const_lv4_3);
    select_ln26_fu_179_p3 <= 
        authentication_respo_q3 when (icmp_ln26_reg_221(0) = '1') else 
        ap_const_lv7_0;
    stream_ap_uint_32_V_V_TDATA <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_fu_186_p5),32));

    stream_ap_uint_32_V_V_TDATA_blk_n_assign_proc : process(stream_ap_uint_32_V_V_TREADY, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            stream_ap_uint_32_V_V_TDATA_blk_n <= stream_ap_uint_32_V_V_TREADY;
        else 
            stream_ap_uint_32_V_V_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    stream_ap_uint_32_V_V_TVALID_assign_proc : process(stream_ap_uint_32_V_V_TREADY, ap_CS_fsm_state3)
    begin
        if (((stream_ap_uint_32_V_V_TREADY = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            stream_ap_uint_32_V_V_TVALID <= ap_const_logic_1;
        else 
            stream_ap_uint_32_V_V_TVALID <= ap_const_logic_0;
        end if; 
    end process;

    tmp_fu_186_p5 <= (((select_ln26_fu_179_p3 & zext_ln25_1_fu_175_p1) & zext_ln24_1_fu_171_p1) & zext_ln23_1_fu_167_p1);
    trunc_ln22_fu_118_p1 <= i_0_reg_96(4 - 1 downto 0);
    zext_ln23_1_fu_167_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(authentication_respo_q0),8));
    zext_ln23_fu_113_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_0_reg_96),64));
    zext_ln24_1_fu_171_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(authentication_respo_q1),8));
    zext_ln24_fu_128_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(or_ln24_fu_122_p2),64));
    zext_ln25_1_fu_175_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(authentication_respo_q2),8));
    zext_ln25_fu_139_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(or_ln25_fu_133_p2),64));
    zext_ln26_fu_156_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(or_ln26_fu_144_p2),64));
end behav;