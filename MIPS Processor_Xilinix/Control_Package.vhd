library IEEE;
use IEEE.STD_LOGIC_1164.all;

package Control_Package is

--Main Decoder
component control_main_decoder
	Port ( op : in  STD_LOGIC_VECTOR (5 downto 0);
				  memtoreg : out  STD_LOGIC;
				  memwrite : out  STD_LOGIC;
				  branch : out  STD_LOGIC;
				  alusrc : out  STD_LOGIC;
				  regdst : out  STD_LOGIC;
				  regwrite : out  STD_LOGIC;
				  jump : out  STD_LOGIC;
				  aluop : out  STD_LOGIC_VECTOR (1 downto 0));
end component;

--ALU Decoder
component alu_decoder
	Port ( aluop : in  STD_LOGIC_VECTOR (1 downto 0);
				  funct : in  STD_LOGIC_VECTOR (5 downto 0);
				  alucontrol : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

end Control_Package;