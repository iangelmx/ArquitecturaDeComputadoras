
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--use ieee.numeric_std.all;  


entity ARCHIVO_REG is
    Port ( dir_r, dir_w : in  STD_LOGIC_VECTOR (2 downto 0);
           dato_in : in  STD_LOGIC_VECTOR (7 downto 0);
           dato_out : out  STD_LOGIC_VECTOR (7 downto 0);
           wr, clk, clr, she, dir : in  STD_LOGIC;
			  shamt : in STD_LOGIC_VECTOR(3 downto 0));
end ARCHIVO_REG;

architecture Behavioral of ARCHIVO_REG is

type banco is array (0 to 7) of std_logic_vector(7 downto 0);
signal res : std_logic_vector(7 downto 0);
--signal var : unsigned(7 downto 0);

signal archivo:banco;

begin

	process(clk, clr)
	variable var : bit_vector(7 downto 0) := "00000000";
	--variable var : unsigned(7 downto 0);
	begin
	
		if (clr='1') then
			for i in 0 to 7 loop
				archivo(i) <= (others =>'0');
			end loop;
		elsif (clk'event and clk='1') then
			if(wr = '1' and she ='1' and dir = '0') then
				var := to_bitvector((archivo(conv_integer(dir_r)))) srl conv_integer(shamt);
				res <= To_StdLogicVector( var );
				archivo(conv_integer(dir_w)) <= res;
				
			end if;
			if(wr = '1' and she ='1' and dir = '1') then
				var := to_bitvector((archivo(conv_integer(dir_r)))) srl conv_integer(shamt);
				res <= To_StdLogicVector( var );
				archivo(conv_integer(dir_w)) <= res;
			end if;
			if (wr = '1') then
				archivo(conv_integer(dir_w)) <= dato_in;
			end if;
		end if;
	
	end process;
	
	dato_out<= archivo( conv_integer(dir_r) );

end Behavioral;

