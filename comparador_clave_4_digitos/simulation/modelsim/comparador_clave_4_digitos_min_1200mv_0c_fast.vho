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

-- DATE "05/07/2026 23:05:04"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	comparador_clave_4_digitos IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	tecla : IN std_logic_vector(3 DOWNTO 0);
	tecla_valida : IN std_logic;
	limpiar_seleccion : IN std_logic;
	vuelta_horario_cero : IN std_logic;
	horario_actual : IN std_logic_vector(1 DOWNTO 0);
	clave_ingresada : IN std_logic_vector(15 DOWNTO 0);
	usuario_seleccionado : OUT std_logic;
	usuario_habilitado : OUT std_logic;
	horario_correcto : OUT std_logic;
	clave_correcta : OUT std_logic;
	acceso_permitido : OUT std_logic;
	usuario_actual : OUT std_logic_vector(1 DOWNTO 0)
	);
END comparador_clave_4_digitos;

-- Design Ports Information
-- usuario_seleccionado	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- usuario_habilitado	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- horario_correcto	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clave_correcta	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acceso_permitido	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- usuario_actual[0]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- usuario_actual[1]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- horario_actual[0]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- horario_actual[1]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clave_ingresada[0]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clave_ingresada[1]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clave_ingresada[3]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clave_ingresada[2]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clave_ingresada[5]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clave_ingresada[4]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clave_ingresada[6]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clave_ingresada[8]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clave_ingresada[9]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clave_ingresada[12]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clave_ingresada[10]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clave_ingresada[13]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clave_ingresada[14]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clave_ingresada[7]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clave_ingresada[11]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clave_ingresada[15]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- limpiar_seleccion	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tecla_valida	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tecla[3]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tecla[1]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tecla[2]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tecla[0]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vuelta_horario_cero	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF comparador_clave_4_digitos IS
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
SIGNAL ww_tecla : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_tecla_valida : std_logic;
SIGNAL ww_limpiar_seleccion : std_logic;
SIGNAL ww_vuelta_horario_cero : std_logic;
SIGNAL ww_horario_actual : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_clave_ingresada : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_usuario_seleccionado : std_logic;
SIGNAL ww_usuario_habilitado : std_logic;
SIGNAL ww_horario_correcto : std_logic;
SIGNAL ww_clave_correcta : std_logic;
SIGNAL ww_acceso_permitido : std_logic;
SIGNAL ww_usuario_actual : std_logic_vector(1 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \usuario_seleccionado~output_o\ : std_logic;
SIGNAL \usuario_habilitado~output_o\ : std_logic;
SIGNAL \horario_correcto~output_o\ : std_logic;
SIGNAL \clave_correcta~output_o\ : std_logic;
SIGNAL \acceso_permitido~output_o\ : std_logic;
SIGNAL \usuario_actual[0]~output_o\ : std_logic;
SIGNAL \usuario_actual[1]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \tecla[1]~input_o\ : std_logic;
SIGNAL \tecla[3]~input_o\ : std_logic;
SIGNAL \tecla_valida~input_o\ : std_logic;
SIGNAL \tecla[2]~input_o\ : std_logic;
SIGNAL \hay_usuario~1_combout\ : std_logic;
SIGNAL \limpiar_seleccion~input_o\ : std_logic;
SIGNAL \tecla[0]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \modo_eliminar~2_combout\ : std_logic;
SIGNAL \modo_eliminar~3_combout\ : std_logic;
SIGNAL \modo_eliminar~4_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \modo_eliminar~q\ : std_logic;
SIGNAL \modo_habilitar~0_combout\ : std_logic;
SIGNAL \modo_habilitar~1_combout\ : std_logic;
SIGNAL \modo_habilitar~2_combout\ : std_logic;
SIGNAL \usuarios_on~5_combout\ : std_logic;
SIGNAL \modo_habilitar~3_combout\ : std_logic;
SIGNAL \modo_habilitar~4_combout\ : std_logic;
SIGNAL \modo_habilitar~q\ : std_logic;
SIGNAL \hay_usuario~0_combout\ : std_logic;
SIGNAL \hay_usuario~2_combout\ : std_logic;
SIGNAL \hay_usuario~q\ : std_logic;
SIGNAL \usuarios_on~6_combout\ : std_logic;
SIGNAL \usuarios_on~9_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \vuelta_horario_cero~input_o\ : std_logic;
SIGNAL \usuarios_on~11_combout\ : std_logic;
SIGNAL \usuarios_on~4_combout\ : std_logic;
SIGNAL \usuarios_on~7_combout\ : std_logic;
SIGNAL \usuarios_on~12_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \usuarios_on~13_combout\ : std_logic;
SIGNAL \usuarios_on~14_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \usuarios_on~17_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \usuarios_on~15_combout\ : std_logic;
SIGNAL \usuarios_on~18_combout\ : std_logic;
SIGNAL \usuarios_on~16_combout\ : std_logic;
SIGNAL \usuarios_on~8_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \usuarios_on~10_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \horario_actual[1]~input_o\ : std_logic;
SIGNAL \horario_actual[0]~input_o\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \clave_ingresada[0]~input_o\ : std_logic;
SIGNAL \clave_ingresada[1]~input_o\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \clave_ingresada[2]~input_o\ : std_logic;
SIGNAL \clave_ingresada[3]~input_o\ : std_logic;
SIGNAL \Equal7~1_combout\ : std_logic;
SIGNAL \clave_ingresada[5]~input_o\ : std_logic;
SIGNAL \clave_ingresada[4]~input_o\ : std_logic;
SIGNAL \Equal7~2_combout\ : std_logic;
SIGNAL \clave_ingresada[8]~input_o\ : std_logic;
SIGNAL \clave_ingresada[6]~input_o\ : std_logic;
SIGNAL \Equal7~3_combout\ : std_logic;
SIGNAL \Equal7~4_combout\ : std_logic;
SIGNAL \clave_ingresada[12]~input_o\ : std_logic;
SIGNAL \clave_ingresada[9]~input_o\ : std_logic;
SIGNAL \Equal7~5_combout\ : std_logic;
SIGNAL \clave_ingresada[13]~input_o\ : std_logic;
SIGNAL \clave_ingresada[10]~input_o\ : std_logic;
SIGNAL \Equal7~6_combout\ : std_logic;
SIGNAL \clave_ingresada[7]~input_o\ : std_logic;
SIGNAL \clave_ingresada[14]~input_o\ : std_logic;
SIGNAL \clave_ingresada[11]~input_o\ : std_logic;
SIGNAL \Equal7~7_combout\ : std_logic;
SIGNAL \clave_ingresada[15]~input_o\ : std_logic;
SIGNAL \Equal7~8_combout\ : std_logic;
SIGNAL \Equal7~9_combout\ : std_logic;
SIGNAL \acceso_permitido~0_combout\ : std_logic;
SIGNAL usuarios_on : std_logic_vector(3 DOWNTO 0);
SIGNAL usuario_sel : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_Equal6~0_combout\ : std_logic;
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_tecla <= tecla;
ww_tecla_valida <= tecla_valida;
ww_limpiar_seleccion <= limpiar_seleccion;
ww_vuelta_horario_cero <= vuelta_horario_cero;
ww_horario_actual <= horario_actual;
ww_clave_ingresada <= clave_ingresada;
usuario_seleccionado <= ww_usuario_seleccionado;
usuario_habilitado <= ww_usuario_habilitado;
horario_correcto <= ww_horario_correcto;
clave_correcta <= ww_clave_correcta;
acceso_permitido <= ww_acceso_permitido;
usuario_actual <= ww_usuario_actual;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);
\ALT_INV_Equal6~0_combout\ <= NOT \Equal6~0_combout\;
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;

