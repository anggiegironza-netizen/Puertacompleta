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

-- DATE "05/07/2026 01:41:30"

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

ENTITY 	teclado_matricial_4x4 IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	fila : IN std_logic_vector(3 DOWNTO 0);
	columna : OUT std_logic_vector(3 DOWNTO 0);
	dato_out : OUT std_logic_vector(3 DOWNTO 0);
	dato_valid : OUT std_logic
	);
END teclado_matricial_4x4;

-- Design Ports Information
-- columna[0]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- columna[1]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- columna[2]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- columna[3]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dato_out[0]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dato_out[1]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dato_out[2]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dato_out[3]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dato_valid	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fila[2]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fila[0]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fila[1]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fila[3]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF teclado_matricial_4x4 IS
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
SIGNAL ww_fila : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_columna : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_dato_out : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_dato_valid : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \columna[0]~output_o\ : std_logic;
SIGNAL \columna[1]~output_o\ : std_logic;
SIGNAL \columna[2]~output_o\ : std_logic;
SIGNAL \columna[3]~output_o\ : std_logic;
SIGNAL \dato_out[0]~output_o\ : std_logic;
SIGNAL \dato_out[1]~output_o\ : std_logic;
SIGNAL \dato_out[2]~output_o\ : std_logic;
SIGNAL \dato_out[3]~output_o\ : std_logic;
SIGNAL \dato_valid~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \col_idx[0]~1_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \div_cnt~5_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \div_cnt~4_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \div_cnt~3_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \div_cnt~2_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \div_cnt~1_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \div_cnt~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \scan_tick~feeder_combout\ : std_logic;
SIGNAL \scan_tick~q\ : std_logic;
SIGNAL \col_idx[1]~0_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \fila[2]~input_o\ : std_logic;
SIGNAL \fila_sync0[2]~0_combout\ : std_logic;
SIGNAL \fila_sync1[2]~feeder_combout\ : std_logic;
SIGNAL \fila[0]~input_o\ : std_logic;
SIGNAL \fila_sync0[0]~1_combout\ : std_logic;
SIGNAL \fila[3]~input_o\ : std_logic;
SIGNAL \fila_sync0[3]~3_combout\ : std_logic;
SIGNAL \fila[1]~input_o\ : std_logic;
SIGNAL \fila_sync0[1]~2_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux18~1_combout\ : std_logic;
SIGNAL \Mux18~2_combout\ : std_logic;
SIGNAL \fila_prev[3]~feeder_combout\ : std_logic;
SIGNAL \fila_prev[1]~feeder_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \fila_prev[3]~0_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \db_cnt~5_combout\ : std_logic;
SIGNAL \db_cnt[2]~3_combout\ : std_logic;
SIGNAL \db_cnt~4_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \db_cnt~2_combout\ : std_logic;
SIGNAL \db_cnt~0_combout\ : std_logic;
SIGNAL \db_cnt~1_combout\ : std_logic;
SIGNAL \dato_out[0]~0_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \key_held~0_combout\ : std_logic;
SIGNAL \key_held~q\ : std_logic;
SIGNAL \dato_out[0]~1_combout\ : std_logic;
SIGNAL \dato_out[0]~reg0_q\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux17~1_combout\ : std_logic;
SIGNAL \Mux17~2_combout\ : std_logic;
SIGNAL \Mux17~3_combout\ : std_logic;
SIGNAL \dato_out[1]~reg0_q\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux16~1_combout\ : std_logic;
SIGNAL \dato_out[2]~reg0_q\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \Mux15~2_combout\ : std_logic;
SIGNAL \dato_out[3]~reg0_q\ : std_logic;
SIGNAL \dato_valid~reg0_q\ : std_logic;
SIGNAL fila_sync1 : std_logic_vector(3 DOWNTO 0);
SIGNAL fila_sync0 : std_logic_vector(3 DOWNTO 0);
SIGNAL fila_prev : std_logic_vector(3 DOWNTO 0);
SIGNAL div_cnt : std_logic_vector(15 DOWNTO 0);
SIGNAL db_cnt : std_logic_vector(3 DOWNTO 0);
SIGNAL col_idx : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_fila <= fila;
columna <= ww_columna;
dato_out <= ww_dato_out;
dato_valid <= ww_dato_valid;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);
\ALT_INV_Mux15~0_combout\ <= NOT \Mux15~0_combout\;
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;

