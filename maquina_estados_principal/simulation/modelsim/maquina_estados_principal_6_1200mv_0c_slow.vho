-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "05/07/2026 23:16:31"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
LIBRARY STD;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE STD.STANDARD.ALL;

ENTITY 	maquina_estados_principal IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	usuario_seleccionado : IN std_logic;
	clave_completa : IN std_logic;
	clave_correcta : IN std_logic;
	usuario_habilitado : IN std_logic;
	horario_correcto : IN std_logic;
	intrusion : IN std_logic;
	tiempo_apertura_fin : IN std_logic;
	tiempo_bloqueo_fin : IN std_logic;
	tiempo_error_fin : IN std_logic;
	estado_out : OUT std_logic_vector(2 DOWNTO 0);
	limpiar_clave : OUT std_logic;
	limpiar_intentos : OUT std_logic;
	iniciar_apertura : OUT std_logic;
	iniciar_bloqueo : OUT std_logic;
	iniciar_error : OUT std_logic;
	activar_alarma : OUT std_logic;
	abrir_puerta : OUT std_logic;
	intentos_out : OUT STD.STANDARD.integer range 0 TO 3
	);
END maquina_estados_principal;

-- Design Ports Information
-- estado_out[0]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado_out[1]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado_out[2]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- limpiar_clave	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- limpiar_intentos	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iniciar_apertura	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iniciar_bloqueo	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iniciar_error	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- activar_alarma	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abrir_puerta	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- intentos_out[0]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- intentos_out[1]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- intrusion	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clave_completa	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- usuario_seleccionado	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tiempo_apertura_fin	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tiempo_bloqueo_fin	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tiempo_error_fin	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clave_correcta	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- usuario_habilitado	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- horario_correcto	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF maquina_estados_principal IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_usuario_seleccionado : std_logic;
SIGNAL ww_clave_completa : std_logic;
SIGNAL ww_clave_correcta : std_logic;
SIGNAL ww_usuario_habilitado : std_logic;
SIGNAL ww_horario_correcto : std_logic;
SIGNAL ww_intrusion : std_logic;
SIGNAL ww_tiempo_apertura_fin : std_logic;
SIGNAL ww_tiempo_bloqueo_fin : std_logic;
SIGNAL ww_tiempo_error_fin : std_logic;
SIGNAL ww_estado_out : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_limpiar_clave : std_logic;
SIGNAL ww_limpiar_intentos : std_logic;
SIGNAL ww_iniciar_apertura : std_logic;
SIGNAL ww_iniciar_bloqueo : std_logic;
SIGNAL ww_iniciar_error : std_logic;
SIGNAL ww_activar_alarma : std_logic;
SIGNAL ww_abrir_puerta : std_logic;
SIGNAL ww_intentos_out : std_logic_vector(1 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \estado_out[0]~output_o\ : std_logic;
SIGNAL \estado_out[1]~output_o\ : std_logic;
SIGNAL \estado_out[2]~output_o\ : std_logic;
SIGNAL \limpiar_clave~output_o\ : std_logic;
SIGNAL \limpiar_intentos~output_o\ : std_logic;
SIGNAL \iniciar_apertura~output_o\ : std_logic;
SIGNAL \iniciar_bloqueo~output_o\ : std_logic;
SIGNAL \iniciar_error~output_o\ : std_logic;
SIGNAL \activar_alarma~output_o\ : std_logic;
SIGNAL \abrir_puerta~output_o\ : std_logic;
SIGNAL \intentos_out[0]~output_o\ : std_logic;
SIGNAL \intentos_out[1]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \clave_completa~input_o\ : std_logic;
SIGNAL \horario_correcto~input_o\ : std_logic;
SIGNAL \usuario_habilitado~input_o\ : std_logic;
SIGNAL \estado_siguiente~4_combout\ : std_logic;
SIGNAL \clave_correcta~input_o\ : std_logic;
SIGNAL \intrusion~input_o\ : std_logic;
SIGNAL \Selector4~6_combout\ : std_logic;
SIGNAL \Selector4~12_combout\ : std_logic;
SIGNAL \estado_siguiente~5_combout\ : std_logic;
SIGNAL \tiempo_apertura_fin~input_o\ : std_logic;
SIGNAL \Selector2~2_combout\ : std_logic;
SIGNAL \Selector2~3_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \estado_actual.ABRIR~q\ : std_logic;
SIGNAL \Selector4~4_combout\ : std_logic;
SIGNAL \Selector4~16_combout\ : std_logic;
SIGNAL \Selector4~7_combout\ : std_logic;
SIGNAL \Selector4~5_combout\ : std_logic;
SIGNAL \usuario_seleccionado~input_o\ : std_logic;
SIGNAL \Selector4~8_combout\ : std_logic;
SIGNAL \tiempo_bloqueo_fin~input_o\ : std_logic;
SIGNAL \tiempo_error_fin~input_o\ : std_logic;
SIGNAL \Selector4~9_combout\ : std_logic;
SIGNAL \Selector4~10_combout\ : std_logic;
SIGNAL \Selector4~11_combout\ : std_logic;
SIGNAL \Selector4~13_combout\ : std_logic;
SIGNAL \estado_actual.BLOQUEO~q\ : std_logic;
SIGNAL \estado_out~1_combout\ : std_logic;
SIGNAL \Selector4~14_combout\ : std_logic;
SIGNAL \Selector4~15_combout\ : std_logic;
SIGNAL \Selector1~2_combout\ : std_logic;
SIGNAL \Selector1~3_combout\ : std_logic;
SIGNAL \Selector1~4_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \estado_actual.IDLE~q\ : std_logic;
SIGNAL \Selector1~5_combout\ : std_logic;
SIGNAL \Selector1~6_combout\ : std_logic;
SIGNAL \estado_actual.INGRESO~q\ : std_logic;
SIGNAL \intentos~0_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \intentos~2_combout\ : std_logic;
SIGNAL \intentos~1_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \Selector3~2_combout\ : std_logic;
SIGNAL \Selector3~3_combout\ : std_logic;
SIGNAL \estado_actual.ERROR_CLAVE~q\ : std_logic;
SIGNAL \estado_out~0_combout\ : std_logic;
SIGNAL \Selector7~4_combout\ : std_logic;
SIGNAL \Selector7~2_combout\ : std_logic;
SIGNAL \Selector7~3_combout\ : std_logic;
SIGNAL \iniciar_apertura~0_combout\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector5~2_combout\ : std_logic;
SIGNAL \iniciar_error~0_combout\ : std_logic;
SIGNAL intentos : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_estado_out~1_combout\ : std_logic;
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_usuario_seleccionado <= usuario_seleccionado;
ww_clave_completa <= clave_completa;
ww_clave_correcta <= clave_correcta;
ww_usuario_habilitado <= usuario_habilitado;
ww_horario_correcto <= horario_correcto;
ww_intrusion <= intrusion;
ww_tiempo_apertura_fin <= tiempo_apertura_fin;
ww_tiempo_bloqueo_fin <= tiempo_bloqueo_fin;
ww_tiempo_error_fin <= tiempo_error_fin;
estado_out <= ww_estado_out;
limpiar_clave <= ww_limpiar_clave;
limpiar_intentos <= ww_limpiar_intentos;
iniciar_apertura <= ww_iniciar_apertura;
iniciar_bloqueo <= ww_iniciar_bloqueo;
iniciar_error <= ww_iniciar_error;
activar_alarma <= ww_activar_alarma;
abrir_puerta <= ww_abrir_puerta;
intentos_out <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_intentos_out));
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);
\ALT_INV_estado_out~1_combout\ <= NOT \estado_out~1_combout\;
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;

