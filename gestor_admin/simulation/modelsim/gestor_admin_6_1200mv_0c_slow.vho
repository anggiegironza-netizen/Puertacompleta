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

-- DATE "05/12/2026 12:32:32"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	gestor_admin IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	tecla : IN std_logic_vector(3 DOWNTO 0);
	tecla_valida : IN std_logic;
	mem_address : OUT std_logic_vector(5 DOWNTO 0);
	mem_dato_in : OUT std_logic_vector(7 DOWNTO 0);
	mem_we : OUT std_logic;
	modo_admin : OUT std_logic;
	display_out : OUT std_logic_vector(3 DOWNTO 0)
	);
END gestor_admin;

-- Design Ports Information
-- mem_address[0]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_address[1]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_address[2]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_address[3]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_address[4]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_address[5]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_dato_in[0]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_dato_in[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_dato_in[2]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_dato_in[3]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_dato_in[4]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_dato_in[5]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_dato_in[6]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_dato_in[7]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_we	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- modo_admin	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_out[0]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_out[1]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_out[2]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_out[3]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tecla_valida	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tecla[3]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tecla[1]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tecla[2]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tecla[0]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF gestor_admin IS
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
SIGNAL ww_mem_address : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_mem_dato_in : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_mem_we : std_logic;
SIGNAL ww_modo_admin : std_logic;
SIGNAL ww_display_out : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mem_address[0]~output_o\ : std_logic;
SIGNAL \mem_address[1]~output_o\ : std_logic;
SIGNAL \mem_address[2]~output_o\ : std_logic;
SIGNAL \mem_address[3]~output_o\ : std_logic;
SIGNAL \mem_address[4]~output_o\ : std_logic;
SIGNAL \mem_address[5]~output_o\ : std_logic;
SIGNAL \mem_dato_in[0]~output_o\ : std_logic;
SIGNAL \mem_dato_in[1]~output_o\ : std_logic;
SIGNAL \mem_dato_in[2]~output_o\ : std_logic;
SIGNAL \mem_dato_in[3]~output_o\ : std_logic;
SIGNAL \mem_dato_in[4]~output_o\ : std_logic;
SIGNAL \mem_dato_in[5]~output_o\ : std_logic;
SIGNAL \mem_dato_in[6]~output_o\ : std_logic;
SIGNAL \mem_dato_in[7]~output_o\ : std_logic;
SIGNAL \mem_we~output_o\ : std_logic;
SIGNAL \modo_admin~output_o\ : std_logic;
SIGNAL \display_out[0]~output_o\ : std_logic;
SIGNAL \display_out[1]~output_o\ : std_logic;
SIGNAL \display_out[2]~output_o\ : std_logic;
SIGNAL \display_out[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \tecla[0]~input_o\ : std_logic;
SIGNAL \tecla[2]~input_o\ : std_logic;
SIGNAL \tecla[1]~input_o\ : std_logic;
SIGNAL \tecla[3]~input_o\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \tecla_valida~input_o\ : std_logic;
SIGNAL \Selector0~12_combout\ : std_logic;
SIGNAL \Selector0~18_combout\ : std_logic;
SIGNAL \Selector0~5_combout\ : std_logic;
SIGNAL \Selector0~3_combout\ : std_logic;
SIGNAL \Selector0~2_combout\ : std_logic;
SIGNAL \Selector0~7_combout\ : std_logic;
SIGNAL \Selector0~19_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \estado.ESPERA~q\ : std_logic;
SIGNAL \Selector0~20_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \estado.CLAVE_ADMIN~q\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \digito_admin[0]~0_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Selector0~4_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \estado.OP_AGREGAR_USR~q\ : std_logic;
SIGNAL \Selector0~15_combout\ : std_logic;
SIGNAL \Selector0~16_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \estado.OP_AGREGAR_CLV~q\ : std_logic;
SIGNAL \digito_clave[1]~0_combout\ : std_logic;
SIGNAL \digito_clave[1]~1_combout\ : std_logic;
SIGNAL \digito_clave[0]~2_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \clave_buf[3][0]~2_combout\ : std_logic;
SIGNAL \Selector0~14_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \estado.OP_AGREGAR_HOR~q\ : std_logic;
SIGNAL \Selector0~17_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector2~3_combout\ : std_logic;
SIGNAL \Selector2~4_combout\ : std_logic;
SIGNAL \estado.ADMIN_OK~q\ : std_logic;
SIGNAL \Selector0~6_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \Selector0~21_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \estado.ESCRIBIENDO~q\ : std_logic;
SIGNAL \horario_buf[0]~0_combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \write_step[1]~0_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \Selector0~8_combout\ : std_logic;
SIGNAL \Selector0~9_combout\ : std_logic;
SIGNAL \Selector0~10_combout\ : std_logic;
SIGNAL \Selector0~11_combout\ : std_logic;
SIGNAL \Selector0~13_combout\ : std_logic;
SIGNAL \Selector2~2_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \Selector6~2_combout\ : std_logic;
SIGNAL \estado.OP_ELIMINAR_USR~q\ : std_logic;
SIGNAL \Selector26~0_combout\ : std_logic;
SIGNAL \Selector35~0_combout\ : std_logic;
SIGNAL \addr_i[5]~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \usuario_sel[1]~0_combout\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \Selector25~1_combout\ : std_logic;
SIGNAL \Selector25~2_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \addr_i[3]~1_combout\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \Selector23~1_combout\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \clave_buf[2][0]~3_combout\ : std_logic;
SIGNAL \clave_buf[3][0]~9_combout\ : std_logic;
SIGNAL \clave_buf[3][0]~q\ : std_logic;
SIGNAL \clave_buf[2][0]~feeder_combout\ : std_logic;
SIGNAL \clave_buf[2][0]~4_combout\ : std_logic;
SIGNAL \clave_buf[2][0]~q\ : std_logic;
SIGNAL \Selector34~0_combout\ : std_logic;
SIGNAL \clave_buf[0][0]~feeder_combout\ : std_logic;
SIGNAL \clave_buf[0][0]~5_combout\ : std_logic;
SIGNAL \clave_buf[0][0]~6_combout\ : std_logic;
SIGNAL \clave_buf[0][0]~7_combout\ : std_logic;
SIGNAL \clave_buf[0][0]~q\ : std_logic;
SIGNAL \clave_buf[1][0]~8_combout\ : std_logic;
SIGNAL \clave_buf[1][0]~q\ : std_logic;
SIGNAL \horario_buf[0]~feeder_combout\ : std_logic;
SIGNAL \horario_buf[0]~1_combout\ : std_logic;
SIGNAL \Selector34~1_combout\ : std_logic;
SIGNAL \Selector34~2_combout\ : std_logic;
SIGNAL \Selector34~3_combout\ : std_logic;
SIGNAL \clave_buf[2][1]~q\ : std_logic;
SIGNAL \clave_buf[3][1]~q\ : std_logic;
SIGNAL \Selector33~0_combout\ : std_logic;
SIGNAL \clave_buf[0][1]~q\ : std_logic;
SIGNAL \clave_buf[1][1]~q\ : std_logic;
SIGNAL \horario_buf[1]~feeder_combout\ : std_logic;
SIGNAL \Selector33~1_combout\ : std_logic;
SIGNAL \Selector33~2_combout\ : std_logic;
SIGNAL \Selector33~3_combout\ : std_logic;
SIGNAL \clave_buf[3][2]~q\ : std_logic;
SIGNAL \clave_buf[1][2]~q\ : std_logic;
SIGNAL \dato_i[3]~0_combout\ : std_logic;
SIGNAL \clave_buf[0][2]~q\ : std_logic;
SIGNAL \clave_buf[2][2]~q\ : std_logic;
SIGNAL \Selector32~0_combout\ : std_logic;
SIGNAL \Selector32~1_combout\ : std_logic;
SIGNAL \Selector32~2_combout\ : std_logic;
SIGNAL \dato_i[2]~feeder_combout\ : std_logic;
SIGNAL \clave_buf[3][3]~q\ : std_logic;
SIGNAL \clave_buf[2][3]~q\ : std_logic;
SIGNAL \Selector31~0_combout\ : std_logic;
SIGNAL \clave_buf[1][3]~feeder_combout\ : std_logic;
SIGNAL \clave_buf[1][3]~q\ : std_logic;
SIGNAL \clave_buf[0][3]~q\ : std_logic;
SIGNAL \Selector31~1_combout\ : std_logic;
SIGNAL \Selector31~2_combout\ : std_logic;
SIGNAL \dato_i[3]~feeder_combout\ : std_logic;
SIGNAL \dato_i[5]~feeder_combout\ : std_logic;
SIGNAL \dato_i[6]~feeder_combout\ : std_logic;
SIGNAL \dato_i[7]~feeder_combout\ : std_logic;
SIGNAL \Selector35~1_combout\ : std_logic;
SIGNAL \we_i~q\ : std_logic;
SIGNAL \display_out~0_combout\ : std_logic;
SIGNAL \display_out~1_combout\ : std_logic;
SIGNAL \display_out~2_combout\ : std_logic;
SIGNAL write_step : std_logic_vector(2 DOWNTO 0);
SIGNAL usuario_sel : std_logic_vector(1 DOWNTO 0);
SIGNAL horario_buf : std_logic_vector(7 DOWNTO 0);
SIGNAL digito_clave : std_logic_vector(1 DOWNTO 0);
SIGNAL digito_admin : std_logic_vector(1 DOWNTO 0);
SIGNAL dato_i : std_logic_vector(7 DOWNTO 0);
SIGNAL addr_i : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_digito_clave[1]~1_combout\ : std_logic;
SIGNAL \ALT_INV_display_out~0_combout\ : std_logic;
SIGNAL \ALT_INV_estado.OP_AGREGAR_CLV~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_tecla <= tecla;
ww_tecla_valida <= tecla_valida;
mem_address <= ww_mem_address;
mem_dato_in <= ww_mem_dato_in;
mem_we <= ww_mem_we;
modo_admin <= ww_modo_admin;
display_out <= ww_display_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;
\ALT_INV_digito_clave[1]~1_combout\ <= NOT \digito_clave[1]~1_combout\;
\ALT_INV_display_out~0_combout\ <= NOT \display_out~0_combout\;
\ALT_INV_estado.OP_AGREGAR_CLV~q\ <= NOT \estado.OP_AGREGAR_CLV~q\;

-- Location: IOOBUF_X33_Y22_N9
\mem_address[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => addr_i(0),
	devoe => ww_devoe,
	o => \mem_address[0]~output_o\);

-- Location: IOOBUF_X33_Y22_N2
\mem_address[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => addr_i(1),
	devoe => ww_devoe,
	o => \mem_address[1]~output_o\);

-- Location: IOOBUF_X33_Y12_N9
\mem_address[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => addr_i(2),
	devoe => ww_devoe,
	o => \mem_address[2]~output_o\);

-- Location: IOOBUF_X33_Y25_N9
\mem_address[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => addr_i(3),
	devoe => ww_devoe,
	o => \mem_address[3]~output_o\);

-- Location: IOOBUF_X33_Y15_N2
\mem_address[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => addr_i(4),
	devoe => ww_devoe,
	o => \mem_address[4]~output_o\);

-- Location: IOOBUF_X31_Y31_N2
\mem_address[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mem_address[5]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\mem_dato_in[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => dato_i(0),
	devoe => ww_devoe,
	o => \mem_dato_in[0]~output_o\);

-- Location: IOOBUF_X26_Y31_N9
\mem_dato_in[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => dato_i(1),
	devoe => ww_devoe,
	o => \mem_dato_in[1]~output_o\);

-- Location: IOOBUF_X33_Y10_N2
\mem_dato_in[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => dato_i(2),
	devoe => ww_devoe,
	o => \mem_dato_in[2]~output_o\);

-- Location: IOOBUF_X33_Y11_N2
\mem_dato_in[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => dato_i(3),
	devoe => ww_devoe,
	o => \mem_dato_in[3]~output_o\);

-- Location: IOOBUF_X33_Y24_N2
\mem_dato_in[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => dato_i(4),
	devoe => ww_devoe,
	o => \mem_dato_in[4]~output_o\);

-- Location: IOOBUF_X33_Y12_N2
\mem_dato_in[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => dato_i(5),
	devoe => ww_devoe,
	o => \mem_dato_in[5]~output_o\);

-- Location: IOOBUF_X33_Y25_N2
\mem_dato_in[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => dato_i(6),
	devoe => ww_devoe,
	o => \mem_dato_in[6]~output_o\);

-- Location: IOOBUF_X33_Y24_N9
\mem_dato_in[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => dato_i(7),
	devoe => ww_devoe,
	o => \mem_dato_in[7]~output_o\);

-- Location: IOOBUF_X33_Y11_N9
\mem_we~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \we_i~q\,
	devoe => ww_devoe,
	o => \mem_we~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\modo_admin~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \estado.ESPERA~q\,
	devoe => ww_devoe,
	o => \modo_admin~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\display_out[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_out~1_combout\,
	devoe => ww_devoe,
	o => \display_out[0]~output_o\);

-- Location: IOOBUF_X22_Y31_N9
\display_out[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_out~2_combout\,
	devoe => ww_devoe,
	o => \display_out[1]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\display_out[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_display_out~0_combout\,
	devoe => ww_devoe,
	o => \display_out[2]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\display_out[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_display_out~0_combout\,
	devoe => ww_devoe,
	o => \display_out[3]~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G17
\clk~inputclkctrl\ : cycloneiv_clkctrl
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

-- Location: IOIBUF_X33_Y14_N1
\tecla[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tecla(0),
	o => \tecla[0]~input_o\);

-- Location: IOIBUF_X33_Y15_N8
\tecla[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tecla(2),
	o => \tecla[2]~input_o\);

-- Location: IOIBUF_X33_Y14_N8
\tecla[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tecla(1),
	o => \tecla[1]~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\tecla[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tecla(3),
	o => \tecla[3]~input_o\);

-- Location: LCCOMB_X25_Y15_N16
\Equal4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (\tecla[0]~input_o\ & (\tecla[2]~input_o\ & (\tecla[1]~input_o\ & \tecla[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tecla[0]~input_o\,
	datab => \tecla[2]~input_o\,
	datac => \tecla[1]~input_o\,
	datad => \tecla[3]~input_o\,
	combout => \Equal4~0_combout\);

-- Location: IOIBUF_X33_Y10_N8
\tecla_valida~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tecla_valida,
	o => \tecla_valida~input_o\);

-- Location: LCCOMB_X23_Y15_N24
\Selector0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector0~12_combout\ = (\tecla_valida~input_o\ & (\estado.OP_ELIMINAR_USR~q\ & \Equal4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tecla_valida~input_o\,
	datab => \estado.OP_ELIMINAR_USR~q\,
	datad => \Equal4~0_combout\,
	combout => \Selector0~12_combout\);

-- Location: LCCOMB_X24_Y15_N22
\Selector0~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector0~18_combout\ = (\tecla[1]~input_o\ & (!\tecla[0]~input_o\ & (\tecla[2]~input_o\ & \tecla[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tecla[1]~input_o\,
	datab => \tecla[0]~input_o\,
	datac => \tecla[2]~input_o\,
	datad => \tecla[3]~input_o\,
	combout => \Selector0~18_combout\);

-- Location: LCCOMB_X21_Y15_N24
\Selector0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector0~5_combout\ = ((!\tecla[1]~input_o\ & !\tecla[2]~input_o\)) # (!\tecla[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tecla[1]~input_o\,
	datac => \tecla[3]~input_o\,
	datad => \tecla[2]~input_o\,
	combout => \Selector0~5_combout\);

-- Location: LCCOMB_X21_Y15_N14
\Selector0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector0~3_combout\ = (\tecla_valida~input_o\ & (((!\tecla[1]~input_o\ & !\tecla[2]~input_o\)) # (!\tecla[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tecla[1]~input_o\,
	datab => \tecla_valida~input_o\,
	datac => \tecla[3]~input_o\,
	datad => \tecla[2]~input_o\,
	combout => \Selector0~3_combout\);

-- Location: LCCOMB_X22_Y15_N30
\Selector0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector0~2_combout\ = (\Equal4~0_combout\ & \tecla_valida~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal4~0_combout\,
	datad => \tecla_valida~input_o\,
	combout => \Selector0~2_combout\);

-- Location: LCCOMB_X22_Y15_N4
\Selector0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector0~7_combout\ = (\Selector0~6_combout\ & ((\Equal4~0_combout\))) # (!\Selector0~6_combout\ & (\Selector0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector0~6_combout\,
	datac => \Selector0~4_combout\,
	datad => \Equal4~0_combout\,
	combout => \Selector0~7_combout\);

-- Location: LCCOMB_X22_Y15_N20
\Selector0~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector0~19_combout\ = (\Selector0~21_combout\ & ((\Selector0~12_combout\) # ((!\Selector0~7_combout\)))) # (!\Selector0~21_combout\ & (((\estado.ESPERA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~12_combout\,
	datab => \Selector0~7_combout\,
	datac => \estado.ESPERA~q\,
	datad => \Selector0~21_combout\,
	combout => \Selector0~19_combout\);

-- Location: IOIBUF_X16_Y0_N22
\rst~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: CLKCTRL_G19
\rst~inputclkctrl\ : cycloneiv_clkctrl
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

-- Location: FF_X22_Y15_N21
\estado.ESPERA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector0~19_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.ESPERA~q\);

-- Location: LCCOMB_X24_Y15_N0
\Selector0~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector0~20_combout\ = (\tecla_valida~input_o\ & (\Selector0~18_combout\ & !\estado.ESPERA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tecla_valida~input_o\,
	datac => \Selector0~18_combout\,
	datad => \estado.ESPERA~q\,
	combout => \Selector0~20_combout\);

-- Location: LCCOMB_X23_Y15_N8
\Selector1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\Selector0~21_combout\ & (!\Selector0~12_combout\ & (\Selector0~20_combout\))) # (!\Selector0~21_combout\ & (((\estado.CLAVE_ADMIN~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~12_combout\,
	datab => \Selector0~20_combout\,
	datac => \estado.CLAVE_ADMIN~q\,
	datad => \Selector0~21_combout\,
	combout => \Selector1~0_combout\);

-- Location: FF_X23_Y15_N9
\estado.CLAVE_ADMIN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector1~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.CLAVE_ADMIN~q\);

-- Location: LCCOMB_X23_Y15_N18
\Selector9~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\estado.CLAVE_ADMIN~q\ & (!digito_admin(0) & \Equal1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado.CLAVE_ADMIN~q\,
	datac => digito_admin(0),
	datad => \Equal1~1_combout\,
	combout => \Selector9~0_combout\);

-- Location: LCCOMB_X24_Y15_N30
\digito_admin[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \digito_admin[0]~0_combout\ = (\Selector0~20_combout\) # ((\estado.CLAVE_ADMIN~q\ & \Selector0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.CLAVE_ADMIN~q\,
	datac => \Selector0~3_combout\,
	datad => \Selector0~20_combout\,
	combout => \digito_admin[0]~0_combout\);

-- Location: FF_X23_Y15_N19
\digito_admin[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector9~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \digito_admin[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digito_admin(0));

-- Location: LCCOMB_X23_Y15_N4
\Selector8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\Equal1~1_combout\ & (\estado.CLAVE_ADMIN~q\ & (digito_admin(1) $ (digito_admin(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~1_combout\,
	datab => \estado.CLAVE_ADMIN~q\,
	datac => digito_admin(1),
	datad => digito_admin(0),
	combout => \Selector8~0_combout\);

-- Location: FF_X23_Y15_N5
\digito_admin[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector8~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \digito_admin[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digito_admin(1));

-- Location: LCCOMB_X23_Y15_N6
\Equal1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (digito_admin(1) & (!\tecla[0]~input_o\ & (\tecla[3]~input_o\ $ (!digito_admin(0))))) # (!digito_admin(1) & (!\tecla[3]~input_o\ & (\tecla[0]~input_o\ $ (!digito_admin(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tecla[3]~input_o\,
	datab => \tecla[0]~input_o\,
	datac => digito_admin(1),
	datad => digito_admin(0),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X23_Y15_N12
\Equal1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!\tecla[2]~input_o\ & (\Equal1~0_combout\ & (\tecla[1]~input_o\ $ (digito_admin(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tecla[1]~input_o\,
	datab => \tecla[2]~input_o\,
	datac => digito_admin(1),
	datad => \Equal1~0_combout\,
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X23_Y15_N10
\Selector0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector0~4_combout\ = (\estado.CLAVE_ADMIN~q\ & ((\Selector0~2_combout\) # ((\Selector0~3_combout\ & !\Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~3_combout\,
	datab => \Selector0~2_combout\,
	datac => \estado.CLAVE_ADMIN~q\,
	datad => \Equal1~1_combout\,
	combout => \Selector0~4_combout\);

-- Location: LCCOMB_X24_Y15_N24
\process_0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (\tecla[1]~input_o\ $ (!\tecla[2]~input_o\)) # (!\tecla[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tecla[1]~input_o\,
	datac => \tecla[2]~input_o\,
	datad => \tecla[3]~input_o\,
	combout => \process_0~0_combout\);

-- Location: LCCOMB_X21_Y15_N20
\Selector3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (!\process_0~0_combout\ & (!\Selector0~5_combout\ & (\tecla_valida~input_o\ & \estado.ADMIN_OK~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => \Selector0~5_combout\,
	datac => \tecla_valida~input_o\,
	datad => \estado.ADMIN_OK~q\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X22_Y15_N18
\Selector3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (\Selector0~21_combout\ & (!\Selector0~12_combout\ & (\Selector3~0_combout\))) # (!\Selector0~21_combout\ & (((\estado.OP_AGREGAR_USR~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~12_combout\,
	datab => \Selector3~0_combout\,
	datac => \estado.OP_AGREGAR_USR~q\,
	datad => \Selector0~21_combout\,
	combout => \Selector3~1_combout\);

-- Location: FF_X22_Y15_N19
\estado.OP_AGREGAR_USR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector3~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.OP_AGREGAR_USR~q\);

-- Location: LCCOMB_X22_Y15_N16
\Selector0~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector0~15_combout\ = (\tecla_valida~input_o\ & (\estado.OP_AGREGAR_USR~q\ & ((\Selector0~5_combout\) # (\Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tecla_valida~input_o\,
	datab => \Selector0~5_combout\,
	datac => \Equal4~0_combout\,
	datad => \estado.OP_AGREGAR_USR~q\,
	combout => \Selector0~15_combout\);

-- Location: LCCOMB_X21_Y15_N6
\Selector0~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector0~16_combout\ = (!\tecla[3]~input_o\ & !\tecla[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tecla[3]~input_o\,
	datad => \tecla[2]~input_o\,
	combout => \Selector0~16_combout\);

-- Location: LCCOMB_X22_Y15_N24
\Selector4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\Selector0~21_combout\ & (\Selector0~15_combout\ & ((\Selector6~0_combout\)))) # (!\Selector0~21_combout\ & ((\estado.OP_AGREGAR_CLV~q\) # ((\Selector0~15_combout\ & \Selector6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~21_combout\,
	datab => \Selector0~15_combout\,
	datac => \estado.OP_AGREGAR_CLV~q\,
	datad => \Selector6~0_combout\,
	combout => \Selector4~0_combout\);

-- Location: FF_X22_Y15_N25
\estado.OP_AGREGAR_CLV\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector4~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.OP_AGREGAR_CLV~q\);

-- Location: LCCOMB_X21_Y15_N4
\digito_clave[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \digito_clave[1]~0_combout\ = ((!\estado.OP_AGREGAR_USR~q\ & ((\clave_buf[3][0]~2_combout\) # (!\estado.OP_AGREGAR_CLV~q\)))) # (!\Selector0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clave_buf[3][0]~2_combout\,
	datab => \estado.OP_AGREGAR_USR~q\,
	datac => \Selector0~5_combout\,
	datad => \estado.OP_AGREGAR_CLV~q\,
	combout => \digito_clave[1]~0_combout\);

-- Location: LCCOMB_X21_Y15_N26
\digito_clave[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \digito_clave[1]~1_combout\ = ((\digito_clave[1]~0_combout\ & ((\process_0~0_combout\) # (!\estado.ADMIN_OK~q\)))) # (!\tecla_valida~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => \digito_clave[1]~0_combout\,
	datac => \tecla_valida~input_o\,
	datad => \estado.ADMIN_OK~q\,
	combout => \digito_clave[1]~1_combout\);

-- Location: LCCOMB_X21_Y15_N2
\digito_clave[0]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \digito_clave[0]~2_combout\ = (\digito_clave[1]~1_combout\ & (((digito_clave(0))))) # (!\digito_clave[1]~1_combout\ & ((\estado.OP_AGREGAR_CLV~q\ & (!digito_clave(0))) # (!\estado.OP_AGREGAR_CLV~q\ & ((\estado.OP_AGREGAR_USR~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digito_clave[1]~1_combout\,
	datab => \estado.OP_AGREGAR_CLV~q\,
	datac => digito_clave(0),
	datad => \estado.OP_AGREGAR_USR~q\,
	combout => \digito_clave[0]~2_combout\);

-- Location: FF_X21_Y15_N3
\digito_clave[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \digito_clave[0]~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digito_clave(0));

-- Location: LCCOMB_X21_Y15_N8
\Add3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = digito_clave(0) $ (digito_clave(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => digito_clave(0),
	datac => digito_clave(1),
	combout => \Add3~0_combout\);

-- Location: FF_X21_Y15_N9
\digito_clave[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \ALT_INV_estado.OP_AGREGAR_CLV~q\,
	ena => \ALT_INV_digito_clave[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digito_clave(1));

-- Location: LCCOMB_X21_Y15_N12
\clave_buf[3][0]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clave_buf[3][0]~2_combout\ = (digito_clave(1) & digito_clave(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => digito_clave(1),
	datad => digito_clave(0),
	combout => \clave_buf[3][0]~2_combout\);

-- Location: LCCOMB_X22_Y15_N2
\Selector0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector0~14_combout\ = (\estado.OP_AGREGAR_CLV~q\ & ((\Selector0~2_combout\) # ((\Selector0~3_combout\ & \clave_buf[3][0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~3_combout\,
	datab => \estado.OP_AGREGAR_CLV~q\,
	datac => \Selector0~2_combout\,
	datad => \clave_buf[3][0]~2_combout\,
	combout => \Selector0~14_combout\);

-- Location: LCCOMB_X22_Y15_N6
\Selector5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\Selector0~21_combout\ & (\Selector0~14_combout\ & ((\Selector6~0_combout\)))) # (!\Selector0~21_combout\ & ((\estado.OP_AGREGAR_HOR~q\) # ((\Selector0~14_combout\ & \Selector6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~21_combout\,
	datab => \Selector0~14_combout\,
	datac => \estado.OP_AGREGAR_HOR~q\,
	datad => \Selector6~0_combout\,
	combout => \Selector5~0_combout\);

-- Location: FF_X22_Y15_N7
\estado.OP_AGREGAR_HOR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector5~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.OP_AGREGAR_HOR~q\);

-- Location: LCCOMB_X22_Y15_N22
\Selector0~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector0~17_combout\ = (\tecla_valida~input_o\ & (\estado.OP_AGREGAR_HOR~q\ & ((\Selector0~16_combout\) # (\Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tecla_valida~input_o\,
	datab => \Selector0~16_combout\,
	datac => \Equal4~0_combout\,
	datad => \estado.OP_AGREGAR_HOR~q\,
	combout => \Selector0~17_combout\);

-- Location: LCCOMB_X22_Y15_N8
\Selector2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (!\Selector0~15_combout\ & (!\Selector0~17_combout\ & !\Selector0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector0~15_combout\,
	datac => \Selector0~17_combout\,
	datad => \Selector0~14_combout\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X22_Y15_N0
\Selector2~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector2~3_combout\ = (\Selector2~0_combout\ & (\Selector2~1_combout\ & (!\Selector0~4_combout\))) # (!\Selector2~0_combout\ & (((\Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~1_combout\,
	datab => \Selector0~4_combout\,
	datac => \Equal4~0_combout\,
	datad => \Selector2~0_combout\,
	combout => \Selector2~3_combout\);

-- Location: LCCOMB_X22_Y15_N28
\Selector2~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector2~4_combout\ = (\Selector0~21_combout\ & ((\Selector0~12_combout\) # ((\Selector2~3_combout\)))) # (!\Selector0~21_combout\ & (((\estado.ADMIN_OK~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~12_combout\,
	datab => \Selector2~3_combout\,
	datac => \estado.ADMIN_OK~q\,
	datad => \Selector0~21_combout\,
	combout => \Selector2~4_combout\);

-- Location: FF_X22_Y15_N29
\estado.ADMIN_OK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector2~4_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.ADMIN_OK~q\);

-- Location: LCCOMB_X22_Y15_N14
\Selector0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector0~6_combout\ = (\tecla_valida~input_o\ & (!\Selector0~5_combout\ & \estado.ADMIN_OK~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tecla_valida~input_o\,
	datab => \Selector0~5_combout\,
	datad => \estado.ADMIN_OK~q\,
	combout => \Selector0~6_combout\);

-- Location: LCCOMB_X22_Y15_N26
\Selector2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (!\Selector0~6_combout\ & (((\estado.ESPERA~q\) # (!\Selector0~18_combout\)) # (!\tecla_valida~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tecla_valida~input_o\,
	datab => \Selector0~18_combout\,
	datac => \Selector0~6_combout\,
	datad => \estado.ESPERA~q\,
	combout => \Selector2~1_combout\);

-- Location: LCCOMB_X22_Y15_N10
\Selector0~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector0~21_combout\ = (((\Selector0~4_combout\) # (\Selector0~13_combout\)) # (!\Selector2~0_combout\)) # (!\Selector2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~1_combout\,
	datab => \Selector2~0_combout\,
	datac => \Selector0~4_combout\,
	datad => \Selector0~13_combout\,
	combout => \Selector0~21_combout\);

-- Location: LCCOMB_X22_Y15_N12
\Selector7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\Selector0~21_combout\ & (\Selector0~17_combout\ & ((\Selector6~0_combout\)))) # (!\Selector0~21_combout\ & ((\estado.ESCRIBIENDO~q\) # ((\Selector0~17_combout\ & \Selector6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~21_combout\,
	datab => \Selector0~17_combout\,
	datac => \estado.ESCRIBIENDO~q\,
	datad => \Selector6~0_combout\,
	combout => \Selector7~0_combout\);

-- Location: FF_X22_Y15_N13
\estado.ESCRIBIENDO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector7~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.ESCRIBIENDO~q\);

-- Location: LCCOMB_X21_Y15_N28
\horario_buf[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \horario_buf[0]~0_combout\ = (!\tecla[2]~input_o\ & (\tecla_valida~input_o\ & (!\tecla[3]~input_o\ & \estado.OP_AGREGAR_HOR~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tecla[2]~input_o\,
	datab => \tecla_valida~input_o\,
	datac => \tecla[3]~input_o\,
	datad => \estado.OP_AGREGAR_HOR~q\,
	combout => \horario_buf[0]~0_combout\);

-- Location: LCCOMB_X23_Y15_N14
\Selector20~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (write_step(0) & (!\horario_buf[0]~0_combout\ & !\estado.ESCRIBIENDO~q\)) # (!write_step(0) & ((\estado.ESCRIBIENDO~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \horario_buf[0]~0_combout\,
	datac => write_step(0),
	datad => \estado.ESCRIBIENDO~q\,
	combout => \Selector20~0_combout\);

-- Location: FF_X23_Y15_N15
\write_step[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector20~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => write_step(0));

-- Location: LCCOMB_X24_Y15_N28
\Selector19~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (!write_step(2) & (\estado.ESCRIBIENDO~q\ & (write_step(0) $ (write_step(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => write_step(0),
	datab => write_step(2),
	datac => write_step(1),
	datad => \estado.ESCRIBIENDO~q\,
	combout => \Selector19~0_combout\);

-- Location: LCCOMB_X21_Y15_N30
\write_step[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \write_step[1]~0_combout\ = (\estado.OP_AGREGAR_HOR~q\ & (\Selector0~16_combout\ & (\tecla_valida~input_o\))) # (!\estado.OP_AGREGAR_HOR~q\ & (((\estado.ESCRIBIENDO~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~16_combout\,
	datab => \tecla_valida~input_o\,
	datac => \estado.ESCRIBIENDO~q\,
	datad => \estado.OP_AGREGAR_HOR~q\,
	combout => \write_step[1]~0_combout\);

-- Location: FF_X24_Y15_N29
\write_step[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector19~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \write_step[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => write_step(1));

-- Location: LCCOMB_X24_Y15_N6
\Selector18~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (\estado.ESCRIBIENDO~q\ & ((write_step(2) & ((!write_step(0)))) # (!write_step(2) & (write_step(1) & write_step(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.ESCRIBIENDO~q\,
	datab => write_step(1),
	datac => write_step(2),
	datad => write_step(0),
	combout => \Selector18~0_combout\);

-- Location: FF_X24_Y15_N7
\write_step[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector18~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \write_step[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => write_step(2));

-- Location: LCCOMB_X23_Y15_N0
\Selector0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector0~8_combout\ = (\estado.OP_ELIMINAR_USR~q\ & (!\process_0~0_combout\)) # (!\estado.OP_ELIMINAR_USR~q\ & (((write_step(0) & write_step(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => \estado.OP_ELIMINAR_USR~q\,
	datac => write_step(0),
	datad => write_step(2),
	combout => \Selector0~8_combout\);

-- Location: LCCOMB_X23_Y15_N30
\Selector0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector0~9_combout\ = (\estado.CLAVE_ADMIN~q\ & (digito_admin(1) & (digito_admin(0)))) # (!\estado.CLAVE_ADMIN~q\ & (((\Selector0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digito_admin(1),
	datab => \estado.CLAVE_ADMIN~q\,
	datac => digito_admin(0),
	datad => \Selector0~8_combout\,
	combout => \Selector0~9_combout\);

-- Location: LCCOMB_X23_Y15_N20
\Selector0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector0~10_combout\ = (\estado.CLAVE_ADMIN~q\ & (\Equal1~1_combout\ & ((!\tecla[1]~input_o\) # (!\tecla[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tecla[3]~input_o\,
	datab => \tecla[1]~input_o\,
	datac => \estado.CLAVE_ADMIN~q\,
	datad => \Equal1~1_combout\,
	combout => \Selector0~10_combout\);

-- Location: LCCOMB_X23_Y15_N2
\Selector0~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector0~11_combout\ = (\tecla_valida~input_o\ & (\Selector0~9_combout\ & ((\estado.OP_ELIMINAR_USR~q\) # (\Selector0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tecla_valida~input_o\,
	datab => \estado.OP_ELIMINAR_USR~q\,
	datac => \Selector0~9_combout\,
	datad => \Selector0~10_combout\,
	combout => \Selector0~11_combout\);

-- Location: LCCOMB_X23_Y15_N26
\Selector0~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector0~13_combout\ = (\Selector0~12_combout\) # ((\Selector0~11_combout\) # ((\estado.ESCRIBIENDO~q\ & \Selector0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.ESCRIBIENDO~q\,
	datab => \Selector0~12_combout\,
	datac => \Selector0~9_combout\,
	datad => \Selector0~11_combout\,
	combout => \Selector0~13_combout\);

-- Location: LCCOMB_X23_Y15_N16
\Selector2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector2~2_combout\ = (!\Selector0~4_combout\ & (\Selector2~1_combout\ & \Selector2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~4_combout\,
	datac => \Selector2~1_combout\,
	datad => \Selector2~0_combout\,
	combout => \Selector2~2_combout\);

-- Location: LCCOMB_X23_Y15_N22
\Selector6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (!\Equal4~0_combout\ & (!\Selector0~12_combout\ & ((\Selector0~13_combout\) # (!\Selector2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~0_combout\,
	datab => \Selector0~12_combout\,
	datac => \Selector0~13_combout\,
	datad => \Selector2~2_combout\,
	combout => \Selector6~0_combout\);

-- Location: LCCOMB_X21_Y15_N18
\Selector6~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = (\process_0~0_combout\ & (!\Selector0~5_combout\ & (\tecla_valida~input_o\ & \estado.ADMIN_OK~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => \Selector0~5_combout\,
	datac => \tecla_valida~input_o\,
	datad => \estado.ADMIN_OK~q\,
	combout => \Selector6~1_combout\);

-- Location: LCCOMB_X23_Y15_N28
\Selector6~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector6~2_combout\ = (\Selector6~0_combout\ & ((\Selector6~1_combout\) # ((\estado.OP_ELIMINAR_USR~q\ & !\Selector0~21_combout\)))) # (!\Selector6~0_combout\ & (((\estado.OP_ELIMINAR_USR~q\ & !\Selector0~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~0_combout\,
	datab => \Selector6~1_combout\,
	datac => \estado.OP_ELIMINAR_USR~q\,
	datad => \Selector0~21_combout\,
	combout => \Selector6~2_combout\);

-- Location: FF_X23_Y15_N29
\estado.OP_ELIMINAR_USR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector6~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.OP_ELIMINAR_USR~q\);

-- Location: LCCOMB_X29_Y15_N24
\Selector26~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector26~0_combout\ = (!\estado.OP_ELIMINAR_USR~q\ & write_step(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado.OP_ELIMINAR_USR~q\,
	datad => write_step(0),
	combout => \Selector26~0_combout\);

-- Location: LCCOMB_X21_Y15_N0
\Selector35~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector35~0_combout\ = (\tecla_valida~input_o\ & (\tecla[3]~input_o\ & (\tecla[1]~input_o\ $ (\tecla[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tecla[1]~input_o\,
	datab => \tecla_valida~input_o\,
	datac => \tecla[3]~input_o\,
	datad => \tecla[2]~input_o\,
	combout => \Selector35~0_combout\);

-- Location: LCCOMB_X29_Y15_N12
\addr_i[5]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \addr_i[5]~0_combout\ = (\estado.OP_ELIMINAR_USR~q\ & (\Selector35~0_combout\)) # (!\estado.OP_ELIMINAR_USR~q\ & ((\estado.ESCRIBIENDO~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector35~0_combout\,
	datac => \estado.OP_ELIMINAR_USR~q\,
	datad => \estado.ESCRIBIENDO~q\,
	combout => \addr_i[5]~0_combout\);

-- Location: FF_X29_Y15_N25
\addr_i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector26~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \addr_i[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_i(0));

-- Location: LCCOMB_X26_Y15_N24
\Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\tecla[0]~input_o\) # (\tecla[2]~input_o\ $ (!\tecla[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tecla[2]~input_o\,
	datab => \tecla[1]~input_o\,
	datac => \tecla[0]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X25_Y15_N6
\usuario_sel[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \usuario_sel[1]~0_combout\ = (\Selector35~0_combout\ & ((\estado.OP_ELIMINAR_USR~q\) # (\estado.ADMIN_OK~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector35~0_combout\,
	datac => \estado.OP_ELIMINAR_USR~q\,
	datad => \estado.ADMIN_OK~q\,
	combout => \usuario_sel[1]~0_combout\);

-- Location: FF_X26_Y15_N25
\usuario_sel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux3~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \usuario_sel[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => usuario_sel(0));

-- Location: LCCOMB_X26_Y15_N8
\Selector25~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = (usuario_sel(0) & ((write_step(2)) # ((\estado.OP_ELIMINAR_USR~q\) # (!write_step(1))))) # (!usuario_sel(0) & (((write_step(1) & !\estado.OP_ELIMINAR_USR~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => write_step(2),
	datab => usuario_sel(0),
	datac => write_step(1),
	datad => \estado.OP_ELIMINAR_USR~q\,
	combout => \Selector25~0_combout\);

-- Location: LCCOMB_X25_Y15_N10
\Selector25~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector25~1_combout\ = (\estado.OP_ELIMINAR_USR~q\ & (!\Equal4~0_combout\ & ((\Selector35~0_combout\)))) # (!\estado.OP_ELIMINAR_USR~q\ & (((\estado.ESCRIBIENDO~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.OP_ELIMINAR_USR~q\,
	datab => \Equal4~0_combout\,
	datac => \estado.ESCRIBIENDO~q\,
	datad => \Selector35~0_combout\,
	combout => \Selector25~1_combout\);

-- Location: LCCOMB_X27_Y15_N16
\Selector25~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector25~2_combout\ = (\Selector25~1_combout\ & (!\Selector25~0_combout\)) # (!\Selector25~1_combout\ & ((addr_i(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector25~0_combout\,
	datac => addr_i(1),
	datad => \Selector25~1_combout\,
	combout => \Selector25~2_combout\);

-- Location: FF_X27_Y15_N17
\addr_i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector25~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_i(1));

-- Location: LCCOMB_X26_Y15_N26
\Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\tecla[2]~input_o\) # (!\tecla[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tecla[2]~input_o\,
	datac => \tecla[1]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: FF_X26_Y15_N27
\usuario_sel[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux2~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \usuario_sel[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => usuario_sel(1));

-- Location: LCCOMB_X25_Y15_N0
\addr_i[3]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \addr_i[3]~1_combout\ = (\estado.ESCRIBIENDO~q\ & ((write_step(2)) # (write_step(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => write_step(2),
	datac => \estado.ESCRIBIENDO~q\,
	datad => write_step(1),
	combout => \addr_i[3]~1_combout\);

-- Location: LCCOMB_X29_Y15_N18
\Selector24~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = usuario_sel(1) $ ((((usuario_sel(0) & !write_step(2))) # (!\addr_i[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => usuario_sel(0),
	datab => write_step(2),
	datac => usuario_sel(1),
	datad => \addr_i[3]~1_combout\,
	combout => \Selector24~0_combout\);

-- Location: FF_X29_Y15_N19
\addr_i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector24~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \addr_i[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_i(2));

-- Location: LCCOMB_X29_Y15_N10
\Selector23~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = (usuario_sel(0) & (((usuario_sel(1)) # (!\estado.ESCRIBIENDO~q\)) # (!write_step(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => write_step(2),
	datab => \estado.ESCRIBIENDO~q\,
	datac => usuario_sel(1),
	datad => usuario_sel(0),
	combout => \Selector23~0_combout\);

-- Location: LCCOMB_X29_Y15_N16
\Selector23~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector23~1_combout\ = (\Selector23~0_combout\) # ((!usuario_sel(0) & (!usuario_sel(1) & \addr_i[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => usuario_sel(0),
	datab => \Selector23~0_combout\,
	datac => usuario_sel(1),
	datad => \addr_i[3]~1_combout\,
	combout => \Selector23~1_combout\);

-- Location: FF_X29_Y15_N17
\addr_i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector23~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \addr_i[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_i(3));

-- Location: LCCOMB_X29_Y15_N26
\Selector22~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = (usuario_sel(1)) # ((write_step(2) & (\estado.ESCRIBIENDO~q\ & usuario_sel(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => write_step(2),
	datab => \estado.ESCRIBIENDO~q\,
	datac => usuario_sel(1),
	datad => usuario_sel(0),
	combout => \Selector22~0_combout\);

-- Location: FF_X29_Y15_N27
\addr_i[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector22~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \addr_i[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_i(4));

-- Location: LCCOMB_X25_Y15_N28
\clave_buf[2][0]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clave_buf[2][0]~3_combout\ = (\Selector0~3_combout\ & (!\Equal4~0_combout\ & (!\rst~input_o\ & \estado.OP_AGREGAR_CLV~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~3_combout\,
	datab => \Equal4~0_combout\,
	datac => \rst~input_o\,
	datad => \estado.OP_AGREGAR_CLV~q\,
	combout => \clave_buf[2][0]~3_combout\);

-- Location: LCCOMB_X26_Y15_N22
\clave_buf[3][0]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clave_buf[3][0]~9_combout\ = (digito_clave(1) & (digito_clave(0) & \clave_buf[2][0]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digito_clave(1),
	datab => digito_clave(0),
	datad => \clave_buf[2][0]~3_combout\,
	combout => \clave_buf[3][0]~9_combout\);

-- Location: FF_X26_Y15_N23
\clave_buf[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \tecla[0]~input_o\,
	sload => VCC,
	ena => \clave_buf[3][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clave_buf[3][0]~q\);

-- Location: LCCOMB_X24_Y15_N16
\clave_buf[2][0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clave_buf[2][0]~feeder_combout\ = \tecla[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tecla[0]~input_o\,
	combout => \clave_buf[2][0]~feeder_combout\);

-- Location: LCCOMB_X24_Y15_N26
\clave_buf[2][0]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clave_buf[2][0]~4_combout\ = (!digito_clave(0) & (digito_clave(1) & \clave_buf[2][0]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digito_clave(0),
	datab => digito_clave(1),
	datad => \clave_buf[2][0]~3_combout\,
	combout => \clave_buf[2][0]~4_combout\);

-- Location: FF_X24_Y15_N17
\clave_buf[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clave_buf[2][0]~feeder_combout\,
	ena => \clave_buf[2][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clave_buf[2][0]~q\);

-- Location: LCCOMB_X26_Y15_N16
\Selector34~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector34~0_combout\ = (write_step(2) & ((write_step(0) & (\clave_buf[3][0]~q\)) # (!write_step(0) & ((\clave_buf[2][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => write_step(2),
	datab => \clave_buf[3][0]~q\,
	datac => write_step(0),
	datad => \clave_buf[2][0]~q\,
	combout => \Selector34~0_combout\);

-- Location: LCCOMB_X25_Y15_N14
\clave_buf[0][0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clave_buf[0][0]~feeder_combout\ = \tecla[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tecla[0]~input_o\,
	combout => \clave_buf[0][0]~feeder_combout\);

-- Location: LCCOMB_X21_Y15_N16
\clave_buf[0][0]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clave_buf[0][0]~5_combout\ = (\estado.OP_AGREGAR_CLV~q\ & ((digito_clave(0)) # (digito_clave(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => digito_clave(0),
	datac => digito_clave(1),
	datad => \estado.OP_AGREGAR_CLV~q\,
	combout => \clave_buf[0][0]~5_combout\);

-- Location: LCCOMB_X21_Y15_N22
\clave_buf[0][0]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clave_buf[0][0]~6_combout\ = ((\estado.OP_AGREGAR_USR~q\ & (!\tecla_valida~input_o\ & !\estado.OP_AGREGAR_CLV~q\)) # (!\estado.OP_AGREGAR_USR~q\ & ((!\estado.OP_AGREGAR_CLV~q\) # (!\tecla_valida~input_o\)))) # (!\Selector0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~5_combout\,
	datab => \estado.OP_AGREGAR_USR~q\,
	datac => \tecla_valida~input_o\,
	datad => \estado.OP_AGREGAR_CLV~q\,
	combout => \clave_buf[0][0]~6_combout\);

-- Location: LCCOMB_X25_Y15_N2
\clave_buf[0][0]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clave_buf[0][0]~7_combout\ = (!\rst~input_o\ & (!\Equal4~0_combout\ & (!\clave_buf[0][0]~5_combout\ & !\clave_buf[0][0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \Equal4~0_combout\,
	datac => \clave_buf[0][0]~5_combout\,
	datad => \clave_buf[0][0]~6_combout\,
	combout => \clave_buf[0][0]~7_combout\);

-- Location: FF_X25_Y15_N15
\clave_buf[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clave_buf[0][0]~feeder_combout\,
	ena => \clave_buf[0][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clave_buf[0][0]~q\);

-- Location: LCCOMB_X25_Y15_N4
\clave_buf[1][0]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clave_buf[1][0]~8_combout\ = (!digito_clave(1) & (digito_clave(0) & \clave_buf[2][0]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digito_clave(1),
	datab => digito_clave(0),
	datad => \clave_buf[2][0]~3_combout\,
	combout => \clave_buf[1][0]~8_combout\);

-- Location: FF_X25_Y15_N5
\clave_buf[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \tecla[0]~input_o\,
	sload => VCC,
	ena => \clave_buf[1][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clave_buf[1][0]~q\);

-- Location: LCCOMB_X22_Y14_N0
\horario_buf[0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \horario_buf[0]~feeder_combout\ = \tecla[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tecla[0]~input_o\,
	combout => \horario_buf[0]~feeder_combout\);

-- Location: LCCOMB_X22_Y14_N20
\horario_buf[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \horario_buf[0]~1_combout\ = (!\rst~input_o\ & \horario_buf[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \horario_buf[0]~0_combout\,
	combout => \horario_buf[0]~1_combout\);

-- Location: FF_X22_Y14_N1
\horario_buf[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \horario_buf[0]~feeder_combout\,
	ena => \horario_buf[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => horario_buf(0));

-- Location: LCCOMB_X26_Y15_N18
\Selector34~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector34~1_combout\ = (write_step(1) & (((write_step(0))))) # (!write_step(1) & ((write_step(0) & ((horario_buf(0)))) # (!write_step(0) & (usuario_sel(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => write_step(1),
	datab => usuario_sel(0),
	datac => write_step(0),
	datad => horario_buf(0),
	combout => \Selector34~1_combout\);

-- Location: LCCOMB_X26_Y15_N28
\Selector34~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector34~2_combout\ = (write_step(1) & ((\Selector34~1_combout\ & ((\clave_buf[1][0]~q\))) # (!\Selector34~1_combout\ & (\clave_buf[0][0]~q\)))) # (!write_step(1) & (((\Selector34~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clave_buf[0][0]~q\,
	datab => write_step(1),
	datac => \clave_buf[1][0]~q\,
	datad => \Selector34~1_combout\,
	combout => \Selector34~2_combout\);

-- Location: LCCOMB_X27_Y15_N28
\Selector34~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector34~3_combout\ = (\Selector34~0_combout\) # ((!write_step(2) & \Selector34~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector34~0_combout\,
	datab => write_step(2),
	datad => \Selector34~2_combout\,
	combout => \Selector34~3_combout\);

-- Location: FF_X27_Y15_N29
\dato_i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector34~3_combout\,
	asdata => VCC,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \estado.OP_ELIMINAR_USR~q\,
	ena => \addr_i[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dato_i(0));

-- Location: FF_X24_Y15_N27
\clave_buf[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \tecla[1]~input_o\,
	sload => VCC,
	ena => \clave_buf[2][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clave_buf[2][1]~q\);

-- Location: FF_X26_Y15_N11
\clave_buf[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \tecla[1]~input_o\,
	sload => VCC,
	ena => \clave_buf[3][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clave_buf[3][1]~q\);

-- Location: LCCOMB_X26_Y15_N10
\Selector33~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector33~0_combout\ = (write_step(2) & ((write_step(0) & ((\clave_buf[3][1]~q\))) # (!write_step(0) & (\clave_buf[2][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clave_buf[2][1]~q\,
	datab => write_step(0),
	datac => \clave_buf[3][1]~q\,
	datad => write_step(2),
	combout => \Selector33~0_combout\);

-- Location: FF_X25_Y15_N27
\clave_buf[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \tecla[1]~input_o\,
	sload => VCC,
	ena => \clave_buf[0][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clave_buf[0][1]~q\);

-- Location: FF_X25_Y15_N25
\clave_buf[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \tecla[1]~input_o\,
	sload => VCC,
	ena => \clave_buf[1][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clave_buf[1][1]~q\);

-- Location: LCCOMB_X22_Y14_N30
\horario_buf[1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \horario_buf[1]~feeder_combout\ = \tecla[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tecla[1]~input_o\,
	combout => \horario_buf[1]~feeder_combout\);

-- Location: FF_X22_Y14_N31
\horario_buf[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \horario_buf[1]~feeder_combout\,
	ena => \horario_buf[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => horario_buf(1));

-- Location: LCCOMB_X26_Y15_N12
\Selector33~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector33~1_combout\ = (write_step(0) & (((horario_buf(1)) # (write_step(1))))) # (!write_step(0) & (usuario_sel(1) & ((!write_step(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => usuario_sel(1),
	datab => write_step(0),
	datac => horario_buf(1),
	datad => write_step(1),
	combout => \Selector33~1_combout\);

-- Location: LCCOMB_X26_Y15_N14
\Selector33~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector33~2_combout\ = (write_step(1) & ((\Selector33~1_combout\ & ((\clave_buf[1][1]~q\))) # (!\Selector33~1_combout\ & (\clave_buf[0][1]~q\)))) # (!write_step(1) & (((\Selector33~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clave_buf[0][1]~q\,
	datab => \clave_buf[1][1]~q\,
	datac => write_step(1),
	datad => \Selector33~1_combout\,
	combout => \Selector33~2_combout\);

-- Location: LCCOMB_X27_Y15_N6
\Selector33~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector33~3_combout\ = (\Selector33~0_combout\) # ((!write_step(2) & \Selector33~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector33~0_combout\,
	datab => write_step(2),
	datad => \Selector33~2_combout\,
	combout => \Selector33~3_combout\);

-- Location: FF_X27_Y15_N7
\dato_i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector33~3_combout\,
	asdata => VCC,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \estado.OP_ELIMINAR_USR~q\,
	ena => \addr_i[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dato_i(1));

-- Location: FF_X26_Y15_N21
\clave_buf[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \tecla[2]~input_o\,
	sload => VCC,
	ena => \clave_buf[3][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clave_buf[3][2]~q\);

-- Location: FF_X25_Y15_N13
\clave_buf[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \tecla[2]~input_o\,
	sload => VCC,
	ena => \clave_buf[1][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clave_buf[1][2]~q\);

-- Location: LCCOMB_X25_Y15_N24
\dato_i[3]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dato_i[3]~0_combout\ = (!write_step(2) & write_step(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => write_step(2),
	datad => write_step(1),
	combout => \dato_i[3]~0_combout\);

-- Location: FF_X25_Y15_N23
\clave_buf[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \tecla[2]~input_o\,
	sload => VCC,
	ena => \clave_buf[0][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clave_buf[0][2]~q\);

-- Location: FF_X24_Y15_N13
\clave_buf[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \tecla[2]~input_o\,
	sload => VCC,
	ena => \clave_buf[2][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clave_buf[2][2]~q\);

-- Location: LCCOMB_X24_Y15_N12
\Selector32~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector32~0_combout\ = (write_step(2) & (((\clave_buf[2][2]~q\)))) # (!write_step(2) & (write_step(0) & (write_step(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => write_step(0),
	datab => write_step(1),
	datac => \clave_buf[2][2]~q\,
	datad => write_step(2),
	combout => \Selector32~0_combout\);

-- Location: LCCOMB_X25_Y15_N22
\Selector32~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector32~1_combout\ = (\dato_i[3]~0_combout\ & ((\Selector32~0_combout\ & (\clave_buf[1][2]~q\)) # (!\Selector32~0_combout\ & ((\clave_buf[0][2]~q\))))) # (!\dato_i[3]~0_combout\ & (((\Selector32~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clave_buf[1][2]~q\,
	datab => \dato_i[3]~0_combout\,
	datac => \clave_buf[0][2]~q\,
	datad => \Selector32~0_combout\,
	combout => \Selector32~1_combout\);

-- Location: LCCOMB_X26_Y15_N20
\Selector32~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector32~2_combout\ = (write_step(2) & ((write_step(0) & (\clave_buf[3][2]~q\)) # (!write_step(0) & ((\Selector32~1_combout\))))) # (!write_step(2) & (((\Selector32~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => write_step(2),
	datab => write_step(0),
	datac => \clave_buf[3][2]~q\,
	datad => \Selector32~1_combout\,
	combout => \Selector32~2_combout\);

-- Location: LCCOMB_X27_Y15_N12
\dato_i[2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dato_i[2]~feeder_combout\ = \Selector32~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector32~2_combout\,
	combout => \dato_i[2]~feeder_combout\);

-- Location: FF_X27_Y15_N13
\dato_i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dato_i[2]~feeder_combout\,
	asdata => VCC,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \estado.OP_ELIMINAR_USR~q\,
	ena => \addr_i[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dato_i(2));

-- Location: FF_X26_Y15_N31
\clave_buf[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \tecla[3]~input_o\,
	sload => VCC,
	ena => \clave_buf[3][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clave_buf[3][3]~q\);

-- Location: FF_X24_Y15_N15
\clave_buf[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \tecla[3]~input_o\,
	sload => VCC,
	ena => \clave_buf[2][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clave_buf[2][3]~q\);

-- Location: LCCOMB_X24_Y15_N14
\Selector31~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector31~0_combout\ = (write_step(2) & (((\clave_buf[2][3]~q\)))) # (!write_step(2) & (write_step(1) & ((write_step(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => write_step(2),
	datab => write_step(1),
	datac => \clave_buf[2][3]~q\,
	datad => write_step(0),
	combout => \Selector31~0_combout\);

-- Location: LCCOMB_X25_Y15_N8
\clave_buf[1][3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clave_buf[1][3]~feeder_combout\ = \tecla[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tecla[3]~input_o\,
	combout => \clave_buf[1][3]~feeder_combout\);

-- Location: FF_X25_Y15_N9
\clave_buf[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clave_buf[1][3]~feeder_combout\,
	ena => \clave_buf[1][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clave_buf[1][3]~q\);

-- Location: FF_X25_Y15_N19
\clave_buf[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \tecla[3]~input_o\,
	sload => VCC,
	ena => \clave_buf[0][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clave_buf[0][3]~q\);

-- Location: LCCOMB_X25_Y15_N18
\Selector31~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector31~1_combout\ = (\Selector31~0_combout\ & ((\clave_buf[1][3]~q\) # ((!\dato_i[3]~0_combout\)))) # (!\Selector31~0_combout\ & (((\clave_buf[0][3]~q\ & \dato_i[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector31~0_combout\,
	datab => \clave_buf[1][3]~q\,
	datac => \clave_buf[0][3]~q\,
	datad => \dato_i[3]~0_combout\,
	combout => \Selector31~1_combout\);

-- Location: LCCOMB_X26_Y15_N30
\Selector31~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector31~2_combout\ = (write_step(2) & ((write_step(0) & (\clave_buf[3][3]~q\)) # (!write_step(0) & ((\Selector31~1_combout\))))) # (!write_step(2) & (((\Selector31~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => write_step(2),
	datab => write_step(0),
	datac => \clave_buf[3][3]~q\,
	datad => \Selector31~1_combout\,
	combout => \Selector31~2_combout\);

-- Location: LCCOMB_X27_Y15_N10
\dato_i[3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dato_i[3]~feeder_combout\ = \Selector31~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector31~2_combout\,
	combout => \dato_i[3]~feeder_combout\);

-- Location: FF_X27_Y15_N11
\dato_i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dato_i[3]~feeder_combout\,
	asdata => VCC,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \estado.OP_ELIMINAR_USR~q\,
	ena => \addr_i[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dato_i(3));

-- Location: FF_X29_Y15_N13
\dato_i[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \estado.OP_ELIMINAR_USR~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \addr_i[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dato_i(4));

-- Location: LCCOMB_X29_Y15_N14
\dato_i[5]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dato_i[5]~feeder_combout\ = \estado.OP_ELIMINAR_USR~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado.OP_ELIMINAR_USR~q\,
	combout => \dato_i[5]~feeder_combout\);

-- Location: FF_X29_Y15_N15
\dato_i[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dato_i[5]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \addr_i[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dato_i(5));

-- Location: LCCOMB_X29_Y15_N20
\dato_i[6]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dato_i[6]~feeder_combout\ = \estado.OP_ELIMINAR_USR~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado.OP_ELIMINAR_USR~q\,
	combout => \dato_i[6]~feeder_combout\);

-- Location: FF_X29_Y15_N21
\dato_i[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dato_i[6]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \addr_i[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dato_i(6));

-- Location: LCCOMB_X29_Y15_N22
\dato_i[7]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dato_i[7]~feeder_combout\ = \estado.OP_ELIMINAR_USR~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado.OP_ELIMINAR_USR~q\,
	combout => \dato_i[7]~feeder_combout\);

-- Location: FF_X29_Y15_N23
\dato_i[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dato_i[7]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \addr_i[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dato_i(7));

-- Location: LCCOMB_X29_Y15_N28
\Selector35~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector35~1_combout\ = (\estado.ESCRIBIENDO~q\) # ((\Selector35~0_combout\ & \estado.OP_ELIMINAR_USR~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector35~0_combout\,
	datac => \estado.OP_ELIMINAR_USR~q\,
	datad => \estado.ESCRIBIENDO~q\,
	combout => \Selector35~1_combout\);

-- Location: FF_X29_Y15_N29
we_i : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector35~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \we_i~q\);

-- Location: LCCOMB_X21_Y15_N10
\display_out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \display_out~0_combout\ = (\estado.OP_AGREGAR_USR~q\) # ((\estado.OP_AGREGAR_CLV~q\) # ((\estado.OP_ELIMINAR_USR~q\) # (\estado.OP_AGREGAR_HOR~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.OP_AGREGAR_USR~q\,
	datab => \estado.OP_AGREGAR_CLV~q\,
	datac => \estado.OP_ELIMINAR_USR~q\,
	datad => \estado.OP_AGREGAR_HOR~q\,
	combout => \display_out~0_combout\);

-- Location: LCCOMB_X24_Y15_N8
\display_out~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \display_out~1_combout\ = (usuario_sel(0)) # (!\display_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display_out~0_combout\,
	datad => usuario_sel(0),
	combout => \display_out~1_combout\);

-- Location: LCCOMB_X24_Y15_N10
\display_out~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \display_out~2_combout\ = (usuario_sel(1)) # (!\display_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display_out~0_combout\,
	datad => usuario_sel(1),
	combout => \display_out~2_combout\);

ww_mem_address(0) <= \mem_address[0]~output_o\;

ww_mem_address(1) <= \mem_address[1]~output_o\;

ww_mem_address(2) <= \mem_address[2]~output_o\;

ww_mem_address(3) <= \mem_address[3]~output_o\;

ww_mem_address(4) <= \mem_address[4]~output_o\;

ww_mem_address(5) <= \mem_address[5]~output_o\;

ww_mem_dato_in(0) <= \mem_dato_in[0]~output_o\;

ww_mem_dato_in(1) <= \mem_dato_in[1]~output_o\;

ww_mem_dato_in(2) <= \mem_dato_in[2]~output_o\;

ww_mem_dato_in(3) <= \mem_dato_in[3]~output_o\;

ww_mem_dato_in(4) <= \mem_dato_in[4]~output_o\;

ww_mem_dato_in(5) <= \mem_dato_in[5]~output_o\;

ww_mem_dato_in(6) <= \mem_dato_in[6]~output_o\;

ww_mem_dato_in(7) <= \mem_dato_in[7]~output_o\;

ww_mem_we <= \mem_we~output_o\;

ww_modo_admin <= \modo_admin~output_o\;

ww_display_out(0) <= \display_out[0]~output_o\;

ww_display_out(1) <= \display_out[1]~output_o\;

ww_display_out(2) <= \display_out[2]~output_o\;

ww_display_out(3) <= \display_out[3]~output_o\;
END structure;


