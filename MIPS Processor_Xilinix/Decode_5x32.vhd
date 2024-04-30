----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:33:19 04/24/2023 
-- Design Name: 
-- Module Name:    Decode_5x32 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Decode_5x32 is
    Port ( Selector : in  STD_LOGIC_VECTOR (0 downto 0);
           Data_Out : out  STD_LOGIC_VECTOR (0 downto 0));
end Decode_5x32;

architecture Behavioral of Decode_5x32 is

begin


end Behavioral;

