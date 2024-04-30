library IEEE;
use IEEE.STD_LOGIC_1164.all; 
use IEEE.STD_LOGIC_SIGNED.all;
use IEEE.STD_LOGIC_ARITH.all;
use ieee.numeric_std.all;
-- use IEEE.NUMERIC_STD_UNSIGNED.all;

ENTITY testbench IS
END testbench;

ARCHITECTURE behavior OF testbench IS 

-- Component Declaration
COMPONENT Main_module
PORT(	clk : in  STD_LOGIC;
		reset : in  STD_LOGIC;
		writedata : out  STD_LOGIC_VECTOR (31 downto 0);
		dataadr : out  STD_LOGIC_VECTOR (31 downto 0);
		memwrite : out  STD_LOGIC);
END COMPONENT;

signal writedata, dataadr: STD_LOGIC_VECTOR(31 downto 0);
signal clk, reset, memwrite: STD_LOGIC;
		 

BEGIN

-- Component Instantiation
dut: Main_module port map(clk, reset, writedata, dataadr, memwrite);


-- Generate clock with 10 ns period
process begin
clk <= '1';
wait for 5 ns;
clk <= '0';
wait for 5 ns;
end process;

-- Generate reset for first two clock cycles
process begin
reset <= '1';
wait for 22 ns;
reset <= '0';
wait;
end process;

-- check that 7 gets written to address 84 at end of program
process(clk) begin
if (clk'event and clk = '0' and memwrite = '1') then
if (CONV_INTEGER(dataadr) = 84 and CONV_INTEGER(writedata) = 7) then
report "NO ERRORS: Simulation succeeded" severity failure;
elsif (CONV_INTEGER(dataadr) = 84) then
report "Simulation failed" severity failure;
end if;
end if;

end process;
end;
