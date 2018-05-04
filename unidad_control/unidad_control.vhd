
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity unidad_control is
    Port ( ini : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           a0 : in  STD_LOGIC;
           z : in  STD_LOGIC;
           la : out  STD_LOGIC;
           ea : out  STD_LOGIC;
           lb : out  STD_LOGIC;
           eb : out  STD_LOGIC;
           ec : out  STD_LOGIC);
end unidad_control;

architecture Behavioral of unidad_control is

type estados IS (E0, E1, E2);
signal estado_pres, estado_sig : estados;

Signal la_a,ea_a,lb_a,eb_a,ec_a : std_logic;

begin

	process (clr, clk)
	begin
		if (clr ='1') then
			estado_pres <= E0;
--			la_a <= '0';
--			ea_a <= '0';
--			lb_a <= '0';
--			eb_a <= '0';
--			ec_a <= '0';
		elsif (clk'event and clk='1') then
			estado_pres <= estado_sig;
		end if;
	end process;
	
	process(ini, a0, z, estado_pres)
	begin
		la_a <= '0';
		ea_a <= '0';
		lb_a <= '0';
		eb_a <= '0';
		ec_a <= '0';
	
		case(estado_pres)is
			when E0 => 
				lb_a <= '1';
				eb_a <= '0';
				if(ini = '1') then
					estado_sig<=E1;
				else
					la_a <= '1';
					ea_a <= '0';
					estado_sig<=E0;
				end if;
				
			when E1 => 
				la_a <= '0';
				ea_a <= '1';
				if(z = '1') then
					estado_sig<=E2;
				else
					if(a0 = '1')then
						lb_a <= '0';
						eb_a <= '1';
					end if;
					estado_sig<=E1;
				end if;
				
			when E2 => 
				ec_a <= '1';
				if(ini = '1')then
					estado_sig<=E2;
				else
					estado_sig<=E0;
				end if;
					
		end case;
	end process;
	
	la <= la_a;
	ea <= ea_a;
	lb <= lb_a;
	eb <= eb_a;
	ec <= ec_a;

end Behavioral;

