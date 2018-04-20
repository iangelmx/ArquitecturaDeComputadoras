
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
         datos : IN  std_logic_vector(7 downto 0);
         PCout : OUT  std_logic_vector(7 downto 0);
         clk : IN  std_logic;
         clr : IN  std_logic;
         up : IN  std_logic;
			stack : out integer range 0 to 7;
         wpc : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal datos : std_logic_vector(7 downto 0) := (others => '0');
   signal clk : std_logic := '0';
   signal clr : std_logic := '0';
   signal up : std_logic := '0';
   signal wpc : std_logic := '0';

 	--Outputs
   signal PCout : std_logic_vector(7 downto 0);
	signal stack : integer range 0 to 7;

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
          wpc => wpc
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
      -- hold reset state for 100 ns.
		clr<='1';
      wait for 40 ns;
		clr<='0';
      wait for clk_period*10;
		-- Inicio de call
		up<='1';
		wpc<='1';
		datos<="10101010";
		wait;
		--wait for 10 ns;
		up<='0';
		
		-- Fin de Call

      -- insert stimulus here 

      --wait;
   end process;

END;
