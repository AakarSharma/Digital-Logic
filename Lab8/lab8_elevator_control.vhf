library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FTC_HXILINX_lab4_seven_segment_switch is
generic(
    INIT : bit := '0'
    );

  port (
    Q   : out STD_LOGIC := '0';
    C   : in STD_LOGIC;
    CLR : in STD_LOGIC;
    T   : in STD_LOGIC
    );
end FTC_HXILINX_lab4_seven_segment_switch;

architecture Behavioral of FTC_HXILINX_lab4_seven_segment_switch is
signal q_tmp : std_logic := TO_X01(INIT);
begin

process(C, CLR)
begin
  if (CLR='1') then
    q_tmp <= '0';
  elsif (C'event and C = '1') then
    if(T='1') then
      q_tmp <= not q_tmp;
    end if;
  end if;  
end process;

Q <= q_tmp;

end Behavioral;

----- CELL INV4_HXILINX_lab4_seven_segment_switch -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity INV4_HXILINX_lab4_seven_segment_switch is
  
port(
    O0  : out std_logic;
    O1  : out std_logic;
    O2  : out std_logic;
    O3  : out std_logic;

    I0  : in std_logic;
    I1  : in std_logic;
    I2  : in std_logic;
    I3  : in std_logic
  );
end INV4_HXILINX_lab4_seven_segment_switch;

architecture INV4_HXILINX_lab4_seven_segment_switch_V of INV4_HXILINX_lab4_seven_segment_switch is
begin
  O0 <= not I0 ;
  O1 <= not I1 ;
  O2 <= not I2 ;
  O3 <= not I3 ;
end INV4_HXILINX_lab4_seven_segment_switch_V;
----- CELL M4_1E_HXILINX_lab4_seven_segment_switch -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M4_1E_HXILINX_lab4_seven_segment_switch is
  
port(
    O   : out std_logic;

    D0  : in std_logic;
    D1  : in std_logic;
    D2  : in std_logic;
    D3  : in std_logic;
    E   : in std_logic;
    S0  : in std_logic;
    S1  : in std_logic
  );
end M4_1E_HXILINX_lab4_seven_segment_switch;

architecture M4_1E_HXILINX_lab4_seven_segment_switch_V of M4_1E_HXILINX_lab4_seven_segment_switch is
begin
  process (D0, D1, D2, D3, E, S0, S1)
  variable sel : std_logic_vector(1 downto 0);
  begin
    sel := S1&S0;
    if( E = '0') then
    O <= '0';
    else
      case sel is
      when "00" => O <= D0;
      when "01" => O <= D1;
      when "10" => O <= D2;
      when "11" => O <= D3;
      when others => NULL;
      end case;
    end if;
    end process; 
end M4_1E_HXILINX_lab4_seven_segment_switch_V;
----- CELL M2_1_HXILINX_lab4_seven_segment_switch -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M2_1_HXILINX_lab4_seven_segment_switch is
  
port(
    O   : out std_logic;

    D0  : in std_logic;
    D1  : in std_logic;
    S0  : in std_logic
  );
end M2_1_HXILINX_lab4_seven_segment_switch;

architecture M2_1_HXILINX_lab4_seven_segment_switch_V of M2_1_HXILINX_lab4_seven_segment_switch is
begin
  process (D0, D1, S0)
  begin
    case S0 is
    when '0' => O <= D0;
    when '1' => O <= D1;
    when others => NULL;
    end case;
    end process; 
end M2_1_HXILINX_lab4_seven_segment_switch_V;
----- CELL AND6_HXILINX_lab4_seven_segment_switch -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity AND6_HXILINX_lab4_seven_segment_switch is
  
port(
    O  : out std_logic;

    I0  : in std_logic;
    I1  : in std_logic;
    I2  : in std_logic;
    I3  : in std_logic;
    I4  : in std_logic;
    I5  : in std_logic
  );
end AND6_HXILINX_lab4_seven_segment_switch;

architecture AND6_HXILINX_lab4_seven_segment_switch_V of AND6_HXILINX_lab4_seven_segment_switch is
begin
  O <= I0 and I1 and I2 and I3 and I4 and I5;
end AND6_HXILINX_lab4_seven_segment_switch_V;
----- CELL AND7_HXILINX_lab4_seven_segment_switch -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity AND7_HXILINX_lab4_seven_segment_switch is
  
port(
    O  : out std_logic;

    I0  : in std_logic;
    I1  : in std_logic;
    I2  : in std_logic;
    I3  : in std_logic;
    I4  : in std_logic;
    I5  : in std_logic;
    I6  : in std_logic
  );
end AND7_HXILINX_lab4_seven_segment_switch;

architecture AND7_HXILINX_lab4_seven_segment_switch_V of AND7_HXILINX_lab4_seven_segment_switch is
begin
  O <= I0 and I1 and I2 and I3 and I4 and I5 and I6;
end AND7_HXILINX_lab4_seven_segment_switch_V;

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity rev_MUSER_lab4_seven_segment_switch is
   port ( inp : in    std_logic_vector (3 downto 0); 
          res : out   std_logic_vector (3 downto 0));
end rev_MUSER_lab4_seven_segment_switch;

architecture BEHAVIORAL of rev_MUSER_lab4_seven_segment_switch is
   attribute HU_SET     : string ;
   component INV4_HXILINX_lab4_seven_segment_switch
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O0 : out   std_logic; 
             O1 : out   std_logic; 
             O2 : out   std_logic; 
             O3 : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_0";
begin
   XLXI_1 : INV4_HXILINX_lab4_seven_segment_switch
      port map (I0=>inp(3),
                I1=>inp(2),
                I2=>inp(1),
                I3=>inp(0),
                O0=>res(3),
                O1=>res(2),
                O2=>res(1),
                O3=>res(0));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity ring_MUSER_lab4_seven_segment_switch is
   port ( clk : in    std_logic; 
          A   : out   std_logic_vector (3 downto 0));
end ring_MUSER_lab4_seven_segment_switch;

architecture BEHAVIORAL of ring_MUSER_lab4_seven_segment_switch is
   attribute BOX_TYPE   : string ;
   signal A_DUMMY : std_logic_vector (3 downto 0);
   component FD
      generic( INIT : bit :=  '0');
      port ( C : in    std_logic; 
             D : in    std_logic; 
             Q : out   std_logic);
   end component;
   attribute BOX_TYPE of FD : component is "BLACK_BOX";
   
begin
   A(3 downto 0) <= A_DUMMY(3 downto 0);
   XLXI_1 : FD
   generic map( INIT => '1')
      port map (C=>clk,
                D=>A_DUMMY(3),
                Q=>A_DUMMY(0));
   
   XLXI_2 : FD
      port map (C=>clk,
                D=>A_DUMMY(0),
                Q=>A_DUMMY(1));
   
   XLXI_3 : FD
      port map (C=>clk,
                D=>A_DUMMY(1),
                Q=>A_DUMMY(2));
   
   XLXI_4 : FD
      port map (C=>clk,
                D=>A_DUMMY(2),
                Q=>A_DUMMY(3));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity delay_MUSER_lab4_seven_segment_switch is
   port ( clock  : in    std_logic; 
          result : out   std_logic);
end delay_MUSER_lab4_seven_segment_switch;

architecture BEHAVIORAL of delay_MUSER_lab4_seven_segment_switch is
   attribute HU_SET     : string ;
   signal XLXN_36  : std_logic;
   signal XLXN_37  : std_logic;
   signal XLXN_38  : std_logic;
   signal XLXN_39  : std_logic;
   signal XLXN_40  : std_logic;
   signal XLXN_41  : std_logic;
   signal XLXN_42  : std_logic;
   signal XLXN_43  : std_logic;
   signal XLXN_44  : std_logic;
   signal XLXN_45  : std_logic;
   signal XLXN_46  : std_logic;
   signal XLXN_47  : std_logic;
   signal XLXN_48  : std_logic;
   signal XLXN_49  : std_logic;
   signal XLXN_52  : std_logic;
   signal XLXN_161 : std_logic;
   signal XLXN_163 : std_logic;
   signal XLXN_164 : std_logic;
   signal XLXN_168 : std_logic;
   signal XLXN_169 : std_logic;
   signal XLXN_170 : std_logic;
   signal XLXN_171 : std_logic;
   signal XLXN_172 : std_logic;
   signal XLXN_173 : std_logic;
   signal XLXN_174 : std_logic;
   signal XLXN_175 : std_logic;
   signal XLXN_176 : std_logic;
   signal XLXN_178 : std_logic;
   signal XLXN_179 : std_logic;
   signal XLXN_180 : std_logic;
   signal XLXN_181 : std_logic;
   signal XLXN_183 : std_logic;
   component FTC_HXILINX_lab4_seven_segment_switch
      generic( INIT : bit :=  '0');
      port ( C   : in    std_logic; 
             CLR : in    std_logic; 
             T   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_142 : label is "XLXI_142_1";
   attribute HU_SET of XLXI_146 : label is "XLXI_146_2";
   attribute HU_SET of XLXI_148 : label is "XLXI_148_3";
   attribute HU_SET of XLXI_150 : label is "XLXI_150_4";
   attribute HU_SET of XLXI_152 : label is "XLXI_152_5";
   attribute HU_SET of XLXI_154 : label is "XLXI_154_6";
   attribute HU_SET of XLXI_156 : label is "XLXI_156_7";
   attribute HU_SET of XLXI_158 : label is "XLXI_158_8";
   attribute HU_SET of XLXI_160 : label is "XLXI_160_9";
   attribute HU_SET of XLXI_162 : label is "XLXI_162_10";
   attribute HU_SET of XLXI_164 : label is "XLXI_164_11";
   attribute HU_SET of XLXI_166 : label is "XLXI_166_12";
   attribute HU_SET of XLXI_169 : label is "XLXI_169_13";
   attribute HU_SET of XLXI_171 : label is "XLXI_171_14";
   attribute HU_SET of XLXI_173 : label is "XLXI_173_15";
   attribute HU_SET of XLXI_175 : label is "XLXI_175_16";
begin
   XLXN_52 <= '1';
   XLXN_161 <= '0';
   XLXN_163 <= '0';
   XLXN_164 <= '0';
   XLXN_168 <= '0';
   XLXN_169 <= '0';
   XLXN_170 <= '0';
   XLXN_171 <= '0';
   XLXN_172 <= '0';
   XLXN_173 <= '0';
   XLXN_174 <= '0';
   XLXN_175 <= '0';
   XLXN_176 <= '0';
   XLXN_178 <= '0';
   XLXN_179 <= '0';
   XLXN_180 <= '0';
   XLXN_181 <= '0';
   XLXI_142 : FTC_HXILINX_lab4_seven_segment_switch
      port map (C=>XLXN_183,
                CLR=>XLXN_161,
                T=>XLXN_52,
                Q=>result);
   
   XLXI_146 : FTC_HXILINX_lab4_seven_segment_switch
      port map (C=>XLXN_49,
                CLR=>XLXN_163,
                T=>XLXN_52,
                Q=>XLXN_183);
   
   XLXI_148 : FTC_HXILINX_lab4_seven_segment_switch
      port map (C=>XLXN_42,
                CLR=>XLXN_164,
                T=>XLXN_52,
                Q=>XLXN_43);
   
   XLXI_150 : FTC_HXILINX_lab4_seven_segment_switch
      port map (C=>XLXN_43,
                CLR=>XLXN_168,
                T=>XLXN_52,
                Q=>XLXN_44);
   
   XLXI_152 : FTC_HXILINX_lab4_seven_segment_switch
      port map (C=>XLXN_44,
                CLR=>XLXN_169,
                T=>XLXN_52,
                Q=>XLXN_45);
   
   XLXI_154 : FTC_HXILINX_lab4_seven_segment_switch
      port map (C=>XLXN_45,
                CLR=>XLXN_170,
                T=>XLXN_52,
                Q=>XLXN_46);
   
   XLXI_156 : FTC_HXILINX_lab4_seven_segment_switch
      port map (C=>XLXN_46,
                CLR=>XLXN_171,
                T=>XLXN_52,
                Q=>XLXN_47);
   
   XLXI_158 : FTC_HXILINX_lab4_seven_segment_switch
      port map (C=>XLXN_47,
                CLR=>XLXN_172,
                T=>XLXN_52,
                Q=>XLXN_48);
   
   XLXI_160 : FTC_HXILINX_lab4_seven_segment_switch
      port map (C=>XLXN_48,
                CLR=>XLXN_173,
                T=>XLXN_52,
                Q=>XLXN_49);
   
   XLXI_162 : FTC_HXILINX_lab4_seven_segment_switch
      port map (C=>XLXN_41,
                CLR=>XLXN_174,
                T=>XLXN_52,
                Q=>XLXN_42);
   
   XLXI_164 : FTC_HXILINX_lab4_seven_segment_switch
      port map (C=>XLXN_40,
                CLR=>XLXN_175,
                T=>XLXN_52,
                Q=>XLXN_41);
   
   XLXI_166 : FTC_HXILINX_lab4_seven_segment_switch
      port map (C=>XLXN_39,
                CLR=>XLXN_176,
                T=>XLXN_52,
                Q=>XLXN_40);
   
   XLXI_169 : FTC_HXILINX_lab4_seven_segment_switch
      port map (C=>XLXN_38,
                CLR=>XLXN_178,
                T=>XLXN_52,
                Q=>XLXN_39);
   
   XLXI_171 : FTC_HXILINX_lab4_seven_segment_switch
      port map (C=>XLXN_37,
                CLR=>XLXN_179,
                T=>XLXN_52,
                Q=>XLXN_38);
   
   XLXI_173 : FTC_HXILINX_lab4_seven_segment_switch
      port map (C=>XLXN_36,
                CLR=>XLXN_180,
                T=>XLXN_52,
                Q=>XLXN_37);
   
   XLXI_175 : FTC_HXILINX_lab4_seven_segment_switch
      port map (C=>clock,
                CLR=>XLXN_181,
                T=>XLXN_52,
                Q=>XLXN_36);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity clocking_MUSER_lab4_seven_segment_switch is
   port ( clk    : in    std_logic; 
          push   : in    std_logic; 
          anodec : out   std_logic_vector (3 downto 0));
end clocking_MUSER_lab4_seven_segment_switch;

architecture BEHAVIORAL of clocking_MUSER_lab4_seven_segment_switch is
   attribute HU_SET     : string ;
   signal XLXN_2 : std_logic;
   signal XLXN_4 : std_logic;
   component delay_MUSER_lab4_seven_segment_switch
      port ( clock  : in    std_logic; 
             result : out   std_logic);
   end component;
   
   component M2_1_HXILINX_lab4_seven_segment_switch
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             S0 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component ring_MUSER_lab4_seven_segment_switch
      port ( A   : out   std_logic_vector (3 downto 0); 
             clk : in    std_logic);
   end component;
   
   attribute HU_SET of XLXI_3 : label is "XLXI_3_17";
begin
   XLXI_1 : delay_MUSER_lab4_seven_segment_switch
      port map (clock=>clk,
                result=>XLXN_4);
   
   XLXI_3 : M2_1_HXILINX_lab4_seven_segment_switch
      port map (D0=>XLXN_4,
                D1=>clk,
                S0=>push,
                O=>XLXN_2);
   
   XLXI_4 : ring_MUSER_lab4_seven_segment_switch
      port map (clk=>XLXN_2,
                A(3 downto 0)=>anodec(3 downto 0));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity encoder_MUSER_lab4_seven_segment_switch is
   port ( inp : in    std_logic_vector (3 downto 0); 
          S   : out   std_logic_vector (1 downto 0));
end encoder_MUSER_lab4_seven_segment_switch;

architecture BEHAVIORAL of encoder_MUSER_lab4_seven_segment_switch is
   attribute BOX_TYPE   : string ;
   signal XLXN_1  : std_logic;
   signal XLXN_2  : std_logic;
   signal XLXN_4  : std_logic;
   signal XLXN_5  : std_logic;
   signal XLXN_6  : std_logic;
   signal XLXN_7  : std_logic;
   signal XLXN_8  : std_logic;
   signal XLXN_9  : std_logic;
   signal XLXN_10 : std_logic;
   signal XLXN_27 : std_logic;
   signal XLXN_28 : std_logic;
   signal XLXN_29 : std_logic;
   component AND4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4 : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
begin
   XLXI_1 : AND4
      port map (I0=>XLXN_4,
                I1=>inp(2),
                I2=>XLXN_2,
                I3=>XLXN_1,
                O=>XLXN_27);
   
   XLXI_2 : AND4
      port map (I0=>XLXN_7,
                I1=>XLXN_6,
                I2=>XLXN_5,
                I3=>inp(0),
                O=>XLXN_28);
   
   XLXI_3 : AND4
      port map (I0=>XLXN_10,
                I1=>XLXN_9,
                I2=>inp(1),
                I3=>XLXN_8,
                O=>XLXN_29);
   
   XLXI_4 : OR2
      port map (I0=>XLXN_28,
                I1=>XLXN_27,
                O=>S(0));
   
   XLXI_5 : OR2
      port map (I0=>XLXN_29,
                I1=>XLXN_28,
                O=>S(1));
   
   XLXI_6 : INV
      port map (I=>inp(0),
                O=>XLXN_1);
   
   XLXI_7 : INV
      port map (I=>inp(1),
                O=>XLXN_2);
   
   XLXI_9 : INV
      port map (I=>inp(3),
                O=>XLXN_4);
   
   XLXI_10 : INV
      port map (I=>inp(1),
                O=>XLXN_5);
   
   XLXI_11 : INV
      port map (I=>inp(2),
                O=>XLXN_6);
   
   XLXI_12 : INV
      port map (I=>inp(3),
                O=>XLXN_7);
   
   XLXI_13 : INV
      port map (I=>inp(0),
                O=>XLXN_8);
   
   XLXI_14 : INV
      port map (I=>inp(2),
                O=>XLXN_9);
   
   XLXI_15 : INV
      port map (I=>inp(3),
                O=>XLXN_10);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity mux_lab4_MUSER_lab4_seven_segment_switch is
   port ( b      : in    std_logic_vector (15 downto 0); 
          inp    : in    std_logic_vector (1 downto 0); 
          result : out   std_logic_vector (3 downto 0));
end mux_lab4_MUSER_lab4_seven_segment_switch;

architecture BEHAVIORAL of mux_lab4_MUSER_lab4_seven_segment_switch is
   attribute HU_SET     : string ;
   signal XLXN_17 : std_logic;
   component M4_1E_HXILINX_lab4_seven_segment_switch
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             D2 : in    std_logic; 
             D3 : in    std_logic; 
             E  : in    std_logic; 
             S0 : in    std_logic; 
             S1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_18";
   attribute HU_SET of XLXI_2 : label is "XLXI_2_19";
   attribute HU_SET of XLXI_3 : label is "XLXI_3_20";
   attribute HU_SET of XLXI_4 : label is "XLXI_4_21";
begin
   XLXN_17 <= '1';
   XLXI_1 : M4_1E_HXILINX_lab4_seven_segment_switch
      port map (D0=>b(12),
                D1=>b(8),
                D2=>b(4),
                D3=>b(0),
                E=>XLXN_17,
                S0=>inp(0),
                S1=>inp(1),
                O=>result(0));
   
   XLXI_2 : M4_1E_HXILINX_lab4_seven_segment_switch
      port map (D0=>b(13),
                D1=>b(9),
                D2=>b(5),
                D3=>b(1),
                E=>XLXN_17,
                S0=>inp(0),
                S1=>inp(1),
                O=>result(1));
   
   XLXI_3 : M4_1E_HXILINX_lab4_seven_segment_switch
      port map (D0=>b(14),
                D1=>b(10),
                D2=>b(6),
                D3=>b(2),
                E=>XLXN_17,
                S0=>inp(0),
                S1=>inp(1),
                O=>result(2));
   
   XLXI_4 : M4_1E_HXILINX_lab4_seven_segment_switch
      port map (D0=>b(15),
                D1=>b(11),
                D2=>b(7),
                D3=>b(3),
                E=>XLXN_17,
                S0=>inp(0),
                S1=>inp(1),
                O=>result(3));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Binary_to_display_MUSER_lab4_seven_segment_switch is
   port ( A : in    std_logic_vector (3 downto 0); 
          C : out   std_logic_vector (6 downto 0));
end Binary_to_display_MUSER_lab4_seven_segment_switch;

architecture BEHAVIORAL of Binary_to_display_MUSER_lab4_seven_segment_switch is
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   signal A0_1     : std_logic;
   signal A1_1     : std_logic;
   signal A2_1     : std_logic;
   signal A3_1     : std_logic;
   signal XLXN_154 : std_logic;
   signal XLXN_155 : std_logic;
   signal XLXN_156 : std_logic;
   signal XLXN_157 : std_logic;
   signal XLXN_158 : std_logic;
   signal XLXN_159 : std_logic;
   signal XLXN_315 : std_logic;
   signal XLXN_317 : std_logic;
   signal XLXN_318 : std_logic;
   signal XLXN_321 : std_logic;
   signal XLXN_327 : std_logic;
   signal XLXN_328 : std_logic;
   signal XLXN_329 : std_logic;
   signal XLXN_332 : std_logic;
   signal XLXN_333 : std_logic;
   signal XLXN_335 : std_logic;
   signal XLXN_338 : std_logic;
   signal XLXN_340 : std_logic;
   signal XLXN_348 : std_logic;
   signal XLXN_350 : std_logic;
   signal XLXN_351 : std_logic;
   signal XLXN_355 : std_logic;
   signal XLXN_356 : std_logic;
   signal XLXN_359 : std_logic;
   signal XLXN_360 : std_logic;
   signal XLXN_361 : std_logic;
   signal XLXN_368 : std_logic;
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component AND7_HXILINX_lab4_seven_segment_switch
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             I5 : in    std_logic; 
             I6 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component AND4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4 : component is "BLACK_BOX";
   
   component AND5
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND5 : component is "BLACK_BOX";
   
   component AND6_HXILINX_lab4_seven_segment_switch
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             I5 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component OR4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR4 : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_86 : label is "XLXI_86_22";
   attribute HU_SET of XLXI_89 : label is "XLXI_89_23";
   attribute HU_SET of XLXI_157 : label is "XLXI_157_24";
   attribute HU_SET of XLXI_163 : label is "XLXI_163_25";
begin
   XLXN_348 <= '1';
   XLXN_356 <= '1';
   XLXN_359 <= '1';
   XLXN_360 <= '1';
   XLXN_361 <= '1';
   XLXI_27 : INV
      port map (I=>A(3),
                O=>A3_1);
   
   XLXI_28 : INV
      port map (I=>A(2),
                O=>A2_1);
   
   XLXI_29 : INV
      port map (I=>A(1),
                O=>A1_1);
   
   XLXI_30 : INV
      port map (I=>A(0),
                O=>A0_1);
   
   XLXI_86 : AND7_HXILINX_lab4_seven_segment_switch
      port map (I0=>XLXN_368,
                I1=>XLXN_356,
                I2=>XLXN_318,
                I3=>XLXN_327,
                I4=>XLXN_332,
                I5=>XLXN_333,
                I6=>XLXN_348,
                O=>XLXN_154);
   
   XLXI_87 : AND4
      port map (I0=>XLXN_360,
                I1=>XLXN_359,
                I2=>XLXN_318,
                I3=>XLXN_340,
                O=>XLXN_155);
   
   XLXI_88 : AND5
      port map (I0=>XLXN_361,
                I1=>XLXN_328,
                I2=>XLXN_317,
                I3=>XLXN_335,
                I4=>XLXN_351,
                O=>XLXN_156);
   
   XLXI_89 : AND6_HXILINX_lab4_seven_segment_switch
      port map (I0=>XLXN_329,
                I1=>XLXN_317,
                I2=>XLXN_333,
                I3=>XLXN_335,
                I4=>XLXN_338,
                I5=>XLXN_351,
                O=>XLXN_157);
   
   XLXI_92 : INV
      port map (I=>XLXN_350,
                O=>C(0));
   
   XLXI_93 : INV
      port map (I=>XLXN_154,
                O=>C(1));
   
   XLXI_94 : INV
      port map (I=>XLXN_155,
                O=>C(2));
   
   XLXI_95 : INV
      port map (I=>XLXN_156,
                O=>C(3));
   
   XLXI_96 : INV
      port map (I=>XLXN_157,
                O=>C(4));
   
   XLXI_97 : INV
      port map (I=>XLXN_158,
                O=>C(5));
   
   XLXI_98 : INV
      port map (I=>XLXN_159,
                O=>C(6));
   
   XLXI_141 : OR4
      port map (I0=>A(0),
                I1=>A(1),
                I2=>A(2),
                I3=>A(3),
                O=>XLXN_315);
   
   XLXI_142 : OR4
      port map (I0=>A0_1,
                I1=>A(1),
                I2=>A(2),
                I3=>A(3),
                O=>XLXN_351);
   
   XLXI_143 : OR4
      port map (I0=>A(0),
                I1=>A1_1,
                I2=>A(2),
                I3=>A(3),
                O=>XLXN_340);
   
   XLXI_144 : OR4
      port map (I0=>A0_1,
                I1=>A1_1,
                I2=>A(2),
                I3=>A(3),
                O=>XLXN_338);
   
   XLXI_145 : OR4
      port map (I0=>A(0),
                I1=>A(1),
                I2=>A2_1,
                I3=>A(3),
                O=>XLXN_335);
   
   XLXI_146 : OR4
      port map (I0=>A0_1,
                I1=>A(1),
                I2=>A2_1,
                I3=>A(3),
                O=>XLXN_333);
   
   XLXI_147 : OR4
      port map (I0=>A(0),
                I1=>A1_1,
                I2=>A2_1,
                I3=>A(3),
                O=>XLXN_332);
   
   XLXI_148 : OR4
      port map (I0=>A0_1,
                I1=>A1_1,
                I2=>A2_1,
                I3=>A(3),
                O=>XLXN_317);
   
   XLXI_149 : OR4
      port map (I0=>A0_1,
                I1=>A(1),
                I2=>A(2),
                I3=>A3_1,
                O=>XLXN_329);
   
   XLXI_150 : OR4
      port map (I0=>A(0),
                I1=>A1_1,
                I2=>A(2),
                I3=>A3_1,
                O=>XLXN_328);
   
   XLXI_151 : OR4
      port map (I0=>A0_1,
                I1=>A1_1,
                I2=>A(2),
                I3=>A3_1,
                O=>XLXN_327);
   
   XLXI_152 : OR4
      port map (I0=>A(0),
                I1=>A(1),
                I2=>A2_1,
                I3=>A3_1,
                O=>XLXN_318);
   
   XLXI_153 : OR4
      port map (I0=>A0_1,
                I1=>A(1),
                I2=>A2_1,
                I3=>A3_1,
                O=>XLXN_355);
   
   XLXI_154 : OR4
      port map (I0=>A(0),
                I1=>A1_1,
                I2=>A2_1,
                I3=>A3_1,
                O=>XLXN_321);
   
   XLXI_155 : OR4
      port map (I0=>A0_1,
                I1=>A1_1,
                I2=>A2_1,
                I3=>A3_1,
                O=>XLXN_368);
   
   XLXI_157 : AND6_HXILINX_lab4_seven_segment_switch
      port map (I0=>XLXN_368,
                I1=>XLXN_321,
                I2=>XLXN_355,
                I3=>XLXN_327,
                I4=>XLXN_335,
                I5=>XLXN_351,
                O=>XLXN_350);
   
   XLXI_162 : AND5
      port map (I0=>XLXN_321,
                I1=>XLXN_318,
                I2=>XLXN_317,
                I3=>XLXN_351,
                I4=>XLXN_315,
                O=>XLXN_159);
   
   XLXI_163 : AND6_HXILINX_lab4_seven_segment_switch
      port map (I0=>XLXN_368,
                I1=>XLXN_355,
                I2=>XLXN_317,
                I3=>XLXN_338,
                I4=>XLXN_340,
                I5=>XLXN_351,
                O=>XLXN_158);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity lab4_seven_segment_switch is
   port ( b          : in    std_logic_vector (15 downto 0); 
          clk        : in    std_logic; 
          pushbutton : in    std_logic; 
          anode      : out   std_logic_vector (3 downto 0); 
          cathode    : out   std_logic_vector (6 downto 0));
end lab4_seven_segment_switch;

architecture BEHAVIORAL of lab4_seven_segment_switch is
   signal XLXN_3     : std_logic_vector (1 downto 0);
   signal XLXN_5     : std_logic_vector (3 downto 0);
   signal XLXN_17    : std_logic_vector (3 downto 0);
   component Binary_to_display_MUSER_lab4_seven_segment_switch
      port ( A : in    std_logic_vector (3 downto 0); 
             C : out   std_logic_vector (6 downto 0));
   end component;
   
   component mux_lab4_MUSER_lab4_seven_segment_switch
      port ( b      : in    std_logic_vector (15 downto 0); 
             inp    : in    std_logic_vector (1 downto 0); 
             result : out   std_logic_vector (3 downto 0));
   end component;
   
   component encoder_MUSER_lab4_seven_segment_switch
      port ( inp : in    std_logic_vector (3 downto 0); 
             S   : out   std_logic_vector (1 downto 0));
   end component;
   
   component clocking_MUSER_lab4_seven_segment_switch
      port ( anodec : out   std_logic_vector (3 downto 0); 
             clk    : in    std_logic; 
             push   : in    std_logic);
   end component;
   
   component rev_MUSER_lab4_seven_segment_switch
      port ( inp : in    std_logic_vector (3 downto 0); 
             res : out   std_logic_vector (3 downto 0));
   end component;
   
begin
   XLXI_1 : Binary_to_display_MUSER_lab4_seven_segment_switch
      port map (A(3 downto 0)=>XLXN_5(3 downto 0),
                C(6 downto 0)=>cathode(6 downto 0));
   
   XLXI_2 : mux_lab4_MUSER_lab4_seven_segment_switch
      port map (b(15 downto 0)=>b(15 downto 0),
                inp(1 downto 0)=>XLXN_3(1 downto 0),
                result(3 downto 0)=>XLXN_5(3 downto 0));
   
   XLXI_3 : encoder_MUSER_lab4_seven_segment_switch
      port map (inp(3 downto 0)=>XLXN_17(3 downto 0),
                S(1 downto 0)=>XLXN_3(1 downto 0));
   
   XLXI_5 : clocking_MUSER_lab4_seven_segment_switch
      port map (clk=>clk,
                push=>pushbutton,
                anodec(3 downto 0)=>XLXN_17(3 downto 0));
   
   XLXI_7 : rev_MUSER_lab4_seven_segment_switch
      port map (inp(3 downto 0)=>XLXN_17(3 downto 0),
                res(3 downto 0)=>anode(3 downto 0));
   
end BEHAVIORAL;


----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity controller is
Port ( request,lift_floor: in std_logic_vector(3 downto 0);
		clk,reset, door_open, door_closed: in std_logic;
		out_state: out std_logic_vector(1 downto 0);
		out_request: out std_logic_vector(3 downto 0);
		curr_floor:out std_logic_vector(3 downto 0);
		b: out std_logic_vector(7 downto 0)
);
end controller;

architecture Behavioral of controller is
TYPE types1 IS
	(idle, up, down, opened, close, main);
TYPE types2 IS
	(up, down, opened, close);
signal state: types1:=idle;
signal treq: std_logic_vector(3 downto 0):="0000";
signal current_floor: std_logic_vector(3 downto 0):="0001";
signal show_state: types2:=opened;
signal count:INTEGER:=0;
signal i:INTEGER:=0;
begin


process(clk)
begin
treq<= request or lift_floor;
--tlift_floor<=lift_floor;
--req<=request;

if (clk = '1' and clk'event) then
		case state is
		when idle =>		count<=0;
								show_state<= opened;
								out_state<="00";
								b(7 downto 4)<="1111";
								if(treq/="0000"or door_closed='1') then
									state<=close;
								end if;
								if(reset='1') then
                                state<=main;
                                end if;
									
		when opened => if(count<50000000) then
								count<=count+1;								
								show_state<=opened;
								b(7 downto 4)<="1111";
								state<=opened;
							else
								count<=0;
								if(treq/="0000" and door_open/='1') then
									state<=close;
								elsif(treq/="0000" and door_open='1') then
									state<=opened;
								else
									state<=main;
								end if;
							end if;
							 
		when close => if(count<50000000) then
								count<=count+1;
								show_state<=close;
								b(7 downto 4)<="1100";
								state<=close;								
							else if(door_closed='1') then
								state<=close;
								else
								state<=main;
								count<=0;
								end if;							
							end if;
		when up => if(count<200000000) then
								count<=count+1;
								show_state<=up;
								out_state<="10";
								b(7 downto 4)<="1110";
								state<=up;
							else
								i<=i+1;
								current_floor<=current_floor(2 downto 0)&'0';
								count<=0;
								if(treq(i+1)='1') then
								    treq(i+1)<='0';
									state<=opened;
								else
									state<=main;
								end if;
							end if;
		when down => if(count<200000000) then
								count<=count+1;
								show_state<=down;
								out_state<="01";
								b(7 downto 4)<="1101";
								state<=down;
							else
								i<=i-1;
								current_floor<='0'&current_floor(3 downto 1);
								count<=0;
								if(treq(i-1)='1') then
								    treq(i-1)<='0';
									state<=opened;
								else
									state<=main;
								end if;
							end if;
		when main => if(reset='1') then
								treq<="0000";
								i<=0;
								state<=idle;
								show_state<=opened;
								current_floor<="0001";
								count<=0;
								b(7 downto 4)<="1111";
							elsif(door_open='1') then
								state<=opened;
							elsif(door_closed='1')then
								state<=close;
							else
								if(treq/="0000" and treq<current_floor) then
									state<=down;
								elsif(treq/="0000" and treq>current_floor) then
									state<=up;
								elsif(treq/="0000" and treq=current_floor) then
								    treq<="0000";
									state<=idle;
								elsif(treq="0000") then
									state<=idle;
								end if;
							end if;
		when others => state<=idle;
		end case;
end if;
end process;
b(3 downto 0)<= std_logic_vector(to_unsigned(i,4));
out_request<=treq;
--out_lift_floor<=tlift_floor;
curr_floor<=current_floor;
end Behavioral;

----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity lab8_elevator_control is
    Port ( up_request : in  STD_LOGIC_VECTOR (3 downto 0);
           down_request : in  STD_LOGIC_VECTOR (3 downto 0);
           reset : in  STD_LOGIC;
           door_open : in  STD_LOGIC_VECTOR (1 downto 0);
           door_closed : in  STD_LOGIC_VECTOR (1 downto 0);
           clk : in  STD_LOGIC;
           lift1_floor : in  STD_LOGIC_VECTOR (3 downto 0);
           lift2_floor : in  STD_LOGIC_VECTOR (3 downto 0);

           up_request_indicator : out  STD_LOGIC_VECTOR (3 downto 0);
           down_request_indicator : out  STD_LOGIC_VECTOR (3 downto 0);
           cathode : out  STD_LOGIC_VECTOR (6 downto 0);
           anode : out  STD_LOGIC_VECTOR (3 downto 0);
           lift1_floor_indicator : out  STD_LOGIC_VECTOR (3 downto 0);
           lift2_floor_indicator : out  STD_LOGIC_VECTOR (3 downto 0));
end lab8_elevator_control;

architecture Behavioral of lab8_elevator_control is
signal status1,status2: STD_LOGIC_VECTOR(1 downto 0);
signal request1,request2: std_logic_vector(3 downto 0);
signal trequest1,x1,x2,trequest2,tup_request,tdown_request: std_logic_vector(3 downto 0):="0000";
signal b: std_logic_vector(15 downto 0);
signal sim_mode : STD_LOGIC:='0';
begin
tup_request<=up_request;
tdown_request<=down_request;
process(clk)
begin

request1<=trequest1;
request2<=trequest2;
if(up_request/="0000") then
	if(status1="10") then
		request1<=up_request;
	elsif(status2="10") THEN
		request2<=up_request;
	elsif(status1="00" and status2="00") then
               if( ((to_integer(unsigned(up_request))>=to_integer(unsigned(x1))) and   (to_integer(unsigned(up_request))>=to_integer(unsigned(x2))))   or     ((to_integer(unsigned(up_request))<=to_integer(unsigned(x1))) and   (to_integer(unsigned(up_request))<=to_integer(unsigned(x2))))   ) then
                   if(abs(to_integer(unsigned(up_request))-to_integer(unsigned(x1)))<=abs(to_integer(unsigned(up_request))-to_integer(unsigned(x2)))) then
                      request1<=up_request;
                   elsif(abs(to_integer(unsigned(up_request))-to_integer(unsigned(x1)))>abs(to_integer(unsigned(up_request))-to_integer(unsigned(x2)))) then
                    request2<=up_request;
                   end if;
               elsif(up_request="0100") then
                   if(unsigned(x1)<=unsigned(x2)) then
                        request2<=up_request;
                   else request1<=up_request;
                   end if;
               elsif(up_request="0010") then
                    request1<=up_request;                 
               end if;
	elsif(status1="00") then
		request1<=up_request;
	elsif(status2<="00") then
		request2<=up_request;
	end if;		
end if;
if(down_request/="0000") then
	if(status1="01") then
		request1<=down_request;
	elsif(status2="01") THEN
		request2<=down_request;
	elsif(status1="00" and status2="00") then
	   if( ((to_integer(unsigned(down_request))>=to_integer(unsigned(x1))) and   (to_integer(unsigned(down_request))>=to_integer(unsigned(x2))))   or     ((to_integer(unsigned(down_request))<=to_integer(unsigned(x1))) and   (to_integer(unsigned(down_request))<=to_integer(unsigned(x2))))   ) then
	       if(abs(to_integer(unsigned(down_request))-to_integer(unsigned(x1)))<=abs(to_integer(unsigned(down_request))-to_integer(unsigned(x2)))) then
		      request1<=down_request;
		   elsif(abs(to_integer(unsigned(down_request))-to_integer(unsigned(x1)))>abs(to_integer(unsigned(down_request))-to_integer(unsigned(x2)))) then
			request2<=down_request;
		   end if;
	   elsif(down_request="0100") then
	       if(unsigned(x1)<=unsigned(x2)) then
                request2<=down_request;
           else request1<=down_request;
           end if;
       elsif(down_request="0010") then
            request1<=down_request;                 
       end if;
	elsif(status1="00") then
		request1<=down_request;	
	elsif(status2<="00") then
		request2<=down_request;
	end if;		
end if;

end process;
up_request_indicator<=tup_request or up_request;
down_request_indicator<=tdown_request or down_request;
a : ENTITY WORK.controller	
	port map (request1,lift1_floor,clk,reset,door_open(0),door_closed(0),status1,trequest1,x1,b(15 downto 8));

b1 : ENTITY WORK.controller	
	port map (request2,lift2_floor,clk,reset,door_open(1),door_closed(1),status2,trequest2,x2,b(7 downto 0));
lift1_floor_indicator<=x1;
lift2_floor_indicator<=x2;

c :ENTITY WORK.lab4_seven_segment_switch
	port map(b,clk,sim_mode,anode,cathode);
	
end Behavioral;

