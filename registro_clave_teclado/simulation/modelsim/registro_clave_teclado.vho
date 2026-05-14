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

-- DATE "05/07/2026 22:58:14"

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

ENTITY 	registro_clave_teclado IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	limpiar : IN std_logic;
	cargar_digito : IN std_logic;
	digito_in : IN std_logic_vector(3 DOWNTO 0);
	hex0_out : OUT std_logic_vector(3 DOWNTO 0);
	hex1_out : OUT std_logic_vector(3 DOWNTO 0);
	hex2_out : OUT std_logic_vector(3 DOWNTO 0);
	hex3_out : OUT std_logic_vector(3 DOWNTO 0);
	clave_out : OUT std_logic_vector(15 DOWNTO 0);
	cuenta_digitos : OUT STD.STANDARD.integer range 0 TO 4;
	completo : OUT std_logic
	);
END registro_clave_teclado;

-- Design Ports Information
-- hex0_out[0]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0_out[1]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0_out[2]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0_out[3]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1_out[0]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1_out[1]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1_out[2]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1_out[3]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2_out[0]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2_out[1]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2_out[2]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2_out[3]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3_out[0]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3_out[1]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3_out[2]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3_out[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clave_out[0]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clave_out[1]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clave_out[2]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clave_out[3]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clave_out[4]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clave_out[5]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clave_out[6]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clave_out[7]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clave_out[8]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clave_out[9]	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clave_out[10]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clave_out[11]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clave_out[12]	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clave_out[13]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clave_out[14]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clave_out[15]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cuenta_digitos[0]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cuenta_digitos[1]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cuenta_digitos[2]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- completo	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digito_in[0]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- limpiar	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cargar_digito	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digito_in[1]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digito_in[2]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digito_in[3]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF registro_clave_teclado IS
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
SIGNAL ww_limpiar : std_logic;
SIGNAL ww_cargar_digito : std_logic;
SIGNAL ww_digito_in : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_hex0_out : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_hex1_out : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_hex2_out : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_hex3_out : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_clave_out : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_cuenta_digitos : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_completo : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \hex0_out[0]~output_o\ : std_logic;
SIGNAL \hex0_out[1]~output_o\ : std_logic;
SIGNAL \hex0_out[2]~output_o\ : std_logic;
SIGNAL \hex0_out[3]~output_o\ : std_logic;
SIGNAL \hex1_out[0]~output_o\ : std_logic;
SIGNAL \hex1_out[1]~output_o\ : std_logic;
SIGNAL \hex1_out[2]~output_o\ : std_logic;
SIGNAL \hex1_out[3]~output_o\ : std_logic;
SIGNAL \hex2_out[0]~output_o\ : std_logic;
SIGNAL \hex2_out[1]~output_o\ : std_logic;
SIGNAL \hex2_out[2]~output_o\ : std_logic;
SIGNAL \hex2_out[3]~output_o\ : std_logic;
SIGNAL \hex3_out[0]~output_o\ : std_logic;
SIGNAL \hex3_out[1]~output_o\ : std_logic;
SIGNAL \hex3_out[2]~output_o\ : std_logic;
SIGNAL \hex3_out[3]~output_o\ : std_logic;
SIGNAL \clave_out[0]~output_o\ : std_logic;
SIGNAL \clave_out[1]~output_o\ : std_logic;
SIGNAL \clave_out[2]~output_o\ : std_logic;
SIGNAL \clave_out[3]~output_o\ : std_logic;
SIGNAL \clave_out[4]~output_o\ : std_logic;
SIGNAL \clave_out[5]~output_o\ : std_logic;
SIGNAL \clave_out[6]~output_o\ : std_logic;
SIGNAL \clave_out[7]~output_o\ : std_logic;
SIGNAL \clave_out[8]~output_o\ : std_logic;
SIGNAL \clave_out[9]~output_o\ : std_logic;
SIGNAL \clave_out[10]~output_o\ : std_logic;
SIGNAL \clave_out[11]~output_o\ : std_logic;
SIGNAL \clave_out[12]~output_o\ : std_logic;
SIGNAL \clave_out[13]~output_o\ : std_logic;
SIGNAL \clave_out[14]~output_o\ : std_logic;
SIGNAL \clave_out[15]~output_o\ : std_logic;
SIGNAL \cuenta_digitos[0]~output_o\ : std_logic;
SIGNAL \cuenta_digitos[1]~output_o\ : std_logic;
SIGNAL \cuenta_digitos[2]~output_o\ : std_logic;
SIGNAL \completo~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \limpiar~input_o\ : std_logic;
SIGNAL \digito_in[0]~input_o\ : std_logic;
SIGNAL \d0~0_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \cargar_digito~input_o\ : std_logic;
SIGNAL \contador~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \contador~1_combout\ : std_logic;
SIGNAL \d0[0]~1_combout\ : std_logic;
SIGNAL \digito_in[1]~input_o\ : std_logic;
SIGNAL \d0~2_combout\ : std_logic;
SIGNAL \digito_in[2]~input_o\ : std_logic;
SIGNAL \d0~3_combout\ : std_logic;
SIGNAL \digito_in[3]~input_o\ : std_logic;
SIGNAL \d0~4_combout\ : std_logic;
SIGNAL \d1~0_combout\ : std_logic;
SIGNAL \d1~1_combout\ : std_logic;
SIGNAL \d1~2_combout\ : std_logic;
SIGNAL \d1~3_combout\ : std_logic;
SIGNAL \d2~0_combout\ : std_logic;
SIGNAL \d2~1_combout\ : std_logic;
SIGNAL \d2~2_combout\ : std_logic;
SIGNAL \d2~3_combout\ : std_logic;
SIGNAL \d3~0_combout\ : std_logic;
SIGNAL \d3~1_combout\ : std_logic;
SIGNAL \d3~2_combout\ : std_logic;
SIGNAL \d3~3_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL d3 : std_logic_vector(3 DOWNTO 0);
SIGNAL d2 : std_logic_vector(3 DOWNTO 0);
SIGNAL d1 : std_logic_vector(3 DOWNTO 0);
SIGNAL d0 : std_logic_vector(3 DOWNTO 0);
SIGNAL contador : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_limpiar <= limpiar;
ww_cargar_digito <= cargar_digito;
ww_digito_in <= digito_in;
hex0_out <= ww_hex0_out;
hex1_out <= ww_hex1_out;
hex2_out <= ww_hex2_out;
hex3_out <= ww_hex3_out;
clave_out <= ww_clave_out;
cuenta_digitos <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_cuenta_digitos));
completo <= ww_completo;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;

