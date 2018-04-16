--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:16:46 04/16/2018
-- Design Name:   
-- Module Name:   C:/Users/ayhc9/arqCompVHDL/MEMORIA_DATOS/TB_MEMORIA_DATOS.vhd
-- Project Name:  MEMORIA_DATOS
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MEMORIA_DATOS
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
 
ENTITY TB_MEMORIA_DATOS IS
END TB_MEMORIA_DATOS;
 
ARCHITECTURE behavior OF TB_MEMORIA_DATOS IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MEMORIA_DATOS
    PORT(
         A : IN  std_logic_vector(15 downto 0);
         dato_in : IN  std_logic_vector(15 downto 0);
         dato_out : OUT  std_logic_vector(15 downto 0);
         clk : IN  std_logic;
         wd : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(15 downto 0) := (others => '0');
   signal dato_in : std_logic_vector(15 downto 0) := (others => '0');
   signal clk : std_logic := '0';
   signal wd : std_logic := '0';

 	--Outputs
   signal dato_out : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MEMORIA_DATOS PORT MAP (
          A => A,
          dato_in => dato_in,
          dato_out => dato_out,
          clk => clk,
          wd => wd
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
	VARIABLE var_dato_out : STD_LOGIC_VECTOR(15 DOWNTO 0);
	
	file ARCH_VEC : TEXT;
	variable LINEA_VEC : line;
	VARIABLE var_A : STD_LOGIC_VECTOR(15 DOWNTO 0);
	VARIABLE var_dato_in : STD_LOGIC_VECTOR(15 DOWNTO 0);
	VARIABLE var_wd : STD_LOGIC;
	VARIABLE CADENA : STRING(1 TO 5);
   begin		
		file_open(ARCH_VEC, "IN.TXT", READ_MODE); 	
		file_open(ARCH_RES, "OUT.TXT", WRITE_MODE); 	

		CADENA := "  A  ";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);	--ESCRIBE LA CADENA "OPER"
		CADENA := " Di  ";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);	--ESCRIBE LA CADENA "   D"
		CADENA := " WD  ";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);	--ESCRIBE LA CADENA " CLR"
		CADENA := " Do  ";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);	--ESCRIBE LA CADENA "   Q"
		writeline(ARCH_RES,LINEA_RES);-- escribe la linea en el archivo

		WAIT FOR 10 NS;
		FOR I IN 0 TO 11 LOOP
			readline(ARCH_VEC,LINEA_VEC); -- lee una linea completa

			Hread(LINEA_VEC, var_dato_in);
			dato_in <= var_dato_in;
			Hread(LINEA_VEC, var_A);
			A <= var_A;		
			read(LINEA_VEC, var_wd);  
			wd <= var_wd;
			
			WAIT UNTIL RISING_EDGE(CLK);	--ESPERO AL FLANCO DE SUBIDA 

			var_dato_out := dato_out;	
			Hwrite(LINEA_RES, var_A, right, 5);	--ESCRIBE EL CAMPO OPER
			Hwrite(LINEA_RES, var_dato_in, 	right, 5);	--ESCRIBE EL CAMPO D
			write(LINEA_RES, var_wd, 	right, 5);	--ESCRIBE EL CAMPO CLR
			Hwrite(LINEA_RES, var_dato_out, 	right, 5);	--ESCRIBE EL CAMPO Q

			writeline(ARCH_RES,LINEA_RES);-- escribe la linea en el archivo
			
		end loop;
		file_close(ARCH_VEC);  -- cierra el archivo
		file_close(ARCH_RES);  -- cierra el archivo

      wait;
   end process;


END;
