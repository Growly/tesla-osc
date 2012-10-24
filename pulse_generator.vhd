----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:26:36 10/06/2012 
-- Design Name: 
-- Module Name:    pulse_generator - Behavioral 
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

entity pulse_generator is
    Port ( clock : in STD_LOGIC;
           enable : in STD_LOGIC;
			  trigger : in STD_LOGIC;
           pulse : out STD_LOGIC;
			  counter_out : out STD_LOGIC_VECTOR(27 downto 0));
end pulse_generator;

architecture Behavioral of pulse_generator is
signal counter_int : STD_LOGIC_VECTOR(27 downto 0) := (others => '0');
signal pulse_internal : STD_LOGIC;
signal running : STD_LOGIC := 'L';
constant pulse_width : STD_LOGIC_VECTOR(27 downto 0) := (26 => '1', others => '0');
constant duty : STD_LOGIC_VECTOR(27 downto 0) := (27 => '1', 26 => '1', 25 => '1', others => '0');
begin

process (trigger, counter_int)
begin
	-- hack hack hack: remove event attribute to avoid having to deal with timing constraints while i have no idea what they are
	--if trigger='1' and trigger'event then
	--	running <= '1';
	--end if;
	
	-- currently retriggerable!
	-- hmmm. variable vs signal? how to force use of latch/d flip flop? learn syntax, I guess...
	-- using signal event trigger implies flip flop (latch), but otherwise logic is purely combinatorial. how to get around?
	if trigger = '1' and trigger'event then
		running <= '1';
	end if;
	if counter_int = duty then
		running <= '0';
	end if;
end process;

process (clock)
begin
	if clock='1' and clock'event then
		counter_int <= counter_int + 1;
	end if;
	if running='0' then
		counter_int <= (others => '0');
	end if;
end process;

process (counter_int)
begin
	if counter_int >= 0 and counter_int < pulse_width and running = '1' then
		pulse_internal <= '1';
	else
		pulse_internal <= '0';
	end if;
end process;

pulse <= pulse_internal AND enable;

counter_out <= counter_int;

end Behavioral;