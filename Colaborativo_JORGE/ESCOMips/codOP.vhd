library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use iEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity codOP is
	generic
	(
		palabra : integer := 20;
		busT  : integer := 5
	);
	port
	(
		dir		: in 	std_logic_vector(busT-1 downto 0);
		data		: out	std_logic_vector(palabra-1 downto 0)
	);
end codOP;

architecture Behavioral of codOP is


constant VERIF	: std_logic_vector (palabra - 1 downto 0)	:= "00000100110000100001";		-- 0
constant LI		: std_logic_vector (palabra - 1 downto 0)	:= "00000000100000000000";		-- 1
constant LWI	: std_logic_vector (palabra - 1 downto 0)	:= "00000100100000000100";		-- 2
constant LW		: std_logic_vector (palabra - 1 downto 0)	:= "00000100101010000000";		-- 23
constant SWI	: std_logic_vector (palabra - 1 downto 0)	:= "00001000000000000110";		-- 3
constant SW		: std_logic_vector (palabra - 1 downto 0)	:= "00001000011010000010";		-- 4

constant ADDI	: std_logic_vector (palabra - 1 downto 0)	:= "00000100110010000001";		-- 5
constant SUBI	: std_logic_vector (palabra - 1 downto 0)	:= "00000100110010100001";		-- 6
constant ANDI	: std_logic_vector (palabra - 1 downto 0)	:= "00000100110010001001";		-- 7
constant ORI	: std_logic_vector (palabra - 1 downto 0)	:= "00000100110010010001";		-- 8
constant XORI	: std_logic_vector (palabra - 1 downto 0)	:= "00000100110010011001";		-- 9
constant NANDI	: std_logic_vector (palabra - 1 downto 0)	:= "00000100110011110001";		-- 10
constant NORI	: std_logic_vector (palabra - 1 downto 0)	:= "00000100110011101001";		-- 11
constant XNORI	: std_logic_vector (palabra - 1 downto 0)	:= "00000100110010111001";		-- 12

constant SALTO	: std_logic_vector (palabra - 1 downto 0)	:= "00110000010110000001";		-- 13, 14, 15, 16, 17, 18

constant B		: std_logic_vector (palabra - 1 downto 0)	:= "00100000000000000000";		-- 19
constant CALL	: std_logic_vector (palabra - 1 downto 0)	:= "10100000000000000000";		-- 20
constant RET	: std_logic_vector (palabra - 1 downto 0)	:= "01000000000000000000";		-- 21
constant NOP	: std_logic_vector (palabra - 1 downto 0)	:= "00000000000000000000";		-- 22

type arr is array (0 to ((2**busT)-1)) of std_logic_vector((palabra-1) downto 0);

constant memoria: arr :=	(
													VERIF,					-- 0
													LI,						-- 1
													LWI,						-- 2
													SWI,						-- 3
													SW,						-- 4
													ADDI,						-- 5
													SUBI,						-- 6
													ANDI,						-- 7
													ORI,						-- 8
													XORI,						-- 9
													NANDI,					-- 10
													NORI,						-- 11
													XNORI,					-- 12
													SALTO,					-- 13
													SALTO,					-- 14
													SALTO,					-- 15
													SALTO,					-- 16
													SALTO,					-- 17
													SALTO,					-- 18
													B,							-- 19
													CALL,						-- 20
													RET,						-- 21
													NOP,						-- 22
													LW,						-- 23
													others => (others => '0')					-- 24 .. 31
												);

begin

	data <= memoria(conv_integer(dir));

end Behavioral;
