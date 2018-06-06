----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:43:24 06/06/2018 
-- Design Name: 
-- Module Name:    FF_d - Behavioral 
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

entity FF_d is
    Port ( clk,clr,d : in  STD_LOGIC;
           q,nq : out  STD_LOGIC);
end FF_d;

architecture Behavioral of FF_d is
signal q_aux : std_logic;
begin

	process(clk,clr)
	begin
	
		if(clr = '1') then
			q_aux <= '0';
		elsif(clk'event and not(clk) = '1')then
			q_aux <= d;
		end if;
	
	end process;

	q <= q_aux;
	nq <= not(q_aux);
end Behavioral;

