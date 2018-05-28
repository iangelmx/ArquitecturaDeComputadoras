----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:15:51 05/27/2018 
-- Design Name: 
-- Module Name:    reg_estado - Behavioral 
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

entity reg_estado is
    Port ( clk,clr,lf : in  STD_LOGIC;
           flags_i : in  STD_LOGIC_VECTOR (3 downto 0);
           flags_o : out  STD_LOGIC_VECTOR (3 downto 0));
end reg_estado;

architecture Behavioral of reg_estado is
signal f_aux : STD_LOGIC_VECTOR (3 downto 0);
begin

	process(clk,clr,lf)
	begin
	
		if(clr='1')then
			f_aux <= "0000";
		elsif( clk'event and not(clk)='1') then
			if(lf = '1') then
				f_aux <= flags_i;
			end if;
		end if;
	
	end process;
	flags_o <= f_aux;

end Behavioral;