-- Location: IOOBUF_X0_Y8_N23
\usuario_seleccionado~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hay_usuario~q\,
	devoe => ww_devoe,
	o => \usuario_seleccionado~output_o\);

-- Location: IOOBUF_X0_Y23_N9
\usuario_habilitado~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~1_combout\,
	devoe => ww_devoe,
	o => \usuario_habilitado~output_o\);

-- Location: IOOBUF_X0_Y27_N2
\horario_correcto~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Equal6~0_combout\,
	devoe => ww_devoe,
	o => \horario_correcto~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\clave_correcta~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal7~9_combout\,
	devoe => ww_devoe,
	o => \clave_correcta~output_o\);

-- Location: IOOBUF_X0_Y26_N9
\acceso_permitido~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \acceso_permitido~0_combout\,
	devoe => ww_devoe,
	o => \acceso_permitido~output_o\);

-- Location: IOOBUF_X0_Y13_N16
\usuario_actual[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => usuario_sel(0),
	devoe => ww_devoe,
	o => \usuario_actual[0]~output_o\);

-- Location: IOOBUF_X0_Y8_N2
\usuario_actual[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => usuario_sel(1),
	devoe => ww_devoe,
	o => \usuario_actual[1]~output_o\);

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

-- Location: IOIBUF_X0_Y6_N15
\tecla[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tecla(1),
	o => \tecla[1]~input_o\);

