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
	VARIABLE var_clr : STD_LOGIC_VECTOR;
	VARIABLE var_lf : STD_LOGIC_VECTOR;
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
		FOR I IN 0 TO 52 LOOP
			readline(ARCH_VEC,LINEA_VEC); -- lee una linea completa

			read(LINEA_VEC, var_opcode);
			opcode <= var_opcode;
			read(LINEA_VEC, var_funcode);
			funcode <= var_funcode;
			read(LINEA_VEC, var_flags);
			flags <= var_flags;
			read(LINEA_VEC, var_clr);
			clr <= var_clr;
			read(LINEA_VEC, var_lf);
			lf <= var_lf;
			
			WAIT UNTIL RISING_EDGE(CLK);	--ESPERO AL FLANCO DE SUBIDA 

			var_microins := microins;
			IF nivel = 1 THEN
				var_nivel := "ALTO";	
			ELSE
				var_nivel := "BAJO";
			END IF;
			
			write(LINEA_RES, var_opcode, right, 16);
			write(LINEA_RES, var_funcode, 	right, 16);
			write(LINEA_RES, var_flags, 	right, 16);
			write(LINEA_RES, var_clr, 	right, 16);
			write(LINEA_RES, var_lf, 	right, 16);
			write(LINEA_RES, var_microins, 	right, 16);
			write(LINEA_RES, var_nivel, 	right, 16);

			writeline(ARCH_RES,LINEA_RES);-- escribe la linea en el archivo
			
		end loop;
		file_close(ARCH_VEC);  -- cierra el archivo
		file_close(ARCH_RES);  -- cierra el archivo

      wait;
   end process;