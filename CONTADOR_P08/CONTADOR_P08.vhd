
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CONTADOR_P08 is
    Port ( enableCount, enableLoad : in  STD_LOGIC;
			  clk, clr : in STD_LOGIC;
           cuenta : out  STD_LOGIC_VECTOR (3 downto 0));
end CONTADOR_P08;

architecture Behavioral of CONTADOR_P08 is
signal contador : STD_LOGIC_VECTOR(3 downto 0);
begin
	process(clk, clr)
	variable var : bit_vector(8 downto 0) := (others=>'0');
	begin
		if (clr ='1')then
			contador <= (others=>'0');
		elsif( clk'event and clk='1') then
			if(enableLoad = '1' and enableCount ='0') then
				contador<=(others=>'0');
			elsif(enableLoad ='0' and enableCount ='1') then
				contador<=contador+1;
			end if;
		end if;
	end process;
	
	cuenta<= contador;
	

end Behavioral;