-- Location: IOOBUF_X41_Y2_N9
\hex0_out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => d0(0),
	devoe => ww_devoe,
	o => \hex0_out[0]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\hex0_out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => d0(1),
	devoe => ww_devoe,
	o => \hex0_out[1]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\hex0_out[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => d0(2),
	devoe => ww_devoe,
	o => \hex0_out[2]~output_o\);

-- Location: IOOBUF_X26_Y0_N30
\hex0_out[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => d0(3),
	devoe => ww_devoe,
	o => \hex0_out[3]~output_o\);

-- Location: IOOBUF_X32_Y0_N30
\hex1_out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => d1(0),
	devoe => ww_devoe,
	o => \hex1_out[0]~output_o\);

-- Location: IOOBUF_X41_Y2_N2
\hex1_out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => d1(1),
	devoe => ww_devoe,
	o => \hex1_out[1]~output_o\);

-- Location: IOOBUF_X28_Y0_N30
\hex1_out[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => d1(2),
	devoe => ww_devoe,
	o => \hex1_out[2]~output_o\);

-- Location: IOOBUF_X39_Y0_N16
\hex1_out[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => d1(3),
	devoe => ww_devoe,
	o => \hex1_out[3]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\hex2_out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => d2(0),
	devoe => ww_devoe,
	o => \hex2_out[0]~output_o\);

-- Location: IOOBUF_X37_Y0_N16
\hex2_out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => d2(1),
	devoe => ww_devoe,
	o => \hex2_out[1]~output_o\);

-- Location: IOOBUF_X23_Y0_N23
\hex2_out[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => d2(2),
	devoe => ww_devoe,
	o => \hex2_out[2]~output_o\);

-- Location: IOOBUF_X32_Y0_N2
\hex2_out[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => d2(3),
	devoe => ww_devoe,
	o => \hex2_out[3]~output_o\);

-- Location: IOOBUF_X39_Y0_N30
\hex3_out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => d3(0),
	devoe => ww_devoe,
	o => \hex3_out[0]~output_o\);

-- Location: IOOBUF_X26_Y0_N23
\hex3_out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => d3(1),
	devoe => ww_devoe,
	o => \hex3_out[1]~output_o\);

