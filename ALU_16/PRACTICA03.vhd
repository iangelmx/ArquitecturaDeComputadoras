
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PRACTICA03 is
    Port ( A,B : in  STD_LOGIC_VECTOR (15 downto 0);
           operacion : in  STD_LOGIC_VECTOR (3 downto 0);
           Z, Cout, Ovf, N : out  STD_LOGIC;
           R : out  STD_LOGIC_VECTOR (15 downto 0));
end PRACTICA03;

-- N -> Signo, Cout-> C, Z -> Cero, Ovf -> Overflow
-- CarryOut y Overflow, valen 0 cuando son operaciones lógicas
architecture Behavioral of PRACTICA03 is

component ALU_1BIT is
    Port ( a, b, sel_a, sel_b, cin : in  STD_LOGIC;
           operacion : in  STD_LOGIC_VECTOR (1 downto 0);
           cout, resul : out  STD_LOGIC);
end component;

signal sel_aAux, sel_bAux : std_logic;
signal carries, R_aux : STD_LOGIC_VECTOR(15 downto 0);
signal oper_aux : STD_LOGIC_VECTOR(1 downto 0);

begin
	sel_aAux<=operacion(3);
	sel_bAux<=operacion(2);
	oper_aux<=operacion(1 downto 0);
	
	ALU01: ALU_1BIT port map(a=>A(0), b=>B(0), sel_a=>sel_aAux, sel_b=>sel_bAux, cin=>sel_bAux, operacion=>oper_aux, cout=>carries(0), resul=>R_aux(0));
	ALU02: ALU_1BIT port map(a=>A(1), b=>B(1), sel_a=>sel_aAux, sel_b=>sel_bAux, cin=>carries(0), operacion=>oper_aux, cout=>carries(1), resul=>R_aux(1));
	ALU03: ALU_1BIT port map(a=>A(2), b=>B(2), sel_a=>sel_aAux, sel_b=>sel_bAux, cin=>carries(1), operacion=>oper_aux, cout=>carries(2), resul=>R_aux(2));
	ALU04: ALU_1BIT port map(a=>A(3), b=>B(3), sel_a=>sel_aAux, sel_b=>sel_bAux, cin=>carries(2), operacion=>oper_aux, cout=>carries(3), resul=>R_aux(3));
	ALU05: ALU_1BIT port map(a=>A(4), b=>B(4), sel_a=>sel_aAux, sel_b=>sel_bAux, cin=>carries(3), operacion=>oper_aux, cout=>carries(4), resul=>R_aux(4));
	ALU06: ALU_1BIT port map(a=>A(5), b=>B(5), sel_a=>sel_aAux, sel_b=>sel_bAux, cin=>carries(4), operacion=>oper_aux, cout=>carries(5), resul=>R_aux(5));
	ALU07: ALU_1BIT port map(a=>A(6), b=>B(6), sel_a=>sel_aAux, sel_b=>sel_bAux, cin=>carries(5), operacion=>oper_aux, cout=>carries(6), resul=>R_aux(6));
	ALU08: ALU_1BIT port map(a=>A(7), b=>B(7), sel_a=>sel_aAux, sel_b=>sel_bAux, cin=>carries(6), operacion=>oper_aux, cout=>carries(7), resul=>R_aux(7));
	ALU09: ALU_1BIT port map(a=>A(8), b=>B(8), sel_a=>sel_aAux, sel_b=>sel_bAux, cin=>carries(7), operacion=>oper_aux, cout=>carries(8), resul=>R_aux(8));
	ALU10: ALU_1BIT port map(a=>A(9), b=>B(9), sel_a=>sel_aAux, sel_b=>sel_bAux, cin=>carries(8), operacion=>oper_aux, cout=>carries(9), resul=>R_aux(9));
	ALU11: ALU_1BIT port map(a=>A(10), b=>B(10), sel_a=>sel_aAux, sel_b=>sel_bAux, cin=>carries(9), operacion=>oper_aux, cout=>carries(10), resul=>R_aux(10));
	ALU12: ALU_1BIT port map(a=>A(11), b=>B(11), sel_a=>sel_aAux, sel_b=>sel_bAux, cin=>carries(10), operacion=>oper_aux, cout=>carries(11), resul=>R_aux(11));
	ALU13: ALU_1BIT port map(a=>A(12), b=>B(12), sel_a=>sel_aAux, sel_b=>sel_bAux, cin=>carries(11), operacion=>oper_aux, cout=>carries(12), resul=>R_aux(12));
	ALU14: ALU_1BIT port map(a=>A(13), b=>B(13), sel_a=>sel_aAux, sel_b=>sel_bAux, cin=>carries(12), operacion=>oper_aux, cout=>carries(13), resul=>R_aux(13));
	ALU15: ALU_1BIT port map(a=>A(14), b=>B(14), sel_a=>sel_aAux, sel_b=>sel_bAux, cin=>carries(13), operacion=>oper_aux, cout=>carries(14), resul=>R_aux(14));
	ALU16: ALU_1BIT port map(a=>A(15), b=>B(15), sel_a=>sel_aAux, sel_b=>sel_bAux, cin=>carries(14), operacion=>oper_aux, cout=>carries(15), resul=>R_aux(15));

	Z<= '1' when R_aux = "0000000000000000" else '0';
	
	
	R<=R_aux;
	
	N<=R_aux(15);
	
	Cout<= carries(15) when oper_aux = "11" else '0';
	Ovf<= (carries(15) xor carries(14)) when oper_aux = "11" else '0';

end Behavioral;
