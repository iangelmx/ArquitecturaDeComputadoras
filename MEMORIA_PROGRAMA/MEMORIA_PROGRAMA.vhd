library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity MEMORIA_PROGRAMA is
    Port ( PC : in  STD_LOGIC_VECTOR (15 downto 0);
           Instruccion : out  STD_LOGIC_VECTOR (24 downto 0));
end MEMORIA_PROGRAMA;

architecture Behavioral of MEMORIA_PROGRAMA is

type banco is array (0 to 65535) of std_logic_vector(24 downto 0);
signal res : std_logic_vector(24 downto 0);
signal archivo:banco;
begin

	res <= archivo(conv_integer(unsigned(PC)));
	Instruccion <= res;
	
end Behavioral;

