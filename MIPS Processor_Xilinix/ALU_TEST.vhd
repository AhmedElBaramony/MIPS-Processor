LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

--USE ieee.numeric_std.ALL;
 
ENTITY ALU_TEST IS
END ALU_TEST;
 
ARCHITECTURE behavior OF ALU_TEST IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         data1 : IN  std_logic_vector(31 downto 0);
         data2 : IN  std_logic_vector(31 downto 0);
         aluop : IN  std_logic_vector(3 downto 0);
         dataout : OUT  std_logic_vector(31 downto 0);
         zflag : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal data1 : std_logic_vector(31 downto 0) := (others => '0');
   signal data2 : std_logic_vector(31 downto 0) := (others => '0');
   signal aluop : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal dataout : std_logic_vector(31 downto 0);
   signal zflag : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          data1 => data1,
          data2 => data2,
          aluop => aluop,
          dataout => dataout,
          zflag => zflag
        );

  

   -- Stimulus process
   stim_proc: process
  begin		
      -- hold DATAOUTet state for 100 ns.
     		--wait for 10 ns;
		--AND testcase
			data1<= "11000000000000000000000000000000" ;
			data2<= "10100000000000000000000000000000" ;
			aluop <= "0000" ;
			wait for 10ns;
			report "Test1";
			assert(dataout = "10000000000000000000000000000000" and zflag = '0') report "1:Fail" severity error;

			wait for 1ns;
		
		--OR testcase
			data1<= "11000000000000000000000000000000" ;
			data2<= "10100000000000000000000000000000" ;
			aluop <= "0001" ;
			wait for 10ns;
			report "Test2";
			assert(dataout = "11100000000000000000000000000000" and zflag = '0') report "2:Fail" severity error;

			wait for 1ns;
		
		--ADD testcase1 (overflow = 1, cout = 0)
			data1<= "01110000000000000000000000000000" ;
			data2<= "01100000000000000000000000000000" ;
			aluop <= "0010" ;
			wait for 10ns;
			report "Test3";
			assert(dataout = "11010000000000000000000000000000"  and zflag = '0') report "3:Fail" severity error;

			wait for 1ns;
		
		--ADD testcase2 (zero = 1, cout = 1)
			data1<= "11110000000000000000000000000000" ;
			data2<= "00010000000000000000000000000000" ;
			aluop <= "0010" ;
			wait for 10ns;
			report "Test4";
			assert(dataout = "00000000000000000000000000000000" and zflag = '1') report "4:Fail" severity error;

			wait for 1ns;

		--SUdata2testcase1 (cout = 1)
			data1<= "00000000000000000000000000000111" ; --data1= 7
			data2<= "00000000000000000000000000000110" ; --data2= 6
			
			aluop <= "0110" ;
			wait for 10ns;
			report "Test5";
			assert(dataout = "00000000000000000000000000000001" and   zflag = '0') report "5:Fail" severity error;

			wait for 1ns;

		--SUdata2testcase2 (cout = 0)
			data1<= "00000000000000000000000000000110" ; --data1= 6
			data2<= "00000000000000000000000000000111" ; --data2= 7
			
			aluop <= "0110" ;
			wait for 10ns;
			report "Test6";
			assert(dataout = "11111111111111111111111111111111" and  zflag = '0') report "6:Fail" severity error;

			wait for 1ns;
			
		report "Test Complete";
      wait;
   end process;

END;