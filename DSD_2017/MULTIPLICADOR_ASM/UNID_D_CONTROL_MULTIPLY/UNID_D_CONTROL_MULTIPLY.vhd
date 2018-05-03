----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:12:35 11/28/2017 
-- Design Name: 
-- Module Name:    UNID_D_CONTROL_MULTIPLY - Behavioral 
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

entity UNID_D_CONTROL_MULTIPLY is
    Port ( clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           inicio : in  STD_LOGIC;
           b0 : in  STD_LOGIC;
           z : in  STD_LOGIC;
			  S : out std_logic_vector(3 downto 0);
           sel : out  STD_LOGIC);
end UNID_D_CONTROL_MULTIPLY;

architecture Behavioral of UNID_D_CONTROL_MULTIPLY is

type estados IS (carga, proceso, final);
signal estado_pres, estado_sig : estados;

signal s_aux : std_logic;
signal SS_aux : std_logic_vector(3 downto 0);

begin
	process(clk, clr)
	begin
		if(clr = '1') then
			estado_pres <= carga;
		elsif(clk'event and clk='1') then
			estado_pres <= estado_sig;
		end if;
	end process;
	
	process(inicio, z, b0, estado_pres)
	begin
		case estado_pres is
			when carga =>
				SS_aux(3 downto 2) <= "10"; 				-- BORRADO para Prod. Parcial.
				SS_aux(1 downto 0) <= "00";				-- CARGA para mudo, mdor, 				
				s_aux <= '0';
				if (inicio ='1') then
					estado_sig<=proceso;
				else
					estado_sig<=carga;
				end if;
			when proceso =>
				SS_aux(3 downto 2) <= "00"; 				-- CARGA para Prod. Parcial.
				SS_aux(1 downto 0) <= "01";				-- CORRIMIENTO para mudo, mdor, 
				if(z='0') then
					if(b0='1') then
						s_aux<='1';
					else
						s_aux<='0';								---------- <--???? ES NECESARIO???
					end if;
					estado_sig <= proceso;
				else
					s_aux<='0';
					estado_sig <= final;
				end if;
			when others =>
				SS_aux(3 downto 2) <= "01"; 				-- RETENCION para Prod. Parcial.
				SS_aux(1 downto 0) <= "10";				-- RETENCION para mudo, mdor, 
				if(inicio='1') then
					estado_sig <= carga;
				else
					estado_sig <= final;
				end if;
		end case;
	end process;
	
	sel<=s_aux;
	S<=SS_aux;

end Behavioral;

