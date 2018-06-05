
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PROC_EXT_SIGNO is
    Port ( busElevenToZero : in  STD_LOGIC_VECTOR (11 downto 0);
           extension : out  STD_LOGIC_VECTOR (15 downto 0));
end PROC_EXT_SIGNO;

architecture Behavioral of PROC_EXT_SIGNO is

signal ext_aux : std_logic_vector(15 downto 0);

begin

	ext_aux <= "0000"&busElevenToZero when busElevenToZero(11) = '0' else "1111"&busElevenToZero;
	extension <= ext_aux;

end Behavioral;

