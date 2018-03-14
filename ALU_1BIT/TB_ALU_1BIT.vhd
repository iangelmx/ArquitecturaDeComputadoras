--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:09:31 03/14/2018
-- Design Name:   
-- Module Name:   C:/Users/ayhc9/arqCompVHDL/ALU_1BIT/TB_ALU_1BIT.vhd
-- Project Name:  ALU_1BIT
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU_1BIT
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
 
ENTITY TB_ALU_1BIT IS
END TB_ALU_1BIT;
 
ARCHITECTURE behavior OF TB_ALU_1BIT IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU_1BIT
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         sel_a : IN  std_logic;
         sel_b : IN  std_logic;
         cin : IN  std_logic;
         operacion : IN  std_logic_vector(1 downto 0);
         cout : OUT  std_logic;
         resul : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '1';
   signal b : std_logic := '1';
   signal sel_a : std_logic := '0';
   signal sel_b : std_logic := '0';
   signal cin : std_logic := '0';
   signal operacion : std_logic_vector(1 downto 0) := "00";

 	--Outputs
   signal cout : std_logic;
   signal resul : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU_1BIT PORT MAP (
          a => a,
          b => b,
          sel_a => sel_a,
          sel_b => sel_b,
          cin => cin,
          operacion => operacion,
          cout => cout,
          resul => resul
        );

--   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
--
--      wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
