
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PROC_UNID_CONTROL is
    Port ( clk, clr, lf : in  STD_LOGIC;
           func_code : in  STD_LOGIC_VECTOR (3 downto 0);
           microinstruccion : out  STD_LOGIC_VECTOR (19 downto 0);
           op_code : in  STD_LOGIC_VECTOR (4 downto 0);
			  nivel_out : out STD_LOGIC;
           banderas : in  STD_LOGIC_VECTOR (3 downto 0));
end PROC_UNID_CONTROL;

architecture Behavioral of PROC_UNID_CONTROL is

component PROC_DECODER is
    Port ( OP_CODE : in  STD_LOGIC_VECTOR (4 downto 0);
           tipo_r, beqi, bnei, blti, bleti, bgti, bgeti : out  STD_LOGIC);
end component;

component PROC_MEM_OPCODE is
    Port ( op_code : in  STD_LOGIC_VECTOR (4 downto 0);
           microinstruccion : out  STD_LOGIC_VECTOR (19 downto 0));
end component;

component PROC_NIVEL is
    Port ( clr, clk : in  STD_LOGIC;
           nivel : out  STD_LOGIC);
end component;

component reg_estado is
    Port ( clk,clr,lf : in  STD_LOGIC;
           flags_i : in  STD_LOGIC_VECTOR (3 downto 0);
           flags_o : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

component condicion is
    Port ( flags : in  STD_LOGIC_VECTOR (3 downto 0); -- OV,N,Z,C
           eq,neq,lt,le,gt,get : out  STD_LOGIC);
end component;

component subunidad_control is
    Port ( clk,clr : in  STD_LOGIC;
           tipor,beqi,bneqi,blti,bleti,bgti,bgeti : in  STD_LOGIC;
           na : in  STD_LOGIC;
           eq,neq,lt,le,gt,get : in  STD_LOGIC;
           sdopc,sm : out  STD_LOGIC);
end component;

component microcod_funcion is
    Port ( f_code : in  STD_LOGIC_VECTOR (3 downto 0);
           ins : out  STD_LOGIC_VECTOR (19 downto 0));
end component;


signal flags_aux : std_logic_vector(3 downto 0);
signal eq_aux, neq_aux, lt_aux, le_aux, gt_aux, get_aux, nivel_aux : std_logic;
signal tipo_r_aux, beqi_aux, bnei_aux, blti_aux, bleti_aux, bgti_aux, bgeti_aux : std_logic;
signal sdopc_aux, sm_aux : std_logic;
signal mux_Opcode : STD_LOGIC_VECTOR (4 downto 0);
signal microinstruccion_No_R : STD_LOGIC_VECTOR (19 downto 0);
signal microinstruccion_R, salida : STD_LOGIC_VECTOR (19 downto 0);
--
--    Port ( op_code : in  STD_LOGIC_VECTOR (4 downto 0);
--           microinstruccion : out  STD_LOGIC_VECTOR (19 downto 0));

begin

	REGISTRO_EDO : reg_estado port map(clk=>clk, clr=>clr, lf=>lf, flags_i=>banderas, flags_o=>flags_aux);
	CONDICION_COMP : condicion port map(flags=>flags_aux, eq=>eq_aux, neq=>neq_aux, lt=>lt_aux, le=>le_aux, gt=>gt_aux, get=>get_aux);
	NIVEL : PROC_NIVEL port map(clr=>clr, clk=>clk, nivel=>nivel_aux);
	DECODER_INST : PROC_DECODER port map(OP_CODE=>op_code, tipo_r=>tipo_r_aux, beqi=>beqi_aux, bnei=>bnei_aux, blti=>blti_aux, bleti=>bleti_aux, bgti=>bgti_aux, bgeti=>bgeti_aux);

	UNIDAD_DE_CONTROL : subunidad_control port map(clk=>clk, clr=>clr, tipor=>tipo_r_aux, beqi=>beqi_aux, bneqi=>bnei_aux, blti=>blti_aux, bleti=>blti_aux, bgti=>bgti_aux, bgeti=>bgeti_aux, na=>nivel_aux, eq=>eq_aux, neq=>neq_aux, lt=>lt_aux, le=>le_aux, gt=>gt_aux, get=>get_aux, sdopc=>sdopc_aux, sm=>sm_aux);
		
	MICRO_COD_OPER : PROC_MEM_OPCODE port map(op_code=>mux_Opcode, microinstruccion=>microinstruccion_No_R);
	
	mux_Opcode <= "00000" when sdopc_aux = '0' else op_code;
	
	MICRO_COD_FUNC : microcod_funcion port map(f_code=>func_code, ins=>microinstruccion_R);
	
	salida <= microinstruccion_No_R when sm_aux = '1' else microinstruccion_R;
	
	microinstruccion<=salida;
	nivel_out <= nivel_aux;
	
end Behavioral;

