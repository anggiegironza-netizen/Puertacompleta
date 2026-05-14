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

-- DATE "04/06/2026 16:30:23"

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

ENTITY 	temporizador_descendente IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	iniciar : IN std_logic;
	tick_1s : IN std_logic;
	preset : IN STD.STANDARD.integer range 0 TO 59;
	corriendo : OUT std_logic;
	terminado : OUT std_logic;
	valor_out : OUT STD.STANDARD.integer range 0 TO 59
	);
END temporizador_descendente;

-- Design Ports Information
-- corriendo	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- terminado	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_out[0]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_out[1]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_out[2]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_out[3]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_out[4]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_out[5]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iniciar	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tick_1s	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- preset[0]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- preset[1]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- preset[2]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- preset[3]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- preset[4]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- preset[5]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF temporizador_descendente IS
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
SIGNAL ww_iniciar : std_logic;
SIGNAL ww_tick_1s : std_logic;
SIGNAL ww_preset : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_corriendo : std_logic;
SIGNAL ww_terminado : std_logic;
SIGNAL ww_valor_out : std_logic_vector(5 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \corriendo~output_o\ : std_logic;
SIGNAL \terminado~output_o\ : std_logic;
SIGNAL \valor_out[0]~output_o\ : std_logic;
SIGNAL \valor_out[1]~output_o\ : std_logic;
SIGNAL \valor_out[2]~output_o\ : std_logic;
SIGNAL \valor_out[3]~output_o\ : std_logic;
SIGNAL \valor_out[4]~output_o\ : std_logic;
SIGNAL \valor_out[5]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \iniciar~input_o\ : std_logic;
SIGNAL \tick_1s~input_o\ : std_logic;
SIGNAL \contador[0]~6_combout\ : std_logic;
SIGNAL \preset[0]~input_o\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \contador[0]~8_combout\ : std_logic;
SIGNAL \contador[0]~7\ : std_logic;
SIGNAL \contador[1]~9_combout\ : std_logic;
SIGNAL \preset[1]~input_o\ : std_logic;
SIGNAL \contador[1]~10\ : std_logic;
SIGNAL \contador[2]~11_combout\ : std_logic;
SIGNAL \preset[2]~input_o\ : std_logic;
SIGNAL \contador[2]~12\ : std_logic;
SIGNAL \contador[3]~13_combout\ : std_logic;
SIGNAL \preset[3]~input_o\ : std_logic;
SIGNAL \contador[3]~14\ : std_logic;
SIGNAL \contador[4]~15_combout\ : std_logic;
SIGNAL \preset[4]~input_o\ : std_logic;
SIGNAL \contador[4]~16\ : std_logic;
SIGNAL \contador[5]~17_combout\ : std_logic;
SIGNAL \preset[5]~input_o\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \en_marcha~0_combout\ : std_logic;
SIGNAL \en_marcha~1_combout\ : std_logic;
SIGNAL \en_marcha~q\ : std_logic;
SIGNAL \fin~0_combout\ : std_logic;
SIGNAL \fin~1_combout\ : std_logic;
SIGNAL \fin~q\ : std_logic;
SIGNAL contador : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_iniciar <= iniciar;
ww_tick_1s <= tick_1s;
ww_preset <= IEEE.STD_LOGIC_ARITH.CONV_STD_LOGIC_VECTOR(preset, 6);
corriendo <= ww_corriendo;
terminado <= ww_terminado;
valor_out <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_valor_out));
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;

-- Location: IOOBUF_X0_Y10_N16
\corriendo~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \en_marcha~q\,
	devoe => ww_devoe,
	o => \corriendo~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\terminado~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fin~q\,
	devoe => ww_devoe,
	o => \terminado~output_o\);

-- Location: IOOBUF_X0_Y12_N23
\valor_out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contador(0),
	devoe => ww_devoe,
	o => \valor_out[0]~output_o\);

