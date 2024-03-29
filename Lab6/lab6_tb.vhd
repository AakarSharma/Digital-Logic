--------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 23:57:17 09/07/2017
-- Design Name: 
-- Module Name: C:/Users/diksha/multiplier/lab6_multiplier_tb.vhd
-- Project Name: multiplier
-- Target Device: 
-- Tool versions: 
-- Description: 
--
-- VHDL Test Bench Created by ISE for module: lab6_multiplier
--
-- Dependencies:
--
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes:
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test. Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation
-- simulation model.
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;

entity lab6_multiplier_tb is
end lab6_multiplier_tb;

architecture behavior of lab6_multiplier_tb is

	-- Component Declaration for the Unit Under Test (UUT)

	component lab6_multiplier
		port (
			in1 : in std_logic_vector(7 downto 0);
			in2 : in std_logic_vector(7 downto 0);
			clk : in std_logic;
			display_button : in std_logic;
			multiplier_select : in std_logic_vector(1 downto 0);
			anode : out std_logic_vector(3 downto 0);
			cathode : out std_logic_vector(6 downto 0);
			product : out std_logic_vector(15 downto 0)
		);
	end component;
 
	-- Custom Types
	type display_output is array (0 to 15) of std_logic_vector(6 downto 0);
	type anode_output_array is array(0 to 3) of std_logic_vector(3 downto 0);

	--Inputs
	signal in1 : std_logic_vector(7 downto 0) := (others => '0');
	signal in2 : std_logic_vector(7 downto 0) := (others => '0');
	signal clk : std_logic := '0';
	signal display_button : std_logic := '0';
	signal multiplier_select : std_logic_vector(1 downto 0) := (others => '0');

	--Outputs
	signal anode : std_logic_vector(3 downto 0);
	signal cathode : std_logic_vector(6 downto 0);
	signal product : std_logic_vector(15 downto 0);

	-- Clock period definitions
	constant clk_period : time := 10 ns;
	signal err_cnt_signal : integer := 1;
	constant intToCathodeValue : display_output := ("1000000", "1111001", "0100100", "0110000", "0011001", "0010010", "0000010", "1111000", "0000000", "0010000", "0001000", "0000011", "1000110", "0100001", "0000110", "0001110");
	constant anodeValues : anode_output_array := ("0111", "1011", "1101", "1110");
