library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.Project_Package.ALL;

entity Reg is
    Port ( read_sel1 : in  STD_LOGIC_VECTOR (4 downto 0);
           read_sel2 : in  STD_LOGIC_VECTOR (4 downto 0);
           write_sel : in  STD_LOGIC_VECTOR (4 downto 0);
           write_ena : in  STD_LOGIC;
           clk : in  STD_LOGIC;
			  reset: in STD_LOGIC;
           write_data : in  STD_LOGIC_VECTOR (31 downto 0);
           data1 : out  STD_LOGIC_VECTOR (31 downto 0);
           data2 : out  STD_LOGIC_VECTOR (31 downto 0));
end Reg;

architecture Behavioral of Reg is

--Signal Declaration
signal decoder_output: STD_LOGIC_VECTOR (31 downto 0);

signal reg_outputs_0, reg_outputs_1, reg_outputs_2, reg_outputs_3, reg_outputs_4, reg_outputs_5, reg_outputs_6, reg_outputs_7, reg_outputs_8, reg_outputs_9, reg_outputs_10, reg_outputs_11, reg_outputs_12, reg_outputs_13, reg_outputs_14, reg_outputs_15, reg_outputs_16, reg_outputs_17, reg_outputs_18, reg_outputs_19, reg_outputs_20, reg_outputs_21, reg_outputs_22, reg_outputs_23, reg_outputs_24, reg_outputs_25, reg_outputs_26, reg_outputs_27, reg_outputs_28, reg_outputs_29, reg_outputs_30, reg_outputs_31: STD_LOGIC_VECTOR(31 downto 0);

begin

-------------------------------------------------------------------------------------------
----------------------------------Write Implementation-------------------------------------
-------------------------------------------------------------------------------------------

--Write Decoder
decoder1: Decoder_5x32 port map (write_sel,decoder_output);

