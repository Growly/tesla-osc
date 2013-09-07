----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:10:32 12/22/2012 
-- Design Name: 
-- Module Name:    tesla_osc - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

use work.types.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tesla_osc is
    Port ( midi_rxd : in  STD_LOGIC;
           leds : inout  STD_LOGIC_VECTOR (7 downto 0);
           clock : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           pulse : out  STD_LOGIC);
end tesla_osc;

architecture Behavioral of tesla_osc is

	component uart_receiver
	port (
		receive_data : IN  std_logic;
		clock : IN  std_logic;
		enable : IN  std_logic;
		byte_out : OUT  std_logic_vector(0 to 7);
		data_ready : OUT  std_logic;
		reset : IN std_logic
	);
	end component;
	
	component pulse_aggregator
	port (
		channels_on : in  STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
		channels_period : in  BANK_OF_PERIOD_COUNTS;
		clock : in	STD_LOGIC;	-- This is the worst editor, ever.
		counter : out STD_LOGIC_VECTOR(27 downto 0);
		pulse : out  STD_LOGIC
	);
	end component;
	
	-- TODO(growly): support more commands.
	type MIDI_COMMAND is (
		NONE_VALID,
		NOTE_ON,
		NOTE_OFF,
		POLYPHONIC_AFTERTOUCH,
		CONTROL_CHANGE,
		PROGRAM_CHANGE,
		CHANNEL_AFTERTOUCH,
		PITCH_WHEEL);
	
	-- Busses to UART.
	signal midi_data_message_count : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');	-- counter.
	signal midi_data_byte : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
	signal midi_data_ready : STD_LOGIC;
	
	signal midi_data_messages : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
	
	-- MIDI status message summary:
	-- 1sssnnnn
	-- | | |
	-- | | +- channel
	-- | +- message type
	-- +- 1 for status messages, 0 for data 
	--
	-- Message type, parsed from bits 6-4.
	signal midi_current_command : MIDI_COMMAND := NONE_VALID;
	-- The channel on which the command operates, read from bits 3 to 0.
	signal midi_current_channel : NATURAL := 0;
	
	signal midi_channels_on : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
	
	signal midi_channels_period : BANK_OF_PERIOD_COUNTS := (others => (others => '0'));
		
begin
	-- MIDI commands come in here
	uart : uart_receiver
	port map (
		receive_data => midi_rxd,			-- Serial RX line
		clock => clock,						-- System clock
		enable => '1',
		byte_out => midi_data_byte,		-- MIDI command byte
		data_ready => midi_data_ready,	-- MIDI command byte ready signal
		reset => '0'
	);
	
	pulses : pulse_aggregator
	port map (
		channels_on => midi_channels_on,
		channels_period => midi_channels_period,
		clock => clock,
		-- counter => <nothing>,
		pulse => pulse
	);

--	midi_responder : process(clock, midi_data_ready, midi_data_message_count, reset)
--	begin
--		if reset = '1' then 
--			midi_data_complete <= (others => '0');
--			midi_data_message_count <= (others => '0');
--		else
--			if midi_data_ready = '1' then
--				midi_data_complete <= midi_data_complete(7 downto 0) & midi_data_byte;
--				midi_data_message_count <= midi_data_message_count + 1;
--			end if;
--		end if;
--	end process midi_responder;


	midi_responder : process(clock, midi_data_ready, midi_data_message_count, reset)
	begin
		if reset = '1' then
		else
			if midi_data_ready = '1' then
				if midi_data_byte(7) = '1' then
					-- Status message.
					case midi_data_byte(6 downto 4) is
						when "000" => midi_current_command <= NOTE_OFF;
						when "001" => midi_current_command <= NOTE_ON;
						when "010" => midi_current_command <= NONE_VALID; -- POLYPHONIC_AFTERTOUCH
						when "011" => midi_current_command <= NONE_VALID; -- CONTROL_CHANGE
						when "100" => midi_current_command <= NONE_VALID; -- PROGRAM_CHANGE
						when "101" => midi_current_command <= NONE_VALID; -- CHANNEL_AFTERTOUCH
						when "110" => midi_current_command <= NONE_VALID; -- PITCH_WHEEL
						when others => midi_current_command <= NONE_VALID;
					end case;
					midi_current_channel <= to_integer(unsigned(midi_data_byte(3 downto 0)));
				else
					-- Data message.
					if midi_current_command /= NONE_VALID then
						midi_data_messages <= midi_data_messages(7 downto 0) & midi_data_byte;
						midi_data_message_count <= midi_data_message_count + '1';
					end if;
					
					case midi_current_command is
						when NOTE_ON =>
							if midi_data_message_count = 2 then
								-- need a function to map notes to periods.
								midi_channels_on(midi_current_channel) <= '1';
							end if;
						when NOTE_OFF =>
							if midi_data_message_count = 2 then
								midi_channels_on(midi_current_channel) <= '0';
							end if;
						when others => null;
					end case;
				end if;
			end if;
		end if;
	end process midi_responder;

--	leds(7 downto 0) <= midi_data_byte(7 downto 0);

end Behavioral;