-- Location: IOOBUF_X0_Y11_N2
\valor_out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contador(1),
	devoe => ww_devoe,
	o => \valor_out[1]~output_o\);

-- Location: IOOBUF_X0_Y9_N2
\valor_out[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contador(2),
	devoe => ww_devoe,
	o => \valor_out[2]~output_o\);

-- Location: IOOBUF_X0_Y11_N23
\valor_out[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contador(3),
	devoe => ww_devoe,
	o => \valor_out[3]~output_o\);

-- Location: IOOBUF_X0_Y8_N2
\valor_out[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contador(4),
	devoe => ww_devoe,
	o => \valor_out[4]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\valor_out[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contador(5),
	devoe => ww_devoe,
	o => \valor_out[5]~output_o\);

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

-- Location: IOIBUF_X0_Y8_N8
\iniciar~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iniciar,
	o => \iniciar~input_o\);

-- Location: IOIBUF_X0_Y10_N1
\tick_1s~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tick_1s,
	o => \tick_1s~input_o\);

-- Location: LCCOMB_X1_Y10_N14
\contador[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[0]~6_combout\ = contador(0) $ (VCC)
-- \contador[0]~7\ = CARRY(contador(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(0),
	datad => VCC,
	combout => \contador[0]~6_combout\,
	cout => \contador[0]~7\);

-- Location: IOIBUF_X0_Y9_N15
\preset[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_preset(0),
	o => \preset[0]~input_o\);

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

-- Location: LCCOMB_X1_Y10_N30
\contador[0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[0]~8_combout\ = (\iniciar~input_o\) # ((\tick_1s~input_o\ & \en_marcha~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iniciar~input_o\,
	datab => \tick_1s~input_o\,
	datad => \en_marcha~0_combout\,
	combout => \contador[0]~8_combout\);

-- Location: FF_X1_Y10_N15
\contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[0]~6_combout\,
	asdata => \preset[0]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \iniciar~input_o\,
	ena => \contador[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(0));

-- Location: LCCOMB_X1_Y10_N16
\contador[1]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[1]~9_combout\ = (contador(1) & (\contador[0]~7\ & VCC)) # (!contador(1) & (!\contador[0]~7\))
-- \contador[1]~10\ = CARRY((!contador(1) & !\contador[0]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(1),
	datad => VCC,
	cin => \contador[0]~7\,
	combout => \contador[1]~9_combout\,
	cout => \contador[1]~10\);

-- Location: IOIBUF_X0_Y10_N8
\preset[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_preset(1),
	o => \preset[1]~input_o\);

-- Location: FF_X1_Y10_N17
\contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[1]~9_combout\,
	asdata => \preset[1]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \iniciar~input_o\,
	ena => \contador[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(1));

-- Location: LCCOMB_X1_Y10_N18
\contador[2]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[2]~11_combout\ = (contador(2) & ((GND) # (!\contador[1]~10\))) # (!contador(2) & (\contador[1]~10\ $ (GND)))
-- \contador[2]~12\ = CARRY((contador(2)) # (!\contador[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(2),
	datad => VCC,
	cin => \contador[1]~10\,
	combout => \contador[2]~11_combout\,
	cout => \contador[2]~12\);

-- Location: IOIBUF_X0_Y11_N8
\preset[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_preset(2),
	o => \preset[2]~input_o\);

-- Location: FF_X1_Y10_N19
\contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[2]~11_combout\,
	asdata => \preset[2]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \iniciar~input_o\,
	ena => \contador[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(2));

-- Location: LCCOMB_X1_Y10_N20
\contador[3]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[3]~13_combout\ = (contador(3) & (\contador[2]~12\ & VCC)) # (!contador(3) & (!\contador[2]~12\))
-- \contador[3]~14\ = CARRY((!contador(3) & !\contador[2]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(3),
	datad => VCC,
	cin => \contador[2]~12\,
	combout => \contador[3]~13_combout\,
	cout => \contador[3]~14\);

-- Location: IOIBUF_X0_Y11_N15
\preset[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_preset(3),
	o => \preset[3]~input_o\);

-- Location: FF_X1_Y10_N21
\contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[3]~13_combout\,
	asdata => \preset[3]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \iniciar~input_o\,
	ena => \contador[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(3));

-- Location: LCCOMB_X1_Y10_N22
\contador[4]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[4]~15_combout\ = (contador(4) & ((GND) # (!\contador[3]~14\))) # (!contador(4) & (\contador[3]~14\ $ (GND)))
-- \contador[4]~16\ = CARRY((contador(4)) # (!\contador[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(4),
	datad => VCC,
	cin => \contador[3]~14\,
	combout => \contador[4]~15_combout\,
	cout => \contador[4]~16\);

-- Location: IOIBUF_X0_Y9_N22
\preset[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_preset(4),
	o => \preset[4]~input_o\);

-- Location: FF_X1_Y10_N23
\contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[4]~15_combout\,
	asdata => \preset[4]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \iniciar~input_o\,
	ena => \contador[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(4));

-- Location: LCCOMB_X1_Y10_N24
\contador[5]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[5]~17_combout\ = contador(5) $ (!\contador[4]~16\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(5),
	cin => \contador[4]~16\,
	combout => \contador[5]~17_combout\);

-- Location: IOIBUF_X0_Y10_N22
\preset[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_preset(5),
	o => \preset[5]~input_o\);

-- Location: FF_X1_Y10_N25
\contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[5]~17_combout\,
	asdata => \preset[5]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \iniciar~input_o\,
	ena => \contador[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(5));

-- Location: LCCOMB_X1_Y10_N0
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (contador(3)) # ((contador(1)) # ((contador(0)) # (contador(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(3),
	datab => contador(1),
	datac => contador(0),
	datad => contador(2),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X1_Y10_N10
\en_marcha~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \en_marcha~0_combout\ = (\en_marcha~q\ & ((contador(4)) # ((contador(5)) # (\LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(4),
	datab => \en_marcha~q\,
	datac => contador(5),
	datad => \LessThan0~0_combout\,
	combout => \en_marcha~0_combout\);

-- Location: LCCOMB_X1_Y10_N28
\en_marcha~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \en_marcha~1_combout\ = (\iniciar~input_o\) # ((\en_marcha~0_combout\) # ((!\tick_1s~input_o\ & \en_marcha~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iniciar~input_o\,
	datab => \tick_1s~input_o\,
	datac => \en_marcha~q\,
	datad => \en_marcha~0_combout\,
	combout => \en_marcha~1_combout\);

-- Location: FF_X1_Y10_N29
en_marcha : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \en_marcha~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \en_marcha~q\);

-- Location: LCCOMB_X1_Y10_N12
\fin~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fin~0_combout\ = (\iniciar~input_o\) # ((!\en_marcha~q\) # (!\tick_1s~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iniciar~input_o\,
	datab => \tick_1s~input_o\,
	datad => \en_marcha~q\,
	combout => \fin~0_combout\);

-- Location: LCCOMB_X1_Y10_N2
\fin~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fin~1_combout\ = (!contador(4) & (!\LessThan0~0_combout\ & (!contador(5) & !\fin~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(4),
	datab => \LessThan0~0_combout\,
	datac => contador(5),
	datad => \fin~0_combout\,
	combout => \fin~1_combout\);

-- Location: FF_X1_Y10_N3
fin : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fin~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fin~q\);

ww_corriendo <= \corriendo~output_o\;

ww_terminado <= \terminado~output_o\;

ww_valor_out(0) <= \valor_out[0]~output_o\;

ww_valor_out(1) <= \valor_out[1]~output_o\;

ww_valor_out(2) <= \valor_out[2]~output_o\;

ww_valor_out(3) <= \valor_out[3]~output_o\;

ww_valor_out(4) <= \valor_out[4]~output_o\;

ww_valor_out(5) <= \valor_out[5]~output_o\;
END structure;