-- Location: IOIBUF_X0_Y7_N8
\tecla[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tecla(3),
	o => \tecla[3]~input_o\);

-- Location: IOIBUF_X0_Y6_N22
\tecla_valida~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tecla_valida,
	o => \tecla_valida~input_o\);

-- Location: IOIBUF_X0_Y7_N22
\tecla[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tecla(2),
	o => \tecla[2]~input_o\);

-- Location: LCCOMB_X1_Y6_N10
\hay_usuario~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hay_usuario~1_combout\ = (\tecla[3]~input_o\ & (\tecla_valida~input_o\ & (\tecla[1]~input_o\ $ (\tecla[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tecla[1]~input_o\,
	datab => \tecla[3]~input_o\,
	datac => \tecla_valida~input_o\,
	datad => \tecla[2]~input_o\,
	combout => \hay_usuario~1_combout\);

-- Location: IOIBUF_X0_Y6_N1
\limpiar_seleccion~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_limpiar_seleccion,
	o => \limpiar_seleccion~input_o\);

-- Location: IOIBUF_X0_Y6_N8
\tecla[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tecla(0),
	o => \tecla[0]~input_o\);

-- Location: LCCOMB_X1_Y6_N24
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\tecla[1]~input_o\ & (\tecla[3]~input_o\ & (\tecla[0]~input_o\ & \tecla[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tecla[1]~input_o\,
	datab => \tecla[3]~input_o\,
	datac => \tecla[0]~input_o\,
	datad => \tecla[2]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X1_Y6_N8
\modo_eliminar~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \modo_eliminar~2_combout\ = ((\tecla[1]~input_o\ & (\tecla[0]~input_o\ & \tecla[2]~input_o\)) # (!\tecla[1]~input_o\ & ((!\tecla[2]~input_o\)))) # (!\tecla[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tecla[1]~input_o\,
	datab => \tecla[3]~input_o\,
	datac => \tecla[0]~input_o\,
	datad => \tecla[2]~input_o\,
	combout => \modo_eliminar~2_combout\);

-- Location: LCCOMB_X2_Y6_N20
\modo_eliminar~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \modo_eliminar~3_combout\ = (\modo_eliminar~q\ & ((\modo_eliminar~2_combout\) # (!\tecla_valida~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modo_eliminar~2_combout\,
	datab => \modo_eliminar~q\,
	datac => \tecla_valida~input_o\,
	combout => \modo_eliminar~3_combout\);

-- Location: LCCOMB_X2_Y6_N8
\modo_eliminar~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \modo_eliminar~4_combout\ = (!\limpiar_seleccion~input_o\ & ((\modo_eliminar~3_combout\) # ((\tecla_valida~input_o\ & \Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tecla_valida~input_o\,
	datab => \Equal0~0_combout\,
	datac => \limpiar_seleccion~input_o\,
	datad => \modo_eliminar~3_combout\,
	combout => \modo_eliminar~4_combout\);

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

-- Location: FF_X2_Y6_N9
modo_eliminar : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \modo_eliminar~4_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modo_eliminar~q\);

-- Location: LCCOMB_X1_Y6_N30
\modo_habilitar~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \modo_habilitar~0_combout\ = (\tecla_valida~input_o\ & ((\Equal0~0_combout\) # (!\modo_eliminar~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tecla_valida~input_o\,
	datab => \Equal0~0_combout\,
	datac => \modo_eliminar~q\,
	combout => \modo_habilitar~0_combout\);

-- Location: LCCOMB_X1_Y6_N28
\modo_habilitar~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \modo_habilitar~1_combout\ = (!\limpiar_seleccion~input_o\ & \modo_habilitar~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \limpiar_seleccion~input_o\,
	datac => \modo_habilitar~q\,
	combout => \modo_habilitar~1_combout\);

-- Location: LCCOMB_X1_Y6_N22
\modo_habilitar~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \modo_habilitar~2_combout\ = (\tecla[3]~input_o\ & ((\tecla[2]~input_o\ & (\tecla[1]~input_o\ $ (\modo_habilitar~1_combout\))) # (!\tecla[2]~input_o\ & (\tecla[1]~input_o\ & \modo_habilitar~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tecla[2]~input_o\,
	datab => \tecla[1]~input_o\,
	datac => \tecla[3]~input_o\,
	datad => \modo_habilitar~1_combout\,
	combout => \modo_habilitar~2_combout\);

-- Location: LCCOMB_X1_Y6_N4
\usuarios_on~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \usuarios_on~5_combout\ = (!\limpiar_seleccion~input_o\ & \tecla_valida~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \limpiar_seleccion~input_o\,
	datac => \tecla_valida~input_o\,
	combout => \usuarios_on~5_combout\);

-- Location: LCCOMB_X1_Y6_N12
\modo_habilitar~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \modo_habilitar~3_combout\ = (\Equal0~0_combout\ & (((\modo_habilitar~1_combout\)))) # (!\Equal0~0_combout\ & (\usuarios_on~5_combout\ & (!\tecla[0]~input_o\ & !\modo_habilitar~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \usuarios_on~5_combout\,
	datab => \Equal0~0_combout\,
	datac => \tecla[0]~input_o\,
	datad => \modo_habilitar~1_combout\,
	combout => \modo_habilitar~3_combout\);

-- Location: LCCOMB_X1_Y6_N14
\modo_habilitar~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \modo_habilitar~4_combout\ = (\modo_habilitar~1_combout\ & (((!\modo_habilitar~2_combout\ & !\modo_habilitar~3_combout\)) # (!\modo_habilitar~0_combout\))) # (!\modo_habilitar~1_combout\ & (((\modo_habilitar~2_combout\ & \modo_habilitar~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modo_habilitar~0_combout\,
	datab => \modo_habilitar~1_combout\,
	datac => \modo_habilitar~2_combout\,
	datad => \modo_habilitar~3_combout\,
	combout => \modo_habilitar~4_combout\);

-- Location: FF_X1_Y6_N15
modo_habilitar : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \modo_habilitar~4_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modo_habilitar~q\);

-- Location: LCCOMB_X1_Y6_N0
\hay_usuario~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hay_usuario~0_combout\ = (!\limpiar_seleccion~input_o\ & (!\modo_habilitar~q\ & !\modo_eliminar~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \limpiar_seleccion~input_o\,
	datab => \modo_habilitar~q\,
	datac => \modo_eliminar~q\,
	combout => \hay_usuario~0_combout\);

-- Location: LCCOMB_X1_Y6_N16
\hay_usuario~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hay_usuario~2_combout\ = (\hay_usuario~1_combout\ & (((\hay_usuario~0_combout\)))) # (!\hay_usuario~1_combout\ & (!\limpiar_seleccion~input_o\ & (\hay_usuario~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hay_usuario~1_combout\,
	datab => \limpiar_seleccion~input_o\,
	datac => \hay_usuario~q\,
	datad => \hay_usuario~0_combout\,
	combout => \hay_usuario~2_combout\);

-- Location: FF_X1_Y6_N17
hay_usuario : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \hay_usuario~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hay_usuario~q\);

-- Location: LCCOMB_X1_Y6_N2
\usuarios_on~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \usuarios_on~6_combout\ = (\tecla[3]~input_o\ & (\tecla[1]~input_o\ $ (\tecla[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tecla[1]~input_o\,
	datac => \tecla[3]~input_o\,
	datad => \tecla[2]~input_o\,
	combout => \usuarios_on~6_combout\);

-- Location: LCCOMB_X2_Y6_N30
\usuarios_on~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \usuarios_on~9_combout\ = (\usuarios_on~6_combout\ & (!\Equal0~0_combout\ & (\usuarios_on~5_combout\ & \modo_eliminar~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \usuarios_on~6_combout\,
	datab => \Equal0~0_combout\,
	datac => \usuarios_on~5_combout\,
	datad => \modo_eliminar~q\,
	combout => \usuarios_on~9_combout\);

-- Location: LCCOMB_X1_Y6_N18
\Equal4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (!\tecla[1]~input_o\ & (\tecla[3]~input_o\ & (!\tecla[0]~input_o\ & \tecla[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tecla[1]~input_o\,
	datab => \tecla[3]~input_o\,
	datac => \tecla[0]~input_o\,
	datad => \tecla[2]~input_o\,
	combout => \Equal4~0_combout\);

-- Location: IOIBUF_X0_Y5_N8
\vuelta_horario_cero~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vuelta_horario_cero,
	o => \vuelta_horario_cero~input_o\);

-- Location: LCCOMB_X2_Y6_N4
\usuarios_on~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \usuarios_on~11_combout\ = (\vuelta_horario_cero~input_o\) # (!usuarios_on(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vuelta_horario_cero~input_o\,
	datad => usuarios_on(2),
	combout => \usuarios_on~11_combout\);

-- Location: LCCOMB_X2_Y6_N10
\usuarios_on~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \usuarios_on~4_combout\ = (!\modo_eliminar~q\ & \modo_habilitar~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \modo_eliminar~q\,
	datad => \modo_habilitar~q\,
	combout => \usuarios_on~4_combout\);

-- Location: LCCOMB_X2_Y6_N16
\usuarios_on~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \usuarios_on~7_combout\ = (\usuarios_on~6_combout\ & (!\Equal0~0_combout\ & (\usuarios_on~5_combout\ & \usuarios_on~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \usuarios_on~6_combout\,
	datab => \Equal0~0_combout\,
	datac => \usuarios_on~5_combout\,
	datad => \usuarios_on~4_combout\,
	combout => \usuarios_on~7_combout\);

-- Location: LCCOMB_X2_Y6_N2
\usuarios_on~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \usuarios_on~12_combout\ = (\Equal4~0_combout\ & (!\usuarios_on~7_combout\ & ((\usuarios_on~9_combout\) # (!\usuarios_on~11_combout\)))) # (!\Equal4~0_combout\ & (((!\usuarios_on~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \usuarios_on~9_combout\,
	datab => \Equal4~0_combout\,
	datac => \usuarios_on~11_combout\,
	datad => \usuarios_on~7_combout\,
	combout => \usuarios_on~12_combout\);

-- Location: FF_X2_Y6_N3
\usuarios_on[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \usuarios_on~12_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => usuarios_on(2));

-- Location: LCCOMB_X2_Y6_N28
\Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (\tecla[1]~input_o\ & (\tecla[3]~input_o\ & (!\tecla[2]~input_o\ & !\tecla[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tecla[1]~input_o\,
	datab => \tecla[3]~input_o\,
	datac => \tecla[2]~input_o\,
	datad => \tecla[0]~input_o\,
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X2_Y6_N26
\usuarios_on~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \usuarios_on~13_combout\ = (\vuelta_horario_cero~input_o\) # (!usuarios_on(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vuelta_horario_cero~input_o\,
	datad => usuarios_on(0),
	combout => \usuarios_on~13_combout\);

-- Location: LCCOMB_X2_Y6_N24
\usuarios_on~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \usuarios_on~14_combout\ = (\Equal2~0_combout\ & (!\usuarios_on~7_combout\ & ((\usuarios_on~9_combout\) # (!\usuarios_on~13_combout\)))) # (!\Equal2~0_combout\ & (((!\usuarios_on~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \usuarios_on~9_combout\,
	datab => \Equal2~0_combout\,
	datac => \usuarios_on~13_combout\,
	datad => \usuarios_on~7_combout\,
	combout => \usuarios_on~14_combout\);

-- Location: FF_X2_Y6_N25
\usuarios_on[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \usuarios_on~14_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => usuarios_on(0));

-- Location: LCCOMB_X1_Y6_N26
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\tecla[0]~input_o\) # (\tecla[1]~input_o\ $ (!\tecla[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tecla[1]~input_o\,
	datac => \tecla[0]~input_o\,
	datad => \tecla[2]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X1_Y6_N6
\usuarios_on~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \usuarios_on~17_combout\ = (!\limpiar_seleccion~input_o\ & (!\Equal0~0_combout\ & (\tecla_valida~input_o\ & \usuarios_on~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \limpiar_seleccion~input_o\,
	datab => \Equal0~0_combout\,
	datac => \tecla_valida~input_o\,
	datad => \usuarios_on~6_combout\,
	combout => \usuarios_on~17_combout\);

-- Location: FF_X1_Y6_N27
\usuario_sel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux1~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \usuarios_on~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => usuario_sel(0));

-- Location: LCCOMB_X1_Y6_N20
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\tecla[2]~input_o\) # (!\tecla[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tecla[1]~input_o\,
	datad => \tecla[2]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: FF_X1_Y6_N21
\usuario_sel[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux0~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \usuarios_on~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => usuario_sel(1));

-- Location: LCCOMB_X1_Y26_N12
\Mux10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (usuario_sel(0) & (((usuario_sel(1))))) # (!usuario_sel(0) & ((usuario_sel(1) & (!usuarios_on(2))) # (!usuario_sel(1) & ((!usuarios_on(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => usuarios_on(2),
	datab => usuarios_on(0),
	datac => usuario_sel(0),
	datad => usuario_sel(1),
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X2_Y6_N18
\usuarios_on~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \usuarios_on~15_combout\ = (!\tecla[1]~input_o\ & (\tecla[3]~input_o\ & (\tecla[2]~input_o\ & \tecla[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tecla[1]~input_o\,
	datab => \tecla[3]~input_o\,
	datac => \tecla[2]~input_o\,
	datad => \tecla[0]~input_o\,
	combout => \usuarios_on~15_combout\);

-- Location: LCCOMB_X2_Y6_N6
\usuarios_on~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \usuarios_on~18_combout\ = (\usuarios_on~15_combout\ & (\usuarios_on~5_combout\ & ((\modo_eliminar~q\) # (\modo_habilitar~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \usuarios_on~15_combout\,
	datab => \modo_eliminar~q\,
	datac => \usuarios_on~5_combout\,
	datad => \modo_habilitar~q\,
	combout => \usuarios_on~18_combout\);

-- Location: LCCOMB_X2_Y6_N14
\usuarios_on~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \usuarios_on~16_combout\ = (\usuarios_on~18_combout\ & (((!\usuarios_on~4_combout\)))) # (!\usuarios_on~18_combout\ & (!\vuelta_horario_cero~input_o\ & (usuarios_on(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \usuarios_on~18_combout\,
	datab => \vuelta_horario_cero~input_o\,
	datac => usuarios_on(3),
	datad => \usuarios_on~4_combout\,
	combout => \usuarios_on~16_combout\);

-- Location: FF_X2_Y6_N15
\usuarios_on[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \usuarios_on~16_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => usuarios_on(3));

-- Location: LCCOMB_X2_Y6_N22
\usuarios_on~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \usuarios_on~8_combout\ = (\vuelta_horario_cero~input_o\) # (!usuarios_on(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vuelta_horario_cero~input_o\,
	datad => usuarios_on(1),
	combout => \usuarios_on~8_combout\);

-- Location: LCCOMB_X2_Y6_N12
\Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (\tecla[1]~input_o\ & (\tecla[3]~input_o\ & (!\tecla[2]~input_o\ & \tecla[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tecla[1]~input_o\,
	datab => \tecla[3]~input_o\,
	datac => \tecla[2]~input_o\,
	datad => \tecla[0]~input_o\,
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X2_Y6_N0
\usuarios_on~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \usuarios_on~10_combout\ = (\Equal3~0_combout\ & (!\usuarios_on~7_combout\ & ((\usuarios_on~9_combout\) # (!\usuarios_on~8_combout\)))) # (!\Equal3~0_combout\ & (!\usuarios_on~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \usuarios_on~8_combout\,
	datab => \Equal3~0_combout\,
	datac => \usuarios_on~9_combout\,
	datad => \usuarios_on~7_combout\,
	combout => \usuarios_on~10_combout\);

-- Location: FF_X2_Y6_N1
\usuarios_on[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \usuarios_on~10_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => usuarios_on(1));

-- Location: LCCOMB_X1_Y26_N2
\Mux10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (\Mux10~0_combout\ & (((!usuario_sel(0))) # (!usuarios_on(3)))) # (!\Mux10~0_combout\ & (((usuario_sel(0) & !usuarios_on(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~0_combout\,
	datab => usuarios_on(3),
	datac => usuario_sel(0),
	datad => usuarios_on(1),
	combout => \Mux10~1_combout\);

-- Location: IOIBUF_X0_Y24_N15
\horario_actual[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_horario_actual(1),
	o => \horario_actual[1]~input_o\);

-- Location: IOIBUF_X0_Y26_N22
\horario_actual[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_horario_actual(0),
	o => \horario_actual[0]~input_o\);

-- Location: LCCOMB_X1_Y26_N16
\Equal6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = (\horario_actual[1]~input_o\ & ((\horario_actual[0]~input_o\ $ (usuario_sel(0))) # (!usuario_sel(1)))) # (!\horario_actual[1]~input_o\ & ((usuario_sel(1)) # (\horario_actual[0]~input_o\ $ (usuario_sel(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \horario_actual[1]~input_o\,
	datab => \horario_actual[0]~input_o\,
	datac => usuario_sel(0),
	datad => usuario_sel(1),
	combout => \Equal6~0_combout\);

-- Location: IOIBUF_X0_Y25_N1
\clave_ingresada[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clave_ingresada(0),
	o => \clave_ingresada[0]~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\clave_ingresada[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clave_ingresada(1),
	o => \clave_ingresada[1]~input_o\);

-- Location: LCCOMB_X1_Y26_N26
\Equal7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = (\clave_ingresada[0]~input_o\ & ((\clave_ingresada[1]~input_o\ & (!usuario_sel(0) & usuario_sel(1))) # (!\clave_ingresada[1]~input_o\ & (usuario_sel(0) & !usuario_sel(1))))) # (!\clave_ingresada[0]~input_o\ & 
-- (!\clave_ingresada[1]~input_o\ & (usuario_sel(0) $ (!usuario_sel(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clave_ingresada[0]~input_o\,
	datab => \clave_ingresada[1]~input_o\,
	datac => usuario_sel(0),
	datad => usuario_sel(1),
	combout => \Equal7~0_combout\);

-- Location: IOIBUF_X0_Y23_N15
\clave_ingresada[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clave_ingresada(2),
	o => \clave_ingresada[2]~input_o\);

-- Location: IOIBUF_X1_Y29_N8
\clave_ingresada[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clave_ingresada(3),
	o => \clave_ingresada[3]~input_o\);

-- Location: LCCOMB_X1_Y26_N24
\Equal7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal7~1_combout\ = (\clave_ingresada[2]~input_o\ & (!\clave_ingresada[3]~input_o\ & ((!usuario_sel(1)) # (!usuario_sel(0))))) # (!\clave_ingresada[2]~input_o\ & (\clave_ingresada[3]~input_o\ & (usuario_sel(0) & usuario_sel(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clave_ingresada[2]~input_o\,
	datab => \clave_ingresada[3]~input_o\,
	datac => usuario_sel(0),
	datad => usuario_sel(1),
	combout => \Equal7~1_combout\);

-- Location: IOIBUF_X0_Y26_N1
\clave_ingresada[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clave_ingresada(5),
	o => \clave_ingresada[5]~input_o\);

-- Location: IOIBUF_X0_Y23_N1
\clave_ingresada[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clave_ingresada(4),
	o => \clave_ingresada[4]~input_o\);

-- Location: LCCOMB_X1_Y26_N22
\Equal7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal7~2_combout\ = (\clave_ingresada[5]~input_o\ & ((\clave_ingresada[4]~input_o\ & (usuario_sel(0) $ (!usuario_sel(1)))) # (!\clave_ingresada[4]~input_o\ & (!usuario_sel(0) & usuario_sel(1))))) # (!\clave_ingresada[5]~input_o\ & 
-- (!\clave_ingresada[4]~input_o\ & (usuario_sel(0) & !usuario_sel(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clave_ingresada[5]~input_o\,
	datab => \clave_ingresada[4]~input_o\,
	datac => usuario_sel(0),
	datad => usuario_sel(1),
	combout => \Equal7~2_combout\);

-- Location: IOIBUF_X0_Y25_N15
\clave_ingresada[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clave_ingresada(8),
	o => \clave_ingresada[8]~input_o\);

-- Location: IOIBUF_X1_Y29_N22
\clave_ingresada[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clave_ingresada(6),
	o => \clave_ingresada[6]~input_o\);

-- Location: LCCOMB_X1_Y26_N28
\Equal7~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal7~3_combout\ = (\clave_ingresada[8]~input_o\ & (\clave_ingresada[6]~input_o\ & (usuario_sel(0) $ (usuario_sel(1))))) # (!\clave_ingresada[8]~input_o\ & ((\clave_ingresada[6]~input_o\ & (usuario_sel(0) & usuario_sel(1))) # 
-- (!\clave_ingresada[6]~input_o\ & (!usuario_sel(0) & !usuario_sel(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100010000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clave_ingresada[8]~input_o\,
	datab => \clave_ingresada[6]~input_o\,
	datac => usuario_sel(0),
	datad => usuario_sel(1),
	combout => \Equal7~3_combout\);

-- Location: LCCOMB_X1_Y26_N10
\Equal7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal7~4_combout\ = (\Equal7~0_combout\ & (\Equal7~1_combout\ & (\Equal7~2_combout\ & \Equal7~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~0_combout\,
	datab => \Equal7~1_combout\,
	datac => \Equal7~2_combout\,
	datad => \Equal7~3_combout\,
	combout => \Equal7~4_combout\);

-- Location: IOIBUF_X0_Y24_N22
\clave_ingresada[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clave_ingresada(12),
	o => \clave_ingresada[12]~input_o\);

-- Location: IOIBUF_X0_Y26_N15
\clave_ingresada[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clave_ingresada(9),
	o => \clave_ingresada[9]~input_o\);

-- Location: LCCOMB_X1_Y26_N8
\Equal7~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal7~5_combout\ = (\clave_ingresada[12]~input_o\ & (\clave_ingresada[9]~input_o\ & (usuario_sel(0) $ (!usuario_sel(1))))) # (!\clave_ingresada[12]~input_o\ & ((\clave_ingresada[9]~input_o\ & (usuario_sel(0) & !usuario_sel(1))) # 
-- (!\clave_ingresada[9]~input_o\ & (!usuario_sel(0) & usuario_sel(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clave_ingresada[12]~input_o\,
	datab => \clave_ingresada[9]~input_o\,
	datac => usuario_sel(0),
	datad => usuario_sel(1),
	combout => \Equal7~5_combout\);

-- Location: IOIBUF_X1_Y29_N29
\clave_ingresada[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clave_ingresada(13),
	o => \clave_ingresada[13]~input_o\);

-- Location: IOIBUF_X1_Y29_N1
\clave_ingresada[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clave_ingresada(10),
	o => \clave_ingresada[10]~input_o\);

-- Location: LCCOMB_X1_Y26_N30
\Equal7~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal7~6_combout\ = (\clave_ingresada[10]~input_o\ & (!\clave_ingresada[13]~input_o\ & ((usuario_sel(1))))) # (!\clave_ingresada[10]~input_o\ & (!usuario_sel(1) & (\clave_ingresada[13]~input_o\ $ (!usuario_sel(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clave_ingresada[13]~input_o\,
	datab => \clave_ingresada[10]~input_o\,
	datac => usuario_sel(0),
	datad => usuario_sel(1),
	combout => \Equal7~6_combout\);

-- Location: IOIBUF_X0_Y25_N22
\clave_ingresada[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clave_ingresada(7),
	o => \clave_ingresada[7]~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\clave_ingresada[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clave_ingresada(14),
	o => \clave_ingresada[14]~input_o\);

-- Location: IOIBUF_X0_Y27_N8
\clave_ingresada[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clave_ingresada(11),
	o => \clave_ingresada[11]~input_o\);

-- Location: LCCOMB_X1_Y26_N20
\Equal7~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal7~7_combout\ = (!\clave_ingresada[7]~input_o\ & (!\clave_ingresada[11]~input_o\ & (\clave_ingresada[14]~input_o\ $ (!usuario_sel(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clave_ingresada[7]~input_o\,
	datab => \clave_ingresada[14]~input_o\,
	datac => \clave_ingresada[11]~input_o\,
	datad => usuario_sel(1),
	combout => \Equal7~7_combout\);

-- Location: IOIBUF_X1_Y29_N15
\clave_ingresada[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clave_ingresada(15),
	o => \clave_ingresada[15]~input_o\);

-- Location: LCCOMB_X1_Y26_N18
\Equal7~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal7~8_combout\ = (\Equal7~7_combout\ & !\clave_ingresada[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal7~7_combout\,
	datad => \clave_ingresada[15]~input_o\,
	combout => \Equal7~8_combout\);

-- Location: LCCOMB_X1_Y26_N0
\Equal7~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal7~9_combout\ = (\Equal7~4_combout\ & (\Equal7~5_combout\ & (\Equal7~6_combout\ & \Equal7~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~4_combout\,
	datab => \Equal7~5_combout\,
	datac => \Equal7~6_combout\,
	datad => \Equal7~8_combout\,
	combout => \Equal7~9_combout\);

-- Location: LCCOMB_X1_Y26_N14
\acceso_permitido~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \acceso_permitido~0_combout\ = (\Mux10~1_combout\ & (!\Equal6~0_combout\ & (\hay_usuario~q\ & \Equal7~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~1_combout\,
	datab => \Equal6~0_combout\,
	datac => \hay_usuario~q\,
	datad => \Equal7~9_combout\,
	combout => \acceso_permitido~0_combout\);

ww_usuario_seleccionado <= \usuario_seleccionado~output_o\;

ww_usuario_habilitado <= \usuario_habilitado~output_o\;

ww_horario_correcto <= \horario_correcto~output_o\;

ww_clave_correcta <= \clave_correcta~output_o\;

ww_acceso_permitido <= \acceso_permitido~output_o\;

ww_usuario_actual(0) <= \usuario_actual[0]~output_o\;

ww_usuario_actual(1) <= \usuario_actual[1]~output_o\;
END structure;


