----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:24:53 10/26/2017 
-- Design Name: 
-- Module Name:    DETECT_FINAL - Behavioral 
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

entity DETECT_FINAL is
    Port ( clk : in  STD_LOGIC;
           btn : in  STD_LOGIC_VECTOR (2 downto 0);
           z : out  STD_LOGIC);
end DETECT_FINAL;

architecture Behavioral of DETECT_FINAL is

COMPONENT E_REBOTES_PULSO is
    Port ( ent : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           sal : out  STD_LOGIC);
end COMPONENT;

COMPONENT CLK_DIV_P03 is
    Port ( clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           q18 : out  STD_LOGIC);
end COMPONENT;

COMPONENT DETECTOR_SEQ is
    Port ( x : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           z : out  STD_LOGIC);
end COMPONENT;

signal q18_aux, sal_aux, ent_aux : std_logic;

begin

	ent_aux <= btn(0) or btn(1);

	cto1: CLK_DIV_P03 port map(clk=>clk, clr=>btn(2), q18=>q18_aux);
	cto2: E_REBOTES_PULSO port map (ent_aux, q18_aux, btn(2), sal_aux);
	cto3: DETECTOR_SEQ port map(x=> btn(1), clk=>sal_aux, clr=>btn(2), z=>z);

end Behavioral;

