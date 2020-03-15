-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity write_byte_array_response_text_rom is 
    generic(
             DWIDTH     : integer := 7; 
             AWIDTH     : integer := 6; 
             MEM_SIZE    : integer := 55
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          addr1      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce1       : in std_logic; 
          q1         : out std_logic_vector(DWIDTH-1 downto 0);
          addr2      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce2       : in std_logic; 
          q2         : out std_logic_vector(DWIDTH-1 downto 0);
          addr3      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce3       : in std_logic; 
          q3         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of write_byte_array_response_text_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
signal addr1_tmp : std_logic_vector(AWIDTH-1 downto 0); 
signal addr2_tmp : std_logic_vector(AWIDTH-1 downto 0); 
signal addr3_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem0 : mem_array := (
    0 => "1010100", 1 => "1100001", 2 => "1110010", 3 => "1100111", 
    4 => "1100101", 5 => "1110100", 6 => "1001110", 7 => "1100001", 
    8 => "1101101", 9 => "1100101", 10 => "0111101", 11 => "1101001", 
    12 => "1110001", 13 => "1101110", 14 => "0101110", 15 => "0110010", 
    16 => "0110000", 17 => "0110001", 18 => "0111001", 19 => "0101101", 
    20 => "0110001", 21 => "0110000", 22 => "0101110", 23 => "1100011", 
    24 => "1101000", 25 => "1110101", 26 => "1101100", 27 => "1100001", 
    28 => "0101110", 29 => "1100001", 30 => "1100011", 31 => "0101110", 
    32 => "1110100", 33 => "1101000", 34 => "0111010", 35 => "1101001", 
    36 => "1110011", 37 => "1100011", 38 => "1110011", 39 => "1101001", 
    40 => "0101101", 41 => "1100100", 42 => "1101001", 43 => "1110011", 
    44 => "1101011", 45 => "0101110", 46 => "1110011", 47 => "1101110", 
    48 => "0101110", 49 => "0110001", 50 => "0110010", 51 => "0110011", 
    52 => "0110100", 53 => "0110101", 54 => "0000000" );
signal mem1 : mem_array := (
    0 => "1010100", 1 => "1100001", 2 => "1110010", 3 => "1100111", 
    4 => "1100101", 5 => "1110100", 6 => "1001110", 7 => "1100001", 
    8 => "1101101", 9 => "1100101", 10 => "0111101", 11 => "1101001", 
    12 => "1110001", 13 => "1101110", 14 => "0101110", 15 => "0110010", 
    16 => "0110000", 17 => "0110001", 18 => "0111001", 19 => "0101101", 
    20 => "0110001", 21 => "0110000", 22 => "0101110", 23 => "1100011", 
    24 => "1101000", 25 => "1110101", 26 => "1101100", 27 => "1100001", 
    28 => "0101110", 29 => "1100001", 30 => "1100011", 31 => "0101110", 
    32 => "1110100", 33 => "1101000", 34 => "0111010", 35 => "1101001", 
    36 => "1110011", 37 => "1100011", 38 => "1110011", 39 => "1101001", 
    40 => "0101101", 41 => "1100100", 42 => "1101001", 43 => "1110011", 
    44 => "1101011", 45 => "0101110", 46 => "1110011", 47 => "1101110", 
    48 => "0101110", 49 => "0110001", 50 => "0110010", 51 => "0110011", 
    52 => "0110100", 53 => "0110101", 54 => "0000000" );

attribute syn_rom_style : string;
attribute syn_rom_style of mem0 : signal is "select_rom";
attribute syn_rom_style of mem1 : signal is "select_rom";
attribute ROM_STYLE : string;
attribute ROM_STYLE of mem0 : signal is "distributed";
attribute ROM_STYLE of mem1 : signal is "distributed";

begin 


memory_access_guard_0: process (addr0) 
begin
      addr0_tmp <= addr0;
--synthesis translate_off
      if (CONV_INTEGER(addr0) > mem_size-1) then
           addr0_tmp <= (others => '0');
      else 
           addr0_tmp <= addr0;
      end if;
--synthesis translate_on
end process;

memory_access_guard_1: process (addr1) 
begin
      addr1_tmp <= addr1;
--synthesis translate_off
      if (CONV_INTEGER(addr1) > mem_size-1) then
           addr1_tmp <= (others => '0');
      else 
           addr1_tmp <= addr1;
      end if;
--synthesis translate_on
end process;

memory_access_guard_2: process (addr2) 
begin
      addr2_tmp <= addr2;
--synthesis translate_off
      if (CONV_INTEGER(addr2) > mem_size-1) then
           addr2_tmp <= (others => '0');
      else 
           addr2_tmp <= addr2;
      end if;
--synthesis translate_on
end process;

memory_access_guard_3: process (addr3) 
begin
      addr3_tmp <= addr3;
--synthesis translate_off
      if (CONV_INTEGER(addr3) > mem_size-1) then
           addr3_tmp <= (others => '0');
      else 
           addr3_tmp <= addr3;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem0(CONV_INTEGER(addr0_tmp)); 
        end if;
        if (ce1 = '1') then 
            q1 <= mem0(CONV_INTEGER(addr1_tmp)); 
        end if;
        if (ce2 = '1') then 
            q2 <= mem1(CONV_INTEGER(addr2_tmp)); 
        end if;
        if (ce3 = '1') then 
            q3 <= mem1(CONV_INTEGER(addr3_tmp)); 
        end if;
    end if;
end process;

end rtl;

Library IEEE;
use IEEE.std_logic_1164.all;

entity write_byte_array_response_text is
    generic (
        DataWidth : INTEGER := 7;
        AddressRange : INTEGER := 55;
        AddressWidth : INTEGER := 6);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0);
        address1 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce1 : IN STD_LOGIC;
        q1 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0);
        address2 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce2 : IN STD_LOGIC;
        q2 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0);
        address3 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce3 : IN STD_LOGIC;
        q3 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of write_byte_array_response_text is
    component write_byte_array_response_text_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR;
            addr1 : IN STD_LOGIC_VECTOR;
            ce1 : IN STD_LOGIC;
            q1 : OUT STD_LOGIC_VECTOR;
            addr2 : IN STD_LOGIC_VECTOR;
            ce2 : IN STD_LOGIC;
            q2 : OUT STD_LOGIC_VECTOR;
            addr3 : IN STD_LOGIC_VECTOR;
            ce3 : IN STD_LOGIC;
            q3 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    write_byte_array_response_text_rom_U :  component write_byte_array_response_text_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0,
        addr1 => address1,
        ce1 => ce1,
        q1 => q1,
        addr2 => address2,
        ce2 => ce2,
        q2 => q2,
        addr3 => address3,
        ce3 => ce3,
        q3 => q3);

end architecture;


