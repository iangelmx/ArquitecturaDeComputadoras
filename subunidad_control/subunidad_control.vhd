----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:30:55 05/27/2018 
-- Design Name: 
-- Module Name:    subunidad_control - Behavioral 
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

entity subunidad_control is
    Port ( clk,clr : in  STD_LOGIC;
           tipor,beqi,bneqi,blti,bleti,bgti,bgeti : in  STD_LOGIC;
           na : in  STD_LOGIC;
           eq,neq,lt,le,gt,get : in  STD_LOGIC;
           sdopc,sm : out  STD_LOGIC);
end subunidad_control;

architecture Behavioral of subunidad_control is
type estados IS (A);
signal estado_pres, estado_sig : estados;
signal sdopc_a,sm_a : STD_LOGIC;
begin

	process (clr, clk)
	begin
		if (clr ='1') then
			estado_pres <= A;
		elsif (clk'event and clk='1') then
			estado_pres <= estado_sig;
		end if;
	end process;
	
	process(tipor,beqi,bneqi,blti,bleti,bgti,bgeti,na,eq,neq,lt,le,gt,get,estado_pres)
	begin
		case(estado_pres)is
		
			when A =>
				if(tipor = '1') then
				
					sdopc_a <= '0';
					sm_a <= '0';
					
				else
				
					if(beqi = '1')then
					
						if(na = '1')then
						
							sdopc_a <= '0';
							sm_a <= '1';
							estado_sig <= A;
						
						else
						
							if(eq = '1')then
								
								sdopc_a <= '1';
								sm_a <= '1';
								estado_sig <= A;
								
							else
							
								sdopc_a <= '0';
								sm_a <= '1';
								estado_sig <= A;
							
							end if;
						
						end if;
					
					else
					
						if(bneqi = '1')then
					
							if(na = '1')then
							
								sdopc_a <= '0';
								sm_a <= '1';
								estado_sig <= A;
							
							else
							
								if(neq = '1')then
									
									sdopc_a <= '1';
									sm_a <= '1';
									estado_sig <= A;
									
								else
								
									sdopc_a <= '0';
									sm_a <= '1';
									estado_sig <= A;
								
								end if;
							
							end if;
						
						else
						
							if(blti = '1')then
					
								if(na = '1')then
								
									sdopc_a <= '0';
									sm_a <= '1';
									estado_sig <= A;
								
								else
								
									if(lt = '1')then
										
										sdopc_a <= '1';
										sm_a <= '1';
										estado_sig <= A;
										
									else
									
										sdopc_a <= '0';
										sm_a <= '1';
										estado_sig <= A;
									
									end if;
								
								end if;
							
							else
							
								if(bleti = '1')then
					
									if(na = '1')then
									
										sdopc_a <= '0';
										sm_a <= '1';
										estado_sig <= A;
									
									else
									
										if(le = '1')then
											
											sdopc_a <= '1';
											sm_a <= '1';
											estado_sig <= A;
											
										else
										
											sdopc_a <= '0';
											sm_a <= '1';
											estado_sig <= A;
										
										end if;
									
									end if;
								
								else
								
									if(bgti = '1')then
					
										if(na = '1')then
										
											sdopc_a <= '0';
											sm_a <= '1';
											estado_sig <= A;
										
										else
										
											if(gt = '1')then
												
												sdopc_a <= '1';
												sm_a <= '1';
												estado_sig <= A;
												
											else
											
												sdopc_a <= '0';
												sm_a <= '1';
												estado_sig <= A;
											
											end if;
										
										end if;
									
									else
									
										if(bgeti = '1')then
					
											if(na = '1')then
											
												sdopc_a <= '0';
												sm_a <= '1';
												estado_sig <= A;
											
											else
											
												if(get = '1')then
													
													sdopc_a <= '1';
													sm_a <= '1';
													estado_sig <= A;
													
												else
												
													sdopc_a <= '0';
													sm_a <= '1';
													estado_sig <= A;
												
												end if;
											
											end if;
										
										else
										
											sdopc_a <= '1';
											sm_a <= '1';
											estado_sig <= A;
										
										end if;
									
									end if;
								
								end if;
							
							end if;
						
						end if;
					
					end if;
					
				end if;	
				
		end case;
		
	end process;
	
	sdopc <= sdopc_a;
	sm <= sm_a;
	
end Behavioral;