-- Location: IOOBUF_X30_Y0_N30
\hex3_out[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => d3(2),
	devoe => ww_devoe,
	o => \hex3_out[2]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\hex3_out[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => d3(3),
	devoe => ww_devoe,
	o => \hex3_out[3]~output_o\);

-- Location: IOOBUF_X41_Y2_N23
\clave_out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => d0(0),
	devoe => ww_devoe,
	o => \clave_out[0]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\clave_out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => d0(1),
	devoe => ww_devoe,
	o => \clave_out[1]~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\clave_out[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => d0(2),
	devoe => ww_devoe,
	o => \clave_out[2]~output_o\);

-- Location: IOOBUF_X26_Y0_N16
\clave_out[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => d0(3),
	devoe => ww_devoe,
	o => \clave_out[3]~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\clave_out[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => d1(0),
	devoe => ww_devoe,
	o => \clave_out[4]~output_o\);

-- Location: IOOBUF_X41_Y2_N16
\clave_out[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => d1(1),
	devoe => ww_devoe,
	o => \clave_out[5]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\clave_out[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => d1(2),
	devoe => ww_devoe,
	o => \clave_out[6]~output_o\);

-- Location: IOOBUF_X39_Y0_N9
\clave_out[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => d1(3),
	devoe => ww_devoe,
	o => \clave_out[7]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\clave_out[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => d2(0),
	devoe => ww_devoe,
	o => \clave_out[8]~output_o\);

-- Location: IOOBUF_X37_Y0_N9
\clave_out[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => d2(1),
	devoe => ww_devoe,
	o => \clave_out[9]~output_o\);

-- Location: IOOBUF_X23_Y0_N30
\clave_out[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => d2(2),
	devoe => ww_devoe,
	o => \clave_out[10]~output_o\);

-- Location: IOOBUF_X35_Y0_N23
\clave_out[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => d2(3),
	devoe => ww_devoe,
	o => \clave_out[11]~output_o\);

-- Location: IOOBUF_X39_Y0_N23
\clave_out[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => d3(0),
	devoe => ww_devoe,
	o => \clave_out[12]~output_o\);

-- Location: IOOBUF_X23_Y0_N2
\clave_out[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => d3(1),
	devoe => ww_devoe,
	o => \clave_out[13]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\clave_out[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => d3(2),
	devoe => ww_devoe,
	o => \clave_out[14]~output_o\);

-- Location: IOOBUF_X28_Y0_N16
\clave_out[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => d3(3),
	devoe => ww_devoe,
	o => \clave_out[15]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\cuenta_digitos[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contador(0),
	devoe => ww_devoe,
	o => \cuenta_digitos[0]~output_o\);

-- Location: IOOBUF_X30_Y0_N16
\cuenta_digitos[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contador(1),
	devoe => ww_devoe,
	o => \cuenta_digitos[1]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\cuenta_digitos[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contador(2),
	devoe => ww_devoe,
	o => \cuenta_digitos[2]~output_o\);

-- Location: IOOBUF_X28_Y0_N9
\completo~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~0_combout\,
	devoe => ww_devoe,
	o => \completo~output_o\);

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

-- Location: IOIBUF_X35_Y0_N29
\limpiar~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_limpiar,
	o => \limpiar~input_o\);

-- Location: IOIBUF_X37_Y0_N1
\digito_in[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_digito_in(0),
	o => \digito_in[0]~input_o\);

-- Location: LCCOMB_X36_Y1_N4
\d0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \d0~0_combout\ = (!\limpiar~input_o\ & \digito_in[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \limpiar~input_o\,
	datac => \digito_in[0]~input_o\,
	combout => \d0~0_combout\);

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

-- Location: IOIBUF_X35_Y0_N15
\cargar_digito~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cargar_digito,
	o => \cargar_digito~input_o\);

-- Location: LCCOMB_X35_Y1_N0
\contador~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador~0_combout\ = (!\limpiar~input_o\ & !contador(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \limpiar~input_o\,
	datac => contador(0),
	combout => \contador~0_combout\);

-- Location: FF_X35_Y1_N1
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
	ena => \d0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(0));

-- Location: LCCOMB_X35_Y1_N8
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = contador(1) $ (contador(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => contador(1),
	datad => contador(0),
	combout => \Add0~0_combout\);

-- Location: FF_X35_Y1_N9
\contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \limpiar~input_o\,
	ena => \d0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(1));

-- Location: LCCOMB_X35_Y1_N18
\contador~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador~1_combout\ = (contador(2)) # ((\cargar_digito~input_o\ & (contador(1) & contador(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cargar_digito~input_o\,
	datab => contador(1),
	datac => contador(2),
	datad => contador(0),
	combout => \contador~1_combout\);

-- Location: FF_X35_Y1_N19
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
	sclr => \limpiar~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(2));

-- Location: LCCOMB_X35_Y1_N6
\d0[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \d0[0]~1_combout\ = (\limpiar~input_o\) # ((\cargar_digito~input_o\ & !contador(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cargar_digito~input_o\,
	datac => \limpiar~input_o\,
	datad => contador(2),
	combout => \d0[0]~1_combout\);

-- Location: FF_X36_Y1_N5
\d0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d0~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \d0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d0(0));

-- Location: IOIBUF_X35_Y0_N1
\digito_in[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_digito_in(1),
	o => \digito_in[1]~input_o\);

-- Location: LCCOMB_X35_Y1_N12
\d0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \d0~2_combout\ = (!\limpiar~input_o\ & \digito_in[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \limpiar~input_o\,
	datac => \digito_in[1]~input_o\,
	combout => \d0~2_combout\);

-- Location: FF_X35_Y1_N13
\d0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d0~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \d0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d0(1));

-- Location: IOIBUF_X35_Y0_N8
\digito_in[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_digito_in(2),
	o => \digito_in[2]~input_o\);

-- Location: LCCOMB_X35_Y1_N26
\d0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \d0~3_combout\ = (!\limpiar~input_o\ & \digito_in[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \limpiar~input_o\,
	datac => \digito_in[2]~input_o\,
	combout => \d0~3_combout\);

-- Location: FF_X35_Y1_N27
\d0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d0~3_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \d0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d0(2));

-- Location: IOIBUF_X37_Y0_N22
\digito_in[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_digito_in(3),
	o => \digito_in[3]~input_o\);

-- Location: LCCOMB_X36_Y1_N2
\d0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \d0~4_combout\ = (!\limpiar~input_o\ & \digito_in[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \limpiar~input_o\,
	datad => \digito_in[3]~input_o\,
	combout => \d0~4_combout\);

-- Location: FF_X36_Y1_N3
\d0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d0~4_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \d0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d0(3));

-- Location: LCCOMB_X35_Y1_N20
\d1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \d1~0_combout\ = (!\limpiar~input_o\ & d0(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \limpiar~input_o\,
	datad => d0(0),
	combout => \d1~0_combout\);

-- Location: FF_X35_Y1_N21
\d1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \d0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d1(0));

-- Location: LCCOMB_X35_Y1_N22
\d1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \d1~1_combout\ = (!\limpiar~input_o\ & d0(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \limpiar~input_o\,
	datad => d0(1),
	combout => \d1~1_combout\);

-- Location: FF_X35_Y1_N23
\d1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \d0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d1(1));

-- Location: LCCOMB_X35_Y1_N28
\d1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \d1~2_combout\ = (d0(2) & !\limpiar~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d0(2),
	datac => \limpiar~input_o\,
	combout => \d1~2_combout\);

-- Location: FF_X35_Y1_N29
\d1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \d0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d1(2));

-- Location: LCCOMB_X36_Y1_N16
\d1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \d1~3_combout\ = (!\limpiar~input_o\ & d0(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \limpiar~input_o\,
	datad => d0(3),
	combout => \d1~3_combout\);

-- Location: FF_X36_Y1_N17
\d1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d1~3_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \d0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d1(3));

-- Location: LCCOMB_X35_Y1_N2
\d2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \d2~0_combout\ = (!\limpiar~input_o\ & d1(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \limpiar~input_o\,
	datad => d1(0),
	combout => \d2~0_combout\);

-- Location: FF_X35_Y1_N3
\d2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d2~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \d0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d2(0));

-- Location: LCCOMB_X35_Y1_N16
\d2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \d2~1_combout\ = (d1(1) & !\limpiar~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d1(1),
	datac => \limpiar~input_o\,
	combout => \d2~1_combout\);

-- Location: FF_X35_Y1_N17
\d2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d2~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \d0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d2(1));

