
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PRACTICA03 is
    Port ( A,B : in  STD_LOGIC_VECTOR (3 downto 0);
           operacion : in  STD_LOGIC_VECTOR (3 downto 0);
           Z, Cout : out  STD_LOGIC;
           R : out  STD_LOGIC_VECTOR (3 downto 0));
end PRACTICA03;

architecture Behavioral of PRACTICA03 is

component ALU_1BIT is
    Port ( a, b, sel_a, sel_b, cin : in  STD_LOGIC;
           operacion : in  STD_LOGIC_VECTOR (1 downto 0);
           cout, resul : out  STD_LOGIC);
end component;

signal sel_aAux, sel_bAux : std_logic;
signal carries, R_aux : STD_LOGIC_VECTOR(3 downto 0);
signal oper_aux : STD_LOGIC_VECTOR(1 downto 0);

begin
	sel_aAux<=operacion(3);
	sel_bAux<=operacion(2);
	oper_aux<=operacion(1 downto 0);
	ALU01: ALU_1BIT port map(a=>A(0), b=>B(0), sel_a=>sel_aAux, sel_b=>sel_bAux, cin=>sel_bAux, operacion=>oper_aux, cout=>carries(0), resul=>R_aux(0));
	ALU02: ALU_1BIT port map(a=>A(1), b=>B(1), sel_a=>sel_aAux, sel_b=>sel_bAux, cin=>carries(0), operacion=>oper_aux, cout=>carries(1), resul=>R_aux(1));
	ALU03: ALU_1BIT port map(a=>A(2), b=>B(2), sel_a=>sel_aAux, sel_b=>sel_bAux, cin=>carries(1), operacion=>oper_aux, cout=>carries(2), resul=>R_aux(2));
	ALU04: ALU_1BIT port map(a=>A(3), b=>B(3), sel_a=>sel_aAux, sel_b=>sel_bAux, cin=>carries(2), operacion=>oper_aux, cout=>carries(3), resul=>R_aux(3));
	
	Z<= (R_aux(0) nor R_aux(1)) nor (R_aux(2) nor R_aux(3));
	
	R<=R_aux;
	Cout<= carries(3);
	

end Behavioral;

