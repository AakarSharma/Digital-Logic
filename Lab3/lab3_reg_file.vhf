--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : lab3_reg_file.vhf
-- /___/   /\     Timestamp : 09/10/2017 18:57:47
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: /opt/Xilinx/14.7/ISE_DS/ISE/bin/lin64/unwrapped/sch2hdl -intstyle ise -family artix7 -flat -suppress -vhdl lab3_reg_file.vhf -w /home/kgopal/lab3_reg_file/lab3_reg_file.sch
--Design Name: lab3_reg_file
--Device: artix7
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL M8_1E_HXILINX_lab3_reg_file -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M8_1E_HXILINX_lab3_reg_file is
  
port(
    O   : out std_logic;

    D0  : in std_logic;
    D1  : in std_logic;
    D2  : in std_logic;
    D3  : in std_logic;
    D4  : in std_logic;
    D5  : in std_logic;
    D6  : in std_logic;
    D7  : in std_logic;
    E   : in std_logic;
    S0  : in std_logic;
    S1  : in std_logic;
    S2  : in std_logic
  );
end M8_1E_HXILINX_lab3_reg_file;

architecture M8_1E_HXILINX_lab3_reg_file_V of M8_1E_HXILINX_lab3_reg_file is
begin
  process (D0, D1, D2, D3, D4, D5, D6, D7, E, S0, S1, S2)
  variable sel : std_logic_vector(2 downto 0);
  begin
    sel := S2&S1&S0;
    if( E = '0') then
    O <= '0';
    else
      case sel is
      when "000" => O <= D0;
      when "001" => O <= D1;
      when "010" => O <= D2;
      when "011" => O <= D3;
      when "100" => O <= D4;
      when "101" => O <= D5;
      when "110" => O <= D6;
      when "111" => O <= D7;
      when others => NULL;
      end case;
    end if;
    end process; 
end M8_1E_HXILINX_lab3_reg_file_V;
----- CELL M2_1_HXILINX_lab3_reg_file -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M2_1_HXILINX_lab3_reg_file is
  
port(
    O   : out std_logic;

    D0  : in std_logic;
    D1  : in std_logic;
    S0  : in std_logic
  );
end M2_1_HXILINX_lab3_reg_file;

architecture M2_1_HXILINX_lab3_reg_file_V of M2_1_HXILINX_lab3_reg_file is
begin
  process (D0, D1, S0)
  begin
    case S0 is
    when '0' => O <= D0;
    when '1' => O <= D1;
    when others => NULL;
    end case;
    end process; 
end M2_1_HXILINX_lab3_reg_file_V;

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity xorbus_MUSER_lab3_reg_file is
   port ( read1  : in    std_logic_vector (3 downto 0); 
          read2  : in    std_logic_vector (3 downto 0); 
          result : out   std_logic_vector (3 downto 0));
end xorbus_MUSER_lab3_reg_file;

architecture BEHAVIORAL of xorbus_MUSER_lab3_reg_file is
   attribute BOX_TYPE   : string ;
   component XOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XOR2 : component is "BLACK_BOX";
   
begin
   XLXI_1 : XOR2
      port map (I0=>read2(0),
                I1=>read1(0),
                O=>result(0));
   
   XLXI_2 : XOR2
      port map (I0=>read2(1),
                I1=>read1(1),
                O=>result(1));
   
   XLXI_3 : XOR2
      port map (I0=>read2(2),
                I1=>read1(2),
                O=>result(2));
   
   XLXI_4 : XOR2
      port map (I0=>read2(3),
                I1=>read1(3),
                O=>result(3));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity MUX_sp_MUSER_lab3_reg_file is
   port ( add    : in    std_logic_vector (2 downto 0); 
          reg1   : in    std_logic_vector (3 downto 0); 
          reg2   : in    std_logic_vector (3 downto 0); 
          reg3   : in    std_logic_vector (3 downto 0); 
          reg4   : in    std_logic_vector (3 downto 0); 
          reg5   : in    std_logic_vector (3 downto 0); 
          reg6   : in    std_logic_vector (3 downto 0); 
          reg7   : in    std_logic_vector (3 downto 0); 
          reg8   : in    std_logic_vector (3 downto 0); 
          result : out   std_logic_vector (3 downto 0));