-- Location: IOOBUF_X41_Y24_N23
\columna[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux15~0_combout\,
	devoe => ww_devoe,
	o => \columna[0]~output_o\);

-- Location: IOOBUF_X41_Y22_N2
\columna[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => \columna[1]~output_o\);

-- Location: IOOBUF_X41_Y23_N16
\columna[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \columna[2]~output_o\);

-- Location: IOOBUF_X41_Y23_N2
\columna[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \columna[3]~output_o\);

-- Location: IOOBUF_X41_Y21_N2
\dato_out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dato_out[0]~reg0_q\,
	devoe => ww_devoe,
	o => \dato_out[0]~output_o\);

-- Location: IOOBUF_X41_Y24_N2
\dato_out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dato_out[1]~reg0_q\,
	devoe => ww_devoe,
	o => \dato_out[1]~output_o\);

-- Location: IOOBUF_X41_Y22_N16
\dato_out[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dato_out[2]~reg0_q\,
	devoe => ww_devoe,
	o => \dato_out[2]~output_o\);

-- Location: IOOBUF_X41_Y24_N9
\dato_out[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dato_out[3]~reg0_q\,
	devoe => ww_devoe,
	o => \dato_out[3]~output_o\);

-- Location: IOOBUF_X41_Y21_N23
\dato_valid~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dato_valid~reg0_q\,
	devoe => ww_devoe,
	o => \dato_valid~output_o\);

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

-- Location: LCCOMB_X40_Y23_N18
\col_idx[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \col_idx[0]~1_combout\ = !col_idx(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => col_idx(0),
	combout => \col_idx[0]~1_combout\);

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

-- Location: LCCOMB_X36_Y23_N0
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = div_cnt(0) $ (VCC)
-- \Add0~1\ = CARRY(div_cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => div_cnt(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: FF_X36_Y23_N1
\div_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_cnt(0));

-- Location: LCCOMB_X36_Y23_N2
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (div_cnt(1) & (!\Add0~1\)) # (!div_cnt(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!div_cnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div_cnt(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: FF_X36_Y23_N3
\div_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_cnt(1));

-- Location: LCCOMB_X36_Y23_N4
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (div_cnt(2) & (\Add0~3\ $ (GND))) # (!div_cnt(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((div_cnt(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div_cnt(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X36_Y23_N5
\div_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_cnt(2));

-- Location: LCCOMB_X36_Y23_N6
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (div_cnt(3) & (!\Add0~5\)) # (!div_cnt(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!div_cnt(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => div_cnt(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: FF_X36_Y23_N7
\div_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~6_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_cnt(3));

-- Location: LCCOMB_X36_Y23_N8
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (div_cnt(4) & (\Add0~7\ $ (GND))) # (!div_cnt(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((div_cnt(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => div_cnt(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X37_Y23_N30
\div_cnt~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_cnt~5_combout\ = (!\Equal0~4_combout\ & \Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~4_combout\,
	datad => \Add0~8_combout\,
	combout => \div_cnt~5_combout\);

-- Location: FF_X37_Y23_N31
\div_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_cnt~5_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_cnt(4));

-- Location: LCCOMB_X36_Y23_N10
\Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (div_cnt(5) & (!\Add0~9\)) # (!div_cnt(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!div_cnt(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => div_cnt(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: FF_X36_Y23_N11
\div_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~10_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_cnt(5));

