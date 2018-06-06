----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:07:55 06/06/2018 
-- Design Name: 
-- Module Name:    multiplexor - Behavioral 
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

entity multiplexor is
    Port ( opc0,opc1 : in  STD_LOGIC_VECTOR (15 downto 0);
           selector : in  STD_LOGIC;
           sal : out  STD_LOGIC_VECTOR (15 downto 0));
end multiplexor;

architecture Behavioral of multiplexor is
signal sal_a : STD_LOGIC_VECTOR (15 downto 0);

begin

	process(selector,opc0,opc1)
	begin
		
		if selector = '0' then
			sal_a <= opc0;
		else
			sal_a <= opc1;
		end if;
		
	end process;

	sal <= sal_a;

end Behavioral;

