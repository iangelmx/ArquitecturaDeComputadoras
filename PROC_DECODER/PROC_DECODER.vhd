
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PROC_DECODER is
    Port ( OP_CODE : in  STD_LOGIC_VECTOR (4 downto 0);
           tipo_r, beqi, bnei, blti, bleti, bgti, bgeti : out  STD_LOGIC);
end PROC_DECODER;

architecture Behavioral of PROC_DECODER is

begin

tipo_r <= '1' when OP_CODE = "00000" else '0';
beqi <= '1' when OP_CODE = "01101" else '0';
bnei <= '1' when OP_CODE = "01110" else '0';
blti <= '1' when OP_CODE = "01111" else '0';
bleti <= '1' when OP_CODE = "10000" else '0';
bgti <= '1' when OP_CODE = "10001" else '0';
bgeti <= '1' when OP_CODE = "10010" else '0';

end Behavioral;