-- Location: LCCOMB_X36_Y23_N12
\Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (div_cnt(6) & (\Add0~11\ $ (GND))) # (!div_cnt(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((div_cnt(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => div_cnt(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X37_Y23_N20
\div_cnt~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_cnt~4_combout\ = (!\Equal0~4_combout\ & \Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~4_combout\,
	datad => \Add0~12_combout\,
	combout => \div_cnt~4_combout\);

-- Location: FF_X37_Y23_N21
\div_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_cnt~4_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_cnt(6));

-- Location: LCCOMB_X36_Y23_N14
\Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (div_cnt(7) & (!\Add0~13\)) # (!div_cnt(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!div_cnt(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div_cnt(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: FF_X36_Y23_N15
\div_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~14_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_cnt(7));

-- Location: LCCOMB_X36_Y23_N16
\Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (div_cnt(8) & (\Add0~15\ $ (GND))) # (!div_cnt(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((div_cnt(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div_cnt(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X37_Y23_N28
\div_cnt~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_cnt~3_combout\ = (\Add0~16_combout\ & !\Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~16_combout\,
	datad => \Equal0~4_combout\,
	combout => \div_cnt~3_combout\);

-- Location: FF_X37_Y23_N29
\div_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_cnt~3_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_cnt(8));

-- Location: LCCOMB_X36_Y23_N18
\Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (div_cnt(9) & (!\Add0~17\)) # (!div_cnt(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!div_cnt(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div_cnt(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X37_Y23_N22
\div_cnt~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_cnt~2_combout\ = (!\Equal0~4_combout\ & \Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~4_combout\,
	datad => \Add0~18_combout\,
	combout => \div_cnt~2_combout\);

-- Location: FF_X37_Y23_N23
\div_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_cnt~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_cnt(9));

-- Location: LCCOMB_X36_Y23_N20
\Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (div_cnt(10) & (\Add0~19\ $ (GND))) # (!div_cnt(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((div_cnt(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div_cnt(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: FF_X36_Y23_N21
\div_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~20_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_cnt(10));

-- Location: LCCOMB_X36_Y23_N22
\Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (div_cnt(11) & (!\Add0~21\)) # (!div_cnt(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!div_cnt(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => div_cnt(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: FF_X36_Y23_N23
\div_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~22_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_cnt(11));

-- Location: LCCOMB_X36_Y23_N24
\Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (div_cnt(12) & (\Add0~23\ $ (GND))) # (!div_cnt(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((div_cnt(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div_cnt(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: FF_X36_Y23_N25
\div_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~24_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_cnt(12));

-- Location: LCCOMB_X36_Y23_N26
\Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (div_cnt(13) & (!\Add0~25\)) # (!div_cnt(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!div_cnt(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => div_cnt(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: FF_X36_Y23_N27
\div_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~26_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_cnt(13));

-- Location: LCCOMB_X36_Y23_N28
\Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (div_cnt(14) & (\Add0~27\ $ (GND))) # (!div_cnt(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((div_cnt(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => div_cnt(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X37_Y23_N2
\div_cnt~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_cnt~1_combout\ = (!\Equal0~4_combout\ & \Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~4_combout\,
	datad => \Add0~28_combout\,
	combout => \div_cnt~1_combout\);

-- Location: FF_X37_Y23_N3
\div_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_cnt~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_cnt(14));

-- Location: LCCOMB_X36_Y23_N30
\Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = \Add0~29\ $ (div_cnt(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => div_cnt(15),
	cin => \Add0~29\,
	combout => \Add0~30_combout\);

-- Location: LCCOMB_X37_Y23_N4
\div_cnt~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_cnt~0_combout\ = (!\Equal0~4_combout\ & \Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~4_combout\,
	datad => \Add0~30_combout\,
	combout => \div_cnt~0_combout\);

-- Location: FF_X37_Y23_N5
\div_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_cnt~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_cnt(15));

