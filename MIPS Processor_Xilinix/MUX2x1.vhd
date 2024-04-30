library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX2x1 is
    GENERIC (n: integer := 32); 
	 Port ( input_0 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           input_1 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           selector : in  STD_LOGIC;
           output : out  STD_LOGIC_VECTOR (n-1 downto 0));
end MUX2x1;

architecture Behavioral of MUX2x1 is

begin

output <= 	input_0 when selector = '0' else
				input_1 when selector = '1' else
				(others =>'Z');

end Behavioral;