end MUX_sp_MUSER_lab3_reg_file;

architecture BEHAVIORAL of MUX_sp_MUSER_lab3_reg_file is
   attribute HU_SET     : string ;
   signal XLXN_21 : std_logic;
   signal XLXN_33 : std_logic;
   signal XLXN_45 : std_logic;
   signal XLXN_58 : std_logic;
   component M8_1E_HXILINX_lab3_reg_file
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             D2 : in    std_logic; 
             D3 : in    std_logic; 
             D4 : in    std_logic; 
             D5 : in    std_logic; 
             D6 : in    std_logic; 
             D7 : in    std_logic; 
             E  : in    std_logic; 
             S0 : in    std_logic; 
             S1 : in    std_logic; 
             S2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_0";
   attribute HU_SET of XLXI_2 : label is "XLXI_2_1";
   attribute HU_SET of XLXI_3 : label is "XLXI_3_2";
   attribute HU_SET of XLXI_4 : label is "XLXI_4_3";
begin
   XLXN_21 <= '1';
   XLXN_33 <= '1';
   XLXN_45 <= '1';
   XLXN_58 <= '1';
   XLXI_1 : M8_1E_HXILINX_lab3_reg_file
      port map (D0=>reg1(0),
                D1=>reg2(0),
                D2=>reg3(0),
                D3=>reg4(0),
                D4=>reg5(0),
                D5=>reg6(0),
                D6=>reg7(0),
                D7=>reg8(0),
                E=>XLXN_21,
                S0=>add(0),
                S1=>add(1),
                S2=>add(2),
                O=>result(0));
   
   XLXI_2 : M8_1E_HXILINX_lab3_reg_file
      port map (D0=>reg1(1),
                D1=>reg2(1),
                D2=>reg3(1),
                D3=>reg4(1),
                D4=>reg5(1),
                D5=>reg6(1),
                D6=>reg7(1),
                D7=>reg8(1),
                E=>XLXN_45,
                S0=>add(0),
                S1=>add(1),
                S2=>add(2),
                O=>result(1));
   
   XLXI_3 : M8_1E_HXILINX_lab3_reg_file
      port map (D0=>reg1(2),
                D1=>reg2(2),
                D2=>reg3(2),
                D3=>reg4(2),
                D4=>reg5(2),
                D5=>reg6(2),
                D6=>reg7(2),
                D7=>reg8(2),
                E=>XLXN_33,
                S0=>add(0),
                S1=>add(1),
                S2=>add(2),
                O=>result(2));
   
   XLXI_4 : M8_1E_HXILINX_lab3_reg_file
      port map (D0=>reg1(3),
                D1=>reg2(3),
                D2=>reg3(3),
                D3=>reg4(3),
                D4=>reg5(3),
                D5=>reg6(3),
                D6=>reg7(3),
                D7=>reg8(3),
                E=>XLXN_58,
                S0=>add(0),
                S1=>add(1),
                S2=>add(2),
                O=>result(3));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Demux1_MUSER_lab3_reg_file is
   port ( INP : in    std_logic; 
          S   : in    std_logic_vector (2 downto 0); 
          O1  : out   std_logic; 
          O2  : out   std_logic; 
          O3  : out   std_logic; 
          O4  : out   std_logic; 
          O5  : out   std_logic; 
          O6  : out   std_logic; 
          O7  : out   std_logic; 
          O8  : out   std_logic);
end Demux1_MUSER_lab3_reg_file;

architecture BEHAVIORAL of Demux1_MUSER_lab3_reg_file is
   attribute BOX_TYPE   : string ;
   signal XLXN_1  : std_logic;
   signal XLXN_2  : std_logic;
   signal XLXN_3  : std_logic;
   signal XLXN_4  : std_logic;
   signal XLXN_5  : std_logic;
   signal XLXN_6  : std_logic;
   signal XLXN_7  : std_logic;
   signal XLXN_8  : std_logic;
   signal XLXN_9  : std_logic;
   signal XLXN_10 : std_logic;
   signal XLXN_11 : std_logic;
   signal XLXN_12 : std_logic;
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component AND4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4 : component is "BLACK_BOX";
   
