library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Adder is
    GENERIC (n: integer := 32);
	 Port ( A : in  STD_LOGIC_VECTOR (n-1 downto 0);
           B : in  STD_LOGIC_VECTOR (n-1 downto 0);
           Y : out  STD_LOGIC_VECTOR (n-1 downto 0));
end Adder;

architecture Behavioral of Adder is

begin

Y <= A + B;

end Behavioral;