--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.STD_LOGIC_ARITH.ALL;
--use IEEE.STD_LOGIC_UNSIGNED.ALL;
--
--entity MEMORIA_PROGRAMA is
--    Port ( PC : in  STD_LOGIC_VECTOR (15 downto 0);
--           Instruccion : out  STD_LOGIC_VECTOR (24 downto 0));
--end MEMORIA_PROGRAMA;
--
--architecture Behavioral of MEMORIA_PROGRAMA is
--
--type banco is array (0 to 4096) of std_logic_vector(24 downto 0);
--signal res : std_logic_vector(24 downto 0);
--signal archivo:banco;
--begin
--
--	process(PC)
--	begin
--		for i in 5 to 4096 loop
--			archivo(i) <= (others =>'0');
--		end loop;
--		archivo(conv_integer("0000"))<="0000100000000000000000101";
--		archivo(conv_integer("0001"))<="0000100010000000000001010";
--		archivo(conv_integer("0010"))<="00000000100010000xxxx0000";
--		archivo(conv_integer("0011"))<="0001100010000000000000101";
--		archivo(conv_integer("0100"))<="10011xxxx0000000000000010";
--	end process;
--	
--	res <= archivo(conv_integer(unsigned(PC)));
--	Instruccion <= res;
--	
--end Behavioral;
--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use iEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity memProg is
	generic
	(
		palabra : integer := 25;
		busT  : integer := 16
	);
	port
	(
		dir		: in 	std_logic_vector(busT-1 downto 0);
		data		: out	std_logic_vector(palabra-1 downto 0)
	);
end memProg;

architecture Behavioral of memProg is

  constant LI		: std_logic_vector(4 downto 0)	:= "00001";
  
  constant R0		: std_logic_vector(3 downto 0)	:= "0000";
  constant R1		: std_logic_vector(3 downto 0)	:= "0001";


  constant ADD	: std_logic_vector(4 downto 0)	:= "00000";
  constant SWI	: std_logic_vector(4 downto 0)	:= "00011";

  constant ADDI	: std_logic_vector(4 downto 0)	:= "00101";
  constant B		: std_logic_vector(4 downto 0)	:= "10011";

type arr is array (0 to ((2**busT)-1)) of std_logic_vector((palabra-1) downto 0);

constant banco: arr :=	(
                        LI&R0&x"0001",
                        LI&R1&x"0007",
                        ADD&R1&R1&R0&"0000"&"00",
                        SWI&R1&x"0005",
                        B&"0000"&x"0002",
								others => (others => '0') );

begin

	data <= banco(conv_integer(dir));

end Behavioral;