-- Location: IOOBUF_X0_Y4_N2
\estado_out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \estado_out~0_combout\,
	devoe => ww_devoe,
	o => \estado_out[0]~output_o\);

-- Location: IOOBUF_X3_Y0_N30
\estado_out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_estado_out~1_combout\,
	devoe => ww_devoe,
	o => \estado_out[1]~output_o\);

-- Location: IOOBUF_X5_Y0_N2
\estado_out[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \estado_actual.BLOQUEO~q\,
	devoe => ww_devoe,
	o => \estado_out[2]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\limpiar_clave~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector7~3_combout\,
	devoe => ww_devoe,
	o => \limpiar_clave~output_o\);

-- Location: IOOBUF_X0_Y3_N2
\limpiar_intentos~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector6~0_combout\,
	devoe => ww_devoe,
	o => \limpiar_intentos~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\iniciar_apertura~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \iniciar_apertura~0_combout\,
	devoe => ww_devoe,
	o => \iniciar_apertura~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\iniciar_bloqueo~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector5~2_combout\,
	devoe => ww_devoe,
	o => \iniciar_bloqueo~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\iniciar_error~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \iniciar_error~0_combout\,
	devoe => ww_devoe,
	o => \iniciar_error~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\activar_alarma~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \estado_actual.BLOQUEO~q\,
	devoe => ww_devoe,
	o => \activar_alarma~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\abrir_puerta~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \estado_actual.ABRIR~q\,
	devoe => ww_devoe,
	o => \abrir_puerta~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\intentos_out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => intentos(0),
	devoe => ww_devoe,
	o => \intentos_out[0]~output_o\);

