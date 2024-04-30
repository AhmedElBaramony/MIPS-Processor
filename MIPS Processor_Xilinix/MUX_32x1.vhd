library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX_32x1 is
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
end MUX_32x1;

architecture Behavioral of MUX_32x1 is

begin


Data_Out <= input_0 when Selector = "00000" else
				input_1 when Selector = "00001" else
				input_2 when Selector = "00010" else
				input_3 when Selector = "00011" else
				input_4 when Selector = "00100" else
				input_5 when Selector = "00101" else
				input_6 when Selector = "00110" else
				input_7 when Selector = "00111" else
				input_8 when Selector = "01000" else
				input_9 when Selector = "01001" else
				input_10 when Selector = "01010" else
				input_11 when Selector = "01011" else
				input_12 when Selector = "01100" else
				input_13 when Selector = "01101" else
				input_14 when Selector = "01110" else
				input_15 when Selector = "01111" else
				input_16 when Selector = "10000" else
				input_17 when Selector = "10001" else
				input_18 when Selector = "10010" else
				input_19 when Selector = "10011" else
				input_20 when Selector = "10100" else
				input_21 when Selector = "10101" else
				input_22 when Selector = "10110" else
				input_23 when Selector = "10111" else
				input_24 when Selector = "11000" else
				input_25 when Selector = "11001" else
				input_26 when Selector = "11010" else
				input_27 when Selector = "11011" else
				input_28 when Selector = "11100" else
				input_29 when Selector = "11101" else
				input_30 when Selector = "11110" else
				input_31 when Selector = "11111";

end Behavioral;

