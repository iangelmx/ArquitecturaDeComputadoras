--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:18:06 04/11/2018
-- Design Name:   
-- Module Name:   C:/Users/ayhc9/arqCompVHDL/ARCHIVO_REG/TB_ARCHIVO_REG.vhd
-- Project Name:  ARCHIVO_REG
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ARCHIVO_REG
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
 
ENTITY TB_ARCHIVO_REG IS
END TB_ARCHIVO_REG;
 
ARCHITECTURE behavior OF TB_ARCHIVO_REG IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ARCHIVO_REG
    PORT(
         dir_r : IN  std_logic_vector(2 downto 0);
         dir_w : IN  std_logic_vector(2 downto 0);
         dato_in : IN  std_logic_vector(7 downto 0);
         dato_out : OUT  std_logic_vector(7 downto 0);
         wr : IN  std_logic;
         clk : IN  std_logic;
         clr : IN  std_logic;
         she : IN  std_logic;
         dir : IN  std_logic;
         shamt : IN  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal dir_r : std_logic_vector(2 downto 0) := (others => '0');
   signal dir_w : std_logic_vector(2 downto 0) := (others => '0');
   signal dato_in : std_logic_vector(7 downto 0) := (others => '0');
   signal wr : std_logic := '0';
   signal clk : std_logic := '0';
   signal clr : std_logic := '0';
   signal she : std_logic := '0';
   signal dir : std_logic := '0';
   signal shamt : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal dato_out : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ARCHIVO_REG PORT MAP (
          dir_r => dir_r,
          dir_w => dir_w,
          dato_in => dato_in,
          dato_out => dato_out,
          wr => wr,
          clk => clk,
          clr => clr,
          she => she,
          dir => dir,
          shamt => shamt
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
