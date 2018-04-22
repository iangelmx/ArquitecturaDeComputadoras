
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity PILA is
    Port ( datos : in  STD_LOGIC_VECTOR (7 downto 0);
           PCout : out  STD_LOGIC_VECTOR (7 downto 0);
			  stack : out integer range 0 to 7;
           clk, clr, up, wpc, down : in  STD_LOGIC);
end PILA;

architecture Behavioral of PILA is
	type banco is array (0 to 7) of std_logic_vector(7 downto 0);
	signal aux:banco;
	signal spaux : integer range 0 to 7;
begin
	process (clk, clr)
	variable sp : integer range 0 to 7;
	begin
		if(clr='1')then
			sp:=0;
			for i in 0 to 7 loop
				aux(i) <= "00000000";
			end loop;
		elsif( clk'event and clk='1') then
			aux(sp) <= aux(sp)+1;
			if( wpc = '1' and up='0' and down = '0' ) then
				aux(sp) <= datos;
			elsif(up='1' and wpc = '1' and down ='0') then -- call
				sp:= sp+1;
				aux(sp)<=datos;
			elsif( wpc = '0' and up='0' and down='1' )then
				sp:= sp-1;
				aux(sp)<=datos+1;				
			end if;
		end if;
		spaux<=sp;
	end process;
	stack<=spaux;
	PCout <= aux(spaux);


end Behavioral;

