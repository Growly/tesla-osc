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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity pulse_aggregator is
    Port ( notes_on : in  STD_LOGIC_VECTOR(7 downto 0);
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
		pulse_width : IN STD_LOGIC_VECTOR(27 downto 0);
		duty : IN STD_LOGIC_VECTOR(27 downto 0)
   );
	end component;

	constant duty : STD_LOGIC_VECTOR(27 downto 0) := (1 => '1', others => '0');
	constant duty_min : STD_LOGIC_VECTOR(27 downto 0) := (3 => '1', 2 => '1', 1 => '1', others => '0');
	constant duty_max : STD_LOGIC_VECTOR(27 downto 0) := (4 => '1', others => '0');
	constant pulse_width_min : STD_LOGIC_VECTOR(27 downto 0) := (3 => '1', others => '0');
	
	signal pulses : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
	signal hold_on : STD_LOGIC := 'L';
	signal counter_int : STD_LOGIC_VECTOR(27 downto 0) := (others => '0');

begin
	-- Note duty cycles are actually a TODO function of clock frequency, here arbitrary.
	A : pulse_generator
	port map (
		clock => clock,
		enable => notes_on(0),
		pulse_width =>  (4 => '1', others => '0'),	-- 16
		duty => duty,
		pulse => pulses(0)
	);
	
	B : pulse_generator
	port map (
		clock => clock,
		enable => notes_on(1),
		pulse_width =>  (5 => '1', 3 => '1', others => '0'),	-- 40
		duty => duty,
		pulse => pulses(1)
	);
		
	C : pulse_generator
	port map (
		clock => clock,
		enable => notes_on(2),
		pulse_width =>  (5 => '1', 4 => '1', 2 => '1', 0 => '1', others => '0'),	-- 53
		duty => duty,
		pulse => pulses(2)
	);
	
	pulses(7 downto 2) <= (others => '0');
	
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
				pulse <= or pulses;
			else
				pulse <= '0';
			end if;
			if counter_int = pulse_width_min then
				hold_on <= '0';
				counter_int <= (others => '0');
			end if;
		else
			pulse <= '0';
		end if;
	end process;
	
	counter <= counter_int;

end Behavioral;

