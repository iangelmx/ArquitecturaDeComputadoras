----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:50:45 05/27/2018 
-- Design Name: 
-- Module Name:    microcod_funcion - Behavioral 
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

entity microcod_funcion is
    Port ( f_code : in  STD_LOGIC_VECTOR (3 downto 0);
           ins : out  STD_LOGIC_VECTOR (19 downto 0));
end microcod_funcion;

architecture Behavioral of microcod_funcion is

begin

	process(f_code)
	begin
	
		case f_code is
		
			  when "0000" => ins <= "00000100010000110011";
			  when "0001" => ins <= "00000100010001110011";
			  when "0010" => ins <= "00000100010000000011";
			  when "0011" => ins <= "00000100010000010011";
			  when "0100" => ins <= "00000100010000100011";
			  when "0101" => ins <= "00000100010011010011";
			  when "0110" => ins <= "00000100010011000011";
			  when "0111" => ins <= "00000100010010100011";
			  when "1000" => ins <= "00000100010011010011";
			  when "1001" => ins <= "00000001110000000000";
			  when others => ins <= "00000001010000000000";
			  
		end case;
		
	end process;

end Behavioral;

