library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use iEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity MEMORIA_PROGRAMA is
	generic
	(
		palabra : integer := 25;
		busT  : integer := 10
	);
	port
	(
		PC		: in 	std_logic_vector(busT-1 downto 0);
		instruccion		: out	std_logic_vector(palabra-1 downto 0)
	);
end MEMORIA_PROGRAMA;

architecture Behavioral of MEMORIA_PROGRAMA is

  constant R0		: std_logic_vector(3 downto 0)	:= x"0";
  constant R1		: std_logic_vector(3 downto 0)	:= x"1";
  constant R2		: std_logic_vector(3 downto 0)	:= x"2";
  constant R3		: std_logic_vector(3 downto 0)	:= x"3";
  constant R4		: std_logic_vector(3 downto 0)	:= x"4";
  constant R4		: std_logic_vector(3 downto 0)	:= x"5";
  constant R4		: std_logic_vector(3 downto 0)	:= x"6";
  constant R4		: std_logic_vector(3 downto 0)	:= x"7";
  constant R4		: std_logic_vector(3 downto 0)	:= x"8";
  constant S_U		: std_logic_vector(3 downto 0)	:= x"0";
  
  constant LI		: std_logic_vector(4 downto 0)	:= "00001";		--1
  constant SWI		: std_logic_vector(4 downto 0)	:= "00011";		--3
  constant BGTI	: std_logic_vector(4 downto 0)	:= "10001";		--17
  constant ADDI	: std_logic_vector(4 downto 0)	:= "00101";		--5
  constant B		: std_logic_vector(4 downto 0)	:= "10011";		--19
  constant CALL	: std_logic_vector(4 downto 0)	:= "10100";		--20
  constant LW		: std_logic_vector(4 downto 0)	:= "10111";		--23
  constant SUBI	: std_logic_vector(4 downto 0)	:= "00110";		--6
  constant SW		: std_logic_vector(4 downto 0)	:= "00100";		--4
  
  

--  constant ADD	: std_logic_vector(4 downto 0)	:= "00000";
  
  

type arreglo is array (0 to ((2**busT)-1)) of std_logic_vector((palabra-1) downto 0);

constant banco: arreglo :=(
------ INSTRUCCIONES DE PRÁCTICA 11
------                        LI& R0&x"0001",							--"00001 0000 0000 0000 0000 0001",
------                        LI& R1&x"0007",							--"00001 0001 0000 0000 0000 0111",
------								ADD& R1& R1& R0&"0000"&"0000",		--"00000 0001 0001 0000 0000 0000",
------                        SWI& R1&x"0005",						--"00011 0001 0000 0000 0000 0101",
------                        B&"0000"&x"0002",						--"10011 0000 0000 0000 0000 0010",
						LI  & R0 & x"0005",
						SWI & R0 & x"0001",
						LI  & R0 & x"0007",
						SWI & R0 & x"0002",
						LI  & R0 & x"0009",
						SWI & R0 & x"0003",
						LI  & R0 & x"000" & ""--11
						SWI & R0 & 4
						LI  & R0 & 13
						SWI & R0 & 5
						LI  & R0 & 15
						SWI & R0 & 6
						LI  & R0 & 17
						SWI & R0 & 7
						LI  & R0 & 19
						SWI & R0 & 8
						LI  & R0 & 1
						SWI & R0 & 9
						LI  & R0 & 3
						SWI & R0 & 10
						LI  & R0 & 20
						SWI & R0 & 11
						LI  & R0 & 18
						SWI & R0 & 12
						LI  & R0 & 16
						SWI & R0 & 13
						LI  & R0 & 14
						SWI & R0 & 14
						LI  & R0 & 12
						SWI & R0 & 15
						LI  & R0 & 10
						SWI & R0 & 16
						LI  & R0 & 8
						SWI & R0 & 17
						LI  & R0 & 6
						SWI & R0 & 18
						LI  & R0 & 4
						SWI & R0 & 19
						LI  & R0 & 2
						SWI & R0 & 20
						LI  & R1 & 20
						LI  & R2 & 20
						LI  & R3 & 0
						LI  & R4 & 0
						BGTI R4 & R2 & 6
						BGTI R4 & R1 & 2
						ADDI R1 &  R4 &  20
						B #46
						LW R5 &  0(R1)
						SUBI R1 &  R1 &  1
						B #46
						BGTI R4 & R1 & 3
						SUBI R2 & R2 & 1
						ADDI R1 & R4 & 20
						B #45
						LW R6 &  0(R1)
						SUBI R7 &  R6 &  1
						LW R8 &  0(R7)
						BGTI R8 &  R6 & 3
						SUBI R1 &  R1 &  1
						B #52
						ADDI R3 &  R8 &  0
						SW R6 &  0(R7)
						SW R3 &  0(R1)
						B#60


								others => (others => '0') );
begin

	instruccion <= banco(conv_integer(PC));

end Behavioral;