begin
   XLXI_9 : INV
      port map (I=>S(1),
                O=>XLXN_1);
   
   XLXI_10 : INV
      port map (I=>S(2),
                O=>XLXN_2);
   
   XLXI_11 : INV
      port map (I=>S(0),
                O=>XLXN_3);
   
   XLXI_12 : INV
      port map (I=>S(2),
                O=>XLXN_4);
   
   XLXI_13 : INV
      port map (I=>S(1),
                O=>XLXN_5);
   
   XLXI_14 : INV
      port map (I=>S(2),
                O=>XLXN_6);
   
   XLXI_15 : INV
      port map (I=>S(0),
                O=>XLXN_7);
   
   XLXI_16 : INV
      port map (I=>S(2),
                O=>XLXN_8);
   
   XLXI_17 : INV
      port map (I=>S(0),
                O=>XLXN_9);
   
   XLXI_18 : INV
      port map (I=>S(1),
                O=>XLXN_10);
   
   XLXI_19 : INV
      port map (I=>S(1),
                O=>XLXN_11);
   
   XLXI_20 : INV
      port map (I=>S(0),
                O=>XLXN_12);
   
   XLXI_22 : AND4
      port map (I0=>INP,
                I1=>XLXN_3,
                I2=>XLXN_1,
                I3=>XLXN_2,
                O=>O1);
   
   XLXI_23 : AND4
      port map (I0=>INP,
                I1=>S(0),
                I2=>XLXN_5,
                I3=>XLXN_4,
                O=>O2);
   
   XLXI_24 : AND4
      port map (I0=>INP,
                I1=>XLXN_7,
                I2=>S(1),
                I3=>XLXN_6,
                O=>O3);
   
   XLXI_25 : AND4
      port map (I0=>INP,
                I1=>S(0),
                I2=>S(1),
                I3=>XLXN_8,
                O=>O4);
   
   XLXI_26 : AND4
      port map (I0=>INP,
                I1=>XLXN_9,
                I2=>XLXN_10,
                I3=>S(2),
                O=>O5);
   
   XLXI_27 : AND4
      port map (I0=>INP,
                I1=>S(0),
                I2=>XLXN_11,
                I3=>S(2),
                O=>O6);
   
   XLXI_28 : AND4
      port map (I0=>INP,
                I1=>XLXN_12,
                I2=>S(1),
                I3=>S(2),
                O=>O7);
   
   XLXI_29 : AND4
      port map (I0=>INP,
                I1=>S(0),
                I2=>S(1),
                I3=>S(2),
                O=>O8);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity DemuxF_MUSER_lab3_reg_file is
   port ( add  : in    std_logic_vector (2 downto 0); 
          INP  : in    std_logic_vector (3 downto 0); 
          reg1 : out   std_logic_vector (3 downto 0); 
          reg2 : out   std_logic_vector (3 downto 0); 
          reg3 : out   std_logic_vector (3 downto 0); 
          reg4 : out   std_logic_vector (3 downto 0); 
          reg5 : out   std_logic_vector (3 downto 0); 
          reg6 : out   std_logic_vector (3 downto 0); 
          reg7 : out   std_logic_vector (3 downto 0); 
          reg8 : out   std_logic_vector (3 downto 0));
end DemuxF_MUSER_lab3_reg_file;

architecture BEHAVIORAL of DemuxF_MUSER_lab3_reg_file is
   signal reg6_DUMMY : std_logic_vector (3 downto 0);
   component Demux1_MUSER_lab3_reg_file
      port ( INP : in    std_logic; 
             O1  : out   std_logic; 
             O2  : out   std_logic; 
             O3  : out   std_logic; 
             O4  : out   std_logic; 
             O5  : out   std_logic; 
             O6  : inout std_logic; 
             O7  : out   std_logic; 
             O8  : out   std_logic; 
             S   : in    std_logic_vector (2 downto 0));
   end component;
   