-- Location: IOOBUF_X0_Y2_N23
\intentos_out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => intentos(1),
	devoe => ww_devoe,
	o => \intentos_out[1]~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y2_N15
\clave_completa~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clave_completa,
	o => \clave_completa~input_o\);

-- Location: IOIBUF_X0_Y4_N8
\horario_correcto~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_horario_correcto,
	o => \horario_correcto~input_o\);

-- Location: IOIBUF_X0_Y3_N8
\usuario_habilitado~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_usuario_habilitado,
	o => \usuario_habilitado~input_o\);

-- Location: LCCOMB_X1_Y2_N16
\estado_siguiente~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \estado_siguiente~4_combout\ = (\horario_correcto~input_o\ & \usuario_habilitado~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \horario_correcto~input_o\,
	datac => \usuario_habilitado~input_o\,
	combout => \estado_siguiente~4_combout\);

-- Location: IOIBUF_X1_Y0_N29
\clave_correcta~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clave_correcta,
	o => \clave_correcta~input_o\);

-- Location: IOIBUF_X0_Y2_N1
\intrusion~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_intrusion,
	o => \intrusion~input_o\);

-- Location: LCCOMB_X2_Y2_N8
\Selector4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~6_combout\ = (\estado_actual.INGRESO~q\ & ((\clave_completa~input_o\) # (\intrusion~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clave_completa~input_o\,
	datac => \intrusion~input_o\,
	datad => \estado_actual.INGRESO~q\,
	combout => \Selector4~6_combout\);

-- Location: LCCOMB_X1_Y2_N2
\Selector4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~12_combout\ = ((\intrusion~input_o\) # ((!\clave_correcta~input_o\ & intentos(1)))) # (!\estado_siguiente~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clave_correcta~input_o\,
	datab => \estado_siguiente~4_combout\,
	datac => intentos(1),
	datad => \intrusion~input_o\,
	combout => \Selector4~12_combout\);

-- Location: LCCOMB_X1_Y2_N12
\estado_siguiente~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \estado_siguiente~5_combout\ = (\clave_completa~input_o\ & (\estado_siguiente~4_combout\ & (\clave_correcta~input_o\ & !\intrusion~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clave_completa~input_o\,
	datab => \estado_siguiente~4_combout\,
	datac => \clave_correcta~input_o\,
	datad => \intrusion~input_o\,
	combout => \estado_siguiente~5_combout\);

-- Location: IOIBUF_X3_Y0_N1
\tiempo_apertura_fin~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tiempo_apertura_fin,
	o => \tiempo_apertura_fin~input_o\);

-- Location: LCCOMB_X3_Y2_N30
\Selector2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~2_combout\ = (!\tiempo_apertura_fin~input_o\ & (\estado_actual.ABRIR~q\ & !\intrusion~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tiempo_apertura_fin~input_o\,
	datac => \estado_actual.ABRIR~q\,
	datad => \intrusion~input_o\,
	combout => \Selector2~2_combout\);

-- Location: LCCOMB_X3_Y2_N0
\Selector2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~3_combout\ = (\Selector2~2_combout\) # ((\estado_siguiente~5_combout\ & \estado_actual.INGRESO~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado_siguiente~5_combout\,
	datac => \Selector2~2_combout\,
	datad => \estado_actual.INGRESO~q\,
	combout => \Selector2~3_combout\);

-- Location: IOIBUF_X0_Y14_N8
\rst~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: CLKCTRL_G2
\rst~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~inputclkctrl_outclk\);

-- Location: FF_X3_Y2_N15
\estado_actual.ABRIR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Selector2~3_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_actual.ABRIR~q\);

