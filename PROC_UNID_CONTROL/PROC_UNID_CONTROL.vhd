----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:34:29 05/29/2018 
-- Design Name: 
-- Module Name:    PROC_UNID_CONTROL - Behavioral 
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

entity PROC_UNID_CONTROL is
    Port ( clk, clr, lf : in  STD_LOGIC;
           func_code : in  STD_LOGIC_VECTOR (3 downto 0);
           microinstruccion : out  STD_LOGIC_VECTOR (19 downto 0);
           op_code : in  STD_LOGIC_VECTOR (4 downto 0);
           banderas : in  STD_LOGIC_VECTOR (3 downto 0));
end PROC_UNID_CONTROL;

architecture Behavioral of PROC_UNID_CONTROL is

begin


end Behavioral;

