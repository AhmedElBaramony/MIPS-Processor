library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity signext is
    Port ( input : in  STD_LOGIC_VECTOR (15 downto 0);
           output : out  STD_LOGIC_VECTOR (31 downto 0));
end signext;

architecture Behavioral of signext is

begin

output <= 	X"ffff" & input when input(15) = '1' else
				X"0000" & input when input(15) = '0';



end Behavioral;

