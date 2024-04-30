library IEEE;

--Library Declaration (Unsigned) -> "+-...."
use IEEE.STD_LOGIC_1164.ALL;

--UNSIGNED library is used to introduce some arethmetic operation such as Addition, Subtration, etc...
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

--Input/Output Declarations
entity ALU is
    Port ( data1 : in  STD_LOGIC_VECTOR (31 downto 0);
           data2 : in  STD_LOGIC_VECTOR (31 downto 0);
           aluop : in  STD_LOGIC_VECTOR (3 downto 0);
           dataout : out  STD_LOGIC_VECTOR (31 downto 0);
			  zflag : out STD_LOGIC);
end ALU;

architecture Behavioral of ALU is

SIGNAL tmp_1, tmp_2  : STD_LOGIC_VECTOR (31 downto 0);
SIGNAL tmp_3 : STD_LOGIC_VECTOR (31 downto 0);
SIGNAL result : STD_LOGIC_VECTOR (31 downto 0);
SIGNAL AA, BB  : STD_LOGIC_VECTOR (31 downto 0);

begin

tmp_1 <= AA + BB + aluop(2);
tmp_3 <= "0000000000000000000000000000000" & tmp_1(31);

AA <= NOT(data1) when aluop(3) = '1' else
		data1;
BB <= NOT(data2) when aluop(2) = '1' else
		data2;

result <=	(AA AND BB) when aluop(1 downto 0) = "00" else
				(AA OR BB) when aluop(1 downto 0) = "01" else
				tmp_1 when aluop(1 downto 0) = "10" else
				tmp_3 when aluop(1 downto 0) = "11" else
				(Others => 'Z');

zflag <= '1' when result = x"00000000" else '0';

dataout <= result;

end Behavioral;

