library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FF is
	port
	(
		CLK				: in std_logic;
		RCLR				: in std_logic;
		CLR				: out std_logic
	);
end FF;

architecture Behavioral of FF is

begin

	process(CLK)																-- Clear
	begin
		if (falling_edge(CLK)) then
			CLR <= RCLR;
		end if;
	end process;

end Behavioral;
