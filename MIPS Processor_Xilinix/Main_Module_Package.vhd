library IEEE;
use IEEE.STD_LOGIC_1164.all;

package Main_Module_Package is

component mips
	Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           pc : out  STD_LOGIC_VECTOR (31 downto 0);
           instr : in  STD_LOGIC_VECTOR (31 downto 0);
           memwrite : out  STD_LOGIC;
           aluout : out  STD_LOGIC_VECTOR (31 downto 0);
           writedata : out  STD_LOGIC_VECTOR (31 downto 0);
           readdata : in  STD_LOGIC_VECTOR (31 downto 0));
end component;

component imem
	port(	a: in STD_LOGIC_VECTOR(5 downto 0);
			rd: out STD_LOGIC_VECTOR(31 downto 0));
end component;

component dmem
	port(	clk, we: in STD_LOGIC;
			a, wd: in STD_LOGIC_VECTOR (31 downto 0);
			rd: out STD_LOGIC_VECTOR (31 downto 0));
end component;

end Main_Module_Package;