library IEEE;
use IEEE.STD_LOGIC_1164.all;

package COMPONENTES is

	component MEMORIA_DATOS is

		generic
		(
			palabra : integer := 16;
			busT  : integer := 16;
			capacidad : integer := 2048
		);
		port
		(
			A		: in 	std_logic_vector(busT-1 downto 0);
			dato_in		: in 	std_logic_vector(palabra-1 downto 0);
			dato_out		: out	std_logic_vector(palabra-1 downto 0);
			clk, wd : in  STD_LOGIC
		);

	end component;
-------------------------------------
	component MEMORIA_PROGRAMA is
		generic
		(
			palabra : integer := 25;
			busT  : integer := 10
		);
		port
		(
			PC		: in 	std_logic_vector(busT-1 downto 0);
			instruccion		: out	std_logic_vector(palabra-1 downto 0)
		);
	end component;
	
---------------------------------------

	component PROC_EXT_DIR is
		 Port ( busElevenToZero : in  STD_LOGIC_VECTOR (11 downto 0);
				  extensionDir : out  STD_LOGIC_VECTOR (15 downto 0));
	end component;
---------------------------

	component PROC_EXT_SIGNO is
		 Port ( busElevenToZero : in  STD_LOGIC_VECTOR (11 downto 0);
				  extension : out  STD_LOGIC_VECTOR (15 downto 0));
	end component;
---------------
	component PROC_UNID_CONTROL is
		 Port ( clk, clr, lf : in  STD_LOGIC;
				  func_code : in  STD_LOGIC_VECTOR (3 downto 0);
				  microinstruccion : out  STD_LOGIC_VECTOR (19 downto 0);
				  op_code : in  STD_LOGIC_VECTOR (4 downto 0);
				  nivel_out : out STD_LOGIC;
				  banderas : in  STD_LOGIC_VECTOR (3 downto 0));
	end component;
-----------------------------------------
	component archivo_registros is
		 Generic (
						n: integer := 16
		 );
		 Port ( clk : in  STD_LOGIC;
				  clr : in  STD_LOGIC;
				  DIR : in  STD_LOGIC;
				  WR : in  STD_LOGIC;
				  SHE : in  STD_LOGIC;
				  writeRegister : in  STD_LOGIC_VECTOR (3 downto 0);
				  writeData : in  STD_LOGIC_VECTOR (n-1 downto 0);
				  readRegister1 : in  STD_LOGIC_VECTOR (3 downto 0);
				  readRegister2 : in  STD_LOGIC_VECTOR (3 downto 0);
				  SHAMT : in  STD_LOGIC_VECTOR (3 downto 0);
				  readData1 : out  STD_LOGIC_VECTOR (n-1 downto 0);
				  readData2 : out  STD_LOGIC_VECTOR (n-1 downto 0)
				  );
	end component;
---------------------------------------------

	component PILA is
		 Port ( datos : in  STD_LOGIC_VECTOR (15 downto 0);
				  PCout : out  STD_LOGIC_VECTOR (15 downto 0);
				  clk, clr, up, wpc, down : in  STD_LOGIC);
	end component;
-------------------

--------------- ALU :
	component PRACTICA03 is
		 Port ( A,B : in  STD_LOGIC_VECTOR (15 downto 0);
				  operacion : in  STD_LOGIC_VECTOR (3 downto 0);
				  Z, Cout, Ovf, N : out  STD_LOGIC;
				  R : out  STD_LOGIC_VECTOR (15 downto 0));
	end component;
---------------------------


	component PROCESADOR_CLK_DIV is
		 Port ( clk : in  STD_LOGIC;
				  clr : in  STD_LOGIC;
				  q27 : out  STD_LOGIC);
	end component;
------------

	component FF_d is
		 Port ( clk,clr,d : in  STD_LOGIC;
				  q,nq : out  STD_LOGIC);
	end component;

-----------

	component multiplexor is
		 Port ( opc0,opc1 : in  STD_LOGIC_VECTOR (15 downto 0);
				  selector : in  STD_LOGIC;
				  sal : out  STD_LOGIC_VECTOR (15 downto 0));
	end component;

end COMPONENTES;

package body COMPONENTES is

 
end COMPONENTES;
