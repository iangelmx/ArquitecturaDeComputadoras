----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:02:25 11/06/2017 
-- Design Name: 
-- Module Name:    DETECTOR_SEQ_PASSWORD - Behavioral 
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

entity DETECTOR_SEQ_PASSWORD is
    Port ( swt : in  STD_LOGIC_VECTOR (7 downto 0);
           clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           bn : in  STD_LOGIC_VECTOR (1 downto 0);
           si_pasa : out  STD_LOGIC;
           no_pasa : out  STD_LOGIC);
end DETECTOR_SEQ_PASSWORD;

architecture Behavioral of DETECTOR_SEQ_PASSWORD is

TYPE estados IS(S0, S1, S2, S3, S4, E0, E1, E2, E3);
signal estado_pres, estado_sig : estados;
signal si, no : STD_LOGIC;

begin
	
	process (swt, bn, estado_pres)
	begin
		case(estado_pres) is
			when S0 => 
				si<='0';
				no<='0';
				if ( swt(7 downto 6) = bn (1 downto 0) ) then
					estado_sig <= S1;
				else 
					estado_sig <= E0;
				end if;
			when S1 => 
				si<='0';
				no<='0';
				if ( swt(5 downto 4) = bn (1 downto 0) ) then
					estado_sig <= S2;
				else 
					estado_sig <= E1;
				end if;
			when S2 => 
				si<='0';
				no<='0';
				if ( swt(3 downto 2) = bn (1 downto 0) ) then
					estado_sig <= S3;
				else 
					estado_sig <= E2;
				end if;
			when S3 => 
				si<='0';
				no<='0';
				if ( swt(1 downto 0) = bn (1 downto 0) ) then
					estado_sig <= S4;
				else 
					estado_sig <= E3;
				end if;
			when S4 => 
				si<='1';
				no<='0';
				if ( swt(7 downto 6) = bn (1 downto 0) ) then
					estado_sig <= S1;
				else 
					estado_sig <= E0;
				end if;
			
			when E0 => 
				si<='0';
				no<='0';
				estado_sig <= E1;
			when E1 => 
				si<='0';
				no<='0';
				estado_sig <= E2;
			when E2 => 
				si<='0';
				no<='0';
				estado_sig <= E3;
			when others => 
				si<='0';
				no<='1';
				if ( swt(7 downto 6) = bn (1 downto 0) ) then
					estado_sig <= S1;
				else 
					estado_sig <= E0;
				end if; 
		end case;
	end process;
	
	process (clk, clr, si, no)
	begin
		if (clr = '1') then
			estado_pres<=S0;
		elsif (clk'event and clk='1') then
			estado_pres<=estado_sig;
		end if;
	end process;

	si_pasa<=si;
	no_pasa<=no;

end Behavioral;

