----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:06:41 12/07/2017 
-- Design Name: 
-- Module Name:    DECODER_MULTIPLY - Behavioral 
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

entity DECODER_MULTIPLY is
    Port ( S : in  STD_LOGIC_VECTOR (1 downto 0);
           O : out  STD_LOGIC_VECTOR (3 downto 0));
end DECODER_MULTIPLY;

architecture Behavioral of DECODER_MULTIPLY is

begin

	process(S)
	begin
		case S is
			when "00" => O 	<="1110";
			when "01" => O 	<="1101";
			when "10" => O 	<="1011";
			when others => O 	<="1111";
		end case;
	end process;

end Behavioral;

