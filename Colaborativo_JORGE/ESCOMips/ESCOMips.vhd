library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library work;
use work.ESCOMipsPackage.all;

entity ESCOMips is
	generic
	(
			N						: integer := 16
	);
	port
	(
		RCLR						: in std_logic;
		RCLK						: in std_logic;

		salida					: out std_logic_vector(15 downto 0);
		contProg					: out std_logic_vector(7 downto 0)
	);
end ESCOMips;

architecture Behavioral of ESCOMips is

signal CLR							: std_logic;
signal CLK							: std_logic;

signal programCounter			: std_logic_vector (N - 1 downto 0);

signal instruccion				: std_logic_vector (24 downto 0);

signal microInstruccion			: std_logic_vector (19 downto 0);

signal read_data1					: std_logic_vector (N - 1 downto 0);
signal read_data2					: std_logic_vector (N - 1 downto 0);
signal flags						: std_logic_vector (3 downto 0);
signal result						: std_logic_vector (N - 1 downto 0);

signal SIGNO						: std_logic_vector (N - 1 downto 0);
signal DIRECCION					: std_logic_vector (N - 1 downto 0);

signal dataMem						: std_logic_vector (N - 1 downto 0);


-- MUX
signal SSDMP						: std_logic_vector (N - 1 downto 0);

signal SSR2							: std_logic_vector (3 downto 0);
signal SSWD							: std_logic_vector (N - 1 downto 0);

signal SSEXT						: std_logic_vector (N - 1 downto 0);

signal SSOP1						: std_logic_vector (N - 1 downto 0);
signal SSOP2						: std_logic_vector (N - 1 downto 0);

signal SSDMD						: std_logic_vector (N - 1 downto 0);

signal SSR							: std_logic_vector (N - 1 downto 0);

-- Microinstrucci�n
signal SDMP							: std_logic;
signal UP 							: std_logic;
signal DW							: std_logic;
signal WPC							: std_logic;
signal SR2							: std_logic;
signal SWD							: std_logic;
signal SEXT							: std_logic;
signal SHE							: std_logic;
signal DIR							: std_logic;
signal WR							: std_logic;
signal SOP1							: std_logic;
signal SOP2							: std_logic;
signal ALUOP						: std_logic_vector (3 downto 0);
signal SDMD 						: std_logic;
signal WD							: std_logic;
signal SR							: std_logic;
signal LF							: std_logic;


begin

	SDMP							<= microInstruccion (19);
	UP 							<= microInstruccion (18);
	DW								<= microInstruccion (17);
	WPC							<= microInstruccion (16);
	SR2							<= microInstruccion (15);
	SWD							<= microInstruccion (14);
	SEXT							<= microInstruccion (13);
	SHE							<= microInstruccion (12);
	DIR							<= microInstruccion (11);
	WR								<= microInstruccion (10);
	SOP1							<= microInstruccion (9);
	SOP2							<= microInstruccion (8);
	ALUOP							<= microInstruccion (7 downto 4);
	SDMD 							<= microInstruccion (3);
	WD								<= microInstruccion (2);
	SR								<= microInstruccion (1);
	LF								<= microInstruccion (0);

--	divisorFrec : practica7G												-- Divisor de Frecuencias
--		port map
--		(
--			Osc_clk => RCLK,
--			clr => CLR,
--			clk => CLK
--		);

	CLK <= RCLK;

--	process(RCLK)																-- Clear
--	begin
--		if (falling_edge(RCLK)) then
--			CLR <= RCLR;
--		end if;
--	end process;

	CLR <= RCLR;

	SSDMP	<= instruccion (15 downto 0) when SDMP = '0' else SSR;

	pilaP : pila															-- Pila
		port map
		(
			pcData => SSDMP,
			programCounter => programCounter,
			UP => UP,
			DW => DW,
			WPC => WPC,
			clk => CLK,
			clr => CLR
		);

	memoriaPrograma : memProg											-- Memoria de Programa
		port map
		(
			dir		=> programCounter (10 downto 0),
			data		=> instruccion
		);

	UC : unidadControl																-- Unidad de Control
		port map
		(
			op_function => instruccion (3 downto 0),
			op_code => instruccion (24 downto 20),
			flags => flags,
			LF => LF,

			CLR => CLR,
			CLK => CLK,

			microInstruccion => microInstruccion
--			NAO => NAO
		);

	SSR2	<= instruccion (11 downto 8) when SR2 = '0' else instruccion (19 downto 16);
	SSWD	<= instruccion (15 downto 0) when SWD = '0' else SSR;

	archivoRegistros : registros
		port map
		(
			readRegister1	=> instruccion (15 downto 12),
			readRegister2	=> SSR2,
			writeRegister	=> instruccion (19 downto 16),
			SHAMT				=> instruccion (7 downto 4),
			writeData		=> SSWD,
			readData1		=> read_data1,
			readData2		=> read_data2,
			SHE				=> SHE,
			DIR				=> DIR,
			WR					=> WR,
			clk				=> CLK,
			clr				=> CLR
		);

	extensorSigno : extSigno
		port map
		(
				entrada	=> instruccion(11 downto 0),
				salida	=> SIGNO
		);

	extensorDireccion : extDireccion
		port map
		(
				entrada	=> instruccion(11 downto 0),
				salida	=> DIRECCION
		);

	SSEXT	<= SIGNO when SEXT = '0' else DIRECCION;

	SSOP1	<= read_data1 when SOP1 = '0' else programCounter;
	SSOP2	<= read_data2 when SOP2 = '0' else SSEXT;

	ALU : ALU16
		port map
		(
			a => SSOP1,
			b => SSOP2,
			aluop => ALUOP,
			result => result,
			flags => flags
		);

	SSDMD	<= result when SDMD = '0' else instruccion (15 downto 0);

	memoriaDatos : memDatos
		port map
		(
			dir => SSDMD (10 downto 0),
			d_in => read_data2,
			d_out => dataMem,

			WD => WD,
			clk => CLK
		);

	SSR <= dataMem when SR = '0' else result;

	--salida <= result(7 downto 0);
	salida <= dataMem;
	contProg <= programCounter(7 downto 0);

end Behavioral;
