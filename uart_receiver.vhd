----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 		Arya Reais-Parsi
--							can't understand why this editor is so terrible
-- 
-- Create Date:    23:05:43 12/17/2012 
-- Design Name: 
-- Module Name:    uart_receiver - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--		UART receiver for MIDI input! OMG!
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--		General outline follows.
--			Need a sample clock of f = 31250 Hz (MIDI baud rate).
--			Sample input at 4f, 3/4 through a cycle to allow sufficient voltage
--				rise time between bit periods.
--			Store each subsequent bit into a shift register.
--			Wait for high input signal (serial start bit), read following 9 bits.
--			Finite state machines.
--			The moon.
--		The clock on the Digilent Atlys development board is 24 MHz?
--			Must divide by 768 to get to 31250. Or just sample every 4*768 clocks
--				(see above).
--			You know, this really has to be done outside of this module. Our UART
--				shouldn't have to care, y'know? It just isn't right. TODO.
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity uart_receiver is
    Port ( receive : in  STD_LOGIC;
           clock : in  STD_LOGIC;
           enable : in  STD_LOGIC;
           byte_out : out  STD_LOGIC_VECTOR (7 downto 0);
           data_ready : out  STD_LOGIC );
end uart_receiver;

architecture behavioral of uart_receiver is
	type state is (IDLE, RECV, DONE);
	signal current_state : state;
	signal next_state : state;
	signal sample_pulse : STD_LOGIC := '0';	-- has f = 4*sample frequency
	signal pulse_count : STD_LOGIC_VECTOR(1 downto 0) := "00";		-- counts to four
	signal clock_count : STD_LOGIC_VECTOR(11 downto 0) := (others => '0');		-- to fake clock division.
	signal received_count : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');	-- num received bytes. <10.
	signal shift_register : std_logic_vector(9 downto 0) := (others => '0');
begin

	sample_clock : process(clock)
	begin
		if rising_edge(clock) then
			if clock_count = 3072 then		-- 4*768, I wish I was good at this already, y'all
				sample_pulse <= '1';
				pulse_count <= pulse_count + 1;
				clock_count <= (others => '0');
			else
				sample_pulse <= '0';
				clock_count <= clock_count + 1;
			end if;
		end if;
	end process sample_clock;
	
	-- temp for testing
	byte_out(1 downto 0) <= pulse_count;
	data_ready <= sample_pulse;

end behavioral;

