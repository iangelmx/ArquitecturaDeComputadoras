----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:22:59 04/11/2018 
-- Design Name: 
-- Module Name:    archivo_registros - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity archivo_registros is
    Port ( w_reg : in  STD_LOGIC_VECTOR (3 downto 0);
           w_data : in  STD_LOGIC_VECTOR (15 downto 0);
           r_reg1 : in  STD_LOGIC_VECTOR (3 downto 0);
           r_reg2 : in  STD_LOGIC_VECTOR (3 downto 0);
           shamt : in  STD_LOGIC_VECTOR (3 downto 0);
           wr : in  STD_LOGIC;
           she : in  STD_LOGIC;
           dir : in  STD_LOGIC;
           clk,clr : in  STD_LOGIC;
           r_data1 : out  STD_LOGIC_VECTOR (15 downto 0);
           r_data2 : out  STD_LOGIC_VECTOR (15 downto 0));
end archivo_registros;

architecture Behavioral of archivo_registros is
type banco is array (0 to 15) of std_logic_vector(15 downto 0);
signal res : std_logic_vector(15 downto 0);

signal archivo:banco;

begin

	process(clk, clr)
	variable var : bit_vector(15 downto 0) := "0000000000000000";
	begin
	
		if (clr='1') then
			for i in 0 to 15 loop
				archivo(i) <= (others =>'0');
			end loop;
		elsif (clk'event and clk='1') then
			if(wr = '1' and she ='1' and dir = '0') then
				var := to_bitvector((archivo(conv_integer(r_reg1)))) srl conv_integer(shamt);
				res <= To_StdLogicVector( var );
				archivo(conv_integer(w_reg)) <= res;
				
			end if;
			if(wr = '1' and she ='1' and dir = '1') then
				var := to_bitvector((archivo(conv_integer(r_reg1)))) srl conv_integer(shamt);
				res <= To_StdLogicVector( var );
				archivo(conv_integer(w_reg)) <= res;
			end if;
			if (wr = '1') then
				archivo(conv_integer(w_reg)) <= w_data;
			end if;
		end if;
	
	end process;
	
	r_data1<= archivo( conv_integer(r_reg1) );
	r_data2<= archivo( conv_integer(r_reg2) );


end Behavioral;

