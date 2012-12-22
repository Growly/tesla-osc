--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:09:06 12/20/2012
-- Design Name:   
-- Module Name:   C:/Users/arya/Documents/GitHub/tesla-osc/uart_receiver_testbench.vhd
-- Project Name:  vhdl_fun
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: uart_receiver
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
 
ENTITY uart_receiver_testbench IS
END uart_receiver_testbench;
 
ARCHITECTURE behavior OF uart_receiver_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT uart_receiver
    PORT(
         receive_data : IN  std_logic;
         clock : IN  std_logic;
         enable : IN  std_logic;
         byte_out : OUT  std_logic_vector(0 to 7);
         data_ready : OUT  std_logic;
			reset : IN std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal receive_data : std_logic := '1';
   signal clock : std_logic := '0';
   signal enable : std_logic := '0';
	signal reset : std_logic := '0';

 	--Outputs
   signal byte_out : std_logic_vector(0 to 7);
   signal data_ready : std_logic;

   -- Clock period definitions
   constant clock_period : time := 41667 ps;		-- 24 MHz clock
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: uart_receiver PORT MAP (
          receive_data => receive_data,
          clock => clock,
          enable => enable,
          byte_out => byte_out,
          data_ready => data_ready,
			 reset => reset
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

      wait for clock_period*100;

		-- midi note 7 on example: 10010111. Sent on the line in reverse bit order?
		-- 0 11101001 1
		receive_data <= '0';
		wait for clock_period*768;		-- f = 31250 Hz
		receive_data <= '1';
		wait for clock_period*768;
		receive_data <= '1';
		wait for clock_period*768;
		receive_data <= '1';
		wait for clock_period*768;
		receive_data <= '0';
		wait for clock_period*768;
		receive_data <= '1';
		wait for clock_period*768;
		receive_data <= '0';
		wait for clock_period*768;
		receive_data <= '0';
		wait for clock_period*768;
		receive_data <= '1';
		wait for clock_period*768;
		receive_data <= '1';
		-- byte_out should now have 10010111; data_ready should be 1, for 1 clock cycle.
				wait for clock_period*768;
		receive_data <= '0';
		wait for clock_period*768;
		receive_data <= '0';
		wait for clock_period*768;
		receive_data <= '1';
		wait for clock_period*768;
		receive_data <= '0';
		wait for clock_period*768;
		receive_data <= '1';
		wait for clock_period*768;
		receive_data <= '0';
		wait for clock_period*768;
		receive_data <= '1';
		wait for clock_period*768;
		receive_data <= '0';
		wait for clock_period*768;
		receive_data <= '1';
		wait for clock_period*768;
		receive_data <= '1';
		-- byte_out should now have 10101010; data_ready should be 1, for 1 clock cycle.

      wait;
   end process;

END;
