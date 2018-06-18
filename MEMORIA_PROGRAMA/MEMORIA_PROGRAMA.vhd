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
  constant BGETI	: std_logic_vector(4 downto 0)	:= "10010";		--18
  constant BNEI	: std_logic_vector(4 downto 0)	:= "01110";		--14
  constant ORI		: std_logic_vector(4 downto 0)	:="01000";
  
  
  constant BLTI	: std_logic_vector(4 downto 0)	:= "01111";		--15
  constant BLETI	: std_logic_vector(4 downto 0)	:= "10000";		--16
  constant BEQI		: std_logic_vector:="01101";
  
  constant ADDI	: std_logic_vector(4 downto 0)	:= "00101";		--5
  constant B		: std_logic_vector(4 downto 0)	:= "10011";		--19
  constant CALL	: std_logic_vector(4 downto 0)	:= "10100";		--20
  constant RET		: std_logic_vector(4 downto 0)	:= "10101";		--21
  constant LW		: std_logic_vector(4 downto 0)	:= "10111";		--23
  constant SUBI	: std_logic_vector(4 downto 0)	:= "00110";		--6
  constant SW		: std_logic_vector(4 downto 0)	:= "00100";		--4
  
  constant INICIALIZA_ARREGLO	: std_logic_vector(15 downto 0)	:= x"0005";
  constant BURBUJA		: std_logic_vector(15 downto 0)	:= x"0018";
  constant DESPLIEGA	: std_logic_vector(15 downto 0)	:= x"0010";
  
  constant VACIO 			: std_logic_vector(24 downto 0) := "0000000000000000000000000";
  
  constant DOS_NEG	: std_logic_vector(11 downto 0) := "111111111110";	-- -2
  constant DOCE_NEG	: std_logic_vector(11 downto 0) := "111111110100"; -- -12
  constant NUEV_NEG	: std_logic_vector(11 downto 0) := "111111110111"; -- -9
  constant CERO_12	: std_logic_vector(11 downto 0) := x"000";
   

  constant ADD	: std_logic_vector(4 downto 0)	:= "00000";

type arreglo is array (0 to ((2**busT)-1)) of std_logic_vector((palabra-1) downto 0);

constant banco: arreglo :=(
------ INSTRUCCIONES DE PRÁCTICA 11
------                        LI	& R0&x"0001",	------				--"00001 0000 0000 0000 0000 0001",
------                        LI	& R1&x"0007",	------				--"00001 0001 0000 0000 0000 0111",
------								ADD	& R1	& R1	& R0&"0000"&"0000",	----	--"00000 0001 0001 0000 0000 0000",
------                        SWI	& R1&x"0005",	------			--"00011 0001 0000 0000 0000 0101",
------                        B&"0000"&x"0002",	------			--"10011 0000 0000 0000 0000 0010",


						CALL 	&	SU	&	INICIALIZA_ARREGLO,			--	0
						CALL	&	SU	&	BURBUJA,							-- 1
						CALL	&	SU	&	DESPLIEGA,						-- 2
						
						B	&	SU	&	x"0002",						-- 3
						VACIO,										--	4
						LI	&	R0	&	x"0005",						-- 5 20(0014)-> 5 (0005)
						LI	&	R1	&	x"0000",						-- 6
						LI	&	R2	&	x"00C8",						-- 7
						BGTI	&	R0	&	R1	&	x"005",			-- 8
						SW	&	R2	&	R1	&	x"000",				-- 9
						SUBI	&	R2	&	R2	&	x"005",			-- 10
						ADDI	&	R1	&	R1	&	x"001",			-- 11
						B	&	SU	&	x"0008",						-- 12
						RET	&	SU	&	SU	&	SU & SU & SU,	-- 13
						VACIO,										-- 14
						VACIO,										-- 15
						LI	&	R1	&	x"0000",						-- 16
						BGETI	&	R0	&	R1	&	x"004",			-- 17
						LW	&	R2	&	R1	&	x"000",				-- 18		-- DESPLIEGA EN PANTALLA
						ADDI	&	R1	&	R1	&	x"001",			-- 19
						B	&	SU	&	x"0011",						-- 20
						RET	&	SU	&	SU	&	SU & SU & SU,	-- 21
						VACIO,										--	22
						VACIO,										--	23
						
						LI	&	R1	&	x"0001",						-- 24
						BEQI	&	R1	&	R0&x"00C",				-- 25	
						ORI	&	R2	&	R1&x"000",				-- 26
						BEQI	&	R2	&	R0&x"008",				--	27
						LW	&	R3	&	R1&x"FFF",					-- 28
						LW	&	R4	&	R2&x"000",					-- 29
						BLETI	&	R4	&	R3& x"003",				-- 30
						SW	&	R4	&	R1&x"FFF",					-- 31
						SW	&	R3	&	R2&x"000",					-- 32
						ADDI	&	R2	&	R2&x"001",				-- 33
						B	&	SU	&x"001B",						-- 34 
						ADDI	&	R1	&	R1&x"001",				--	35
						B	&	SU	&x"0019",						-- 36
						RET	&	SU	&SU&SU&SU&SU,				-- 37

							others => (others => '0') );

begin

	instruccion <= banco(conv_integer(PC));

end Behavioral;
