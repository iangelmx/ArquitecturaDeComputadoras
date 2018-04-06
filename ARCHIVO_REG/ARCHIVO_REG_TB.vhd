
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY ARCHIVO_REG_TB IS
END ARCHIVO_REG_TB;
 
ARCHITECTURE behavior OF ARCHIVO_REG_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ARCHIVO_REG
    PORT(
         dir_r : IN  std_logic_vector(2 downto 0);
         dir_w : IN  std_logic_vector(2 downto 0);
         dato_in : IN  std_logic_vector(7 downto 0);
         dato_out : OUT  std_logic_vector(7 downto 0);
         wr : IN  std_logic;
         clk : IN  std_logic;
         clr : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal dir_r : std_logic_vector(2 downto 0) := (others => '0');
   signal dir_w : std_logic_vector(2 downto 0) := (others => '0');
   signal dato_in : std_logic_vector(7 downto 0) := ("10100010");
   signal wr : std_logic := '0';
   signal clk : std_logic := '0';
   signal clr : std_logic := '0';

 	--Outputs
   signal dato_out : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ARCHIVO_REG PORT MAP (
          dir_r => dir_r,
          dir_w => dir_w,
          dato_in => dato_in,
          dato_out => dato_out,
          wr => wr,
          clk => clk,
          clr => clr
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
		clr <= '1';
		wait for 30 ns;	
		clr <= '0';
		wait for 20 ns;	
		
		wr<='1';
		
      -- hold reset state for 100 ns.
		
      wait for 150 ns;	
		
		wr<='0';
		
		wait for 150 ns;	

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;
	
	lecturas : process
	begin
		dir_r <= dir_r +1;
		wait for 15 ns;
	end process;
	
	escrituras : process
	begin
		dir_w <= dir_w +1;
		dato_out <= dato_in +1;
		wait for 15 ns;
	end process;

END;
