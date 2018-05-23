
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use iEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity PROC_MEM_OPCODE is
    Port ( op_code : in  STD_LOGIC_VECTOR (4 downto 0);
           microinstruccion : out  STD_LOGIC_VECTOR (19 downto 0));
end PROC_MEM_OPCODE;

architecture Behavioral of PROC_MEM_OPCODE is

type arreglo is array (0 to 31) of std_logic_vector(19 downto 0);

constant instrucciones: arreglo :=(
							"00001000000001110001",
							"00000000010000000000",
							"00000100010000001000",
							"00000110010100110000",
							"00001000000000001100",
							"00001010000100110100",
							"00000100010100000011",
							"00000100010100010011",
							"00000100010100100011",
							"00000100010111010011",
							"00000100010111000011",
							"00000100010110100011",
							"10010000001100110011",
							"10010000001100110011",
							"10010000001100110011",
							"10010000001100110011",
							"10010000001100110011",
							"10010000001100110011",
							"00010000000000000000",
							"01010000000000000000",
							"00100000000000000000",
							"00000000000000000000",
							others => (others => '0') );

begin

microinstruccion<= instrucciones(conv_integer(op_code));

end Behavioral;

