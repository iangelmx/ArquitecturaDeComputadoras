--
--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.STD_LOGIC_ARITH.ALL;
--use IEEE.STD_LOGIC_UNSIGNED.ALL;
--
--entity archivo_registros is
--    Port ( w_reg : in  STD_LOGIC_VECTOR (3 downto 0);
--           w_data : in  STD_LOGIC_VECTOR (15 downto 0);
--           r_reg1 : in  STD_LOGIC_VECTOR (3 downto 0);
--           r_reg2 : in  STD_LOGIC_VECTOR (3 downto 0);
--           shamt : in  STD_LOGIC_VECTOR (3 downto 0);
--           wr : in  STD_LOGIC;
--           she : in  STD_LOGIC;
--           dir : in  STD_LOGIC;
--           clk,clr : in  STD_LOGIC;
--           r_data1 : out  STD_LOGIC_VECTOR (15 downto 0);
--           r_data2 : out  STD_LOGIC_VECTOR (15 downto 0));
--end archivo_registros;
--
--architecture Behavioral of archivo_registros is
--type banco is array (0 to 15) of std_logic_vector(15 downto 0);
--signal res : std_logic_vector(15 downto 0);
--
--signal archivo:banco;
--
--begin
--
--	process(clk, clr)
--	variable var : bit_vector(15 downto 0) := "0000000000000000";
--	begin
--	
--		if (clr='1') then
--			for i in 0 to 15 loop
--				archivo(i) <= (others =>'0');
--			end loop;
--		elsif (clk'event and clk='1') then
--			if(wr = '1' and she ='1' and dir = '0') then
--				var := to_bitvector((archivo(conv_integer(r_reg1)))) srl conv_integer(shamt);
--				res <= To_StdLogicVector( var );
--				archivo(conv_integer(w_reg)) <= res;
--				
--			end if;
--			if(wr = '1' and she ='1' and dir = '1') then
--				var := to_bitvector((archivo(conv_integer(r_reg1)))) srl conv_integer(shamt);
--				res <= To_StdLogicVector( var );
--				archivo(conv_integer(w_reg)) <= res;
--			end if;
--			if (wr = '1') then
--				archivo(conv_integer(w_reg)) <= w_data;
--			end if;
--		end if;
--	
--	end process;
--	
--	r_data1<= archivo( conv_integer(r_reg1) );
--	r_data2<= archivo( conv_integer(r_reg2) );
--
--
--end Behavioral;


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;

entity archivo_registros is
	 Generic (
					n: integer := 16
	 );
    Port ( clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           DIR : in  STD_LOGIC;
           WR : in  STD_LOGIC;
			  SHE : in  STD_LOGIC;
           writeRegister : in  STD_LOGIC_VECTOR (3 downto 0);
           writeData : in  STD_LOGIC_VECTOR (n-1 downto 0);
           readRegister1 : in  STD_LOGIC_VECTOR (3 downto 0);
           readRegister2 : in  STD_LOGIC_VECTOR (3 downto 0);
           SHAMT : in  STD_LOGIC_VECTOR (3 downto 0);
           readData1 : out  STD_LOGIC_VECTOR (n-1 downto 0);
           readData2 : out  STD_LOGIC_VECTOR (n-1 downto 0)
           );
end archivo_registros;

architecture Behavioral of archivo_registros is

type archivo is array (0 to n-1) of std_logic_vector(n-1 downto 0);
signal banco : archivo;

begin

	process (clr, clk)
	variable aux, aux2: bit_vector(n-1 downto 0);
		begin

			if (clr='1') then
				banco <= (others =>"0000000000000000");

			elsif(rising_edge(clk)) then

				if((WR='1')and(SHE='0')and(DIR='0')) then
					banco(conv_integer(writeRegister)) <= writeData;
				end if;

				if ( (WR='1') and (SHE='1') and (DIR='0') ) then
					aux := to_bitvector(banco(conv_integer(readRegister1)));
					aux2 := aux srl conv_integer(SHAMT);
					banco(conv_integer(writeRegister)) <= to_stdlogicvector(aux2);
				end if;

				if ( (WR='1') and (SHE='1') and( DIR='1') ) then
			 		aux := to_bitvector(banco(conv_integer(readRegister1)));
					aux2 := aux sll conv_integer(SHAMT);
					banco(conv_integer(writeRegister)) <= to_stdlogicvector(aux2);
				end if;

			end if;
		end process;

	readData1 <= banco(conv_integer(readRegister1));
	readData2 <= banco(conv_integer(readRegister2));

end Behavioral;


