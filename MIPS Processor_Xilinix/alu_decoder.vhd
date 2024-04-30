library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity alu_decoder is
	Port (	aluop : in  STD_LOGIC_VECTOR (1 downto 0);
				funct : in  STD_LOGIC_VECTOR (5 downto 0);
				alucontrol : out  STD_LOGIC_VECTOR (3 downto 0));
end alu_decoder;

architecture Behavioral of alu_decoder is

begin

process (aluop, funct)

begin

case aluop is
when "00" => alucontrol <= "0010"; -- Addition (LW , SW , ADDi)
when "01" => alucontrol <= "0110"; -- Subtraction (BEQ)
when others =>
case funct is
when "100000" => alucontrol <= "0010"; --Add
when "100010" => alucontrol <= "0110"; --Sub
when "100100" => alucontrol <= "0000"; --And
when "100101" => alucontrol <= "0001"; --Or
when "101010" => alucontrol <= "0111"; --Slt
when others => alucontrol <= "----";
end case;
end case;

end process;

end Behavioral;