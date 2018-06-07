
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library work;
use work.COMPONENTES.all;


entity PROCESADOR_ESCOMIPS is
	Port(
		clk, clr : in STD_LOGIC;
		read_data2 : out STD_LOGIC_VECTOR (15 downto 0)
	);
end PROCESADOR_ESCOMIPS;

architecture Behavioral of PROCESADOR_ESCOMIPS is

signal datos_aux, PCout_aux : STD_LOGIC_VECTOR (15 downto 0);
signal clk_aux, clr_aux, up_aux, wpc_aux, down_aux, lf_aux,nivel_out_aux : STD_LOGIC;
signal instruccion_aux : STD_LOGIC_VECTOR (24 downto 0);
signal func_code_aux, banderas_aux : STD_LOGIC_VECTOR (3 downto 0);
signal microinstruccion_aux : STD_LOGIC_VECTOR (19 downto 0);
signal op_code_aux : STD_LOGIC_VECTOR (4 downto 0);
signal busElevenToZero_aux : STD_LOGIC_VECTOR (11 downto 0);
signal extension_aux, extensionDir_aux : STD_LOGIC_VECTOR (15 downto 0));

---------- SEÑALES YAYO:
	signal rdata1,rdata2,alu_o,memd_o : std_logic_vector(15 downto 0);
	signal sop1_o,sop2_o,sdmd_o : std_logic_vector(15 downto 0);
	-- SEÑALES PORT ENTIDAD YAYO:
		SIGNAL sr_out, exten, lit, msdmd,msr : STD_LOGIC_VECTOR (15 downto 0));
		SIGNAL msop1,msop2,msdmd,msr, wd : STD_LOGIC;
		SIGNAL aluop : STD_LOGIC_VECTOR (3 downto 0);
	-- FIN SEÑALES PORT ENTIDAD YAYO --------------------
---------- FIN SEÑALES YAYO -------------------------

------ SEÑALES DE ENTRADA PARA BLOQUES DE YAYO
	signal rreg2_aux, rreg1_aux, wreg_aux, shamt_aux: STD_LOGIC_VECTOR (3 downto 0);
	signal dir_aux, wr_aux, she_aux, dir_aux : STD_LOGIC;
	signal wdata_aux, rdata1_aux, rdata2_aux : STD_LOGIC_VECTOR (15 downto 0);	
------ FIN SEÑALES DE ENTRADA PARA BLOQUES DE YAYO --------

begin

--	microinstruccion (  19 | 18 | 17 | 16  | 15  | 14  |  13  | 12  | 11  | 10 |  9   |  8   |  7-4  |  3   | 2  | 1  | 0 |
-- microinstruccion (SDMP | UP | DW | WPC | SR2 | SWD | SEXT | SHE | DIR | WR | SOP1 | SOP2 | ALUOP | SDMD | WD | SR | LF)

	datos_aux <= instruccion(15 downto 0) WHEN microinstruccion_aux(19) = '0' ELSE sr_out; -- MUX SDMP
	up_aux   <= microinstruccion_aux(18);
	down_aux <= microinstruccion_aux(17);
	wpc_aux  <= microinstruccion_aux(16);
	
	PILA : PILA port map(datos=>datos_aux, PCout=>PCout_aux, clk=>clk_aux, clr=>clr_aux, up=>up_aux, wpc=>wpc_aux, down=>down_aux);
	MEM_PROGR : MEMORIA_PROGRAMA port map(PC=>PCout_aux(9 downto 0), instruccion=>intruccion_aux);
	
	op_code_aux <= instruccion_aux(24 downto 20);
	func_code <= instruccion_aux(3 downto 0);
	
	U_de_C : PROC_UNID_CONTROL port map(clk=>clk_aux, clr=>clr_aux, lf=>lf_aux, func_code=>func_code_aux, microinstruccion=>microinstruccion_aux, op_code=>op_code_aux, nivel_out=>nivel_out_aux, banderas=>banderas_aux);
	
-- CABLEO DE SEÑALES DE ENTRADA PARA BLOQUE DE YAYO:
	rreg1_aux <= instruccion_aux(15 downto 12);
	rreg2_aux <= instruccion_aux(11 downto 8) WHEN microinstruccion_aux(15) = '0' ELSE instruccion_aux(19 downto 16); -- MUX SR2
	wreg_aux <= instruccion (19 downto 16);
	shamt_aux <= instruccion (7 downto 4);
	wdata_aux <= instruccion (15 downto 0) WHEN microinstruccion_aux(14) = '0' ELSE sr_out; -- MUX SWD
	lit <= instruccion (15 downto 0);
	
	she_aux <= microinstruccion_aux(12);
	dir_aux <= microinstruccion_aux(11);
	wr_aux <= microinstruccion_aux(10);
	msop1 <= microinstruccion_aux(9);
	msop2 <= microinstruccion_aux(8);
	aluop <= microinstruccion_aux(7 downto 4);
	msdmd <= microinstruccion_aux(3);
	wd <= microinstruccion_aux(2);
	msr <= microinstruccion_aux(1);
-- FIN CABLEO DE SEÑALES DE ENTRADA PARA BLOQUE DE YAYO-----------------------------
	
	lf_aux <= microinstruccion_aux(0);
	
	busElevenToZero_aux <= instruccion(11 downto 0);
	EXTENSOR_SIGNO : PROC_EXT_SIGNO port map(busElevenToZero=>busElevenToZero_aux, extension=>extension_aux);
	EXTENSOR_DIREC : PROC_EXT_DIR port map(busElevenToZero=>busElevenToZero_aux, extensionDir=>extensionDir_aux);
	
	exten <= extension_aux WHEN microinstruccion_aux(13) = '0' ELSE extensionDir_aux; -- MUX SEXT
	
-------------------- BLOQUES YAYO:
	AR : archivo_registros port map(
				clk=>clk_aux,
				clr=>clr_aux,
				DIR=>dir_aux,
				WR=>wr_aux,
				SHE=>she_aux,
				writeRegister=>wreg_aux,
				writeData=>wdata_aux,
				readRegister1=>rreg1_aux,
				readRegister2=>rreg2_aux,
				SHAMT=>shamt_aux,
				readData1=>rdata1_aux,
				readData2=>rdata2_aux);
	SOP1 : multiplexor port map(opc0=>rdata1,opc1=>PCout_aux,selector=>msop1,sal=>sop1_o);
	SOP2 : multiplexor port map(opc0=>rdata2,opc1=>exten,selector=>msop2,sal=>sop2_o);
	ALU : PRACTICA03 port map(A=>sop1_o,B=>sop2_o,operacion=>aluop,Ovf=>banderas_aux(3),N=>banderas_aux(2),Z=>banderas_aux(1),Cout=>banderas_aux(0),R=>alu_o);
	SDMD : multiplexor port map(opc0=>alu_o,opc1=>lit,selector=>msdmd,sal=>sdmd_o);
	MD : MEMORIA_DATOS port map(clk=>clk_aux,A=>sdmd_o,dato_in=>rdata2,dato_out=>memd_o,wd=>wd);
	SR : multiplexor port map(opc0=>memd_o,opc1=>alu_o,selector=>msr,sal=>sr_out);
-------------------- FIN BLOQUES YAYO--------------------------------------------------------------------
	
	read_data2 <= rdata2_aux;

end Behavioral;

