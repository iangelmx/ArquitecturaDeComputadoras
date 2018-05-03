----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:13:55 12/07/2017 
-- Design Name: 
-- Module Name:    CLK_DIV_MULTIPLY - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CLK_DIV_MULTIPLY is
    Port ( clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           q25 : out  STD_LOGIC;
           q18 : out  STD_LOGIC;
           q19 : out  STD_LOGIC);
end CLK_DIV_MULTIPLY;

architecture Behavioral of CLK_DIV_MULTIPLY is
signal cont: std_logic_vector(31 downto 0);
begin

	process(clk,clr)
	begin
		if(clr ='1') then
			cont<=( others=>'0' );
		elsif(clk'event and clk='1') then
			cont<=cont+1;
			if(cont(31 downto 22)>=1000) then
				cont<=( others=>'0' );
			end if;
		end if;
	end process;

	q18 <= cont(18);
	q19 <= cont(19);
	q25 <= cont(25);
--	q<=cont(15 downto 14);	
--	q<=cont(19 downto 18);	


end Behavioral;

