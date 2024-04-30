library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.datapath_pack.ALL;

entity Datapath is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           readdata: in STD_LOGIC_VECTOR(31 downto 0);
			  instr : in  STD_LOGIC_VECTOR (31 downto 0);
			  memtoreg, pcsrc,alusrc,regwrite, regdst, jump: in STD_LOGIC;  
           aluoperation : in  STD_LOGIC_VECTOR (3 downto 0);
           zero : out  STD_LOGIC;
           pc,aluout, writedata : out  STD_LOGIC_VECTOR (31 downto 0));
			  
end Datapath;

architecture Behavioral of Datapath is

signal reg_read_out_1, reg_read_out_2: STD_LOGIC_VECTOR(31 downto 0);
signal writereg: STD_LOGIC_VECTOR(4 downto 0);
signal pcjump, pcnext, pcnextbr, pcplus4,  pcbranch: STD_LOGIC_VECTOR(31 downto 0);
signal signimm, signimmsh: STD_LOGIC_VECTOR(31 downto 0);
signal read_mux_out, write_mux_out: STD_LOGIC_VECTOR(31 downto 0);

--Signals Instead Of Buffer
signal pc_t, aluout_t: STD_LOGIC_VECTOR(31 downto 0);

begin

--PC Instruction Path
pcjump <= pcplus4(31 downto 28) & instr (25 downto 0) & "00";

pcreg: Flopr generic map (32) port map (clk, reset, '1' ,pcnext, pc_t);
pcadd1: Adder generic map (32) port map (pc_t, X"00000004", pcplus4);
immsh: sl2 port map (signimm, signimmsh);
pcadd2: Adder generic map (32) port map (pcplus4, signimmsh, pcbranch);
pcbrmux: MUX2x1 generic map(32) port map(pcplus4, pcbranch,  pcsrc, pcnextbr);
pcmux: MUX2x1 generic map(32) port map(pcnextbr, pcjump, jump,  pcnext);

--MUX RT (Write Register) "Correct"
writeregmux: MUX2x1 generic map(5) port map(instr(20 downto 16), instr(15 downto 11),  regdst, writereg);

--Sign Extender "Correct" 
sign_extender: signext port map(instr(15 downto 0),signimm);

--MUX ALU Input (2)
readregmux: MUX2x1 generic map(32) port map(reg_read_out_2, signimm,  alusrc, read_mux_out);

--Register
Regist : Reg port map (instr(25 downto 21) , instr(20 downto 16) , writereg , regwrite, clk, reset , write_mux_out , reg_read_out_1 , reg_read_out_2);

--ALU
ALU1 : ALU port map (reg_read_out_1 , read_mux_out , aluoperation , aluout_t , zero);

--MUX Write To Register
writeenmux: MUX2x1 generic map(32) port map(aluout_t, readdata,  memtoreg, write_mux_out);

pc <= pc_t;
writedata <= reg_read_out_2;
aluout <= aluout_t;

end Behavioral;