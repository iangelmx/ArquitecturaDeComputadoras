----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:34:09 12/07/2017 
-- Design Name: 
-- Module Name:    CONV_BIN_TO_BCD_MULTIPY - Behavioral 
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

entity CONV_BIN_TO_BCD_MULTIPY is
    Port ( I : in  STD_LOGIC_VECTOR (7 downto 0);
           O : out  STD_LOGIC_VECTOR (11 downto 0));
end CONV_BIN_TO_BCD_MULTIPY;

architecture Behavioral of CONV_BIN_TO_BCD_MULTIPY is

begin

	process(I)
	variable Oaux: STD_LOGIC_VECTOR(21 downto 0);
	begin
		
		for i in 0 to 21 loop
			Oaux(i) := '0';
		end loop;
		
		Oaux(12 downto 3) := I;
		
		for i in 0 to 6 loop
			
			if(Oaux(13 downto 10) > 4)then
				Oaux(13 downto 10) := Oaux(13 downto 10) + 3;
			end if;
		
			if(Oaux(17 downto 14) > 4)then
				Oaux(17 downto 14) := Oaux(17 downto 14) + 3;
			end if;
			
			if(Oaux(21 downto 18) > 4)then
				Oaux(21 downto 18) := Oaux(21 downto 18) + 3;
			end if;
		
			Oaux(21 downto 1) := Oaux(20 downto 0);
		
		end loop;
	
		O <= Oaux(21 downto 10);
	
	end process;

end Behavioral;

