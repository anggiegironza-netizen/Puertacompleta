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

-- DATE "05/07/2026 23:51:05"

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

ENTITY 	controlador_servo IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	led_entrega : IN std_logic;
	servo_pwm : OUT std_logic
	);
END controlador_servo;

-- Design Ports Information
-- servo_pwm	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_entrega	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF controlador_servo IS
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
SIGNAL ww_reset : std_logic;
SIGNAL ww_led_entrega : std_logic;
SIGNAL ww_servo_pwm : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \servo_pwm~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \counter[0]~20_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \counter[14]~49\ : std_logic;
SIGNAL \counter[15]~50_combout\ : std_logic;
SIGNAL \counter[15]~51\ : std_logic;
SIGNAL \counter[16]~52_combout\ : std_logic;
SIGNAL \counter[16]~53\ : std_logic;
SIGNAL \counter[17]~54_combout\ : std_logic;
SIGNAL \counter[17]~55\ : std_logic;
SIGNAL \counter[18]~56_combout\ : std_logic;
SIGNAL \counter[18]~57\ : std_logic;
SIGNAL \counter[19]~58_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \counter[0]~21\ : std_logic;
SIGNAL \counter[1]~22_combout\ : std_logic;
SIGNAL \counter[1]~23\ : std_logic;
SIGNAL \counter[2]~24_combout\ : std_logic;
SIGNAL \counter[2]~25\ : std_logic;
SIGNAL \counter[3]~26_combout\ : std_logic;
SIGNAL \counter[3]~27\ : std_logic;
SIGNAL \counter[4]~28_combout\ : std_logic;
SIGNAL \counter[4]~29\ : std_logic;
SIGNAL \counter[5]~30_combout\ : std_logic;
SIGNAL \counter[5]~31\ : std_logic;
SIGNAL \counter[6]~32_combout\ : std_logic;
SIGNAL \counter[6]~33\ : std_logic;
SIGNAL \counter[7]~34_combout\ : std_logic;
SIGNAL \counter[7]~35\ : std_logic;
SIGNAL \counter[8]~36_combout\ : std_logic;
SIGNAL \counter[8]~37\ : std_logic;
SIGNAL \counter[9]~38_combout\ : std_logic;
SIGNAL \counter[9]~39\ : std_logic;
SIGNAL \counter[10]~40_combout\ : std_logic;
SIGNAL \counter[10]~41\ : std_logic;
SIGNAL \counter[11]~42_combout\ : std_logic;
SIGNAL \counter[11]~43\ : std_logic;
SIGNAL \counter[12]~44_combout\ : std_logic;
SIGNAL \counter[12]~45\ : std_logic;
SIGNAL \counter[13]~46_combout\ : std_logic;
SIGNAL \counter[13]~47\ : std_logic;
SIGNAL \counter[14]~48_combout\ : std_logic;
SIGNAL \led_entrega~input_o\ : std_logic;
SIGNAL \pulse_width[10]~feeder_combout\ : std_logic;
SIGNAL \LessThan1~7_combout\ : std_logic;
SIGNAL \LessThan1~8_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~4_combout\ : std_logic;
SIGNAL \LessThan1~5_combout\ : std_logic;
SIGNAL \LessThan1~6_combout\ : std_logic;
SIGNAL \LessThan1~9_combout\ : std_logic;
SIGNAL \servo_pwm~reg0_q\ : std_logic;
SIGNAL pulse_width : std_logic_vector(16 DOWNTO 0);
SIGNAL counter : std_logic_vector(19 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_led_entrega <= led_entrega;
servo_pwm <= ww_servo_pwm;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;

-- Location: IOOBUF_X41_Y18_N16
\servo_pwm~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \servo_pwm~reg0_q\,
	devoe => ww_devoe,
	o => \servo_pwm~output_o\);

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

-- Location: LCCOMB_X39_Y19_N12
\counter[0]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[0]~20_combout\ = counter(0) $ (VCC)
-- \counter[0]~21\ = CARRY(counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datad => VCC,
	combout => \counter[0]~20_combout\,
	cout => \counter[0]~21\);

-- Location: IOIBUF_X0_Y14_N8
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G2
\reset~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: LCCOMB_X39_Y18_N8
\counter[14]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[14]~48_combout\ = (counter(14) & (\counter[13]~47\ $ (GND))) # (!counter(14) & (!\counter[13]~47\ & VCC))
-- \counter[14]~49\ = CARRY((counter(14) & !\counter[13]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(14),
	datad => VCC,
	cin => \counter[13]~47\,
	combout => \counter[14]~48_combout\,
	cout => \counter[14]~49\);

-- Location: LCCOMB_X39_Y18_N10
\counter[15]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[15]~50_combout\ = (counter(15) & (!\counter[14]~49\)) # (!counter(15) & ((\counter[14]~49\) # (GND)))
-- \counter[15]~51\ = CARRY((!\counter[14]~49\) # (!counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(15),
	datad => VCC,
	cin => \counter[14]~49\,
	combout => \counter[15]~50_combout\,
	cout => \counter[15]~51\);

-- Location: FF_X39_Y18_N11
\counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[15]~50_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(15));

