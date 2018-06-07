
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FF_d is
    Port ( clk,clr,d : in  STD_LOGIC;
           q,nq : out  STD_LOGIC);
end FF_d;

architecture Behavioral of FF_d is
signal q_aux : std_logic;
begin

	process(clk,clr)
	begin
	
		if(clr = '1') then
			q_aux <= '0';
		elsif(clk'event and not(clk) = '1')then
			q_aux <= d;
		end if;
	
	end process;

	q <= q_aux;
	nq <= not(q_aux);
end Behavioral;

