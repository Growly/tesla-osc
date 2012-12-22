----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 			Arya Reais-Parsi
-- 
-- Create Date:    	08:26:36 10/06/2012 
-- Design Name: 
-- Module Name:    	pulse_generator - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description:
--		Generates a single complete 'square' pulse of specifiable duty and period for each rising edge of the trigger signal. Must be explicitly enabled.
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

entity pulse_generator is
    Port (	clock : in STD_LOGIC;
				enable : in STD_LOGIC;	-- enable hi, like a badass.
				pulse : out STD_LOGIC;
				counter_out : out STD_LOGIC_VECTOR(27 downto 0);
				pulse_width : STD_LOGIC_VECTOR(27 downto 0); --  := (4 => '1', others => '0'); -- TODO(growly): Better name for this signal.	
				duty : STD_LOGIC_VECTOR(27 downto 0)	); -- := (3 => '1', 2 => '1', others => '0')	);
end pulse_generator;

architecture Behavioral of pulse_generator is
signal counter_int : STD_LOGIC_VECTOR(27 downto 0) := (others => '0');
signal pulse_internal : STD_LOGIC;
begin

process (enable, clock, counter_int, pulse_width)
begin
	if clock='1' and clock'event then
		counter_int <= counter_int + 1;
	end if;
	if enable='0' then
		counter_int <= (others => '0');
	end if;
	if counter_int = pulse_width then
		counter_int <= (others => '0');
	end if;
end process;

process (counter_int, duty, enable)
begin
	if counter_int >= 0 and counter_int < duty and enable = '1' then
		pulse_internal <= '1';
	else
		pulse_internal <= '0';
	end if;
end process;

pulse <= pulse_internal;

counter_out <= counter_int;

end Behavioral;