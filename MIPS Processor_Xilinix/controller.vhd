library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.Control_Package.ALL;

entity controller is
    Port ( op : in  STD_LOGIC_VECTOR (5 downto 0);
           funct : in  STD_LOGIC_VECTOR (5 downto 0);
           zero : in  STD_LOGIC;
           memtoreg : out  STD_LOGIC;
           memwrite : out  STD_LOGIC;
           pcsrc : out  STD_LOGIC;
           alusrc : out  STD_LOGIC;
           regdst : out  STD_LOGIC;
           regwrite : out  STD_LOGIC;
           jump : out  STD_LOGIC;
           alucontrol : out  STD_LOGIC_VECTOR (3 downto 0));
end controller;

architecture Behavioral of controller is

signal aluop: STD_LOGIC_VECTOR (1 downto 0);
signal branch: STD_LOGIC;

begin

main: control_main_decoder port map (op, memtoreg, memwrite, branch, alusrc, regdst, regwrite, jump, aluop);
alu_dec: alu_decoder port map (aluop, funct, alucontrol);

pcsrc <= branch AND zero;

end Behavioral;