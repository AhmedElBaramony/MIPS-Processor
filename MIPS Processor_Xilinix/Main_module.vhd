library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.Main_Module_Package.ALL;

entity Main_module is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           writedata : out  STD_LOGIC_VECTOR (31 downto 0);
           dataadr : out  STD_LOGIC_VECTOR (31 downto 0);
           memwrite : out  STD_LOGIC);
end Main_module;

architecture Behavioral of Main_module is

signal memwritet: STD_LOGIC;
signal pc, instr, readdata, dataadrt, writedatat: STD_LOGIC_VECTOR (31 downto 0);

begin

processor: mips port map (clk, reset, pc, instr, memwritet, dataadrt , writedatat, readdata);
instr_mem: imem port map (pc (7 downto 2), instr);
exter_mem: dmem port map (clk, memwritet , dataadrt, writedatat, readdata);

dataadr <= dataadrt;
memwrite <= memwritet;
writedata <= writedatat;

end Behavioral;