begin
	-- Instantiate the Unit Under Test (UUT)
	uut : lab6_multiplier
	port map(
		in1 => in1, 
		in2 => in2, 
		clk => clk, 
		display_button => display_button, 
		multiplier_select => multiplier_select, 
		anode => anode, 
		cathode => cathode, 
		product => product
	);

	-- Clock process definitions
	clk_process : process
	begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
	end process;
	-- Stimulus process
	stim_proc : process
		type intArray is array(0 to 3) of integer;
		variable cathodeGroundTruth : intArray := (0, 1, 0, 1);
		variable err_cnt : integer := 0;
	begin
		------------------------------------------------------------
		--------------------- pre-case 0 ---------------------------
		------------------------------------------------------------
 
		-- Set clock to be fast, initialize in1=01,in2=23 and initiate multiplication
		display_button <= '1';
		-- Set inputs
		in1 <= "00000001";
		in2 <= "00010111";
		multiplier_select <= "00";
		wait for clk_period;
 
		-------------------------------------------------------------
		--------------------- case 0 -------------------------------
		-------------------------------------------------------------
 
 
		assert (product = "0000000000010111") report "Error: product calculation by multiplier 00 is wrong";
		if (product /= "0000000000010111") then
			err_cnt := err_cnt + 1;
		end if;
		cathodeGroundTruth := (0, 0, 1, 7);
		for cycleNo in 0 to 3 loop
 
			for anodeNumber in 0 to 3 loop
				if (anode = anodeValues(anodeNumber)) then
					assert (cathode = intToCathodeValue(cathodeGroundTruth(anodeNumber))) report "Incorrect cathode value";
					if (cathode /= intToCathodeValue(cathodeGroundTruth(anodeNumber))) then
						err_cnt := err_cnt + 1;
					end if;
				end if;
			end loop;
 
			wait for clk_period; 
		end loop;
		multiplier_select <= "01";
		wait for clk_period;
 
		-------------------------------------------------------------
		--------------------- case 1 -------------------------------
		-------------------------------------------------------------
 
 
		assert (product = "0000000000010111") report "Error: product calculation by multiplier 01 is wrong";
		if (product /= "0000000000010111") then
			err_cnt := err_cnt + 1;
		end if;
		cathodeGroundTruth := (0, 0, 1, 7);
		for cycleNo in 0 to 3 loop
 
			for anodeNumber in 0 to 3 loop
				if (anode = anodeValues(anodeNumber)) then
					assert (cathode = intToCathodeValue(cathodeGroundTruth(anodeNumber))) report "Incorrect cathode value";
					if (cathode /= intToCathodeValue(cathodeGroundTruth(anodeNumber))) then
						err_cnt := err_cnt + 1;
					end if;
				end if;
			end loop;
 
			wait for clk_period; 
		end loop;
 
 
		multiplier_select <= "10";
		wait for clk_period;
 
		-------------------------------------------------------------
		--------------------- case 2 -------------------------------
		-------------------------------------------------------------
 
 
		assert (product = "0000000000010111") report "Error: product calculation by multiplier 10 is wrong";
		if (product /= "0000000000010111") then
			err_cnt := err_cnt + 1;
		end if;
		cathodeGroundTruth := (0, 0, 1, 7);
		for cycleNo in 0 to 3 loop
 
			for anodeNumber in 0 to 3 loop
				if (anode = anodeValues(anodeNumber)) then
					assert (cathode = intToCathodeValue(cathodeGroundTruth(anodeNumber))) report "Incorrect cathode value";
					if (cathode /= intToCathodeValue(cathodeGroundTruth(anodeNumber))) then
						err_cnt := err_cnt + 1;
					end if;
				end if;
			end loop;
 
			wait for clk_period; 
		end loop;
		------------------------------------------------------------
		--------------------- pre-case 1 ---------------------------
		------------------------------------------------------------
 
		-- Set clock to be fast, initialize in1=255,in2=255 and initiate multiplication
		display_button <= '1';
		-- Set inputs
		in1 <= "11111111";
		in2 <= "11111111";
		multiplier_select <= "00";
		wait for clk_period;
 
		-------------------------------------------------------------
		--------------------- case 0 -------------------------------
		-------------------------------------------------------------
 
 
		assert (product = "1111111000000001") report "Error: product calculation by multiplier 00 is wrong";
		if (product /= "1111111000000001") then
			err_cnt := err_cnt + 1;
		end if;
		cathodeGroundTruth := ( 15, 14, 0, 9);
		for cycleNo in 0 to 3 loop
 
			for anodeNumber in 0 to 3 loop
				if (anode = anodeValues(anodeNumber)) then
					assert (cathode = intToCathodeValue(cathodeGroundTruth(anodeNumber))) report "Incorrect cathode value ignore";
					if (cathode /= intToCathodeValue(cathodeGroundTruth(anodeNumber))) then
						err_cnt := err_cnt + 1;
					end if;
				end if;
			end loop;
 
			wait for clk_period; 
		end loop;
 
		multiplier_select <= "01";
		wait for clk_period;
 
		-------------------------------------------------------------
		--------------------- case 1 -------------------------------
		-------------------------------------------------------------
 
 
		assert (product = "1111111000000001") report "Error: product calculation by multiplier 01 is wrong";
		if (product /= "1111111000000001") then
			err_cnt := err_cnt + 1;
		end if;
		cathodeGroundTruth := (15, 14, 0, 9);
		for cycleNo in 0 to 3 loop
 
			for anodeNumber in 0 to 3 loop
				if (anode = anodeValues(anodeNumber)) then
					assert (cathode = intToCathodeValue(cathodeGroundTruth(anodeNumber))) report "Incorrect cathode value ignore";
					if (cathode /= intToCathodeValue(cathodeGroundTruth(anodeNumber))) then
						err_cnt := err_cnt + 1;
					end if;
				end if;
			end loop;
 
			wait for clk_period; 
		end loop;
 
 
		multiplier_select <= "10";
		wait for clk_period;
 
		-------------------------------------------------------------
		--------------------- case 2 -------------------------------
		-------------------------------------------------------------
 
 
		assert (product = "1111111000000001") report "Error: product calculation by multiplier 10 is wrong";
		if (product /= "1111111000000001") then
			err_cnt := err_cnt + 1;
		end if;
		cathodeGroundTruth := (15, 14, 0, 9);
		for cycleNo in 0 to 3 loop
 
			for anodeNumber in 0 to 3 loop
				if (anode = anodeValues(anodeNumber)) then
					assert (cathode = intToCathodeValue(cathodeGroundTruth(anodeNumber))) report "Incorrect cathode value ignore";
					if (cathode /= intToCathodeValue(cathodeGroundTruth(anodeNumber))) then
						err_cnt := err_cnt + 1;
					end if;
				end if;
			end loop;
 
			wait for clk_period; 
		end loop;
 
 
 
 
 
 
 
 
 
		------------------------------------------------------------
		--------------------- pre-case 2 ---------------------------
		------------------------------------------------------------
 
		-- Set clock to be fast, initialize in1=01,in2=23 and initiate multiplication
		display_button <= '1';
		-- Set inputs
		in1 <= "00000000";
		in2 <= "00000000";
		multiplier_select <= "00";
		wait for clk_period;
 
		-------------------------------------------------------------
		--------------------- case 0 -------------------------------
		-------------------------------------------------------------
 
 
		assert (product = "0000000000000000") report "Error: product calculation by multiplier 00 is wrong";
		if (product /= "0000000000000000") then
			err_cnt := err_cnt + 1;
		end if;
		cathodeGroundTruth := (0, 0, 0, 0);
		for cycleNo in 0 to 3 loop
 
			for anodeNumber in 0 to 3 loop
				if (anode = anodeValues(anodeNumber)) then
					assert (cathode = intToCathodeValue(cathodeGroundTruth(anodeNumber))) report "Incorrect cathode value";
					if (cathode /= intToCathodeValue(cathodeGroundTruth(anodeNumber))) then
						err_cnt := err_cnt + 1;
					end if;
				end if;
			end loop;
 
			wait for clk_period; 
		end loop;
 
 
 
		multiplier_select <= "01";
		wait for clk_period;
 
		-------------------------------------------------------------
		--------------------- case 1 -------------------------------
		-------------------------------------------------------------
 
 
		assert (product = "0000000000000000") report "Error: product calculation by multiplier 01 is wrong";
		if (product /= "0000000000000000") then
			err_cnt := err_cnt + 1;
		end if;
		cathodeGroundTruth := (0, 0, 0, 0);
		for cycleNo in 0 to 3 loop
 
			for anodeNumber in 0 to 3 loop
				if (anode = anodeValues(anodeNumber)) then
					assert (cathode = intToCathodeValue(cathodeGroundTruth(anodeNumber))) report "Incorrect cathode value";
					if (cathode /= intToCathodeValue(cathodeGroundTruth(anodeNumber))) then
						err_cnt := err_cnt + 1;
					end if;
				end if;
			end loop;
 
			wait for clk_period; 
		end loop;
 
 
 
		multiplier_select <= "10";
		wait for clk_period;
 
		-------------------------------------------------------------
		--------------------- case 2 -------------------------------
		-------------------------------------------------------------
 
 
		assert (product = "0000000000000000") report "Error: product calculation by multiplier 10 is wrong";
		if (product /= "0000000000000000") then
			err_cnt := err_cnt + 1;
		end if;
		cathodeGroundTruth := (0, 0, 0, 0);
		for cycleNo in 0 to 3 loop
 
			for anodeNumber in 0 to 3 loop
				if (anode = anodeValues(anodeNumber)) then
					assert (cathode = intToCathodeValue(cathodeGroundTruth(anodeNumber))) report "Incorrect cathode value";
					if (cathode /= intToCathodeValue(cathodeGroundTruth(anodeNumber))) then
						err_cnt := err_cnt + 1;
					end if;
				end if;
			end loop;
 
			wait for clk_period; 
		end loop;
 
 
 
		-------------------------add more test cases---------------------------------------------
 
		err_cnt_signal <= err_cnt; 
		-- summary of all the tests
		if (err_cnt = 0) then
			assert false
			report "Testbench of Lab 6 completed successfully!"
				severity note;
		else
			assert false
			report "Something wrong, try again"
			
				severity error;
		end if;

		-- end of tb
		wait for clk_period * 100;

		wait;
	end process;
	end;