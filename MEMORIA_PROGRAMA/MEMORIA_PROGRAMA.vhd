library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use iEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity MEMORIA_PROGRAMA is
	generic
	(
		palabra : integer := 25;
		busT  : integer := 16
	);
	port
	(
		PC		: in 	std_logic_vector(busT-1 downto 0);
		instruccion		: out	std_logic_vector(palabra-1 downto 0)
	);
end MEMORIA_PROGRAMA;

architecture Behavioral of MEMORIA_PROGRAMA is

  constant LI		: std_logic_vector(4 downto 0)	:= "00001";
  
  constant R0		: std_logic_vector(3 downto 0)	:= x"0";
  constant R1		: std_logic_vector(3 downto 0)	:= x"1";


  constant ADD	: std_logic_vector(4 downto 0)	:= "00000";
  constant SWI	: std_logic_vector(4 downto 0)	:= "00011";
  constant B		: std_logic_vector(4 downto 0)	:= "10011";

type arreglo is arregloay (0 to ((2**busT)-1)) of std_logic_vector((palabra-1) downto 0);

constant banco: arreglo :=(

                        LI&R0&x"0005",							--"00001 0000 0000 0000 0000 0101",
                        LI&R1&x"0007",							--"00001 0001 0000 0000 0000 1011",
								ADD&R1&R1&R0&"0000"&"0000",			--"00000 0001 0001 0000 0000 0000",
                        SWI&R1&x"0005",						--"00011 0001 0000 0000 0000 0101",
                        B&"0000"&x"0002",						--"1001100000000000000000010",
                        
								others => (others => '0') );
begin

	instruccion <= banco(conv_integer(PC));

end Behavioral;
