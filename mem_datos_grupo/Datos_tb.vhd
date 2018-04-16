--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE STD.TEXTIO.ALL;
USE ieee.std_logic_TEXTIO.ALL;	--PERMITE USAR STD_LOGIC 

USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_UNSIGNED.ALL;
USE ieee.std_logic_ARITH.ALL;

 
ENTITY Datos_tb IS
generic(
		TAMANIO_DATOS : integer := 16;
		TAMANIO_BUS : integer := 8); --bus de direcciones 
END Datos_tb;
 
ARCHITECTURE behavior OF Datos_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Datos
    PORT(
			--Dir : IN  std_logic_vector(11 downto 0);
         Dir : IN  std_logic_vector((TAMANIO_BUS -1) downto 0);
         DatosEntrada : IN  std_logic_vector((TAMANIO_DATOS -1 ) downto 0);
         DatosSalida : OUT  std_logic_vector((TAMANIO_DATOS -1 ) downto 0);
         WD : IN  std_logic;
         CLK : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
	--signal Dir : std_logic_vector(11 downto 0);--:= (others => '0');
   signal Dir : std_logic_vector((TAMANIO_BUS -1) downto 0);--:= (others => '0');
   signal DatosEntrada : std_logic_vector((TAMANIO_DATOS -1 ) downto 0);--:= (others => '0');
   signal WD : std_logic;-- := '0';
   signal CLK : std_logic;-- := '0';

 	--Outputs
   signal DatosSalida : std_logic_vector((TAMANIO_DATOS -1 ) downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Datos PORT MAP (
          Dir => Dir,
          DatosEntrada => DatosEntrada,
          DatosSalida => DatosSalida,
          WD => WD,
          CLK => CLK
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
	stim_proc: process
	
	FILE ARCH_RES : TEXT;
	VARIABLE LINEA_RES : line;
	VARIABLE RES_DatosSalida : std_logic_vector( (TAMANIO_DATOS -1 ) downto 0 );
   		
	FILE ARCH_VEC : TEXT;																					
	VARIABLE LINEA_VEC : line;
	--VARIABLE VAR_Dir : std_logic_vector((TAMANIO_BUS -1) downto 0 );
	VARIABLE	VAR_DatosEntrada : std_logic_vector( (TAMANIO_DATOS -1 ) downto 0 );
	VARIABLE VAR_WD : std_logic;
	
	--Ver1
	--VARIABLE var_aux : std_logic_vector(7 downto 0);
	--Ver2
	VARIABLE VAR_Dir : std_logic_vector(11 DOWNTO 0);
	
	variable CADENA : STRING (1 TO 5);
	
   begin
	
      file_open(arch_vec, "VECTORES.txt", READ_MODE);
		file_open(arch_res, "RESULTADOS.txt", WRITE_MODE);
			
	  CADENA := "Dir  ";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);
		CADENA := "D_in ";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);
		CADENA := "  WD ";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);
		CADENA := "D_out";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);
		
		writeline(ARCH_RES, LINEA_RES);
		
--		WAIT FOR 10 NS;
		
		FOR I IN 0 TO 11 LOOP
			readline(ARCH_VEC, LINEA_VEC);
			
			Hread(LINEA_VEC, VAR_DatosEntrada);
			DatosEntrada <= VAR_DatosEntrada;
			
			Hread(LINEA_VEC, VAR_Dir); 
			--Ver1
			--Hread(LINEA_VEC, var_aux);
			--VAR_Dir := '0'&var_aux;	
			--Ver2
			Dir <= VAR_Dir(7 downto 0);
			--Dir <= VAR_Dir;			
			
			read(LINEA_VEC, VAR_WD);
			WD <= VAR_WD;
			
			wait until rising_edge(CLK);
			
			RES_DatosSalida := DatosSalida;
			
			Hwrite(LINEA_RES, VAR_Dir, right, 4);			
			Hwrite(LINEA_RES, VAR_DatosEntrada, right, 7);
			write(LINEA_RES, VAR_WD, right, 6);
			Hwrite(LINEA_RES, RES_DatosSalida, right, 7);
			
			writeline(ARCH_RES, LINEA_RES);
			
		end loop;
		wait for 10 ns;
		file_close(ARCH_VEC);
		file_close(ARCH_RES);
		
      wait;
   end process;

END;