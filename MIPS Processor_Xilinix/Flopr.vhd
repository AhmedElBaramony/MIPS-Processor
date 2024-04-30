library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Flopr is
    GENERIC (n: NATURAL := 32);
	 Port ( CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           Load : in STD_LOGIC;
           D : in  STD_LOGIC_VECTOR (n-1 downto 0);
           Q : out  STD_LOGIC_VECTOR (n-1 downto 0));
end Flopr;

architecture Behavioral of Flopr is

begin

PROCESS (CLK,RST)
BEGIN

IF (RST = '1') THEN
Q <= (others => '0');

ELSIF (CLK' EVENT AND CLK ='1') THEN
  IF (Load = '1') THEN
    Q <= D;
  END IF;
END IF;
END PROCESS;

end Behavioral;
