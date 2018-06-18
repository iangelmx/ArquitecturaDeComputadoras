LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY ESCOMipsTB IS
END ESCOMipsTB;
 
ARCHITECTURE behavior OF ESCOMipsTB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ESCOMips
    PORT(
         RCLR : IN  std_logic;
         RCLK : IN  std_logic;
         salida : OUT  std_logic_vector(7 downto 0);
			contProg : OUT std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal RCLR : std_logic := '0';
   signal RCLK : std_logic := '0';

 	--Outputs
   signal salida : std_logic_vector(7 downto 0);
	signal contProg : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant RCLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ESCOMips PORT MAP (
          RCLR => RCLR,
          RCLK => RCLK,
          salida => salida,
			 contProg => contProg
        );

   -- Clock process definitions
   RCLK_process :process
   begin
		RCLK <= '0';
		wait for RCLK_period/2;
		RCLK <= '1';
		wait for RCLK_period/2;
   end process;
	
	-- Stimulus process
   stim_proc: process
   begin
      RCLR <= '1';
		wait for 4 ns;
		RCLR <= '0';
      wait;
   end process;

END;