begin
   reg6(3 downto 0) <= reg6_DUMMY(3 downto 0);
   XLXI_1 : Demux1_MUSER_lab3_reg_file
      port map (INP=>INP(0),
                S(2 downto 0)=>add(2 downto 0),
                O1=>reg1(0),
                O2=>reg2(0),
                O3=>reg3(0),
                O4=>reg4(0),
                O5=>reg5(0),
                O7=>reg7(0),
                O8=>reg8(0),
                O6=>reg6_DUMMY(0));
   
   XLXI_2 : Demux1_MUSER_lab3_reg_file
      port map (INP=>INP(1),
                S(2 downto 0)=>add(2 downto 0),
                O1=>reg1(1),
                O2=>reg2(1),
                O3=>reg3(1),
                O4=>reg4(1),
                O5=>reg5(1),
                O7=>reg7(1),
                O8=>reg8(1),
                O6=>reg6_DUMMY(1));
   
   XLXI_3 : Demux1_MUSER_lab3_reg_file
      port map (INP=>INP(2),
                S(2 downto 0)=>add(2 downto 0),
                O1=>reg1(2),
                O2=>reg2(2),
                O3=>reg3(2),
                O4=>reg4(2),
                O5=>reg5(2),
                O7=>reg7(2),
                O8=>reg8(2),
                O6=>reg6_DUMMY(2));
   
   XLXI_4 : Demux1_MUSER_lab3_reg_file
      port map (INP=>INP(3),
                S(2 downto 0)=>add(2 downto 0),
                O1=>reg1(3),
                O2=>reg2(3),
                O3=>reg3(3),
                O4=>reg4(3),
                O5=>reg5(3),
                O7=>reg7(3),
                O8=>reg8(3),
                O6=>reg6_DUMMY(3));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Resistor_MUSER_lab3_reg_file is
   port ( clock  : in    std_logic; 
          Input  : in    std_logic_vector (3 downto 0); 
          Output : out   std_logic_vector (3 downto 0));
end Resistor_MUSER_lab3_reg_file;

architecture BEHAVIORAL of Resistor_MUSER_lab3_reg_file is
   attribute BOX_TYPE   : string ;
   component FD
      generic( INIT : bit :=  '0');
      port ( C : in    std_logic; 
             D : in    std_logic; 
             Q : out   std_logic);
   end component;
   attribute BOX_TYPE of FD : component is "BLACK_BOX";
   
begin
   XLXI_1 : FD
      port map (C=>clock,
                D=>Input(0),
                Q=>Output(0));
   
   XLXI_2 : FD
      port map (C=>clock,
                D=>Input(1),
                Q=>Output(1));
   
   XLXI_3 : FD
      port map (C=>clock,
                D=>Input(2),
                Q=>Output(2));
   
   XLXI_4 : FD
      port map (C=>clock,
                D=>Input(3),
                Q=>Output(3));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Resistor_File_MUSER_lab3_reg_file is
   port ( clk        : in    std_logic; 
          datain     : in    std_logic_vector (3 downto 0); 
          read_add1  : in    std_logic_vector (2 downto 0); 
          read_add2  : in    std_logic_vector (2 downto 0); 
          write_add  : in    std_logic_vector (2 downto 0); 
          read_data1 : out   std_logic_vector (3 downto 0); 
          read_data2 : out   std_logic_vector (3 downto 0));
end Resistor_File_MUSER_lab3_reg_file;

