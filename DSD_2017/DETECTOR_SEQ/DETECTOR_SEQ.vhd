----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:19:39 10/24/2017 
-- Design Name: 
-- Module Name:    DETECTOR_SEQ - Behavioral 
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

entity DETECTOR_SEQ is
    Port ( x : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           z : out  STD_LOGIC);
end DETECTOR_SEQ;

architecture Behavioral of DETECTOR_SEQ is
signal S1R1, S2R2 : std_logic_vector(1 downto 0);
signal y1, y2 : std_logic;
begin


	S1R1(1) <= x and y2; 			-- S1
	S1R1(0) <= not x; 				-- R1
	
	S2R2(1) <= x and (not y1);
	S2R2(0) <= y1 or (not x);
	
	z <= x and y1 and (not y2);

-- PRIMERO SE HACEN LOS FF's, porque tienen reloj :3 xD
	process (clk, clr)
	begin
		if(clr = '1') then
			y1<='0';
			y2<='0';
		elsif(clk'event and clk='1') then
			case S1R1 is
				when "00" => y1 <= y1;
				when "01" => y1 <= '0';
				when "10" => y1 <= '1';
				when others => y1<= '-';				
			end case;
			
			case S2R2 is
				when "00" => y2 <= y2;
				when "01" => y2 <= '0';
				when "10" => y2 <= '1';
				when others => y2 <= '-';				
			end case;
			
		end if;
	end process;

end Behavioral;

