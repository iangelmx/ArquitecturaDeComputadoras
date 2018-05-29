----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:50:03 05/27/2018 
-- Design Name: 
-- Module Name:    condicion - Behavioral 
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

entity condicion is
    Port ( flags : in  STD_LOGIC_VECTOR (3 downto 0); -- OV,N,Z,C
           eq,neq,lt,le,gt,get : out  STD_LOGIC);
end condicion;

architecture Behavioral of condicion is
signal eq_a,neq_a,lt_a,le_a,gt_a,get_a : STD_LOGIC;
begin

	process(flags)
	begin
	
		eq_a <= flags(1);
		neq_a <= not(flags(1));
		gt_a <= not(flags(1)) AND flags(0);
		get_a <= flags(0);
		lt_a <= not(flags(0));
		le_a <= flags(1) XOR not(flags(0));
	
	end process;
	eq <= eq_a;
	neq <= neq_a;
	lt <= lt_a;
	le <= le_a;
	gt <= gt_a;
	get <= get_a;

end Behavioral;

