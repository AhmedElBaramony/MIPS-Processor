library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.Project_Package.ALL;

entity Phase_1 is
    Port ( Read_Reg_1 : in  STD_LOGIC_VECTOR (0 downto 0);
           Read_Reg_2 : in  STD_LOGIC_VECTOR (0 downto 0);
           Write_Reg : in  STD_LOGIC_VECTOR (0 downto 0);
           Write_Data : in  STD_LOGIC_VECTOR (0 downto 0);
           Write_Enable : in  STD_LOGIC;
           Read_Data_1 : out  STD_LOGIC_VECTOR (0 downto 0);
           Read_Data_2 : out  STD_LOGIC_VECTOR (0 downto 0);
           CLK : in  STD_LOGIC);
end Phase_1;

architecture Behavioral of Phase_1 is

begin

--Write Register Operation


end Behavioral;

