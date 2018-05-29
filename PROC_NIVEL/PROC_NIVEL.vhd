
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PROC_NIVEL is
    Port ( clr, clk : in  STD_LOGIC;
           nivel : out  STD_LOGIC);
end PROC_NIVEL;

architecture Behavioral of PROC_NIVEL is
signal pclk, nclk, nivel_aux : STD_LOGIC;
begin

	process(clr, clk, pclk, nclk)
	begin
		if(clr = '1') then
			pclk <= '0';
			nclk <= '0';
		elsif (clk'event and clk ='0') then
			pclk <= not pclk;
		elsif(clk'event and clk ='1') then
			nclk <= not nclk;
		end if;
		nivel_aux <= pclk xnor nclk;
	end process;
	
	nivel <= nivel_aux;

end Behavioral;

