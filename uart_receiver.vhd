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
--		The clock on the Digilent Atlys development board is 100 MHz?
--			http://www.digilentinc.com/Data/Products/ATLYS/Atlys_rm.pdf
--			Must divide by 3200 to get to 31250. Or just sample every 3200/4 clocks
--				(see above).
--			Then we divide it by 2 to make it more... averse to being shit.
--				(Holding down TAB would produce whack results - normaly 0x09 but
--				sometimes other garbage.)
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
    Port ( receive_data : in  STD_LOGIC;
           clock : in  STD_LOGIC;
           enable : in  STD_LOGIC;
           byte_out : out  STD_LOGIC_VECTOR (7 downto 0);
           data_ready : out  STD_LOGIC;
			  reset : in STD_LOGIC);
end uart_receiver;

architecture behavioral of uart_receiver is
	type state is (IDLE, RECV, DONE);
	signal current_state : state;
	signal next_state : state;
	signal sample_pulse : STD_LOGIC := '0';	-- has f = 4*sample frequency
	signal pulse_count : STD_LOGIC_VECTOR(2 downto 0) := "000";		-- counts to eight
	signal clock_count : STD_LOGIC_VECTOR(11 downto 0) := (others => '0');		-- to fake clock division.
	signal receive_count : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');	-- num received bytes. <10.
	signal shift_register : std_logic_vector(9 downto 0) := (others => '0');
begin

	sample_clock : process(clock, current_state)
	begin
		if current_state = RECV then
			-- This attempts to synchronise the pulse count with the start of RX byte packets. 
			-- i.e. to make sure that the 5th of 8 pulses has a consistent offset from the start
			-- of the 10-bit message. Otherwise, the serial start bit might come only 12 cycles
			-- or something before the 'fourth' sample count
			if rising_edge(clock) then
				if clock_count = 400 then		-- 3200/4/2, probably a better way there is
					sample_pulse <= '1';
					pulse_count <= pulse_count + 1;
					clock_count <= (others => '0');
				else
					-- this is subtly broken. Am I sure that it isn't counting to 201?
					sample_pulse <= '0';
					clock_count <= clock_count + 1;
				end if;
			end if;
		else
			pulse_count <= (others => '0');
			clock_count <= (others => '0');
		end if;
	end process sample_clock;
	
	set_current_state : process(clock, reset)
	begin
		if reset = '1' then
			current_state <= IDLE;
		elsif rising_edge(clock) then
			current_state <= next_state;
		end if;
	end process set_current_state;
	
	set_next_state : process(clock, receive_data, receive_count, current_state)
	begin
		next_state <= current_state;
		case (current_state) is
			when IDLE =>
				if receive_data = '0' then		-- start bit is 0 now?!
					next_state <= RECV;
				end if;
			when RECV =>
				if receive_count = 10 then
					next_state <= DONE;
				end if;
			when DONE =>
				next_state <= IDLE;
		end case;
	end process set_next_state;
	
	-- NOTE, 22/12/12: There seem to be some sampling errors. Intermittently a sample seems to be doubled.
	set_outputs : process(clock, reset)
	begin
		if reset = '1' then
			receive_count <= (others => '0');
		elsif rising_edge(clock) then
			case (current_state) is
				when RECV =>
					if sample_pulse = '1' and pulse_count = 4 then		-- 5th of 8 samples per bit.
						shift_register <= receive_data & shift_register(9 downto 1);
						receive_count <= receive_count + 1;
					end if;
					data_ready <= '0';
				when DONE =>
					byte_out <= shift_register(8 downto 1);
					data_ready <= '1';
					receive_count <= (others => '0');
				when IDLE =>
					data_ready <= '0';
					receive_count <= (others => '0');
			end case;
		end if;
	end process set_outputs;

end behavioral;

