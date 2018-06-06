--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:35:46 06/05/2018
-- Design Name:   
-- Module Name:   C:/Users/ayhc9/Desktop/ESCOM/6TO SEMESTRE/ArquitecturaComp/arqCompVHDL-master/ALU_16/TB_ALU_16.vhd
-- Project Name:  ALU_16
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: PRACTICA03
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TB_ALU_16 IS
END TB_ALU_16;
 
ARCHITECTURE behavior OF TB_ALU_16 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
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
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
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
		A<="?0000000000011001?";
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
		A<="0101";
		B<="0111";
		operacion<="0011"; -- SUMA
		
		wait for 100 ns;
		A<="0101";
		B<="0101";
		operacion<="0111"; -- RESTA
		
		wait for 100 ns;
		operacion<="1101"; --NAND(NOT)
		
      -- insert stimulus here
		

      wait;
   end process;

END;
