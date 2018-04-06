
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity ARCHIVO_REG is
    Port ( dir_r, dir_w : in  STD_LOGIC_VECTOR (2 downto 0);
           dato_in : in  STD_LOGIC_VECTOR (7 downto 0);
           dato_out : out  STD_LOGIC_VECTOR (7 downto 0);
           wr, clk, clr : in  STD_LOGIC);
end ARCHIVO_REG;

architecture Behavioral of ARCHIVO_REG is

type banco is array (0 to 7) of std_logic_vector(7 downto 0);
signal archivo:banco;

begin

	process(clk, clr)
	begin
	
		if (clr='1') then
			for i in 0 to 7 loop
				archivo(i) <= (others =>'0');
			end loop;
		elsif (clk'event and clk='1') then
			if (wr = '1') then
				archivo(conv_integer(dir_w)) <= dato_in;
			end if;
		end if;
	
	end process;
	
	dato_out<= archivo( conv_integer(dir_r) );

end Behavioral;

