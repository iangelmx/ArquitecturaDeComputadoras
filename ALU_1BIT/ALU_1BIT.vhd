
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity ALU_1BIT is
    Port ( a, b, sel_a, sel_b, cin : in  STD_LOGIC;
           operacion : in  STD_LOGIC_VECTOR (1 downto 0);
           cout, resul : out  STD_LOGIC);
end ALU_1BIT;

architecture Behavioral of ALU_1BIT is

signal a_aux, b_aux, ab, aorb, axorb, amasb : STD_LOGIC;

begin

with sel_a select a_aux <= 
			a when '0',
			(not a) when '1';

with sel_b select b_aux <= 
			b when '0',
			(not a) when '1';



end Behavioral;

