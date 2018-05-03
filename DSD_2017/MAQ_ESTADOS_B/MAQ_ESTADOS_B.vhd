----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:46:25 11/09/2017 
-- Design Name: 
-- Module Name:    MAQ_ESTADOS_B - Behavioral 
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

entity MAQ_ESTADOS_B is
    Port ( x : in  STD_LOGIC;
				clk, clr : in std_logic;
				Q: out  STD_LOGIC_VECTOR (1 downto 0));
end MAQ_ESTADOS_B;

architecture Behavioral of MAQ_ESTADOS_B is

type estados IS (A, B, C, D);
signal estado_pres, estado_sig : estados;

begin
	
	process (clr, clk)
	begin
		if (clr ='1') then
			estado_pres <= A;
		elsif (clk'event and clk='1') then
			estado_pres <= estado_sig;
		end if;
	end process;
	
	process(x, estado_pres)
	begin
		case(estado_pres)is
			when A =>
				if(x='0') then
					Q<="00";
					estado_sig<=A;
				else
					Q<="11";
					estado_sig<=C;
				end if;
			when B =>
				if(x='0') then
					Q<="00";
					estado_sig<=A;
				else
					Q<="10";
					estado_sig<=D;
				end if;
			when C =>
				if(x='0') then
					Q<="10";
					estado_sig<=A;
				else
					Q<="00";
					estado_sig<=D;
				end if;
			when D =>
				if(x='0') then
					Q<="11";
					estado_sig<=B;
				else
					Q<="00";
					estado_sig<=D;
				end if;			
		end case;
	end process;

end Behavioral;