-- Location: LCCOMB_X2_Y2_N0
\Selector4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~4_combout\ = (!\intrusion~input_o\ & ((\estado_actual.ERROR_CLAVE~q\) # ((\estado_actual.ABRIR~q\) # (!\estado_actual.IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \intrusion~input_o\,
	datab => \estado_actual.ERROR_CLAVE~q\,
	datac => \estado_actual.ABRIR~q\,
	datad => \estado_actual.IDLE~q\,
	combout => \Selector4~4_combout\);

-- Location: LCCOMB_X2_Y2_N20
\Selector4~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~16_combout\ = (!\estado_actual.BLOQUEO~q\ & (!\estado_actual.INGRESO~q\ & (!\Selector4~6_combout\ & !\Selector4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_actual.BLOQUEO~q\,
	datab => \estado_actual.INGRESO~q\,
	datac => \Selector4~6_combout\,
	datad => \Selector4~4_combout\,
	combout => \Selector4~16_combout\);

-- Location: LCCOMB_X2_Y2_N10
\Selector4~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~7_combout\ = (\estado_actual.BLOQUEO~q\ & (((!\clave_completa~input_o\ & !\intrusion~input_o\)) # (!\estado_actual.INGRESO~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clave_completa~input_o\,
	datab => \intrusion~input_o\,
	datac => \estado_actual.BLOQUEO~q\,
	datad => \estado_actual.INGRESO~q\,
	combout => \Selector4~7_combout\);

-- Location: LCCOMB_X2_Y2_N26
\Selector4~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~5_combout\ = (\estado_actual.BLOQUEO~q\) # (\Selector4~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado_actual.BLOQUEO~q\,
	datad => \Selector4~4_combout\,
	combout => \Selector4~5_combout\);

-- Location: IOIBUF_X3_Y0_N15
\usuario_seleccionado~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_usuario_seleccionado,
	o => \usuario_seleccionado~input_o\);

-- Location: LCCOMB_X3_Y2_N4
\Selector4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~8_combout\ = (\tiempo_apertura_fin~input_o\ & \estado_actual.ABRIR~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tiempo_apertura_fin~input_o\,
	datac => \estado_actual.ABRIR~q\,
	combout => \Selector4~8_combout\);

-- Location: IOIBUF_X0_Y2_N8
\tiempo_bloqueo_fin~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tiempo_bloqueo_fin,
	o => \tiempo_bloqueo_fin~input_o\);

-- Location: IOIBUF_X3_Y0_N8
\tiempo_error_fin~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tiempo_error_fin,
	o => \tiempo_error_fin~input_o\);

-- Location: LCCOMB_X3_Y2_N2
\Selector4~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~9_combout\ = (!\estado_actual.ABRIR~q\ & ((\estado_actual.BLOQUEO~q\ & (\tiempo_bloqueo_fin~input_o\)) # (!\estado_actual.BLOQUEO~q\ & ((\tiempo_error_fin~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tiempo_bloqueo_fin~input_o\,
	datab => \tiempo_error_fin~input_o\,
	datac => \estado_actual.ABRIR~q\,
	datad => \estado_actual.BLOQUEO~q\,
	combout => \Selector4~9_combout\);

-- Location: LCCOMB_X3_Y2_N16
\Selector4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~10_combout\ = (\estado_actual.IDLE~q\ & (((\Selector4~8_combout\) # (\Selector4~9_combout\)))) # (!\estado_actual.IDLE~q\ & (\usuario_seleccionado~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_actual.IDLE~q\,
	datab => \usuario_seleccionado~input_o\,
	datac => \Selector4~8_combout\,
	datad => \Selector4~9_combout\,
	combout => \Selector4~10_combout\);

-- Location: LCCOMB_X2_Y2_N28
\Selector4~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~11_combout\ = (\Selector4~7_combout\ & ((\Selector4~5_combout\ & ((!\Selector4~10_combout\))) # (!\Selector4~5_combout\ & (\estado_actual.INGRESO~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~7_combout\,
	datab => \estado_actual.INGRESO~q\,
	datac => \Selector4~5_combout\,
	datad => \Selector4~10_combout\,
	combout => \Selector4~11_combout\);

-- Location: LCCOMB_X2_Y2_N30
\Selector4~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~13_combout\ = (\Selector4~16_combout\) # ((\Selector4~11_combout\) # ((\Selector4~12_combout\ & \Selector4~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~12_combout\,
	datab => \Selector4~16_combout\,
	datac => \Selector4~6_combout\,
	datad => \Selector4~11_combout\,
	combout => \Selector4~13_combout\);

-- Location: FF_X2_Y2_N15
\estado_actual.BLOQUEO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Selector4~13_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_actual.BLOQUEO~q\);

-- Location: LCCOMB_X3_Y2_N28
\estado_out~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \estado_out~1_combout\ = (!\estado_actual.ABRIR~q\ & !\estado_actual.ERROR_CLAVE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado_actual.ABRIR~q\,
	datad => \estado_actual.ERROR_CLAVE~q\,
	combout => \estado_out~1_combout\);

-- Location: LCCOMB_X3_Y2_N18
\Selector4~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~14_combout\ = (\estado_actual.BLOQUEO~q\ & ((\tiempo_bloqueo_fin~input_o\))) # (!\estado_actual.BLOQUEO~q\ & (\tiempo_error_fin~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tiempo_error_fin~input_o\,
	datac => \tiempo_bloqueo_fin~input_o\,
	datad => \estado_actual.BLOQUEO~q\,
	combout => \Selector4~14_combout\);

-- Location: LCCOMB_X3_Y2_N20
\Selector4~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~15_combout\ = (\estado_actual.ABRIR~q\ & (\tiempo_apertura_fin~input_o\)) # (!\estado_actual.ABRIR~q\ & ((\Selector4~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tiempo_apertura_fin~input_o\,
	datac => \estado_actual.ABRIR~q\,
	datad => \Selector4~14_combout\,
	combout => \Selector4~15_combout\);

