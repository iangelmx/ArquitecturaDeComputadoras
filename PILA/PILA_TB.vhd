
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY PILA_TB IS
END PILA_TB;
 
ARCHITECTURE behavior OF PILA_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PILA
    PORT(
         datos : IN  std_logic_vector(15 downto 0);
         PCout : OUT  std_logic_vector(15 downto 0);
         clk : IN  std_logic;
         clr : IN  std_logic;
         up : IN  std_logic;
			down : IN  std_logic;
			stack : out integer range 0 to 15;
         wpc : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal datos : std_logic_vector(15 downto 0) := (others => '0');
   signal clk : std_logic := '0';
   signal clr : std_logic := '0';
   signal up : std_logic := '0';
	signal down : std_logic := '0';
   signal wpc : std_logic := '0';
	

 	--Outputs
   signal PCout : std_logic_vector(15 downto 0);
	signal stack : integer range 0 to 15;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PILA PORT MAP (
          datos => datos,
          PCout => PCout,
          clk => clk,
          clr => clr,
          up => up,
			 stack => stack,
          wpc => wpc,
			 down => down
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
	-- ESTIMULOS EVAL
	
		clr <='1';
		wait for 10 ns;
		clr <='0';
		--dejar correr por 10 ciclos de reloj
		wait for 90 ns;
		--Llamada a 0x0200
		up<='1';
		wpc<='1';
		down<='0';
		datos<=x"0200";
		wait for 10 ns;
		-- dejar correr el PC por 10 ciclos de reloj
				wpc<='0';
				up<='0';
				down<='0';
				datos<=x"0000";

		wait for 90 ns;
		--Llamada a 0x2000
		up<='1';
		wpc<='1';
		down<='0';
		datos<=x"2000";
		wait for 10 ns;
		wpc<='0';
				up<='0';
				down<='0';
				datos<=x"0000";
		-- Branch to 0x4000
		wpc<= '1';
		up<='0';
		down <= '0';
		datos<=x"4000";
		-- dejar correr por 5 ciclos
		wait for 40 ns;
		-- hacer un ret.
	
		wpc<='0';
		up<='0';
		down<='1';
		datos<=x"0000";
		wait for 10 ns;
		wait;
		
--			-- FIN ESTIMULOS EVAL
--				-- hold reset state for 100 ns.
--				clr<='1';
--				wait for 20 ns;
--				clr<='0';
--				wait for clk_period*10;
--				--Inicio de carga
--				wpc<='1';
--				up<='0';
--				down<='0';
--				datos<="10101011";
--				--Fin de carga
--				wait for 10 ns;
--				
--				--COMPORTAMIENTO NORMAL
--				wpc<='0';
--				up<='0';
--				down<='0';
--				datos<="00000000";
--				--FIN COMPORTAMIENTO NORMAL
--				wait for 10 ns;
--				
--				-- CALL
--				up<='1';
--				wpc<='1';
--				down<='0';
--				datos<="00000011";
--				--FIN CALL
--				wait for 10 ns;
--				
--				-- Inicio de RET
--				wpc<='0';
--				up<='0';
--				down<='1';
--				datos<="00000000";
--				wait for 10 ns;
--				-- Fin de Call
--
--				-- insert stimulus here 
--
--				--wait;
   end process;

END;