-- Location: LCCOMB_X39_Y18_N12
\counter[16]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[16]~52_combout\ = (counter(16) & (\counter[15]~51\ $ (GND))) # (!counter(16) & (!\counter[15]~51\ & VCC))
-- \counter[16]~53\ = CARRY((counter(16) & !\counter[15]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(16),
	datad => VCC,
	cin => \counter[15]~51\,
	combout => \counter[16]~52_combout\,
	cout => \counter[16]~53\);

-- Location: FF_X39_Y18_N13
\counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[16]~52_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(16));

-- Location: LCCOMB_X39_Y18_N14
\counter[17]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[17]~54_combout\ = (counter(17) & (!\counter[16]~53\)) # (!counter(17) & ((\counter[16]~53\) # (GND)))
-- \counter[17]~55\ = CARRY((!\counter[16]~53\) # (!counter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(17),
	datad => VCC,
	cin => \counter[16]~53\,
	combout => \counter[17]~54_combout\,
	cout => \counter[17]~55\);

-- Location: FF_X39_Y18_N15
\counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[17]~54_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(17));

-- Location: LCCOMB_X39_Y18_N16
\counter[18]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[18]~56_combout\ = (counter(18) & (\counter[17]~55\ $ (GND))) # (!counter(18) & (!\counter[17]~55\ & VCC))
-- \counter[18]~57\ = CARRY((counter(18) & !\counter[17]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(18),
	datad => VCC,
	cin => \counter[17]~55\,
	combout => \counter[18]~56_combout\,
	cout => \counter[18]~57\);

-- Location: FF_X39_Y18_N17
\counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[18]~56_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(18));

-- Location: LCCOMB_X39_Y18_N18
\counter[19]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[19]~58_combout\ = \counter[18]~57\ $ (counter(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => counter(19),
	cin => \counter[18]~57\,
	combout => \counter[19]~58_combout\);

-- Location: FF_X39_Y18_N19
\counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[19]~58_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(19));

