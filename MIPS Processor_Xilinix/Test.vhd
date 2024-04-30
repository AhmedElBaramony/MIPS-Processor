library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.Project_Package.ALL;

entity RegisterFile is
    Port ( read_sel1 : in  STD_LOGIC_VECTOR (4 downto 0);
           read_sel2 : in  STD_LOGIC_VECTOR (4 downto 0);
           write_sel : in  STD_LOGIC_VECTOR (4 downto 0);
           write_ena : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           write_data : in  STD_LOGIC_VECTOR (31 downto 0);
           data1 : out  STD_LOGIC_VECTOR (31 downto 0);
           data2 : out  STD_LOGIC_VECTOR (31 downto 0));
end RegisterFile;

architecture Behavioral of RegisterFile is

    -- Signal Declaration
    signal read_data1 : std_logic_vector(31 downto 0);
    signal read_data2 : std_logic_vector(31 downto 0);
    signal decoder_output : std_logic_vector(31 downto 0);
    signal write_data_reg : std_logic_vector(31 downto 0);

begin

    -- Read Multiplexers
    mux1 : MUX_32x1 port map (read_data1, read_data2, read_sel1, data1);
    mux2 : MUX_32x1 port map (read_data1, read_data2, read_sel2, data2);

    -- Write Decoder
    decoder1 : Decoder_5x32 port map (write_sel, decoder_output);

    -- Registers
    for i in 0 to 31 loop
        reg(i) : Flopr port map (clk, '0', write_ena AND decoder_output(i), write_data_reg, reg_outputs(i));
    end loop;

    -- Assigning the read data to the output ports
    read_data1 <= reg_outputs(conv_integer(read_sel1));
    read_data2 <= reg_outputs(conv_integer(read_sel2));

    -- Writing data to the register file
    process(clk)
    begin
        if rising_edge(clk) then
            if write_ena = '1' then
                write_data_reg <= write_data;
            end if;
        end if;
    end process;

end Behavioral;