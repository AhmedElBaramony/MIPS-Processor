library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity control_main_decoder is
    Port ( op : in  STD_LOGIC_VECTOR (5 downto 0);
           memtoreg : out  STD_LOGIC;
           memwrite : out  STD_LOGIC;
           branch : out  STD_LOGIC;
           alusrc : out  STD_LOGIC;
           regdst : out  STD_LOGIC;
           regwrite : out  STD_LOGIC;
           jump : out  STD_LOGIC;
           aluop : out  STD_LOGIC_VECTOR (1 downto 0));
end control_main_decoder;

architecture Behavioral of control_main_decoder is

signal controls: STD_LOGIC_VECTOR(8 downto 0);

begin

process(op)

	begin

	case op is
	
	when "000000" => controls <= "110000010"; --RTYPE
	when "100011" => controls <= "101001000"; --LW
	when "101011" => controls <= "001010000"; --SW
	when "000100" => controls <= "000100001"; --BEQ
	when "001000" => controls <= "101000000"; --ADDI
	when "000010" => controls <= "000000100"; --J
	when others => controls <= "---------"; --Illegal OP
	
	end case;



end process;

(regwrite, regdst, alusrc, branch, memwrite, memtoreg, jump, aluop(1), aluop(0)) <= controls;


end Behavioral;

