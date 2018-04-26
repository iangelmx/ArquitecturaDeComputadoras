--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:47:19 04/25/2018
-- Design Name:   
-- Module Name:   C:/Users/ayhc9/arqCompVHDL/PILA/TB_PILA.vhd
-- Project Name:  PILA
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: PILA
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
LIBRARY STD;
USE STD.TEXTIO.ALL;
USE ieee.std_logic_TEXTIO.ALL;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TB_PILA IS
END TB_PILA;
 
ARCHITECTURE behavior OF TB_PILA IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PILA
    PORT(
         datos : IN  std_logic_vector(15 downto 0);
         PCout : OUT  std_logic_vector(15 downto 0);
         stack : out integer range 0 to 15;
         clk : IN  std_logic;
         clr : IN  std_logic;
         up : IN  std_logic;
         wpc : IN  std_logic;
         down : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal datos : std_logic_vector(15 downto 0) := (others => '0');
   signal clk : std_logic := '0';
   signal clr : std_logic := '0';
   signal up : std_logic := '0';
   signal wpc : std_logic := '0';
   signal down : std_logic := '0';

 	--Outputs
   signal PCout : std_logic_vector(15 downto 0);
   signal stack : integer range 0 to 15;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PILA PORT MAP (
          datos => datos,
          PCout => PCout,
          stack => stack,
          clk => clk,
          clr => clr,
          up => up,
          wpc => wpc,
          down => down
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
	file ARCH_RES : TEXT;																					
	variable LINEA_RES : line;
	VARIABLE var_PCout : STD_LOGIC_VECTOR (15 downto 0);
	VARIABLE var_SP : STD_LOGIC_VECTOR (4 downto 0); --integer range 0 to 7;
	
	file ARCH_VEC : TEXT;
	variable LINEA_VEC : line;
	VARIABLE CADENA : STRING(1 TO 5);
	VARIABLE var_datos : STD_LOGIC_VECTOR (15 downto 0);
	VARIABLE var_clr : STD_LOGIC;
	VARIABLE var_up : STD_LOGIC;
	VARIABLE var_wpc : STD_LOGIC;
	VARIABLE var_dw : STD_LOGIC;
   begin		
		file_open(ARCH_VEC, "IN.txt", READ_MODE); 	
		file_open(ARCH_RES, "OUT.txt", WRITE_MODE); 	

		CADENA := "  CLR";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);
		CADENA := "   UP";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);
		CADENA := "   DW";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);
		CADENA := "  WPC";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);
		CADENA := "DATOS";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);
		CADENA := "   SP";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);
		CADENA := "PCout";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);
		writeline(ARCH_RES,LINEA_RES);-- escribe la linea en el archivo

		WAIT FOR 10 NS;
		FOR I IN 0 TO 22 LOOP
			readline(ARCH_VEC,LINEA_VEC); -- lee una linea completa

			read(LINEA_VEC, var_clr);
			clr <= var_clr;
			read(LINEA_VEC, var_up);
			up <= var_up;		
			read(LINEA_VEC, var_dw);  
			down <= var_dw;
			read(LINEA_VEC, var_wpc);  
			wpc <= var_wpc;
			Hread(LINEA_VEC, var_datos);  
			datos <= var_datos;
			
			WAIT UNTIL RISING_EDGE(CLK);	--ESPERO AL FLANCO DE SUBIDA 

			
			var_SP := std_logic_vector(to_unsigned(stack, var_SP'length)); --conv_std_logic_vector(SOME_INTEGER, 4);
			var_PCout := PCout;
			write(LINEA_RES, var_clr, right, 6);
			write(LINEA_RES, var_up, 	right, 6);
			write(LINEA_RES, var_dw, 	right, 6);
			write(LINEA_RES, var_wpc, 	right, 6);
			Hwrite(LINEA_RES, var_datos, 	right, 6);
			write(LINEA_RES, var_SP, 	right, 6);
			Hwrite(LINEA_RES, var_PCout, 	right, 6);

			writeline(ARCH_RES,LINEA_RES);-- escribe la linea en el archivo
			
		end loop;
		file_close(ARCH_VEC);  -- cierra el archivo
		file_close(ARCH_RES);  -- cierra el archivo

      wait;
   end process;

END;
