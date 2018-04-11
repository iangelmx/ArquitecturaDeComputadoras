--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:46:01 04/11/2018
-- Design Name:   
-- Module Name:   C:/Users/ayhc9/arqCompVHDL/archivo_registros/TB_archivo_registros.vhd
-- Project Name:  archivo_registros
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: archivo_registros
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
 
ENTITY TB_archivo_registros IS
END TB_archivo_registros;
 
ARCHITECTURE behavior OF TB_archivo_registros IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT archivo_registros
    PORT(
         w_reg : IN  std_logic_vector(3 downto 0);
         w_data : IN  std_logic_vector(15 downto 0);
         r_reg1 : IN  std_logic_vector(3 downto 0);
         r_reg2 : IN  std_logic_vector(3 downto 0);
         shamt : IN  std_logic_vector(3 downto 0);
         wr : IN  std_logic;
         she : IN  std_logic;
         dir : IN  std_logic;
         clk : IN  std_logic;
         clr : IN  std_logic;
         r_data1 : OUT  std_logic_vector(15 downto 0);
         r_data2 : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal w_reg : std_logic_vector(3 downto 0) := (others => '0');
   signal w_data : std_logic_vector(15 downto 0) := (others => '0');
   signal r_reg1 : std_logic_vector(3 downto 0) := (others => '0');
   signal r_reg2 : std_logic_vector(3 downto 0) := (others => '0');
   signal shamt : std_logic_vector(3 downto 0) := (others => '0');
   signal wr : std_logic := '0';
   signal she : std_logic := '0';
   signal dir : std_logic := '0';
   signal clk : std_logic := '0';
   signal clr : std_logic := '0';

 	--Outputs
   signal r_data1 : std_logic_vector(15 downto 0);
   signal r_data2 : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: archivo_registros PORT MAP (
          w_reg => w_reg,
          w_data => w_data,
          r_reg1 => r_reg1,
          r_reg2 => r_reg2,
          shamt => shamt,
          wr => wr,
          she => she,
          dir => dir,
          clk => clk,
          clr => clr,
          r_data1 => r_data1,
          r_data2 => r_data2
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

--   -- Stimulus process
--   stim_proc: process
--   begin		
--      -- hold reset state for 100 ns.
--      wait for 10 ns;	
--
--      wait for clk_period*10;
--
--      -- insert stimulus here 
--			 w_reg <= "0000";
--          w_data <= "0011010000000000";
--          r_reg1 <= "0100";
--          r_reg2 <= "0101";
--          shamt <= "0000";
--          wr <= '1';
--          she <= '0';
--          dir <= '0';
--          clr <= '1';
--
--      wait;
--   end process;



   -- Stimulus process																	
   stim_proc: process
	file ARCH_RES : TEXT;																					
	variable LINEA_RES : line;
	VARIABLE r_data1 : STD_LOGIC_VECTOR(15 DOWNTO 0);
	VARIABLE r_data2 : STD_LOGIC_VECTOR(15 DOWNTO 0);
	
	file ARCH_VEC : TEXT;
	variable LINEA_VEC : line;
	VARIABLE VAR_OPER : STD_LOGIC_VECTOR(1 DOWNTO 0);
	VARIABLE VAR_D : STD_LOGIC_VECTOR(7 DOWNTO 0);
	VARIABLE VAR_CLR : STD_LOGIC;
	VARIABLE CADENA : STRING(1 TO 4);
   begin		
		file_open(ARCH_VEC, "VECTORES.TXT", READ_MODE); 	
		file_open(ARCH_RES, "RESULTADO.TXT", WRITE_MODE); 	

		CADENA := "OPER";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);	--ESCRIBE LA CADENA "OPER"
		CADENA := "   D";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);	--ESCRIBE LA CADENA "   D"
		CADENA := " CLR";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);	--ESCRIBE LA CADENA " CLR"
		CADENA := "   Q";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);	--ESCRIBE LA CADENA "   Q"
		writeline(ARCH_RES,LINEA_RES);-- escribe la linea en el archivo

		WAIT FOR 100 NS;
		FOR I IN 0 TO 14 LOOP
			readline(ARCH_VEC,LINEA_VEC); -- lee una linea completa

			read(LINEA_VEC, VAR_OPER);
			OPER <= VAR_OPER;
			Hread(LINEA_VEC, VAR_D);
			D <= VAR_D;		
			read(LINEA_VEC, VAR_CLR);  
			CLR <= VAR_CLR;
			
			WAIT UNTIL RISING_EDGE(CLK);	--ESPERO AL FLANCO DE SUBIDA 

			VAR_Q := Q;	
			write(LINEA_RES, VAR_OPER, right, 5);	--ESCRIBE EL CAMPO OPER
			Hwrite(LINEA_RES, VAR_D, 	right, 5);	--ESCRIBE EL CAMPO D
			write(LINEA_RES, VAR_CLR, 	right, 5);	--ESCRIBE EL CAMPO CLR
			Hwrite(LINEA_RES, VAR_Q, 	right, 5);	--ESCRIBE EL CAMPO Q

			writeline(ARCH_RES,LINEA_RES);-- escribe la linea en el archivo
			
		end loop;
		file_close(ARCH_VEC);  -- cierra el archivo
		file_close(ARCH_RES);  -- cierra el archivo

      wait;
   end process;


END;
