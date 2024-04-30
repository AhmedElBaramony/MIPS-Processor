library IEEE;
use IEEE.STD_LOGIC_1164.all;

package Datapath_Package is

component Reg
    Port ( read_sel1 : in  STD_LOGIC_VECTOR (4 downto 0);
           read_sel2 : in  STD_LOGIC_VECTOR (4 downto 0);
           write_sel : in  STD_LOGIC_VECTOR (4 downto 0);
           write_ena : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           write_data : in  STD_LOGIC_VECTOR (31 downto 0);
           data1 : out  STD_LOGIC_VECTOR (31 downto 0);
           data2 : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component ALU
    Port ( data1 : in  STD_LOGIC_VECTOR (31 downto 0);
           data2 : in  STD_LOGIC_VECTOR (31 downto 0);
           aluop : in  STD_LOGIC_VECTOR (3 downto 0);
           dataout : out  STD_LOGIC_VECTOR (31 downto 0);
			  zflag : out STD_LOGIC);
end component;

component MUX2x1
	GENERIC (n: integer); 
	Port ( input_0 : in  STD_LOGIC_VECTOR (n-1 downto 0);
          input_1 : in  STD_LOGIC_VECTOR (n-1 downto 0);
          selector : in  STD_LOGIC;
          output : out  STD_LOGIC_VECTOR (n-1 downto 0));
end component;

component Adder
	GENERIC (n: integer);
	Port ( A : in  STD_LOGIC_VECTOR (n-1 downto 0);
          B : in  STD_LOGIC_VECTOR (n-1 downto 0);
          Y : out  STD_LOGIC_VECTOR (n-1 downto 0));
end component;

component sl2
	Port ( input : in  STD_LOGIC_VECTOR (31 downto 0);
          output : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component Flopr 
	GENERIC(n:integer);
	 Port ( CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           Load : in STD_LOGIC;
           D : in  STD_LOGIC_VECTOR (n-1 downto 0);
           Q : out  STD_LOGIC_VECTOR (n-1 downto 0));
end component;

component signext
	Port ( input : in  STD_LOGIC_VECTOR (15 downto 0);
           output : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

end Datapath_Package;