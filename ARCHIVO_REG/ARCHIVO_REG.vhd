
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--use ieee.numeric_std.all;  


entity ARCHIVO_REG is
    Port ( write_reg : in  STD_LOGIC_VECTOR (3 downto 0);
			  read_reg1, read_reg2 : in STD_LOGIC_VECTOR(3 downto 0);
           write_data : in  STD_LOGIC_VECTOR (15 downto 0);
           --dato_out : out  STD_LOGIC_VECTOR (7 downto 0);
			  read_data1, read_data2 : out STD_LOGIC_VECTOR(15 downto 0);
           wr, clk, clr, she, dir : in  STD_LOGIC;
			  shamt : in STD_LOGIC_VECTOR(3 downto 0));
end ARCHIVO_REG;

architecture Behavioral of ARCHIVO_REG is

type banco is array (0 to 15) of std_logic_vector(15 downto 0);
signal res : std_logic_vector(15 downto 0);
--signal var : unsigned(7 downto 0);

signal archivo:banco;

begin

	process(clk, clr)
	variable var : bit_vector(15 downto 0) := "0000000000000000";
	--variable var : unsigned(7 downto 0);
	begin
	
		if (clr='1') then
			for i in 0 to 15 loop
				archivo(i) <= (others =>'0');
			end loop;
		elsif (clk'event and clk='1') then
			if(wr = '1' and she ='1' and dir = '0') then
				var := to_bitvector((archivo(conv_integer(read_reg1)))) srl conv_integer(shamt);
				res <= To_StdLogicVector( var );
				archivo(conv_integer(write_reg)) <= res;
			elsif(wr = '1' and she ='1' and dir = '1') then
				var := to_bitvector((archivo(conv_integer(read_reg1)))) srl conv_integer(shamt);
				res <= To_StdLogicVector( var );
				archivo(conv_integer(write_reg)) <= res;
			elsif (wr = '1' and she='0' and dir ='0') then
				archivo(conv_integer(write_reg)) <= write_data;
			--elsif (wr = '0' and she ='1' and dir = '1') then
			--	read_data2<= archivo(conv_integer(read_reg1));
			end if;
		end if;
	
	end process;
	
	--dato_out<= archivo( conv_integer(read_reg1) );
	read_data1<= archivo(conv_integer(read_reg1));
	read_data2<= archivo(conv_integer(read_reg1)) WHEN (wr = '0' and she ='1' and dir = '1');
	


end Behavioral;

