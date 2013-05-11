--
--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 
--
--   To use any of the example code shown below, uncomment the lines and modify as necessary
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;

package types is

	subtype ARRAY_OF_27 is STD_LOGIC_VECTOR(27 downto 0);
	
	-- TODO(growly): Wait, why not a 16x28 array of STD_LOGIC?
	type BANK_OF_PERIOD_COUNTS is array(integer range 0 to 16) of ARRAY_OF_27;

end types;

package body types is

-- nada
 
end types;