--Registers
reg_0: Flopr GENERIC MAP (32) port map (clk, reset, write_ena AND decoder_output(0), write_data, reg_outputs_0);
reg_1: Flopr GENERIC MAP (32) port map (clk, reset, write_ena AND decoder_output(1), write_data, reg_outputs_1);
reg_2: Flopr GENERIC MAP (32) port map (clk, reset, write_ena AND decoder_output(2), write_data, reg_outputs_2);
reg_3: Flopr GENERIC MAP (32) port map (clk, reset, write_ena AND decoder_output(3), write_data, reg_outputs_3);
reg_4: Flopr GENERIC MAP (32) port map (clk, reset, write_ena AND decoder_output(4), write_data, reg_outputs_4);
reg_5: Flopr GENERIC MAP (32) port map (clk, reset, write_ena AND decoder_output(5), write_data, reg_outputs_5);
reg_6: Flopr GENERIC MAP (32) port map (clk, reset, write_ena AND decoder_output(6), write_data, reg_outputs_6);
reg_7: Flopr GENERIC MAP (32) port map (clk, reset, write_ena AND decoder_output(7), write_data, reg_outputs_7);
reg_8: Flopr GENERIC MAP (32) port map (clk, reset, write_ena AND decoder_output(8), write_data, reg_outputs_8);
reg_9: Flopr GENERIC MAP (32) port map (clk, reset, write_ena AND decoder_output(9), write_data, reg_outputs_9);
reg_10: Flopr GENERIC MAP (32) port map (clk, reset, write_ena AND decoder_output(10), write_data, reg_outputs_10);
reg_11: Flopr GENERIC MAP (32) port map (clk, reset, write_ena AND decoder_output(11), write_data, reg_outputs_11);
reg_12: Flopr GENERIC MAP (32) port map (clk, reset, write_ena AND decoder_output(12), write_data, reg_outputs_12);
reg_13: Flopr GENERIC MAP (32) port map (clk, reset, write_ena AND decoder_output(13), write_data, reg_outputs_13);
reg_14: Flopr GENERIC MAP (32) port map (clk, reset, write_ena AND decoder_output(14), write_data, reg_outputs_14);
reg_15: Flopr GENERIC MAP (32) port map (clk, reset, write_ena AND decoder_output(15), write_data, reg_outputs_15);
reg_16: Flopr GENERIC MAP (32) port map (clk, reset, write_ena AND decoder_output(16), write_data, reg_outputs_16);
reg_17: Flopr GENERIC MAP (32) port map (clk, reset, write_ena AND decoder_output(17), write_data, reg_outputs_17);
reg_18: Flopr GENERIC MAP (32) port map (clk, reset, write_ena AND decoder_output(18), write_data, reg_outputs_18);
reg_19: Flopr GENERIC MAP (32) port map (clk, reset, write_ena AND decoder_output(19), write_data, reg_outputs_19);
reg_20: Flopr GENERIC MAP (32) port map (clk, reset, write_ena AND decoder_output(20), write_data, reg_outputs_20);
reg_21: Flopr GENERIC MAP (32) port map (clk, reset, write_ena AND decoder_output(21), write_data, reg_outputs_21);
reg_22: Flopr GENERIC MAP (32) port map (clk, reset, write_ena AND decoder_output(22), write_data, reg_outputs_22);
reg_23: Flopr GENERIC MAP (32) port map (clk, reset, write_ena AND decoder_output(23), write_data, reg_outputs_23);
reg_24: Flopr GENERIC MAP (32) port map (clk, reset, write_ena AND decoder_output(24), write_data, reg_outputs_24);
reg_25: Flopr GENERIC MAP (32) port map (clk, reset, write_ena AND decoder_output(25), write_data, reg_outputs_25);
reg_26: Flopr GENERIC MAP (32) port map (clk, reset, write_ena AND decoder_output(26), write_data, reg_outputs_26);
reg_27: Flopr GENERIC MAP (32) port map (clk, reset, write_ena AND decoder_output(27), write_data, reg_outputs_27);
reg_28: Flopr GENERIC MAP (32) port map (clk, reset, write_ena AND decoder_output(28), write_data, reg_outputs_28);
reg_29: Flopr GENERIC MAP (32) port map (clk, reset, write_ena AND decoder_output(29), write_data, reg_outputs_29);
reg_30: Flopr GENERIC MAP (32) port map (clk, reset, write_ena AND decoder_output(30), write_data, reg_outputs_30);
reg_31: Flopr GENERIC MAP (32) port map (clk, reset, write_ena AND decoder_output(31), write_data, reg_outputs_31);

-------------------------------------------------------------------------------------------
-----------------------------------Read Implementation-------------------------------------
-------------------------------------------------------------------------------------------

--MUX (1)
MUX_1: MUX_32x1 port map(reg_outputs_0, reg_outputs_1, reg_outputs_2, reg_outputs_3, reg_outputs_4, reg_outputs_5, reg_outputs_6, reg_outputs_7, reg_outputs_8, reg_outputs_9, reg_outputs_10, reg_outputs_11, reg_outputs_12, reg_outputs_13, reg_outputs_14, reg_outputs_15, reg_outputs_16, reg_outputs_17, reg_outputs_18, reg_outputs_19, reg_outputs_20, reg_outputs_21, reg_outputs_22, reg_outputs_23, reg_outputs_24, reg_outputs_25, reg_outputs_26, reg_outputs_27, reg_outputs_28, reg_outputs_29, reg_outputs_30, reg_outputs_31 , read_sel1 , data1);

--MUX (2)
MUX_2: MUX_32x1 port map(reg_outputs_0, reg_outputs_1, reg_outputs_2, reg_outputs_3, reg_outputs_4, reg_outputs_5, reg_outputs_6, reg_outputs_7, reg_outputs_8, reg_outputs_9, reg_outputs_10, reg_outputs_11, reg_outputs_12, reg_outputs_13, reg_outputs_14, reg_outputs_15, reg_outputs_16, reg_outputs_17, reg_outputs_18, reg_outputs_19, reg_outputs_20, reg_outputs_21, reg_outputs_22, reg_outputs_23, reg_outputs_24, reg_outputs_25, reg_outputs_26, reg_outputs_27, reg_outputs_28, reg_outputs_29, reg_outputs_30, reg_outputs_31 , read_sel2 , data2);


end Behavioral;

