library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PF_yayo is
    Port ( clk,clr : in  STD_LOGIC;
           she,dir,wr : in  STD_LOGIC;
           rreg1,rreg2,wreg,shamt : in  STD_LOGIC_VECTOR (3 downto 0);
           wdata : in  STD_LOGIC_VECTOR (15 downto 0);
           msop1,msop2,msdmd,msr : in  STD_LOGIC;
           aluop : in  STD_LOGIC_VECTOR (3 downto 0);
           pc,exten,lit : in  STD_LOGIC_VECTOR (15 downto 0);
           wd : in  STD_LOGIC;
           flags : out  STD_LOGIC_VECTOR (4 downto 0);
           sr_out : out  STD_LOGIC_VECTOR (15 downto 0));
end PF_yayo;

architecture Behavioral of PF_yayo is

	component archivo_registros is	--Archivo de registros
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
	
	component PRACTICA03 is --ALU
		 Port ( A,B : in  STD_LOGIC_VECTOR (15 downto 0);
				  operacion : in  STD_LOGIC_VECTOR (3 downto 0);
				  Z, Cout, Ovf, N : out  STD_LOGIC;
				  R : out  STD_LOGIC_VECTOR (15 downto 0));
	end component;
	
	component MEMORIA_DATOS is	--Memoria de Datos

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
	
	component multiplexor is	--Multiplexor
		 Port ( opc0,opc1 : in  STD_LOGIC_VECTOR (15 downto 0);
				  selector : in  STD_LOGIC;
				  sal : out  STD_LOGIC_VECTOR (15 downto 0));
	end component;
	
	signal rdata1,rdata2,alu_o,memd_o : std_logic_vector(15 downto 0);
	signal sop1_o,sop2_o,sdmd_o : std_logic_vector(15 downto 0);

begin

	AR : archivo_registros port map(clk=>clk,clr=>clr,DIR=>dir,WR=>wr,SHE=>she,writeRegister=>wreg,writeData=>wdata,readRegister1=>rreg1,readRegister2=>rreg2,SHAMT=>shamt,readData1=>rdata1,readData2=>rdata2);
	SOP1 : multiplexor port map(opc0=>rdata1,opc1=>pc,selector=>msop1,sal=>sop1_o);
	SOP2 : multiplexor port map(opc0=>rdata2,opc1=>exten,selector=>msop2,sal=>sop2_o);
	ALU : PRACTICA03 port map(A=>sop1_o,B=>sop2_o,operacion=>aluop,Ovf=>flags(3),N=>flags(2),Z=>flags(1),Cout=>flags(0),R=>alu_o);
	SDMD : multiplexor port map(opc0=>alu_o,opc1=>lit,selector=>msdmd,sal=>sdmd_o);
	MD : MEMORIA_DATOS port map(clk=>clk,A=>sdmd_o,dato_in=>rdata2,dato_out=>memd_o,wd=>wd);
	SR : multiplexor port map(opc0=>memd_o,opc1=>alu_o,selector=>msr,sal=>sr_out);

end Behavioral;
