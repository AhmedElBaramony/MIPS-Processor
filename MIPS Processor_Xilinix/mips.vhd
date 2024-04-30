library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.MIPS_Package.ALL;


entity mips is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           pc : out  STD_LOGIC_VECTOR (31 downto 0);
           instr : in  STD_LOGIC_VECTOR (31 downto 0);
           memwrite : out  STD_LOGIC;
           aluout : out  STD_LOGIC_VECTOR (31 downto 0);
           writedata : out  STD_LOGIC_VECTOR (31 downto 0);
           readdata : in  STD_LOGIC_VECTOR (31 downto 0));
end mips;

architecture Behavioral of mips is

signal memtoreg, pcsrc, alusrc, regwrite, regdst, jump, zero: STD_LOGIC;
signal alucontrol: STD_LOGIC_VECTOR (3 downto 0);

begin

control: controller port map(instr(31 downto 26), instr(5 downto 0), zero ,memtoreg, memwrite, pcsrc, alusrc, regdst, regwrite, jump, alucontrol);
dp: Datapath port map (clk, reset, readdata, instr, memtoreg, pcsrc, alusrc, regwrite, regdst, jump, alucontrol, zero, pc, aluout, writedata);

end Behavioral;