architecture BEHAVIORAL of Resistor_File_MUSER_lab3_reg_file is
   signal XLXN_1     : std_logic_vector (3 downto 0);
   signal XLXN_2     : std_logic_vector (3 downto 0);
   signal XLXN_3     : std_logic_vector (3 downto 0);
   signal XLXN_4     : std_logic_vector (3 downto 0);
   signal XLXN_5     : std_logic_vector (3 downto 0);
   signal XLXN_6     : std_logic_vector (3 downto 0);
   signal XLXN_7     : std_logic_vector (3 downto 0);
   signal XLXN_8     : std_logic_vector (3 downto 0);
   signal XLXN_16    : std_logic_vector (3 downto 0);
   signal XLXN_17    : std_logic_vector (3 downto 0);
   signal XLXN_18    : std_logic_vector (3 downto 0);
   signal XLXN_19    : std_logic_vector (3 downto 0);
   signal XLXN_20    : std_logic_vector (3 downto 0);
   signal XLXN_21    : std_logic_vector (3 downto 0);
   signal XLXN_22    : std_logic_vector (3 downto 0);
   signal XLXN_23    : std_logic_vector (3 downto 0);
   component Resistor_MUSER_lab3_reg_file
      port ( Input  : in    std_logic_vector (3 downto 0); 
             clock  : in    std_logic; 
             Output : out   std_logic_vector (3 downto 0));
   end component;
   
   component DemuxF_MUSER_lab3_reg_file
      port ( add  : in    std_logic_vector (2 downto 0); 
             INP  : in    std_logic_vector (3 downto 0); 
             reg1 : out   std_logic_vector (3 downto 0); 
             reg2 : out   std_logic_vector (3 downto 0); 
             reg3 : out   std_logic_vector (3 downto 0); 
             reg4 : out   std_logic_vector (3 downto 0); 
             reg5 : out   std_logic_vector (3 downto 0); 
             reg6 : out   std_logic_vector (3 downto 0); 
             reg7 : out   std_logic_vector (3 downto 0); 
             reg8 : out   std_logic_vector (3 downto 0));
   end component;
   
   component MUX_sp_MUSER_lab3_reg_file
      port ( add    : in    std_logic_vector (2 downto 0); 
             reg1   : in    std_logic_vector (3 downto 0); 
             reg2   : in    std_logic_vector (3 downto 0); 
             reg3   : in    std_logic_vector (3 downto 0); 
             reg4   : in    std_logic_vector (3 downto 0); 
             reg5   : in    std_logic_vector (3 downto 0); 
             reg6   : in    std_logic_vector (3 downto 0); 
             reg7   : in    std_logic_vector (3 downto 0); 
             reg8   : in    std_logic_vector (3 downto 0); 
             result : out   std_logic_vector (3 downto 0));
   end component;
   
