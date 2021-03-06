-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2019.1
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity read_byte_array_1 is
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
end;


architecture behav of read_byte_array_1 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv25_3 : STD_LOGIC_VECTOR (24 downto 0) := "0000000000000000000000011";
    constant ap_const_lv32_18 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001111";
    constant ap_const_lv32_10 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010000";
    constant ap_const_lv32_17 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010111";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (2 downto 0) := "001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal stream_ap_uint_32_V_V_TDATA_blk_n : STD_LOGIC;
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal icmp_ln34_fu_153_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln34_1_fu_149_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal zext_ln34_1_reg_238 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_Result_1_reg_246 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_block_state2 : BOOLEAN;
    signal p_Result_2_reg_251 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_fu_232_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal i_0_reg_109 : STD_LOGIC_VECTOR (31 downto 0);
    signal sext_ln36_fu_163_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal sext_ln37_fu_185_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal sext_ln38_fu_216_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal sext_ln39_fu_227_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal trunc_ln681_fu_158_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal zext_ln34_fu_121_p1 : STD_LOGIC_VECTOR (24 downto 0);
    signal add_ln34_fu_125_p2 : STD_LOGIC_VECTOR (24 downto 0);
    signal tmp_fu_131_p4 : STD_LOGIC_VECTOR (22 downto 0);
    signal tmp_13_fu_141_p3 : STD_LOGIC_VECTOR (24 downto 0);
    signal or_ln37_fu_179_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal or_ln38_fu_210_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal or_ln39_fu_221_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (2 downto 0);


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


    i_0_reg_109_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
                i_0_reg_109 <= i_fu_232_p2;
            elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                i_0_reg_109 <= ap_const_lv32_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((icmp_ln34_fu_153_p2 = ap_const_lv1_0) and (stream_ap_uint_32_V_V_TVALID = ap_const_logic_0))) and (icmp_ln34_fu_153_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                p_Result_1_reg_246 <= stream_ap_uint_32_V_V_TDATA(23 downto 16);
                p_Result_2_reg_251 <= stream_ap_uint_32_V_V_TDATA(31 downto 24);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    zext_ln34_1_reg_238(24 downto 2) <= zext_ln34_1_fu_149_p1(24 downto 2);
            end if;
        end if;
    end process;
    zext_ln34_1_reg_238(1 downto 0) <= "00";
    zext_ln34_1_reg_238(31 downto 25) <= "0000000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, stream_ap_uint_32_V_V_TVALID, ap_CS_fsm_state2, icmp_ln34_fu_153_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if ((not(((icmp_ln34_fu_153_p2 = ap_const_lv1_0) and (stream_ap_uint_32_V_V_TVALID = ap_const_logic_0))) and (icmp_ln34_fu_153_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                elsif ((not(((icmp_ln34_fu_153_p2 = ap_const_lv1_0) and (stream_ap_uint_32_V_V_TVALID = ap_const_logic_0))) and (icmp_ln34_fu_153_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state2;
            when others =>  
                ap_NS_fsm <= "XXX";
        end case;
    end process;
    add_ln34_fu_125_p2 <= std_logic_vector(unsigned(zext_ln34_fu_121_p1) + unsigned(ap_const_lv25_3));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);

    ap_block_state2_assign_proc : process(stream_ap_uint_32_V_V_TVALID, icmp_ln34_fu_153_p2)
    begin
                ap_block_state2 <= ((icmp_ln34_fu_153_p2 = ap_const_lv1_0) and (stream_ap_uint_32_V_V_TVALID = ap_const_logic_0));
    end process;


    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, stream_ap_uint_32_V_V_TVALID, ap_CS_fsm_state2, icmp_ln34_fu_153_p2)
    begin
        if (((not(((icmp_ln34_fu_153_p2 = ap_const_lv1_0) and (stream_ap_uint_32_V_V_TVALID = ap_const_logic_0))) and (icmp_ln34_fu_153_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2)) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
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


    ap_ready_assign_proc : process(stream_ap_uint_32_V_V_TVALID, ap_CS_fsm_state2, icmp_ln34_fu_153_p2)
    begin
        if ((not(((icmp_ln34_fu_153_p2 = ap_const_lv1_0) and (stream_ap_uint_32_V_V_TVALID = ap_const_logic_0))) and (icmp_ln34_fu_153_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    data_address0_assign_proc : process(ap_CS_fsm_state2, ap_CS_fsm_state3, sext_ln36_fu_163_p1, sext_ln38_fu_216_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            data_address0 <= sext_ln38_fu_216_p1(13 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            data_address0 <= sext_ln36_fu_163_p1(13 - 1 downto 0);
        else 
            data_address0 <= "XXXXXXXXXXXXX";
        end if; 
    end process;


    data_address1_assign_proc : process(ap_CS_fsm_state2, ap_CS_fsm_state3, sext_ln37_fu_185_p1, sext_ln39_fu_227_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            data_address1 <= sext_ln39_fu_227_p1(13 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            data_address1 <= sext_ln37_fu_185_p1(13 - 1 downto 0);
        else 
            data_address1 <= "XXXXXXXXXXXXX";
        end if; 
    end process;


    data_ce0_assign_proc : process(stream_ap_uint_32_V_V_TVALID, ap_CS_fsm_state2, icmp_ln34_fu_153_p2, ap_CS_fsm_state3)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) or (not(((icmp_ln34_fu_153_p2 = ap_const_lv1_0) and (stream_ap_uint_32_V_V_TVALID = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state2)))) then 
            data_ce0 <= ap_const_logic_1;
        else 
            data_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    data_ce1_assign_proc : process(stream_ap_uint_32_V_V_TVALID, ap_CS_fsm_state2, icmp_ln34_fu_153_p2, ap_CS_fsm_state3)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) or (not(((icmp_ln34_fu_153_p2 = ap_const_lv1_0) and (stream_ap_uint_32_V_V_TVALID = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state2)))) then 
            data_ce1 <= ap_const_logic_1;
        else 
            data_ce1 <= ap_const_logic_0;
        end if; 
    end process;


    data_d0_assign_proc : process(ap_CS_fsm_state2, p_Result_1_reg_246, ap_CS_fsm_state3, trunc_ln681_fu_158_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            data_d0 <= p_Result_1_reg_246;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            data_d0 <= trunc_ln681_fu_158_p1;
        else 
            data_d0 <= "XXXXXXXX";
        end if; 
    end process;


    data_d1_assign_proc : process(stream_ap_uint_32_V_V_TDATA, ap_CS_fsm_state2, p_Result_2_reg_251, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            data_d1 <= p_Result_2_reg_251;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            data_d1 <= stream_ap_uint_32_V_V_TDATA(15 downto 8);
        else 
            data_d1 <= "XXXXXXXX";
        end if; 
    end process;


    data_we0_assign_proc : process(stream_ap_uint_32_V_V_TVALID, ap_CS_fsm_state2, icmp_ln34_fu_153_p2, ap_CS_fsm_state3)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) or (not(((icmp_ln34_fu_153_p2 = ap_const_lv1_0) and (stream_ap_uint_32_V_V_TVALID = ap_const_logic_0))) and (icmp_ln34_fu_153_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2)))) then 
            data_we0 <= ap_const_logic_1;
        else 
            data_we0 <= ap_const_logic_0;
        end if; 
    end process;


    data_we1_assign_proc : process(stream_ap_uint_32_V_V_TVALID, ap_CS_fsm_state2, icmp_ln34_fu_153_p2, ap_CS_fsm_state3)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) or (not(((icmp_ln34_fu_153_p2 = ap_const_lv1_0) and (stream_ap_uint_32_V_V_TVALID = ap_const_logic_0))) and (icmp_ln34_fu_153_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2)))) then 
            data_we1 <= ap_const_logic_1;
        else 
            data_we1 <= ap_const_logic_0;
        end if; 
    end process;

    i_fu_232_p2 <= std_logic_vector(unsigned(ap_const_lv32_4) + unsigned(i_0_reg_109));
    icmp_ln34_fu_153_p2 <= "1" when (i_0_reg_109 = zext_ln34_1_reg_238) else "0";
    or_ln37_fu_179_p2 <= (i_0_reg_109 or ap_const_lv32_1);
    or_ln38_fu_210_p2 <= (i_0_reg_109 or ap_const_lv32_2);
    or_ln39_fu_221_p2 <= (i_0_reg_109 or ap_const_lv32_3);
        sext_ln36_fu_163_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(i_0_reg_109),64));

        sext_ln37_fu_185_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(or_ln37_fu_179_p2),64));

        sext_ln38_fu_216_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(or_ln38_fu_210_p2),64));

        sext_ln39_fu_227_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(or_ln39_fu_221_p2),64));


    stream_ap_uint_32_V_V_TDATA_blk_n_assign_proc : process(stream_ap_uint_32_V_V_TVALID, ap_CS_fsm_state2, icmp_ln34_fu_153_p2)
    begin
        if (((icmp_ln34_fu_153_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            stream_ap_uint_32_V_V_TDATA_blk_n <= stream_ap_uint_32_V_V_TVALID;
        else 
            stream_ap_uint_32_V_V_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    stream_ap_uint_32_V_V_TREADY_assign_proc : process(stream_ap_uint_32_V_V_TVALID, ap_CS_fsm_state2, icmp_ln34_fu_153_p2)
    begin
        if ((not(((icmp_ln34_fu_153_p2 = ap_const_lv1_0) and (stream_ap_uint_32_V_V_TVALID = ap_const_logic_0))) and (icmp_ln34_fu_153_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            stream_ap_uint_32_V_V_TREADY <= ap_const_logic_1;
        else 
            stream_ap_uint_32_V_V_TREADY <= ap_const_logic_0;
        end if; 
    end process;

    tmp_13_fu_141_p3 <= (tmp_fu_131_p4 & ap_const_lv2_0);
    tmp_fu_131_p4 <= add_ln34_fu_125_p2(24 downto 2);
    trunc_ln681_fu_158_p1 <= stream_ap_uint_32_V_V_TDATA(8 - 1 downto 0);
    zext_ln34_1_fu_149_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_13_fu_141_p3),32));
    zext_ln34_fu_121_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(length_r),25));
end behav;
