
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PILA is
    Port ( datos : in  STD_LOGIC_VECTOR (7 downto 0);
           PCout : out  STD_LOGIC_VECTOR (7 downto 0);
			  stack : out integer range 0 to 7;
           clk, clr, up, wpc : in  STD_LOGIC);
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
			if(up='1' and wpc = '1') then -- call
				sp:= sp+1;
				aux(sp)<=datos;
			else
				aux(sp) <= aux(sp)+1;
			end if;
		end if;
		spaux<=sp;
	end process;
	stack<=spaux;
	PCout <= aux(spaux);


end Behavioral;

