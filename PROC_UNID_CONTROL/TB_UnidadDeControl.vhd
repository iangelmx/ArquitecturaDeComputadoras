
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
LIBRARY STD;
USE STD.TEXTIO.ALL;
USE ieee.std_logic_TEXTIO.ALL;
 
ENTITY TB_UnidadDeControl IS
END TB_UnidadDeControl;
 
ARCHITECTURE behavior OF TB_UnidadDeControl IS 
 
 
    COMPONENT PROC_UNID_CONTROL
    PORT(
         clk : IN  std_logic;
         clr : IN  std_logic;
         lf : IN  std_logic;
			nivel_out : OUT  std_logic;
         func_code : IN  std_logic_vector(3 downto 0);
         microinstruccion : OUT  std_logic_vector(19 downto 0);
         op_code : IN  std_logic_vector(4 downto 0);
         banderas : IN  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal clr : std_logic := '0';
   signal lf : std_logic := '0';
   signal func_code : std_logic_vector(3 downto 0) := (others => '0');
   signal op_code : std_logic_vector(4 downto 0) := (others => '0');
   signal banderas : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal microinstruccion : std_logic_vector(19 downto 0);
	signal nivel_out : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PROC_UNID_CONTROL PORT MAP (
          clk => clk,
          clr => clr,
          lf => lf,
          func_code => func_code,
          microinstruccion => microinstruccion,
          op_code => op_code,
          banderas => banderas,
			 nivel_out => nivel_out
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
	
	
	-- SE INSERTA TB YAYO ----------------------
	
	 -- Stimulus process
   stim_proc: process
	file ARCH_RES : TEXT;																					
	variable LINEA_RES : line;
	VARIABLE var_microins : STD_LOGIC_VECTOR(19 DOWNTO 0);
	VARIABLE var_nivel : STRING(1 TO 4);
	
	file ARCH_VEC : TEXT;
	variable LINEA_VEC : line;
	VARIABLE var_opcode : STD_LOGIC_VECTOR(4 DOWNTO 0);
	VARIABLE var_funcode : STD_LOGIC_VECTOR(3 DOWNTO 0);
	VARIABLE var_flags : STD_LOGIC_VECTOR(3 DOWNTO 0);
	VARIABLE var_clr : STD_LOGIC;
	VARIABLE var_lf : STD_LOGIC;
	VARIABLE CADENA : STRING(1 TO 16);
   begin		
		file_open(ARCH_VEC, "IN.TXT", READ_MODE); 	
		file_open(ARCH_RES, "OUT.TXT", WRITE_MODE); 	

		CADENA := " OP-CODE        ";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);
		CADENA := " FUN-CODE       ";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);
		CADENA := " BANDERAS       ";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);
		CADENA := " CLR            ";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);
		CADENA := " LF             ";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);
		CADENA := " MICINSTRUCCION ";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);
		CADENA := " NIVEL          ";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);
		writeline(ARCH_RES,LINEA_RES);-- escribe la linea en el archivo

		WAIT FOR 10 NS;
		FOR I IN 0 TO 50 LOOP
			readline(ARCH_VEC,LINEA_VEC); -- lee una linea completa

			read(LINEA_VEC, var_opcode);
			op_code <= var_opcode;
			read(LINEA_VEC, var_funcode);
			func_code <= var_funcode;
			read(LINEA_VEC, var_flags);
			banderas <= var_flags;
			read(LINEA_VEC, var_clr);
			clr <= var_clr;
			read(LINEA_VEC, var_lf);
			lf <= var_lf;
			
			--WAIT UNTIL RISING_EDGE(CLK);	--ESPERO AL FLANCO DE SUBIDA 

			var_microins := microinstruccion;
			--Las que NO tienen var, reemplazar por las de la entidad.
			IF nivel_out = '1' THEN
				var_nivel := "ALTO";	
			ELSE
				var_nivel := "BAJO";
			END IF;
			
			write(LINEA_RES, var_opcode, left, 16);
			write(LINEA_RES, var_funcode, 	left, 16);
			write(LINEA_RES, var_flags, 	left, 16);
			write(LINEA_RES, var_clr, 	left, 16);
			write(LINEA_RES, var_lf, 	left, 16);
			write(LINEA_RES, var_microins, 	left, 16);
			write(LINEA_RES, var_nivel, 	right, 16);
			
			writeline(ARCH_RES,LINEA_RES);-- escribe la linea en el archivo
			
			WAIT UNTIL FALLING_EDGE(CLK);	--ESPERO AL FLANCO DE BAJADA
			
			IF nivel_out = '1' THEN
				var_nivel := "ALTO";	
			ELSE
				var_nivel := "BAJO";
			END IF;
			
			write(LINEA_RES, var_opcode, left, 16);
			write(LINEA_RES, var_funcode, 	left, 16);
			write(LINEA_RES, var_flags, 	left, 16);
			write(LINEA_RES, var_clr, 	left, 16);
			write(LINEA_RES, var_lf, 	left, 16);
			write(LINEA_RES, var_microins, 	left, 16);
			write(LINEA_RES, var_nivel, 	right, 16);

			writeline(ARCH_RES,LINEA_RES);-- escribe la linea en el archivo
			
			WAIT UNTIL RISING_EDGE(CLK);	--ESPERO AL FLANCO DE SUBIDA 
			
		end loop;
		file_close(ARCH_VEC);  -- cierra el archivo
		file_close(ARCH_RES);  -- cierra el archivo

      wait;
   end process;
	
	-- FINALIZA TB YAYO ----------------------------------------
	
	
--   stim_proc: process
--   begin		
--      -- hold reset state for 100 ns.
--      wait for 100 ns;
--		
--		
--		
--		
--
--      wait for clk_period*10;
--
--      -- insert stimulus here 
--
--      wait;
--   end process;

END;
