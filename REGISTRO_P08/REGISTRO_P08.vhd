
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity REGISTRO_P08 is
    Port ( datos : in  STD_LOGIC_VECTOR (8 downto 0);
			  clk, clr : in STD_LOGIC;
           enableLoad, enableShift : in  STD_LOGIC;
           A : out  STD_LOGIC_VECTOR (8 downto 0));
end REGISTRO_P08;

architecture Behavioral of REGISTRO_P08 is
signal registroA : std_logic_vector(8 downto 0);

begin

	process(clk, clr)
	variable var : bit_vector(8 downto 0) := (others=>'0');
	begin
		if (clr ='1')then
			registroA <= (others=>'0');
		elsif( clk'event and clk='1') then
			if(enableLoad = '1' and enableShift ='0') then
				registroA<=datos;
			elsif(enableLoad ='0' and enableShift ='1') then
				var := to_bitvector( registroA ) srl 1;
				registroA<= To_StdLogicVector( var );
			end if;
		end if;
	end process;
	
	A<=registroA;


end Behavioral;

