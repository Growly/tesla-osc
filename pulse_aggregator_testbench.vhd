--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:44:03 11/06/2012
-- Design Name:   
-- Module Name:   C:/Users/arya/Documents/GitHub/tesla-osc/pulse_aggregator_testbench.vhd
-- Project Name:  vhdl_fun
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: pulse_aggregator
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY pulse_aggregator_testbench IS
END pulse_aggregator_testbench;
 
ARCHITECTURE behavior OF pulse_aggregator_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT pulse_aggregator
    PORT(
         notes_on : IN  std_logic_vector(7 downto 0);
         clock : IN  std_logic;
			counter : OUT std_logic_vector(27 downto 0);
         pulse : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal notes_on : std_logic_vector(7 downto 0) := (others => '0');
   signal clock : std_logic := '0';

 	--Outputs
   signal pulse : std_logic;
	signal counter : std_logic_vector(27 downto 0) := (others => '0');

   -- Clock period definitions
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: pulse_aggregator PORT MAP (
          notes_on => notes_on,
          clock => clock,
			 counter => counter,
          pulse => pulse
        );

   -- Clock process definitions
   clock_process :process
   begin
		clock <= '0';
		wait for clock_period/2;
		clock <= '1';
		wait for clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
		-- prepare for stimulus

		notes_on(0) <= '1';
      wait for clock_period*10;
		notes_on(0) <= '0';
		wait for clock_period*30;
		
		notes_on(1) <= '1';
      wait for clock_period*10;
		notes_on(1) <= '0';
		wait for clock_period*30;
		
		notes_on(0) <= '1';
		wait for clock_period*100;
		notes_on(1) <= '1';
		wait for clock_period*100;
		notes_on <= (others => '0');
		wait for clock_period*30;
		
		notes_on(0) <= '1';
		wait for clock_period*50;
		notes_on(1) <= '1';
		wait for clock_period*50;
		notes_on(2) <= '1';
		wait for clock_period*2000;
		notes_on <= (others => '0');
		wait for clock_period*30;

      wait;
   end process;

END;
