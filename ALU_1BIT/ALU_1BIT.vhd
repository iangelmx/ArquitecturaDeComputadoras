
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity ALU_1BIT is
    Port ( a, b, sel_a, sel_b, cin : in  STD_LOGIC;
           operacion : in  STD_LOGIC_VECTOR (1 downto 0);
           cout, resul : out  STD_LOGIC);
end ALU_1BIT;

architecture Behavioral of ALU_1BIT is

signal a_aux, b_aux, ab, aorb, axorb, amasb, cout_aux, resul_aux : STD_LOGIC;

begin

--with sel_a select a_aux <= 
--			a when '0',
--			(not a) when '1';
--
--with sel_b select b_aux <= 
--			b when '0',
--			(not a) when '1';

process(operacion, sel_a, sel_b, a, b, cin, a_aux, b_aux, ab, aorb, axorb, amasb)
begin

	a_aux <= a xor sel_a;
	b_aux <= b xor sel_b;
	
	ab <= a_aux and b_aux;
	aorb <= a_aux or b_aux;
	axorb <= a_aux xor b_aux;
	amasb <= (a_aux xor b_aux) xor cin;
	cout_aux <= (b_aux and cin) or (a_aux and cin) or (a_aux and b_aux);
	
	case operacion is

		when "00" => resul_aux <= ab;
		when "01" => resul_aux <= aorb;
		when "10" => resul_aux <= axorb;
		when others => resul_aux <= amasb;

	end case;

end process;

cout <= cout_aux;
resul <= resul_aux;

end Behavioral;

