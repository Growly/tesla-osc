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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

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
		notes_on : in  STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
		clock : in	STD_LOGIC;	-- This is the worst editor, ever.
		counter : out STD_LOGIC_VECTOR(27 downto 0);
		pulse : out  STD_LOGIC
	);
	end component;
	
	signal midi_data_byte_count : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');	-- counter.
	signal midi_data_byte : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
	signal midi_data_ready : STD_LOGIC;
	signal midi_data_complete : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
	
	signal midi_notes_on : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
		
begin
	-- MIDI commands come in here
	-- SHIT IS WAY BUGGY
	uart : uart_receiver
	port map (
		receive_data => midi_rxd,			-- Serial RX line
		clock => clock,						-- System clock
		enable => '1',
		byte_out => midi_data_byte,				-- MIDI command byte
		data_ready => midi_data_ready,	-- MIDI command byte ready signal
		reset => '0'
	);
	
	pulses : pulse_aggregator
	port map (
		notes_on => midi_notes_on,
		clock => clock,
		-- counter => <nothing>,
		pulse => pulse
	);

--	midi_responder : process(clock, midi_data_ready, midi_data_byte_count, reset)
--	begin
--		if reset = '1' then 
--			midi_data_complete <= (others => '0');
--			midi_byte_count <= (others => '0');
--		else
--			if midi_data_ready = '1' then
--				midi_data_complete <= midi_data_complete(7 downto 0) & midi_data_byte;
--				midi_byte_count <= midi_byte_count + 1;
--			end if;
--		end if;
--	end process midi_responder;

	leds(7 downto 0) <= midi_data_byte(7 downto 0);

end Behavioral;

