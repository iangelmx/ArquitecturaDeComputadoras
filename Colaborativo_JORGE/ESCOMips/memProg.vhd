library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use iEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity memProg is
	generic
	(
		palabra : integer := 25;
		busT  : integer := 11
	);
	port
	(
		dir		: in 	std_logic_vector(busT-1 downto 0);
		data		: out	std_logic_vector(palabra-1 downto 0)
	);
end memProg;

architecture Behavioral of memProg is
 constant R0		: std_logic_vector(3 downto 0)	:= x"0";
  constant R1		: std_logic_vector(3 downto 0)	:= x"1";
  constant R2		: std_logic_vector(3 downto 0)	:= x"2";
  constant R3		: std_logic_vector(3 downto 0)	:= x"3";
  constant R4		: std_logic_vector(3 downto 0)	:= x"4";
  constant R5		: std_logic_vector(3 downto 0)	:= x"5";
  constant R6		: std_logic_vector(3 downto 0)	:= x"6";
  constant R7		: std_logic_vector(3 downto 0)	:= x"7";
  constant R8		: std_logic_vector(3 downto 0)	:= x"8";
  constant R9		: std_logic_vector(3 downto 0)	:= x"9";
  constant R10		: std_logic_vector(3 downto 0)	:= x"A";
  
  constant R11		: std_logic_vector(3 downto 0)	:= x"B";
  constant SU		: std_logic_vector(3 downto 0)	:= x"0";
  
  constant LI		: std_logic_vector(4 downto 0)	:= "00001";		--1
  constant SWI		: std_logic_vector(4 downto 0)	:= "00011";		--3
  constant BGTI	: std_logic_vector(4 downto 0)	:= "10001";		--17
  constant BLTI	: std_logic_vector(4 downto 0)	:= "01111";		--15
  constant ADDI	: std_logic_vector(4 downto 0)	:= "00101";		--5
  constant B		: std_logic_vector(4 downto 0)	:= "10011";		--19
  constant CALL	: std_logic_vector(4 downto 0)	:= "10100";		--20
  constant RET		: std_logic_vector(4 downto 0)	:= "10101";		--21
  constant LW		: std_logic_vector(4 downto 0)	:= "10111";		--23
  constant SUBI	: std_logic_vector(4 downto 0)	:= "00110";		--6
  constant SW		: std_logic_vector(4 downto 0)	:= "00100";		--4
  
  constant INICIALIZA	: std_logic_vector(15 downto 0)	:= "0000000000000100";
  constant BURBUJA		: std_logic_vector(15 downto 0)	:= "0000000000110100";
  constant DESPLIEGUE	: std_logic_vector(15 downto 0)	:= "0000000001000011";
  
  constant VACIO 			: std_logic_vector(24 downto 0) := "0000000000000000000000000";
  
  constant DOS_NEG	: std_logic_vector(11 downto 0) := "111111111110";	-- -2
  constant DOCE_NEG	: std_logic_vector(11 downto 0) := "111111110100"; -- -12
  constant NUEV_NEG	: std_logic_vector(11 downto 0) := "111111110111"; -- -9
  constant CERO_12	: std_logic_vector(11 downto 0) := x"000";
   

--  constant ADD	: std_logic_vector(4 downto 0)	:= "00000";
  
  

type arreglo is array (0 to ((2**busT)-1)) of std_logic_vector((palabra-1) downto 0);

constant banco: arreglo :=(
------ INSTRUCCIONES DE PRÁCTICA 11
------                        LI	& R0&x"0001",							--"00001 0000 0000 0000 0000 0001",
------                        LI	& R1&x"0007",							--"00001 0001 0000 0000 0000 0111",
------								ADD	& R1	& R1	& R0&"0000"&"0000",		--"00000 0001 0001 0000 0000 0000",
------                        SWI	& R1&x"0005",						--"00011 0001 0000 0000 0000 0101",
------                        B&"0000"&x"0002",						--"10011 0000 0000 0000 0000 0010",
							CALL & SU & INICIALIZA,
						-- 10100 0000 0000000000000100
							CALL & SU & BURBUJA,
							CALL & SU & DESPLIEGUE,
			VACIO,
							LI 	& R0 & x"0005",
							SWI 	& R0 & x"0001",
							LI 	& R0 & x"0007",
							SWI 	& R0 & x"0002",
							LI 	& R0 & x"0009",
							SWI 	& R0 & x"0003",
							LI 	& R0 & x"000B",  --11
							SWI 	& R0 & x"0004",
							LI 	& R0 & x"000D",		--13
							SWI 	& R0 & x"0005",
							LI 	& R0 & x"000F",		--15
							SWI 	& R0 & x"0006",
							LI 	& R0 & x"0011",		--17
							SWI 	& R0 & x"0007",
							LI 	& R0 & x"0013",		--19
							SWI 	& R0 & x"0008",
							LI 	& R0 & x"0001",
							SWI 	& R0 & x"0009",
							LI 	& R0 & x"0003",
							SWI 	& R0 & x"000A",		--10
							LI 	& R0 & x"0014",		--20
							SWI 	& R0 & x"000B",			--11
							LI 	& R0 & x"0012",			--18
							SWI 	& R0 & x"000C",		--12
							LI 	& R0 & x"0010",		--16
							SWI 	& R0 & x"000D",			--13
							LI 	& R0 & x"000E",			--14
							SWI 	& R0 & x"000E",			--14
							LI 	& R0 & x"0018",				--24
							SWI 	& R0 & x"000F",			--15
							LI 	& R0 & x"000A", 			-- 10,------------------


						SWI & R0 & x"0010",
						LI & R0 & x"0008",
						SWI & R0 & x"0011",
						LI & R0 & x"0006",
						SWI & R0 & x"0012",
						LI & R0 & x"0004",
						SWI & R0 & x"0013",
						LI & R0 & x"0002",
						SWI & R0 & x"0014",
						LI & R1 & x"0014",
						LI & R2 & x"0014",
						LI & R3 & x"0000",
						LI & R4 & x"0000",
						LI & R10 & x"0013",
						LI & R11 & x"0000",
						RET & SU & SU & SU & SU & SU,
				VACIO,
						LW 	& R5 & R1 & CERO_12,
						LW 	& R6 & R10 & CERO_12,
						BLTI 	& R6 & R5 & x"006",
						LW 	& R3 & R10 & CERO_12,
						LW 	& R7 & R1 & CERO_12,
						SW 	& R7 & R10 & CERO_12,
						SW 	& R3 & R1 & CERO_12,
						SUBI 	& R10 & R10 & x"001",
						SUBI	& R1 & R1 & x"001",



							BGTI	& R11	& R1 & NUEV_NEG,			-- -9 -> C,  DE AQUÍ PARA ARRIBA ES DE YAYO
							SUBI	& R2 	& R2 & x"001",
							LI 	& R1 	& x"0014",					--20
							BGTI	& R11	& R2 & DOCE_NEG,			-- -12 -> C,		
							RET 	& SU 	& SU & SU & SU & SU,
		VACIO,
							LW 	& R9 	& R1 & CERO_12,
							SUBI 	& R1 	& R1 & x"001",
							BGTI 	& R11	& R1 & DOS_NEG,			-- -2 -> D,
							LI 	& R1 	& x"0014",					--20
							B & SU & x"0043",
							others => (others => '0') );
begin

	data <= banco(conv_integer(dir));

end Behavioral;
