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

-- DATE "05/07/2026 23:00:10"

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

ENTITY 	contador_horario_180s IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	tick_1s : IN std_logic;
	segundos : OUT STD.STANDARD.integer range 0 TO 180;
	horario : OUT std_logic_vector(1 DOWNTO 0);
	vuelta_cero : OUT std_logic;
	led_manana : OUT std_logic;
	led_tarde : OUT std_logic;
	led_noche : OUT std_logic;
	led_fin : OUT std_logic
	);
END contador_horario_180s;

-- Design Ports Information
-- segundos[0]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segundos[1]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segundos[2]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segundos[3]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segundos[4]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segundos[5]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segundos[6]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segundos[7]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- horario[0]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- horario[1]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vuelta_cero	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_manana	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_tarde	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_noche	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_fin	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tick_1s	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF contador_horario_180s IS
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
SIGNAL ww_tick_1s : std_logic;
SIGNAL ww_segundos : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_horario : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_vuelta_cero : std_logic;
SIGNAL ww_led_manana : std_logic;
SIGNAL ww_led_tarde : std_logic;
SIGNAL ww_led_noche : std_logic;
SIGNAL ww_led_fin : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \segundos[0]~output_o\ : std_logic;
SIGNAL \segundos[1]~output_o\ : std_logic;
SIGNAL \segundos[2]~output_o\ : std_logic;
SIGNAL \segundos[3]~output_o\ : std_logic;
SIGNAL \segundos[4]~output_o\ : std_logic;
SIGNAL \segundos[5]~output_o\ : std_logic;
SIGNAL \segundos[6]~output_o\ : std_logic;
SIGNAL \segundos[7]~output_o\ : std_logic;
SIGNAL \horario[0]~output_o\ : std_logic;
SIGNAL \horario[1]~output_o\ : std_logic;
SIGNAL \vuelta_cero~output_o\ : std_logic;
SIGNAL \led_manana~output_o\ : std_logic;
SIGNAL \led_tarde~output_o\ : std_logic;
SIGNAL \led_noche~output_o\ : std_logic;
SIGNAL \led_fin~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \tick_1s~input_o\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \contador~4_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \contador~1_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \contador~3_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \contador~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \contador~0_combout\ : std_logic;
SIGNAL \horario_i~2_combout\ : std_logic;
SIGNAL \horario_i~1_combout\ : std_logic;
SIGNAL \horario_i~0_combout\ : std_logic;
SIGNAL \horario_i~3_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \vuelta_cero~0_combout\ : std_logic;
SIGNAL \vuelta_cero~reg0_q\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal2~6_combout\ : std_logic;
SIGNAL \Equal2~7_combout\ : std_logic;
SIGNAL \Equal2~8_combout\ : std_logic;
SIGNAL contador : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_Equal2~7_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_tick_1s <= tick_1s;
segundos <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_segundos));
horario <= ww_horario;
vuelta_cero <= ww_vuelta_cero;
led_manana <= ww_led_manana;
led_tarde <= ww_led_tarde;
led_noche <= ww_led_noche;
led_fin <= ww_led_fin;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;
\ALT_INV_Equal2~7_combout\ <= NOT \Equal2~7_combout\;
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
\ALT_INV_LessThan1~0_combout\ <= NOT \LessThan1~0_combout\;

-- Location: IOOBUF_X0_Y10_N23
\segundos[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contador(0),
	devoe => ww_devoe,
	o => \segundos[0]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\segundos[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contador(1),
	devoe => ww_devoe,
	o => \segundos[1]~output_o\);

-- Location: IOOBUF_X0_Y8_N9
\segundos[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contador(2),
	devoe => ww_devoe,
	o => \segundos[2]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\segundos[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contador(3),
	devoe => ww_devoe,
	o => \segundos[3]~output_o\);

-- Location: IOOBUF_X0_Y11_N2
\segundos[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contador(4),
	devoe => ww_devoe,
	o => \segundos[4]~output_o\);

-- Location: IOOBUF_X0_Y8_N2
\segundos[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contador(5),
	devoe => ww_devoe,
	o => \segundos[5]~output_o\);

-- Location: IOOBUF_X0_Y10_N9
\segundos[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contador(6),
	devoe => ww_devoe,
	o => \segundos[6]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\segundos[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contador(7),
	devoe => ww_devoe,
	o => \segundos[7]~output_o\);

-- Location: IOOBUF_X0_Y11_N9
\horario[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \horario_i~3_combout\,
	devoe => ww_devoe,
	o => \horario[0]~output_o\);

-- Location: IOOBUF_X0_Y9_N23
\horario[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_LessThan1~0_combout\,
	devoe => ww_devoe,
	o => \horario[1]~output_o\);

-- Location: IOOBUF_X0_Y10_N2
\vuelta_cero~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vuelta_cero~reg0_q\,
	devoe => ww_devoe,
	o => \vuelta_cero~output_o\);

-- Location: IOOBUF_X0_Y9_N2
\led_manana~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Equal1~0_combout\,
	devoe => ww_devoe,
	o => \led_manana~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\led_tarde~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal2~6_combout\,
	devoe => ww_devoe,
	o => \led_tarde~output_o\);

-- Location: IOOBUF_X0_Y11_N23
\led_noche~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Equal2~7_combout\,
	devoe => ww_devoe,
	o => \led_noche~output_o\);

