
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DECODER_P08 is
    Port ( Binario : in  STD_LOGIC_VECTOR (3 downto 0);
           segmentos : out  STD_LOGIC_VECTOR (6 downto 0));
end DECODER_P08;

architecture Behavioral of DECODER_P08 is

begin
	process(Binario)
	begin
		case Binario is
			--									 abcdefg
			when "0000" => segmentos <="0000001";
			when "0001" => segmentos <="1001111";
			when "0010" => segmentos <="0010010";
			when "0011" => segmentos <="0000110";
			when "0100" => segmentos <="1001100";
			when "0101" => segmentos <="0100100";
			when "0110" => segmentos <="0100000";
			when "0111" => segmentos <="0001111";
			when "1000" => segmentos <="0000000";
			when "1001" => segmentos <="0000100";
			when others => segmentos <="1111110";
		end case;
	end process;


end Behavioral;

