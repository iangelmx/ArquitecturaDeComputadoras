----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:46:25 12/07/2017 
-- Design Name: 
-- Module Name:    MUX_MULTIPLY - Behavioral 
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

entity MUX_MULTIPLY is
    Port ( unidades : in  STD_LOGIC_VECTOR (3 downto 0);
           decenas : in  STD_LOGIC_VECTOR (3 downto 0);
           centenas : in  STD_LOGIC_VECTOR (3 downto 0);
           S : in  STD_LOGIC_VECTOR (1 downto 0);
           BCD_out : out  STD_LOGIC_VECTOR (3 downto 0));
end MUX_MULTIPLY;

architecture Behavioral of MUX_MULTIPLY is

begin

process(S, unidades, decenas, centenas)
	begin
		case S is
			when "00" =>	BCD_out<=unidades;
			when "01" =>	BCD_out<=decenas;
			when others =>	BCD_out<=centenas;
		end case;
	end process;

end Behavioral;

