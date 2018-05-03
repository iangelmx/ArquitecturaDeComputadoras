----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:26:11 11/28/2017 
-- Design Name: 
-- Module Name:    RUTA_DATOS_MULTIPLY - Behavioral 
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

entity RUTA_DATOS_MULTIPLY is
    Port ( mudo_in : in  STD_LOGIC_VECTOR (3 downto 0);
           mdor_in : in  STD_LOGIC_VECTOR (3 downto 0);
           clr : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           S : in  STD_LOGIC_VECTOR (3 downto 0);
           z : out  STD_LOGIC;
           b0 : out  STD_LOGIC;
           Produc : out  STD_LOGIC_VECTOR (7 downto 0);
           selec : in  STD_LOGIC);
end RUTA_DATOS_MULTIPLY;

architecture Behavioral of RUTA_DATOS_MULTIPLY is

	component MUDO_IZQ is
    Port ( clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           S : in  STD_LOGIC_VECTOR (1 downto 0);
           mudo : in  STD_LOGIC_VECTOR (3 downto 0);
           salida : out  STD_LOGIC_VECTOR (7 downto 0));
	end component;
	
	component PROD_PARC_MULTIPLY is
    Port ( clr : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           S : in  STD_LOGIC_VECTOR(1 downto 0);
           Prod : out  STD_LOGIC_VECTOR (7 downto 0);
           ent : in  STD_LOGIC_VECTOR (7 downto 0));
	end component;
	
	component MDOR_DER is
    Port ( clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           S : in  STD_LOGIC_VECTOR (1 downto 0);
           mdor : in  STD_LOGIC_VECTOR (3 downto 0);
           b0 : out  STD_LOGIC;
           Z : out  STD_LOGIC);
	end component;

signal mudo_out_aux : std_logic_vector (7 downto 0);
signal st_in_aux : std_logic_vector (7 downto 0);
signal st_out_aux : std_logic_vector (7 downto 0);
signal pp_out_aux : std_logic_vector (7 downto 0);

begin

	st_in_aux <= mudo_out_aux when selec = '1' else 
					"00000000" when selec = '0';
					
	st_out_aux <= st_in_aux + pp_out_aux;

	cto01: MUDO_IZQ port map (clk=>clk, clr=>clr, S=>S(1 downto 0), mudo=>mudo_in, salida=>mudo_out_aux);
	cto02: PROD_PARC_MULTIPLY port map (clr=>clr, clk=>clk, S=>S(3 downto 2), Prod=>pp_out_aux, ent=>st_out_aux);
	
	cto03: MDOR_DER port map(clk=>clk, clr=>clr, S=>S(1 downto 0), mdor=>mdor_in, b0=>b0, Z=>z);
	
	Produc <= pp_out_aux;
	

end Behavioral;

