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
         receive : IN  std_logic;
         clock : IN  std_logic;
         enable : IN  std_logic;
         byte_out : OUT  std_logic_vector(0 to 7);
         data_ready : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal receive : std_logic := '0';
   signal clock : std_logic := '0';
   signal enable : std_logic := '0';

 	--Outputs
   signal byte_out : std_logic_vector(0 to 7);
   signal data_ready : std_logic;

   -- Clock period definitions
   constant clock_period : time := 41667 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: uart_receiver PORT MAP (
          receive => receive,
          clock => clock,
          enable => enable,
          byte_out => byte_out,
          data_ready => data_ready
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

      wait for clock_period*10000;

      -- insert stimulus here 

      wait;
   end process;

END;
