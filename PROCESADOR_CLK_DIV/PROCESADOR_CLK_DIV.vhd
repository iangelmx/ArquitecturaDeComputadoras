
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity PROCESADOR_CLK_DIV is
    Port ( clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           q27 : out  STD_LOGIC);
end PROCESADOR_CLK_DIV;

architecture Behavioral of PROCESADOR_CLK_DIV is
signal cont: std_logic_vector(31 downto 0);
begin

	process(clk,clr)
	begin
		if(clr ='1') then
			cont<=( others=>'0' );
		elsif(clk'event and clk='1') then
			cont<=cont+1;
		end if;
	end process;

	q27 <= cont(27);
--	q27 <= cont(0);
	
end Behavioral;

