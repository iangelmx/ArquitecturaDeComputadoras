
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY PRACTICA03_TB IS
END PRACTICA03_TB;
 
ARCHITECTURE behavior OF PRACTICA03_TB IS 
 

    COMPONENT PRACTICA03
    PORT(
         A : IN  std_logic_vector(15 downto 0);
         B : IN  std_logic_vector(15 downto 0);
         operacion : IN  std_logic_vector(3 downto 0);
         Z : OUT  std_logic;
         Cout : OUT  std_logic;
         Ovf : OUT  std_logic;
         N : OUT  std_logic;
         R : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(15 downto 0) := (others => '0');
   signal B : std_logic_vector(15 downto 0) := (others => '0');
   signal operacion : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Z : std_logic;
   signal Cout : std_logic;
   signal Ovf : std_logic;
   signal N : std_logic;
   signal R : std_logic_vector(15 downto 0);

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PRACTICA03 PORT MAP (
          A => A,
          B => B,
          operacion => operacion,
          Z => Z,
          Cout => Cout,
          Ovf => Ovf,
          N => N,
          R => R
        );
		  
   -- Stimulus process
   stim_proc: process
   begin		
		A<="0000000000000000";
		B<="0000000000000000";
		operacion<= "0000";
		
      -- hold reset state for 100 ns.
      wait for 100 ns;
		A<="0000000000011001";
		B<="1111111111100010";
		-- operacion = selA&selB&oper
		operacion<="0011"; -- SUMA
		
		wait for 100 ns;
		operacion<="0111"; -- RESTA
		
		wait for 100 ns;
		operacion<="0000"; -- AND
		
		wait for 100 ns;
		operacion<="1101"; -- NAND
		
		wait for 100 ns;
		operacion<="0001"; -- OR
		
		wait for 100 ns;
		operacion<="1100"; -- NOR
		
		wait for 100 ns;
		operacion<="0010"; -- XOR
		
		wait for 100 ns;
		operacion<="1010"; --XNOR
		
		wait for 100 ns;
		A<="0000000000000101";
		B<="0000000000000111";
		operacion<="0011"; -- SUMA
		
		wait for 100 ns;
		A<="0000000000000101";
		B<="0000000000000101";
		operacion<="0111"; -- RESTA
		
		wait for 100 ns;
		operacion<="1101"; --NAND(NOT)
		
      -- insert stimulus here
		

      wait;
   end process;

END;
