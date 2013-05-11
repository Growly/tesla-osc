----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:55:01 11/06/2012 
-- Design Name: 
-- Module Name:    pulse_aggregator - Behavioral 
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

use work.types.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity pulse_aggregator is
    Port ( channels_on : in  STD_LOGIC_VECTOR(15 downto 0);
			  channels_period : in BANK_OF_PERIOD_COUNTS;
			  clock : in	STD_LOGIC;	-- This is the worst editor, ever.
			  counter : out STD_LOGIC_VECTOR(27 downto 0);
           pulse : out  STD_LOGIC);
end pulse_aggregator;
	architecture Behavioral of pulse_aggregator is

	component pulse_generator
	port (
		clock : IN STD_LOGIC;
      enable : IN STD_LOGIC;
      pulse : OUT STD_LOGIC;
		period : IN STD_LOGIC_VECTOR(27 downto 0);
		duty : IN STD_LOGIC_VECTOR(27 downto 0)
   );
	end component;

	constant duty : STD_LOGIC_VECTOR(27 downto 0) := (1 => '1', others => '0');
	constant duty_min : STD_LOGIC_VECTOR(27 downto 0) := (3 => '1', 2 => '1', 1 => '1', others => '0');
	constant duty_max : STD_LOGIC_VECTOR(27 downto 0) := (4 => '1', others => '0');
	constant period_min : STD_LOGIC_VECTOR(27 downto 0) := (3 => '1', others => '0');
	
	signal pulses : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
	signal hold_on : STD_LOGIC := 'L';
	signal counter_int : STD_LOGIC_VECTOR(27 downto 0) := (others => '0');

begin
	-- Note duty cycles are actually a TODO function of clock frequency, here arbitrary.
	channel_0 : pulse_generator
	port map (
		clock => clock,
		enable => channels_on(0),
		period => channels_period(0)(27 downto 0),	-- 16
		duty => duty,
		pulse => pulses(0)
	);
	
	channel_1 : pulse_generator
	port map (
		clock => clock,
		enable => channels_on(1),
		period => channels_period(1)(27 downto 0),	-- 16
		duty => duty,
		pulse => pulses(1)
	);
		
	channel_2 : pulse_generator
	port map (
		clock => clock,
		enable => channels_on(2),
		period => channels_period(2)(27 downto 0),	-- 16
		duty => duty,
		pulse => pulses(2)
	);
	
		
	channel_3 : pulse_generator
	port map (
		clock => clock,
		enable => channels_on(3),
		period => channels_period(3)(27 downto 0),	-- 16
		duty => duty,
		pulse => pulses(3)
	);
	
		
	channel_4 : pulse_generator
	port map (
		clock => clock,
		enable => channels_on(4),
		period => channels_period(4)(27 downto 0),	-- 16
		duty => duty,
		pulse => pulses(4)
	);
	
		
	channel_5 : pulse_generator
	port map (
		clock => clock,
		enable => channels_on(5),
		period => channels_period(5)(27 downto 0),	-- 16
		duty => duty,
		pulse => pulses(5)
	);
	
		
	channel_6 : pulse_generator
	port map (
		clock => clock,
		enable => channels_on(6),
		period => channels_period(6)(27 downto 0),	-- 16
		duty => duty,
		pulse => pulses(6)
	);
	
		
	channel_7 : pulse_generator
	port map (
		clock => clock,
		enable => channels_on(7),
		period => channels_period(7)(27 downto 0),	-- 16
		duty => duty,
		pulse => pulses(7)
	);
	
		
	channel_8 : pulse_generator
	port map (
		clock => clock,
		enable => channels_on(8),
		period => channels_period(8)(27 downto 0),	-- 16
		duty => duty,
		pulse => pulses(8)
	);
	
		
	channel_9 : pulse_generator
	port map (
		clock => clock,
		enable => channels_on(9),
		period => channels_period(9)(27 downto 0),	-- 16
		duty => duty,
		pulse => pulses(9)
	);
	
		
	channel_10 : pulse_generator
	port map (
		clock => clock,
		enable => channels_on(10),
		period => channels_period(10)(27 downto 0),	-- 16
		duty => duty,
		pulse => pulses(10)
	);
	
		
	channel_11 : pulse_generator
	port map (
		clock => clock,
		enable => channels_on(11),
		period => channels_period(11)(27 downto 0),	-- 16
		duty => duty,
		pulse => pulses(11)
	);
	
		
	channel_12 : pulse_generator
	port map (
		clock => clock,
		enable => channels_on(12),
		period => channels_period(12)(27 downto 0),	-- 16
		duty => duty,
		pulse => pulses(12)
	);
	
		
	channel_13 : pulse_generator
	port map (
		clock => clock,
		enable => channels_on(13),
		period => channels_period(13)(27 downto 0),	-- 16
		duty => duty,
		pulse => pulses(13)
	);
	
	channel_14 : pulse_generator
	port map (
		clock => clock,
		enable => channels_on(14),
		period => channels_period(14)(27 downto 0),	-- 16
		duty => duty,
		pulse => pulses(14)
	);
	
	channel_15 : pulse_generator
	port map (
		clock => clock,
		enable => channels_on(15),
		period => channels_period(15)(27 downto 0),	-- 16
		duty => duty,
		pulse => pulses(15)
	);
	
	process (clock, pulses, hold_on, counter_int)
	begin	
		if clock = '1' and clock'event and pulses > 0 then
			hold_on <= '1';
		end if;
		if clock = '1' and clock'event and hold_on = '1' then
			counter_int <= counter_int + 1;
		end if;
		if hold_on = '1' then
			if counter_int >= 0 and counter_int <= duty_min then
				pulse <= '1'; -- connect to pulses here?
			elsif counter_int > duty_min and counter_int <= duty_max then
				if pulses > 0 then
					pulse <= '1';
				else
					pulse <= '0';
				end if;
				-- pulse <= or pulses; -- generates ' HDLCompiler:1556 Construct illegal in this mode of VHDL'
			else
				pulse <= '0';
			end if;
			if counter_int = period_min then
				hold_on <= '0';
				counter_int <= (others => '0');
			end if;
		else
			pulse <= '0';
		end if;
	end process;
	
	counter <= counter_int;

end Behavioral;

