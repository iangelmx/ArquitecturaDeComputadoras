
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MEMORIA_DATOS is
    Port ( dir_r : in  STD_LOGIC_VECTOR (15 downto 0);
           dato_in : in  STD_LOGIC_VECTOR (15 downto 0);
           dato_w : in  STD_LOGIC_VECTOR (15 downto 0);
           clk, wd : in  STD_LOGIC;
           dato_out : out  STD_LOGIC_VECTOR (15 downto 0));
end MEMORIA_DATOS;

architecture Behavioral of MEMORIA_DATOS is

type banco is array (0 to 4096) of std_logic_vector(24 downto 0);
signal res : std_logic_vector(24 downto 0);

signal archivo:banco;
begin

	res <= archivo(conv_integer(unsigned(PC)));
	Instruccion <= res;
	
end Behavioral;

