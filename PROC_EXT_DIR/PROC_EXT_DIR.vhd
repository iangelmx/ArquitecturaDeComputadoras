
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PROC_EXT_DIR is
    Port ( busElevenToZero : in  STD_LOGIC_VECTOR (11 downto 0);
           extensionDir : out  STD_LOGIC_VECTOR (15 downto 0));
end PROC_EXT_DIR;

architecture Behavioral of PROC_EXT_DIR is

signal extDir_aux : std_logic_vector (15 downto 0);

begin
	
	extDir_aux <= "0000"&busElevenToZero;
	extensionDir <= extDir_aux;

end Behavioral;

