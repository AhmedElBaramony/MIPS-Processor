library IEEE;
use IEEE.STD_LOGIC_1164.all;

package Project_Package is

--Flopr Implementation
component Flopr GENERIC(n:integer);
	 Port ( CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           Load : in STD_LOGIC;
           D : in  STD_LOGIC_VECTOR (n-1 downto 0);
           Q : out  STD_LOGIC_VECTOR (n-1 downto 0));
end component;

--Decoder Implementation
component Decoder_5x32
    Port ( Selector : in  STD_LOGIC_VECTOR (4 downto 0);
           Data_Out : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

--MUX Implementation
component MUX_32x1
    Port ( 	input_0 : in  STD_LOGIC_VECTOR (31 downto 0);
				input_1 : in  STD_LOGIC_VECTOR (31 downto 0);
				input_2 : in  STD_LOGIC_VECTOR (31 downto 0);
				input_3 : in  STD_LOGIC_VECTOR (31 downto 0);
				input_4 : in  STD_LOGIC_VECTOR (31 downto 0);
				input_5 : in  STD_LOGIC_VECTOR (31 downto 0);
				input_6 : in  STD_LOGIC_VECTOR (31 downto 0);
				input_7 : in  STD_LOGIC_VECTOR (31 downto 0);
				input_8 : in  STD_LOGIC_VECTOR (31 downto 0);
				input_9 : in  STD_LOGIC_VECTOR (31 downto 0);
				input_10 : in  STD_LOGIC_VECTOR (31 downto 0);
				input_11 : in  STD_LOGIC_VECTOR (31 downto 0);
				input_12 : in  STD_LOGIC_VECTOR (31 downto 0);
				input_13 : in  STD_LOGIC_VECTOR (31 downto 0);
				input_14 : in  STD_LOGIC_VECTOR (31 downto 0);
				input_15 : in  STD_LOGIC_VECTOR (31 downto 0);
				input_16 : in  STD_LOGIC_VECTOR (31 downto 0);
				input_17 : in  STD_LOGIC_VECTOR (31 downto 0);
				input_18 : in  STD_LOGIC_VECTOR (31 downto 0);
				input_19 : in  STD_LOGIC_VECTOR (31 downto 0);
				input_20 : in  STD_LOGIC_VECTOR (31 downto 0);
				input_21 : in  STD_LOGIC_VECTOR (31 downto 0);
				input_22 : in  STD_LOGIC_VECTOR (31 downto 0);
				input_23 : in  STD_LOGIC_VECTOR (31 downto 0);
				input_24 : in  STD_LOGIC_VECTOR (31 downto 0);
				input_25 : in  STD_LOGIC_VECTOR (31 downto 0);
				input_26 : in  STD_LOGIC_VECTOR (31 downto 0);
				input_27 : in  STD_LOGIC_VECTOR (31 downto 0);
				input_28 : in  STD_LOGIC_VECTOR (31 downto 0);
				input_29 : in  STD_LOGIC_VECTOR (31 downto 0);
				input_30 : in  STD_LOGIC_VECTOR (31 downto 0);
				input_31 : in  STD_LOGIC_VECTOR (31 downto 0);
				Selector : in  STD_LOGIC_VECTOR (4 downto 0);
				Data_Out : out  STD_LOGIC_VECTOR (31 downto 0));
end component;


end Project_Package;