-- Location: LCCOMB_X3_Y2_N6
\Selector1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~2_combout\ = (\Selector4~15_combout\ & ((\estado_actual.BLOQUEO~q\) # ((!\estado_out~1_combout\ & !\intrusion~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_actual.BLOQUEO~q\,
	datab => \estado_out~1_combout\,
	datac => \intrusion~input_o\,
	datad => \Selector4~15_combout\,
	combout => \Selector1~2_combout\);

-- Location: LCCOMB_X3_Y2_N12
\Selector1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~3_combout\ = (!\estado_actual.IDLE~q\ & ((\intrusion~input_o\) # (\usuario_seleccionado~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \intrusion~input_o\,
	datac => \estado_actual.IDLE~q\,
	datad => \usuario_seleccionado~input_o\,
	combout => \Selector1~3_combout\);

-- Location: LCCOMB_X3_Y2_N10
\Selector1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~4_combout\ = (!\Selector1~3_combout\ & (!\Selector1~2_combout\ & ((\estado_out~1_combout\) # (!\intrusion~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~3_combout\,
	datab => \estado_out~1_combout\,
	datac => \intrusion~input_o\,
	datad => \Selector1~2_combout\,
	combout => \Selector1~4_combout\);

-- Location: LCCOMB_X3_Y2_N8
\Selector0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (\Selector4~6_combout\) # ((\Selector1~4_combout\ & (\estado_actual.IDLE~q\)) # (!\Selector1~4_combout\ & ((!\Selector1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~6_combout\,
	datab => \estado_actual.IDLE~q\,
	datac => \Selector1~2_combout\,
	datad => \Selector1~4_combout\,
	combout => \Selector0~1_combout\);

-- Location: FF_X3_Y2_N23
\estado_actual.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Selector0~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_actual.IDLE~q\);

-- Location: LCCOMB_X3_Y2_N26
\Selector1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~5_combout\ = (!\intrusion~input_o\ & (!\estado_actual.IDLE~q\ & \usuario_seleccionado~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \intrusion~input_o\,
	datac => \estado_actual.IDLE~q\,
	datad => \usuario_seleccionado~input_o\,
	combout => \Selector1~5_combout\);

-- Location: LCCOMB_X3_Y2_N24
\Selector1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~6_combout\ = (!\Selector4~6_combout\ & ((\Selector1~4_combout\ & ((\estado_actual.INGRESO~q\))) # (!\Selector1~4_combout\ & (\Selector1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~6_combout\,
	datab => \Selector1~5_combout\,
	datac => \estado_actual.INGRESO~q\,
	datad => \Selector1~4_combout\,
	combout => \Selector1~6_combout\);

-- Location: FF_X3_Y2_N25
\estado_actual.INGRESO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector1~6_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_actual.INGRESO~q\);

-- Location: LCCOMB_X1_Y2_N24
\intentos~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \intentos~0_combout\ = (\clave_completa~input_o\ & (\estado_siguiente~4_combout\ & (!\clave_correcta~input_o\ & \estado_actual.INGRESO~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clave_completa~input_o\,
	datab => \estado_siguiente~4_combout\,
	datac => \clave_correcta~input_o\,
	datad => \estado_actual.INGRESO~q\,
	combout => \intentos~0_combout\);

-- Location: LCCOMB_X1_Y2_N0
\Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\tiempo_bloqueo_fin~input_o\ & ((\estado_actual.BLOQUEO~q\) # ((\estado_siguiente~5_combout\ & \estado_actual.INGRESO~q\)))) # (!\tiempo_bloqueo_fin~input_o\ & (\estado_siguiente~5_combout\ & (\estado_actual.INGRESO~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tiempo_bloqueo_fin~input_o\,
	datab => \estado_siguiente~5_combout\,
	datac => \estado_actual.INGRESO~q\,
	datad => \estado_actual.BLOQUEO~q\,
	combout => \Selector6~0_combout\);

-- Location: LCCOMB_X1_Y2_N10
\intentos~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \intentos~2_combout\ = (!\Selector6~0_combout\ & ((\intentos~0_combout\ & ((intentos(1)) # (!intentos(0)))) # (!\intentos~0_combout\ & ((intentos(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => intentos(1),
	datab => \intentos~0_combout\,
	datac => intentos(0),
	datad => \Selector6~0_combout\,
	combout => \intentos~2_combout\);

-- Location: FF_X1_Y2_N11
\intentos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \intentos~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => intentos(0));

-- Location: LCCOMB_X1_Y2_N14
\intentos~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \intentos~1_combout\ = (!\Selector6~0_combout\ & ((intentos(1)) # ((intentos(0) & \intentos~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => intentos(0),
	datab => \Selector6~0_combout\,
	datac => intentos(1),
	datad => \intentos~0_combout\,
	combout => \intentos~1_combout\);

-- Location: FF_X1_Y2_N15
\intentos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \intentos~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => intentos(1));

-- Location: LCCOMB_X1_Y2_N22
\Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (((\clave_correcta~input_o\) # (\intrusion~input_o\)) # (!\horario_correcto~input_o\)) # (!\usuario_habilitado~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \usuario_habilitado~input_o\,
	datab => \horario_correcto~input_o\,
	datac => \clave_correcta~input_o\,
	datad => \intrusion~input_o\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X2_Y2_N16
\Selector3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (\Selector4~6_combout\ & (!intentos(1) & (!\Selector3~0_combout\))) # (!\Selector4~6_combout\ & (((\estado_actual.ERROR_CLAVE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => intentos(1),
	datab => \Selector3~0_combout\,
	datac => \Selector4~6_combout\,
	datad => \estado_actual.ERROR_CLAVE~q\,
	combout => \Selector3~1_combout\);

-- Location: LCCOMB_X2_Y2_N18
\Selector3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~2_combout\ = (!\Selector4~6_combout\ & ((\Selector4~5_combout\ & ((\Selector4~10_combout\))) # (!\Selector4~5_combout\ & (!\estado_actual.INGRESO~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~5_combout\,
	datab => \estado_actual.INGRESO~q\,
	datac => \Selector4~6_combout\,
	datad => \Selector4~10_combout\,
	combout => \Selector3~2_combout\);

-- Location: LCCOMB_X2_Y2_N4
\Selector3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~3_combout\ = (\Selector3~1_combout\ & !\Selector3~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector3~1_combout\,
	datad => \Selector3~2_combout\,
	combout => \Selector3~3_combout\);

-- Location: FF_X2_Y2_N25
\estado_actual.ERROR_CLAVE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Selector3~3_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_actual.ERROR_CLAVE~q\);

-- Location: LCCOMB_X1_Y2_N20
\estado_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \estado_out~0_combout\ = (\estado_actual.ERROR_CLAVE~q\) # (\estado_actual.INGRESO~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado_actual.ERROR_CLAVE~q\,
	datad => \estado_actual.INGRESO~q\,
	combout => \estado_out~0_combout\);

-- Location: LCCOMB_X2_Y2_N22
\Selector7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector7~4_combout\ = (\Selector4~13_combout\ & ((\estado_actual.ERROR_CLAVE~q\) # ((\estado_actual.ABRIR~q\) # (\estado_actual.INGRESO~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~13_combout\,
	datab => \estado_actual.ERROR_CLAVE~q\,
	datac => \estado_actual.ABRIR~q\,
	datad => \estado_actual.INGRESO~q\,
	combout => \Selector7~4_combout\);

-- Location: LCCOMB_X3_Y2_N22
\Selector7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector7~2_combout\ = (\Selector7~4_combout\) # ((!\Selector0~1_combout\ & ((\estado_actual.BLOQUEO~q\) # (!\estado_out~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_actual.BLOQUEO~q\,
	datab => \estado_out~1_combout\,
	datac => \Selector0~1_combout\,
	datad => \Selector7~4_combout\,
	combout => \Selector7~2_combout\);

-- Location: LCCOMB_X2_Y2_N24
\Selector7~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector7~3_combout\ = (\Selector7~2_combout\) # ((\estado_actual.INGRESO~q\ & ((\Selector2~3_combout\) # (\Selector3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector7~2_combout\,
	datab => \Selector2~3_combout\,
	datac => \Selector3~3_combout\,
	datad => \estado_actual.INGRESO~q\,
	combout => \Selector7~3_combout\);

-- Location: LCCOMB_X3_Y2_N14
\iniciar_apertura~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \iniciar_apertura~0_combout\ = (\estado_actual.INGRESO~q\ & ((\Selector2~2_combout\) # (\estado_siguiente~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~2_combout\,
	datab => \estado_siguiente~5_combout\,
	datad => \estado_actual.INGRESO~q\,
	combout => \iniciar_apertura~0_combout\);

-- Location: LCCOMB_X2_Y2_N12
\Selector5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = ((\Selector0~1_combout\ & ((\estado_actual.ERROR_CLAVE~q\) # (\estado_actual.ABRIR~q\)))) # (!\estado_actual.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_actual.ERROR_CLAVE~q\,
	datab => \estado_actual.ABRIR~q\,
	datac => \Selector0~1_combout\,
	datad => \estado_actual.IDLE~q\,
	combout => \Selector5~1_combout\);

-- Location: LCCOMB_X2_Y2_N2
\Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (!\Selector2~3_combout\ & (\estado_actual.INGRESO~q\ & ((\Selector3~2_combout\) # (!\Selector3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~2_combout\,
	datab => \Selector3~1_combout\,
	datac => \Selector2~3_combout\,
	datad => \estado_actual.INGRESO~q\,
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X2_Y2_N14
\Selector5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector5~2_combout\ = (\Selector4~13_combout\ & ((\Selector5~1_combout\) # (\Selector5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~1_combout\,
	datac => \Selector4~13_combout\,
	datad => \Selector5~0_combout\,
	combout => \Selector5~2_combout\);

-- Location: LCCOMB_X2_Y2_N6
\iniciar_error~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \iniciar_error~0_combout\ = (!\estado_siguiente~5_combout\ & (\Selector3~1_combout\ & (!\Selector3~2_combout\ & \estado_actual.INGRESO~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_siguiente~5_combout\,
	datab => \Selector3~1_combout\,
	datac => \Selector3~2_combout\,
	datad => \estado_actual.INGRESO~q\,
	combout => \iniciar_error~0_combout\);

ww_estado_out(0) <= \estado_out[0]~output_o\;

ww_estado_out(1) <= \estado_out[1]~output_o\;

ww_estado_out(2) <= \estado_out[2]~output_o\;

ww_limpiar_clave <= \limpiar_clave~output_o\;

ww_limpiar_intentos <= \limpiar_intentos~output_o\;

ww_iniciar_apertura <= \iniciar_apertura~output_o\;

ww_iniciar_bloqueo <= \iniciar_bloqueo~output_o\;

ww_iniciar_error <= \iniciar_error~output_o\;

ww_activar_alarma <= \activar_alarma~output_o\;

ww_abrir_puerta <= \abrir_puerta~output_o\;

ww_intentos_out(0) <= \intentos_out[0]~output_o\;

ww_intentos_out(1) <= \intentos_out[1]~output_o\;
END structure;


