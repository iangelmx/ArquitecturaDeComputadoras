----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:40:30 11/23/2017 
-- Design Name: 
-- Module Name:    ALU_01 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU_01 is
    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
           b : in  STD_LOGIC_VECTOR (3 downto 0);
           sel : in  STD_LOGIC_VECTOR (2 downto 0);
           y : out  STD_LOGIC_VECTOR (3 downto 0);
           C, N, Z, V : out  STD_LOGIC);
end ALU_01;

architecture Behavioral of ALU_01  is
signal y_aux : std_logic_vector(4 downto 0);
signal c_aux : std_logic;
begin

	process(a, b, sel)
	begin
		case sel is
			when "000" => y_aux <= '0'&a;
			when "001" => y_aux <= ('0'&a)+('0'&b);
			when "010" => y_aux <= ('0'&a)-('0'&b);
			when "011" => y_aux <= ('0'&b)-('0'&a);
			when "100" => y_aux <= not ('0'&a);
			when "101" => y_aux <= ('0'&a) and ('0'&b);
			when "110" => y_aux <= ('0'&a) or ('0'&b);
			when others => y_aux <= ('0'&a) xor ('0'&b);
		end case;
	end process;
	y<= y_aux(3 downto 0);
	Z<= not ( y_aux(3) or y_aux(2) or y_aux(1) or y_aux(0) );
	C<= y_aux(4);
	V<=a(3) xor b(3) xor y_aux(3) xor c_aux;
		
end Behavioral;

