--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : lab2_3port_switch.vhf
-- /___/   /\     Timestamp : 08/20/2017 17:41:22
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family artix7 -flat -suppress -vhdl /home/kgopal/SahilSingh/lab2_3port_switch.vhf -w /home/kgopal/SahilSingh/lab2_3port_switch.sch
--Design Name: lab2_3port_switch
--Device: artix7
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Decoder_MUSER_lab2_3port_switch is
   port ( Enable : in    std_logic; 
          s0     : in    std_logic; 
          s1     : in    std_logic; 
          y0     : out   std_logic; 
          y1     : out   std_logic; 
          y2     : out   std_logic);
end Decoder_MUSER_lab2_3port_switch;

architecture BEHAVIORAL of Decoder_MUSER_lab2_3port_switch is
   attribute BOX_TYPE   : string ;
   signal XLXN_6 : std_logic;
   signal XLXN_7 : std_logic;
   component AND3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3 : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
begin
   XLXI_1 : AND3
      port map (I0=>XLXN_7,
                I1=>XLXN_6,
                I2=>Enable,
                O=>y0);
   
   XLXI_2 : AND3
      port map (I0=>XLXN_7,
                I1=>s0,
                I2=>Enable,
                O=>y1);
   
   XLXI_3 : AND3
      port map (I0=>s1,
                I1=>XLXN_6,
                I2=>Enable,
                O=>y2);
   
   XLXI_4 : INV
      port map (I=>s0,
                O=>XLXN_6);
   
   XLXI_5 : INV
      port map (I=>s1,
                O=>XLXN_7);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity priority_encoder_MUSER_lab2_3port_switch is
   port ( x0 : in    std_logic; 
          x1 : in    std_logic; 
          x2 : in    std_logic; 
          s0 : out   std_logic; 
          s1 : out   std_logic);
end priority_encoder_MUSER_lab2_3port_switch;

architecture BEHAVIORAL of priority_encoder_MUSER_lab2_3port_switch is
   attribute BOX_TYPE   : string ;
   signal XLXN_2 : std_logic;
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
begin
   XLXI_1 : AND2
      port map (I0=>XLXN_2,
                I1=>x1,
                O=>s0);
   
   XLXI_2 : INV
      port map (I=>x2,
                O=>XLXN_2);
   
   XLXI_4 : AND2
      port map (I0=>x2,
                I1=>x2,
                O=>s1);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity lab2_3port_switch is
   port ( dest0 : in    std_logic_vector (1 downto 0); 
          dest1 : in    std_logic_vector (1 downto 0); 
          dest2 : in    std_logic_vector (1 downto 0); 
          din0  : in    std_logic; 
          din1  : in    std_logic; 
          din2  : in    std_logic; 
          req0  : in    std_logic; 
          req1  : in    std_logic; 
          req2  : in    std_logic; 
          ack0  : out   std_logic; 
          ack1  : out   std_logic; 
          ack2  : out   std_logic; 
          dout0 : out   std_logic; 
          dout1 : out   std_logic; 
          dout2 : out   std_logic; 
          src   : out   std_logic_vector (1 downto 0));
end lab2_3port_switch;

architecture BEHAVIORAL of lab2_3port_switch is
   attribute BOX_TYPE   : string ;
   signal XLXN_18   : std_logic;
   signal XLXN_19   : std_logic;
   signal XLXN_20   : std_logic;
   signal XLXN_33   : std_logic;
   signal XLXN_34   : std_logic;
   signal XLXN_35   : std_logic;
   signal XLXN_36   : std_logic;
   signal XLXN_37   : std_logic;
   signal XLXN_38   : std_logic;
   signal XLXN_72   : std_logic;
   signal XLXN_73   : std_logic;
   signal XLXN_131  : std_logic;
   signal XLXN_132  : std_logic;
   signal XLXN_133  : std_logic;
   signal XLXN_134  : std_logic;
   signal XLXN_135  : std_logic;
   signal XLXN_136  : std_logic;
   signal XLXN_138  : std_logic;
   signal src_DUMMY : std_logic_vector (1 downto 0);
   component priority_encoder_MUSER_lab2_3port_switch
      port ( s0 : out   std_logic; 
             s1 : out   std_logic; 
             x0 : in    std_logic; 
             x1 : in    std_logic; 
             x2 : in    std_logic);
   end component;
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component Decoder_MUSER_lab2_3port_switch
      port ( Enable : in    std_logic; 
             s0     : in    std_logic; 
             s1     : in    std_logic; 
             y0     : out   std_logic; 
             y1     : out   std_logic; 
             y2     : out   std_logic);
   end component;
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component AND3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3 : component is "BLACK_BOX";
   
   component OR3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR3 : component is "BLACK_BOX";
   
