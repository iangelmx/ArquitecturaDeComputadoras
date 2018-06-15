library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.ALL;

use IEEE.STD_LOGIC_unsigned.ALL;

entity divFrecuencia is
	Port (
				Osc_clk				: in STD_LOGIC;
				clr					: in STD_LOGIC;
				clk					: out STD_LOGIC
			);
end divFrecuencia;

architecture Behavioral of divFrecuencia is

signal contador: std_logic_vector(25 downto 0);

begin

	process(osc_clk, clr)
	begin
		if clr = '1' then
			contador <= (others => '0');
		elsif rising_edge(Osc_clk) then
			contador <= contador + 1;
		end if;
	end process;

	clk <= contador(0);		
end Behavioral;