-- Location: IOOBUF_X0_Y9_N16
\led_fin~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal2~8_combout\,
	devoe => ww_devoe,
	o => \led_fin~output_o\);

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

-- Location: LCCOMB_X1_Y10_N22
\Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (contador(5) & (!\Add0~9\)) # (!contador(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!contador(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X1_Y10_N24
\Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (contador(6) & (\Add0~11\ $ (GND))) # (!contador(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((contador(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

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

-- Location: IOIBUF_X0_Y10_N15
\tick_1s~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tick_1s,
	o => \tick_1s~input_o\);

-- Location: FF_X1_Y10_N25
\contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~12_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \tick_1s~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(6));

-- Location: LCCOMB_X1_Y10_N26
\Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = \Add0~13\ $ (contador(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => contador(7),
	cin => \Add0~13\,
	combout => \Add0~14_combout\);

-- Location: LCCOMB_X1_Y10_N0
\contador~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador~4_combout\ = (\Add0~14_combout\ & (((!contador(7)) # (!\Equal0~1_combout\)) # (!\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~1_combout\,
	datac => contador(7),
	datad => \Add0~14_combout\,
	combout => \contador~4_combout\);

-- Location: FF_X1_Y10_N1
\contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador~4_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \tick_1s~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(7));

-- Location: LCCOMB_X1_Y10_N12
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = contador(0) $ (VCC)
-- \Add0~1\ = CARRY(contador(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => contador(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X1_Y10_N14
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (contador(1) & (!\Add0~1\)) # (!contador(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!contador(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: FF_X1_Y10_N15
\contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \tick_1s~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(1));

-- Location: LCCOMB_X1_Y10_N16
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (contador(2) & (\Add0~3\ $ (GND))) # (!contador(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((contador(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X1_Y10_N6
\contador~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador~1_combout\ = (\Add0~4_combout\ & (((!contador(7)) # (!\Equal0~1_combout\)) # (!\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~1_combout\,
	datac => contador(7),
	datad => \Add0~4_combout\,
	combout => \contador~1_combout\);

-- Location: FF_X1_Y10_N7
\contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \tick_1s~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(2));

-- Location: LCCOMB_X1_Y10_N18
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (contador(3) & (!\Add0~5\)) # (!contador(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!contador(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: FF_X1_Y10_N19
\contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~6_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \tick_1s~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(3));

-- Location: LCCOMB_X1_Y10_N20
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (contador(4) & (\Add0~7\ $ (GND))) # (!contador(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((contador(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X1_Y10_N10
\contador~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador~3_combout\ = (\Add0~10_combout\ & (((!contador(7)) # (!\Equal0~1_combout\)) # (!\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~1_combout\,
	datac => \Add0~10_combout\,
	datad => contador(7),
	combout => \contador~3_combout\);

-- Location: FF_X1_Y10_N11
\contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador~3_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \tick_1s~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(5));

-- Location: LCCOMB_X1_Y10_N2
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (contador(5) & (!contador(0) & (!contador(3) & !contador(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(5),
	datab => contador(0),
	datac => contador(3),
	datad => contador(1),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X1_Y10_N28
\contador~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador~2_combout\ = (\Add0~8_combout\ & (((!contador(7)) # (!\Equal0~1_combout\)) # (!\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~1_combout\,
	datac => contador(7),
	datad => \Add0~8_combout\,
	combout => \contador~2_combout\);

-- Location: FF_X1_Y10_N29
\contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \tick_1s~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(4));

-- Location: LCCOMB_X1_Y10_N30
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (contador(4) & (contador(2) & !contador(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => contador(4),
	datac => contador(2),
	datad => contador(6),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X1_Y10_N4
\contador~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador~0_combout\ = (\Add0~0_combout\ & (((!contador(7)) # (!\Equal0~1_combout\)) # (!\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~1_combout\,
	datac => \Add0~0_combout\,
	datad => contador(7),
	combout => \contador~0_combout\);

-- Location: FF_X1_Y10_N5
\contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \tick_1s~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(0));

-- Location: LCCOMB_X1_Y9_N24
\horario_i~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horario_i~2_combout\ = (contador(7) & ((contador(3)) # ((contador(1) & contador(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(1),
	datab => contador(2),
	datac => contador(3),
	datad => contador(7),
	combout => \horario_i~2_combout\);

-- Location: LCCOMB_X1_Y9_N22
\horario_i~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horario_i~1_combout\ = (contador(5) & ((contador(7)) # ((contador(3) & \Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(5),
	datab => contador(3),
	datac => \Equal0~0_combout\,
	datad => contador(7),
	combout => \horario_i~1_combout\);

-- Location: LCCOMB_X1_Y9_N12
\horario_i~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horario_i~0_combout\ = (contador(6) & (((!contador(3)) # (!contador(4))) # (!contador(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(5),
	datab => contador(6),
	datac => contador(4),
	datad => contador(3),
	combout => \horario_i~0_combout\);

-- Location: LCCOMB_X1_Y9_N10
\horario_i~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horario_i~3_combout\ = (\horario_i~1_combout\) # ((\horario_i~0_combout\) # ((contador(4) & \horario_i~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(4),
	datab => \horario_i~2_combout\,
	datac => \horario_i~1_combout\,
	datad => \horario_i~0_combout\,
	combout => \horario_i~3_combout\);

-- Location: LCCOMB_X1_Y9_N20
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (contador(4) & (contador(3) & contador(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(4),
	datab => contador(3),
	datac => contador(5),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X1_Y9_N26
\LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (!contador(7) & ((!contador(6)) # (!\LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~0_combout\,
	datac => contador(6),
	datad => contador(7),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X1_Y10_N8
\vuelta_cero~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vuelta_cero~0_combout\ = (\Equal0~0_combout\ & (contador(7) & (\tick_1s~input_o\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => contador(7),
	datac => \tick_1s~input_o\,
	datad => \Equal0~1_combout\,
	combout => \vuelta_cero~0_combout\);

-- Location: FF_X1_Y10_N9
\vuelta_cero~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vuelta_cero~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vuelta_cero~reg0_q\);

-- Location: LCCOMB_X1_Y9_N16
\Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (contador(7)) # ((contador(6)) # ((contador(2) & \LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(2),
	datab => contador(7),
	datac => contador(6),
	datad => \LessThan0~0_combout\,
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X1_Y9_N2
\Equal2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~6_combout\ = (\horario_i~3_combout\ & (!contador(7) & ((!contador(6)) # (!\LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \horario_i~3_combout\,
	datab => \LessThan0~0_combout\,
	datac => contador(6),
	datad => contador(7),
	combout => \Equal2~6_combout\);

-- Location: LCCOMB_X1_Y9_N0
\Equal2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~7_combout\ = (\horario_i~3_combout\) # ((!contador(7) & ((!contador(6)) # (!\LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \horario_i~3_combout\,
	datab => \LessThan0~0_combout\,
	datac => contador(6),
	datad => contador(7),
	combout => \Equal2~7_combout\);

-- Location: LCCOMB_X1_Y9_N14
\Equal2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~8_combout\ = (\horario_i~3_combout\ & ((contador(7)) # ((\LessThan0~0_combout\ & contador(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \horario_i~3_combout\,
	datab => \LessThan0~0_combout\,
	datac => contador(6),
	datad => contador(7),
	combout => \Equal2~8_combout\);

ww_segundos(0) <= \segundos[0]~output_o\;

ww_segundos(1) <= \segundos[1]~output_o\;

ww_segundos(2) <= \segundos[2]~output_o\;

ww_segundos(3) <= \segundos[3]~output_o\;

ww_segundos(4) <= \segundos[4]~output_o\;

ww_segundos(5) <= \segundos[5]~output_o\;

ww_segundos(6) <= \segundos[6]~output_o\;

ww_segundos(7) <= \segundos[7]~output_o\;

ww_horario(0) <= \horario[0]~output_o\;

ww_horario(1) <= \horario[1]~output_o\;

ww_vuelta_cero <= \vuelta_cero~output_o\;

ww_led_manana <= \led_manana~output_o\;

ww_led_tarde <= \led_tarde~output_o\;

ww_led_noche <= \led_noche~output_o\;

ww_led_fin <= \led_fin~output_o\;
END structure;