-- Location: LCCOMB_X39_Y18_N30
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (counter(16) & (counter(19) & (counter(17) & counter(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(16),
	datab => counter(19),
	datac => counter(17),
	datad => counter(18),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X39_Y18_N22
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!counter(13) & (!counter(11) & (!counter(12) & !counter(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(13),
	datab => counter(11),
	datac => counter(12),
	datad => counter(10),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X39_Y19_N2
\LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!counter(8) & (!counter(7) & !counter(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(8),
	datac => counter(7),
	datad => counter(6),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X39_Y19_N0
\LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (((!counter(0)) # (!counter(1))) # (!counter(4))) # (!counter(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datab => counter(4),
	datac => counter(1),
	datad => counter(0),
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X39_Y19_N6
\LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = ((\LessThan0~3_combout\) # (!counter(3))) # (!counter(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(2),
	datac => counter(3),
	datad => \LessThan0~3_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X39_Y18_N20
\LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (\LessThan0~0_combout\ & (((\LessThan0~2_combout\ & \LessThan0~4_combout\)) # (!counter(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => counter(9),
	datac => \LessThan0~2_combout\,
	datad => \LessThan0~4_combout\,
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X39_Y18_N26
\LessThan0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (\LessThan0~1_combout\ & ((counter(15)) # ((counter(14) & !\LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~1_combout\,
	datab => counter(15),
	datac => counter(14),
	datad => \LessThan0~5_combout\,
	combout => \LessThan0~6_combout\);

-- Location: FF_X39_Y19_N13
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[0]~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: LCCOMB_X39_Y19_N14
\counter[1]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[1]~22_combout\ = (counter(1) & (!\counter[0]~21\)) # (!counter(1) & ((\counter[0]~21\) # (GND)))
-- \counter[1]~23\ = CARRY((!\counter[0]~21\) # (!counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datad => VCC,
	cin => \counter[0]~21\,
	combout => \counter[1]~22_combout\,
	cout => \counter[1]~23\);

-- Location: FF_X39_Y19_N15
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[1]~22_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: LCCOMB_X39_Y19_N16
\counter[2]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[2]~24_combout\ = (counter(2) & (\counter[1]~23\ $ (GND))) # (!counter(2) & (!\counter[1]~23\ & VCC))
-- \counter[2]~25\ = CARRY((counter(2) & !\counter[1]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(2),
	datad => VCC,
	cin => \counter[1]~23\,
	combout => \counter[2]~24_combout\,
	cout => \counter[2]~25\);

-- Location: FF_X39_Y19_N17
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[2]~24_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: LCCOMB_X39_Y19_N18
\counter[3]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[3]~26_combout\ = (counter(3) & (!\counter[2]~25\)) # (!counter(3) & ((\counter[2]~25\) # (GND)))
-- \counter[3]~27\ = CARRY((!\counter[2]~25\) # (!counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(3),
	datad => VCC,
	cin => \counter[2]~25\,
	combout => \counter[3]~26_combout\,
	cout => \counter[3]~27\);

-- Location: FF_X39_Y19_N19
\counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[3]~26_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(3));

-- Location: LCCOMB_X39_Y19_N20
\counter[4]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[4]~28_combout\ = (counter(4) & (\counter[3]~27\ $ (GND))) # (!counter(4) & (!\counter[3]~27\ & VCC))
-- \counter[4]~29\ = CARRY((counter(4) & !\counter[3]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(4),
	datad => VCC,
	cin => \counter[3]~27\,
	combout => \counter[4]~28_combout\,
	cout => \counter[4]~29\);

-- Location: FF_X39_Y19_N21
\counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[4]~28_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(4));

-- Location: LCCOMB_X39_Y19_N22
\counter[5]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[5]~30_combout\ = (counter(5) & (!\counter[4]~29\)) # (!counter(5) & ((\counter[4]~29\) # (GND)))
-- \counter[5]~31\ = CARRY((!\counter[4]~29\) # (!counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(5),
	datad => VCC,
	cin => \counter[4]~29\,
	combout => \counter[5]~30_combout\,
	cout => \counter[5]~31\);

-- Location: FF_X39_Y19_N23
\counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[5]~30_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(5));

-- Location: LCCOMB_X39_Y19_N24
\counter[6]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[6]~32_combout\ = (counter(6) & (\counter[5]~31\ $ (GND))) # (!counter(6) & (!\counter[5]~31\ & VCC))
-- \counter[6]~33\ = CARRY((counter(6) & !\counter[5]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(6),
	datad => VCC,
	cin => \counter[5]~31\,
	combout => \counter[6]~32_combout\,
	cout => \counter[6]~33\);

-- Location: FF_X39_Y19_N25
\counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[6]~32_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(6));

-- Location: LCCOMB_X39_Y19_N26
\counter[7]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[7]~34_combout\ = (counter(7) & (!\counter[6]~33\)) # (!counter(7) & ((\counter[6]~33\) # (GND)))
-- \counter[7]~35\ = CARRY((!\counter[6]~33\) # (!counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(7),
	datad => VCC,
	cin => \counter[6]~33\,
	combout => \counter[7]~34_combout\,
	cout => \counter[7]~35\);

-- Location: FF_X39_Y19_N27
\counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[7]~34_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(7));

-- Location: LCCOMB_X39_Y19_N28
\counter[8]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[8]~36_combout\ = (counter(8) & (\counter[7]~35\ $ (GND))) # (!counter(8) & (!\counter[7]~35\ & VCC))
-- \counter[8]~37\ = CARRY((counter(8) & !\counter[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(8),
	datad => VCC,
	cin => \counter[7]~35\,
	combout => \counter[8]~36_combout\,
	cout => \counter[8]~37\);

-- Location: FF_X39_Y19_N29
\counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[8]~36_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(8));

-- Location: LCCOMB_X39_Y19_N30
\counter[9]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[9]~38_combout\ = (counter(9) & (!\counter[8]~37\)) # (!counter(9) & ((\counter[8]~37\) # (GND)))
-- \counter[9]~39\ = CARRY((!\counter[8]~37\) # (!counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(9),
	datad => VCC,
	cin => \counter[8]~37\,
	combout => \counter[9]~38_combout\,
	cout => \counter[9]~39\);

-- Location: FF_X39_Y19_N31
\counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[9]~38_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(9));

-- Location: LCCOMB_X39_Y18_N0
\counter[10]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[10]~40_combout\ = (counter(10) & (\counter[9]~39\ $ (GND))) # (!counter(10) & (!\counter[9]~39\ & VCC))
-- \counter[10]~41\ = CARRY((counter(10) & !\counter[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(10),
	datad => VCC,
	cin => \counter[9]~39\,
	combout => \counter[10]~40_combout\,
	cout => \counter[10]~41\);

-- Location: FF_X39_Y18_N1
\counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[10]~40_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(10));

-- Location: LCCOMB_X39_Y18_N2
\counter[11]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[11]~42_combout\ = (counter(11) & (!\counter[10]~41\)) # (!counter(11) & ((\counter[10]~41\) # (GND)))
-- \counter[11]~43\ = CARRY((!\counter[10]~41\) # (!counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(11),
	datad => VCC,
	cin => \counter[10]~41\,
	combout => \counter[11]~42_combout\,
	cout => \counter[11]~43\);

-- Location: FF_X39_Y18_N3
\counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[11]~42_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(11));

-- Location: LCCOMB_X39_Y18_N4
\counter[12]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[12]~44_combout\ = (counter(12) & (\counter[11]~43\ $ (GND))) # (!counter(12) & (!\counter[11]~43\ & VCC))
-- \counter[12]~45\ = CARRY((counter(12) & !\counter[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(12),
	datad => VCC,
	cin => \counter[11]~43\,
	combout => \counter[12]~44_combout\,
	cout => \counter[12]~45\);

-- Location: FF_X39_Y18_N5
\counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[12]~44_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(12));

-- Location: LCCOMB_X39_Y18_N6
\counter[13]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[13]~46_combout\ = (counter(13) & (!\counter[12]~45\)) # (!counter(13) & ((\counter[12]~45\) # (GND)))
-- \counter[13]~47\ = CARRY((!\counter[12]~45\) # (!counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(13),
	datad => VCC,
	cin => \counter[12]~45\,
	combout => \counter[13]~46_combout\,
	cout => \counter[13]~47\);

-- Location: FF_X39_Y18_N7
\counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[13]~46_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(13));

-- Location: FF_X39_Y18_N9
\counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[14]~48_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(14));

-- Location: IOIBUF_X41_Y18_N22
\led_entrega~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_led_entrega,
	o => \led_entrega~input_o\);

-- Location: LCCOMB_X40_Y18_N22
\pulse_width[10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pulse_width[10]~feeder_combout\ = \led_entrega~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \led_entrega~input_o\,
	combout => \pulse_width[10]~feeder_combout\);

-- Location: FF_X40_Y18_N23
\pulse_width[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pulse_width[10]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pulse_width(10));

-- Location: LCCOMB_X40_Y18_N12
\LessThan1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~7_combout\ = (!counter(12) & !counter(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(12),
	datac => counter(13),
	combout => \LessThan1~7_combout\);

-- Location: LCCOMB_X40_Y18_N10
\LessThan1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~8_combout\ = (!counter(14) & (!counter(11) & (pulse_width(10) & \LessThan1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(14),
	datab => counter(11),
	datac => pulse_width(10),
	datad => \LessThan1~7_combout\,
	combout => \LessThan1~8_combout\);

-- Location: LCCOMB_X39_Y18_N24
\LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (!counter(19) & (!counter(17) & !counter(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(19),
	datac => counter(17),
	datad => counter(18),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X39_Y19_N8
\LessThan1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (!counter(7) & (((!counter(4) & !counter(5))) # (!counter(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(4),
	datab => counter(5),
	datac => counter(7),
	datad => counter(6),
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X39_Y19_N10
\LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = ((\LessThan1~2_combout\) # (!counter(8))) # (!counter(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(9),
	datab => counter(8),
	datac => \LessThan1~2_combout\,
	combout => \LessThan1~3_combout\);

-- Location: LCCOMB_X40_Y18_N0
\LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (counter(16) & (!counter(15) & (pulse_width(10)))) # (!counter(16) & (((pulse_width(10)) # (!counter(14))) # (!counter(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(16),
	datab => counter(15),
	datac => pulse_width(10),
	datad => counter(14),
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X40_Y18_N26
\LessThan1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~4_combout\ = (\LessThan1~1_combout\) # ((!counter(16) & (\LessThan0~0_combout\ & \LessThan1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(16),
	datab => \LessThan0~0_combout\,
	datac => \LessThan1~3_combout\,
	datad => \LessThan1~1_combout\,
	combout => \LessThan1~4_combout\);

-- Location: LCCOMB_X39_Y19_N4
\LessThan1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~5_combout\ = (!counter(8) & (((!counter(6) & !counter(5))) # (!counter(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(6),
	datab => counter(5),
	datac => counter(7),
	datad => counter(8),
	combout => \LessThan1~5_combout\);

-- Location: LCCOMB_X39_Y18_N28
\LessThan1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~6_combout\ = ((\LessThan1~5_combout\) # (!counter(9))) # (!counter(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(10),
	datac => counter(9),
	datad => \LessThan1~5_combout\,
	combout => \LessThan1~6_combout\);

-- Location: LCCOMB_X40_Y18_N16
\LessThan1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~9_combout\ = (\LessThan1~0_combout\ & ((\LessThan1~4_combout\) # ((\LessThan1~8_combout\ & \LessThan1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~8_combout\,
	datab => \LessThan1~0_combout\,
	datac => \LessThan1~4_combout\,
	datad => \LessThan1~6_combout\,
	combout => \LessThan1~9_combout\);

-- Location: FF_X40_Y18_N17
\servo_pwm~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LessThan1~9_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo_pwm~reg0_q\);

ww_servo_pwm <= \servo_pwm~output_o\;
END structure;