begin
   src(1 downto 0) <= src_DUMMY(1 downto 0);
   XLXI_1 : priority_encoder_MUSER_lab2_3port_switch
      port map (x0=>req0,
                x1=>req1,
                x2=>req2,
                s0=>src_DUMMY(0),
                s1=>src_DUMMY(1));
   
   XLXI_2 : INV
      port map (I=>src_DUMMY(0),
                O=>XLXN_72);
   
   XLXI_3 : INV
      port map (I=>src_DUMMY(1),
                O=>XLXN_73);
   
   XLXI_13 : Decoder_MUSER_lab2_3port_switch
      port map (Enable=>XLXN_18,
                s0=>dest0(0),
                s1=>dest0(1),
                y0=>open,
                y1=>XLXN_33,
                y2=>XLXN_34);
   
   XLXI_14 : Decoder_MUSER_lab2_3port_switch
      port map (Enable=>XLXN_19,
                s0=>dest1(0),
                s1=>dest1(1),
                y0=>XLXN_35,
                y1=>open,
                y2=>XLXN_36);
   
   XLXI_15 : Decoder_MUSER_lab2_3port_switch
      port map (Enable=>XLXN_20,
                s0=>dest2(0),
                s1=>dest2(1),
                y0=>XLXN_37,
                y1=>XLXN_38,
                y2=>open);
   
   XLXI_16 : OR2
      port map (I0=>XLXN_34,
                I1=>XLXN_33,
                O=>ack0);
   
   XLXI_17 : OR2
      port map (I0=>XLXN_36,
                I1=>XLXN_35,
                O=>ack1);
   
   XLXI_18 : OR2
      port map (I0=>XLXN_38,
                I1=>XLXN_37,
                O=>ack2);
   
   XLXI_28 : AND2
      port map (I0=>din0,
                I1=>XLXN_33,
                O=>XLXN_131);
   
   XLXI_29 : AND2
      port map (I0=>din0,
                I1=>XLXN_34,
                O=>XLXN_133);
   
   XLXI_30 : AND2
      port map (I0=>din1,
                I1=>XLXN_35,
                O=>XLXN_135);
   
   XLXI_31 : AND2
      port map (I0=>din1,
                I1=>XLXN_36,
                O=>XLXN_134);
   
   XLXI_32 : AND2
      port map (I0=>din2,
                I1=>XLXN_37,
                O=>XLXN_136);
   
   XLXI_33 : AND2
      port map (I0=>din2,
                I1=>XLXN_38,
                O=>XLXN_132);
   
   XLXI_55 : OR2
      port map (I0=>XLXN_136,
                I1=>XLXN_135,
                O=>dout0);
   
   XLXI_56 : OR2
      port map (I0=>XLXN_132,
                I1=>XLXN_131,
                O=>dout1);
   
   XLXI_57 : OR2
      port map (I0=>XLXN_134,
                I1=>XLXN_133,
                O=>dout2);
   
   XLXI_58 : AND3
      port map (I0=>XLXN_73,
                I1=>XLXN_72,
                I2=>XLXN_138,
                O=>XLXN_18);
   
   XLXI_59 : AND3
      port map (I0=>XLXN_73,
                I1=>src_DUMMY(0),
                I2=>XLXN_138,
                O=>XLXN_19);
   
   XLXI_60 : AND3
      port map (I0=>src_DUMMY(1),
                I1=>XLXN_72,
                I2=>XLXN_138,
                O=>XLXN_20);
   
   XLXI_61 : OR3
      port map (I0=>req0,
                I1=>req1,
                I2=>req2,
                O=>XLXN_138);
   
end BEHAVIORAL;



