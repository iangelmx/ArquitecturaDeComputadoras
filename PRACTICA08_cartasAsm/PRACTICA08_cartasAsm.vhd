
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PRACTICA08_cartasAsm is
    Port ( inicioFlag : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           datos : in  STD_LOGIC_VECTOR (8 downto 0);
           display : out  STD_LOGIC_VECTOR (6 downto 0));
end PRACTICA08_cartasAsm;

architecture Behavioral of PRACTICA08_cartasAsm is

component REGISTRO_P08 is
    Port ( datos : in  STD_LOGIC_VECTOR (8 downto 0);
			  clk, clr : in STD_LOGIC;
           enableLoad, enableShift : in  STD_LOGIC;
           A : out  STD_LOGIC_VECTOR (8 downto 0));
end component;

component CONTADOR_P08 is
    Port ( enableCount, enableLoad : in  STD_LOGIC;
			  clk, clr : in STD_LOGIC;
           cuenta : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

component DECODER_P08 is
    Port ( Binario : in  STD_LOGIC_VECTOR (3 downto 0);
           segmentos : out  STD_LOGIC_VECTOR (6 downto 0));
end component;

signal eC_aux, eLcont_aux, eLreg_aux, eS_aux, A0_aux, sel_aux : STD_LOGIC;
signal B_aux : STD_LOGIC_VECTOR(3 downto 0);
signal segmentos_aux : STD_LOGIC_VECTOR(6 downto 0);
signal z_aux : STD_LOGIC_VECTOR(8 downto 0);
begin

	registro: REGISTRO_P08 port map(datos=>datos, clk=>clk, clr=>clr, enableLoad=>eLreg_aux, enableShift=>eS_aux, A=>z_aux);
	A0_aux <= z_aux(0);
	contador: CONTADOR_P08 port map(enableCount=>eC_aux, enableLoad=>eLcont_aux, clk=>clk, clr=>clr, cuenta=>B_aux);
	decoder: DECODER_P08 port map(Binario=>B_aux, segmentos=>segmentos_aux);
	
	display <= "1111110" when sel_aux = '0' else segmentos_aux;
	


end Behavioral;