-- Location: LCCOMB_X35_Y1_N10
\d2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \d2~2_combout\ = (!\limpiar~input_o\ & d1(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \limpiar~input_o\,
	datad => d1(2),
	combout => \d2~2_combout\);

-- Location: FF_X35_Y1_N11
\d2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d2~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \d0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d2(2));

-- Location: LCCOMB_X36_Y1_N6
\d2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \d2~3_combout\ = (!\limpiar~input_o\ & d1(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \limpiar~input_o\,
	datad => d1(3),
	combout => \d2~3_combout\);

-- Location: FF_X36_Y1_N7
\d2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d2~3_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \d0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d2(3));

-- Location: LCCOMB_X35_Y1_N24
\d3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \d3~0_combout\ = (!\limpiar~input_o\ & d2(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \limpiar~input_o\,
	datad => d2(0),
	combout => \d3~0_combout\);

-- Location: FF_X35_Y1_N25
\d3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d3~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \d0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d3(0));

-- Location: LCCOMB_X35_Y1_N14
\d3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \d3~1_combout\ = (!\limpiar~input_o\ & d2(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \limpiar~input_o\,
	datad => d2(1),
	combout => \d3~1_combout\);

-- Location: FF_X35_Y1_N15
\d3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d3~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \d0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d3(1));

