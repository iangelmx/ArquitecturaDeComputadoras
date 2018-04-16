--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:04:05 04/16/2018
-- Design Name:   
-- Module Name:   C:/Users/ayhc9/arqCompVHDL/MEMORIA_PROGRAMA/TB_MEMORIA_PROGRAMA.vhd
-- Project Name:  MEMORIA_PROGRAMA
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MEMORIA_PROGRAMA
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
 
ENTITY TB_MEMORIA_PROGRAMA IS
END TB_MEMORIA_PROGRAMA;
 
ARCHITECTURE behavior OF TB_MEMORIA_PROGRAMA IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MEMORIA_PROGRAMA
    PORT(
         dir : IN  std_logic_vector(15 downto 0);
         data : OUT  std_logic_vector(24 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal dir : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal data : std_logic_vector(24 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MEMORIA_PROGRAMA PORT MAP (
          dir => dir,
          data => data
        );

   -- Clock process definitions
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

--      wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
