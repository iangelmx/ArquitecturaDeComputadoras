---------------------------------------------------------------------------------------------
-- Practica 5
---------------------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Datos is
generic(
		TAMANIO_DATOS : integer := 16;
		TAMANIO_BUS : integer := 8); --bus de direcciones 
		
    Port ( Dir : in  STD_LOGIC_VECTOR ((TAMANIO_BUS -1) downto 0);			  
           DatosEntrada : in  STD_LOGIC_VECTOR ((TAMANIO_DATOS -1 ) downto 0);
           DatosSalida : out  STD_LOGIC_VECTOR ((TAMANIO_DATOS -1 ) downto 0);           
			  WD : in  STD_LOGIC;
           CLK : in  STD_LOGIC);
end Datos;

architecture MEMORIA of Datos is
	type arreglo is array (0 to(2**TAMANIO_BUS)-1) of std_logic_vector((TAMANIO_DATOS - 1) downto 0);	
	signal memoria : arreglo; 

begin
process(CLK)
	begin
		-- se verifica el evento en el reloj
		if (rising_edge(CLK)) then
		-- bandera para lectura
			if (WD = '1') then
		-- se asigna el valor de DatosEntrada a la memoria,en posición de Dir 		
				memoria(conv_integer(Dir)) <= DatosEntrada;  				
			end if;
		end if;
	end process;
	DatosSalida <= memoria(conv_integer(Dir));
end MEMORIA;