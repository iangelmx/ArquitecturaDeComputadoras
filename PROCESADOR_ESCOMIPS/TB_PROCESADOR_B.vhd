
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
LIBRARY STD;
USE STD.TEXTIO.ALL;
USE ieee.std_logic_TEXTIO.ALL;
 

ENTITY TB_PROCESADOR_B IS
END TB_PROCESADOR_B;
 
ARCHITECTURE behavior OF TB_PROCESADOR_B IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PROCESADOR_ESCOMIPS
    PORT(
         clk : IN  std_logic;
         clr : IN  std_logic;
         read_data2 : OUT  std_logic_vector(15 downto 0);
         read_data1 : OUT  std_logic_vector(15 downto 0);
         PC_fin_out : OUT  std_logic_vector(15 downto 0);
         instruccion_out : OUT  std_logic_vector(24 downto 0);
         resAlu : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal clr : std_logic := '0';

 	--Outputs
   signal read_data2 : std_logic_vector(15 downto 0);
   signal read_data1 : std_logic_vector(15 downto 0);
   signal PC_fin_out : std_logic_vector(15 downto 0);
   signal instruccion_out : std_logic_vector(24 downto 0);
   signal resAlu : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PROCESADOR_ESCOMIPS PORT MAP (
          clk => clk,
          clr => clr,
          read_data2 => read_data2,
          read_data1 => read_data1,
          PC_fin_out => PC_fin_out,
          instruccion_out => instruccion_out,
          resAlu => resAlu
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
      -- hold reset state for 100 ns.
--   wait for 100 ns;	

	file ARCH_RES : TEXT;																					
	variable LINEA_RES : line;
	VARIABLE var_pc : STD_LOGIC_VECTOR(15 DOWNTO 0);
	VARIABLE var_instruccion : STD_LOGIC_VECTOR(24 DOWNTO 0);
	VARIABLE var_rd1 : STD_LOGIC_VECTOR(15 DOWNTO 0);
	VARIABLE var_rd2 : STD_LOGIC_VECTOR(15 DOWNTO 0);
	VARIABLE var_ralu : STD_LOGIC_VECTOR(15 DOWNTO 0);
	
	file ARCH_VEC : TEXT;
	variable LINEA_VEC : line;
--	VARIABLE var_instruccion : STD_LOGIC_VECTOR(24 DOWNTO 0);	
	VARIABLE CADENA : STRING(1 TO 6);
   begin		
		file_open(ARCH_VEC, "IN.TXT", READ_MODE); 	
		file_open(ARCH_RES, "OUT.TXT", WRITE_MODE); 	

		--ENCABEZADPS DE OUT.TXT
		CADENA := " PC   ";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);
		CADENA := "19-16 ";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);
		CADENA := "15-12 ";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);
		CADENA := "11-8  ";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);
		CADENA := "7-4   ";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);
		CADENA := "RDATA1";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);
		CADENA := "RDATA2";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);
		CADENA := "RESALU";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);
		writeline(ARCH_RES,LINEA_RES);-- escribe la linea en el archivo

		WAIT FOR 10 NS;
		FOR I IN 0 TO 9 LOOP
			readline(ARCH_VEC,LINEA_VEC); -- lee una linea completa

--			Hread(LINEA_VEC, var_pc);
--			PC <= var_pc(9 DOWNTO 0);
			
			WAIT UNTIL RISING_EDGE(CLK);	--ESPERO AL FLANCO DE SUBIDA 

			var_pc := PC_fin_out;
			var_instruccion := instruccion_out;
			var_rd1 := read_data1;
			var_rd2 := read_data2;
			var_ralu := resAlu;
			Hwrite(LINEA_RES, var_pc, right, 5);	--ESCRIBE EL CAMPO PC
			write(LINEA_RES, var_instruccion(24 downto 20), 	right, 9);
			write(LINEA_RES, var_instruccion(19 downto 16), 	right, 6);
			write(LINEA_RES, var_instruccion(15 downto 12), 	right, 6);
			write(LINEA_RES, var_instruccion(11 downto 8), 	right, 7);
			write(LINEA_RES, var_instruccion(7 downto 4), 	right, 7);
			write(LINEA_RES, var_instruccion(3 downto 0), 	right, 7);
			Hwrite(LINEA_RES, var_rd1, right, 5);
			Hwrite(LINEA_RES, var_rd2, right, 5);
			Hwrite(LINEA_RES, var_ralu, right, 5);

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
