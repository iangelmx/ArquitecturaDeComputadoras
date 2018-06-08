library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use iEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity MEMORIA_DATOS is

	generic
	(
		palabra : integer := 16;
		busT  : integer := 11;
		capacidad : integer := 2048
	);
	port
	(
		A		: in 	std_logic_vector(busT-1 downto 0);
		dato_in		: in 	std_logic_vector(palabra-1 downto 0);
		dato_out		: out	std_logic_vector(palabra-1 downto 0);
      clk, wd : in  STD_LOGIC
	);

end MEMORIA_DATOS;

architecture Behavioral of MEMORIA_DATOS is

type banco is array (0 to (capacidad-1)) of std_logic_vector((palabra-1) downto 0);
signal res : std_logic_vector((palabra-1) downto 0);

signal archivo:banco;
begin

	escritura: process(clk, wd, dato_in,A)
	begin
		if (clk'event and clk='1')	then
			if (wd ='1') then
				archivo(conv_integer(A)) <= dato_in;
			end if;
		end if;
	end process;

	res <= archivo(conv_integer(A));
	dato_out <= res;
	
end Behavioral;