-- Location: LCCOMB_X35_Y1_N4
\d3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \d3~2_combout\ = (!\limpiar~input_o\ & d2(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \limpiar~input_o\,
	datad => d2(2),
	combout => \d3~2_combout\);

-- Location: FF_X35_Y1_N5
\d3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d3~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \d0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d3(2));

-- Location: LCCOMB_X35_Y1_N30
\d3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \d3~3_combout\ = (!\limpiar~input_o\ & d2(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \limpiar~input_o\,
	datad => d2(3),
	combout => \d3~3_combout\);

-- Location: FF_X35_Y1_N31
\d3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d3~3_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \d0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d3(3));

-- Location: LCCOMB_X31_Y1_N28
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!contador(1) & (!contador(0) & contador(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(1),
	datab => contador(0),
	datac => contador(2),
	combout => \Equal0~0_combout\);

ww_hex0_out(0) <= \hex0_out[0]~output_o\;

ww_hex0_out(1) <= \hex0_out[1]~output_o\;

ww_hex0_out(2) <= \hex0_out[2]~output_o\;

ww_hex0_out(3) <= \hex0_out[3]~output_o\;

ww_hex1_out(0) <= \hex1_out[0]~output_o\;

ww_hex1_out(1) <= \hex1_out[1]~output_o\;

ww_hex1_out(2) <= \hex1_out[2]~output_o\;

ww_hex1_out(3) <= \hex1_out[3]~output_o\;

ww_hex2_out(0) <= \hex2_out[0]~output_o\;

ww_hex2_out(1) <= \hex2_out[1]~output_o\;

ww_hex2_out(2) <= \hex2_out[2]~output_o\;

ww_hex2_out(3) <= \hex2_out[3]~output_o\;

ww_hex3_out(0) <= \hex3_out[0]~output_o\;

ww_hex3_out(1) <= \hex3_out[1]~output_o\;

ww_hex3_out(2) <= \hex3_out[2]~output_o\;

ww_hex3_out(3) <= \hex3_out[3]~output_o\;

ww_clave_out(0) <= \clave_out[0]~output_o\;

ww_clave_out(1) <= \clave_out[1]~output_o\;

ww_clave_out(2) <= \clave_out[2]~output_o\;

ww_clave_out(3) <= \clave_out[3]~output_o\;

ww_clave_out(4) <= \clave_out[4]~output_o\;

ww_clave_out(5) <= \clave_out[5]~output_o\;

ww_clave_out(6) <= \clave_out[6]~output_o\;

ww_clave_out(7) <= \clave_out[7]~output_o\;

ww_clave_out(8) <= \clave_out[8]~output_o\;

ww_clave_out(9) <= \clave_out[9]~output_o\;

ww_clave_out(10) <= \clave_out[10]~output_o\;

ww_clave_out(11) <= \clave_out[11]~output_o\;

ww_clave_out(12) <= \clave_out[12]~output_o\;

ww_clave_out(13) <= \clave_out[13]~output_o\;

ww_clave_out(14) <= \clave_out[14]~output_o\;

ww_clave_out(15) <= \clave_out[15]~output_o\;

ww_cuenta_digitos(0) <= \cuenta_digitos[0]~output_o\;

ww_cuenta_digitos(1) <= \cuenta_digitos[1]~output_o\;

ww_cuenta_digitos(2) <= \cuenta_digitos[2]~output_o\;

ww_completo <= \completo~output_o\;
END structure;