begin
   XLXI_1 : Resistor_MUSER_lab3_reg_file
      port map (clock=>clk,
                Input(3 downto 0)=>XLXN_1(3 downto 0),
                Output(3 downto 0)=>XLXN_16(3 downto 0));
   
   XLXI_2 : Resistor_MUSER_lab3_reg_file
      port map (clock=>clk,
                Input(3 downto 0)=>XLXN_2(3 downto 0),
                Output(3 downto 0)=>XLXN_17(3 downto 0));
   
   XLXI_3 : Resistor_MUSER_lab3_reg_file
      port map (clock=>clk,
                Input(3 downto 0)=>XLXN_3(3 downto 0),
                Output(3 downto 0)=>XLXN_18(3 downto 0));
   
   XLXI_4 : Resistor_MUSER_lab3_reg_file
      port map (clock=>clk,
                Input(3 downto 0)=>XLXN_4(3 downto 0),
                Output(3 downto 0)=>XLXN_19(3 downto 0));
   
   XLXI_5 : Resistor_MUSER_lab3_reg_file
      port map (clock=>clk,
                Input(3 downto 0)=>XLXN_5(3 downto 0),
                Output(3 downto 0)=>XLXN_20(3 downto 0));
   
   XLXI_6 : Resistor_MUSER_lab3_reg_file
      port map (clock=>clk,
                Input(3 downto 0)=>XLXN_6(3 downto 0),
                Output(3 downto 0)=>XLXN_21(3 downto 0));
   
   XLXI_7 : Resistor_MUSER_lab3_reg_file
      port map (clock=>clk,
                Input(3 downto 0)=>XLXN_7(3 downto 0),
                Output(3 downto 0)=>XLXN_22(3 downto 0));
   
   XLXI_8 : Resistor_MUSER_lab3_reg_file
      port map (clock=>clk,
                Input(3 downto 0)=>XLXN_8(3 downto 0),
                Output(3 downto 0)=>XLXN_23(3 downto 0));
   
   XLXI_9 : DemuxF_MUSER_lab3_reg_file
      port map (add(2 downto 0)=>write_add(2 downto 0),
                INP(3 downto 0)=>datain(3 downto 0),
                reg1(3 downto 0)=>XLXN_1(3 downto 0),
                reg2(3 downto 0)=>XLXN_2(3 downto 0),
                reg3(3 downto 0)=>XLXN_3(3 downto 0),
                reg4(3 downto 0)=>XLXN_4(3 downto 0),
                reg5(3 downto 0)=>XLXN_5(3 downto 0),
                reg6(3 downto 0)=>XLXN_6(3 downto 0),
                reg7(3 downto 0)=>XLXN_7(3 downto 0),
                reg8(3 downto 0)=>XLXN_8(3 downto 0));
   
   XLXI_23 : MUX_sp_MUSER_lab3_reg_file
      port map (add(2 downto 0)=>read_add1(2 downto 0),
                reg1(3 downto 0)=>XLXN_16(3 downto 0),
                reg2(3 downto 0)=>XLXN_17(3 downto 0),
                reg3(3 downto 0)=>XLXN_18(3 downto 0),
                reg4(3 downto 0)=>XLXN_19(3 downto 0),
                reg5(3 downto 0)=>XLXN_20(3 downto 0),
                reg6(3 downto 0)=>XLXN_21(3 downto 0),
                reg7(3 downto 0)=>XLXN_22(3 downto 0),
                reg8(3 downto 0)=>XLXN_23(3 downto 0),
                result(3 downto 0)=>read_data1(3 downto 0));
   
   XLXI_24 : MUX_sp_MUSER_lab3_reg_file
      port map (add(2 downto 0)=>read_add2(2 downto 0),
                reg1(3 downto 0)=>XLXN_16(3 downto 0),
                reg2(3 downto 0)=>XLXN_17(3 downto 0),
                reg3(3 downto 0)=>XLXN_18(3 downto 0),
                reg4(3 downto 0)=>XLXN_19(3 downto 0),
                reg5(3 downto 0)=>XLXN_20(3 downto 0),
                reg6(3 downto 0)=>XLXN_21(3 downto 0),
                reg7(3 downto 0)=>XLXN_22(3 downto 0),
                reg8(3 downto 0)=>XLXN_23(3 downto 0),
                result(3 downto 0)=>read_data2(3 downto 0));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity MUX1_MUSER_lab3_reg_file is
   port ( modet   : in    std_logic; 
          outbus  : in    std_logic_vector (3 downto 0); 
          wr_data : in    std_logic_vector (3 downto 0); 
          result  : out   std_logic_vector (3 downto 0));
end MUX1_MUSER_lab3_reg_file;

architecture BEHAVIORAL of MUX1_MUSER_lab3_reg_file is
   attribute HU_SET     : string ;
   component M2_1_HXILINX_lab3_reg_file
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             S0 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_4";
   attribute HU_SET of XLXI_2 : label is "XLXI_2_5";
   attribute HU_SET of XLXI_3 : label is "XLXI_3_6";
   attribute HU_SET of XLXI_4 : label is "XLXI_4_7";
