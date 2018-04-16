--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:37:22 04/16/2018
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
LIBRARY STD;
USE STD.TEXTIO.ALL;
USE ieee.std_logic_TEXTIO.ALL;
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
         PC : IN  std_logic_vector(15 downto 0);
         instruccion : OUT  std_logic_vector(24 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal PC : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal instruccion : std_logic_vector(24 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MEMORIA_PROGRAMA PORT MAP (
          PC => PC,
          instruccion => instruccion
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
      -- hold reset state for 100 ns.
--   wait for 100 ns;	

	file ARCH_RES : TEXT;																					
	variable LINEA_RES : line;
	VARIABLE var_instruccion : STD_LOGIC_VECTOR(24 DOWNTO 0);
	
	file ARCH_VEC : TEXT;
	variable LINEA_VEC : line;
	VARIABLE var_pc : STD_LOGIC_VECTOR(15 DOWNTO 0);
	VARIABLE CADENA : STRING(1 TO 6);
   begin		
		file_open(ARCH_VEC, "IN.TXT", READ_MODE); 	
		file_open(ARCH_RES, "OUT.TXT", WRITE_MODE); 	

		--ENCABEZADPS DE OUT.TXT
		CADENA := "  A   ";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);
		CADENA := "OPCODE";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);
		CADENA := "19-16 ";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);
		CADENA := "15-12 ";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);
		CADENA := "11-8  ";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);
		CADENA := "7-4   ";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);
		CADENA := "3-0   ";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);
		writeline(ARCH_RES,LINEA_RES);-- escribe la linea en el archivo

		WAIT FOR 10 NS;
		FOR I IN 0 TO 6 LOOP
			readline(ARCH_VEC,LINEA_VEC); -- lee una linea completa

			Hread(LINEA_VEC, var_pc);
			PC <= var_pc;
			
--			WAIT UNTIL RISING_EDGE(CLK);	--ESPERO AL FLANCO DE SUBIDA 

			var_instruccion := instruccion;	
			Hwrite(LINEA_RES, var_pc, right, 5);	--ESCRIBE EL CAMPO PC
			write(LINEA_RES, var_instruccion(24 downto 20), 	right, 9);
			write(LINEA_RES, var_instruccion(19 downto 16), 	right, 6);
			write(LINEA_RES, var_instruccion(15 downto 12), 	right, 6);
			write(LINEA_RES, var_instruccion(11 downto 8), 	right, 7);
			write(LINEA_RES, var_instruccion(7 downto 4), 	right, 7);
			write(LINEA_RES, var_instruccion(3 downto 0), 	right, 7);
			

			writeline(ARCH_RES,LINEA_RES);-- escribe la linea en el archivo
			wait for 20ns;
			
		end loop;
		file_close(ARCH_VEC);  -- cierra el archivo
		file_close(ARCH_RES);  -- cierra el archivo

      wait;
--      wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
