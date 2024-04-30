library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sl2_26_28 is
    Port ( input : in  STD_LOGIC_VECTOR (25 downto 0);
           output : out  STD_LOGIC_VECTOR (27 downto 0));
end sl2_26_28;

architecture Behavioral of sl2_26_28 is

begin

output <= input & "00";

end Behavioral;