-- Location: LCCOMB_X37_Y23_N12
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!div_cnt(13) & (!div_cnt(12) & (div_cnt(15) & div_cnt(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => div_cnt(13),
	datab => div_cnt(12),
	datac => div_cnt(15),
	datad => div_cnt(14),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X37_Y23_N24
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!div_cnt(5) & (div_cnt(6) & (!div_cnt(4) & !div_cnt(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => div_cnt(5),
	datab => div_cnt(6),
	datac => div_cnt(4),
	datad => div_cnt(7),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X37_Y23_N26
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (div_cnt(8) & (!div_cnt(10) & (div_cnt(9) & !div_cnt(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => div_cnt(8),
	datab => div_cnt(10),
	datac => div_cnt(9),
	datad => div_cnt(11),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X37_Y23_N18
\Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (div_cnt(0) & (div_cnt(2) & (div_cnt(3) & div_cnt(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => div_cnt(0),
	datab => div_cnt(2),
	datac => div_cnt(3),
	datad => div_cnt(1),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X37_Y23_N0
\Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~0_combout\ & (\Equal0~2_combout\ & (\Equal0~1_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X37_Y23_N16
\scan_tick~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \scan_tick~feeder_combout\ = \Equal0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Equal0~4_combout\,
	combout => \scan_tick~feeder_combout\);

-- Location: FF_X37_Y23_N17
scan_tick : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \scan_tick~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scan_tick~q\);

-- Location: FF_X40_Y23_N19
\col_idx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \col_idx[0]~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \scan_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => col_idx(0));

-- Location: LCCOMB_X40_Y23_N4
\col_idx[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \col_idx[1]~0_combout\ = col_idx(1) $ (((\scan_tick~q\ & col_idx(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scan_tick~q\,
	datac => col_idx(1),
	datad => col_idx(0),
	combout => \col_idx[1]~0_combout\);

-- Location: FF_X40_Y23_N5
\col_idx[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \col_idx[1]~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => col_idx(1));

-- Location: LCCOMB_X40_Y23_N0
\Mux15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (!col_idx(0) & !col_idx(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => col_idx(0),
	datac => col_idx(1),
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X40_Y23_N30
\Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (col_idx(1)) # (!col_idx(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => col_idx(0),
	datac => col_idx(1),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X40_Y23_N16
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (col_idx(0)) # (!col_idx(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => col_idx(0),
	datac => col_idx(1),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X40_Y23_N14
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!col_idx(1)) # (!col_idx(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => col_idx(0),
	datac => col_idx(1),
	combout => \Mux0~0_combout\);

-- Location: IOIBUF_X41_Y22_N22
\fila[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fila(2),
	o => \fila[2]~input_o\);

-- Location: LCCOMB_X40_Y23_N2
\fila_sync0[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fila_sync0[2]~0_combout\ = !\fila[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fila[2]~input_o\,
	combout => \fila_sync0[2]~0_combout\);

-- Location: FF_X40_Y23_N3
\fila_sync0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fila_sync0[2]~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fila_sync0(2));

-- Location: LCCOMB_X39_Y23_N30
\fila_sync1[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fila_sync1[2]~feeder_combout\ = fila_sync0(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => fila_sync0(2),
	combout => \fila_sync1[2]~feeder_combout\);

-- Location: FF_X39_Y23_N31
\fila_sync1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fila_sync1[2]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fila_sync1(2));

-- Location: IOIBUF_X41_Y23_N22
\fila[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fila(0),
	o => \fila[0]~input_o\);

-- Location: LCCOMB_X40_Y23_N8
\fila_sync0[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fila_sync0[0]~1_combout\ = !\fila[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fila[0]~input_o\,
	combout => \fila_sync0[0]~1_combout\);

-- Location: FF_X40_Y23_N9
\fila_sync0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fila_sync0[0]~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fila_sync0(0));

-- Location: FF_X39_Y23_N13
\fila_sync1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => fila_sync0(0),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fila_sync1(0));

-- Location: IOIBUF_X41_Y23_N8
\fila[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fila(3),
	o => \fila[3]~input_o\);

-- Location: LCCOMB_X40_Y23_N20
\fila_sync0[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fila_sync0[3]~3_combout\ = !\fila[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fila[3]~input_o\,
	combout => \fila_sync0[3]~3_combout\);

-- Location: FF_X40_Y23_N21
\fila_sync0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fila_sync0[3]~3_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fila_sync0(3));

-- Location: FF_X39_Y23_N5
\fila_sync1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => fila_sync0(3),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fila_sync1(3));

-- Location: IOIBUF_X41_Y24_N15
\fila[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fila(1),
	o => \fila[1]~input_o\);

-- Location: LCCOMB_X40_Y23_N10
\fila_sync0[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fila_sync0[1]~2_combout\ = !\fila[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fila[1]~input_o\,
	combout => \fila_sync0[1]~2_combout\);

-- Location: FF_X40_Y23_N11
\fila_sync0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fila_sync0[1]~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fila_sync0(1));

-- Location: FF_X39_Y23_N27
\fila_sync1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => fila_sync0(1),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fila_sync1(1));

-- Location: LCCOMB_X39_Y23_N26
\Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (!fila_sync1(1) & ((fila_sync1(2) & (!fila_sync1(3) & !fila_sync1(0))) # (!fila_sync1(2) & (fila_sync1(3) $ (fila_sync1(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fila_sync1(2),
	datab => fila_sync1(3),
	datac => fila_sync1(1),
	datad => fila_sync1(0),
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X40_Y23_N12
\Mux11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (!fila_sync1(3) & (!fila_sync1(1) & (fila_sync1(0) $ (fila_sync1(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fila_sync1(0),
	datab => fila_sync1(2),
	datac => fila_sync1(3),
	datad => fila_sync1(1),
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X39_Y23_N18
\Mux18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (col_idx(0) & (col_idx(1))) # (!col_idx(0) & ((fila_sync1(3) & (!col_idx(1) & !fila_sync1(1))) # (!fila_sync1(3) & ((fila_sync1(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => col_idx(1),
	datab => fila_sync1(3),
	datac => fila_sync1(1),
	datad => col_idx(0),
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X39_Y23_N0
\Mux18~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux18~1_combout\ = (col_idx(0) & ((\Mux18~0_combout\ & ((\Mux11~0_combout\))) # (!\Mux18~0_combout\ & (\Mux8~0_combout\)))) # (!col_idx(0) & (((\Mux18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~0_combout\,
	datab => col_idx(0),
	datac => \Mux11~0_combout\,
	datad => \Mux18~0_combout\,
	combout => \Mux18~1_combout\);

-- Location: LCCOMB_X39_Y23_N8
\Mux18~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux18~2_combout\ = ((!col_idx(0) & ((fila_sync1(2)) # (fila_sync1(0))))) # (!\Mux18~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fila_sync1(2),
	datab => col_idx(0),
	datac => fila_sync1(0),
	datad => \Mux18~1_combout\,
	combout => \Mux18~2_combout\);

-- Location: LCCOMB_X38_Y23_N18
\fila_prev[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fila_prev[3]~feeder_combout\ = fila_sync1(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => fila_sync1(3),
	combout => \fila_prev[3]~feeder_combout\);

-- Location: LCCOMB_X38_Y23_N10
\fila_prev[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fila_prev[1]~feeder_combout\ = fila_sync1(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => fila_sync1(1),
	combout => \fila_prev[1]~feeder_combout\);

-- Location: FF_X38_Y23_N11
\fila_prev[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fila_prev[1]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \fila_prev[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fila_prev(1));

-- Location: FF_X38_Y23_N21
\fila_prev[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => fila_sync1(0),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fila_prev[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fila_prev(0));

-- Location: LCCOMB_X38_Y23_N20
\Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (fila_prev(1) & (fila_sync1(1) & (fila_sync1(0) $ (!fila_prev(0))))) # (!fila_prev(1) & (!fila_sync1(1) & (fila_sync1(0) $ (!fila_prev(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fila_prev(1),
	datab => fila_sync1(0),
	datac => fila_prev(0),
	datad => fila_sync1(1),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X38_Y23_N22
\fila_prev[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fila_prev[3]~0_combout\ = (\scan_tick~q\ & ((!\Equal2~0_combout\) # (!\Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scan_tick~q\,
	datac => \Equal2~1_combout\,
	datad => \Equal2~0_combout\,
	combout => \fila_prev[3]~0_combout\);

-- Location: FF_X38_Y23_N19
\fila_prev[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fila_prev[3]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \fila_prev[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fila_prev(3));

-- Location: FF_X38_Y23_N5
\fila_prev[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => fila_sync1(2),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fila_prev[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fila_prev(2));

-- Location: LCCOMB_X38_Y23_N4
\Equal2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (fila_sync1(2) & (fila_prev(2) & (fila_prev(3) $ (!fila_sync1(3))))) # (!fila_sync1(2) & (!fila_prev(2) & (fila_prev(3) $ (!fila_sync1(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fila_sync1(2),
	datab => fila_prev(3),
	datac => fila_prev(2),
	datad => fila_sync1(3),
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X38_Y23_N6
\db_cnt~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \db_cnt~5_combout\ = (\Equal2~1_combout\ & (!db_cnt(0) & \Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~1_combout\,
	datac => db_cnt(0),
	datad => \Equal2~0_combout\,
	combout => \db_cnt~5_combout\);

-- Location: LCCOMB_X38_Y23_N12
\db_cnt[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \db_cnt[2]~3_combout\ = (\scan_tick~q\ & (((!\Equal2~0_combout\) # (!\Equal2~1_combout\)) # (!db_cnt(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scan_tick~q\,
	datab => db_cnt(3),
	datac => \Equal2~1_combout\,
	datad => \Equal2~0_combout\,
	combout => \db_cnt[2]~3_combout\);

-- Location: FF_X38_Y23_N7
\db_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \db_cnt~5_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \db_cnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => db_cnt(0));

-- Location: LCCOMB_X38_Y23_N26
\db_cnt~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \db_cnt~4_combout\ = (\Equal2~1_combout\ & (\Equal2~0_combout\ & (db_cnt(0) $ (db_cnt(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => db_cnt(0),
	datab => \Equal2~1_combout\,
	datac => db_cnt(1),
	datad => \Equal2~0_combout\,
	combout => \db_cnt~4_combout\);

-- Location: FF_X38_Y23_N27
\db_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \db_cnt~4_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \db_cnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => db_cnt(1));

-- Location: LCCOMB_X38_Y23_N30
\Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = db_cnt(2) $ (((db_cnt(1) & db_cnt(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => db_cnt(2),
	datac => db_cnt(1),
	datad => db_cnt(0),
	combout => \Add2~0_combout\);

-- Location: LCCOMB_X38_Y23_N24
\db_cnt~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \db_cnt~2_combout\ = (\Equal2~1_combout\ & (\Add2~0_combout\ & \Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~1_combout\,
	datac => \Add2~0_combout\,
	datad => \Equal2~0_combout\,
	combout => \db_cnt~2_combout\);

-- Location: FF_X38_Y23_N25
\db_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \db_cnt~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \db_cnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => db_cnt(2));

-- Location: LCCOMB_X38_Y23_N28
\db_cnt~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \db_cnt~0_combout\ = (db_cnt(3)) # ((db_cnt(1) & (db_cnt(2) & db_cnt(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => db_cnt(1),
	datab => db_cnt(2),
	datac => db_cnt(3),
	datad => db_cnt(0),
	combout => \db_cnt~0_combout\);

-- Location: LCCOMB_X37_Y23_N6
\db_cnt~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \db_cnt~1_combout\ = (\db_cnt~0_combout\ & (\Equal2~0_combout\ & \Equal2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \db_cnt~0_combout\,
	datac => \Equal2~0_combout\,
	datad => \Equal2~1_combout\,
	combout => \db_cnt~1_combout\);

-- Location: FF_X37_Y23_N7
\db_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \db_cnt~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \scan_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => db_cnt(3));

-- Location: LCCOMB_X38_Y23_N8
\dato_out[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dato_out[0]~0_combout\ = (\scan_tick~q\ & (db_cnt(3) & (!db_cnt(1) & !db_cnt(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scan_tick~q\,
	datab => db_cnt(3),
	datac => db_cnt(1),
	datad => db_cnt(2),
	combout => \dato_out[0]~0_combout\);

-- Location: LCCOMB_X39_Y23_N28
\Equal4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (!fila_sync1(1) & (!fila_sync1(0) & (!fila_sync1(3) & !fila_sync1(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fila_sync1(1),
	datab => fila_sync1(0),
	datac => fila_sync1(3),
	datad => fila_sync1(2),
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X39_Y23_N14
\key_held~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \key_held~0_combout\ = (\dato_out[0]~0_combout\ & ((db_cnt(0) & (\key_held~q\)) # (!db_cnt(0) & ((!\Equal4~0_combout\))))) # (!\dato_out[0]~0_combout\ & (((\key_held~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dato_out[0]~0_combout\,
	datab => db_cnt(0),
	datac => \key_held~q\,
	datad => \Equal4~0_combout\,
	combout => \key_held~0_combout\);

-- Location: FF_X39_Y23_N15
key_held : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \key_held~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_held~q\);

-- Location: LCCOMB_X39_Y23_N22
\dato_out[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dato_out[0]~1_combout\ = (\dato_out[0]~0_combout\ & (!db_cnt(0) & (!\key_held~q\ & !\Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dato_out[0]~0_combout\,
	datab => db_cnt(0),
	datac => \key_held~q\,
	datad => \Equal4~0_combout\,
	combout => \dato_out[0]~1_combout\);

-- Location: FF_X39_Y23_N9
\dato_out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux18~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \dato_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dato_out[0]~reg0_q\);

-- Location: LCCOMB_X40_Y23_N24
\Mux17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (fila_sync1(1) & (!fila_sync1(2) & (!col_idx(1) & col_idx(0)))) # (!fila_sync1(1) & ((col_idx(0)) # ((fila_sync1(2) & col_idx(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fila_sync1(1),
	datab => fila_sync1(2),
	datac => col_idx(1),
	datad => col_idx(0),
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X40_Y23_N6
\Mux10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (!fila_sync1(2) & (!fila_sync1(3) & (fila_sync1(0) $ (fila_sync1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fila_sync1(0),
	datab => fila_sync1(2),
	datac => fila_sync1(3),
	datad => fila_sync1(1),
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X39_Y23_N20
\Mux17~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux17~1_combout\ = (col_idx(1) & (((fila_sync1(1))) # (!fila_sync1(2)))) # (!col_idx(1) & (col_idx(0) & (fila_sync1(2) $ (!fila_sync1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => col_idx(1),
	datab => fila_sync1(2),
	datac => fila_sync1(1),
	datad => col_idx(0),
	combout => \Mux17~1_combout\);

-- Location: LCCOMB_X39_Y23_N16
\Mux17~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux17~2_combout\ = \Mux17~1_combout\ $ (((fila_sync1(3) & \Mux17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~1_combout\,
	datab => fila_sync1(3),
	datad => \Mux17~0_combout\,
	combout => \Mux17~2_combout\);

-- Location: LCCOMB_X39_Y23_N10
\Mux17~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux17~3_combout\ = (\Mux17~2_combout\) # ((\Mux17~0_combout\ & (fila_sync1(0))) # (!\Mux17~0_combout\ & ((!\Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fila_sync1(0),
	datab => \Mux17~0_combout\,
	datac => \Mux10~0_combout\,
	datad => \Mux17~2_combout\,
	combout => \Mux17~3_combout\);

-- Location: FF_X39_Y23_N11
\dato_out[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux17~3_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \dato_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dato_out[1]~reg0_q\);

-- Location: LCCOMB_X39_Y23_N12
\Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (!fila_sync1(1) & (!fila_sync1(3) & (fila_sync1(0) & !fila_sync1(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fila_sync1(1),
	datab => fila_sync1(3),
	datac => fila_sync1(0),
	datad => fila_sync1(2),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X39_Y23_N6
\Mux16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (col_idx(1) & ((col_idx(0)) # ((!\Mux11~0_combout\)))) # (!col_idx(1) & (!col_idx(0) & ((!\Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => col_idx(1),
	datab => col_idx(0),
	datac => \Mux11~0_combout\,
	datad => \Mux5~0_combout\,
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X39_Y23_N24
\Mux16~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux16~1_combout\ = (col_idx(0) & ((\Mux16~0_combout\ & ((!\Mux10~0_combout\))) # (!\Mux16~0_combout\ & (!\Mux8~0_combout\)))) # (!col_idx(0) & (((\Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~0_combout\,
	datab => col_idx(0),
	datac => \Mux10~0_combout\,
	datad => \Mux16~0_combout\,
	combout => \Mux16~1_combout\);

-- Location: FF_X39_Y23_N25
\dato_out[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux16~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \dato_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dato_out[2]~reg0_q\);

-- Location: LCCOMB_X39_Y23_N4
\Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (!fila_sync1(2) & ((fila_sync1(1) & (!fila_sync1(0) & !fila_sync1(3))) # (!fila_sync1(1) & (fila_sync1(0) $ (fila_sync1(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fila_sync1(1),
	datab => fila_sync1(0),
	datac => fila_sync1(3),
	datad => fila_sync1(2),
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X40_Y23_N22
\Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (!fila_sync1(3) & ((fila_sync1(0) & (!fila_sync1(2) & !fila_sync1(1))) # (!fila_sync1(0) & (fila_sync1(2) $ (fila_sync1(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fila_sync1(0),
	datab => fila_sync1(2),
	datac => fila_sync1(3),
	datad => fila_sync1(1),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X40_Y23_N28
\Mux15~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (col_idx(0) & (((col_idx(1))))) # (!col_idx(0) & ((col_idx(1) & ((!\Mux10~0_combout\))) # (!col_idx(1) & (!\Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~0_combout\,
	datab => col_idx(0),
	datac => col_idx(1),
	datad => \Mux10~0_combout\,
	combout => \Mux15~1_combout\);

-- Location: LCCOMB_X39_Y23_N2
\Mux15~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux15~2_combout\ = (\Mux15~1_combout\) # ((col_idx(0) & !\Mux7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => col_idx(0),
	datac => \Mux7~0_combout\,
	datad => \Mux15~1_combout\,
	combout => \Mux15~2_combout\);

-- Location: FF_X39_Y23_N3
\dato_out[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux15~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \dato_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dato_out[3]~reg0_q\);

-- Location: FF_X39_Y23_N17
\dato_valid~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_out[0]~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dato_valid~reg0_q\);

ww_columna(0) <= \columna[0]~output_o\;

ww_columna(1) <= \columna[1]~output_o\;

ww_columna(2) <= \columna[2]~output_o\;

ww_columna(3) <= \columna[3]~output_o\;

ww_dato_out(0) <= \dato_out[0]~output_o\;

ww_dato_out(1) <= \dato_out[1]~output_o\;

ww_dato_out(2) <= \dato_out[2]~output_o\;

ww_dato_out(3) <= \dato_out[3]~output_o\;

ww_dato_valid <= \dato_valid~output_o\;
END structure;