begin
   XLXI_1 : M2_1_HXILINX_lab3_reg_file
      port map (D0=>wr_data(0),
                D1=>outbus(0),
                S0=>modet,
                O=>result(0));
   
   XLXI_2 : M2_1_HXILINX_lab3_reg_file
      port map (D0=>wr_data(1),
                D1=>outbus(1),
                S0=>modet,
                O=>result(1));
   
   XLXI_3 : M2_1_HXILINX_lab3_reg_file
      port map (D0=>wr_data(2),
                D1=>outbus(2),
                S0=>modet,
                O=>result(2));
   
   XLXI_4 : M2_1_HXILINX_lab3_reg_file
      port map (D0=>wr_data(3),
                D1=>outbus(3),
                S0=>modet,
                O=>result(3));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity lab3_reg_file is
   port ( clock              : in    std_logic; 
          mode               : in    std_logic; 
          rd_addr1           : in    std_logic_vector (2 downto 0); 
          rd_addr2           : in    std_logic_vector (2 downto 0); 
          write_enable       : in    std_logic; 
          wr_addr            : in    std_logic_vector (2 downto 0); 
          wr_data            : in    std_logic_vector (3 downto 0); 
          rd_data1           : out   std_logic_vector (3 downto 0); 
          rd_data1_xor_data2 : out   std_logic_vector (3 downto 0); 
          rd_data2           : out   std_logic_vector (3 downto 0));
end lab3_reg_file;

architecture BEHAVIORAL of lab3_reg_file is
   attribute BOX_TYPE   : string ;
   signal XLXN_4                   : std_logic;
   signal XLXN_23                  : std_logic_vector (3 downto 0);
   signal rd_data1_DUMMY           : std_logic_vector (3 downto 0);
   signal rd_data2_DUMMY           : std_logic_vector (3 downto 0);
   signal rd_data1_xor_data2_DUMMY : std_logic_vector (3 downto 0);
   component MUX1_MUSER_lab3_reg_file
      port ( modet   : in    std_logic; 
             outbus  : in    std_logic_vector (3 downto 0); 
             result  : out   std_logic_vector (3 downto 0); 
             wr_data : in    std_logic_vector (3 downto 0));
   end component;
   
   component Resistor_File_MUSER_lab3_reg_file
      port ( clk        : in    std_logic; 
             datain     : in    std_logic_vector (3 downto 0); 
             read_add1  : in    std_logic_vector (2 downto 0); 
             read_add2  : in    std_logic_vector (2 downto 0); 
             read_data1 : out   std_logic_vector (3 downto 0); 
             read_data2 : out   std_logic_vector (3 downto 0); 
             write_add  : in    std_logic_vector (2 downto 0));
   end component;
   
   component xorbus_MUSER_lab3_reg_file
      port ( read1  : in    std_logic_vector (3 downto 0); 
             read2  : in    std_logic_vector (3 downto 0); 
             result : out   std_logic_vector (3 downto 0));
   end component;
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
begin
   rd_data1(3 downto 0) <= rd_data1_DUMMY(3 downto 0);
   rd_data1_xor_data2(3 downto 0) <= rd_data1_xor_data2_DUMMY(3 downto 0);
   rd_data2(3 downto 0) <= rd_data2_DUMMY(3 downto 0);
   XLXI_1 : MUX1_MUSER_lab3_reg_file
      port map (modet=>mode,
                outbus(3 downto 0)=>rd_data1_xor_data2_DUMMY(3 downto 0),
                wr_data(3 downto 0)=>wr_data(3 downto 0),
                result(3 downto 0)=>XLXN_23(3 downto 0));
   
   XLXI_11 : Resistor_File_MUSER_lab3_reg_file
      port map (clk=>XLXN_4,
                datain(3 downto 0)=>XLXN_23(3 downto 0),
                read_add1(2 downto 0)=>rd_addr1(2 downto 0),
                read_add2(2 downto 0)=>rd_addr2(2 downto 0),
                write_add(2 downto 0)=>wr_addr(2 downto 0),
                read_data1(3 downto 0)=>rd_data1_DUMMY(3 downto 0),
                read_data2(3 downto 0)=>rd_data2_DUMMY(3 downto 0));
   
   XLXI_13 : xorbus_MUSER_lab3_reg_file
      port map (read1(3 downto 0)=>rd_data1_DUMMY(3 downto 0),
                read2(3 downto 0)=>rd_data2_DUMMY(3 downto 0),
                result(3 downto 0)=>rd_data1_xor_data2_DUMMY(3 downto 0));
   
   XLXI_14 : AND2
      port map (I0=>write_enable,
                I1=>clock,
                O=>XLXN_4);
   
end BEHAVIORAL;



