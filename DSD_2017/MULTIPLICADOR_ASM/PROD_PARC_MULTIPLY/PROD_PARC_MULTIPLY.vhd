----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:57:38 11/28/2017 
-- Design Name: 
-- Module Name:    PROD_PARC_MULTIPLY - Behavioral 
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
use IEEE.STD_LOGIC_unsigned.ALL;
use IEEE.STD_LOGIC_arith.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PROD_PARC_MULTIPLY is
    Port ( clr : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           S : in  STD_LOGIC_VECTOR(1 downto 0);
           Prod : out  STD_LOGIC_VECTOR (7 downto 0);
           ent : in  STD_LOGIC_VECTOR (7 downto 0));
end PROD_PARC_MULTIPLY;

architecture Behavioral of PROD_PARC_MULTIPLY is
signal prod_aux : std_logic_vector(7 downto 0);
begin
	
	process(clk, prod_aux, clr)
	begin
	if(clr = '1') then
		prod_aux<="00000000";
	elsif (clk'event and clk = '1') then
		case S is
			when "00" => prod_aux <= ent;							-- CARGA
			when "01" => prod_aux <= prod_aux;					-- RETENCION
			when others => prod_aux <= ( others=>'0' );		-- BORRADO
		end case;
	end if;
	end process;

	Prod <= prod_aux;

end Behavioral;