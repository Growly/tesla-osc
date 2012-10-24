--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:16:04 10/11/2012
-- Design Name:   
-- Module Name:   C:/vhdl_fun/pulse_generator_testbench.vhd
-- Project Name:  vhdl_fun
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: pulse_generator
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
 
ENTITY pulse_generator_testbench IS
END pulse_generator_testbench;
 
ARCHITECTURE behavior OF pulse_generator_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT pulse_generator
    PORT(
         clock : IN  std_logic;
         enable : IN  std_logic;
         trigger : IN  std_logic;
         pulse : OUT  std_logic;
         counter_out : OUT  std_logic_vector(27 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clock : std_logic := '0';
   signal enable : std_logic := '0';
   signal trigger : std_logic := '0';

 	--Outputs
   signal pulse : std_logic;
   signal counter_out : std_logic_vector(27 downto 0);

   -- Clock period definitions
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: pulse_generator PORT MAP (
          clock => clock,
          enable => enable,
          trigger => trigger,
          pulse => pulse,
          counter_out => counter_out
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

		enable <= '1';

      wait for clock_period*10;

      -- insert stimulus here 
		trigger <= '1';
		wait for clock_period/2;
		trigger <= '0';
		
		wait for 1000 ms;
		
		trigger <= '1';
		wait for clock_period/2;
		trigger <= '0';

      wait;
   end process;

END;
