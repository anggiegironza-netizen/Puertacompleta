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

-- DATE "05/12/2026 17:43:22"

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

ENTITY 	top_principal IS
    PORT (
	CLOCK_50 : IN std_logic;
	RESET : IN std_logic;
	FILA : IN std_logic_vector(3 DOWNTO 0);
	COLUMNA : OUT std_logic_vector(3 DOWNTO 0);
	INTRUSION_SW : IN std_logic;
	SENSOR_PUERTA : IN std_logic;
	SALIR_ADMIN : IN std_logic;
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	SERVO_PWM : OUT std_logic;
	BUZZER_OUT : OUT std_logic;
	LED_ABRIR : OUT std_logic;
	LED_ALARMA : OUT std_logic;
	LED_BLOQUEO : OUT std_logic;
	LED_MANANA : OUT std_logic;
	LED_TARDE : OUT std_logic;
	LED_NOCHE : OUT std_logic;
	LED_FIN : OUT std_logic
	);
END top_principal;

-- Design Ports Information
-- COLUMNA[0]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COLUMNA[1]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COLUMNA[2]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COLUMNA[3]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SERVO_PWM	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUZZER_OUT	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_ABRIR	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_ALARMA	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_BLOQUEO	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_MANANA	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_TARDE	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_NOCHE	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_FIN	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INTRUSION_SW	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SENSOR_PUERTA	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SALIR_ADMIN	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FILA[0]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FILA[1]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FILA[2]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FILA[3]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top_principal IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_FILA : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_COLUMNA : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_INTRUSION_SW : std_logic;
SIGNAL ww_SENSOR_PUERTA : std_logic;
SIGNAL ww_SALIR_ADMIN : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_SERVO_PWM : std_logic;
SIGNAL ww_BUZZER_OUT : std_logic;
SIGNAL ww_LED_ABRIR : std_logic;
SIGNAL ww_LED_ALARMA : std_logic;
SIGNAL ww_LED_BLOQUEO : std_logic;
SIGNAL ww_LED_MANANA : std_logic;
SIGNAL ww_LED_TARDE : std_logic;
SIGNAL ww_LED_NOCHE : std_logic;
SIGNAL ww_LED_FIN : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \COLUMNA[0]~output_o\ : std_logic;
SIGNAL \COLUMNA[1]~output_o\ : std_logic;
SIGNAL \COLUMNA[2]~output_o\ : std_logic;
SIGNAL \COLUMNA[3]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \SERVO_PWM~output_o\ : std_logic;
SIGNAL \BUZZER_OUT~output_o\ : std_logic;
SIGNAL \LED_ABRIR~output_o\ : std_logic;
SIGNAL \LED_ALARMA~output_o\ : std_logic;
SIGNAL \LED_BLOQUEO~output_o\ : std_logic;
SIGNAL \LED_MANANA~output_o\ : std_logic;
SIGNAL \LED_TARDE~output_o\ : std_logic;
SIGNAL \LED_NOCHE~output_o\ : std_logic;
SIGNAL \LED_FIN~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \U_TECLADO|col_idx[0]~0_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \U_TECLADO|Add2~0_combout\ : std_logic;
SIGNAL \U_TECLADO|scan_div~6_combout\ : std_logic;
SIGNAL \U_TECLADO|Add2~1\ : std_logic;
SIGNAL \U_TECLADO|Add2~2_combout\ : std_logic;
SIGNAL \U_TECLADO|Add2~3\ : std_logic;
SIGNAL \U_TECLADO|Add2~4_combout\ : std_logic;
SIGNAL \U_TECLADO|Add2~5\ : std_logic;
SIGNAL \U_TECLADO|Add2~6_combout\ : std_logic;
SIGNAL \U_TECLADO|Add2~7\ : std_logic;
SIGNAL \U_TECLADO|Add2~8_combout\ : std_logic;
SIGNAL \U_TECLADO|scan_div~5_combout\ : std_logic;
SIGNAL \U_TECLADO|Add2~9\ : std_logic;
SIGNAL \U_TECLADO|Add2~10_combout\ : std_logic;
SIGNAL \U_TECLADO|Add2~11\ : std_logic;
SIGNAL \U_TECLADO|Add2~12_combout\ : std_logic;
SIGNAL \U_TECLADO|scan_div~4_combout\ : std_logic;
SIGNAL \U_TECLADO|Add2~13\ : std_logic;
SIGNAL \U_TECLADO|Add2~14_combout\ : std_logic;
SIGNAL \U_TECLADO|Add2~15\ : std_logic;
SIGNAL \U_TECLADO|Add2~16_combout\ : std_logic;
SIGNAL \U_TECLADO|scan_div~3_combout\ : std_logic;
SIGNAL \U_TECLADO|Add2~17\ : std_logic;
SIGNAL \U_TECLADO|Add2~18_combout\ : std_logic;
SIGNAL \U_TECLADO|scan_div~2_combout\ : std_logic;
SIGNAL \U_TECLADO|Add2~19\ : std_logic;
SIGNAL \U_TECLADO|Add2~20_combout\ : std_logic;
SIGNAL \U_TECLADO|Add2~21\ : std_logic;
SIGNAL \U_TECLADO|Add2~22_combout\ : std_logic;
SIGNAL \U_TECLADO|Add2~23\ : std_logic;
SIGNAL \U_TECLADO|Add2~24_combout\ : std_logic;
SIGNAL \U_TECLADO|Add2~25\ : std_logic;
SIGNAL \U_TECLADO|Add2~26_combout\ : std_logic;
SIGNAL \U_TECLADO|Add2~27\ : std_logic;
SIGNAL \U_TECLADO|Add2~28_combout\ : std_logic;
SIGNAL \U_TECLADO|scan_div~1_combout\ : std_logic;
SIGNAL \U_TECLADO|Add2~29\ : std_logic;
SIGNAL \U_TECLADO|Add2~30_combout\ : std_logic;
SIGNAL \U_TECLADO|scan_div~0_combout\ : std_logic;
SIGNAL \U_TECLADO|Equal0~0_combout\ : std_logic;
SIGNAL \U_TECLADO|Equal0~3_combout\ : std_logic;
SIGNAL \U_TECLADO|Equal0~1_combout\ : std_logic;
SIGNAL \U_TECLADO|Equal0~2_combout\ : std_logic;
SIGNAL \U_TECLADO|Equal0~4_combout\ : std_logic;
SIGNAL \U_TECLADO|Add1~0_combout\ : std_logic;
SIGNAL \U_TECLADO|Mux3~0_combout\ : std_logic;
SIGNAL \U_TECLADO|Mux2~0_combout\ : std_logic;
SIGNAL \U_TECLADO|Mux1~0_combout\ : std_logic;
SIGNAL \U_TECLADO|Mux7~0_combout\ : std_logic;
SIGNAL \SALIR_ADMIN~input_o\ : std_logic;
SIGNAL \FILA[1]~input_o\ : std_logic;
SIGNAL \FILA[0]~input_o\ : std_logic;
SIGNAL \U_TECLADO|Equal1~1_combout\ : std_logic;
SIGNAL \FILA[2]~input_o\ : std_logic;
SIGNAL \U_TECLADO|row_index~0_combout\ : std_logic;
SIGNAL \U_TECLADO|Mux8~0_combout\ : std_logic;
SIGNAL \U_TECLADO|release_count[0]~5_combout\ : std_logic;
SIGNAL \FILA[3]~input_o\ : std_logic;
SIGNAL \U_TECLADO|Equal1~0_combout\ : std_logic;
SIGNAL \U_TECLADO|release_count[1]~8\ : std_logic;
SIGNAL \U_TECLADO|release_count[2]~9_combout\ : std_logic;
SIGNAL \U_TECLADO|release_count[2]~10\ : std_logic;
SIGNAL \U_TECLADO|release_count[3]~11_combout\ : std_logic;
SIGNAL \U_TECLADO|release_count[3]~12\ : std_logic;
SIGNAL \U_TECLADO|release_count[4]~13_combout\ : std_logic;
SIGNAL \U_TECLADO|release_count[4]~15_combout\ : std_logic;
SIGNAL \U_TECLADO|release_count[0]~6\ : std_logic;
SIGNAL \U_TECLADO|release_count[1]~7_combout\ : std_logic;
SIGNAL \U_TECLADO|key_armed~0_combout\ : std_logic;
SIGNAL \U_TECLADO|key_armed~1_combout\ : std_logic;
SIGNAL \U_TECLADO|key_armed~q\ : std_logic;
SIGNAL \U_TECLADO|tecla_valida~0_combout\ : std_logic;
SIGNAL \U_TECLADO|Mux9~0_combout\ : std_logic;
SIGNAL \U_TECLADO|Mux7~1_combout\ : std_logic;
SIGNAL \U_TECLADO|Mux10~0_combout\ : std_logic;
SIGNAL \U_ADMIN|Equal4~0_combout\ : std_logic;
SIGNAL \U_ADMIN|process_0~0_combout\ : std_logic;
SIGNAL \U_ADMIN|estado~28_combout\ : std_logic;
SIGNAL \U_TECLADO|tecla_valida~q\ : std_logic;
SIGNAL \U_ADMIN|estado~46_combout\ : std_logic;
SIGNAL \U_ADMIN|estado~47_combout\ : std_logic;
SIGNAL \U_ADMIN|estado.OP_AGREGAR_USR~q\ : std_logic;
SIGNAL \U_ADMIN|digito_clave[0]~6_combout\ : std_logic;
SIGNAL \U_ADMIN|digito_clave[1]~4_combout\ : std_logic;
SIGNAL \U_ADMIN|digito_clave[1]~5_combout\ : std_logic;
SIGNAL \U_ADMIN|Selector40~0_combout\ : std_logic;
SIGNAL \U_ADMIN|ultimo_digito[1]~4_combout\ : std_logic;
SIGNAL \U_ADMIN|digito_clave[1]~2_combout\ : std_logic;
SIGNAL \U_ADMIN|digito_clave[1]~3_combout\ : std_logic;
SIGNAL \U_ADMIN|digito_clave[1]~8_combout\ : std_logic;
SIGNAL \U_ADMIN|digito_clave[0]~7_combout\ : std_logic;
SIGNAL \U_ADMIN|clave_buf[3][0]~2_combout\ : std_logic;
SIGNAL \U_ADMIN|estado~27_combout\ : std_logic;
SIGNAL \U_ADMIN|estado~29_combout\ : std_logic;
SIGNAL \U_ADMIN|estado~30_combout\ : std_logic;
SIGNAL \U_ADMIN|estado~40_combout\ : std_logic;
SIGNAL \U_ADMIN|estado~42_combout\ : std_logic;
SIGNAL \U_ADMIN|estado.OP_AGREGAR_HOR~q\ : std_logic;
SIGNAL \U_ADMIN|estado~26_combout\ : std_logic;
SIGNAL \U_ADMIN|estado~25_combout\ : std_logic;
SIGNAL \U_ADMIN|estado~31_combout\ : std_logic;
SIGNAL \U_ADMIN|estado~38_combout\ : std_logic;
SIGNAL \U_ADMIN|estado~39_combout\ : std_logic;
SIGNAL \U_ADMIN|estado.ESPERA~q\ : std_logic;
SIGNAL \U_ADMIN|estado~34_combout\ : std_logic;
SIGNAL \U_ADMIN|estado~43_combout\ : std_logic;
SIGNAL \U_ADMIN|estado.CLAVE_ADMIN~q\ : std_logic;
SIGNAL \U_ADMIN|estado~32_combout\ : std_logic;
SIGNAL \U_ADMIN|digito_admin~3_combout\ : std_logic;
SIGNAL \cargar_digito_s~0_combout\ : std_logic;
SIGNAL \U_ADMIN|digito_admin[1]~2_combout\ : std_logic;
SIGNAL \U_ADMIN|digito_admin~0_combout\ : std_logic;
SIGNAL \U_ADMIN|digito_admin~1_combout\ : std_logic;
SIGNAL \U_ADMIN|Equal0~0_combout\ : std_logic;
SIGNAL \U_ADMIN|Equal0~1_combout\ : std_logic;
SIGNAL \U_ADMIN|estado~33_combout\ : std_logic;
SIGNAL \U_ADMIN|estado~36_combout\ : std_logic;
SIGNAL \U_ADMIN|estado~44_combout\ : std_logic;
SIGNAL \U_ADMIN|estado~45_combout\ : std_logic;
SIGNAL \U_ADMIN|estado.ADMIN_OK~q\ : std_logic;
SIGNAL \U_ADMIN|estado~35_combout\ : std_logic;
SIGNAL \U_ADMIN|estado~48_combout\ : std_logic;
SIGNAL \U_ADMIN|estado~49_combout\ : std_logic;
SIGNAL \U_ADMIN|estado.OP_ELIMINAR_USR~q\ : std_logic;
SIGNAL \U_ADMIN|estado~19_combout\ : std_logic;
SIGNAL \U_ADMIN|ultimo_horario[3]~0_combout\ : std_logic;
SIGNAL \U_ADMIN|estado~50_combout\ : std_logic;
SIGNAL \U_ADMIN|estado.ESCRIBIENDO~q\ : std_logic;
SIGNAL \U_ADMIN|estado~22_combout\ : std_logic;
SIGNAL \U_ADMIN|estado~23_combout\ : std_logic;
SIGNAL \U_ADMIN|Selector25~0_combout\ : std_logic;
SIGNAL \U_ADMIN|write_step~3_combout\ : std_logic;
SIGNAL \U_ADMIN|write_step[2]~1_combout\ : std_logic;
SIGNAL \U_ADMIN|write_step[2]~2_combout\ : std_logic;
SIGNAL \U_ADMIN|write_step~0_combout\ : std_logic;
SIGNAL \U_ADMIN|estado~20_combout\ : std_logic;
SIGNAL \U_ADMIN|estado~21_combout\ : std_logic;
SIGNAL \U_ADMIN|estado~24_combout\ : std_logic;
SIGNAL \U_ADMIN|estado~37_combout\ : std_logic;
SIGNAL \U_ADMIN|estado~41_combout\ : std_logic;
SIGNAL \U_ADMIN|estado.OP_AGREGAR_CLV~q\ : std_logic;
SIGNAL \U_ADMIN|ultimo_horario~4_combout\ : std_logic;
SIGNAL \U_ADMIN|ultimo_horario[3]~2_combout\ : std_logic;
SIGNAL \U_ADMIN|ultimo_digito[1]~2_combout\ : std_logic;
SIGNAL \U_ADMIN|ultimo_digito~6_combout\ : std_logic;
SIGNAL \U_ADMIN|ultimo_digito[1]~8_combout\ : std_logic;
SIGNAL \U_ADMIN|admin_hex0_num[2]~2_combout\ : std_logic;
SIGNAL \U_ADMIN|ultimo_horario~3_combout\ : std_logic;
SIGNAL \U_ADMIN|ultimo_digito~5_combout\ : std_logic;
SIGNAL \U_ADMIN|admin_hex0_num[1]~1_combout\ : std_logic;
SIGNAL \U_ADMIN|ultimo_digito~7_combout\ : std_logic;
SIGNAL \U_ADMIN|ultimo_horario~5_combout\ : std_logic;
SIGNAL \U_ADMIN|admin_hex0_num[3]~3_combout\ : std_logic;
SIGNAL \U_ADMIN|ultimo_digito~3_combout\ : std_logic;
SIGNAL \U_ADMIN|ultimo_horario~1_combout\ : std_logic;
SIGNAL \U_ADMIN|admin_hex0_num[0]~0_combout\ : std_logic;
SIGNAL \U_ADM_HEX0_NUM|Mux6~0_combout\ : std_logic;
SIGNAL \U_ADMIN|Selector10~0_combout\ : std_logic;
SIGNAL \U_ADMIN|Selector10~1_combout\ : std_logic;
SIGNAL \U_ADMIN|horario_ingresado~q\ : std_logic;
SIGNAL \U_ADMIN|admin_hex0_es_num~0_combout\ : std_logic;
SIGNAL \modo_admin_prev_s~q\ : std_logic;
SIGNAL \U_FSM|Selector6~4_combout\ : std_logic;
SIGNAL \SENSOR_PUERTA~input_o\ : std_logic;
SIGNAL \INTRUSION_SW~input_o\ : std_logic;
SIGNAL \U_TIMER_OPEN|contador[0]~6_combout\ : std_logic;
SIGNAL \salida_admin_s~combout\ : std_logic;
SIGNAL \HEX3~4_combout\ : std_logic;
SIGNAL \U_TIMER_ERROR|Add0~0_combout\ : std_logic;
SIGNAL \U_REGISTRO|contador~10_combout\ : std_logic;
SIGNAL \U_REGISTRO|contador[1]~6_combout\ : std_logic;
SIGNAL \HEX1~12_combout\ : std_logic;
SIGNAL \cargar_digito_s~combout\ : std_logic;
SIGNAL \U_FSM|Selector7~11_combout\ : std_logic;
SIGNAL \U_REGISTRO|contador~12_combout\ : std_logic;
SIGNAL \U_REGISTRO|contador~5_combout\ : std_logic;
SIGNAL \U_REGISTRO|contador[1]~7_combout\ : std_logic;
SIGNAL \U_REGISTRO|contador~11_combout\ : std_logic;
SIGNAL \U_REGISTRO|contador~8_combout\ : std_logic;
SIGNAL \U_REGISTRO|contador~9_combout\ : std_logic;
SIGNAL \U_ADMIN|Equal2~0_combout\ : std_logic;
SIGNAL \U_GESTOR|es_admin~0_combout\ : std_logic;
SIGNAL \U_GESTOR|base_addr_reg[4]~0_combout\ : std_logic;
SIGNAL \U_GESTOR|base_addr_reg[4]~1_combout\ : std_logic;
SIGNAL \U_GESTOR|es_admin~q\ : std_logic;
SIGNAL \U_GESTOR|estado_rd~23_combout\ : std_logic;
SIGNAL \U_GESTOR|estado_rd.ESPERA_SELECCION~q\ : std_logic;
SIGNAL \U_GESTOR|estado_rd~22_combout\ : std_logic;
SIGNAL \U_GESTOR|estado_rd.LEE_ID~q\ : std_logic;
SIGNAL \U_GESTOR|id_ram[7]~0_combout\ : std_logic;
SIGNAL \U_GESTOR|estado_rd.LEE_HOR~q\ : std_logic;
SIGNAL \U_GESTOR|horario_ram[0]~0_combout\ : std_logic;
SIGNAL \U_GESTOR|estado_rd.LEE_D0~q\ : std_logic;
SIGNAL \U_GESTOR|d0_ram[3]~0_combout\ : std_logic;
SIGNAL \U_GESTOR|estado_rd.LEE_D1~q\ : std_logic;
SIGNAL \U_GESTOR|d1_ram[3]~0_combout\ : std_logic;
SIGNAL \U_GESTOR|estado_rd.LEE_D2~q\ : std_logic;
SIGNAL \U_GESTOR|d2_ram[3]~0_combout\ : std_logic;
SIGNAL \U_GESTOR|estado_rd.LEE_D3~q\ : std_logic;
SIGNAL \U_GESTOR|estado_rd~24_combout\ : std_logic;
SIGNAL \U_GESTOR|estado_rd.LISTO~q\ : std_logic;
SIGNAL \U_FSM|process_1~0_combout\ : std_logic;
SIGNAL \U_GESTOR|Selector13~0_combout\ : std_logic;
SIGNAL \U_GESTOR|addr_rd[2]~8_combout\ : std_logic;
SIGNAL \U_GESTOR|addr_rd~11_combout\ : std_logic;
SIGNAL \U_GESTOR|Mux1~0_combout\ : std_logic;
SIGNAL \U_GESTOR|base_addr_reg~2_combout\ : std_logic;
SIGNAL \U_GESTOR|addr_rd~6_combout\ : std_logic;
SIGNAL \U_GESTOR|Mux0~0_combout\ : std_logic;
SIGNAL \U_GESTOR|base_addr_reg~3_combout\ : std_logic;
SIGNAL \U_GESTOR|addr_rd~20_combout\ : std_logic;
SIGNAL \U_GESTOR|addr_rd~21_combout\ : std_logic;
SIGNAL \U_GESTOR|addr_rd~22_combout\ : std_logic;
SIGNAL \U_ADMIN|Selector31~0_combout\ : std_logic;
SIGNAL \U_ADMIN|addr_i[2]~1_combout\ : std_logic;
SIGNAL \U_GESTOR|Selector5~0_combout\ : std_logic;
SIGNAL \U_GESTOR|addr_rd~18_combout\ : std_logic;
SIGNAL \U_GESTOR|addr_rd~19_combout\ : std_logic;
SIGNAL \mem_address_s[0]~4_combout\ : std_logic;
SIGNAL \U_ADMIN|usuario_sel[0]~feeder_combout\ : std_logic;
SIGNAL \U_ADMIN|usuario_sel[1]~0_combout\ : std_logic;
SIGNAL \U_ADMIN|Selector27~0_combout\ : std_logic;
SIGNAL \U_GESTOR|Add4~0_combout\ : std_logic;
SIGNAL \U_GESTOR|Add2~1_combout\ : std_logic;
SIGNAL \U_GESTOR|addr_rd~13_combout\ : std_logic;
SIGNAL \U_GESTOR|addr_rd~5_combout\ : std_logic;
SIGNAL \U_GESTOR|addr_rd~14_combout\ : std_logic;
SIGNAL \U_GESTOR|addr_rd[2]~9_combout\ : std_logic;
SIGNAL \mem_address_s[4]~2_combout\ : std_logic;
SIGNAL \U_ADMIN|addr_i[4]~0_combout\ : std_logic;
SIGNAL \U_ADMIN|Selector28~0_combout\ : std_logic;
SIGNAL \U_ADMIN|Selector28~1_combout\ : std_logic;
SIGNAL \U_GESTOR|addr_rd~10_combout\ : std_logic;
SIGNAL \U_GESTOR|Add2~0_combout\ : std_logic;
SIGNAL \U_GESTOR|addr_rd~12_combout\ : std_logic;
SIGNAL \mem_address_s[3]~1_combout\ : std_logic;
SIGNAL \U_ADMIN|Selector29~0_combout\ : std_logic;
SIGNAL \U_GESTOR|addr_rd~4_combout\ : std_logic;
SIGNAL \U_GESTOR|addr_rd~23_combout\ : std_logic;
SIGNAL \U_GESTOR|addr_rd~7_combout\ : std_logic;
SIGNAL \mem_address_s[2]~0_combout\ : std_logic;
SIGNAL \U_MEMORIA|data_out[2]~0_combout\ : std_logic;
SIGNAL \U_GESTOR|addr_rd~15_combout\ : std_logic;
SIGNAL \U_GESTOR|addr_rd~16_combout\ : std_logic;
SIGNAL \U_GESTOR|addr_rd~17_combout\ : std_logic;
SIGNAL \U_ADMIN|Selector30~0_combout\ : std_logic;
SIGNAL \U_ADMIN|Selector30~1_combout\ : std_logic;
SIGNAL \U_ADMIN|Selector30~2_combout\ : std_logic;
SIGNAL \mem_address_s[1]~3_combout\ : std_logic;
SIGNAL \U_MEMORIA|data_out[1]~1_combout\ : std_logic;
SIGNAL \U_ADMIN|horario_buf[0]~0_combout\ : std_logic;
SIGNAL \U_ADMIN|Selector39~1_combout\ : std_logic;
SIGNAL \U_ADMIN|clave_buf[2][0]~3_combout\ : std_logic;
SIGNAL \U_ADMIN|clave_buf[1][0]~8_combout\ : std_logic;
SIGNAL \U_ADMIN|clave_buf[1][0]~q\ : std_logic;
SIGNAL \U_ADMIN|clave_buf[0][0]~5_combout\ : std_logic;
SIGNAL \U_ADMIN|clave_buf[0][0]~6_combout\ : std_logic;
SIGNAL \U_ADMIN|clave_buf[0][0]~7_combout\ : std_logic;
SIGNAL \U_ADMIN|clave_buf[0][0]~q\ : std_logic;
SIGNAL \U_ADMIN|Selector39~2_combout\ : std_logic;
SIGNAL \U_ADMIN|clave_buf[3][0]~9_combout\ : std_logic;
SIGNAL \U_ADMIN|clave_buf[3][0]~q\ : std_logic;
SIGNAL \U_ADMIN|clave_buf[2][0]~4_combout\ : std_logic;
SIGNAL \U_ADMIN|clave_buf[2][0]~q\ : std_logic;
SIGNAL \U_ADMIN|Selector39~0_combout\ : std_logic;
SIGNAL \U_ADMIN|Selector39~3_combout\ : std_logic;
SIGNAL \mem_data_in_s[0]~1_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~198feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~446_combout\ : std_logic;
SIGNAL \U_ADMIN|Selector40~1_combout\ : std_logic;
SIGNAL \U_ADMIN|we_i~q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~430_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~431_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~447_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~198_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~440_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~441_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~190_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~182feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~442_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~443_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~182_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~444_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~445_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~174_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~290_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~291_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~502_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~460_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~461_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~238_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~501_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~458_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~459_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~246_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~297_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~254feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~456_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~457_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~254_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~462_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~463_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~262_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~298_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~158feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~450_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~451_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~158_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~454_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~455_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~166_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~500_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~452_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~453_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~142_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~499_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~448_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~449_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~150_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~294_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~295_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~498_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~438_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~439_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~230_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~497_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~436_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~437_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~206_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~496_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~432_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~433_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~214_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~292_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~495_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~434_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~435_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~222_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~293_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~296_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~299_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~503_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~464_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~476_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~110_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~504_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~472_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~118_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~54feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~469_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~54_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~473_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~46_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~300_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~301_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~506_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~474_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~78_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~470_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~86_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~22feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~471_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~22_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~475_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~14_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~304_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~305_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~505_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~466_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~94_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~478_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~102_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~38feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~479_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~38_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~467_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~30_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~302_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~303_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~306_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~508_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~480_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~134_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~477_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~70_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~507_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~468_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~126_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~465_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~62_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~307_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~308_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~309_combout\ : std_logic;
SIGNAL \U_MEMORIA|data_out[0]~4_combout\ : std_logic;
SIGNAL \U_MEMORIA|data_out[0]~5_combout\ : std_logic;
SIGNAL \U_MEMORIA|data_out[0]~6_combout\ : std_logic;
SIGNAL \U_GESTOR|horario_ram[0]~2_combout\ : std_logic;
SIGNAL \U_HORARIO|Add0~0_combout\ : std_logic;
SIGNAL \U_HORARIO|Add0~1\ : std_logic;
SIGNAL \U_HORARIO|Add0~2_combout\ : std_logic;
SIGNAL \U_TICK|Add0~0_combout\ : std_logic;
SIGNAL \U_TICK|Add0~1\ : std_logic;
SIGNAL \U_TICK|Add0~2_combout\ : std_logic;
SIGNAL \U_TICK|Add0~3\ : std_logic;
SIGNAL \U_TICK|Add0~4_combout\ : std_logic;
SIGNAL \U_TICK|Add0~5\ : std_logic;
SIGNAL \U_TICK|Add0~6_combout\ : std_logic;
SIGNAL \U_TICK|Add0~7\ : std_logic;
SIGNAL \U_TICK|Add0~8_combout\ : std_logic;
SIGNAL \U_TICK|Add0~9\ : std_logic;
SIGNAL \U_TICK|Add0~10_combout\ : std_logic;
SIGNAL \U_TICK|Equal0~6_combout\ : std_logic;
SIGNAL \U_TICK|Equal0~7_combout\ : std_logic;
SIGNAL \U_TICK|Add0~11\ : std_logic;
SIGNAL \U_TICK|Add0~12_combout\ : std_logic;
SIGNAL \U_TICK|Add0~13\ : std_logic;
SIGNAL \U_TICK|Add0~14_combout\ : std_logic;
SIGNAL \U_TICK|contador~11_combout\ : std_logic;
SIGNAL \U_TICK|Add0~15\ : std_logic;
SIGNAL \U_TICK|Add0~16_combout\ : std_logic;
SIGNAL \U_TICK|Add0~17\ : std_logic;
SIGNAL \U_TICK|Add0~18_combout\ : std_logic;
SIGNAL \U_TICK|Equal0~5_combout\ : std_logic;
SIGNAL \U_TICK|Add0~19\ : std_logic;
SIGNAL \U_TICK|Add0~20_combout\ : std_logic;
SIGNAL \U_TICK|Add0~21\ : std_logic;
SIGNAL \U_TICK|Add0~22_combout\ : std_logic;
SIGNAL \U_TICK|Add0~23\ : std_logic;
SIGNAL \U_TICK|Add0~24_combout\ : std_logic;
SIGNAL \U_TICK|contador~10_combout\ : std_logic;
SIGNAL \U_TICK|Add0~25\ : std_logic;
SIGNAL \U_TICK|Add0~26_combout\ : std_logic;
SIGNAL \U_TICK|contador~9_combout\ : std_logic;
SIGNAL \U_TICK|Add0~27\ : std_logic;
SIGNAL \U_TICK|Add0~28_combout\ : std_logic;
SIGNAL \U_TICK|contador~8_combout\ : std_logic;
SIGNAL \U_TICK|Add0~29\ : std_logic;
SIGNAL \U_TICK|Add0~30_combout\ : std_logic;
SIGNAL \U_TICK|contador~7_combout\ : std_logic;
SIGNAL \U_TICK|Add0~31\ : std_logic;
SIGNAL \U_TICK|Add0~32_combout\ : std_logic;
SIGNAL \U_TICK|Add0~33\ : std_logic;
SIGNAL \U_TICK|Add0~34_combout\ : std_logic;
SIGNAL \U_TICK|contador~6_combout\ : std_logic;
SIGNAL \U_TICK|Equal0~2_combout\ : std_logic;
SIGNAL \U_TICK|Add0~35\ : std_logic;
SIGNAL \U_TICK|Add0~36_combout\ : std_logic;
SIGNAL \U_TICK|Add0~37\ : std_logic;
SIGNAL \U_TICK|Add0~38_combout\ : std_logic;
SIGNAL \U_TICK|contador~5_combout\ : std_logic;
SIGNAL \U_TICK|Add0~39\ : std_logic;
SIGNAL \U_TICK|Add0~40_combout\ : std_logic;
SIGNAL \U_TICK|contador~4_combout\ : std_logic;
SIGNAL \U_TICK|Add0~41\ : std_logic;
SIGNAL \U_TICK|Add0~42_combout\ : std_logic;
SIGNAL \U_TICK|contador~3_combout\ : std_logic;
SIGNAL \U_TICK|Equal0~1_combout\ : std_logic;
SIGNAL \U_TICK|Add0~43\ : std_logic;
SIGNAL \U_TICK|Add0~44_combout\ : std_logic;
SIGNAL \U_TICK|contador~2_combout\ : std_logic;
SIGNAL \U_TICK|Add0~45\ : std_logic;
SIGNAL \U_TICK|Add0~46_combout\ : std_logic;
SIGNAL \U_TICK|contador~1_combout\ : std_logic;
SIGNAL \U_TICK|Add0~47\ : std_logic;
SIGNAL \U_TICK|Add0~48_combout\ : std_logic;
SIGNAL \U_TICK|Add0~49\ : std_logic;
SIGNAL \U_TICK|Add0~50_combout\ : std_logic;
SIGNAL \U_TICK|contador~0_combout\ : std_logic;
SIGNAL \U_TICK|Equal0~0_combout\ : std_logic;
SIGNAL \U_TICK|Equal0~3_combout\ : std_logic;
SIGNAL \U_TICK|Equal0~4_combout\ : std_logic;
SIGNAL \U_TICK|Equal0~8_combout\ : std_logic;
SIGNAL \U_TICK|tick_1s~feeder_combout\ : std_logic;
SIGNAL \U_TICK|tick_1s~q\ : std_logic;
SIGNAL \U_HORARIO|Add0~3\ : std_logic;
SIGNAL \U_HORARIO|Add0~4_combout\ : std_logic;
SIGNAL \U_HORARIO|contador~1_combout\ : std_logic;
SIGNAL \U_HORARIO|Add0~5\ : std_logic;
SIGNAL \U_HORARIO|Add0~6_combout\ : std_logic;
SIGNAL \U_HORARIO|Add0~7\ : std_logic;
SIGNAL \U_HORARIO|Add0~8_combout\ : std_logic;
SIGNAL \U_HORARIO|contador~3_combout\ : std_logic;
SIGNAL \U_HORARIO|Equal0~0_combout\ : std_logic;
SIGNAL \U_HORARIO|contador~4_combout\ : std_logic;
SIGNAL \U_HORARIO|Equal0~1_combout\ : std_logic;
SIGNAL \U_HORARIO|Add0~9\ : std_logic;
SIGNAL \U_HORARIO|Add0~10_combout\ : std_logic;
SIGNAL \U_HORARIO|contador~2_combout\ : std_logic;
SIGNAL \U_HORARIO|Add0~11\ : std_logic;
SIGNAL \U_HORARIO|Add0~12_combout\ : std_logic;
SIGNAL \U_HORARIO|Add0~13\ : std_logic;
SIGNAL \U_HORARIO|Add0~14_combout\ : std_logic;
SIGNAL \U_HORARIO|contador~0_combout\ : std_logic;
SIGNAL \U_ADMIN|clave_buf[3][1]~q\ : std_logic;
SIGNAL \U_ADMIN|clave_buf[2][1]~q\ : std_logic;
SIGNAL \U_ADMIN|Selector38~0_combout\ : std_logic;
SIGNAL \U_ADMIN|Selector38~1_combout\ : std_logic;
SIGNAL \U_ADMIN|clave_buf[0][1]~q\ : std_logic;
SIGNAL \U_ADMIN|clave_buf[1][1]~feeder_combout\ : std_logic;
SIGNAL \U_ADMIN|clave_buf[1][1]~q\ : std_logic;
SIGNAL \U_ADMIN|Selector38~2_combout\ : std_logic;
SIGNAL \U_ADMIN|Selector38~3_combout\ : std_logic;
SIGNAL \mem_data_in_s[1]~0_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~255feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~255_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~263_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~492_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~239_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~491_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~247_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~277_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~278_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~484_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~231_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~481_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~215_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~482_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~223_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~483_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~207_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~270_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~271_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~485_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~191_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~488_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~199_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~487_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~175_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~486_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~183_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~272_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~273_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~490_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~167_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~151_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~143_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~489_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~159_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~274_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~275_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~276_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~279_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~63feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~63_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~127_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~493_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~95_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~31_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~280_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~281_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~135_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~71_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~103feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~103_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~39_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~287_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~288_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~55feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~55_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~119_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~494_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~87_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~23_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~282_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~283_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~47feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~47_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~111_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~79feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~79_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~15_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~284_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~285_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~286_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~289_combout\ : std_logic;
SIGNAL \U_MEMORIA|data_out[1]~2_combout\ : std_logic;
SIGNAL \U_MEMORIA|data_out[1]~3_combout\ : std_logic;
SIGNAL \U_GESTOR|horario_ram[1]~1_combout\ : std_logic;
SIGNAL \U_HORARIO|horario[1]~0_combout\ : std_logic;
SIGNAL \U_GESTOR|Equal6~0_combout\ : std_logic;
SIGNAL \U_HORARIO|horario[0]~1_combout\ : std_logic;
SIGNAL \U_HORARIO|horario[0]~2_combout\ : std_logic;
SIGNAL \U_HORARIO|horario[0]~3_combout\ : std_logic;
SIGNAL \U_HORARIO|horario[0]~4_combout\ : std_logic;
SIGNAL \U_GESTOR|id_ram[0]~8_combout\ : std_logic;
SIGNAL \U_GESTOR|id_ram[1]~7_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|LessThan0~0_combout\ : std_logic;
SIGNAL \U_MEMORIA|data_out[3]~17_combout\ : std_logic;
SIGNAL \U_ADMIN|clave_buf[1][3]~feeder_combout\ : std_logic;
SIGNAL \U_ADMIN|clave_buf[1][3]~q\ : std_logic;
SIGNAL \U_ADMIN|clave_buf[2][3]~q\ : std_logic;
SIGNAL \U_ADMIN|Selector36~0_combout\ : std_logic;
SIGNAL \U_ADMIN|clave_buf[0][3]~q\ : std_logic;
SIGNAL \U_ADMIN|dato_i[2]~0_combout\ : std_logic;
SIGNAL \U_ADMIN|Selector36~1_combout\ : std_logic;
SIGNAL \U_ADMIN|clave_buf[3][3]~q\ : std_logic;
SIGNAL \U_ADMIN|Selector36~2_combout\ : std_logic;
SIGNAL \U_ADMIN|dato_i[3]~feeder_combout\ : std_logic;
SIGNAL \mem_data_in_s[3]~3_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~185feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~185_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~201_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~193feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~193_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~177_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~390_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~391_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~249_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~265_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~241_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~257feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~257_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~397_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~398_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~225feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~225_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~233_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~217feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~217_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~209_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~392_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~393_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~161feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~161_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~169_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~153feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~153_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~145_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~394_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~395_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~396_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~399_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~121_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~57_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~89_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~25_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~400_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~401_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~137feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~137_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~105_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~73feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~73_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~41_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~407_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~408_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~49feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~49_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~113_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~81feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~81_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~17_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~404_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~405_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~97feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~97_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~129_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~65feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~65_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~33_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~402_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~403_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~406_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~409_combout\ : std_logic;
SIGNAL \U_MEMORIA|data_out[3]~16_combout\ : std_logic;
SIGNAL \U_MEMORIA|data_out[3]~18_combout\ : std_logic;
SIGNAL \U_GESTOR|id_ram[3]~5_combout\ : std_logic;
SIGNAL \U_MEMORIA|data_out[2]~7_combout\ : std_logic;
SIGNAL \U_ADMIN|clave_buf[1][2]~feeder_combout\ : std_logic;
SIGNAL \U_ADMIN|clave_buf[1][2]~q\ : std_logic;
SIGNAL \U_ADMIN|clave_buf[0][2]~q\ : std_logic;
SIGNAL \U_ADMIN|clave_buf[2][2]~q\ : std_logic;
SIGNAL \U_ADMIN|Selector37~0_combout\ : std_logic;
SIGNAL \U_ADMIN|Selector37~1_combout\ : std_logic;
SIGNAL \U_ADMIN|clave_buf[3][2]~q\ : std_logic;
SIGNAL \U_ADMIN|Selector37~2_combout\ : std_logic;
SIGNAL \U_ADMIN|dato_i[2]~feeder_combout\ : std_logic;
SIGNAL \mem_data_in_s[2]~4_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~256feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~256_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~264_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~248feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~248_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~240_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~417_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~418_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~216feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~216_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~232_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~224_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~208_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~410_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~411_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~192feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~192_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~200_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~184feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~184_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~176_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~412_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~413_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~152feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~152_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~168_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~160feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~160_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~144_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~414_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~415_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~416_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~419_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~64feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~64_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~128_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~96feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~96_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~32_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~420_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~421_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~136feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~136_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~72_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~40feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~40_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~509_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~104_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~427_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~428_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~88feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~88_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~120_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~56feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~56_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~24_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~422_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~423_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~80feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~80_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~112_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~48feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~48_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~16_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~424_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~425_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~426_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~429_combout\ : std_logic;
SIGNAL \U_MEMORIA|data_out[2]~19_combout\ : std_logic;
SIGNAL \U_MEMORIA|data_out[2]~20_combout\ : std_logic;
SIGNAL \U_GESTOR|id_ram[2]~6_combout\ : std_logic;
SIGNAL \U_GESTOR|Equal5~1_combout\ : std_logic;
SIGNAL \U_ADMIN|dato_i[4]~feeder_combout\ : std_logic;
SIGNAL \mem_data_in_s[7]~2_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~234feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~234_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~218_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~226feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~226_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~210_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~370_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~371_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~154feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~154_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~170_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~162feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~162_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~146_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~374_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~375_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~186feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~186_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~178_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~372_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~202_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~194_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~373_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~376_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~258feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~258_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~266_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~250feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~250_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~242_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~377_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~378_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~379_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~98feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~98_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~34_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~380_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~66feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~66_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~130_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~381_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~138feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~138_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~74_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~42feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~42_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~106feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~106_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~387_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~388_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~82_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~114_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~50feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~50_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~18_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~384_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~385_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~90_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~122_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~58feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~58_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~26_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~382_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~383_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~386_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~389_combout\ : std_logic;
SIGNAL \U_MEMORIA|data_out[4]~14_combout\ : std_logic;
SIGNAL \U_MEMORIA|data_out[4]~15_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~229_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~237_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~221_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~213_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~312_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~313_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~173_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~165feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~165_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~149feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~149_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~157feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~157_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~314_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~315_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~316_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~197feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~197_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~181_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~310_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~205_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~189_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~311_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~253feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~253_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~269_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~261feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~261_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~245_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~317_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~318_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~319_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~109_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~141_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~77feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~77_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~45_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~327_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~328_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~61_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~125_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~29_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~93feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~93_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~320_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~321_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~69feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~69_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~37_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~322_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~101_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~133_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~323_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~53feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~53_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~117_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~85feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~85_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~21_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~324_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~325_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~326_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~329_combout\ : std_logic;
SIGNAL \U_MEMORIA|data_out[7]~8_combout\ : std_logic;
SIGNAL \U_MEMORIA|data_out[7]~9_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~107feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~107_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~139_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~75feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~75_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~43feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~43_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~367_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~368_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~123_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~59_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~27_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~91feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~91_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~360_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~361_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~83feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~83_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~19_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~364_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~51feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~51_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~115_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~365_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~67feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~67_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~35_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~362_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~99feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~99_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~131_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~363_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~366_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~369_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~227_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~235_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~219feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~219_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~211_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~352_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~353_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~163feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~163_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~171_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~155feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~155_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~147_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~354_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~355_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~356_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~203_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~187_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~195feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~195_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~179_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~350_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~351_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~251_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~267_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~243_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~259feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~259_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~357_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~358_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~359_combout\ : std_logic;
SIGNAL \U_MEMORIA|data_out[5]~12_combout\ : std_logic;
SIGNAL \U_MEMORIA|data_out[5]~13_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~76feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~76_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~140_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~108feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~108_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~44_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~347_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~348_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~92feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~92_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~124_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~60feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~60_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~28_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~342_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~343_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~52feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~52_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~20_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~344_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~84_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~116_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~345_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~346_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~68_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~132_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~100_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~36_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~340_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~341_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~349_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~260feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~260_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~252feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~252_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~244_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~337_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~268_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~338_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~236feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~236_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~220_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~228feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~228_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~212_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~330_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~331_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~156_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~172_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~164feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~164_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~148_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~334_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~335_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~196feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~196_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~204_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~188feeder_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~188_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~180_q\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~332_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~333_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~336_combout\ : std_logic;
SIGNAL \U_MEMORIA|U_RAM|mem~339_combout\ : std_logic;
SIGNAL \U_MEMORIA|data_out[6]~10_combout\ : std_logic;
SIGNAL \U_MEMORIA|data_out[6]~11_combout\ : std_logic;
SIGNAL \U_GESTOR|Equal5~0_combout\ : std_logic;
SIGNAL \U_GESTOR|Equal5~2_combout\ : std_logic;
SIGNAL \U_FSM|estado_siguiente~4_combout\ : std_logic;
SIGNAL \U_REGISTRO|d0~1_combout\ : std_logic;
SIGNAL \U_REGISTRO|d1~1_combout\ : std_logic;
SIGNAL \U_REGISTRO|d2~1_combout\ : std_logic;
SIGNAL \U_REGISTRO|d3~1_combout\ : std_logic;
SIGNAL \U_REGISTRO|d0~3_combout\ : std_logic;
SIGNAL \U_REGISTRO|d1~3_combout\ : std_logic;
SIGNAL \U_REGISTRO|d2~3_combout\ : std_logic;
SIGNAL \U_REGISTRO|d3~3_combout\ : std_logic;
SIGNAL \U_REGISTRO|d0~2_combout\ : std_logic;
SIGNAL \U_REGISTRO|d1~2_combout\ : std_logic;
SIGNAL \U_REGISTRO|d2~2_combout\ : std_logic;
SIGNAL \U_REGISTRO|d3~2_combout\ : std_logic;
SIGNAL \U_REGISTRO|d0~0_combout\ : std_logic;
SIGNAL \U_REGISTRO|d1~0_combout\ : std_logic;
SIGNAL \U_REGISTRO|d2~0_combout\ : std_logic;
SIGNAL \U_REGISTRO|d3~0_combout\ : std_logic;
SIGNAL \U_GESTOR|clave_ok_i~3_combout\ : std_logic;
SIGNAL \U_GESTOR|clave_ok_i~2_combout\ : std_logic;
SIGNAL \U_GESTOR|clave_ok_i~0_combout\ : std_logic;
SIGNAL \U_GESTOR|clave_ok_i~1_combout\ : std_logic;
SIGNAL \U_GESTOR|clave_ok_i~4_combout\ : std_logic;
SIGNAL \U_GESTOR|d1_ram[1]~feeder_combout\ : std_logic;
SIGNAL \U_GESTOR|clave_ok_i~7_combout\ : std_logic;
SIGNAL \U_GESTOR|d1_ram[3]~feeder_combout\ : std_logic;
SIGNAL \U_GESTOR|clave_ok_i~8_combout\ : std_logic;
SIGNAL \U_GESTOR|d0_ram[0]~feeder_combout\ : std_logic;
SIGNAL \U_GESTOR|clave_ok_i~5_combout\ : std_logic;
SIGNAL \U_GESTOR|clave_ok_i~6_combout\ : std_logic;
SIGNAL \U_GESTOR|clave_ok_i~9_combout\ : std_logic;
SIGNAL \U_GESTOR|d3_ram[3]~0_combout\ : std_logic;
SIGNAL \U_GESTOR|clave_ok_i~12_combout\ : std_logic;
SIGNAL \U_GESTOR|d2_ram[0]~feeder_combout\ : std_logic;
SIGNAL \U_GESTOR|clave_ok_i~10_combout\ : std_logic;
SIGNAL \U_GESTOR|d2_ram[2]~feeder_combout\ : std_logic;
SIGNAL \U_GESTOR|clave_ok_i~11_combout\ : std_logic;
SIGNAL \U_GESTOR|clave_ok_i~13_combout\ : std_logic;
SIGNAL \U_GESTOR|clave_ok_i~14_combout\ : std_logic;
SIGNAL \U_GESTOR|clave_correcta~0_combout\ : std_logic;
SIGNAL \U_FSM|iniciar_error~0_combout\ : std_logic;
SIGNAL \U_FSM|iniciar_error~1_combout\ : std_logic;
SIGNAL \U_TIMER_ERROR|contador~6_combout\ : std_logic;
SIGNAL \U_FSM|iniciar_error~2_combout\ : std_logic;
SIGNAL \U_TIMER_ERROR|contador[2]~1_combout\ : std_logic;
SIGNAL \U_TIMER_ERROR|Add0~1\ : std_logic;
SIGNAL \U_TIMER_ERROR|Add0~2_combout\ : std_logic;
SIGNAL \U_TIMER_ERROR|contador~5_combout\ : std_logic;
SIGNAL \U_TIMER_ERROR|Add0~3\ : std_logic;
SIGNAL \U_TIMER_ERROR|Add0~4_combout\ : std_logic;
SIGNAL \U_TIMER_ERROR|contador~4_combout\ : std_logic;
SIGNAL \U_TIMER_ERROR|Add0~5\ : std_logic;
SIGNAL \U_TIMER_ERROR|Add0~6_combout\ : std_logic;
SIGNAL \U_TIMER_ERROR|contador~3_combout\ : std_logic;
SIGNAL \U_TIMER_ERROR|Add0~7\ : std_logic;
SIGNAL \U_TIMER_ERROR|Add0~8_combout\ : std_logic;
SIGNAL \U_TIMER_ERROR|contador~2_combout\ : std_logic;
SIGNAL \U_TIMER_ERROR|Add0~9\ : std_logic;
SIGNAL \U_TIMER_ERROR|Add0~10_combout\ : std_logic;
SIGNAL \U_TIMER_ERROR|contador~0_combout\ : std_logic;
SIGNAL \U_TIMER_ERROR|LessThan0~0_combout\ : std_logic;
SIGNAL \U_TIMER_ERROR|LessThan0~1_combout\ : std_logic;
SIGNAL \U_TIMER_ERROR|en_marcha~0_combout\ : std_logic;
SIGNAL \U_TIMER_ERROR|en_marcha~q\ : std_logic;
SIGNAL \U_TIMER_ERROR|fin~0_combout\ : std_logic;
SIGNAL \U_TIMER_ERROR|fin~q\ : std_logic;
SIGNAL \U_TIMER_BLOQUEO|contador[0]~6_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \U_FSM|estado_actual.IDLE~q\ : std_logic;
SIGNAL \U_FSM|estado_siguiente.INGRESO~11_combout\ : std_logic;
SIGNAL \U_FSM|estado_siguiente.INGRESO~8_combout\ : std_logic;
SIGNAL \U_FSM|iniciar_bloqueo~4_combout\ : std_logic;
SIGNAL \U_FSM|iniciar_bloqueo~2_combout\ : std_logic;
SIGNAL \U_FSM|iniciar_bloqueo~3_combout\ : std_logic;
SIGNAL \U_TIMER_BLOQUEO|contador[0]~8_combout\ : std_logic;
SIGNAL \U_TIMER_BLOQUEO|contador[0]~7\ : std_logic;
SIGNAL \U_TIMER_BLOQUEO|contador[1]~9_combout\ : std_logic;
SIGNAL \U_TIMER_BLOQUEO|contador[1]~10\ : std_logic;
SIGNAL \U_TIMER_BLOQUEO|contador[2]~11_combout\ : std_logic;
SIGNAL \U_TIMER_BLOQUEO|contador[2]~12\ : std_logic;
SIGNAL \U_TIMER_BLOQUEO|contador[3]~13_combout\ : std_logic;
SIGNAL \U_TIMER_BLOQUEO|contador[3]~14\ : std_logic;
SIGNAL \U_TIMER_BLOQUEO|contador[4]~15_combout\ : std_logic;
SIGNAL \U_TIMER_BLOQUEO|contador[4]~16\ : std_logic;
SIGNAL \U_TIMER_BLOQUEO|contador[5]~17_combout\ : std_logic;
SIGNAL \U_TIMER_BLOQUEO|LessThan0~0_combout\ : std_logic;
SIGNAL \U_TIMER_BLOQUEO|LessThan0~1_combout\ : std_logic;
SIGNAL \U_TIMER_BLOQUEO|en_marcha~0_combout\ : std_logic;
SIGNAL \U_TIMER_BLOQUEO|en_marcha~q\ : std_logic;
SIGNAL \U_TIMER_BLOQUEO|fin~0_combout\ : std_logic;
SIGNAL \U_TIMER_BLOQUEO|fin~q\ : std_logic;
SIGNAL \U_FSM|estado_siguiente.INGRESO~6_combout\ : std_logic;
SIGNAL \U_FSM|estado_siguiente.INGRESO~7_combout\ : std_logic;
SIGNAL \U_FSM|estado_siguiente.INGRESO~5_combout\ : std_logic;
SIGNAL \U_FSM|estado_siguiente.IDLE~13_combout\ : std_logic;
SIGNAL \U_FSM|estado_siguiente.IDLE~14_combout\ : std_logic;
SIGNAL \U_REGISTRO|contador~2_combout\ : std_logic;
SIGNAL \U_REGISTRO|contador~3_combout\ : std_logic;
SIGNAL \U_REGISTRO|contador~4_combout\ : std_logic;
SIGNAL \U_GESTOR|hay_usuario~q\ : std_logic;
SIGNAL \U_FSM|estado_siguiente.IDLE~12_combout\ : std_logic;
SIGNAL \U_FSM|estado_siguiente.INGRESO~9_combout\ : std_logic;
SIGNAL \U_FSM|estado_siguiente.INGRESO~10_combout\ : std_logic;
SIGNAL \U_FSM|estado_actual.INGRESO~q\ : std_logic;
SIGNAL \U_FSM|estado_siguiente.INGRESO~4_combout\ : std_logic;
SIGNAL \U_FSM|estado_siguiente.ERROR_CLAVE~6_combout\ : std_logic;
SIGNAL \U_FSM|estado_siguiente.ERROR_CLAVE~7_combout\ : std_logic;
SIGNAL \U_FSM|estado_siguiente.BLOQUEO~1_combout\ : std_logic;
SIGNAL \U_FSM|estado_siguiente.BLOQUEO~2_combout\ : std_logic;
SIGNAL \U_FSM|estado_siguiente.BLOQUEO~3_combout\ : std_logic;
SIGNAL \U_FSM|estado_siguiente.BLOQUEO~0_combout\ : std_logic;
SIGNAL \U_FSM|estado_siguiente.BLOQUEO~4_combout\ : std_logic;
SIGNAL \U_FSM|estado_siguiente.BLOQUEO~5_combout\ : std_logic;
SIGNAL \U_FSM|estado_actual.BLOQUEO~q\ : std_logic;
SIGNAL \U_FSM|volver_idle~0_combout\ : std_logic;
SIGNAL \U_FSM|volver_idle~1_combout\ : std_logic;
SIGNAL \U_FSM|Selector6~2_combout\ : std_logic;
SIGNAL \U_FSM|Selector6~3_combout\ : std_logic;
SIGNAL \U_FSM|iniciar_apertura~0_combout\ : std_logic;
SIGNAL \U_TIMER_OPEN|en_marcha~0_combout\ : std_logic;
SIGNAL \U_TIMER_OPEN|en_marcha~q\ : std_logic;
SIGNAL \U_TIMER_OPEN|contador[0]~8_combout\ : std_logic;
SIGNAL \U_TIMER_OPEN|contador[0]~7\ : std_logic;
SIGNAL \U_TIMER_OPEN|contador[1]~9_combout\ : std_logic;
SIGNAL \U_TIMER_OPEN|contador[1]~10\ : std_logic;
SIGNAL \U_TIMER_OPEN|contador[2]~11_combout\ : std_logic;
SIGNAL \U_TIMER_OPEN|contador[2]~12\ : std_logic;
SIGNAL \U_TIMER_OPEN|contador[3]~13_combout\ : std_logic;
SIGNAL \U_TIMER_OPEN|contador[3]~14\ : std_logic;
SIGNAL \U_TIMER_OPEN|contador[4]~15_combout\ : std_logic;
SIGNAL \U_TIMER_OPEN|contador[4]~16\ : std_logic;
SIGNAL \U_TIMER_OPEN|contador[5]~17_combout\ : std_logic;
SIGNAL \U_TIMER_OPEN|LessThan0~0_combout\ : std_logic;
SIGNAL \U_TIMER_OPEN|LessThan0~1_combout\ : std_logic;
SIGNAL \U_TIMER_OPEN|fin~0_combout\ : std_logic;
SIGNAL \U_TIMER_OPEN|fin~q\ : std_logic;
SIGNAL \U_FSM|Selector2~16_combout\ : std_logic;
SIGNAL \U_FSM|estado_siguiente.ABRIR~0_combout\ : std_logic;
SIGNAL \U_FSM|estado_actual.ABRIR~q\ : std_logic;
SIGNAL \delay_sensor~2_combout\ : std_logic;
SIGNAL \delay_sensor[0]~1_combout\ : std_logic;
SIGNAL \delay_sensor~0_combout\ : std_logic;
SIGNAL \ignorar_sensor_s~0_combout\ : std_logic;
SIGNAL \ignorar_sensor_s~1_combout\ : std_logic;
SIGNAL \ignorar_sensor_s~q\ : std_logic;
SIGNAL \intrusion_total_s~0_combout\ : std_logic;
SIGNAL \U_FSM|limpiar_intentos~0_combout\ : std_logic;
SIGNAL \U_FSM|limpiar_intentos~1_combout\ : std_logic;
SIGNAL \U_FSM|intentos~0_combout\ : std_logic;
SIGNAL \U_FSM|intentos~2_combout\ : std_logic;
SIGNAL \U_FSM|intentos~1_combout\ : std_logic;
SIGNAL \U_FSM|estado_siguiente.ERROR_CLAVE~8_combout\ : std_logic;
SIGNAL \U_FSM|estado_siguiente.ERROR_CLAVE~9_combout\ : std_logic;
SIGNAL \U_FSM|estado_siguiente.ERROR_CLAVE~10_combout\ : std_logic;
SIGNAL \U_FSM|estado_actual.ERROR_CLAVE~q\ : std_logic;
SIGNAL \HEX0~4_combout\ : std_logic;
SIGNAL \HEX0~38_combout\ : std_logic;
SIGNAL \U_GESTOR|usuario_actual[0]~0_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \HEX2~6_combout\ : std_logic;
SIGNAL \HEX0~5_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \HEX0~6_combout\ : std_logic;
SIGNAL \U_ADMIN|admin_hex0_cod~0_combout\ : std_logic;
SIGNAL \U_ADM_HEX0_COD|Mux6~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[24]~33_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[24]~32_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[28]~39_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[28]~34_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[27]~35_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[27]~40_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[26]~41_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \unidad_temp[1]~5_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[21]~25_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[21]~24_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[20]~27_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[20]~26_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[19]~29_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[19]~28_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[18]~31_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[18]~30_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[24]~37_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[24]~38_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[28]~32_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[28]~39_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[27]~33_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[27]~40_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[26]~41_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[26]~34_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[25]~35_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[25]~36_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \unidad_temp[1]~6_combout\ : std_logic;
SIGNAL \unidad_temp[1]~11_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \unidad_temp[2]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \unidad_temp[2]~7_combout\ : std_logic;
SIGNAL \unidad_temp[2]~12_combout\ : std_logic;
SIGNAL \unidad_temp[0]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \unidad_temp[3]~10_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \unidad_temp[3]~9_combout\ : std_logic;
SIGNAL \unidad_temp[3]~13_combout\ : std_logic;
SIGNAL \unidad_temp[3]~14_combout\ : std_logic;
SIGNAL \U_UNIDAD|Mux6~0_combout\ : std_logic;
SIGNAL \HEX0~7_combout\ : std_logic;
SIGNAL \U_HEX0_NUM|Mux6~0_combout\ : std_logic;
SIGNAL \HEX0~8_combout\ : std_logic;
SIGNAL \HEX0~39_combout\ : std_logic;
SIGNAL \HEX0~9_combout\ : std_logic;
SIGNAL \HEX0~10_combout\ : std_logic;
SIGNAL \U_ADMIN|admin_hex1~0_combout\ : std_logic;
SIGNAL \U_ADM_HEX0_COD|Mux5~0_combout\ : std_logic;
SIGNAL \U_ADM_HEX0_NUM|Mux5~0_combout\ : std_logic;
SIGNAL \HEX0~14_combout\ : std_logic;
SIGNAL \HEX3~5_combout\ : std_logic;
SIGNAL \HEX0~11_combout\ : std_logic;
SIGNAL \U_HEX0_NUM|Mux5~0_combout\ : std_logic;
SIGNAL \HEX0~12_combout\ : std_logic;
SIGNAL \HEX0~13_combout\ : std_logic;
SIGNAL \U_UNIDAD|Mux5~0_combout\ : std_logic;
SIGNAL \HEX0~15_combout\ : std_logic;
SIGNAL \HEX0~16_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \U_UNIDAD|Mux4~0_combout\ : std_logic;
SIGNAL \U_HEX0_NUM|Mux4~0_combout\ : std_logic;
SIGNAL \HEX0~17_combout\ : std_logic;
SIGNAL \U_ADM_HEX0_COD|Mux4~0_combout\ : std_logic;
SIGNAL \HEX0~18_combout\ : std_logic;
SIGNAL \U_ADM_HEX0_NUM|Mux4~0_combout\ : std_logic;
SIGNAL \HEX0~19_combout\ : std_logic;
SIGNAL \U_ADM_HEX0_NUM|Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \U_HEX0_NUM|Mux3~0_combout\ : std_logic;
SIGNAL \U_ADM_HEX0_COD|Mux3~0_combout\ : std_logic;
SIGNAL \U_UNIDAD|Mux3~0_combout\ : std_logic;
SIGNAL \HEX0~20_combout\ : std_logic;
SIGNAL \HEX0~21_combout\ : std_logic;
SIGNAL \HEX0~22_combout\ : std_logic;
SIGNAL \HEX0~23_combout\ : std_logic;
SIGNAL \U_ADM_HEX0_NUM|Mux2~0_combout\ : std_logic;
SIGNAL \U_ADM_HEX0_COD|Mux2~8_combout\ : std_logic;
SIGNAL \HEX0~24_combout\ : std_logic;
SIGNAL \U_UNIDAD|Mux2~0_combout\ : std_logic;
SIGNAL \HEX0~28_combout\ : std_logic;
SIGNAL \U_HEX0_NUM|Mux2~0_combout\ : std_logic;
SIGNAL \HEX0~25_combout\ : std_logic;
SIGNAL \HEX0~26_combout\ : std_logic;
SIGNAL \HEX0~27_combout\ : std_logic;
SIGNAL \HEX0~29_combout\ : std_logic;
SIGNAL \U_ADM_HEX0_NUM|Mux1~0_combout\ : std_logic;
SIGNAL \U_UNIDAD|Mux1~0_combout\ : std_logic;
SIGNAL \U_HEX0_NUM|Mux1~0_combout\ : std_logic;
SIGNAL \HEX0~30_combout\ : std_logic;
SIGNAL \U_ADM_HEX0_COD|Mux1~0_combout\ : std_logic;
SIGNAL \HEX0~31_combout\ : std_logic;
SIGNAL \HEX0~32_combout\ : std_logic;
SIGNAL \HEX0~33_combout\ : std_logic;
SIGNAL \U_ADM_HEX0_NUM|Mux0~0_combout\ : std_logic;
SIGNAL \U_UNIDAD|Mux0~0_combout\ : std_logic;
SIGNAL \U_HEX0_NUM|Mux0~0_combout\ : std_logic;
SIGNAL \HEX0~34_combout\ : std_logic;
SIGNAL \U_ADM_HEX0_COD|Mux0~0_combout\ : std_logic;
SIGNAL \HEX0~35_combout\ : std_logic;
SIGNAL \HEX0~36_combout\ : std_logic;
SIGNAL \HEX0~37_combout\ : std_logic;
SIGNAL \U_HEX1_NUM|Mux6~0_combout\ : std_logic;
SIGNAL \HEX1~2_combout\ : std_logic;
SIGNAL \HEX1~3_combout\ : std_logic;
SIGNAL \HEX1~4_combout\ : std_logic;
SIGNAL \U_ADM_HEX1|Mux5~0_combout\ : std_logic;
SIGNAL \U_HEX1_NUM|Mux5~0_combout\ : std_logic;
SIGNAL \HEX1~5_combout\ : std_logic;
SIGNAL \HEX1~6_combout\ : std_logic;
SIGNAL \U_HEX1_NUM|Mux4~0_combout\ : std_logic;
SIGNAL \HEX1~7_combout\ : std_logic;
SIGNAL \U_ADM_HEX1|Mux4~0_combout\ : std_logic;
SIGNAL \HEX1~8_combout\ : std_logic;
SIGNAL \U_ADM_HEX1|Mux3~0_combout\ : std_logic;
SIGNAL \U_HEX1_NUM|Mux3~0_combout\ : std_logic;
SIGNAL \HEX1~9_combout\ : std_logic;
SIGNAL \HEX1~10_combout\ : std_logic;
SIGNAL \HEX1~11_combout\ : std_logic;
SIGNAL \U_HEX1_NUM|Mux2~0_combout\ : std_logic;
SIGNAL \HEX1~13_combout\ : std_logic;
SIGNAL \HEX1~20_combout\ : std_logic;
SIGNAL \HEX1~14_combout\ : std_logic;
SIGNAL \U_ADM_HEX1|Mux1~0_combout\ : std_logic;
SIGNAL \U_HEX1_NUM|Mux1~0_combout\ : std_logic;
SIGNAL \HEX1~15_combout\ : std_logic;
SIGNAL \HEX1~16_combout\ : std_logic;
SIGNAL \HEX1~17_combout\ : std_logic;
SIGNAL \U_ADM_HEX1|Mux0~0_combout\ : std_logic;
SIGNAL \U_HEX1_NUM|Mux0~0_combout\ : std_logic;
SIGNAL \HEX1~18_combout\ : std_logic;
SIGNAL \HEX1~19_combout\ : std_logic;
SIGNAL \HEX2~7_combout\ : std_logic;
SIGNAL \U_HEX2_NUM|Mux6~0_combout\ : std_logic;
SIGNAL \HEX2~8_combout\ : std_logic;
SIGNAL \U_HEX2_NUM|Mux5~0_combout\ : std_logic;
SIGNAL \HEX2~9_combout\ : std_logic;
SIGNAL \HEX2~10_combout\ : std_logic;
SIGNAL \U_HEX2_NUM|Mux4~0_combout\ : std_logic;
SIGNAL \HEX2~11_combout\ : std_logic;
SIGNAL \HEX2~12_combout\ : std_logic;
SIGNAL \U_HEX2_NUM|Mux3~0_combout\ : std_logic;
SIGNAL \HEX2~13_combout\ : std_logic;
SIGNAL \HEX2~17_combout\ : std_logic;
SIGNAL \U_HEX2_NUM|Mux2~0_combout\ : std_logic;
SIGNAL \HEX2~18_combout\ : std_logic;
SIGNAL \U_HEX2_NUM|Mux1~0_combout\ : std_logic;
SIGNAL \HEX3~6_combout\ : std_logic;
SIGNAL \HEX2~14_combout\ : std_logic;
SIGNAL \HEX2~15_combout\ : std_logic;
SIGNAL \U_HEX2_NUM|Mux0~0_combout\ : std_logic;
SIGNAL \HEX2~16_combout\ : std_logic;
SIGNAL \HEX2~19_combout\ : std_logic;
SIGNAL \U_HEX3_NUM|Mux6~0_combout\ : std_logic;
SIGNAL \HEX3~7_combout\ : std_logic;
SIGNAL \U_HEX3_NUM|Mux5~0_combout\ : std_logic;
SIGNAL \HEX3~8_combout\ : std_logic;
SIGNAL \HEX3~14_combout\ : std_logic;
SIGNAL \U_HEX3_NUM|Mux4~0_combout\ : std_logic;
SIGNAL \HEX3~9_combout\ : std_logic;
SIGNAL \HEX3~15_combout\ : std_logic;
SIGNAL \U_HEX3_NUM|Mux3~0_combout\ : std_logic;
SIGNAL \HEX3~10_combout\ : std_logic;
SIGNAL \U_HEX3_NUM|Mux2~0_combout\ : std_logic;
SIGNAL \HEX3~11_combout\ : std_logic;
SIGNAL \U_HEX3_NUM|Mux1~0_combout\ : std_logic;
SIGNAL \HEX3~12_combout\ : std_logic;
SIGNAL \U_HEX3_NUM|Mux0~0_combout\ : std_logic;
SIGNAL \HEX3~13_combout\ : std_logic;
SIGNAL \U_SERVO|counter[0]~20_combout\ : std_logic;
SIGNAL \U_SERVO|LessThan0~0_combout\ : std_logic;
SIGNAL \U_SERVO|LessThan0~3_combout\ : std_logic;
SIGNAL \U_SERVO|LessThan0~2_combout\ : std_logic;
SIGNAL \U_SERVO|LessThan0~4_combout\ : std_logic;
SIGNAL \U_SERVO|LessThan0~5_combout\ : std_logic;
SIGNAL \U_SERVO|counter[15]~51\ : std_logic;
SIGNAL \U_SERVO|counter[16]~52_combout\ : std_logic;
SIGNAL \U_SERVO|counter[16]~53\ : std_logic;
SIGNAL \U_SERVO|counter[17]~54_combout\ : std_logic;
SIGNAL \U_SERVO|counter[17]~55\ : std_logic;
SIGNAL \U_SERVO|counter[18]~56_combout\ : std_logic;
SIGNAL \U_SERVO|counter[18]~57\ : std_logic;
SIGNAL \U_SERVO|counter[19]~58_combout\ : std_logic;
SIGNAL \U_SERVO|LessThan0~1_combout\ : std_logic;
SIGNAL \U_SERVO|LessThan0~6_combout\ : std_logic;
SIGNAL \U_SERVO|counter[0]~21\ : std_logic;
SIGNAL \U_SERVO|counter[1]~22_combout\ : std_logic;
SIGNAL \U_SERVO|counter[1]~23\ : std_logic;
SIGNAL \U_SERVO|counter[2]~24_combout\ : std_logic;
SIGNAL \U_SERVO|counter[2]~25\ : std_logic;
SIGNAL \U_SERVO|counter[3]~26_combout\ : std_logic;
SIGNAL \U_SERVO|counter[3]~27\ : std_logic;
SIGNAL \U_SERVO|counter[4]~28_combout\ : std_logic;
SIGNAL \U_SERVO|counter[4]~29\ : std_logic;
SIGNAL \U_SERVO|counter[5]~30_combout\ : std_logic;
SIGNAL \U_SERVO|counter[5]~31\ : std_logic;
SIGNAL \U_SERVO|counter[6]~32_combout\ : std_logic;
SIGNAL \U_SERVO|counter[6]~33\ : std_logic;
SIGNAL \U_SERVO|counter[7]~34_combout\ : std_logic;
SIGNAL \U_SERVO|counter[7]~35\ : std_logic;
SIGNAL \U_SERVO|counter[8]~36_combout\ : std_logic;
SIGNAL \U_SERVO|counter[8]~37\ : std_logic;
SIGNAL \U_SERVO|counter[9]~38_combout\ : std_logic;
SIGNAL \U_SERVO|counter[9]~39\ : std_logic;
SIGNAL \U_SERVO|counter[10]~40_combout\ : std_logic;
SIGNAL \U_SERVO|counter[10]~41\ : std_logic;
SIGNAL \U_SERVO|counter[11]~42_combout\ : std_logic;
SIGNAL \U_SERVO|counter[11]~43\ : std_logic;
SIGNAL \U_SERVO|counter[12]~44_combout\ : std_logic;
SIGNAL \U_SERVO|counter[12]~45\ : std_logic;
SIGNAL \U_SERVO|counter[13]~46_combout\ : std_logic;
SIGNAL \U_SERVO|counter[13]~47\ : std_logic;
SIGNAL \U_SERVO|counter[14]~48_combout\ : std_logic;
SIGNAL \U_SERVO|counter[14]~49\ : std_logic;
SIGNAL \U_SERVO|counter[15]~50_combout\ : std_logic;
SIGNAL \U_FSM|abrir_puerta~0_combout\ : std_logic;
SIGNAL \U_SERVO|pulse_width[16]~feeder_combout\ : std_logic;
SIGNAL \U_SERVO|LessThan1~1_combout\ : std_logic;
SIGNAL \U_SERVO|LessThan1~2_combout\ : std_logic;
SIGNAL \U_SERVO|LessThan1~3_combout\ : std_logic;
SIGNAL \U_SERVO|LessThan1~4_combout\ : std_logic;
SIGNAL \U_SERVO|LessThan1~5_combout\ : std_logic;
SIGNAL \U_SERVO|LessThan1~0_combout\ : std_logic;
SIGNAL \U_SERVO|LessThan1~6_combout\ : std_logic;
SIGNAL \U_SERVO|servo_pwm~q\ : std_logic;
SIGNAL \U_BUZZER|Add0~0_combout\ : std_logic;
SIGNAL \U_BUZZER|contador~6_combout\ : std_logic;
SIGNAL \U_FSM|activar_alarma~0_combout\ : std_logic;
SIGNAL \U_BUZZER|Add0~1\ : std_logic;
SIGNAL \U_BUZZER|Add0~2_combout\ : std_logic;
SIGNAL \U_BUZZER|Add0~3\ : std_logic;
SIGNAL \U_BUZZER|Add0~4_combout\ : std_logic;
SIGNAL \U_BUZZER|contador~5_combout\ : std_logic;
SIGNAL \U_BUZZER|Add0~5\ : std_logic;
SIGNAL \U_BUZZER|Add0~6_combout\ : std_logic;
SIGNAL \U_BUZZER|Equal0~3_combout\ : std_logic;
SIGNAL \U_BUZZER|Add0~7\ : std_logic;
SIGNAL \U_BUZZER|Add0~8_combout\ : std_logic;
SIGNAL \U_BUZZER|contador~4_combout\ : std_logic;
SIGNAL \U_BUZZER|Add0~9\ : std_logic;
SIGNAL \U_BUZZER|Add0~10_combout\ : std_logic;
SIGNAL \U_BUZZER|contador~3_combout\ : std_logic;
SIGNAL \U_BUZZER|Add0~11\ : std_logic;
SIGNAL \U_BUZZER|Add0~12_combout\ : std_logic;
SIGNAL \U_BUZZER|Add0~13\ : std_logic;
SIGNAL \U_BUZZER|Add0~14_combout\ : std_logic;
SIGNAL \U_BUZZER|Equal0~2_combout\ : std_logic;
SIGNAL \U_BUZZER|Add0~15\ : std_logic;
SIGNAL \U_BUZZER|Add0~16_combout\ : std_logic;
SIGNAL \U_BUZZER|Add0~17\ : std_logic;
SIGNAL \U_BUZZER|Add0~18_combout\ : std_logic;
SIGNAL \U_BUZZER|Add0~19\ : std_logic;
SIGNAL \U_BUZZER|Add0~20_combout\ : std_logic;
SIGNAL \U_BUZZER|contador~2_combout\ : std_logic;
SIGNAL \U_BUZZER|Add0~21\ : std_logic;
SIGNAL \U_BUZZER|Add0~22_combout\ : std_logic;
SIGNAL \U_BUZZER|Add0~23\ : std_logic;
SIGNAL \U_BUZZER|Add0~24_combout\ : std_logic;
SIGNAL \U_BUZZER|contador~1_combout\ : std_logic;
SIGNAL \U_BUZZER|Add0~25\ : std_logic;
SIGNAL \U_BUZZER|Add0~26_combout\ : std_logic;
SIGNAL \U_BUZZER|Add0~27\ : std_logic;
SIGNAL \U_BUZZER|Add0~28_combout\ : std_logic;
SIGNAL \U_BUZZER|Add0~29\ : std_logic;
SIGNAL \U_BUZZER|Add0~30_combout\ : std_logic;
SIGNAL \U_BUZZER|contador~0_combout\ : std_logic;
SIGNAL \U_BUZZER|Equal0~0_combout\ : std_logic;
SIGNAL \U_BUZZER|Equal0~1_combout\ : std_logic;
SIGNAL \U_BUZZER|Equal0~4_combout\ : std_logic;
SIGNAL \U_BUZZER|beep_i~0_combout\ : std_logic;
SIGNAL \U_BUZZER|beep_i~q\ : std_logic;
SIGNAL \U_HORARIO|Equal1~0_combout\ : std_logic;
SIGNAL \U_HORARIO|Equal2~0_combout\ : std_logic;
SIGNAL \U_HORARIO|Equal2~1_combout\ : std_logic;
SIGNAL \U_HORARIO|Equal2~2_combout\ : std_logic;
SIGNAL \U_TIMER_BLOQUEO|contador\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U_TIMER_ERROR|contador\ : std_logic_vector(5 DOWNTO 0);
SIGNAL delay_sensor : std_logic_vector(1 DOWNTO 0);
SIGNAL \U_TECLADO|scan_div\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U_TECLADO|release_count\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \U_TECLADO|key_latched\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_TECLADO|col_idx\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U_TICK|contador\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \U_HORARIO|contador\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_REGISTRO|d3\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_REGISTRO|d2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_REGISTRO|d1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_REGISTRO|d0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_REGISTRO|contador\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U_ADMIN|write_step\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U_ADMIN|usuario_sel\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U_ADMIN|ultimo_horario\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_ADMIN|ultimo_digito\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_ADMIN|horario_buf\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_ADMIN|digito_clave\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U_ADMIN|digito_admin\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U_ADMIN|dato_i\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_ADMIN|addr_i\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U_GESTOR|d3_ram\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_TIMER_OPEN|contador\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U_GESTOR|addr_rd\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U_GESTOR|d0_ram\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_FSM|intentos\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U_BUZZER|contador\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U_FSM|estado_out\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U_GESTOR|horario_ram\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_SERVO|pulse_width\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \U_GESTOR|id_ram\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_GESTOR|base_addr_reg\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U_SERVO|counter\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \U_GESTOR|d2_ram\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_GESTOR|d1_ram\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_SALIR_ADMIN~input_o\ : std_logic;
SIGNAL \ALT_INV_RESET~input_o\ : std_logic;
SIGNAL \U_TECLADO|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \U_HORARIO|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \U_FSM|ALT_INV_activar_alarma~0_combout\ : std_logic;
SIGNAL \U_TECLADO|ALT_INV_Mux7~0_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_RESET <= RESET;
ww_FILA <= FILA;
COLUMNA <= ww_COLUMNA;
ww_INTRUSION_SW <= INTRUSION_SW;
ww_SENSOR_PUERTA <= SENSOR_PUERTA;
ww_SALIR_ADMIN <= SALIR_ADMIN;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
SERVO_PWM <= ww_SERVO_PWM;
BUZZER_OUT <= ww_BUZZER_OUT;
LED_ABRIR <= ww_LED_ABRIR;
LED_ALARMA <= ww_LED_ALARMA;
LED_BLOQUEO <= ww_LED_BLOQUEO;
LED_MANANA <= ww_LED_MANANA;
LED_TARDE <= ww_LED_TARDE;
LED_NOCHE <= ww_LED_NOCHE;
LED_FIN <= ww_LED_FIN;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\ALT_INV_SALIR_ADMIN~input_o\ <= NOT \SALIR_ADMIN~input_o\;
\ALT_INV_RESET~input_o\ <= NOT \RESET~input_o\;
\U_TECLADO|ALT_INV_Equal1~0_combout\ <= NOT \U_TECLADO|Equal1~0_combout\;
\U_HORARIO|ALT_INV_Equal1~0_combout\ <= NOT \U_HORARIO|Equal1~0_combout\;
\U_FSM|ALT_INV_activar_alarma~0_combout\ <= NOT \U_FSM|activar_alarma~0_combout\;
\U_TECLADO|ALT_INV_Mux7~0_combout\ <= NOT \U_TECLADO|Mux7~0_combout\;

-- Location: IOOBUF_X35_Y0_N9
\COLUMNA[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_TECLADO|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \COLUMNA[0]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\COLUMNA[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_TECLADO|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \COLUMNA[1]~output_o\);

-- Location: IOOBUF_X32_Y0_N30
\COLUMNA[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_TECLADO|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \COLUMNA[2]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\COLUMNA[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_TECLADO|ALT_INV_Mux7~0_combout\,
	devoe => ww_devoe,
	o => \COLUMNA[3]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\HEX0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0~10_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\HEX0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0~16_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\HEX0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0~19_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\HEX0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0~23_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\HEX0[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0~29_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\HEX0[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0~33_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\HEX0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0~37_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\HEX1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1~4_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\HEX1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1~6_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\HEX1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1~8_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\HEX1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1~11_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\HEX1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1~20_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\HEX1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1~17_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\HEX1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1~19_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X32_Y29_N30
\HEX2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2~8_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X30_Y29_N30
\HEX2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2~10_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X28_Y29_N2
\HEX2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2~12_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\HEX2[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2~17_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X30_Y29_N16
\HEX2[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2~18_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X30_Y29_N23
\HEX2[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2~15_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X37_Y29_N2
\HEX2[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2~19_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X32_Y29_N23
\HEX3[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX3~7_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X39_Y29_N16
\HEX3[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX3~14_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X32_Y29_N9
\HEX3[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX3~15_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X32_Y29_N2
\HEX3[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX3~10_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X37_Y29_N23
\HEX3[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX3~11_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X37_Y29_N30
\HEX3[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX3~12_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X39_Y29_N30
\HEX3[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX3~13_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\SERVO_PWM~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_SERVO|servo_pwm~q\,
	devoe => ww_devoe,
	o => \SERVO_PWM~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\BUZZER_OUT~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_BUZZER|beep_i~q\,
	devoe => ww_devoe,
	o => \BUZZER_OUT~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\LED_ABRIR~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_FSM|abrir_puerta~0_combout\,
	devoe => ww_devoe,
	o => \LED_ABRIR~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\LED_ALARMA~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_FSM|ALT_INV_activar_alarma~0_combout\,
	devoe => ww_devoe,
	o => \LED_ALARMA~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\LED_BLOQUEO~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_FSM|estado_actual.BLOQUEO~q\,
	devoe => ww_devoe,
	o => \LED_BLOQUEO~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\LED_MANANA~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_HORARIO|ALT_INV_Equal1~0_combout\,
	devoe => ww_devoe,
	o => \LED_MANANA~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\LED_TARDE~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_HORARIO|Equal2~0_combout\,
	devoe => ww_devoe,
	o => \LED_TARDE~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\LED_NOCHE~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_HORARIO|Equal2~1_combout\,
	devoe => ww_devoe,
	o => \LED_NOCHE~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\LED_FIN~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_HORARIO|Equal2~2_combout\,
	devoe => ww_devoe,
	o => \LED_FIN~output_o\);

-- Location: IOIBUF_X41_Y15_N1
\CLOCK_50~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G9
\CLOCK_50~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X24_Y15_N2
\U_TECLADO|col_idx[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TECLADO|col_idx[0]~0_combout\ = !\U_TECLADO|col_idx\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_TECLADO|col_idx\(0),
	combout => \U_TECLADO|col_idx[0]~0_combout\);

-- Location: IOIBUF_X0_Y24_N1
\RESET~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: LCCOMB_X22_Y15_N0
\U_TECLADO|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TECLADO|Add2~0_combout\ = \U_TECLADO|scan_div\(0) $ (VCC)
-- \U_TECLADO|Add2~1\ = CARRY(\U_TECLADO|scan_div\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_TECLADO|scan_div\(0),
	datad => VCC,
	combout => \U_TECLADO|Add2~0_combout\,
	cout => \U_TECLADO|Add2~1\);

-- Location: LCCOMB_X23_Y15_N30
\U_TECLADO|scan_div~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TECLADO|scan_div~6_combout\ = (!\U_TECLADO|Equal0~4_combout\ & \U_TECLADO|Add2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_TECLADO|Equal0~4_combout\,
	datac => \U_TECLADO|Add2~0_combout\,
	combout => \U_TECLADO|scan_div~6_combout\);

-- Location: FF_X23_Y15_N31
\U_TECLADO|scan_div[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_TECLADO|scan_div~6_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TECLADO|scan_div\(0));

-- Location: LCCOMB_X22_Y15_N2
\U_TECLADO|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TECLADO|Add2~2_combout\ = (\U_TECLADO|scan_div\(1) & (!\U_TECLADO|Add2~1\)) # (!\U_TECLADO|scan_div\(1) & ((\U_TECLADO|Add2~1\) # (GND)))
-- \U_TECLADO|Add2~3\ = CARRY((!\U_TECLADO|Add2~1\) # (!\U_TECLADO|scan_div\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_TECLADO|scan_div\(1),
	datad => VCC,
	cin => \U_TECLADO|Add2~1\,
	combout => \U_TECLADO|Add2~2_combout\,
	cout => \U_TECLADO|Add2~3\);

-- Location: FF_X22_Y15_N3
\U_TECLADO|scan_div[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_TECLADO|Add2~2_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TECLADO|scan_div\(1));

-- Location: LCCOMB_X22_Y15_N4
\U_TECLADO|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TECLADO|Add2~4_combout\ = (\U_TECLADO|scan_div\(2) & (\U_TECLADO|Add2~3\ $ (GND))) # (!\U_TECLADO|scan_div\(2) & (!\U_TECLADO|Add2~3\ & VCC))
-- \U_TECLADO|Add2~5\ = CARRY((\U_TECLADO|scan_div\(2) & !\U_TECLADO|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_TECLADO|scan_div\(2),
	datad => VCC,
	cin => \U_TECLADO|Add2~3\,
	combout => \U_TECLADO|Add2~4_combout\,
	cout => \U_TECLADO|Add2~5\);

-- Location: FF_X22_Y15_N5
\U_TECLADO|scan_div[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_TECLADO|Add2~4_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TECLADO|scan_div\(2));

-- Location: LCCOMB_X22_Y15_N6
\U_TECLADO|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TECLADO|Add2~6_combout\ = (\U_TECLADO|scan_div\(3) & (!\U_TECLADO|Add2~5\)) # (!\U_TECLADO|scan_div\(3) & ((\U_TECLADO|Add2~5\) # (GND)))
-- \U_TECLADO|Add2~7\ = CARRY((!\U_TECLADO|Add2~5\) # (!\U_TECLADO|scan_div\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_TECLADO|scan_div\(3),
	datad => VCC,
	cin => \U_TECLADO|Add2~5\,
	combout => \U_TECLADO|Add2~6_combout\,
	cout => \U_TECLADO|Add2~7\);

-- Location: FF_X22_Y15_N7
\U_TECLADO|scan_div[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_TECLADO|Add2~6_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TECLADO|scan_div\(3));

-- Location: LCCOMB_X22_Y15_N8
\U_TECLADO|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TECLADO|Add2~8_combout\ = (\U_TECLADO|scan_div\(4) & (\U_TECLADO|Add2~7\ $ (GND))) # (!\U_TECLADO|scan_div\(4) & (!\U_TECLADO|Add2~7\ & VCC))
-- \U_TECLADO|Add2~9\ = CARRY((\U_TECLADO|scan_div\(4) & !\U_TECLADO|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_TECLADO|scan_div\(4),
	datad => VCC,
	cin => \U_TECLADO|Add2~7\,
	combout => \U_TECLADO|Add2~8_combout\,
	cout => \U_TECLADO|Add2~9\);

-- Location: LCCOMB_X23_Y15_N2
\U_TECLADO|scan_div~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TECLADO|scan_div~5_combout\ = (!\U_TECLADO|Equal0~4_combout\ & \U_TECLADO|Add2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_TECLADO|Equal0~4_combout\,
	datad => \U_TECLADO|Add2~8_combout\,
	combout => \U_TECLADO|scan_div~5_combout\);

-- Location: FF_X23_Y15_N3
\U_TECLADO|scan_div[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_TECLADO|scan_div~5_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TECLADO|scan_div\(4));

-- Location: LCCOMB_X22_Y15_N10
\U_TECLADO|Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TECLADO|Add2~10_combout\ = (\U_TECLADO|scan_div\(5) & (!\U_TECLADO|Add2~9\)) # (!\U_TECLADO|scan_div\(5) & ((\U_TECLADO|Add2~9\) # (GND)))
-- \U_TECLADO|Add2~11\ = CARRY((!\U_TECLADO|Add2~9\) # (!\U_TECLADO|scan_div\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_TECLADO|scan_div\(5),
	datad => VCC,
	cin => \U_TECLADO|Add2~9\,
	combout => \U_TECLADO|Add2~10_combout\,
	cout => \U_TECLADO|Add2~11\);

-- Location: FF_X22_Y15_N11
\U_TECLADO|scan_div[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_TECLADO|Add2~10_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TECLADO|scan_div\(5));

-- Location: LCCOMB_X22_Y15_N12
\U_TECLADO|Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TECLADO|Add2~12_combout\ = (\U_TECLADO|scan_div\(6) & (\U_TECLADO|Add2~11\ $ (GND))) # (!\U_TECLADO|scan_div\(6) & (!\U_TECLADO|Add2~11\ & VCC))
-- \U_TECLADO|Add2~13\ = CARRY((\U_TECLADO|scan_div\(6) & !\U_TECLADO|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_TECLADO|scan_div\(6),
	datad => VCC,
	cin => \U_TECLADO|Add2~11\,
	combout => \U_TECLADO|Add2~12_combout\,
	cout => \U_TECLADO|Add2~13\);

-- Location: LCCOMB_X23_Y15_N4
\U_TECLADO|scan_div~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TECLADO|scan_div~4_combout\ = (!\U_TECLADO|Equal0~4_combout\ & \U_TECLADO|Add2~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_TECLADO|Equal0~4_combout\,
	datad => \U_TECLADO|Add2~12_combout\,
	combout => \U_TECLADO|scan_div~4_combout\);

-- Location: FF_X23_Y15_N5
\U_TECLADO|scan_div[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_TECLADO|scan_div~4_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TECLADO|scan_div\(6));

-- Location: LCCOMB_X22_Y15_N14
\U_TECLADO|Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TECLADO|Add2~14_combout\ = (\U_TECLADO|scan_div\(7) & (!\U_TECLADO|Add2~13\)) # (!\U_TECLADO|scan_div\(7) & ((\U_TECLADO|Add2~13\) # (GND)))
-- \U_TECLADO|Add2~15\ = CARRY((!\U_TECLADO|Add2~13\) # (!\U_TECLADO|scan_div\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_TECLADO|scan_div\(7),
	datad => VCC,
	cin => \U_TECLADO|Add2~13\,
	combout => \U_TECLADO|Add2~14_combout\,
	cout => \U_TECLADO|Add2~15\);

-- Location: FF_X22_Y15_N15
\U_TECLADO|scan_div[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_TECLADO|Add2~14_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TECLADO|scan_div\(7));

-- Location: LCCOMB_X22_Y15_N16
\U_TECLADO|Add2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TECLADO|Add2~16_combout\ = (\U_TECLADO|scan_div\(8) & (\U_TECLADO|Add2~15\ $ (GND))) # (!\U_TECLADO|scan_div\(8) & (!\U_TECLADO|Add2~15\ & VCC))
-- \U_TECLADO|Add2~17\ = CARRY((\U_TECLADO|scan_div\(8) & !\U_TECLADO|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_TECLADO|scan_div\(8),
	datad => VCC,
	cin => \U_TECLADO|Add2~15\,
	combout => \U_TECLADO|Add2~16_combout\,
	cout => \U_TECLADO|Add2~17\);

-- Location: LCCOMB_X21_Y15_N10
\U_TECLADO|scan_div~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TECLADO|scan_div~3_combout\ = (!\U_TECLADO|Equal0~4_combout\ & \U_TECLADO|Add2~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_TECLADO|Equal0~4_combout\,
	datad => \U_TECLADO|Add2~16_combout\,
	combout => \U_TECLADO|scan_div~3_combout\);

-- Location: FF_X21_Y15_N11
\U_TECLADO|scan_div[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_TECLADO|scan_div~3_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TECLADO|scan_div\(8));

-- Location: LCCOMB_X22_Y15_N18
\U_TECLADO|Add2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TECLADO|Add2~18_combout\ = (\U_TECLADO|scan_div\(9) & (!\U_TECLADO|Add2~17\)) # (!\U_TECLADO|scan_div\(9) & ((\U_TECLADO|Add2~17\) # (GND)))
-- \U_TECLADO|Add2~19\ = CARRY((!\U_TECLADO|Add2~17\) # (!\U_TECLADO|scan_div\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_TECLADO|scan_div\(9),
	datad => VCC,
	cin => \U_TECLADO|Add2~17\,
	combout => \U_TECLADO|Add2~18_combout\,
	cout => \U_TECLADO|Add2~19\);

-- Location: LCCOMB_X21_Y15_N28
\U_TECLADO|scan_div~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TECLADO|scan_div~2_combout\ = (!\U_TECLADO|Equal0~4_combout\ & \U_TECLADO|Add2~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_TECLADO|Equal0~4_combout\,
	datad => \U_TECLADO|Add2~18_combout\,
	combout => \U_TECLADO|scan_div~2_combout\);

-- Location: FF_X21_Y15_N29
\U_TECLADO|scan_div[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_TECLADO|scan_div~2_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TECLADO|scan_div\(9));

-- Location: LCCOMB_X22_Y15_N20
\U_TECLADO|Add2~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TECLADO|Add2~20_combout\ = (\U_TECLADO|scan_div\(10) & (\U_TECLADO|Add2~19\ $ (GND))) # (!\U_TECLADO|scan_div\(10) & (!\U_TECLADO|Add2~19\ & VCC))
-- \U_TECLADO|Add2~21\ = CARRY((\U_TECLADO|scan_div\(10) & !\U_TECLADO|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_TECLADO|scan_div\(10),
	datad => VCC,
	cin => \U_TECLADO|Add2~19\,
	combout => \U_TECLADO|Add2~20_combout\,
	cout => \U_TECLADO|Add2~21\);

-- Location: FF_X22_Y15_N21
\U_TECLADO|scan_div[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_TECLADO|Add2~20_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TECLADO|scan_div\(10));

-- Location: LCCOMB_X22_Y15_N22
\U_TECLADO|Add2~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TECLADO|Add2~22_combout\ = (\U_TECLADO|scan_div\(11) & (!\U_TECLADO|Add2~21\)) # (!\U_TECLADO|scan_div\(11) & ((\U_TECLADO|Add2~21\) # (GND)))
-- \U_TECLADO|Add2~23\ = CARRY((!\U_TECLADO|Add2~21\) # (!\U_TECLADO|scan_div\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_TECLADO|scan_div\(11),
	datad => VCC,
	cin => \U_TECLADO|Add2~21\,
	combout => \U_TECLADO|Add2~22_combout\,
	cout => \U_TECLADO|Add2~23\);

-- Location: FF_X22_Y15_N23
\U_TECLADO|scan_div[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_TECLADO|Add2~22_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TECLADO|scan_div\(11));

-- Location: LCCOMB_X22_Y15_N24
\U_TECLADO|Add2~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TECLADO|Add2~24_combout\ = (\U_TECLADO|scan_div\(12) & (\U_TECLADO|Add2~23\ $ (GND))) # (!\U_TECLADO|scan_div\(12) & (!\U_TECLADO|Add2~23\ & VCC))
-- \U_TECLADO|Add2~25\ = CARRY((\U_TECLADO|scan_div\(12) & !\U_TECLADO|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_TECLADO|scan_div\(12),
	datad => VCC,
	cin => \U_TECLADO|Add2~23\,
	combout => \U_TECLADO|Add2~24_combout\,
	cout => \U_TECLADO|Add2~25\);

-- Location: FF_X22_Y15_N25
\U_TECLADO|scan_div[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_TECLADO|Add2~24_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TECLADO|scan_div\(12));

-- Location: LCCOMB_X22_Y15_N26
\U_TECLADO|Add2~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TECLADO|Add2~26_combout\ = (\U_TECLADO|scan_div\(13) & (!\U_TECLADO|Add2~25\)) # (!\U_TECLADO|scan_div\(13) & ((\U_TECLADO|Add2~25\) # (GND)))
-- \U_TECLADO|Add2~27\ = CARRY((!\U_TECLADO|Add2~25\) # (!\U_TECLADO|scan_div\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_TECLADO|scan_div\(13),
	datad => VCC,
	cin => \U_TECLADO|Add2~25\,
	combout => \U_TECLADO|Add2~26_combout\,
	cout => \U_TECLADO|Add2~27\);

-- Location: FF_X22_Y15_N27
\U_TECLADO|scan_div[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_TECLADO|Add2~26_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TECLADO|scan_div\(13));

-- Location: LCCOMB_X22_Y15_N28
\U_TECLADO|Add2~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TECLADO|Add2~28_combout\ = (\U_TECLADO|scan_div\(14) & (\U_TECLADO|Add2~27\ $ (GND))) # (!\U_TECLADO|scan_div\(14) & (!\U_TECLADO|Add2~27\ & VCC))
-- \U_TECLADO|Add2~29\ = CARRY((\U_TECLADO|scan_div\(14) & !\U_TECLADO|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_TECLADO|scan_div\(14),
	datad => VCC,
	cin => \U_TECLADO|Add2~27\,
	combout => \U_TECLADO|Add2~28_combout\,
	cout => \U_TECLADO|Add2~29\);

-- Location: LCCOMB_X21_Y15_N20
\U_TECLADO|scan_div~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TECLADO|scan_div~1_combout\ = (!\U_TECLADO|Equal0~4_combout\ & \U_TECLADO|Add2~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_TECLADO|Equal0~4_combout\,
	datad => \U_TECLADO|Add2~28_combout\,
	combout => \U_TECLADO|scan_div~1_combout\);

-- Location: FF_X21_Y15_N21
\U_TECLADO|scan_div[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_TECLADO|scan_div~1_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TECLADO|scan_div\(14));

-- Location: LCCOMB_X22_Y15_N30
\U_TECLADO|Add2~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TECLADO|Add2~30_combout\ = \U_TECLADO|scan_div\(15) $ (\U_TECLADO|Add2~29\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_TECLADO|scan_div\(15),
	cin => \U_TECLADO|Add2~29\,
	combout => \U_TECLADO|Add2~30_combout\);

-- Location: LCCOMB_X21_Y15_N30
\U_TECLADO|scan_div~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TECLADO|scan_div~0_combout\ = (!\U_TECLADO|Equal0~4_combout\ & \U_TECLADO|Add2~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_TECLADO|Equal0~4_combout\,
	datac => \U_TECLADO|Add2~30_combout\,
	combout => \U_TECLADO|scan_div~0_combout\);

-- Location: FF_X21_Y15_N31
\U_TECLADO|scan_div[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_TECLADO|scan_div~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TECLADO|scan_div\(15));

-- Location: LCCOMB_X21_Y15_N26
\U_TECLADO|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TECLADO|Equal0~0_combout\ = (\U_TECLADO|scan_div\(15) & (!\U_TECLADO|scan_div\(12) & (!\U_TECLADO|scan_div\(13) & \U_TECLADO|scan_div\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_TECLADO|scan_div\(15),
	datab => \U_TECLADO|scan_div\(12),
	datac => \U_TECLADO|scan_div\(13),
	datad => \U_TECLADO|scan_div\(14),
	combout => \U_TECLADO|Equal0~0_combout\);

-- Location: LCCOMB_X23_Y15_N28
\U_TECLADO|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TECLADO|Equal0~3_combout\ = (!\U_TECLADO|scan_div\(0) & (!\U_TECLADO|scan_div\(2) & (!\U_TECLADO|scan_div\(3) & !\U_TECLADO|scan_div\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_TECLADO|scan_div\(0),
	datab => \U_TECLADO|scan_div\(2),
	datac => \U_TECLADO|scan_div\(3),
	datad => \U_TECLADO|scan_div\(1),
	combout => \U_TECLADO|Equal0~3_combout\);

-- Location: LCCOMB_X21_Y15_N24
\U_TECLADO|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TECLADO|Equal0~1_combout\ = (\U_TECLADO|scan_div\(8) & (\U_TECLADO|scan_div\(9) & (!\U_TECLADO|scan_div\(10) & !\U_TECLADO|scan_div\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_TECLADO|scan_div\(8),
	datab => \U_TECLADO|scan_div\(9),
	datac => \U_TECLADO|scan_div\(10),
	datad => \U_TECLADO|scan_div\(11),
	combout => \U_TECLADO|Equal0~1_combout\);

-- Location: LCCOMB_X23_Y15_N0
\U_TECLADO|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TECLADO|Equal0~2_combout\ = (!\U_TECLADO|scan_div\(7) & (\U_TECLADO|scan_div\(4) & (\U_TECLADO|scan_div\(6) & !\U_TECLADO|scan_div\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_TECLADO|scan_div\(7),
	datab => \U_TECLADO|scan_div\(4),
	datac => \U_TECLADO|scan_div\(6),
	datad => \U_TECLADO|scan_div\(5),
	combout => \U_TECLADO|Equal0~2_combout\);

-- Location: LCCOMB_X23_Y15_N22
\U_TECLADO|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TECLADO|Equal0~4_combout\ = (\U_TECLADO|Equal0~0_combout\ & (\U_TECLADO|Equal0~3_combout\ & (\U_TECLADO|Equal0~1_combout\ & \U_TECLADO|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_TECLADO|Equal0~0_combout\,
	datab => \U_TECLADO|Equal0~3_combout\,
	datac => \U_TECLADO|Equal0~1_combout\,
	datad => \U_TECLADO|Equal0~2_combout\,
	combout => \U_TECLADO|Equal0~4_combout\);

-- Location: FF_X24_Y15_N3
\U_TECLADO|col_idx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_TECLADO|col_idx[0]~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \U_TECLADO|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TECLADO|col_idx\(0));

-- Location: LCCOMB_X24_Y15_N4
\U_TECLADO|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TECLADO|Add1~0_combout\ = \U_TECLADO|col_idx\(1) $ (\U_TECLADO|col_idx\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_TECLADO|col_idx\(1),
	datad => \U_TECLADO|col_idx\(0),
	combout => \U_TECLADO|Add1~0_combout\);

-- Location: FF_X24_Y15_N5
\U_TECLADO|col_idx[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_TECLADO|Add1~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \U_TECLADO|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TECLADO|col_idx\(1));

-- Location: LCCOMB_X24_Y15_N28
\U_TECLADO|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TECLADO|Mux3~0_combout\ = (\U_TECLADO|col_idx\(0)) # (\U_TECLADO|col_idx\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_TECLADO|col_idx\(0),
	datac => \U_TECLADO|col_idx\(1),
	combout => \U_TECLADO|Mux3~0_combout\);

-- Location: LCCOMB_X21_Y15_N12
\U_TECLADO|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TECLADO|Mux2~0_combout\ = (\U_TECLADO|col_idx\(1)) # (!\U_TECLADO|col_idx\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_TECLADO|col_idx\(0),
	datad => \U_TECLADO|col_idx\(1),
	combout => \U_TECLADO|Mux2~0_combout\);

-- Location: LCCOMB_X24_Y15_N22
\U_TECLADO|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TECLADO|Mux1~0_combout\ = (\U_TECLADO|col_idx\(0)) # (!\U_TECLADO|col_idx\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_TECLADO|col_idx\(0),
	datac => \U_TECLADO|col_idx\(1),
	combout => \U_TECLADO|Mux1~0_combout\);

-- Location: LCCOMB_X21_Y15_N18
\U_TECLADO|Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TECLADO|Mux7~0_combout\ = (\U_TECLADO|col_idx\(0) & \U_TECLADO|col_idx\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_TECLADO|col_idx\(0),
	datad => \U_TECLADO|col_idx\(1),
	combout => \U_TECLADO|Mux7~0_combout\);

-- Location: IOIBUF_X0_Y26_N1
\SALIR_ADMIN~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SALIR_ADMIN,
	o => \SALIR_ADMIN~input_o\);

-- Location: IOIBUF_X37_Y0_N15
\FILA[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FILA(1),
	o => \FILA[1]~input_o\);

-- Location: IOIBUF_X37_Y0_N22
\FILA[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FILA(0),
	o => \FILA[0]~input_o\);

-- Location: LCCOMB_X24_Y15_N6
\U_TECLADO|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TECLADO|Equal1~1_combout\ = (\FILA[1]~input_o\ & \FILA[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FILA[1]~input_o\,
	datad => \FILA[0]~input_o\,
	combout => \U_TECLADO|Equal1~1_combout\);

-- Location: IOIBUF_X35_Y0_N15
\FILA[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FILA(2),
	o => \FILA[2]~input_o\);

-- Location: LCCOMB_X24_Y15_N0
\U_TECLADO|row_index~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TECLADO|row_index~0_combout\ = (\FILA[0]~input_o\ & ((\FILA[2]~input_o\) # (!\FILA[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FILA[1]~input_o\,
	datac => \FILA[2]~input_o\,
	datad => \FILA[0]~input_o\,
	combout => \U_TECLADO|row_index~0_combout\);

-- Location: LCCOMB_X21_Y15_N16
\U_TECLADO|Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TECLADO|Mux8~0_combout\ = (\U_TECLADO|row_index~0_combout\ & ((\U_TECLADO|Equal1~1_combout\ $ (!\U_TECLADO|col_idx\(1))) # (!\U_TECLADO|col_idx\(0)))) # (!\U_TECLADO|row_index~0_combout\ & (\U_TECLADO|Equal1~1_combout\ & (\U_TECLADO|col_idx\(0) $ 
-- (!\U_TECLADO|col_idx\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_TECLADO|col_idx\(0),
	datab => \U_TECLADO|Equal1~1_combout\,
	datac => \U_TECLADO|row_index~0_combout\,
	datad => \U_TECLADO|col_idx\(1),
	combout => \U_TECLADO|Mux8~0_combout\);

-- Location: LCCOMB_X24_Y15_N10
\U_TECLADO|release_count[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TECLADO|release_count[0]~5_combout\ = \U_TECLADO|release_count\(0) $ (VCC)
-- \U_TECLADO|release_count[0]~6\ = CARRY(\U_TECLADO|release_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_TECLADO|release_count\(0),
	datad => VCC,
	combout => \U_TECLADO|release_count[0]~5_combout\,
	cout => \U_TECLADO|release_count[0]~6\);

-- Location: IOIBUF_X35_Y0_N29
\FILA[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FILA(3),
	o => \FILA[3]~input_o\);

-- Location: LCCOMB_X24_Y15_N24
\U_TECLADO|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TECLADO|Equal1~0_combout\ = (\FILA[2]~input_o\ & (\FILA[1]~input_o\ & (\FILA[3]~input_o\ & \FILA[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FILA[2]~input_o\,
	datab => \FILA[1]~input_o\,
	datac => \FILA[3]~input_o\,
	datad => \FILA[0]~input_o\,
	combout => \U_TECLADO|Equal1~0_combout\);

-- Location: LCCOMB_X24_Y15_N12
\U_TECLADO|release_count[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TECLADO|release_count[1]~7_combout\ = (\U_TECLADO|release_count\(1) & (!\U_TECLADO|release_count[0]~6\)) # (!\U_TECLADO|release_count\(1) & ((\U_TECLADO|release_count[0]~6\) # (GND)))
-- \U_TECLADO|release_count[1]~8\ = CARRY((!\U_TECLADO|release_count[0]~6\) # (!\U_TECLADO|release_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_TECLADO|release_count\(1),
	datad => VCC,
	cin => \U_TECLADO|release_count[0]~6\,
	combout => \U_TECLADO|release_count[1]~7_combout\,
	cout => \U_TECLADO|release_count[1]~8\);

-- Location: LCCOMB_X24_Y15_N14
\U_TECLADO|release_count[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TECLADO|release_count[2]~9_combout\ = (\U_TECLADO|release_count\(2) & (\U_TECLADO|release_count[1]~8\ $ (GND))) # (!\U_TECLADO|release_count\(2) & (!\U_TECLADO|release_count[1]~8\ & VCC))
-- \U_TECLADO|release_count[2]~10\ = CARRY((\U_TECLADO|release_count\(2) & !\U_TECLADO|release_count[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_TECLADO|release_count\(2),
	datad => VCC,
	cin => \U_TECLADO|release_count[1]~8\,
	combout => \U_TECLADO|release_count[2]~9_combout\,
	cout => \U_TECLADO|release_count[2]~10\);

-- Location: FF_X24_Y15_N15
\U_TECLADO|release_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_TECLADO|release_count[2]~9_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \U_TECLADO|ALT_INV_Equal1~0_combout\,
	ena => \U_TECLADO|release_count[4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TECLADO|release_count\(2));

-- Location: LCCOMB_X24_Y15_N16
\U_TECLADO|release_count[3]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TECLADO|release_count[3]~11_combout\ = (\U_TECLADO|release_count\(3) & (!\U_TECLADO|release_count[2]~10\)) # (!\U_TECLADO|release_count\(3) & ((\U_TECLADO|release_count[2]~10\) # (GND)))
-- \U_TECLADO|release_count[3]~12\ = CARRY((!\U_TECLADO|release_count[2]~10\) # (!\U_TECLADO|release_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_TECLADO|release_count\(3),
	datad => VCC,
	cin => \U_TECLADO|release_count[2]~10\,
	combout => \U_TECLADO|release_count[3]~11_combout\,
	cout => \U_TECLADO|release_count[3]~12\);

-- Location: FF_X24_Y15_N17
\U_TECLADO|release_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_TECLADO|release_count[3]~11_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \U_TECLADO|ALT_INV_Equal1~0_combout\,
	ena => \U_TECLADO|release_count[4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TECLADO|release_count\(3));

-- Location: LCCOMB_X24_Y15_N18
\U_TECLADO|release_count[4]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TECLADO|release_count[4]~13_combout\ = \U_TECLADO|release_count[3]~12\ $ (!\U_TECLADO|release_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U_TECLADO|release_count\(4),
	cin => \U_TECLADO|release_count[3]~12\,
	combout => \U_TECLADO|release_count[4]~13_combout\);

-- Location: FF_X24_Y15_N19
\U_TECLADO|release_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_TECLADO|release_count[4]~13_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \U_TECLADO|ALT_INV_Equal1~0_combout\,
	ena => \U_TECLADO|release_count[4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TECLADO|release_count\(4));

-- Location: LCCOMB_X24_Y15_N8
\U_TECLADO|release_count[4]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TECLADO|release_count[4]~15_combout\ = (\U_TECLADO|Equal0~4_combout\ & (((!\U_TECLADO|release_count\(4)) # (!\U_TECLADO|key_armed~0_combout\)) # (!\U_TECLADO|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_TECLADO|Equal1~0_combout\,
	datab => \U_TECLADO|Equal0~4_combout\,
	datac => \U_TECLADO|key_armed~0_combout\,
	datad => \U_TECLADO|release_count\(4),
	combout => \U_TECLADO|release_count[4]~15_combout\);

-- Location: FF_X24_Y15_N11
\U_TECLADO|release_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_TECLADO|release_count[0]~5_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \U_TECLADO|ALT_INV_Equal1~0_combout\,
	ena => \U_TECLADO|release_count[4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TECLADO|release_count\(0));

-- Location: FF_X24_Y15_N13
\U_TECLADO|release_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_TECLADO|release_count[1]~7_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \U_TECLADO|ALT_INV_Equal1~0_combout\,
	ena => \U_TECLADO|release_count[4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TECLADO|release_count\(1));

-- Location: LCCOMB_X24_Y15_N26
\U_TECLADO|key_armed~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TECLADO|key_armed~0_combout\ = (!\U_TECLADO|release_count\(1) & (!\U_TECLADO|release_count\(3) & (\U_TECLADO|release_count\(2) & !\U_TECLADO|release_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_TECLADO|release_count\(1),
	datab => \U_TECLADO|release_count\(3),
	datac => \U_TECLADO|release_count\(2),
	datad => \U_TECLADO|release_count\(0),
	combout => \U_TECLADO|key_armed~0_combout\);

-- Location: LCCOMB_X24_Y15_N20
\U_TECLADO|key_armed~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TECLADO|key_armed~1_combout\ = ((\U_TECLADO|key_armed~q\ & ((!\U_TECLADO|release_count\(4)) # (!\U_TECLADO|key_armed~0_combout\)))) # (!\U_TECLADO|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_TECLADO|key_armed~0_combout\,
	datab => \U_TECLADO|release_count\(4),
	datac => \U_TECLADO|key_armed~q\,
	datad => \U_TECLADO|Equal1~0_combout\,
	combout => \U_TECLADO|key_armed~1_combout\);

-- Location: FF_X24_Y15_N21
\U_TECLADO|key_armed\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_TECLADO|key_armed~1_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \U_TECLADO|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TECLADO|key_armed~q\);

-- Location: LCCOMB_X21_Y15_N0
\U_TECLADO|tecla_valida~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TECLADO|tecla_valida~0_combout\ = (!\U_TECLADO|key_armed~q\ & (\U_TECLADO|Equal0~4_combout\ & !\U_TECLADO|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_TECLADO|key_armed~q\,
	datac => \U_TECLADO|Equal0~4_combout\,
	datad => \U_TECLADO|Equal1~0_combout\,
	combout => \U_TECLADO|tecla_valida~0_combout\);

-- Location: FF_X21_Y15_N17
\U_TECLADO|key_latched[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_TECLADO|Mux8~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \U_TECLADO|tecla_valida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TECLADO|key_latched\(2));

-- Location: LCCOMB_X21_Y15_N14
\U_TECLADO|Mux9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TECLADO|Mux9~0_combout\ = (\U_TECLADO|Equal1~1_combout\ & (!\U_TECLADO|col_idx\(0) & ((\U_TECLADO|row_index~0_combout\) # (!\U_TECLADO|col_idx\(1))))) # (!\U_TECLADO|Equal1~1_combout\ & ((\U_TECLADO|col_idx\(1)) # ((\U_TECLADO|col_idx\(0) & 
-- !\U_TECLADO|row_index~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_TECLADO|col_idx\(0),
	datab => \U_TECLADO|Equal1~1_combout\,
	datac => \U_TECLADO|row_index~0_combout\,
	datad => \U_TECLADO|col_idx\(1),
	combout => \U_TECLADO|Mux9~0_combout\);

-- Location: FF_X21_Y19_N9
\U_TECLADO|key_latched[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U_TECLADO|Mux9~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => VCC,
	ena => \U_TECLADO|tecla_valida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TECLADO|key_latched\(1));

-- Location: LCCOMB_X21_Y15_N6
\U_TECLADO|Mux7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TECLADO|Mux7~1_combout\ = (\U_TECLADO|Equal1~1_combout\ & ((\U_TECLADO|col_idx\(1)) # (\U_TECLADO|col_idx\(0) $ (\U_TECLADO|row_index~0_combout\)))) # (!\U_TECLADO|Equal1~1_combout\ & (\U_TECLADO|col_idx\(0) & ((\U_TECLADO|col_idx\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_TECLADO|col_idx\(0),
	datab => \U_TECLADO|Equal1~1_combout\,
	datac => \U_TECLADO|row_index~0_combout\,
	datad => \U_TECLADO|col_idx\(1),
	combout => \U_TECLADO|Mux7~1_combout\);

-- Location: FF_X21_Y15_N7
\U_TECLADO|key_latched[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_TECLADO|Mux7~1_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \U_TECLADO|tecla_valida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TECLADO|key_latched\(3));

-- Location: LCCOMB_X21_Y15_N4
\U_TECLADO|Mux10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TECLADO|Mux10~0_combout\ = (\U_TECLADO|row_index~0_combout\ & ((\U_TECLADO|Equal1~1_combout\ & ((\U_TECLADO|col_idx\(1)))) # (!\U_TECLADO|Equal1~1_combout\ & (\U_TECLADO|col_idx\(0))))) # (!\U_TECLADO|row_index~0_combout\ & (!\U_TECLADO|col_idx\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010100100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_TECLADO|col_idx\(0),
	datab => \U_TECLADO|Equal1~1_combout\,
	datac => \U_TECLADO|row_index~0_combout\,
	datad => \U_TECLADO|col_idx\(1),
	combout => \U_TECLADO|Mux10~0_combout\);

-- Location: FF_X21_Y15_N5
\U_TECLADO|key_latched[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_TECLADO|Mux10~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \U_TECLADO|tecla_valida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TECLADO|key_latched\(0));

-- Location: LCCOMB_X20_Y19_N2
\U_ADMIN|Equal4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|Equal4~0_combout\ = (\U_TECLADO|key_latched\(2) & (\U_TECLADO|key_latched\(1) & (\U_TECLADO|key_latched\(3) & !\U_TECLADO|key_latched\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_TECLADO|key_latched\(2),
	datab => \U_TECLADO|key_latched\(1),
	datac => \U_TECLADO|key_latched\(3),
	datad => \U_TECLADO|key_latched\(0),
	combout => \U_ADMIN|Equal4~0_combout\);

-- Location: LCCOMB_X17_Y19_N14
\U_ADMIN|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|process_0~0_combout\ = (\U_TECLADO|key_latched\(3) & (\U_TECLADO|key_latched\(1) $ (\U_TECLADO|key_latched\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_TECLADO|key_latched\(3),
	datac => \U_TECLADO|key_latched\(1),
	datad => \U_TECLADO|key_latched\(2),
	combout => \U_ADMIN|process_0~0_combout\);

-- Location: LCCOMB_X19_Y19_N28
\U_ADMIN|estado~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|estado~28_combout\ = (\U_TECLADO|key_latched\(3) & ((\U_TECLADO|key_latched\(1)) # (\U_TECLADO|key_latched\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_TECLADO|key_latched\(3),
	datac => \U_TECLADO|key_latched\(1),
	datad => \U_TECLADO|key_latched\(2),
	combout => \U_ADMIN|estado~28_combout\);

-- Location: FF_X20_Y19_N7
\U_TECLADO|tecla_valida\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U_TECLADO|tecla_valida~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TECLADO|tecla_valida~q\);

-- Location: LCCOMB_X15_Y19_N24
\U_ADMIN|estado~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|estado~46_combout\ = (\U_ADMIN|estado.ADMIN_OK~q\ & (\U_ADMIN|process_0~0_combout\ & (\U_ADMIN|estado~28_combout\ & \U_TECLADO|tecla_valida~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|estado.ADMIN_OK~q\,
	datab => \U_ADMIN|process_0~0_combout\,
	datac => \U_ADMIN|estado~28_combout\,
	datad => \U_TECLADO|tecla_valida~q\,
	combout => \U_ADMIN|estado~46_combout\);

-- Location: LCCOMB_X15_Y19_N4
\U_ADMIN|estado~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|estado~47_combout\ = (\U_ADMIN|estado~37_combout\ & (!\SALIR_ADMIN~input_o\ & (\U_ADMIN|estado~46_combout\))) # (!\U_ADMIN|estado~37_combout\ & (((\U_ADMIN|estado.OP_AGREGAR_USR~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SALIR_ADMIN~input_o\,
	datab => \U_ADMIN|estado~46_combout\,
	datac => \U_ADMIN|estado.OP_AGREGAR_USR~q\,
	datad => \U_ADMIN|estado~37_combout\,
	combout => \U_ADMIN|estado~47_combout\);

-- Location: FF_X15_Y19_N5
\U_ADMIN|estado.OP_AGREGAR_USR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_ADMIN|estado~47_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADMIN|estado.OP_AGREGAR_USR~q\);

-- Location: LCCOMB_X15_Y20_N22
\U_ADMIN|digito_clave[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|digito_clave[0]~6_combout\ = (\U_ADMIN|estado.OP_AGREGAR_CLV~q\ & ((!\U_ADMIN|digito_clave\(0)))) # (!\U_ADMIN|estado.OP_AGREGAR_CLV~q\ & (\U_ADMIN|estado.OP_AGREGAR_USR~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|estado.OP_AGREGAR_CLV~q\,
	datac => \U_ADMIN|estado.OP_AGREGAR_USR~q\,
	datad => \U_ADMIN|digito_clave\(0),
	combout => \U_ADMIN|digito_clave[0]~6_combout\);

-- Location: LCCOMB_X15_Y20_N12
\U_ADMIN|digito_clave[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|digito_clave[1]~4_combout\ = (\U_ADMIN|estado.OP_AGREGAR_CLV~q\ & (\U_ADMIN|digito_clave\(0) $ (\U_ADMIN|digito_clave\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|estado.OP_AGREGAR_CLV~q\,
	datab => \U_ADMIN|digito_clave\(0),
	datad => \U_ADMIN|digito_clave\(1),
	combout => \U_ADMIN|digito_clave[1]~4_combout\);

-- Location: LCCOMB_X15_Y20_N10
\U_ADMIN|digito_clave[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|digito_clave[1]~5_combout\ = (\U_ADMIN|digito_clave[1]~8_combout\ & (((\U_ADMIN|digito_clave\(1))))) # (!\U_ADMIN|digito_clave[1]~8_combout\ & (\U_ADMIN|digito_clave[1]~4_combout\ & (!\SALIR_ADMIN~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|digito_clave[1]~4_combout\,
	datab => \SALIR_ADMIN~input_o\,
	datac => \U_ADMIN|digito_clave\(1),
	datad => \U_ADMIN|digito_clave[1]~8_combout\,
	combout => \U_ADMIN|digito_clave[1]~5_combout\);

-- Location: FF_X15_Y20_N11
\U_ADMIN|digito_clave[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_ADMIN|digito_clave[1]~5_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADMIN|digito_clave\(1));

-- Location: LCCOMB_X17_Y18_N20
\U_ADMIN|Selector40~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|Selector40~0_combout\ = (\U_TECLADO|tecla_valida~q\ & (\U_TECLADO|key_latched\(3) & (\U_TECLADO|key_latched\(2) $ (\U_TECLADO|key_latched\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_TECLADO|tecla_valida~q\,
	datab => \U_TECLADO|key_latched\(2),
	datac => \U_TECLADO|key_latched\(3),
	datad => \U_TECLADO|key_latched\(1),
	combout => \U_ADMIN|Selector40~0_combout\);

-- Location: LCCOMB_X15_Y20_N2
\U_ADMIN|ultimo_digito[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|ultimo_digito[1]~4_combout\ = ((\U_ADMIN|estado~28_combout\) # (!\U_ADMIN|estado.OP_AGREGAR_USR~q\)) # (!\U_TECLADO|tecla_valida~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_TECLADO|tecla_valida~q\,
	datac => \U_ADMIN|estado.OP_AGREGAR_USR~q\,
	datad => \U_ADMIN|estado~28_combout\,
	combout => \U_ADMIN|ultimo_digito[1]~4_combout\);

-- Location: LCCOMB_X15_Y20_N16
\U_ADMIN|digito_clave[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|digito_clave[1]~2_combout\ = (!\SALIR_ADMIN~input_o\ & (\U_ADMIN|ultimo_digito[1]~4_combout\ & ((!\U_ADMIN|Selector40~0_combout\) # (!\U_ADMIN|estado.ADMIN_OK~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|estado.ADMIN_OK~q\,
	datab => \SALIR_ADMIN~input_o\,
	datac => \U_ADMIN|Selector40~0_combout\,
	datad => \U_ADMIN|ultimo_digito[1]~4_combout\,
	combout => \U_ADMIN|digito_clave[1]~2_combout\);

-- Location: LCCOMB_X15_Y20_N6
\U_ADMIN|digito_clave[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|digito_clave[1]~3_combout\ = (\U_ADMIN|estado.OP_AGREGAR_CLV~q\ & (\U_TECLADO|tecla_valida~q\ & !\U_ADMIN|estado~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|estado.OP_AGREGAR_CLV~q\,
	datac => \U_TECLADO|tecla_valida~q\,
	datad => \U_ADMIN|estado~28_combout\,
	combout => \U_ADMIN|digito_clave[1]~3_combout\);

-- Location: LCCOMB_X15_Y20_N18
\U_ADMIN|digito_clave[1]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|digito_clave[1]~8_combout\ = (\U_ADMIN|digito_clave[1]~2_combout\ & (((\U_ADMIN|digito_clave\(1) & \U_ADMIN|digito_clave\(0))) # (!\U_ADMIN|digito_clave[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|digito_clave\(1),
	datab => \U_ADMIN|digito_clave[1]~2_combout\,
	datac => \U_ADMIN|digito_clave\(0),
	datad => \U_ADMIN|digito_clave[1]~3_combout\,
	combout => \U_ADMIN|digito_clave[1]~8_combout\);

-- Location: LCCOMB_X15_Y20_N0
\U_ADMIN|digito_clave[0]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|digito_clave[0]~7_combout\ = (\U_ADMIN|digito_clave[1]~8_combout\ & (((\U_ADMIN|digito_clave\(0))))) # (!\U_ADMIN|digito_clave[1]~8_combout\ & (\U_ADMIN|digito_clave[0]~6_combout\ & (!\SALIR_ADMIN~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|digito_clave[0]~6_combout\,
	datab => \SALIR_ADMIN~input_o\,
	datac => \U_ADMIN|digito_clave\(0),
	datad => \U_ADMIN|digito_clave[1]~8_combout\,
	combout => \U_ADMIN|digito_clave[0]~7_combout\);

-- Location: FF_X15_Y20_N1
\U_ADMIN|digito_clave[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_ADMIN|digito_clave[0]~7_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADMIN|digito_clave\(0));

-- Location: LCCOMB_X15_Y20_N30
\U_ADMIN|clave_buf[3][0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|clave_buf[3][0]~2_combout\ = (\U_ADMIN|digito_clave\(0) & \U_ADMIN|digito_clave\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_ADMIN|digito_clave\(0),
	datad => \U_ADMIN|digito_clave\(1),
	combout => \U_ADMIN|clave_buf[3][0]~2_combout\);

-- Location: LCCOMB_X15_Y19_N28
\U_ADMIN|estado~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|estado~27_combout\ = (\U_ADMIN|estado.OP_AGREGAR_CLV~q\ & \U_TECLADO|tecla_valida~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_ADMIN|estado.OP_AGREGAR_CLV~q\,
	datad => \U_TECLADO|tecla_valida~q\,
	combout => \U_ADMIN|estado~27_combout\);

-- Location: LCCOMB_X15_Y19_N26
\U_ADMIN|estado~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|estado~29_combout\ = (\U_ADMIN|estado~27_combout\ & ((\U_ADMIN|Equal4~0_combout\) # ((\U_ADMIN|clave_buf[3][0]~2_combout\ & !\U_ADMIN|estado~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|clave_buf[3][0]~2_combout\,
	datab => \U_ADMIN|estado~27_combout\,
	datac => \U_ADMIN|Equal4~0_combout\,
	datad => \U_ADMIN|estado~28_combout\,
	combout => \U_ADMIN|estado~29_combout\);

-- Location: LCCOMB_X15_Y19_N16
\U_ADMIN|estado~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|estado~30_combout\ = (\U_ADMIN|estado.OP_AGREGAR_USR~q\ & (\U_TECLADO|tecla_valida~q\ & ((\U_ADMIN|Equal4~0_combout\) # (!\U_ADMIN|estado~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|estado~28_combout\,
	datab => \U_ADMIN|estado.OP_AGREGAR_USR~q\,
	datac => \U_ADMIN|Equal4~0_combout\,
	datad => \U_TECLADO|tecla_valida~q\,
	combout => \U_ADMIN|estado~30_combout\);

-- Location: LCCOMB_X15_Y19_N18
\U_ADMIN|estado~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|estado~40_combout\ = (!\U_ADMIN|Equal4~0_combout\ & (!\SALIR_ADMIN~input_o\ & \U_ADMIN|estado~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_ADMIN|Equal4~0_combout\,
	datac => \SALIR_ADMIN~input_o\,
	datad => \U_ADMIN|estado~37_combout\,
	combout => \U_ADMIN|estado~40_combout\);

-- Location: LCCOMB_X15_Y19_N10
\U_ADMIN|estado~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|estado~42_combout\ = (\U_ADMIN|estado~29_combout\ & ((\U_ADMIN|estado~40_combout\) # ((\U_ADMIN|estado.OP_AGREGAR_HOR~q\ & !\U_ADMIN|estado~37_combout\)))) # (!\U_ADMIN|estado~29_combout\ & (((\U_ADMIN|estado.OP_AGREGAR_HOR~q\ & 
-- !\U_ADMIN|estado~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|estado~29_combout\,
	datab => \U_ADMIN|estado~40_combout\,
	datac => \U_ADMIN|estado.OP_AGREGAR_HOR~q\,
	datad => \U_ADMIN|estado~37_combout\,
	combout => \U_ADMIN|estado~42_combout\);

-- Location: FF_X15_Y19_N11
\U_ADMIN|estado.OP_AGREGAR_HOR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_ADMIN|estado~42_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADMIN|estado.OP_AGREGAR_HOR~q\);

-- Location: LCCOMB_X15_Y19_N14
\U_ADMIN|estado~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|estado~26_combout\ = (\U_TECLADO|tecla_valida~q\ & \U_ADMIN|estado.OP_AGREGAR_HOR~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_TECLADO|tecla_valida~q\,
	datad => \U_ADMIN|estado.OP_AGREGAR_HOR~q\,
	combout => \U_ADMIN|estado~26_combout\);

-- Location: LCCOMB_X19_Y19_N30
\U_ADMIN|estado~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|estado~25_combout\ = (\U_TECLADO|key_latched\(3) & (!\U_TECLADO|key_latched\(0) & (\U_TECLADO|key_latched\(1) & \U_TECLADO|key_latched\(2)))) # (!\U_TECLADO|key_latched\(3) & (((!\U_TECLADO|key_latched\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_TECLADO|key_latched\(0),
	datab => \U_TECLADO|key_latched\(1),
	datac => \U_TECLADO|key_latched\(3),
	datad => \U_TECLADO|key_latched\(2),
	combout => \U_ADMIN|estado~25_combout\);

-- Location: LCCOMB_X15_Y19_N6
\U_ADMIN|estado~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|estado~31_combout\ = (!\U_ADMIN|estado~29_combout\ & (!\U_ADMIN|estado~30_combout\ & ((!\U_ADMIN|estado~25_combout\) # (!\U_ADMIN|estado~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|estado~29_combout\,
	datab => \U_ADMIN|estado~30_combout\,
	datac => \U_ADMIN|estado~26_combout\,
	datad => \U_ADMIN|estado~25_combout\,
	combout => \U_ADMIN|estado~31_combout\);

-- Location: LCCOMB_X16_Y19_N14
\U_ADMIN|estado~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|estado~38_combout\ = (!\U_ADMIN|estado~19_combout\ & ((\U_ADMIN|estado~35_combout\ & (\U_ADMIN|Equal4~0_combout\)) # (!\U_ADMIN|estado~35_combout\ & ((\U_ADMIN|estado~33_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|Equal4~0_combout\,
	datab => \U_ADMIN|estado~35_combout\,
	datac => \U_ADMIN|estado~33_combout\,
	datad => \U_ADMIN|estado~19_combout\,
	combout => \U_ADMIN|estado~38_combout\);

-- Location: LCCOMB_X20_Y19_N30
\U_ADMIN|estado~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|estado~39_combout\ = (\U_ADMIN|estado~37_combout\ & (!\SALIR_ADMIN~input_o\ & ((!\U_ADMIN|estado~38_combout\)))) # (!\U_ADMIN|estado~37_combout\ & (((\U_ADMIN|estado.ESPERA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|estado~37_combout\,
	datab => \SALIR_ADMIN~input_o\,
	datac => \U_ADMIN|estado.ESPERA~q\,
	datad => \U_ADMIN|estado~38_combout\,
	combout => \U_ADMIN|estado~39_combout\);

-- Location: FF_X20_Y19_N31
\U_ADMIN|estado.ESPERA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_ADMIN|estado~39_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADMIN|estado.ESPERA~q\);

-- Location: LCCOMB_X16_Y19_N24
\U_ADMIN|estado~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|estado~34_combout\ = (\U_TECLADO|tecla_valida~q\ & (\U_ADMIN|Equal4~0_combout\ & !\U_ADMIN|estado.ESPERA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_TECLADO|tecla_valida~q\,
	datac => \U_ADMIN|Equal4~0_combout\,
	datad => \U_ADMIN|estado.ESPERA~q\,
	combout => \U_ADMIN|estado~34_combout\);

-- Location: LCCOMB_X17_Y19_N28
\U_ADMIN|estado~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|estado~43_combout\ = (\U_ADMIN|estado~37_combout\ & (!\SALIR_ADMIN~input_o\ & (\U_ADMIN|estado~34_combout\))) # (!\U_ADMIN|estado~37_combout\ & (((\U_ADMIN|estado.CLAVE_ADMIN~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SALIR_ADMIN~input_o\,
	datab => \U_ADMIN|estado~34_combout\,
	datac => \U_ADMIN|estado.CLAVE_ADMIN~q\,
	datad => \U_ADMIN|estado~37_combout\,
	combout => \U_ADMIN|estado~43_combout\);

-- Location: FF_X17_Y19_N29
\U_ADMIN|estado.CLAVE_ADMIN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_ADMIN|estado~43_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADMIN|estado.CLAVE_ADMIN~q\);

-- Location: LCCOMB_X16_Y19_N12
\U_ADMIN|estado~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|estado~32_combout\ = (\U_ADMIN|estado.CLAVE_ADMIN~q\ & \U_TECLADO|tecla_valida~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_ADMIN|estado.CLAVE_ADMIN~q\,
	datad => \U_TECLADO|tecla_valida~q\,
	combout => \U_ADMIN|estado~32_combout\);

-- Location: LCCOMB_X16_Y19_N30
\U_ADMIN|digito_admin~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|digito_admin~3_combout\ = (!\SALIR_ADMIN~input_o\ & (\U_ADMIN|Equal0~1_combout\ & (!\U_ADMIN|digito_admin\(0) & \U_ADMIN|estado.CLAVE_ADMIN~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SALIR_ADMIN~input_o\,
	datab => \U_ADMIN|Equal0~1_combout\,
	datac => \U_ADMIN|digito_admin\(0),
	datad => \U_ADMIN|estado.CLAVE_ADMIN~q\,
	combout => \U_ADMIN|digito_admin~3_combout\);

-- Location: LCCOMB_X17_Y18_N18
\cargar_digito_s~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cargar_digito_s~0_combout\ = (\U_TECLADO|tecla_valida~q\ & (((!\U_TECLADO|key_latched\(2) & !\U_TECLADO|key_latched\(1))) # (!\U_TECLADO|key_latched\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_TECLADO|tecla_valida~q\,
	datab => \U_TECLADO|key_latched\(2),
	datac => \U_TECLADO|key_latched\(3),
	datad => \U_TECLADO|key_latched\(1),
	combout => \cargar_digito_s~0_combout\);

-- Location: LCCOMB_X17_Y19_N20
\U_ADMIN|digito_admin[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|digito_admin[1]~2_combout\ = (\SALIR_ADMIN~input_o\) # ((\U_ADMIN|estado~34_combout\) # ((\U_ADMIN|estado.CLAVE_ADMIN~q\ & \cargar_digito_s~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SALIR_ADMIN~input_o\,
	datab => \U_ADMIN|estado.CLAVE_ADMIN~q\,
	datac => \cargar_digito_s~0_combout\,
	datad => \U_ADMIN|estado~34_combout\,
	combout => \U_ADMIN|digito_admin[1]~2_combout\);

-- Location: FF_X16_Y19_N31
\U_ADMIN|digito_admin[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_ADMIN|digito_admin~3_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \U_ADMIN|digito_admin[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADMIN|digito_admin\(0));

-- Location: LCCOMB_X16_Y19_N10
\U_ADMIN|digito_admin~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|digito_admin~0_combout\ = \U_ADMIN|digito_admin\(0) $ (\U_ADMIN|digito_admin\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_ADMIN|digito_admin\(0),
	datad => \U_ADMIN|digito_admin\(1),
	combout => \U_ADMIN|digito_admin~0_combout\);

-- Location: LCCOMB_X16_Y19_N28
\U_ADMIN|digito_admin~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|digito_admin~1_combout\ = (\U_ADMIN|digito_admin~0_combout\ & (\U_ADMIN|estado.CLAVE_ADMIN~q\ & (!\SALIR_ADMIN~input_o\ & \U_ADMIN|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|digito_admin~0_combout\,
	datab => \U_ADMIN|estado.CLAVE_ADMIN~q\,
	datac => \SALIR_ADMIN~input_o\,
	datad => \U_ADMIN|Equal0~1_combout\,
	combout => \U_ADMIN|digito_admin~1_combout\);

-- Location: FF_X16_Y19_N29
\U_ADMIN|digito_admin[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_ADMIN|digito_admin~1_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \U_ADMIN|digito_admin[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADMIN|digito_admin\(1));

-- Location: LCCOMB_X16_Y19_N2
\U_ADMIN|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|Equal0~0_combout\ = (\U_ADMIN|digito_admin\(1) & (!\U_TECLADO|key_latched\(0) & (\U_ADMIN|digito_admin\(0) $ (!\U_TECLADO|key_latched\(3))))) # (!\U_ADMIN|digito_admin\(1) & (!\U_TECLADO|key_latched\(3) & (\U_ADMIN|digito_admin\(0) $ 
-- (!\U_TECLADO|key_latched\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|digito_admin\(0),
	datab => \U_ADMIN|digito_admin\(1),
	datac => \U_TECLADO|key_latched\(0),
	datad => \U_TECLADO|key_latched\(3),
	combout => \U_ADMIN|Equal0~0_combout\);

-- Location: LCCOMB_X16_Y19_N16
\U_ADMIN|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|Equal0~1_combout\ = (!\U_TECLADO|key_latched\(2) & (\U_ADMIN|Equal0~0_combout\ & (\U_ADMIN|digito_admin\(1) $ (\U_TECLADO|key_latched\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_TECLADO|key_latched\(2),
	datab => \U_ADMIN|digito_admin\(1),
	datac => \U_TECLADO|key_latched\(1),
	datad => \U_ADMIN|Equal0~0_combout\,
	combout => \U_ADMIN|Equal0~1_combout\);

-- Location: LCCOMB_X16_Y19_N26
\U_ADMIN|estado~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|estado~33_combout\ = (\U_ADMIN|estado~32_combout\ & ((\U_ADMIN|Equal4~0_combout\) # ((!\U_ADMIN|Equal0~1_combout\ & !\U_ADMIN|estado~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|estado~32_combout\,
	datab => \U_ADMIN|Equal0~1_combout\,
	datac => \U_ADMIN|Equal4~0_combout\,
	datad => \U_ADMIN|estado~28_combout\,
	combout => \U_ADMIN|estado~33_combout\);

-- Location: LCCOMB_X16_Y19_N22
\U_ADMIN|estado~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|estado~36_combout\ = (!\U_ADMIN|estado~35_combout\ & (\U_ADMIN|estado~31_combout\ & (!\U_ADMIN|estado~33_combout\ & !\U_ADMIN|estado~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|estado~35_combout\,
	datab => \U_ADMIN|estado~31_combout\,
	datac => \U_ADMIN|estado~33_combout\,
	datad => \U_ADMIN|estado~34_combout\,
	combout => \U_ADMIN|estado~36_combout\);

-- Location: LCCOMB_X16_Y19_N20
\U_ADMIN|estado~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|estado~44_combout\ = (\U_ADMIN|estado~36_combout\) # ((\U_ADMIN|estado~19_combout\) # ((\U_ADMIN|Equal4~0_combout\ & !\U_ADMIN|estado~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|Equal4~0_combout\,
	datab => \U_ADMIN|estado~31_combout\,
	datac => \U_ADMIN|estado~36_combout\,
	datad => \U_ADMIN|estado~19_combout\,
	combout => \U_ADMIN|estado~44_combout\);

-- Location: LCCOMB_X17_Y19_N30
\U_ADMIN|estado~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|estado~45_combout\ = (\U_ADMIN|estado~37_combout\ & (!\SALIR_ADMIN~input_o\ & (\U_ADMIN|estado~44_combout\))) # (!\U_ADMIN|estado~37_combout\ & (((\U_ADMIN|estado.ADMIN_OK~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SALIR_ADMIN~input_o\,
	datab => \U_ADMIN|estado~44_combout\,
	datac => \U_ADMIN|estado.ADMIN_OK~q\,
	datad => \U_ADMIN|estado~37_combout\,
	combout => \U_ADMIN|estado~45_combout\);

-- Location: FF_X17_Y19_N31
\U_ADMIN|estado.ADMIN_OK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_ADMIN|estado~45_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADMIN|estado.ADMIN_OK~q\);

-- Location: LCCOMB_X15_Y19_N12
\U_ADMIN|estado~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|estado~35_combout\ = (\U_ADMIN|estado.ADMIN_OK~q\ & (\U_TECLADO|tecla_valida~q\ & \U_ADMIN|estado~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|estado.ADMIN_OK~q\,
	datac => \U_TECLADO|tecla_valida~q\,
	datad => \U_ADMIN|estado~28_combout\,
	combout => \U_ADMIN|estado~35_combout\);

-- Location: LCCOMB_X15_Y19_N30
\U_ADMIN|estado~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|estado~48_combout\ = (\U_ADMIN|estado.OP_ELIMINAR_USR~q\ & !\U_ADMIN|estado~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_ADMIN|estado.OP_ELIMINAR_USR~q\,
	datad => \U_ADMIN|estado~37_combout\,
	combout => \U_ADMIN|estado~48_combout\);

-- Location: LCCOMB_X15_Y19_N22
\U_ADMIN|estado~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|estado~49_combout\ = (\U_ADMIN|estado~48_combout\) # ((\U_ADMIN|estado~35_combout\ & (!\U_ADMIN|process_0~0_combout\ & \U_ADMIN|estado~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|estado~35_combout\,
	datab => \U_ADMIN|process_0~0_combout\,
	datac => \U_ADMIN|estado~48_combout\,
	datad => \U_ADMIN|estado~40_combout\,
	combout => \U_ADMIN|estado~49_combout\);

-- Location: FF_X15_Y19_N23
\U_ADMIN|estado.OP_ELIMINAR_USR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_ADMIN|estado~49_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADMIN|estado.OP_ELIMINAR_USR~q\);

-- Location: LCCOMB_X17_Y19_N4
\U_ADMIN|estado~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|estado~19_combout\ = (\U_ADMIN|estado.OP_ELIMINAR_USR~q\ & (\U_ADMIN|Equal4~0_combout\ & \U_TECLADO|tecla_valida~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|estado.OP_ELIMINAR_USR~q\,
	datab => \U_ADMIN|Equal4~0_combout\,
	datad => \U_TECLADO|tecla_valida~q\,
	combout => \U_ADMIN|estado~19_combout\);

-- Location: LCCOMB_X19_Y19_N6
\U_ADMIN|ultimo_horario[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|ultimo_horario[3]~0_combout\ = (((\U_TECLADO|key_latched\(3)) # (\U_TECLADO|key_latched\(2))) # (!\U_ADMIN|estado.OP_AGREGAR_HOR~q\)) # (!\U_TECLADO|tecla_valida~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_TECLADO|tecla_valida~q\,
	datab => \U_ADMIN|estado.OP_AGREGAR_HOR~q\,
	datac => \U_TECLADO|key_latched\(3),
	datad => \U_TECLADO|key_latched\(2),
	combout => \U_ADMIN|ultimo_horario[3]~0_combout\);

-- Location: LCCOMB_X17_Y19_N22
\U_ADMIN|estado~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|estado~50_combout\ = (\U_ADMIN|estado~37_combout\ & (!\SALIR_ADMIN~input_o\ & (!\U_ADMIN|ultimo_horario[3]~0_combout\))) # (!\U_ADMIN|estado~37_combout\ & (((\U_ADMIN|estado.ESCRIBIENDO~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SALIR_ADMIN~input_o\,
	datab => \U_ADMIN|ultimo_horario[3]~0_combout\,
	datac => \U_ADMIN|estado.ESCRIBIENDO~q\,
	datad => \U_ADMIN|estado~37_combout\,
	combout => \U_ADMIN|estado~50_combout\);

-- Location: FF_X17_Y19_N23
\U_ADMIN|estado.ESCRIBIENDO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_ADMIN|estado~50_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADMIN|estado.ESCRIBIENDO~q\);

-- Location: LCCOMB_X16_Y19_N6
\U_ADMIN|estado~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|estado~22_combout\ = (\U_ADMIN|estado.CLAVE_ADMIN~q\ & (\U_ADMIN|Equal0~1_combout\ & ((!\U_TECLADO|key_latched\(1)) # (!\U_TECLADO|key_latched\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_TECLADO|key_latched\(3),
	datab => \U_ADMIN|estado.CLAVE_ADMIN~q\,
	datac => \U_TECLADO|key_latched\(1),
	datad => \U_ADMIN|Equal0~1_combout\,
	combout => \U_ADMIN|estado~22_combout\);

-- Location: LCCOMB_X16_Y19_N8
\U_ADMIN|estado~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|estado~23_combout\ = (\U_TECLADO|tecla_valida~q\ & ((\U_ADMIN|estado~22_combout\) # ((!\U_ADMIN|Equal4~0_combout\ & \U_ADMIN|estado.OP_ELIMINAR_USR~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|estado~22_combout\,
	datab => \U_TECLADO|tecla_valida~q\,
	datac => \U_ADMIN|Equal4~0_combout\,
	datad => \U_ADMIN|estado.OP_ELIMINAR_USR~q\,
	combout => \U_ADMIN|estado~23_combout\);

-- Location: LCCOMB_X17_Y19_N2
\U_ADMIN|Selector25~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|Selector25~0_combout\ = (\U_ADMIN|estado.ESCRIBIENDO~q\ & ((!\U_ADMIN|write_step\(0)))) # (!\U_ADMIN|estado.ESCRIBIENDO~q\ & (\U_ADMIN|ultimo_horario[3]~0_combout\ & \U_ADMIN|write_step\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|estado.ESCRIBIENDO~q\,
	datab => \U_ADMIN|ultimo_horario[3]~0_combout\,
	datac => \U_ADMIN|write_step\(0),
	combout => \U_ADMIN|Selector25~0_combout\);

-- Location: FF_X17_Y19_N3
\U_ADMIN|write_step[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_ADMIN|Selector25~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \SALIR_ADMIN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADMIN|write_step\(0));

-- Location: LCCOMB_X17_Y19_N0
\U_ADMIN|write_step~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|write_step~3_combout\ = (\U_ADMIN|estado.ESCRIBIENDO~q\ & (!\U_ADMIN|write_step\(2) & (\U_ADMIN|write_step\(0) $ (\U_ADMIN|write_step\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|estado.ESCRIBIENDO~q\,
	datab => \U_ADMIN|write_step\(0),
	datac => \U_ADMIN|write_step\(1),
	datad => \U_ADMIN|write_step\(2),
	combout => \U_ADMIN|write_step~3_combout\);

-- Location: LCCOMB_X17_Y19_N18
\U_ADMIN|write_step[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|write_step[2]~1_combout\ = (\U_ADMIN|estado.OP_AGREGAR_HOR~q\ & ((\U_TECLADO|key_latched\(2)) # ((\U_TECLADO|key_latched\(3)) # (!\U_TECLADO|tecla_valida~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|estado.OP_AGREGAR_HOR~q\,
	datab => \U_TECLADO|key_latched\(2),
	datac => \U_TECLADO|tecla_valida~q\,
	datad => \U_TECLADO|key_latched\(3),
	combout => \U_ADMIN|write_step[2]~1_combout\);

-- Location: LCCOMB_X17_Y19_N8
\U_ADMIN|write_step[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|write_step[2]~2_combout\ = (\SALIR_ADMIN~input_o\) # ((!\U_ADMIN|write_step[2]~1_combout\ & ((\U_ADMIN|estado.ESCRIBIENDO~q\) # (\U_ADMIN|estado.OP_AGREGAR_HOR~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|estado.ESCRIBIENDO~q\,
	datab => \U_ADMIN|write_step[2]~1_combout\,
	datac => \U_ADMIN|estado.OP_AGREGAR_HOR~q\,
	datad => \SALIR_ADMIN~input_o\,
	combout => \U_ADMIN|write_step[2]~2_combout\);

-- Location: FF_X17_Y19_N1
\U_ADMIN|write_step[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_ADMIN|write_step~3_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \SALIR_ADMIN~input_o\,
	ena => \U_ADMIN|write_step[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADMIN|write_step\(1));

-- Location: LCCOMB_X17_Y19_N12
\U_ADMIN|write_step~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|write_step~0_combout\ = (\U_ADMIN|estado.ESCRIBIENDO~q\ & ((\U_ADMIN|write_step\(2) & ((!\U_ADMIN|write_step\(0)))) # (!\U_ADMIN|write_step\(2) & (\U_ADMIN|write_step\(1) & \U_ADMIN|write_step\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|estado.ESCRIBIENDO~q\,
	datab => \U_ADMIN|write_step\(1),
	datac => \U_ADMIN|write_step\(2),
	datad => \U_ADMIN|write_step\(0),
	combout => \U_ADMIN|write_step~0_combout\);

-- Location: FF_X17_Y19_N13
\U_ADMIN|write_step[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_ADMIN|write_step~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \SALIR_ADMIN~input_o\,
	ena => \U_ADMIN|write_step[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADMIN|write_step\(2));

-- Location: LCCOMB_X17_Y19_N24
\U_ADMIN|estado~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|estado~20_combout\ = (\U_ADMIN|estado.OP_ELIMINAR_USR~q\ & (((\U_ADMIN|process_0~0_combout\)))) # (!\U_ADMIN|estado.OP_ELIMINAR_USR~q\ & (\U_ADMIN|write_step\(0) & ((\U_ADMIN|write_step\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|estado.OP_ELIMINAR_USR~q\,
	datab => \U_ADMIN|write_step\(0),
	datac => \U_ADMIN|process_0~0_combout\,
	datad => \U_ADMIN|write_step\(2),
	combout => \U_ADMIN|estado~20_combout\);

-- Location: LCCOMB_X16_Y19_N0
\U_ADMIN|estado~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|estado~21_combout\ = (\U_ADMIN|estado.CLAVE_ADMIN~q\ & (\U_ADMIN|digito_admin\(0) & ((\U_ADMIN|digito_admin\(1))))) # (!\U_ADMIN|estado.CLAVE_ADMIN~q\ & (((\U_ADMIN|estado~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|digito_admin\(0),
	datab => \U_ADMIN|estado.CLAVE_ADMIN~q\,
	datac => \U_ADMIN|estado~20_combout\,
	datad => \U_ADMIN|digito_admin\(1),
	combout => \U_ADMIN|estado~21_combout\);

-- Location: LCCOMB_X16_Y19_N18
\U_ADMIN|estado~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|estado~24_combout\ = (\U_ADMIN|estado~21_combout\ & ((\U_ADMIN|estado.ESCRIBIENDO~q\) # (\U_ADMIN|estado~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_ADMIN|estado.ESCRIBIENDO~q\,
	datac => \U_ADMIN|estado~23_combout\,
	datad => \U_ADMIN|estado~21_combout\,
	combout => \U_ADMIN|estado~24_combout\);

-- Location: LCCOMB_X16_Y19_N4
\U_ADMIN|estado~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|estado~37_combout\ = (\U_ADMIN|estado~19_combout\) # ((\SALIR_ADMIN~input_o\) # ((\U_ADMIN|estado~24_combout\) # (!\U_ADMIN|estado~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|estado~19_combout\,
	datab => \SALIR_ADMIN~input_o\,
	datac => \U_ADMIN|estado~36_combout\,
	datad => \U_ADMIN|estado~24_combout\,
	combout => \U_ADMIN|estado~37_combout\);

-- Location: LCCOMB_X15_Y19_N8
\U_ADMIN|estado~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|estado~41_combout\ = (\U_ADMIN|estado~37_combout\ & (\U_ADMIN|estado~30_combout\ & ((\U_ADMIN|estado~40_combout\)))) # (!\U_ADMIN|estado~37_combout\ & ((\U_ADMIN|estado.OP_AGREGAR_CLV~q\) # ((\U_ADMIN|estado~30_combout\ & 
-- \U_ADMIN|estado~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|estado~37_combout\,
	datab => \U_ADMIN|estado~30_combout\,
	datac => \U_ADMIN|estado.OP_AGREGAR_CLV~q\,
	datad => \U_ADMIN|estado~40_combout\,
	combout => \U_ADMIN|estado~41_combout\);

-- Location: FF_X15_Y19_N9
\U_ADMIN|estado.OP_AGREGAR_CLV\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_ADMIN|estado~41_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADMIN|estado.OP_AGREGAR_CLV~q\);

-- Location: LCCOMB_X20_Y20_N28
\U_ADMIN|ultimo_horario~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|ultimo_horario~4_combout\ = (!\SALIR_ADMIN~input_o\ & \U_TECLADO|key_latched\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SALIR_ADMIN~input_o\,
	datad => \U_TECLADO|key_latched\(2),
	combout => \U_ADMIN|ultimo_horario~4_combout\);

-- Location: LCCOMB_X20_Y20_N0
\U_ADMIN|ultimo_horario[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|ultimo_horario[3]~2_combout\ = (\SALIR_ADMIN~input_o\) # (!\U_ADMIN|ultimo_horario[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_ADMIN|ultimo_horario[3]~0_combout\,
	datac => \SALIR_ADMIN~input_o\,
	combout => \U_ADMIN|ultimo_horario[3]~2_combout\);

-- Location: FF_X20_Y20_N29
\U_ADMIN|ultimo_horario[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_ADMIN|ultimo_horario~4_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \U_ADMIN|ultimo_horario[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADMIN|ultimo_horario\(2));

-- Location: LCCOMB_X17_Y18_N24
\U_ADMIN|ultimo_digito[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|ultimo_digito[1]~2_combout\ = (\SALIR_ADMIN~input_o\) # ((\U_ADMIN|estado.ADMIN_OK~q\) # ((\U_ADMIN|estado.OP_AGREGAR_CLV~q\ & \U_ADMIN|clave_buf[3][0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SALIR_ADMIN~input_o\,
	datab => \U_ADMIN|estado.ADMIN_OK~q\,
	datac => \U_ADMIN|estado.OP_AGREGAR_CLV~q\,
	datad => \U_ADMIN|clave_buf[3][0]~2_combout\,
	combout => \U_ADMIN|ultimo_digito[1]~2_combout\);

-- Location: LCCOMB_X17_Y18_N10
\U_ADMIN|ultimo_digito~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|ultimo_digito~6_combout\ = (\U_TECLADO|key_latched\(2) & !\U_ADMIN|ultimo_digito[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_TECLADO|key_latched\(2),
	datad => \U_ADMIN|ultimo_digito[1]~2_combout\,
	combout => \U_ADMIN|ultimo_digito~6_combout\);

-- Location: LCCOMB_X17_Y18_N30
\U_ADMIN|ultimo_digito[1]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|ultimo_digito[1]~8_combout\ = ((\U_TECLADO|tecla_valida~q\ & (!\U_ADMIN|estado~28_combout\ & \U_ADMIN|estado.OP_AGREGAR_CLV~q\))) # (!\U_ADMIN|digito_clave[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_TECLADO|tecla_valida~q\,
	datab => \U_ADMIN|estado~28_combout\,
	datac => \U_ADMIN|estado.OP_AGREGAR_CLV~q\,
	datad => \U_ADMIN|digito_clave[1]~2_combout\,
	combout => \U_ADMIN|ultimo_digito[1]~8_combout\);

-- Location: FF_X17_Y18_N11
\U_ADMIN|ultimo_digito[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_ADMIN|ultimo_digito~6_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \U_ADMIN|ultimo_digito[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADMIN|ultimo_digito\(2));

-- Location: LCCOMB_X17_Y18_N16
\U_ADMIN|admin_hex0_num[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|admin_hex0_num[2]~2_combout\ = (\U_ADMIN|estado.OP_AGREGAR_CLV~q\ & (((\U_ADMIN|ultimo_digito\(2))))) # (!\U_ADMIN|estado.OP_AGREGAR_CLV~q\ & (\U_ADMIN|ultimo_horario\(2) & (\U_ADMIN|estado.OP_AGREGAR_HOR~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|estado.OP_AGREGAR_CLV~q\,
	datab => \U_ADMIN|ultimo_horario\(2),
	datac => \U_ADMIN|estado.OP_AGREGAR_HOR~q\,
	datad => \U_ADMIN|ultimo_digito\(2),
	combout => \U_ADMIN|admin_hex0_num[2]~2_combout\);

-- Location: LCCOMB_X20_Y20_N2
\U_ADMIN|ultimo_horario~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|ultimo_horario~3_combout\ = (!\SALIR_ADMIN~input_o\ & \U_TECLADO|key_latched\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SALIR_ADMIN~input_o\,
	datac => \U_TECLADO|key_latched\(1),
	combout => \U_ADMIN|ultimo_horario~3_combout\);

-- Location: FF_X20_Y20_N3
\U_ADMIN|ultimo_horario[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_ADMIN|ultimo_horario~3_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \U_ADMIN|ultimo_horario[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADMIN|ultimo_horario\(1));

-- Location: LCCOMB_X17_Y18_N6
\U_ADMIN|ultimo_digito~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|ultimo_digito~5_combout\ = (\U_TECLADO|key_latched\(1) & !\U_ADMIN|ultimo_digito[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_TECLADO|key_latched\(1),
	datad => \U_ADMIN|ultimo_digito[1]~2_combout\,
	combout => \U_ADMIN|ultimo_digito~5_combout\);

-- Location: FF_X17_Y18_N7
\U_ADMIN|ultimo_digito[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_ADMIN|ultimo_digito~5_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \U_ADMIN|ultimo_digito[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADMIN|ultimo_digito\(1));

-- Location: LCCOMB_X17_Y18_N12
\U_ADMIN|admin_hex0_num[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|admin_hex0_num[1]~1_combout\ = (\U_ADMIN|estado.OP_AGREGAR_CLV~q\ & (((\U_ADMIN|ultimo_digito\(1))))) # (!\U_ADMIN|estado.OP_AGREGAR_CLV~q\ & (\U_ADMIN|ultimo_horario\(1) & (\U_ADMIN|estado.OP_AGREGAR_HOR~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|estado.OP_AGREGAR_CLV~q\,
	datab => \U_ADMIN|ultimo_horario\(1),
	datac => \U_ADMIN|estado.OP_AGREGAR_HOR~q\,
	datad => \U_ADMIN|ultimo_digito\(1),
	combout => \U_ADMIN|admin_hex0_num[1]~1_combout\);

-- Location: LCCOMB_X17_Y18_N2
\U_ADMIN|ultimo_digito~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|ultimo_digito~7_combout\ = (\U_TECLADO|key_latched\(3) & !\U_ADMIN|ultimo_digito[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_TECLADO|key_latched\(3),
	datad => \U_ADMIN|ultimo_digito[1]~2_combout\,
	combout => \U_ADMIN|ultimo_digito~7_combout\);

-- Location: FF_X17_Y18_N3
\U_ADMIN|ultimo_digito[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_ADMIN|ultimo_digito~7_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \U_ADMIN|ultimo_digito[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADMIN|ultimo_digito\(3));

-- Location: LCCOMB_X20_Y20_N14
\U_ADMIN|ultimo_horario~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|ultimo_horario~5_combout\ = (!\SALIR_ADMIN~input_o\ & \U_TECLADO|key_latched\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SALIR_ADMIN~input_o\,
	datac => \U_TECLADO|key_latched\(3),
	combout => \U_ADMIN|ultimo_horario~5_combout\);

-- Location: FF_X20_Y20_N15
\U_ADMIN|ultimo_horario[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_ADMIN|ultimo_horario~5_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \U_ADMIN|ultimo_horario[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADMIN|ultimo_horario\(3));

-- Location: LCCOMB_X17_Y18_N8
\U_ADMIN|admin_hex0_num[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|admin_hex0_num[3]~3_combout\ = (\U_ADMIN|estado.OP_AGREGAR_CLV~q\ & (\U_ADMIN|ultimo_digito\(3))) # (!\U_ADMIN|estado.OP_AGREGAR_CLV~q\ & (((\U_ADMIN|estado.OP_AGREGAR_HOR~q\ & \U_ADMIN|ultimo_horario\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|estado.OP_AGREGAR_CLV~q\,
	datab => \U_ADMIN|ultimo_digito\(3),
	datac => \U_ADMIN|estado.OP_AGREGAR_HOR~q\,
	datad => \U_ADMIN|ultimo_horario\(3),
	combout => \U_ADMIN|admin_hex0_num[3]~3_combout\);

-- Location: LCCOMB_X17_Y18_N14
\U_ADMIN|ultimo_digito~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|ultimo_digito~3_combout\ = (\U_TECLADO|key_latched\(0) & !\U_ADMIN|ultimo_digito[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_TECLADO|key_latched\(0),
	datad => \U_ADMIN|ultimo_digito[1]~2_combout\,
	combout => \U_ADMIN|ultimo_digito~3_combout\);

-- Location: FF_X17_Y18_N15
\U_ADMIN|ultimo_digito[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_ADMIN|ultimo_digito~3_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \U_ADMIN|ultimo_digito[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADMIN|ultimo_digito\(0));

-- Location: LCCOMB_X20_Y20_N12
\U_ADMIN|ultimo_horario~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|ultimo_horario~1_combout\ = (!\SALIR_ADMIN~input_o\ & \U_TECLADO|key_latched\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SALIR_ADMIN~input_o\,
	datad => \U_TECLADO|key_latched\(0),
	combout => \U_ADMIN|ultimo_horario~1_combout\);

-- Location: FF_X20_Y20_N13
\U_ADMIN|ultimo_horario[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_ADMIN|ultimo_horario~1_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \U_ADMIN|ultimo_horario[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADMIN|ultimo_horario\(0));

-- Location: LCCOMB_X17_Y18_N4
\U_ADMIN|admin_hex0_num[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|admin_hex0_num[0]~0_combout\ = (\U_ADMIN|estado.OP_AGREGAR_CLV~q\ & (\U_ADMIN|ultimo_digito\(0))) # (!\U_ADMIN|estado.OP_AGREGAR_CLV~q\ & (((\U_ADMIN|estado.OP_AGREGAR_HOR~q\ & \U_ADMIN|ultimo_horario\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|estado.OP_AGREGAR_CLV~q\,
	datab => \U_ADMIN|ultimo_digito\(0),
	datac => \U_ADMIN|estado.OP_AGREGAR_HOR~q\,
	datad => \U_ADMIN|ultimo_horario\(0),
	combout => \U_ADMIN|admin_hex0_num[0]~0_combout\);

-- Location: LCCOMB_X17_Y22_N6
\U_ADM_HEX0_NUM|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADM_HEX0_NUM|Mux6~0_combout\ = (\U_ADMIN|admin_hex0_num[1]~1_combout\ & (((\U_ADMIN|admin_hex0_num[3]~3_combout\)))) # (!\U_ADMIN|admin_hex0_num[1]~1_combout\ & (\U_ADMIN|admin_hex0_num[2]~2_combout\ $ (((!\U_ADMIN|admin_hex0_num[3]~3_combout\ & 
-- \U_ADMIN|admin_hex0_num[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|admin_hex0_num[2]~2_combout\,
	datab => \U_ADMIN|admin_hex0_num[1]~1_combout\,
	datac => \U_ADMIN|admin_hex0_num[3]~3_combout\,
	datad => \U_ADMIN|admin_hex0_num[0]~0_combout\,
	combout => \U_ADM_HEX0_NUM|Mux6~0_combout\);

-- Location: LCCOMB_X15_Y20_N24
\U_ADMIN|Selector10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|Selector10~0_combout\ = (\U_ADMIN|estado.OP_AGREGAR_HOR~q\ & (((!\U_TECLADO|tecla_valida~q\) # (!\U_ADMIN|Equal4~0_combout\)))) # (!\U_ADMIN|estado.OP_AGREGAR_HOR~q\ & (!\U_ADMIN|estado.ADMIN_OK~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|estado.ADMIN_OK~q\,
	datab => \U_ADMIN|estado.OP_AGREGAR_HOR~q\,
	datac => \U_ADMIN|Equal4~0_combout\,
	datad => \U_TECLADO|tecla_valida~q\,
	combout => \U_ADMIN|Selector10~0_combout\);

-- Location: LCCOMB_X15_Y20_N28
\U_ADMIN|Selector10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|Selector10~1_combout\ = ((\U_ADMIN|horario_ingresado~q\ & \U_ADMIN|Selector10~0_combout\)) # (!\U_ADMIN|ultimo_horario[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|ultimo_horario[3]~0_combout\,
	datac => \U_ADMIN|horario_ingresado~q\,
	datad => \U_ADMIN|Selector10~0_combout\,
	combout => \U_ADMIN|Selector10~1_combout\);

-- Location: FF_X15_Y20_N29
\U_ADMIN|horario_ingresado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_ADMIN|Selector10~1_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \SALIR_ADMIN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADMIN|horario_ingresado~q\);

-- Location: LCCOMB_X16_Y17_N0
\U_ADMIN|admin_hex0_es_num~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|admin_hex0_es_num~0_combout\ = (\U_ADMIN|estado.OP_AGREGAR_CLV~q\) # ((\U_ADMIN|estado.OP_AGREGAR_HOR~q\ & \U_ADMIN|horario_ingresado~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|estado.OP_AGREGAR_CLV~q\,
	datac => \U_ADMIN|estado.OP_AGREGAR_HOR~q\,
	datad => \U_ADMIN|horario_ingresado~q\,
	combout => \U_ADMIN|admin_hex0_es_num~0_combout\);

-- Location: FF_X20_Y19_N25
modo_admin_prev_s : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U_ADMIN|estado.ESPERA~q\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \modo_admin_prev_s~q\);

-- Location: LCCOMB_X20_Y18_N30
\U_FSM|Selector6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_FSM|Selector6~4_combout\ = (\U_TECLADO|tecla_valida~q\ & (!\U_ADMIN|Equal4~0_combout\ & ((\U_ADMIN|estado.ESPERA~q\) # (!\modo_admin_prev_s~q\)))) # (!\U_TECLADO|tecla_valida~q\ & ((\U_ADMIN|estado.ESPERA~q\) # ((!\modo_admin_prev_s~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_TECLADO|tecla_valida~q\,
	datab => \U_ADMIN|estado.ESPERA~q\,
	datac => \modo_admin_prev_s~q\,
	datad => \U_ADMIN|Equal4~0_combout\,
	combout => \U_FSM|Selector6~4_combout\);

-- Location: IOIBUF_X39_Y0_N15
\SENSOR_PUERTA~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SENSOR_PUERTA,
	o => \SENSOR_PUERTA~input_o\);

-- Location: IOIBUF_X0_Y25_N1
\INTRUSION_SW~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INTRUSION_SW,
	o => \INTRUSION_SW~input_o\);

-- Location: LCCOMB_X26_Y16_N14
\U_TIMER_OPEN|contador[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TIMER_OPEN|contador[0]~6_combout\ = \U_TIMER_OPEN|contador\(0) $ (VCC)
-- \U_TIMER_OPEN|contador[0]~7\ = CARRY(\U_TIMER_OPEN|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_TIMER_OPEN|contador\(0),
	datad => VCC,
	combout => \U_TIMER_OPEN|contador[0]~6_combout\,
	cout => \U_TIMER_OPEN|contador[0]~7\);

-- Location: LCCOMB_X20_Y19_N24
salida_admin_s : cycloneiii_lcell_comb
-- Equation(s):
-- \salida_admin_s~combout\ = (!\U_ADMIN|estado.ESPERA~q\ & \modo_admin_prev_s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|estado.ESPERA~q\,
	datac => \modo_admin_prev_s~q\,
	combout => \salida_admin_s~combout\);

-- Location: LCCOMB_X19_Y16_N16
\HEX3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX3~4_combout\ = (!\U_FSM|estado_actual.ABRIR~q\ & !\U_FSM|estado_actual.ERROR_CLAVE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_FSM|estado_actual.ABRIR~q\,
	datad => \U_FSM|estado_actual.ERROR_CLAVE~q\,
	combout => \HEX3~4_combout\);

-- Location: LCCOMB_X28_Y16_N6
\U_TIMER_ERROR|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TIMER_ERROR|Add0~0_combout\ = \U_TIMER_ERROR|contador\(0) $ (VCC)
-- \U_TIMER_ERROR|Add0~1\ = CARRY(\U_TIMER_ERROR|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_TIMER_ERROR|contador\(0),
	datad => VCC,
	combout => \U_TIMER_ERROR|Add0~0_combout\,
	cout => \U_TIMER_ERROR|Add0~1\);

-- Location: LCCOMB_X23_Y18_N8
\U_REGISTRO|contador~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_REGISTRO|contador~10_combout\ = (!\U_REGISTRO|contador\(0) & \U_REGISTRO|contador~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_REGISTRO|contador\(0),
	datad => \U_REGISTRO|contador~4_combout\,
	combout => \U_REGISTRO|contador~10_combout\);

-- Location: LCCOMB_X23_Y19_N16
\U_REGISTRO|contador[1]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_REGISTRO|contador[1]~6_combout\ = (!\U_FSM|volver_idle~1_combout\) # (!\U_FSM|estado_actual.INGRESO~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|estado_actual.INGRESO~q\,
	datad => \U_FSM|volver_idle~1_combout\,
	combout => \U_REGISTRO|contador[1]~6_combout\);

-- Location: LCCOMB_X24_Y21_N14
\HEX1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX1~12_combout\ = (!\U_ADMIN|estado.ESPERA~q\ & \U_FSM|estado_actual.INGRESO~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_ADMIN|estado.ESPERA~q\,
	datad => \U_FSM|estado_actual.INGRESO~q\,
	combout => \HEX1~12_combout\);

-- Location: LCCOMB_X20_Y18_N2
cargar_digito_s : cycloneiii_lcell_comb
-- Equation(s):
-- \cargar_digito_s~combout\ = (\U_REGISTRO|contador\(2)) # (((!\cargar_digito_s~0_combout\) # (!\HEX1~12_combout\)) # (!\U_GESTOR|hay_usuario~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REGISTRO|contador\(2),
	datab => \U_GESTOR|hay_usuario~q\,
	datac => \HEX1~12_combout\,
	datad => \cargar_digito_s~0_combout\,
	combout => \cargar_digito_s~combout\);

-- Location: LCCOMB_X22_Y16_N22
\U_FSM|Selector7~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_FSM|Selector7~11_combout\ = (\U_FSM|estado_siguiente.BLOQUEO~4_combout\) # ((\U_FSM|estado_siguiente.ERROR_CLAVE~9_combout\) # (\U_FSM|Selector2~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|estado_siguiente.BLOQUEO~4_combout\,
	datac => \U_FSM|estado_siguiente.ERROR_CLAVE~9_combout\,
	datad => \U_FSM|Selector2~16_combout\,
	combout => \U_FSM|Selector7~11_combout\);

-- Location: LCCOMB_X22_Y16_N10
\U_REGISTRO|contador~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_REGISTRO|contador~12_combout\ = (\U_FSM|estado_siguiente.IDLE~14_combout\) # ((!\U_FSM|estado_actual.ERROR_CLAVE~q\ & (!\U_FSM|estado_actual.ABRIR~q\ & !\U_FSM|estado_actual.BLOQUEO~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|estado_actual.ERROR_CLAVE~q\,
	datab => \U_FSM|estado_actual.ABRIR~q\,
	datac => \U_FSM|estado_actual.BLOQUEO~q\,
	datad => \U_FSM|estado_siguiente.IDLE~14_combout\,
	combout => \U_REGISTRO|contador~12_combout\);

-- Location: LCCOMB_X22_Y16_N28
\U_REGISTRO|contador~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_REGISTRO|contador~5_combout\ = (\U_FSM|volver_idle~1_combout\ & (\U_REGISTRO|contador~12_combout\ & ((\HEX3~4_combout\) # (!\U_FSM|estado_siguiente.BLOQUEO~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|volver_idle~1_combout\,
	datab => \HEX3~4_combout\,
	datac => \U_FSM|estado_siguiente.BLOQUEO~4_combout\,
	datad => \U_REGISTRO|contador~12_combout\,
	combout => \U_REGISTRO|contador~5_combout\);

-- Location: LCCOMB_X23_Y18_N6
\U_REGISTRO|contador[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_REGISTRO|contador[1]~7_combout\ = (((!\U_REGISTRO|contador[1]~6_combout\ & \U_FSM|Selector7~11_combout\)) # (!\U_REGISTRO|contador~5_combout\)) # (!\cargar_digito_s~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REGISTRO|contador[1]~6_combout\,
	datab => \cargar_digito_s~combout\,
	datac => \U_FSM|Selector7~11_combout\,
	datad => \U_REGISTRO|contador~5_combout\,
	combout => \U_REGISTRO|contador[1]~7_combout\);

-- Location: FF_X23_Y18_N9
\U_REGISTRO|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_REGISTRO|contador~10_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \U_REGISTRO|contador[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REGISTRO|contador\(0));

-- Location: LCCOMB_X23_Y18_N14
\U_REGISTRO|contador~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_REGISTRO|contador~11_combout\ = (\U_REGISTRO|contador~4_combout\ & (\U_REGISTRO|contador\(0) $ (\U_REGISTRO|contador\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_REGISTRO|contador\(0),
	datac => \U_REGISTRO|contador\(1),
	datad => \U_REGISTRO|contador~4_combout\,
	combout => \U_REGISTRO|contador~11_combout\);

-- Location: FF_X23_Y18_N15
\U_REGISTRO|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_REGISTRO|contador~11_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \U_REGISTRO|contador[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REGISTRO|contador\(1));

-- Location: LCCOMB_X20_Y18_N8
\U_REGISTRO|contador~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_REGISTRO|contador~8_combout\ = (\U_REGISTRO|contador\(1) & \U_REGISTRO|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_REGISTRO|contador\(1),
	datad => \U_REGISTRO|contador\(0),
	combout => \U_REGISTRO|contador~8_combout\);

-- Location: LCCOMB_X20_Y18_N6
\U_REGISTRO|contador~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_REGISTRO|contador~9_combout\ = (\U_REGISTRO|contador~4_combout\ & ((\U_REGISTRO|contador\(2)) # ((\U_REGISTRO|contador~8_combout\ & !\cargar_digito_s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REGISTRO|contador~8_combout\,
	datab => \cargar_digito_s~combout\,
	datac => \U_REGISTRO|contador\(2),
	datad => \U_REGISTRO|contador~4_combout\,
	combout => \U_REGISTRO|contador~9_combout\);

-- Location: FF_X20_Y18_N7
\U_REGISTRO|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_REGISTRO|contador~9_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REGISTRO|contador\(2));

-- Location: LCCOMB_X21_Y15_N22
\U_ADMIN|Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|Equal2~0_combout\ = (\U_TECLADO|key_latched\(0) & (\U_TECLADO|key_latched\(2) & (\U_TECLADO|key_latched\(1) & \U_TECLADO|key_latched\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_TECLADO|key_latched\(0),
	datab => \U_TECLADO|key_latched\(2),
	datac => \U_TECLADO|key_latched\(1),
	datad => \U_TECLADO|key_latched\(3),
	combout => \U_ADMIN|Equal2~0_combout\);

-- Location: LCCOMB_X20_Y18_N12
\U_GESTOR|es_admin~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GESTOR|es_admin~0_combout\ = (\U_ADMIN|Equal2~0_combout\ & \U_REGISTRO|contador~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_ADMIN|Equal2~0_combout\,
	datad => \U_REGISTRO|contador~4_combout\,
	combout => \U_GESTOR|es_admin~0_combout\);

-- Location: LCCOMB_X22_Y16_N18
\U_GESTOR|base_addr_reg[4]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GESTOR|base_addr_reg[4]~0_combout\ = (\U_REGISTRO|contador~5_combout\ & (((!\U_ADMIN|process_0~0_combout\ & !\U_ADMIN|Equal2~0_combout\)) # (!\U_TECLADO|tecla_valida~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|process_0~0_combout\,
	datab => \U_TECLADO|tecla_valida~q\,
	datac => \U_ADMIN|Equal2~0_combout\,
	datad => \U_REGISTRO|contador~5_combout\,
	combout => \U_GESTOR|base_addr_reg[4]~0_combout\);

-- Location: LCCOMB_X22_Y16_N4
\U_GESTOR|base_addr_reg[4]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GESTOR|base_addr_reg[4]~1_combout\ = ((\U_FSM|volver_idle~1_combout\ & (\U_FSM|estado_actual.INGRESO~q\ & \U_FSM|Selector7~11_combout\))) # (!\U_GESTOR|base_addr_reg[4]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|volver_idle~1_combout\,
	datab => \U_FSM|estado_actual.INGRESO~q\,
	datac => \U_FSM|Selector7~11_combout\,
	datad => \U_GESTOR|base_addr_reg[4]~0_combout\,
	combout => \U_GESTOR|base_addr_reg[4]~1_combout\);

-- Location: FF_X20_Y18_N13
\U_GESTOR|es_admin\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_GESTOR|es_admin~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \U_GESTOR|base_addr_reg[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GESTOR|es_admin~q\);

-- Location: LCCOMB_X23_Y16_N16
\U_GESTOR|estado_rd~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GESTOR|estado_rd~23_combout\ = (\U_REGISTRO|contador~4_combout\ & ((\U_GESTOR|estado_rd.ESPERA_SELECCION~q\) # ((!\U_GESTOR|es_admin~q\ & \U_GESTOR|hay_usuario~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GESTOR|es_admin~q\,
	datab => \U_GESTOR|hay_usuario~q\,
	datac => \U_GESTOR|estado_rd.ESPERA_SELECCION~q\,
	datad => \U_REGISTRO|contador~4_combout\,
	combout => \U_GESTOR|estado_rd~23_combout\);

-- Location: FF_X23_Y16_N17
\U_GESTOR|estado_rd.ESPERA_SELECCION\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_GESTOR|estado_rd~23_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GESTOR|estado_rd.ESPERA_SELECCION~q\);

-- Location: LCCOMB_X23_Y16_N28
\U_GESTOR|estado_rd~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GESTOR|estado_rd~22_combout\ = (!\U_GESTOR|estado_rd.ESPERA_SELECCION~q\ & (\U_GESTOR|hay_usuario~q\ & (!\U_GESTOR|es_admin~q\ & \U_REGISTRO|contador~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GESTOR|estado_rd.ESPERA_SELECCION~q\,
	datab => \U_GESTOR|hay_usuario~q\,
	datac => \U_GESTOR|es_admin~q\,
	datad => \U_REGISTRO|contador~4_combout\,
	combout => \U_GESTOR|estado_rd~22_combout\);

-- Location: FF_X23_Y16_N29
\U_GESTOR|estado_rd.LEE_ID\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_GESTOR|estado_rd~22_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GESTOR|estado_rd.LEE_ID~q\);

-- Location: LCCOMB_X22_Y17_N24
\U_GESTOR|id_ram[7]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GESTOR|id_ram[7]~0_combout\ = (\U_GESTOR|estado_rd.LEE_ID~q\ & (\U_REGISTRO|contador~5_combout\ & ((\U_REGISTRO|contador[1]~6_combout\) # (!\U_FSM|Selector7~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REGISTRO|contador[1]~6_combout\,
	datab => \U_GESTOR|estado_rd.LEE_ID~q\,
	datac => \U_REGISTRO|contador~5_combout\,
	datad => \U_FSM|Selector7~11_combout\,
	combout => \U_GESTOR|id_ram[7]~0_combout\);

-- Location: FF_X22_Y17_N25
\U_GESTOR|estado_rd.LEE_HOR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_GESTOR|id_ram[7]~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GESTOR|estado_rd.LEE_HOR~q\);

-- Location: LCCOMB_X22_Y20_N16
\U_GESTOR|horario_ram[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GESTOR|horario_ram[0]~0_combout\ = (\U_GESTOR|estado_rd.LEE_HOR~q\ & (\U_REGISTRO|contador~5_combout\ & ((\U_REGISTRO|contador[1]~6_combout\) # (!\U_FSM|Selector7~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REGISTRO|contador[1]~6_combout\,
	datab => \U_GESTOR|estado_rd.LEE_HOR~q\,
	datac => \U_REGISTRO|contador~5_combout\,
	datad => \U_FSM|Selector7~11_combout\,
	combout => \U_GESTOR|horario_ram[0]~0_combout\);

-- Location: FF_X22_Y20_N17
\U_GESTOR|estado_rd.LEE_D0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_GESTOR|horario_ram[0]~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GESTOR|estado_rd.LEE_D0~q\);

-- Location: LCCOMB_X22_Y20_N10
\U_GESTOR|d0_ram[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GESTOR|d0_ram[3]~0_combout\ = (\U_GESTOR|estado_rd.LEE_D0~q\ & (\U_REGISTRO|contador~5_combout\ & ((\U_REGISTRO|contador[1]~6_combout\) # (!\U_FSM|Selector7~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REGISTRO|contador[1]~6_combout\,
	datab => \U_GESTOR|estado_rd.LEE_D0~q\,
	datac => \U_REGISTRO|contador~5_combout\,
	datad => \U_FSM|Selector7~11_combout\,
	combout => \U_GESTOR|d0_ram[3]~0_combout\);

-- Location: FF_X22_Y20_N11
\U_GESTOR|estado_rd.LEE_D1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_GESTOR|d0_ram[3]~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GESTOR|estado_rd.LEE_D1~q\);

-- Location: LCCOMB_X23_Y16_N14
\U_GESTOR|d1_ram[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GESTOR|d1_ram[3]~0_combout\ = (\U_GESTOR|estado_rd.LEE_D1~q\ & (\U_REGISTRO|contador~5_combout\ & ((\U_REGISTRO|contador[1]~6_combout\) # (!\U_FSM|Selector7~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GESTOR|estado_rd.LEE_D1~q\,
	datab => \U_REGISTRO|contador[1]~6_combout\,
	datac => \U_REGISTRO|contador~5_combout\,
	datad => \U_FSM|Selector7~11_combout\,
	combout => \U_GESTOR|d1_ram[3]~0_combout\);

-- Location: FF_X23_Y16_N15
\U_GESTOR|estado_rd.LEE_D2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_GESTOR|d1_ram[3]~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GESTOR|estado_rd.LEE_D2~q\);

-- Location: LCCOMB_X22_Y18_N16
\U_GESTOR|d2_ram[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GESTOR|d2_ram[3]~0_combout\ = (\U_GESTOR|estado_rd.LEE_D2~q\ & (\U_REGISTRO|contador~5_combout\ & ((\U_REGISTRO|contador[1]~6_combout\) # (!\U_FSM|Selector7~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GESTOR|estado_rd.LEE_D2~q\,
	datab => \U_REGISTRO|contador[1]~6_combout\,
	datac => \U_REGISTRO|contador~5_combout\,
	datad => \U_FSM|Selector7~11_combout\,
	combout => \U_GESTOR|d2_ram[3]~0_combout\);

-- Location: FF_X22_Y18_N17
\U_GESTOR|estado_rd.LEE_D3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_GESTOR|d2_ram[3]~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GESTOR|estado_rd.LEE_D3~q\);

-- Location: LCCOMB_X20_Y18_N16
\U_GESTOR|estado_rd~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GESTOR|estado_rd~24_combout\ = (\U_REGISTRO|contador~4_combout\ & ((\U_GESTOR|estado_rd.LEE_D3~q\) # (\U_GESTOR|estado_rd.LISTO~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GESTOR|estado_rd.LEE_D3~q\,
	datac => \U_GESTOR|estado_rd.LISTO~q\,
	datad => \U_REGISTRO|contador~4_combout\,
	combout => \U_GESTOR|estado_rd~24_combout\);

-- Location: FF_X20_Y18_N17
\U_GESTOR|estado_rd.LISTO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_GESTOR|estado_rd~24_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GESTOR|estado_rd.LISTO~q\);

-- Location: LCCOMB_X20_Y18_N18
\U_FSM|process_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_FSM|process_1~0_combout\ = (!\U_REGISTRO|contador\(1) & (!\U_REGISTRO|contador\(0) & ((\U_GESTOR|es_admin~q\) # (\U_GESTOR|estado_rd.LISTO~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GESTOR|es_admin~q\,
	datab => \U_GESTOR|estado_rd.LISTO~q\,
	datac => \U_REGISTRO|contador\(1),
	datad => \U_REGISTRO|contador\(0),
	combout => \U_FSM|process_1~0_combout\);

-- Location: LCCOMB_X21_Y18_N20
\U_GESTOR|Selector13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GESTOR|Selector13~0_combout\ = (\U_GESTOR|estado_rd.LISTO~q\) # (\U_GESTOR|estado_rd.LEE_D3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_GESTOR|estado_rd.LISTO~q\,
	datad => \U_GESTOR|estado_rd.LEE_D3~q\,
	combout => \U_GESTOR|Selector13~0_combout\);

-- Location: LCCOMB_X21_Y18_N30
\U_GESTOR|addr_rd[2]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GESTOR|addr_rd[2]~8_combout\ = (\U_GESTOR|Selector13~0_combout\) # ((!\U_GESTOR|estado_rd.ESPERA_SELECCION~q\ & ((\U_GESTOR|es_admin~q\) # (!\U_GESTOR|hay_usuario~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GESTOR|es_admin~q\,
	datab => \U_GESTOR|estado_rd.ESPERA_SELECCION~q\,
	datac => \U_GESTOR|hay_usuario~q\,
	datad => \U_GESTOR|Selector13~0_combout\,
	combout => \U_GESTOR|addr_rd[2]~8_combout\);

-- Location: LCCOMB_X22_Y20_N26
\U_GESTOR|addr_rd~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GESTOR|addr_rd~11_combout\ = (\U_GESTOR|estado_rd.LEE_HOR~q\) # (\U_GESTOR|estado_rd.LEE_D0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_GESTOR|estado_rd.LEE_HOR~q\,
	datad => \U_GESTOR|estado_rd.LEE_D0~q\,
	combout => \U_GESTOR|addr_rd~11_combout\);

-- Location: LCCOMB_X17_Y18_N28
\U_GESTOR|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GESTOR|Mux1~0_combout\ = ((\U_TECLADO|key_latched\(0)) # (\U_TECLADO|key_latched\(2) $ (!\U_TECLADO|key_latched\(1)))) # (!\U_TECLADO|key_latched\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_TECLADO|key_latched\(3),
	datab => \U_TECLADO|key_latched\(2),
	datac => \U_TECLADO|key_latched\(0),
	datad => \U_TECLADO|key_latched\(1),
	combout => \U_GESTOR|Mux1~0_combout\);

-- Location: LCCOMB_X21_Y17_N20
\U_GESTOR|base_addr_reg~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GESTOR|base_addr_reg~2_combout\ = (\U_GESTOR|Mux1~0_combout\ & (!\U_ADMIN|Equal2~0_combout\ & \U_REGISTRO|contador~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GESTOR|Mux1~0_combout\,
	datac => \U_ADMIN|Equal2~0_combout\,
	datad => \U_REGISTRO|contador~4_combout\,
	combout => \U_GESTOR|base_addr_reg~2_combout\);

-- Location: FF_X21_Y17_N21
\U_GESTOR|base_addr_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_GESTOR|base_addr_reg~2_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \U_GESTOR|base_addr_reg[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GESTOR|base_addr_reg\(1));

-- Location: LCCOMB_X22_Y17_N14
\U_GESTOR|addr_rd~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GESTOR|addr_rd~6_combout\ = (!\U_GESTOR|estado_rd.LEE_D1~q\ & !\U_GESTOR|estado_rd.LEE_D2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_GESTOR|estado_rd.LEE_D1~q\,
	datad => \U_GESTOR|estado_rd.LEE_D2~q\,
	combout => \U_GESTOR|addr_rd~6_combout\);

-- Location: LCCOMB_X17_Y18_N22
\U_GESTOR|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GESTOR|Mux0~0_combout\ = ((\U_TECLADO|key_latched\(2)) # (!\U_TECLADO|key_latched\(1))) # (!\U_TECLADO|key_latched\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_TECLADO|key_latched\(3),
	datab => \U_TECLADO|key_latched\(2),
	datad => \U_TECLADO|key_latched\(1),
	combout => \U_GESTOR|Mux0~0_combout\);

-- Location: LCCOMB_X21_Y17_N14
\U_GESTOR|base_addr_reg~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GESTOR|base_addr_reg~3_combout\ = (!\U_ADMIN|Equal2~0_combout\ & (\U_GESTOR|Mux0~0_combout\ & \U_REGISTRO|contador~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|Equal2~0_combout\,
	datac => \U_GESTOR|Mux0~0_combout\,
	datad => \U_REGISTRO|contador~4_combout\,
	combout => \U_GESTOR|base_addr_reg~3_combout\);

-- Location: FF_X21_Y17_N27
\U_GESTOR|base_addr_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U_GESTOR|base_addr_reg~3_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => VCC,
	ena => \U_GESTOR|base_addr_reg[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GESTOR|base_addr_reg\(4));

-- Location: FF_X21_Y17_N25
\U_GESTOR|base_addr_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U_GESTOR|base_addr_reg~2_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => VCC,
	ena => \U_GESTOR|base_addr_reg[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GESTOR|base_addr_reg\(3));

-- Location: FF_X21_Y17_N15
\U_GESTOR|base_addr_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_GESTOR|base_addr_reg~3_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \U_GESTOR|base_addr_reg[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GESTOR|base_addr_reg\(2));

-- Location: LCCOMB_X21_Y17_N24
\U_GESTOR|addr_rd~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GESTOR|addr_rd~20_combout\ = (\U_GESTOR|base_addr_reg\(4) & (\U_GESTOR|base_addr_reg\(3) & !\U_GESTOR|base_addr_reg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_GESTOR|base_addr_reg\(4),
	datac => \U_GESTOR|base_addr_reg\(3),
	datad => \U_GESTOR|base_addr_reg\(2),
	combout => \U_GESTOR|addr_rd~20_combout\);

-- Location: LCCOMB_X21_Y17_N4
\U_GESTOR|addr_rd~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GESTOR|addr_rd~21_combout\ = (\U_GESTOR|addr_rd~20_combout\ & (((\U_GESTOR|addr_rd~11_combout\ & !\U_GESTOR|base_addr_reg\(1))) # (!\U_GESTOR|addr_rd~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GESTOR|addr_rd~11_combout\,
	datab => \U_GESTOR|base_addr_reg\(1),
	datac => \U_GESTOR|addr_rd~6_combout\,
	datad => \U_GESTOR|addr_rd~20_combout\,
	combout => \U_GESTOR|addr_rd~21_combout\);

-- Location: LCCOMB_X21_Y16_N4
\U_GESTOR|addr_rd~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GESTOR|addr_rd~22_combout\ = (\U_REGISTRO|contador~4_combout\ & ((\U_GESTOR|addr_rd~21_combout\) # ((\U_GESTOR|addr_rd[2]~8_combout\ & \U_GESTOR|addr_rd\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REGISTRO|contador~4_combout\,
	datab => \U_GESTOR|addr_rd[2]~8_combout\,
	datac => \U_GESTOR|addr_rd\(5),
	datad => \U_GESTOR|addr_rd~21_combout\,
	combout => \U_GESTOR|addr_rd~22_combout\);

-- Location: FF_X21_Y16_N5
\U_GESTOR|addr_rd[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_GESTOR|addr_rd~22_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GESTOR|addr_rd\(5));

-- Location: LCCOMB_X17_Y19_N26
\U_ADMIN|Selector31~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|Selector31~0_combout\ = (!\U_ADMIN|estado.OP_ELIMINAR_USR~q\ & \U_ADMIN|write_step\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_ADMIN|estado.OP_ELIMINAR_USR~q\,
	datad => \U_ADMIN|write_step\(0),
	combout => \U_ADMIN|Selector31~0_combout\);

-- Location: LCCOMB_X17_Y20_N12
\U_ADMIN|addr_i[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|addr_i[2]~1_combout\ = (!\SALIR_ADMIN~input_o\ & ((\U_ADMIN|estado.OP_ELIMINAR_USR~q\ & ((\U_ADMIN|Selector40~0_combout\))) # (!\U_ADMIN|estado.OP_ELIMINAR_USR~q\ & (\U_ADMIN|estado.ESCRIBIENDO~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SALIR_ADMIN~input_o\,
	datab => \U_ADMIN|estado.ESCRIBIENDO~q\,
	datac => \U_ADMIN|estado.OP_ELIMINAR_USR~q\,
	datad => \U_ADMIN|Selector40~0_combout\,
	combout => \U_ADMIN|addr_i[2]~1_combout\);

-- Location: FF_X20_Y19_N15
\U_ADMIN|addr_i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U_ADMIN|Selector31~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => VCC,
	ena => \U_ADMIN|addr_i[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADMIN|addr_i\(0));

-- Location: LCCOMB_X21_Y18_N16
\U_GESTOR|Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GESTOR|Selector5~0_combout\ = (\U_GESTOR|estado_rd.ESPERA_SELECCION~q\) # ((\U_GESTOR|addr_rd\(0) & ((\U_GESTOR|es_admin~q\) # (!\U_GESTOR|hay_usuario~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GESTOR|addr_rd\(0),
	datab => \U_GESTOR|hay_usuario~q\,
	datac => \U_GESTOR|estado_rd.ESPERA_SELECCION~q\,
	datad => \U_GESTOR|es_admin~q\,
	combout => \U_GESTOR|Selector5~0_combout\);

-- Location: LCCOMB_X21_Y18_N26
\U_GESTOR|addr_rd~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GESTOR|addr_rd~18_combout\ = (!\U_GESTOR|estado_rd.LEE_HOR~q\ & ((\U_GESTOR|addr_rd\(0)) # ((!\U_GESTOR|estado_rd.LEE_D3~q\ & !\U_GESTOR|estado_rd.LISTO~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GESTOR|estado_rd.LEE_HOR~q\,
	datab => \U_GESTOR|estado_rd.LEE_D3~q\,
	datac => \U_GESTOR|estado_rd.LISTO~q\,
	datad => \U_GESTOR|addr_rd\(0),
	combout => \U_GESTOR|addr_rd~18_combout\);

-- Location: LCCOMB_X20_Y19_N12
\U_GESTOR|addr_rd~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GESTOR|addr_rd~19_combout\ = (!\U_GESTOR|estado_rd.LEE_D1~q\ & (\U_GESTOR|Selector5~0_combout\ & (\U_GESTOR|addr_rd~18_combout\ & \U_REGISTRO|contador~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GESTOR|estado_rd.LEE_D1~q\,
	datab => \U_GESTOR|Selector5~0_combout\,
	datac => \U_GESTOR|addr_rd~18_combout\,
	datad => \U_REGISTRO|contador~4_combout\,
	combout => \U_GESTOR|addr_rd~19_combout\);

-- Location: FF_X20_Y19_N13
\U_GESTOR|addr_rd[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_GESTOR|addr_rd~19_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GESTOR|addr_rd\(0));

-- Location: LCCOMB_X20_Y19_N14
\mem_address_s[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_address_s[0]~4_combout\ = (\U_ADMIN|estado.ESPERA~q\ & (\U_ADMIN|addr_i\(0))) # (!\U_ADMIN|estado.ESPERA~q\ & ((\U_GESTOR|addr_rd\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|estado.ESPERA~q\,
	datac => \U_ADMIN|addr_i\(0),
	datad => \U_GESTOR|addr_rd\(0),
	combout => \mem_address_s[0]~4_combout\);

-- Location: LCCOMB_X17_Y18_N0
\U_ADMIN|usuario_sel[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|usuario_sel[0]~feeder_combout\ = \U_GESTOR|Mux1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_GESTOR|Mux1~0_combout\,
	combout => \U_ADMIN|usuario_sel[0]~feeder_combout\);

-- Location: LCCOMB_X17_Y18_N26
\U_ADMIN|usuario_sel[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|usuario_sel[1]~0_combout\ = (!\SALIR_ADMIN~input_o\ & (\U_ADMIN|Selector40~0_combout\ & ((\U_ADMIN|estado.OP_ELIMINAR_USR~q\) # (\U_ADMIN|estado.ADMIN_OK~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SALIR_ADMIN~input_o\,
	datab => \U_ADMIN|estado.OP_ELIMINAR_USR~q\,
	datac => \U_ADMIN|estado.ADMIN_OK~q\,
	datad => \U_ADMIN|Selector40~0_combout\,
	combout => \U_ADMIN|usuario_sel[1]~0_combout\);

-- Location: FF_X17_Y18_N1
\U_ADMIN|usuario_sel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_ADMIN|usuario_sel[0]~feeder_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \U_ADMIN|usuario_sel[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADMIN|usuario_sel\(0));

-- Location: FF_X17_Y18_N23
\U_ADMIN|usuario_sel[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_GESTOR|Mux0~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \U_ADMIN|usuario_sel[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADMIN|usuario_sel\(1));

-- Location: LCCOMB_X20_Y20_N24
\U_ADMIN|Selector27~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|Selector27~0_combout\ = (\U_ADMIN|usuario_sel\(1)) # ((\U_ADMIN|write_step\(2) & (\U_ADMIN|estado.ESCRIBIENDO~q\ & \U_ADMIN|usuario_sel\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|write_step\(2),
	datab => \U_ADMIN|estado.ESCRIBIENDO~q\,
	datac => \U_ADMIN|usuario_sel\(0),
	datad => \U_ADMIN|usuario_sel\(1),
	combout => \U_ADMIN|Selector27~0_combout\);

-- Location: FF_X20_Y20_N25
\U_ADMIN|addr_i[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_ADMIN|Selector27~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \U_ADMIN|addr_i[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADMIN|addr_i\(4));

-- Location: LCCOMB_X21_Y17_N26
\U_GESTOR|Add4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GESTOR|Add4~0_combout\ = \U_GESTOR|base_addr_reg\(4) $ (((\U_GESTOR|base_addr_reg\(3) & !\U_GESTOR|base_addr_reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GESTOR|base_addr_reg\(3),
	datac => \U_GESTOR|base_addr_reg\(4),
	datad => \U_GESTOR|base_addr_reg\(2),
	combout => \U_GESTOR|Add4~0_combout\);

-- Location: LCCOMB_X21_Y17_N2
\U_GESTOR|Add2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GESTOR|Add2~1_combout\ = \U_GESTOR|base_addr_reg\(4) $ (((!\U_GESTOR|base_addr_reg\(2) & (\U_GESTOR|base_addr_reg\(3) & !\U_GESTOR|base_addr_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GESTOR|base_addr_reg\(2),
	datab => \U_GESTOR|base_addr_reg\(3),
	datac => \U_GESTOR|base_addr_reg\(4),
	datad => \U_GESTOR|base_addr_reg\(1),
	combout => \U_GESTOR|Add2~1_combout\);

-- Location: LCCOMB_X21_Y17_N12
\U_GESTOR|addr_rd~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GESTOR|addr_rd~13_combout\ = (\U_GESTOR|Add4~0_combout\ & (((\U_GESTOR|addr_rd~11_combout\ & \U_GESTOR|Add2~1_combout\)) # (!\U_GESTOR|addr_rd~6_combout\))) # (!\U_GESTOR|Add4~0_combout\ & (((\U_GESTOR|addr_rd~11_combout\ & 
-- \U_GESTOR|Add2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GESTOR|Add4~0_combout\,
	datab => \U_GESTOR|addr_rd~6_combout\,
	datac => \U_GESTOR|addr_rd~11_combout\,
	datad => \U_GESTOR|Add2~1_combout\,
	combout => \U_GESTOR|addr_rd~13_combout\);

-- Location: LCCOMB_X23_Y17_N22
\U_GESTOR|addr_rd~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GESTOR|addr_rd~5_combout\ = (\U_GESTOR|estado_rd.LEE_ID~q\) # (!\U_GESTOR|estado_rd.ESPERA_SELECCION~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_GESTOR|estado_rd.ESPERA_SELECCION~q\,
	datad => \U_GESTOR|estado_rd.LEE_ID~q\,
	combout => \U_GESTOR|addr_rd~5_combout\);

-- Location: LCCOMB_X21_Y17_N8
\U_GESTOR|addr_rd~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GESTOR|addr_rd~14_combout\ = (\U_REGISTRO|contador~4_combout\ & ((\U_GESTOR|addr_rd~13_combout\) # ((\U_GESTOR|addr_rd~5_combout\ & \U_GESTOR|base_addr_reg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GESTOR|addr_rd~13_combout\,
	datab => \U_GESTOR|addr_rd~5_combout\,
	datac => \U_GESTOR|base_addr_reg\(4),
	datad => \U_REGISTRO|contador~4_combout\,
	combout => \U_GESTOR|addr_rd~14_combout\);

-- Location: LCCOMB_X21_Y17_N28
\U_GESTOR|addr_rd[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GESTOR|addr_rd[2]~9_combout\ = (((!\U_REGISTRO|contador[1]~6_combout\ & \U_FSM|Selector7~11_combout\)) # (!\U_REGISTRO|contador~5_combout\)) # (!\U_GESTOR|addr_rd[2]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REGISTRO|contador[1]~6_combout\,
	datab => \U_GESTOR|addr_rd[2]~8_combout\,
	datac => \U_FSM|Selector7~11_combout\,
	datad => \U_REGISTRO|contador~5_combout\,
	combout => \U_GESTOR|addr_rd[2]~9_combout\);

-- Location: FF_X21_Y17_N9
\U_GESTOR|addr_rd[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_GESTOR|addr_rd~14_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \U_GESTOR|addr_rd[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GESTOR|addr_rd\(4));

-- Location: LCCOMB_X20_Y17_N2
\mem_address_s[4]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_address_s[4]~2_combout\ = (\U_ADMIN|estado.ESPERA~q\ & (\U_ADMIN|addr_i\(4))) # (!\U_ADMIN|estado.ESPERA~q\ & ((\U_GESTOR|addr_rd\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|addr_i\(4),
	datac => \U_GESTOR|addr_rd\(4),
	datad => \U_ADMIN|estado.ESPERA~q\,
	combout => \mem_address_s[4]~2_combout\);

-- Location: LCCOMB_X17_Y20_N30
\U_ADMIN|addr_i[4]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|addr_i[4]~0_combout\ = (\U_ADMIN|estado.ESCRIBIENDO~q\ & ((\U_ADMIN|write_step\(1)) # (\U_ADMIN|write_step\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|write_step\(1),
	datac => \U_ADMIN|write_step\(2),
	datad => \U_ADMIN|estado.ESCRIBIENDO~q\,
	combout => \U_ADMIN|addr_i[4]~0_combout\);

-- Location: LCCOMB_X19_Y20_N22
\U_ADMIN|Selector28~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|Selector28~0_combout\ = (\U_ADMIN|usuario_sel\(0) & ((\U_ADMIN|usuario_sel\(1)) # ((!\U_ADMIN|estado.ESCRIBIENDO~q\) # (!\U_ADMIN|write_step\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|usuario_sel\(1),
	datab => \U_ADMIN|write_step\(2),
	datac => \U_ADMIN|usuario_sel\(0),
	datad => \U_ADMIN|estado.ESCRIBIENDO~q\,
	combout => \U_ADMIN|Selector28~0_combout\);

-- Location: LCCOMB_X20_Y20_N8
\U_ADMIN|Selector28~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|Selector28~1_combout\ = (\U_ADMIN|Selector28~0_combout\) # ((!\U_ADMIN|usuario_sel\(1) & (!\U_ADMIN|usuario_sel\(0) & \U_ADMIN|addr_i[4]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|usuario_sel\(1),
	datab => \U_ADMIN|usuario_sel\(0),
	datac => \U_ADMIN|addr_i[4]~0_combout\,
	datad => \U_ADMIN|Selector28~0_combout\,
	combout => \U_ADMIN|Selector28~1_combout\);

-- Location: FF_X20_Y20_N9
\U_ADMIN|addr_i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_ADMIN|Selector28~1_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \U_ADMIN|addr_i[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADMIN|addr_i\(3));

-- Location: LCCOMB_X21_Y17_N30
\U_GESTOR|addr_rd~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GESTOR|addr_rd~10_combout\ = (\U_GESTOR|base_addr_reg\(3) & ((\U_GESTOR|addr_rd~5_combout\) # ((\U_GESTOR|base_addr_reg\(2) & !\U_GESTOR|addr_rd~6_combout\)))) # (!\U_GESTOR|base_addr_reg\(3) & (!\U_GESTOR|base_addr_reg\(2) & 
-- ((!\U_GESTOR|addr_rd~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GESTOR|base_addr_reg\(2),
	datab => \U_GESTOR|addr_rd~5_combout\,
	datac => \U_GESTOR|addr_rd~6_combout\,
	datad => \U_GESTOR|base_addr_reg\(3),
	combout => \U_GESTOR|addr_rd~10_combout\);

-- Location: LCCOMB_X21_Y17_N0
\U_GESTOR|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GESTOR|Add2~0_combout\ = \U_GESTOR|base_addr_reg\(3) $ (((\U_GESTOR|base_addr_reg\(2)) # (\U_GESTOR|base_addr_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GESTOR|base_addr_reg\(2),
	datab => \U_GESTOR|base_addr_reg\(1),
	datac => \U_GESTOR|base_addr_reg\(3),
	combout => \U_GESTOR|Add2~0_combout\);

-- Location: LCCOMB_X21_Y17_N22
\U_GESTOR|addr_rd~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GESTOR|addr_rd~12_combout\ = (\U_REGISTRO|contador~4_combout\ & ((\U_GESTOR|addr_rd~10_combout\) # ((!\U_GESTOR|Add2~0_combout\ & \U_GESTOR|addr_rd~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GESTOR|addr_rd~10_combout\,
	datab => \U_GESTOR|Add2~0_combout\,
	datac => \U_GESTOR|addr_rd~11_combout\,
	datad => \U_REGISTRO|contador~4_combout\,
	combout => \U_GESTOR|addr_rd~12_combout\);

-- Location: FF_X21_Y17_N23
\U_GESTOR|addr_rd[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_GESTOR|addr_rd~12_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \U_GESTOR|addr_rd[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GESTOR|addr_rd\(3));

-- Location: LCCOMB_X20_Y20_N30
\mem_address_s[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_address_s[3]~1_combout\ = (\U_ADMIN|estado.ESPERA~q\ & (\U_ADMIN|addr_i\(3))) # (!\U_ADMIN|estado.ESPERA~q\ & ((\U_GESTOR|addr_rd\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_ADMIN|addr_i\(3),
	datac => \U_ADMIN|estado.ESPERA~q\,
	datad => \U_GESTOR|addr_rd\(3),
	combout => \mem_address_s[3]~1_combout\);

-- Location: LCCOMB_X20_Y20_N18
\U_ADMIN|Selector29~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|Selector29~0_combout\ = \U_ADMIN|usuario_sel\(1) $ ((((!\U_ADMIN|write_step\(2) & \U_ADMIN|usuario_sel\(0))) # (!\U_ADMIN|addr_i[4]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000001001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|write_step\(2),
	datab => \U_ADMIN|usuario_sel\(0),
	datac => \U_ADMIN|addr_i[4]~0_combout\,
	datad => \U_ADMIN|usuario_sel\(1),
	combout => \U_ADMIN|Selector29~0_combout\);

-- Location: FF_X20_Y20_N19
\U_ADMIN|addr_i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_ADMIN|Selector29~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \U_ADMIN|addr_i[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADMIN|addr_i\(2));

-- Location: LCCOMB_X21_Y17_N6
\U_GESTOR|addr_rd~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GESTOR|addr_rd~4_combout\ = (\U_GESTOR|estado_rd.LEE_HOR~q\ & (\U_GESTOR|base_addr_reg\(2) $ ((\U_GESTOR|base_addr_reg\(1))))) # (!\U_GESTOR|estado_rd.LEE_HOR~q\ & (\U_GESTOR|estado_rd.LEE_D0~q\ & (\U_GESTOR|base_addr_reg\(2) $ 
-- (\U_GESTOR|base_addr_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GESTOR|base_addr_reg\(2),
	datab => \U_GESTOR|base_addr_reg\(1),
	datac => \U_GESTOR|estado_rd.LEE_HOR~q\,
	datad => \U_GESTOR|estado_rd.LEE_D0~q\,
	combout => \U_GESTOR|addr_rd~4_combout\);

-- Location: LCCOMB_X21_Y17_N18
\U_GESTOR|addr_rd~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GESTOR|addr_rd~23_combout\ = (\U_GESTOR|base_addr_reg\(2) & (!\U_GESTOR|addr_rd~6_combout\)) # (!\U_GESTOR|base_addr_reg\(2) & (((\U_GESTOR|estado_rd.LEE_ID~q\) # (!\U_GESTOR|estado_rd.ESPERA_SELECCION~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GESTOR|base_addr_reg\(2),
	datab => \U_GESTOR|addr_rd~6_combout\,
	datac => \U_GESTOR|estado_rd.ESPERA_SELECCION~q\,
	datad => \U_GESTOR|estado_rd.LEE_ID~q\,
	combout => \U_GESTOR|addr_rd~23_combout\);

-- Location: LCCOMB_X21_Y17_N16
\U_GESTOR|addr_rd~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GESTOR|addr_rd~7_combout\ = (\U_REGISTRO|contador~4_combout\ & ((\U_GESTOR|addr_rd~4_combout\) # (\U_GESTOR|addr_rd~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GESTOR|addr_rd~4_combout\,
	datab => \U_GESTOR|addr_rd~23_combout\,
	datad => \U_REGISTRO|contador~4_combout\,
	combout => \U_GESTOR|addr_rd~7_combout\);

-- Location: FF_X21_Y17_N17
\U_GESTOR|addr_rd[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_GESTOR|addr_rd~7_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \U_GESTOR|addr_rd[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GESTOR|addr_rd\(2));

-- Location: LCCOMB_X20_Y19_N26
\mem_address_s[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_address_s[2]~0_combout\ = (\U_ADMIN|estado.ESPERA~q\ & (\U_ADMIN|addr_i\(2))) # (!\U_ADMIN|estado.ESPERA~q\ & ((\U_GESTOR|addr_rd\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|estado.ESPERA~q\,
	datac => \U_ADMIN|addr_i\(2),
	datad => \U_GESTOR|addr_rd\(2),
	combout => \mem_address_s[2]~0_combout\);

-- Location: LCCOMB_X23_Y20_N16
\U_MEMORIA|data_out[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|data_out[2]~0_combout\ = (!\mem_address_s[4]~2_combout\ & (!\mem_address_s[3]~1_combout\ & !\mem_address_s[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[4]~2_combout\,
	datab => \mem_address_s[3]~1_combout\,
	datad => \mem_address_s[2]~0_combout\,
	combout => \U_MEMORIA|data_out[2]~0_combout\);

-- Location: LCCOMB_X21_Y16_N30
\U_GESTOR|addr_rd~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GESTOR|addr_rd~15_combout\ = (\U_GESTOR|estado_rd.LEE_ID~q\) # ((\U_GESTOR|hay_usuario~q\ & (!\U_GESTOR|es_admin~q\ & !\U_GESTOR|estado_rd.ESPERA_SELECCION~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GESTOR|hay_usuario~q\,
	datab => \U_GESTOR|es_admin~q\,
	datac => \U_GESTOR|estado_rd.ESPERA_SELECCION~q\,
	datad => \U_GESTOR|estado_rd.LEE_ID~q\,
	combout => \U_GESTOR|addr_rd~15_combout\);

-- Location: LCCOMB_X21_Y17_N10
\U_GESTOR|addr_rd~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GESTOR|addr_rd~16_combout\ = (\U_GESTOR|base_addr_reg\(1) & (\U_GESTOR|addr_rd~11_combout\)) # (!\U_GESTOR|base_addr_reg\(1) & (((\U_GESTOR|addr_rd~15_combout\) # (!\U_GESTOR|addr_rd~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GESTOR|addr_rd~11_combout\,
	datab => \U_GESTOR|base_addr_reg\(1),
	datac => \U_GESTOR|addr_rd~6_combout\,
	datad => \U_GESTOR|addr_rd~15_combout\,
	combout => \U_GESTOR|addr_rd~16_combout\);

-- Location: LCCOMB_X20_Y19_N10
\U_GESTOR|addr_rd~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GESTOR|addr_rd~17_combout\ = (\U_REGISTRO|contador~4_combout\ & ((\U_GESTOR|addr_rd~16_combout\) # ((\U_GESTOR|addr_rd[2]~8_combout\ & \U_GESTOR|addr_rd\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GESTOR|addr_rd~16_combout\,
	datab => \U_GESTOR|addr_rd[2]~8_combout\,
	datac => \U_GESTOR|addr_rd\(1),
	datad => \U_REGISTRO|contador~4_combout\,
	combout => \U_GESTOR|addr_rd~17_combout\);

-- Location: FF_X20_Y19_N11
\U_GESTOR|addr_rd[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_GESTOR|addr_rd~17_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GESTOR|addr_rd\(1));

-- Location: LCCOMB_X17_Y19_N10
\U_ADMIN|Selector30~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|Selector30~0_combout\ = (\U_ADMIN|usuario_sel\(0) & ((\U_ADMIN|write_step\(2)) # ((\U_ADMIN|estado.OP_ELIMINAR_USR~q\) # (!\U_ADMIN|write_step\(1))))) # (!\U_ADMIN|usuario_sel\(0) & (((!\U_ADMIN|estado.OP_ELIMINAR_USR~q\ & 
-- \U_ADMIN|write_step\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|write_step\(2),
	datab => \U_ADMIN|usuario_sel\(0),
	datac => \U_ADMIN|estado.OP_ELIMINAR_USR~q\,
	datad => \U_ADMIN|write_step\(1),
	combout => \U_ADMIN|Selector30~0_combout\);

-- Location: LCCOMB_X17_Y19_N16
\U_ADMIN|Selector30~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|Selector30~1_combout\ = (\U_ADMIN|estado.OP_ELIMINAR_USR~q\ & (((!\U_ADMIN|Equal4~0_combout\ & \U_ADMIN|Selector40~0_combout\)))) # (!\U_ADMIN|estado.OP_ELIMINAR_USR~q\ & (\U_ADMIN|estado.ESCRIBIENDO~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|estado.ESCRIBIENDO~q\,
	datab => \U_ADMIN|Equal4~0_combout\,
	datac => \U_ADMIN|estado.OP_ELIMINAR_USR~q\,
	datad => \U_ADMIN|Selector40~0_combout\,
	combout => \U_ADMIN|Selector30~1_combout\);

-- Location: LCCOMB_X19_Y19_N18
\U_ADMIN|Selector30~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|Selector30~2_combout\ = (\U_ADMIN|Selector30~1_combout\ & (!\U_ADMIN|Selector30~0_combout\)) # (!\U_ADMIN|Selector30~1_combout\ & ((\U_ADMIN|addr_i\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|Selector30~0_combout\,
	datac => \U_ADMIN|addr_i\(1),
	datad => \U_ADMIN|Selector30~1_combout\,
	combout => \U_ADMIN|Selector30~2_combout\);

-- Location: FF_X19_Y19_N19
\U_ADMIN|addr_i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_ADMIN|Selector30~2_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \ALT_INV_SALIR_ADMIN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADMIN|addr_i\(1));

-- Location: LCCOMB_X20_Y19_N28
\mem_address_s[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_address_s[1]~3_combout\ = (\U_ADMIN|estado.ESPERA~q\ & ((\U_ADMIN|addr_i\(1)))) # (!\U_ADMIN|estado.ESPERA~q\ & (\U_GESTOR|addr_rd\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|estado.ESPERA~q\,
	datab => \U_GESTOR|addr_rd\(1),
	datad => \U_ADMIN|addr_i\(1),
	combout => \mem_address_s[1]~3_combout\);

-- Location: LCCOMB_X23_Y19_N22
\U_MEMORIA|data_out[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|data_out[1]~1_combout\ = (\mem_address_s[4]~2_combout\ & (((!\mem_address_s[3]~1_combout\) # (!\mem_address_s[2]~0_combout\)) # (!\mem_address_s[1]~3_combout\))) # (!\mem_address_s[4]~2_combout\ & ((\mem_address_s[3]~1_combout\) # 
-- ((\mem_address_s[1]~3_combout\ & \mem_address_s[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[4]~2_combout\,
	datab => \mem_address_s[1]~3_combout\,
	datac => \mem_address_s[2]~0_combout\,
	datad => \mem_address_s[3]~1_combout\,
	combout => \U_MEMORIA|data_out[1]~1_combout\);

-- Location: LCCOMB_X17_Y21_N16
\U_ADMIN|horario_buf[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|horario_buf[0]~0_combout\ = (!\SALIR_ADMIN~input_o\ & (!\RESET~input_o\ & !\U_ADMIN|ultimo_horario[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SALIR_ADMIN~input_o\,
	datab => \RESET~input_o\,
	datad => \U_ADMIN|ultimo_horario[3]~0_combout\,
	combout => \U_ADMIN|horario_buf[0]~0_combout\);

-- Location: FF_X17_Y21_N19
\U_ADMIN|horario_buf[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U_TECLADO|key_latched\(0),
	sload => VCC,
	ena => \U_ADMIN|horario_buf[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADMIN|horario_buf\(0));

-- Location: LCCOMB_X17_Y21_N18
\U_ADMIN|Selector39~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|Selector39~1_combout\ = (\U_ADMIN|write_step\(1) & (((\U_ADMIN|write_step\(0))))) # (!\U_ADMIN|write_step\(1) & ((\U_ADMIN|write_step\(0) & ((\U_ADMIN|horario_buf\(0)))) # (!\U_ADMIN|write_step\(0) & (\U_ADMIN|usuario_sel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|write_step\(1),
	datab => \U_ADMIN|usuario_sel\(0),
	datac => \U_ADMIN|horario_buf\(0),
	datad => \U_ADMIN|write_step\(0),
	combout => \U_ADMIN|Selector39~1_combout\);

-- Location: LCCOMB_X15_Y20_N8
\U_ADMIN|clave_buf[2][0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|clave_buf[2][0]~3_combout\ = (!\RESET~input_o\ & (!\SALIR_ADMIN~input_o\ & (!\U_ADMIN|Equal4~0_combout\ & \U_ADMIN|digito_clave[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \SALIR_ADMIN~input_o\,
	datac => \U_ADMIN|Equal4~0_combout\,
	datad => \U_ADMIN|digito_clave[1]~3_combout\,
	combout => \U_ADMIN|clave_buf[2][0]~3_combout\);

-- Location: LCCOMB_X16_Y20_N26
\U_ADMIN|clave_buf[1][0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|clave_buf[1][0]~8_combout\ = (!\U_ADMIN|digito_clave\(1) & (\U_ADMIN|digito_clave\(0) & \U_ADMIN|clave_buf[2][0]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|digito_clave\(1),
	datab => \U_ADMIN|digito_clave\(0),
	datad => \U_ADMIN|clave_buf[2][0]~3_combout\,
	combout => \U_ADMIN|clave_buf[1][0]~8_combout\);

-- Location: FF_X16_Y20_N27
\U_ADMIN|clave_buf[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U_TECLADO|key_latched\(0),
	sload => VCC,
	ena => \U_ADMIN|clave_buf[1][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADMIN|clave_buf[1][0]~q\);

-- Location: LCCOMB_X15_Y19_N0
\U_ADMIN|clave_buf[0][0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|clave_buf[0][0]~5_combout\ = (\U_ADMIN|estado~28_combout\) # ((\U_ADMIN|estado.OP_AGREGAR_CLV~q\ & (!\U_ADMIN|estado.OP_AGREGAR_USR~q\ & !\U_TECLADO|tecla_valida~q\)) # (!\U_ADMIN|estado.OP_AGREGAR_CLV~q\ & ((!\U_TECLADO|tecla_valida~q\) # 
-- (!\U_ADMIN|estado.OP_AGREGAR_USR~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|estado~28_combout\,
	datab => \U_ADMIN|estado.OP_AGREGAR_CLV~q\,
	datac => \U_ADMIN|estado.OP_AGREGAR_USR~q\,
	datad => \U_TECLADO|tecla_valida~q\,
	combout => \U_ADMIN|clave_buf[0][0]~5_combout\);

-- Location: LCCOMB_X15_Y19_N2
\U_ADMIN|clave_buf[0][0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|clave_buf[0][0]~6_combout\ = (\RESET~input_o\) # ((\SALIR_ADMIN~input_o\) # ((\U_ADMIN|Equal4~0_combout\) # (\U_ADMIN|clave_buf[0][0]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \SALIR_ADMIN~input_o\,
	datac => \U_ADMIN|Equal4~0_combout\,
	datad => \U_ADMIN|clave_buf[0][0]~5_combout\,
	combout => \U_ADMIN|clave_buf[0][0]~6_combout\);

-- Location: LCCOMB_X16_Y20_N22
\U_ADMIN|clave_buf[0][0]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|clave_buf[0][0]~7_combout\ = (!\U_ADMIN|clave_buf[0][0]~6_combout\ & (((!\U_ADMIN|digito_clave\(1) & !\U_ADMIN|digito_clave\(0))) # (!\U_ADMIN|estado.OP_AGREGAR_CLV~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|digito_clave\(1),
	datab => \U_ADMIN|digito_clave\(0),
	datac => \U_ADMIN|estado.OP_AGREGAR_CLV~q\,
	datad => \U_ADMIN|clave_buf[0][0]~6_combout\,
	combout => \U_ADMIN|clave_buf[0][0]~7_combout\);

-- Location: FF_X16_Y20_N21
\U_ADMIN|clave_buf[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U_TECLADO|key_latched\(0),
	sload => VCC,
	ena => \U_ADMIN|clave_buf[0][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADMIN|clave_buf[0][0]~q\);

-- Location: LCCOMB_X16_Y20_N20
\U_ADMIN|Selector39~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|Selector39~2_combout\ = (\U_ADMIN|Selector39~1_combout\ & ((\U_ADMIN|clave_buf[1][0]~q\) # ((!\U_ADMIN|write_step\(1))))) # (!\U_ADMIN|Selector39~1_combout\ & (((\U_ADMIN|clave_buf[0][0]~q\ & \U_ADMIN|write_step\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|Selector39~1_combout\,
	datab => \U_ADMIN|clave_buf[1][0]~q\,
	datac => \U_ADMIN|clave_buf[0][0]~q\,
	datad => \U_ADMIN|write_step\(1),
	combout => \U_ADMIN|Selector39~2_combout\);

-- Location: LCCOMB_X17_Y20_N22
\U_ADMIN|clave_buf[3][0]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|clave_buf[3][0]~9_combout\ = (\U_ADMIN|digito_clave\(1) & (\U_ADMIN|digito_clave\(0) & \U_ADMIN|clave_buf[2][0]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|digito_clave\(1),
	datab => \U_ADMIN|digito_clave\(0),
	datad => \U_ADMIN|clave_buf[2][0]~3_combout\,
	combout => \U_ADMIN|clave_buf[3][0]~9_combout\);

-- Location: FF_X17_Y20_N7
\U_ADMIN|clave_buf[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U_TECLADO|key_latched\(0),
	sload => VCC,
	ena => \U_ADMIN|clave_buf[3][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADMIN|clave_buf[3][0]~q\);

-- Location: LCCOMB_X17_Y20_N18
\U_ADMIN|clave_buf[2][0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|clave_buf[2][0]~4_combout\ = (\U_ADMIN|digito_clave\(1) & (!\U_ADMIN|digito_clave\(0) & \U_ADMIN|clave_buf[2][0]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|digito_clave\(1),
	datac => \U_ADMIN|digito_clave\(0),
	datad => \U_ADMIN|clave_buf[2][0]~3_combout\,
	combout => \U_ADMIN|clave_buf[2][0]~4_combout\);

-- Location: FF_X17_Y20_N21
\U_ADMIN|clave_buf[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U_TECLADO|key_latched\(0),
	sload => VCC,
	ena => \U_ADMIN|clave_buf[2][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADMIN|clave_buf[2][0]~q\);

-- Location: LCCOMB_X17_Y20_N20
\U_ADMIN|Selector39~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|Selector39~0_combout\ = (\U_ADMIN|write_step\(2) & ((\U_ADMIN|write_step\(0) & (\U_ADMIN|clave_buf[3][0]~q\)) # (!\U_ADMIN|write_step\(0) & ((\U_ADMIN|clave_buf[2][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|clave_buf[3][0]~q\,
	datab => \U_ADMIN|write_step\(2),
	datac => \U_ADMIN|clave_buf[2][0]~q\,
	datad => \U_ADMIN|write_step\(0),
	combout => \U_ADMIN|Selector39~0_combout\);

-- Location: LCCOMB_X20_Y20_N26
\U_ADMIN|Selector39~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|Selector39~3_combout\ = (\U_ADMIN|Selector39~0_combout\) # ((!\U_ADMIN|write_step\(2) & \U_ADMIN|Selector39~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|write_step\(2),
	datab => \U_ADMIN|Selector39~2_combout\,
	datad => \U_ADMIN|Selector39~0_combout\,
	combout => \U_ADMIN|Selector39~3_combout\);

-- Location: FF_X20_Y20_N27
\U_ADMIN|dato_i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_ADMIN|Selector39~3_combout\,
	asdata => VCC,
	clrn => \ALT_INV_RESET~input_o\,
	sload => \U_ADMIN|estado.OP_ELIMINAR_USR~q\,
	ena => \U_ADMIN|addr_i[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADMIN|dato_i\(0));

-- Location: LCCOMB_X21_Y20_N26
\mem_data_in_s[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_data_in_s[0]~1_combout\ = (\U_ADMIN|dato_i\(0) & \U_ADMIN|estado.ESPERA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|dato_i\(0),
	datac => \U_ADMIN|estado.ESPERA~q\,
	combout => \mem_data_in_s[0]~1_combout\);

-- Location: LCCOMB_X23_Y21_N16
\U_MEMORIA|U_RAM|mem~198feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~198feeder_combout\ = \mem_data_in_s[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_data_in_s[0]~1_combout\,
	combout => \U_MEMORIA|U_RAM|mem~198feeder_combout\);

-- Location: LCCOMB_X23_Y22_N30
\U_MEMORIA|U_RAM|mem~446\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~446_combout\ = (\mem_address_s[1]~3_combout\ & (\mem_address_s[2]~0_combout\ & (\mem_address_s[0]~4_combout\ & !\mem_address_s[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[1]~3_combout\,
	datab => \mem_address_s[2]~0_combout\,
	datac => \mem_address_s[0]~4_combout\,
	datad => \mem_address_s[3]~1_combout\,
	combout => \U_MEMORIA|U_RAM|mem~446_combout\);

-- Location: LCCOMB_X17_Y19_N6
\U_ADMIN|Selector40~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|Selector40~1_combout\ = (\U_ADMIN|estado.ESCRIBIENDO~q\) # ((\U_ADMIN|Selector40~0_combout\ & \U_ADMIN|estado.OP_ELIMINAR_USR~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|estado.ESCRIBIENDO~q\,
	datab => \U_ADMIN|Selector40~0_combout\,
	datac => \U_ADMIN|estado.OP_ELIMINAR_USR~q\,
	combout => \U_ADMIN|Selector40~1_combout\);

-- Location: FF_X17_Y19_N7
\U_ADMIN|we_i\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_ADMIN|Selector40~1_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \SALIR_ADMIN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADMIN|we_i~q\);

-- Location: LCCOMB_X20_Y20_N22
\U_MEMORIA|U_RAM|mem~430\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~430_combout\ = (\U_ADMIN|addr_i\(4) & (((!\U_ADMIN|addr_i\(2)) # (!\U_ADMIN|addr_i\(3))) # (!\U_ADMIN|addr_i\(1)))) # (!\U_ADMIN|addr_i\(4) & ((\U_ADMIN|addr_i\(3)) # ((\U_ADMIN|addr_i\(1) & \U_ADMIN|addr_i\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|addr_i\(1),
	datab => \U_ADMIN|addr_i\(4),
	datac => \U_ADMIN|addr_i\(3),
	datad => \U_ADMIN|addr_i\(2),
	combout => \U_MEMORIA|U_RAM|mem~430_combout\);

-- Location: LCCOMB_X21_Y20_N18
\U_MEMORIA|U_RAM|mem~431\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~431_combout\ = (\mem_address_s[4]~2_combout\ & (\U_ADMIN|estado.ESPERA~q\ & (\U_ADMIN|we_i~q\ & \U_MEMORIA|U_RAM|mem~430_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[4]~2_combout\,
	datab => \U_ADMIN|estado.ESPERA~q\,
	datac => \U_ADMIN|we_i~q\,
	datad => \U_MEMORIA|U_RAM|mem~430_combout\,
	combout => \U_MEMORIA|U_RAM|mem~431_combout\);

-- Location: LCCOMB_X23_Y21_N12
\U_MEMORIA|U_RAM|mem~447\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~447_combout\ = (\U_MEMORIA|U_RAM|mem~446_combout\ & \U_MEMORIA|U_RAM|mem~431_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~446_combout\,
	datad => \U_MEMORIA|U_RAM|mem~431_combout\,
	combout => \U_MEMORIA|U_RAM|mem~447_combout\);

-- Location: FF_X23_Y21_N17
\U_MEMORIA|U_RAM|mem~198\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~198feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~198_q\);

-- Location: LCCOMB_X21_Y20_N10
\U_MEMORIA|U_RAM|mem~440\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~440_combout\ = (!\mem_address_s[0]~4_combout\ & (!\mem_address_s[3]~1_combout\ & (\mem_address_s[1]~3_combout\ & \mem_address_s[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[0]~4_combout\,
	datab => \mem_address_s[3]~1_combout\,
	datac => \mem_address_s[1]~3_combout\,
	datad => \mem_address_s[2]~0_combout\,
	combout => \U_MEMORIA|U_RAM|mem~440_combout\);

-- Location: LCCOMB_X20_Y21_N14
\U_MEMORIA|U_RAM|mem~441\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~441_combout\ = (\U_MEMORIA|U_RAM|mem~431_combout\ & \U_MEMORIA|U_RAM|mem~440_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_MEMORIA|U_RAM|mem~431_combout\,
	datad => \U_MEMORIA|U_RAM|mem~440_combout\,
	combout => \U_MEMORIA|U_RAM|mem~441_combout\);

-- Location: FF_X24_Y21_N29
\U_MEMORIA|U_RAM|mem~190\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[0]~1_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~190_q\);

-- Location: LCCOMB_X22_Y21_N28
\U_MEMORIA|U_RAM|mem~182feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~182feeder_combout\ = \mem_data_in_s[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_data_in_s[0]~1_combout\,
	combout => \U_MEMORIA|U_RAM|mem~182feeder_combout\);

-- Location: LCCOMB_X22_Y21_N8
\U_MEMORIA|U_RAM|mem~442\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~442_combout\ = (!\mem_address_s[3]~1_combout\ & (!\mem_address_s[1]~3_combout\ & (\mem_address_s[0]~4_combout\ & \mem_address_s[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[3]~1_combout\,
	datab => \mem_address_s[1]~3_combout\,
	datac => \mem_address_s[0]~4_combout\,
	datad => \mem_address_s[2]~0_combout\,
	combout => \U_MEMORIA|U_RAM|mem~442_combout\);

-- Location: LCCOMB_X22_Y21_N30
\U_MEMORIA|U_RAM|mem~443\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~443_combout\ = (\U_MEMORIA|U_RAM|mem~442_combout\ & \U_MEMORIA|U_RAM|mem~431_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_MEMORIA|U_RAM|mem~442_combout\,
	datad => \U_MEMORIA|U_RAM|mem~431_combout\,
	combout => \U_MEMORIA|U_RAM|mem~443_combout\);

-- Location: FF_X22_Y21_N29
\U_MEMORIA|U_RAM|mem~182\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~182feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~182_q\);

-- Location: LCCOMB_X23_Y19_N24
\U_MEMORIA|U_RAM|mem~444\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~444_combout\ = (!\mem_address_s[0]~4_combout\ & (!\mem_address_s[3]~1_combout\ & (\mem_address_s[2]~0_combout\ & !\mem_address_s[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[0]~4_combout\,
	datab => \mem_address_s[3]~1_combout\,
	datac => \mem_address_s[2]~0_combout\,
	datad => \mem_address_s[1]~3_combout\,
	combout => \U_MEMORIA|U_RAM|mem~444_combout\);

-- Location: LCCOMB_X23_Y21_N24
\U_MEMORIA|U_RAM|mem~445\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~445_combout\ = (\U_MEMORIA|U_RAM|mem~431_combout\ & \U_MEMORIA|U_RAM|mem~444_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_MEMORIA|U_RAM|mem~431_combout\,
	datad => \U_MEMORIA|U_RAM|mem~444_combout\,
	combout => \U_MEMORIA|U_RAM|mem~445_combout\);

-- Location: FF_X24_Y21_N11
\U_MEMORIA|U_RAM|mem~174\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[0]~1_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~174_q\);

-- Location: LCCOMB_X24_Y21_N10
\U_MEMORIA|U_RAM|mem~290\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~290_combout\ = (\mem_address_s[1]~3_combout\ & (((\mem_address_s[0]~4_combout\)))) # (!\mem_address_s[1]~3_combout\ & ((\mem_address_s[0]~4_combout\ & (\U_MEMORIA|U_RAM|mem~182_q\)) # (!\mem_address_s[0]~4_combout\ & 
-- ((\U_MEMORIA|U_RAM|mem~174_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~182_q\,
	datab => \mem_address_s[1]~3_combout\,
	datac => \U_MEMORIA|U_RAM|mem~174_q\,
	datad => \mem_address_s[0]~4_combout\,
	combout => \U_MEMORIA|U_RAM|mem~290_combout\);

-- Location: LCCOMB_X24_Y21_N28
\U_MEMORIA|U_RAM|mem~291\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~291_combout\ = (\mem_address_s[1]~3_combout\ & ((\U_MEMORIA|U_RAM|mem~290_combout\ & (\U_MEMORIA|U_RAM|mem~198_q\)) # (!\U_MEMORIA|U_RAM|mem~290_combout\ & ((\U_MEMORIA|U_RAM|mem~190_q\))))) # (!\mem_address_s[1]~3_combout\ & 
-- (((\U_MEMORIA|U_RAM|mem~290_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~198_q\,
	datab => \mem_address_s[1]~3_combout\,
	datac => \U_MEMORIA|U_RAM|mem~190_q\,
	datad => \U_MEMORIA|U_RAM|mem~290_combout\,
	combout => \U_MEMORIA|U_RAM|mem~291_combout\);

-- Location: LCCOMB_X24_Y22_N30
\U_MEMORIA|U_RAM|mem~502\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~502_combout\ = !\mem_data_in_s[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_data_in_s[0]~1_combout\,
	combout => \U_MEMORIA|U_RAM|mem~502_combout\);

-- Location: LCCOMB_X23_Y22_N0
\U_MEMORIA|U_RAM|mem~460\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~460_combout\ = (\mem_address_s[2]~0_combout\ & (!\mem_address_s[1]~3_combout\ & (!\mem_address_s[0]~4_combout\ & \mem_address_s[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[2]~0_combout\,
	datab => \mem_address_s[1]~3_combout\,
	datac => \mem_address_s[0]~4_combout\,
	datad => \mem_address_s[3]~1_combout\,
	combout => \U_MEMORIA|U_RAM|mem~460_combout\);

-- Location: LCCOMB_X24_Y22_N4
\U_MEMORIA|U_RAM|mem~461\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~461_combout\ = (\U_MEMORIA|U_RAM|mem~460_combout\ & \U_MEMORIA|U_RAM|mem~431_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~460_combout\,
	datad => \U_MEMORIA|U_RAM|mem~431_combout\,
	combout => \U_MEMORIA|U_RAM|mem~461_combout\);

-- Location: FF_X24_Y22_N31
\U_MEMORIA|U_RAM|mem~238\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~502_combout\,
	ena => \U_MEMORIA|U_RAM|mem~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~238_q\);

-- Location: LCCOMB_X24_Y22_N0
\U_MEMORIA|U_RAM|mem~501\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~501_combout\ = !\mem_data_in_s[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_data_in_s[0]~1_combout\,
	combout => \U_MEMORIA|U_RAM|mem~501_combout\);

-- Location: LCCOMB_X22_Y21_N22
\U_MEMORIA|U_RAM|mem~458\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~458_combout\ = (\mem_address_s[3]~1_combout\ & (\mem_address_s[0]~4_combout\ & (!\mem_address_s[1]~3_combout\ & \mem_address_s[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[3]~1_combout\,
	datab => \mem_address_s[0]~4_combout\,
	datac => \mem_address_s[1]~3_combout\,
	datad => \mem_address_s[2]~0_combout\,
	combout => \U_MEMORIA|U_RAM|mem~458_combout\);

-- Location: LCCOMB_X24_Y22_N24
\U_MEMORIA|U_RAM|mem~459\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~459_combout\ = (\U_MEMORIA|U_RAM|mem~431_combout\ & \U_MEMORIA|U_RAM|mem~458_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~431_combout\,
	datad => \U_MEMORIA|U_RAM|mem~458_combout\,
	combout => \U_MEMORIA|U_RAM|mem~459_combout\);

-- Location: FF_X24_Y22_N1
\U_MEMORIA|U_RAM|mem~246\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~501_combout\,
	ena => \U_MEMORIA|U_RAM|mem~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~246_q\);

-- Location: LCCOMB_X23_Y22_N12
\U_MEMORIA|U_RAM|mem~297\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~297_combout\ = (\mem_address_s[1]~3_combout\ & (((\mem_address_s[0]~4_combout\)))) # (!\mem_address_s[1]~3_combout\ & ((\mem_address_s[0]~4_combout\ & ((!\U_MEMORIA|U_RAM|mem~246_q\))) # (!\mem_address_s[0]~4_combout\ & 
-- (!\U_MEMORIA|U_RAM|mem~238_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~238_q\,
	datab => \U_MEMORIA|U_RAM|mem~246_q\,
	datac => \mem_address_s[1]~3_combout\,
	datad => \mem_address_s[0]~4_combout\,
	combout => \U_MEMORIA|U_RAM|mem~297_combout\);

-- Location: LCCOMB_X26_Y20_N0
\U_MEMORIA|U_RAM|mem~254feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~254feeder_combout\ = \mem_data_in_s[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_data_in_s[0]~1_combout\,
	combout => \U_MEMORIA|U_RAM|mem~254feeder_combout\);

-- Location: LCCOMB_X22_Y19_N26
\U_MEMORIA|U_RAM|mem~456\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~456_combout\ = (!\mem_address_s[0]~4_combout\ & (\mem_address_s[2]~0_combout\ & (\mem_address_s[3]~1_combout\ & \mem_address_s[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[0]~4_combout\,
	datab => \mem_address_s[2]~0_combout\,
	datac => \mem_address_s[3]~1_combout\,
	datad => \mem_address_s[1]~3_combout\,
	combout => \U_MEMORIA|U_RAM|mem~456_combout\);

-- Location: LCCOMB_X26_Y20_N12
\U_MEMORIA|U_RAM|mem~457\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~457_combout\ = (\U_MEMORIA|U_RAM|mem~456_combout\ & \U_MEMORIA|U_RAM|mem~431_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_MEMORIA|U_RAM|mem~456_combout\,
	datad => \U_MEMORIA|U_RAM|mem~431_combout\,
	combout => \U_MEMORIA|U_RAM|mem~457_combout\);

-- Location: FF_X26_Y20_N1
\U_MEMORIA|U_RAM|mem~254\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~254feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~254_q\);

-- Location: LCCOMB_X23_Y22_N22
\U_MEMORIA|U_RAM|mem~462\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~462_combout\ = (\mem_address_s[1]~3_combout\ & (\mem_address_s[2]~0_combout\ & (\mem_address_s[0]~4_combout\ & \mem_address_s[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[1]~3_combout\,
	datab => \mem_address_s[2]~0_combout\,
	datac => \mem_address_s[0]~4_combout\,
	datad => \mem_address_s[3]~1_combout\,
	combout => \U_MEMORIA|U_RAM|mem~462_combout\);

-- Location: LCCOMB_X23_Y22_N28
\U_MEMORIA|U_RAM|mem~463\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~463_combout\ = (\U_MEMORIA|U_RAM|mem~462_combout\ & \U_MEMORIA|U_RAM|mem~431_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~462_combout\,
	datac => \U_MEMORIA|U_RAM|mem~431_combout\,
	combout => \U_MEMORIA|U_RAM|mem~463_combout\);

-- Location: FF_X23_Y22_N11
\U_MEMORIA|U_RAM|mem~262\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[0]~1_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~262_q\);

-- Location: LCCOMB_X23_Y22_N10
\U_MEMORIA|U_RAM|mem~298\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~298_combout\ = (\U_MEMORIA|U_RAM|mem~297_combout\ & (((\U_MEMORIA|U_RAM|mem~262_q\) # (!\mem_address_s[1]~3_combout\)))) # (!\U_MEMORIA|U_RAM|mem~297_combout\ & (\U_MEMORIA|U_RAM|mem~254_q\ & ((\mem_address_s[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~297_combout\,
	datab => \U_MEMORIA|U_RAM|mem~254_q\,
	datac => \U_MEMORIA|U_RAM|mem~262_q\,
	datad => \mem_address_s[1]~3_combout\,
	combout => \U_MEMORIA|U_RAM|mem~298_combout\);

-- Location: LCCOMB_X22_Y19_N12
\U_MEMORIA|U_RAM|mem~158feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~158feeder_combout\ = \mem_data_in_s[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_data_in_s[0]~1_combout\,
	combout => \U_MEMORIA|U_RAM|mem~158feeder_combout\);

-- Location: LCCOMB_X21_Y20_N0
\U_MEMORIA|U_RAM|mem~450\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~450_combout\ = (!\mem_address_s[0]~4_combout\ & (!\mem_address_s[3]~1_combout\ & (\mem_address_s[1]~3_combout\ & !\mem_address_s[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[0]~4_combout\,
	datab => \mem_address_s[3]~1_combout\,
	datac => \mem_address_s[1]~3_combout\,
	datad => \mem_address_s[2]~0_combout\,
	combout => \U_MEMORIA|U_RAM|mem~450_combout\);

-- Location: LCCOMB_X20_Y22_N28
\U_MEMORIA|U_RAM|mem~451\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~451_combout\ = (\U_MEMORIA|U_RAM|mem~450_combout\ & \U_MEMORIA|U_RAM|mem~431_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_MEMORIA|U_RAM|mem~450_combout\,
	datad => \U_MEMORIA|U_RAM|mem~431_combout\,
	combout => \U_MEMORIA|U_RAM|mem~451_combout\);

-- Location: FF_X22_Y19_N13
\U_MEMORIA|U_RAM|mem~158\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~158feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~158_q\);

-- Location: LCCOMB_X24_Y20_N30
\U_MEMORIA|U_RAM|mem~454\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~454_combout\ = (!\mem_address_s[3]~1_combout\ & (\mem_address_s[1]~3_combout\ & (!\mem_address_s[2]~0_combout\ & \mem_address_s[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[3]~1_combout\,
	datab => \mem_address_s[1]~3_combout\,
	datac => \mem_address_s[2]~0_combout\,
	datad => \mem_address_s[0]~4_combout\,
	combout => \U_MEMORIA|U_RAM|mem~454_combout\);

-- Location: LCCOMB_X24_Y19_N18
\U_MEMORIA|U_RAM|mem~455\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~455_combout\ = (\U_MEMORIA|U_RAM|mem~454_combout\ & \U_MEMORIA|U_RAM|mem~431_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~454_combout\,
	datad => \U_MEMORIA|U_RAM|mem~431_combout\,
	combout => \U_MEMORIA|U_RAM|mem~455_combout\);

-- Location: FF_X22_Y19_N1
\U_MEMORIA|U_RAM|mem~166\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[0]~1_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~166_q\);

-- Location: LCCOMB_X24_Y19_N6
\U_MEMORIA|U_RAM|mem~500\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~500_combout\ = !\mem_data_in_s[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_data_in_s[0]~1_combout\,
	combout => \U_MEMORIA|U_RAM|mem~500_combout\);

-- Location: LCCOMB_X22_Y19_N4
\U_MEMORIA|U_RAM|mem~452\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~452_combout\ = (!\mem_address_s[0]~4_combout\ & (!\mem_address_s[2]~0_combout\ & (!\mem_address_s[3]~1_combout\ & !\mem_address_s[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[0]~4_combout\,
	datab => \mem_address_s[2]~0_combout\,
	datac => \mem_address_s[3]~1_combout\,
	datad => \mem_address_s[1]~3_combout\,
	combout => \U_MEMORIA|U_RAM|mem~452_combout\);

-- Location: LCCOMB_X24_Y19_N8
\U_MEMORIA|U_RAM|mem~453\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~453_combout\ = (\U_MEMORIA|U_RAM|mem~452_combout\ & \U_MEMORIA|U_RAM|mem~431_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~452_combout\,
	datad => \U_MEMORIA|U_RAM|mem~431_combout\,
	combout => \U_MEMORIA|U_RAM|mem~453_combout\);

-- Location: FF_X24_Y19_N7
\U_MEMORIA|U_RAM|mem~142\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~500_combout\,
	ena => \U_MEMORIA|U_RAM|mem~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~142_q\);

-- Location: LCCOMB_X26_Y19_N24
\U_MEMORIA|U_RAM|mem~499\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~499_combout\ = !\mem_data_in_s[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_data_in_s[0]~1_combout\,
	combout => \U_MEMORIA|U_RAM|mem~499_combout\);

-- Location: LCCOMB_X23_Y19_N10
\U_MEMORIA|U_RAM|mem~448\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~448_combout\ = (\mem_address_s[0]~4_combout\ & (!\mem_address_s[3]~1_combout\ & (!\mem_address_s[2]~0_combout\ & !\mem_address_s[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[0]~4_combout\,
	datab => \mem_address_s[3]~1_combout\,
	datac => \mem_address_s[2]~0_combout\,
	datad => \mem_address_s[1]~3_combout\,
	combout => \U_MEMORIA|U_RAM|mem~448_combout\);

-- Location: LCCOMB_X26_Y19_N0
\U_MEMORIA|U_RAM|mem~449\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~449_combout\ = (\U_MEMORIA|U_RAM|mem~431_combout\ & \U_MEMORIA|U_RAM|mem~448_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_MEMORIA|U_RAM|mem~431_combout\,
	datad => \U_MEMORIA|U_RAM|mem~448_combout\,
	combout => \U_MEMORIA|U_RAM|mem~449_combout\);

-- Location: FF_X26_Y19_N25
\U_MEMORIA|U_RAM|mem~150\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~499_combout\,
	ena => \U_MEMORIA|U_RAM|mem~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~150_q\);

-- Location: LCCOMB_X22_Y19_N6
\U_MEMORIA|U_RAM|mem~294\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~294_combout\ = (\mem_address_s[0]~4_combout\ & (((\mem_address_s[1]~3_combout\) # (!\U_MEMORIA|U_RAM|mem~150_q\)))) # (!\mem_address_s[0]~4_combout\ & (!\U_MEMORIA|U_RAM|mem~142_q\ & ((!\mem_address_s[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~142_q\,
	datab => \U_MEMORIA|U_RAM|mem~150_q\,
	datac => \mem_address_s[0]~4_combout\,
	datad => \mem_address_s[1]~3_combout\,
	combout => \U_MEMORIA|U_RAM|mem~294_combout\);

-- Location: LCCOMB_X22_Y19_N0
\U_MEMORIA|U_RAM|mem~295\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~295_combout\ = (\mem_address_s[1]~3_combout\ & ((\U_MEMORIA|U_RAM|mem~294_combout\ & ((\U_MEMORIA|U_RAM|mem~166_q\))) # (!\U_MEMORIA|U_RAM|mem~294_combout\ & (\U_MEMORIA|U_RAM|mem~158_q\)))) # (!\mem_address_s[1]~3_combout\ & 
-- (((\U_MEMORIA|U_RAM|mem~294_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~158_q\,
	datab => \mem_address_s[1]~3_combout\,
	datac => \U_MEMORIA|U_RAM|mem~166_q\,
	datad => \U_MEMORIA|U_RAM|mem~294_combout\,
	combout => \U_MEMORIA|U_RAM|mem~295_combout\);

-- Location: LCCOMB_X19_Y21_N14
\U_MEMORIA|U_RAM|mem~498\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~498_combout\ = !\mem_data_in_s[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_data_in_s[0]~1_combout\,
	combout => \U_MEMORIA|U_RAM|mem~498_combout\);

-- Location: LCCOMB_X23_Y19_N18
\U_MEMORIA|U_RAM|mem~438\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~438_combout\ = (\mem_address_s[0]~4_combout\ & (\mem_address_s[3]~1_combout\ & (!\mem_address_s[2]~0_combout\ & \mem_address_s[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[0]~4_combout\,
	datab => \mem_address_s[3]~1_combout\,
	datac => \mem_address_s[2]~0_combout\,
	datad => \mem_address_s[1]~3_combout\,
	combout => \U_MEMORIA|U_RAM|mem~438_combout\);

-- Location: LCCOMB_X19_Y21_N12
\U_MEMORIA|U_RAM|mem~439\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~439_combout\ = (\U_MEMORIA|U_RAM|mem~431_combout\ & \U_MEMORIA|U_RAM|mem~438_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~431_combout\,
	datab => \U_MEMORIA|U_RAM|mem~438_combout\,
	combout => \U_MEMORIA|U_RAM|mem~439_combout\);

-- Location: FF_X19_Y21_N15
\U_MEMORIA|U_RAM|mem~230\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~498_combout\,
	ena => \U_MEMORIA|U_RAM|mem~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~230_q\);

-- Location: LCCOMB_X19_Y20_N6
\U_MEMORIA|U_RAM|mem~497\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~497_combout\ = !\mem_data_in_s[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_data_in_s[0]~1_combout\,
	combout => \U_MEMORIA|U_RAM|mem~497_combout\);

-- Location: LCCOMB_X21_Y20_N20
\U_MEMORIA|U_RAM|mem~436\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~436_combout\ = (!\mem_address_s[0]~4_combout\ & (\mem_address_s[3]~1_combout\ & (!\mem_address_s[1]~3_combout\ & !\mem_address_s[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[0]~4_combout\,
	datab => \mem_address_s[3]~1_combout\,
	datac => \mem_address_s[1]~3_combout\,
	datad => \mem_address_s[2]~0_combout\,
	combout => \U_MEMORIA|U_RAM|mem~436_combout\);

-- Location: LCCOMB_X19_Y20_N28
\U_MEMORIA|U_RAM|mem~437\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~437_combout\ = (\U_MEMORIA|U_RAM|mem~431_combout\ & \U_MEMORIA|U_RAM|mem~436_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_MEMORIA|U_RAM|mem~431_combout\,
	datad => \U_MEMORIA|U_RAM|mem~436_combout\,
	combout => \U_MEMORIA|U_RAM|mem~437_combout\);

-- Location: FF_X19_Y20_N7
\U_MEMORIA|U_RAM|mem~206\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~497_combout\,
	ena => \U_MEMORIA|U_RAM|mem~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~206_q\);

-- Location: LCCOMB_X20_Y21_N12
\U_MEMORIA|U_RAM|mem~496\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~496_combout\ = !\mem_data_in_s[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_data_in_s[0]~1_combout\,
	combout => \U_MEMORIA|U_RAM|mem~496_combout\);

-- Location: LCCOMB_X23_Y19_N4
\U_MEMORIA|U_RAM|mem~432\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~432_combout\ = (!\mem_address_s[2]~0_combout\ & (\mem_address_s[3]~1_combout\ & (\mem_address_s[0]~4_combout\ & !\mem_address_s[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[2]~0_combout\,
	datab => \mem_address_s[3]~1_combout\,
	datac => \mem_address_s[0]~4_combout\,
	datad => \mem_address_s[1]~3_combout\,
	combout => \U_MEMORIA|U_RAM|mem~432_combout\);

-- Location: LCCOMB_X20_Y21_N4
\U_MEMORIA|U_RAM|mem~433\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~433_combout\ = (\U_MEMORIA|U_RAM|mem~431_combout\ & \U_MEMORIA|U_RAM|mem~432_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_MEMORIA|U_RAM|mem~431_combout\,
	datad => \U_MEMORIA|U_RAM|mem~432_combout\,
	combout => \U_MEMORIA|U_RAM|mem~433_combout\);

-- Location: FF_X20_Y21_N13
\U_MEMORIA|U_RAM|mem~214\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~496_combout\,
	ena => \U_MEMORIA|U_RAM|mem~433_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~214_q\);

-- Location: LCCOMB_X23_Y20_N26
\U_MEMORIA|U_RAM|mem~292\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~292_combout\ = (\mem_address_s[0]~4_combout\ & (((\mem_address_s[1]~3_combout\) # (!\U_MEMORIA|U_RAM|mem~214_q\)))) # (!\mem_address_s[0]~4_combout\ & (!\U_MEMORIA|U_RAM|mem~206_q\ & ((!\mem_address_s[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~206_q\,
	datab => \U_MEMORIA|U_RAM|mem~214_q\,
	datac => \mem_address_s[0]~4_combout\,
	datad => \mem_address_s[1]~3_combout\,
	combout => \U_MEMORIA|U_RAM|mem~292_combout\);

-- Location: LCCOMB_X19_Y20_N12
\U_MEMORIA|U_RAM|mem~495\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~495_combout\ = !\mem_data_in_s[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_data_in_s[0]~1_combout\,
	combout => \U_MEMORIA|U_RAM|mem~495_combout\);

-- Location: LCCOMB_X23_Y22_N24
\U_MEMORIA|U_RAM|mem~434\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~434_combout\ = (!\mem_address_s[2]~0_combout\ & (\mem_address_s[1]~3_combout\ & (!\mem_address_s[0]~4_combout\ & \mem_address_s[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[2]~0_combout\,
	datab => \mem_address_s[1]~3_combout\,
	datac => \mem_address_s[0]~4_combout\,
	datad => \mem_address_s[3]~1_combout\,
	combout => \U_MEMORIA|U_RAM|mem~434_combout\);

-- Location: LCCOMB_X19_Y20_N20
\U_MEMORIA|U_RAM|mem~435\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~435_combout\ = (\U_MEMORIA|U_RAM|mem~431_combout\ & \U_MEMORIA|U_RAM|mem~434_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_MEMORIA|U_RAM|mem~431_combout\,
	datad => \U_MEMORIA|U_RAM|mem~434_combout\,
	combout => \U_MEMORIA|U_RAM|mem~435_combout\);

-- Location: FF_X19_Y20_N13
\U_MEMORIA|U_RAM|mem~222\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~495_combout\,
	ena => \U_MEMORIA|U_RAM|mem~435_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~222_q\);

-- Location: LCCOMB_X23_Y20_N0
\U_MEMORIA|U_RAM|mem~293\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~293_combout\ = (\mem_address_s[1]~3_combout\ & ((\U_MEMORIA|U_RAM|mem~292_combout\ & (!\U_MEMORIA|U_RAM|mem~230_q\)) # (!\U_MEMORIA|U_RAM|mem~292_combout\ & ((!\U_MEMORIA|U_RAM|mem~222_q\))))) # (!\mem_address_s[1]~3_combout\ & 
-- (((\U_MEMORIA|U_RAM|mem~292_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[1]~3_combout\,
	datab => \U_MEMORIA|U_RAM|mem~230_q\,
	datac => \U_MEMORIA|U_RAM|mem~292_combout\,
	datad => \U_MEMORIA|U_RAM|mem~222_q\,
	combout => \U_MEMORIA|U_RAM|mem~293_combout\);

-- Location: LCCOMB_X23_Y20_N10
\U_MEMORIA|U_RAM|mem~296\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~296_combout\ = (\mem_address_s[2]~0_combout\ & (\mem_address_s[3]~1_combout\)) # (!\mem_address_s[2]~0_combout\ & ((\mem_address_s[3]~1_combout\ & ((\U_MEMORIA|U_RAM|mem~293_combout\))) # (!\mem_address_s[3]~1_combout\ & 
-- (\U_MEMORIA|U_RAM|mem~295_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[2]~0_combout\,
	datab => \mem_address_s[3]~1_combout\,
	datac => \U_MEMORIA|U_RAM|mem~295_combout\,
	datad => \U_MEMORIA|U_RAM|mem~293_combout\,
	combout => \U_MEMORIA|U_RAM|mem~296_combout\);

-- Location: LCCOMB_X23_Y20_N4
\U_MEMORIA|U_RAM|mem~299\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~299_combout\ = (\mem_address_s[2]~0_combout\ & ((\U_MEMORIA|U_RAM|mem~296_combout\ & ((\U_MEMORIA|U_RAM|mem~298_combout\))) # (!\U_MEMORIA|U_RAM|mem~296_combout\ & (\U_MEMORIA|U_RAM|mem~291_combout\)))) # 
-- (!\mem_address_s[2]~0_combout\ & (((\U_MEMORIA|U_RAM|mem~296_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[2]~0_combout\,
	datab => \U_MEMORIA|U_RAM|mem~291_combout\,
	datac => \U_MEMORIA|U_RAM|mem~298_combout\,
	datad => \U_MEMORIA|U_RAM|mem~296_combout\,
	combout => \U_MEMORIA|U_RAM|mem~299_combout\);

-- Location: LCCOMB_X21_Y23_N28
\U_MEMORIA|U_RAM|mem~503\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~503_combout\ = !\mem_data_in_s[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_data_in_s[0]~1_combout\,
	combout => \U_MEMORIA|U_RAM|mem~503_combout\);

-- Location: LCCOMB_X21_Y20_N22
\U_MEMORIA|U_RAM|mem~464\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~464_combout\ = (\U_ADMIN|we_i~q\ & (\U_ADMIN|estado.ESPERA~q\ & (!\mem_address_s[4]~2_combout\ & \U_MEMORIA|U_RAM|mem~430_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|we_i~q\,
	datab => \U_ADMIN|estado.ESPERA~q\,
	datac => \mem_address_s[4]~2_combout\,
	datad => \U_MEMORIA|U_RAM|mem~430_combout\,
	combout => \U_MEMORIA|U_RAM|mem~464_combout\);

-- Location: LCCOMB_X21_Y23_N22
\U_MEMORIA|U_RAM|mem~476\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~476_combout\ = (\U_MEMORIA|U_RAM|mem~460_combout\ & \U_MEMORIA|U_RAM|mem~464_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_MEMORIA|U_RAM|mem~460_combout\,
	datad => \U_MEMORIA|U_RAM|mem~464_combout\,
	combout => \U_MEMORIA|U_RAM|mem~476_combout\);

-- Location: FF_X21_Y23_N29
\U_MEMORIA|U_RAM|mem~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~503_combout\,
	ena => \U_MEMORIA|U_RAM|mem~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~110_q\);

-- Location: LCCOMB_X21_Y21_N4
\U_MEMORIA|U_RAM|mem~504\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~504_combout\ = !\mem_data_in_s[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_data_in_s[0]~1_combout\,
	combout => \U_MEMORIA|U_RAM|mem~504_combout\);

-- Location: LCCOMB_X21_Y21_N26
\U_MEMORIA|U_RAM|mem~472\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~472_combout\ = (\U_MEMORIA|U_RAM|mem~464_combout\ & \U_MEMORIA|U_RAM|mem~458_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_MEMORIA|U_RAM|mem~464_combout\,
	datad => \U_MEMORIA|U_RAM|mem~458_combout\,
	combout => \U_MEMORIA|U_RAM|mem~472_combout\);

-- Location: FF_X21_Y21_N5
\U_MEMORIA|U_RAM|mem~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~504_combout\,
	ena => \U_MEMORIA|U_RAM|mem~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~118_q\);

-- Location: LCCOMB_X22_Y22_N18
\U_MEMORIA|U_RAM|mem~54feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~54feeder_combout\ = \mem_data_in_s[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_data_in_s[0]~1_combout\,
	combout => \U_MEMORIA|U_RAM|mem~54feeder_combout\);

-- Location: LCCOMB_X22_Y21_N0
\U_MEMORIA|U_RAM|mem~469\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~469_combout\ = (\U_MEMORIA|U_RAM|mem~442_combout\ & \U_MEMORIA|U_RAM|mem~464_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_MEMORIA|U_RAM|mem~442_combout\,
	datad => \U_MEMORIA|U_RAM|mem~464_combout\,
	combout => \U_MEMORIA|U_RAM|mem~469_combout\);

-- Location: FF_X22_Y22_N19
\U_MEMORIA|U_RAM|mem~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~54feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~54_q\);

-- Location: LCCOMB_X22_Y22_N0
\U_MEMORIA|U_RAM|mem~473\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~473_combout\ = (\U_MEMORIA|U_RAM|mem~444_combout\ & \U_MEMORIA|U_RAM|mem~464_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_MEMORIA|U_RAM|mem~444_combout\,
	datad => \U_MEMORIA|U_RAM|mem~464_combout\,
	combout => \U_MEMORIA|U_RAM|mem~473_combout\);

-- Location: FF_X22_Y22_N5
\U_MEMORIA|U_RAM|mem~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[0]~1_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~46_q\);

-- Location: LCCOMB_X22_Y22_N4
\U_MEMORIA|U_RAM|mem~300\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~300_combout\ = (\mem_address_s[0]~4_combout\ & ((\U_MEMORIA|U_RAM|mem~54_q\) # ((\mem_address_s[3]~1_combout\)))) # (!\mem_address_s[0]~4_combout\ & (((\U_MEMORIA|U_RAM|mem~46_q\ & !\mem_address_s[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~54_q\,
	datab => \mem_address_s[0]~4_combout\,
	datac => \U_MEMORIA|U_RAM|mem~46_q\,
	datad => \mem_address_s[3]~1_combout\,
	combout => \U_MEMORIA|U_RAM|mem~300_combout\);

-- Location: LCCOMB_X23_Y20_N14
\U_MEMORIA|U_RAM|mem~301\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~301_combout\ = (\mem_address_s[3]~1_combout\ & ((\U_MEMORIA|U_RAM|mem~300_combout\ & ((!\U_MEMORIA|U_RAM|mem~118_q\))) # (!\U_MEMORIA|U_RAM|mem~300_combout\ & (!\U_MEMORIA|U_RAM|mem~110_q\)))) # (!\mem_address_s[3]~1_combout\ & 
-- (((\U_MEMORIA|U_RAM|mem~300_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~110_q\,
	datab => \mem_address_s[3]~1_combout\,
	datac => \U_MEMORIA|U_RAM|mem~118_q\,
	datad => \U_MEMORIA|U_RAM|mem~300_combout\,
	combout => \U_MEMORIA|U_RAM|mem~301_combout\);

-- Location: LCCOMB_X22_Y23_N10
\U_MEMORIA|U_RAM|mem~506\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~506_combout\ = !\mem_data_in_s[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_data_in_s[0]~1_combout\,
	combout => \U_MEMORIA|U_RAM|mem~506_combout\);

-- Location: LCCOMB_X22_Y23_N26
\U_MEMORIA|U_RAM|mem~474\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~474_combout\ = (\U_MEMORIA|U_RAM|mem~464_combout\ & \U_MEMORIA|U_RAM|mem~436_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_MEMORIA|U_RAM|mem~464_combout\,
	datad => \U_MEMORIA|U_RAM|mem~436_combout\,
	combout => \U_MEMORIA|U_RAM|mem~474_combout\);

-- Location: FF_X22_Y23_N11
\U_MEMORIA|U_RAM|mem~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~506_combout\,
	ena => \U_MEMORIA|U_RAM|mem~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~78_q\);

-- Location: LCCOMB_X23_Y19_N30
\U_MEMORIA|U_RAM|mem~470\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~470_combout\ = (\U_MEMORIA|U_RAM|mem~432_combout\ & \U_MEMORIA|U_RAM|mem~464_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_MEMORIA|U_RAM|mem~432_combout\,
	datad => \U_MEMORIA|U_RAM|mem~464_combout\,
	combout => \U_MEMORIA|U_RAM|mem~470_combout\);

-- Location: FF_X23_Y19_N1
\U_MEMORIA|U_RAM|mem~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[0]~1_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~86_q\);

-- Location: LCCOMB_X21_Y21_N18
\U_MEMORIA|U_RAM|mem~22feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~22feeder_combout\ = \mem_data_in_s[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_data_in_s[0]~1_combout\,
	combout => \U_MEMORIA|U_RAM|mem~22feeder_combout\);

-- Location: LCCOMB_X21_Y21_N14
\U_MEMORIA|U_RAM|mem~471\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~471_combout\ = (\U_MEMORIA|U_RAM|mem~464_combout\ & \U_MEMORIA|U_RAM|mem~448_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_MEMORIA|U_RAM|mem~464_combout\,
	datad => \U_MEMORIA|U_RAM|mem~448_combout\,
	combout => \U_MEMORIA|U_RAM|mem~471_combout\);

-- Location: FF_X21_Y21_N19
\U_MEMORIA|U_RAM|mem~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~22feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~22_q\);

-- Location: LCCOMB_X22_Y19_N28
\U_MEMORIA|U_RAM|mem~475\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~475_combout\ = (\U_MEMORIA|U_RAM|mem~452_combout\ & \U_MEMORIA|U_RAM|mem~464_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_MEMORIA|U_RAM|mem~452_combout\,
	datad => \U_MEMORIA|U_RAM|mem~464_combout\,
	combout => \U_MEMORIA|U_RAM|mem~475_combout\);

-- Location: FF_X23_Y19_N3
\U_MEMORIA|U_RAM|mem~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[0]~1_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~14_q\);

-- Location: LCCOMB_X23_Y19_N2
\U_MEMORIA|U_RAM|mem~304\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~304_combout\ = (\mem_address_s[0]~4_combout\ & ((\U_MEMORIA|U_RAM|mem~22_q\) # ((\mem_address_s[3]~1_combout\)))) # (!\mem_address_s[0]~4_combout\ & (((\U_MEMORIA|U_RAM|mem~14_q\ & !\mem_address_s[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[0]~4_combout\,
	datab => \U_MEMORIA|U_RAM|mem~22_q\,
	datac => \U_MEMORIA|U_RAM|mem~14_q\,
	datad => \mem_address_s[3]~1_combout\,
	combout => \U_MEMORIA|U_RAM|mem~304_combout\);

-- Location: LCCOMB_X23_Y19_N0
\U_MEMORIA|U_RAM|mem~305\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~305_combout\ = (\mem_address_s[3]~1_combout\ & ((\U_MEMORIA|U_RAM|mem~304_combout\ & ((\U_MEMORIA|U_RAM|mem~86_q\))) # (!\U_MEMORIA|U_RAM|mem~304_combout\ & (!\U_MEMORIA|U_RAM|mem~78_q\)))) # (!\mem_address_s[3]~1_combout\ & 
-- (((\U_MEMORIA|U_RAM|mem~304_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[3]~1_combout\,
	datab => \U_MEMORIA|U_RAM|mem~78_q\,
	datac => \U_MEMORIA|U_RAM|mem~86_q\,
	datad => \U_MEMORIA|U_RAM|mem~304_combout\,
	combout => \U_MEMORIA|U_RAM|mem~305_combout\);

-- Location: LCCOMB_X20_Y22_N12
\U_MEMORIA|U_RAM|mem~505\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~505_combout\ = !\mem_data_in_s[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_data_in_s[0]~1_combout\,
	combout => \U_MEMORIA|U_RAM|mem~505_combout\);

-- Location: LCCOMB_X20_Y22_N0
\U_MEMORIA|U_RAM|mem~466\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~466_combout\ = (\U_MEMORIA|U_RAM|mem~464_combout\ & \U_MEMORIA|U_RAM|mem~434_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_MEMORIA|U_RAM|mem~464_combout\,
	datad => \U_MEMORIA|U_RAM|mem~434_combout\,
	combout => \U_MEMORIA|U_RAM|mem~466_combout\);

-- Location: FF_X20_Y22_N13
\U_MEMORIA|U_RAM|mem~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~505_combout\,
	ena => \U_MEMORIA|U_RAM|mem~466_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~94_q\);

-- Location: LCCOMB_X23_Y23_N22
\U_MEMORIA|U_RAM|mem~478\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~478_combout\ = (\U_MEMORIA|U_RAM|mem~464_combout\ & \U_MEMORIA|U_RAM|mem~438_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_MEMORIA|U_RAM|mem~464_combout\,
	datad => \U_MEMORIA|U_RAM|mem~438_combout\,
	combout => \U_MEMORIA|U_RAM|mem~478_combout\);

-- Location: FF_X21_Y20_N7
\U_MEMORIA|U_RAM|mem~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[0]~1_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~478_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~102_q\);

-- Location: LCCOMB_X23_Y23_N24
\U_MEMORIA|U_RAM|mem~38feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~38feeder_combout\ = \mem_data_in_s[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_data_in_s[0]~1_combout\,
	combout => \U_MEMORIA|U_RAM|mem~38feeder_combout\);

-- Location: LCCOMB_X23_Y23_N2
\U_MEMORIA|U_RAM|mem~479\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~479_combout\ = (\U_MEMORIA|U_RAM|mem~454_combout\ & \U_MEMORIA|U_RAM|mem~464_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~454_combout\,
	datad => \U_MEMORIA|U_RAM|mem~464_combout\,
	combout => \U_MEMORIA|U_RAM|mem~479_combout\);

-- Location: FF_X23_Y23_N25
\U_MEMORIA|U_RAM|mem~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~38feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~479_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~38_q\);

-- Location: LCCOMB_X21_Y20_N24
\U_MEMORIA|U_RAM|mem~467\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~467_combout\ = (\U_MEMORIA|U_RAM|mem~450_combout\ & \U_MEMORIA|U_RAM|mem~464_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_MEMORIA|U_RAM|mem~450_combout\,
	datac => \U_MEMORIA|U_RAM|mem~464_combout\,
	combout => \U_MEMORIA|U_RAM|mem~467_combout\);

-- Location: FF_X21_Y20_N13
\U_MEMORIA|U_RAM|mem~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[0]~1_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~30_q\);

-- Location: LCCOMB_X21_Y20_N12
\U_MEMORIA|U_RAM|mem~302\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~302_combout\ = (\mem_address_s[3]~1_combout\ & (((\mem_address_s[0]~4_combout\)))) # (!\mem_address_s[3]~1_combout\ & ((\mem_address_s[0]~4_combout\ & (\U_MEMORIA|U_RAM|mem~38_q\)) # (!\mem_address_s[0]~4_combout\ & 
-- ((\U_MEMORIA|U_RAM|mem~30_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~38_q\,
	datab => \mem_address_s[3]~1_combout\,
	datac => \U_MEMORIA|U_RAM|mem~30_q\,
	datad => \mem_address_s[0]~4_combout\,
	combout => \U_MEMORIA|U_RAM|mem~302_combout\);

-- Location: LCCOMB_X21_Y20_N6
\U_MEMORIA|U_RAM|mem~303\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~303_combout\ = (\mem_address_s[3]~1_combout\ & ((\U_MEMORIA|U_RAM|mem~302_combout\ & ((\U_MEMORIA|U_RAM|mem~102_q\))) # (!\U_MEMORIA|U_RAM|mem~302_combout\ & (!\U_MEMORIA|U_RAM|mem~94_q\)))) # (!\mem_address_s[3]~1_combout\ & 
-- (((\U_MEMORIA|U_RAM|mem~302_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~94_q\,
	datab => \mem_address_s[3]~1_combout\,
	datac => \U_MEMORIA|U_RAM|mem~102_q\,
	datad => \U_MEMORIA|U_RAM|mem~302_combout\,
	combout => \U_MEMORIA|U_RAM|mem~303_combout\);

-- Location: LCCOMB_X23_Y20_N8
\U_MEMORIA|U_RAM|mem~306\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~306_combout\ = (\mem_address_s[2]~0_combout\ & (((\mem_address_s[1]~3_combout\)))) # (!\mem_address_s[2]~0_combout\ & ((\mem_address_s[1]~3_combout\ & ((\U_MEMORIA|U_RAM|mem~303_combout\))) # (!\mem_address_s[1]~3_combout\ & 
-- (\U_MEMORIA|U_RAM|mem~305_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[2]~0_combout\,
	datab => \U_MEMORIA|U_RAM|mem~305_combout\,
	datac => \U_MEMORIA|U_RAM|mem~303_combout\,
	datad => \mem_address_s[1]~3_combout\,
	combout => \U_MEMORIA|U_RAM|mem~306_combout\);

-- Location: LCCOMB_X24_Y23_N12
\U_MEMORIA|U_RAM|mem~508\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~508_combout\ = !\mem_data_in_s[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_data_in_s[0]~1_combout\,
	combout => \U_MEMORIA|U_RAM|mem~508_combout\);

-- Location: LCCOMB_X24_Y23_N18
\U_MEMORIA|U_RAM|mem~480\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~480_combout\ = (\U_MEMORIA|U_RAM|mem~464_combout\ & \U_MEMORIA|U_RAM|mem~462_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_MEMORIA|U_RAM|mem~464_combout\,
	datad => \U_MEMORIA|U_RAM|mem~462_combout\,
	combout => \U_MEMORIA|U_RAM|mem~480_combout\);

-- Location: FF_X24_Y23_N13
\U_MEMORIA|U_RAM|mem~134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~508_combout\,
	ena => \U_MEMORIA|U_RAM|mem~480_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~134_q\);

-- Location: LCCOMB_X22_Y23_N16
\U_MEMORIA|U_RAM|mem~477\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~477_combout\ = (\U_MEMORIA|U_RAM|mem~446_combout\ & \U_MEMORIA|U_RAM|mem~464_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_MEMORIA|U_RAM|mem~446_combout\,
	datad => \U_MEMORIA|U_RAM|mem~464_combout\,
	combout => \U_MEMORIA|U_RAM|mem~477_combout\);

-- Location: FF_X20_Y23_N19
\U_MEMORIA|U_RAM|mem~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[0]~1_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~70_q\);

-- Location: LCCOMB_X21_Y22_N0
\U_MEMORIA|U_RAM|mem~507\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~507_combout\ = !\mem_data_in_s[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_data_in_s[0]~1_combout\,
	combout => \U_MEMORIA|U_RAM|mem~507_combout\);

-- Location: LCCOMB_X21_Y22_N14
\U_MEMORIA|U_RAM|mem~468\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~468_combout\ = (\U_MEMORIA|U_RAM|mem~464_combout\ & \U_MEMORIA|U_RAM|mem~456_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_MEMORIA|U_RAM|mem~464_combout\,
	datad => \U_MEMORIA|U_RAM|mem~456_combout\,
	combout => \U_MEMORIA|U_RAM|mem~468_combout\);

-- Location: FF_X21_Y22_N1
\U_MEMORIA|U_RAM|mem~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~507_combout\,
	ena => \U_MEMORIA|U_RAM|mem~468_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~126_q\);

-- Location: LCCOMB_X20_Y23_N24
\U_MEMORIA|U_RAM|mem~465\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~465_combout\ = (\U_MEMORIA|U_RAM|mem~440_combout\ & \U_MEMORIA|U_RAM|mem~464_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_MEMORIA|U_RAM|mem~440_combout\,
	datad => \U_MEMORIA|U_RAM|mem~464_combout\,
	combout => \U_MEMORIA|U_RAM|mem~465_combout\);

-- Location: FF_X20_Y23_N21
\U_MEMORIA|U_RAM|mem~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[0]~1_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~62_q\);

-- Location: LCCOMB_X20_Y23_N20
\U_MEMORIA|U_RAM|mem~307\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~307_combout\ = (\mem_address_s[0]~4_combout\ & (((\mem_address_s[3]~1_combout\)))) # (!\mem_address_s[0]~4_combout\ & ((\mem_address_s[3]~1_combout\ & (!\U_MEMORIA|U_RAM|mem~126_q\)) # (!\mem_address_s[3]~1_combout\ & 
-- ((\U_MEMORIA|U_RAM|mem~62_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[0]~4_combout\,
	datab => \U_MEMORIA|U_RAM|mem~126_q\,
	datac => \U_MEMORIA|U_RAM|mem~62_q\,
	datad => \mem_address_s[3]~1_combout\,
	combout => \U_MEMORIA|U_RAM|mem~307_combout\);

-- Location: LCCOMB_X20_Y23_N18
\U_MEMORIA|U_RAM|mem~308\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~308_combout\ = (\mem_address_s[0]~4_combout\ & ((\U_MEMORIA|U_RAM|mem~307_combout\ & (!\U_MEMORIA|U_RAM|mem~134_q\)) # (!\U_MEMORIA|U_RAM|mem~307_combout\ & ((\U_MEMORIA|U_RAM|mem~70_q\))))) # (!\mem_address_s[0]~4_combout\ & 
-- (((\U_MEMORIA|U_RAM|mem~307_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[0]~4_combout\,
	datab => \U_MEMORIA|U_RAM|mem~134_q\,
	datac => \U_MEMORIA|U_RAM|mem~70_q\,
	datad => \U_MEMORIA|U_RAM|mem~307_combout\,
	combout => \U_MEMORIA|U_RAM|mem~308_combout\);

-- Location: LCCOMB_X23_Y20_N18
\U_MEMORIA|U_RAM|mem~309\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~309_combout\ = (\mem_address_s[2]~0_combout\ & ((\U_MEMORIA|U_RAM|mem~306_combout\ & ((\U_MEMORIA|U_RAM|mem~308_combout\))) # (!\U_MEMORIA|U_RAM|mem~306_combout\ & (\U_MEMORIA|U_RAM|mem~301_combout\)))) # 
-- (!\mem_address_s[2]~0_combout\ & (((\U_MEMORIA|U_RAM|mem~306_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[2]~0_combout\,
	datab => \U_MEMORIA|U_RAM|mem~301_combout\,
	datac => \U_MEMORIA|U_RAM|mem~306_combout\,
	datad => \U_MEMORIA|U_RAM|mem~308_combout\,
	combout => \U_MEMORIA|U_RAM|mem~309_combout\);

-- Location: LCCOMB_X23_Y20_N24
\U_MEMORIA|data_out[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|data_out[0]~4_combout\ = (\U_MEMORIA|data_out[1]~1_combout\ & ((\mem_address_s[4]~2_combout\ & (\U_MEMORIA|U_RAM|mem~299_combout\)) # (!\mem_address_s[4]~2_combout\ & ((\U_MEMORIA|U_RAM|mem~309_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[4]~2_combout\,
	datab => \U_MEMORIA|data_out[1]~1_combout\,
	datac => \U_MEMORIA|U_RAM|mem~299_combout\,
	datad => \U_MEMORIA|U_RAM|mem~309_combout\,
	combout => \U_MEMORIA|data_out[0]~4_combout\);

-- Location: LCCOMB_X23_Y20_N6
\U_MEMORIA|data_out[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|data_out[0]~5_combout\ = (\U_MEMORIA|data_out[0]~4_combout\) # ((\U_MEMORIA|data_out[2]~0_combout\ & ((\mem_address_s[0]~4_combout\) # (!\mem_address_s[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[0]~4_combout\,
	datab => \U_MEMORIA|data_out[2]~0_combout\,
	datac => \mem_address_s[1]~3_combout\,
	datad => \U_MEMORIA|data_out[0]~4_combout\,
	combout => \U_MEMORIA|data_out[0]~5_combout\);

-- Location: LCCOMB_X23_Y20_N22
\U_MEMORIA|data_out[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|data_out[0]~6_combout\ = (\U_MEMORIA|data_out[0]~5_combout\ & ((\U_ADMIN|estado.ESPERA~q\) # (!\U_GESTOR|addr_rd\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|estado.ESPERA~q\,
	datac => \U_GESTOR|addr_rd\(5),
	datad => \U_MEMORIA|data_out[0]~5_combout\,
	combout => \U_MEMORIA|data_out[0]~6_combout\);

-- Location: LCCOMB_X23_Y20_N30
\U_GESTOR|horario_ram[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GESTOR|horario_ram[0]~2_combout\ = !\U_MEMORIA|data_out[0]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_MEMORIA|data_out[0]~6_combout\,
	combout => \U_GESTOR|horario_ram[0]~2_combout\);

-- Location: FF_X23_Y20_N31
\U_GESTOR|horario_ram[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_GESTOR|horario_ram[0]~2_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \U_GESTOR|horario_ram[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GESTOR|horario_ram\(0));

-- Location: LCCOMB_X20_Y17_N12
\U_HORARIO|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HORARIO|Add0~0_combout\ = \U_HORARIO|contador\(0) $ (VCC)
-- \U_HORARIO|Add0~1\ = CARRY(\U_HORARIO|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_HORARIO|contador\(0),
	datad => VCC,
	combout => \U_HORARIO|Add0~0_combout\,
	cout => \U_HORARIO|Add0~1\);

-- Location: LCCOMB_X20_Y17_N14
\U_HORARIO|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HORARIO|Add0~2_combout\ = (\U_HORARIO|contador\(1) & (!\U_HORARIO|Add0~1\)) # (!\U_HORARIO|contador\(1) & ((\U_HORARIO|Add0~1\) # (GND)))
-- \U_HORARIO|Add0~3\ = CARRY((!\U_HORARIO|Add0~1\) # (!\U_HORARIO|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_HORARIO|contador\(1),
	datad => VCC,
	cin => \U_HORARIO|Add0~1\,
	combout => \U_HORARIO|Add0~2_combout\,
	cout => \U_HORARIO|Add0~3\);

-- Location: LCCOMB_X11_Y20_N6
\U_TICK|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TICK|Add0~0_combout\ = \U_TICK|contador\(0) $ (VCC)
-- \U_TICK|Add0~1\ = CARRY(\U_TICK|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_TICK|contador\(0),
	datad => VCC,
	combout => \U_TICK|Add0~0_combout\,
	cout => \U_TICK|Add0~1\);

-- Location: FF_X11_Y20_N7
\U_TICK|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_TICK|Add0~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TICK|contador\(0));

-- Location: LCCOMB_X11_Y20_N8
\U_TICK|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TICK|Add0~2_combout\ = (\U_TICK|contador\(1) & (!\U_TICK|Add0~1\)) # (!\U_TICK|contador\(1) & ((\U_TICK|Add0~1\) # (GND)))
-- \U_TICK|Add0~3\ = CARRY((!\U_TICK|Add0~1\) # (!\U_TICK|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_TICK|contador\(1),
	datad => VCC,
	cin => \U_TICK|Add0~1\,
	combout => \U_TICK|Add0~2_combout\,
	cout => \U_TICK|Add0~3\);

-- Location: FF_X11_Y20_N9
\U_TICK|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_TICK|Add0~2_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TICK|contador\(1));

-- Location: LCCOMB_X11_Y20_N10
\U_TICK|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TICK|Add0~4_combout\ = (\U_TICK|contador\(2) & (\U_TICK|Add0~3\ $ (GND))) # (!\U_TICK|contador\(2) & (!\U_TICK|Add0~3\ & VCC))
-- \U_TICK|Add0~5\ = CARRY((\U_TICK|contador\(2) & !\U_TICK|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_TICK|contador\(2),
	datad => VCC,
	cin => \U_TICK|Add0~3\,
	combout => \U_TICK|Add0~4_combout\,
	cout => \U_TICK|Add0~5\);

-- Location: FF_X11_Y20_N11
\U_TICK|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_TICK|Add0~4_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TICK|contador\(2));

-- Location: LCCOMB_X11_Y20_N12
\U_TICK|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TICK|Add0~6_combout\ = (\U_TICK|contador\(3) & (!\U_TICK|Add0~5\)) # (!\U_TICK|contador\(3) & ((\U_TICK|Add0~5\) # (GND)))
-- \U_TICK|Add0~7\ = CARRY((!\U_TICK|Add0~5\) # (!\U_TICK|contador\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_TICK|contador\(3),
	datad => VCC,
	cin => \U_TICK|Add0~5\,
	combout => \U_TICK|Add0~6_combout\,
	cout => \U_TICK|Add0~7\);

-- Location: FF_X11_Y20_N13
\U_TICK|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_TICK|Add0~6_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TICK|contador\(3));

-- Location: LCCOMB_X11_Y20_N14
\U_TICK|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TICK|Add0~8_combout\ = (\U_TICK|contador\(4) & (\U_TICK|Add0~7\ $ (GND))) # (!\U_TICK|contador\(4) & (!\U_TICK|Add0~7\ & VCC))
-- \U_TICK|Add0~9\ = CARRY((\U_TICK|contador\(4) & !\U_TICK|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_TICK|contador\(4),
	datad => VCC,
	cin => \U_TICK|Add0~7\,
	combout => \U_TICK|Add0~8_combout\,
	cout => \U_TICK|Add0~9\);

-- Location: FF_X11_Y20_N15
\U_TICK|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_TICK|Add0~8_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TICK|contador\(4));

-- Location: LCCOMB_X11_Y20_N16
\U_TICK|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TICK|Add0~10_combout\ = (\U_TICK|contador\(5) & (!\U_TICK|Add0~9\)) # (!\U_TICK|contador\(5) & ((\U_TICK|Add0~9\) # (GND)))
-- \U_TICK|Add0~11\ = CARRY((!\U_TICK|Add0~9\) # (!\U_TICK|contador\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_TICK|contador\(5),
	datad => VCC,
	cin => \U_TICK|Add0~9\,
	combout => \U_TICK|Add0~10_combout\,
	cout => \U_TICK|Add0~11\);

-- Location: FF_X11_Y20_N17
\U_TICK|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_TICK|Add0~10_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TICK|contador\(5));

-- Location: LCCOMB_X11_Y20_N2
\U_TICK|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TICK|Equal0~6_combout\ = (\U_TICK|contador\(2) & (\U_TICK|contador\(5) & (\U_TICK|contador\(4) & \U_TICK|contador\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_TICK|contador\(2),
	datab => \U_TICK|contador\(5),
	datac => \U_TICK|contador\(4),
	datad => \U_TICK|contador\(3),
	combout => \U_TICK|Equal0~6_combout\);

-- Location: LCCOMB_X11_Y20_N4
\U_TICK|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TICK|Equal0~7_combout\ = (\U_TICK|contador\(1) & \U_TICK|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_TICK|contador\(1),
	datad => \U_TICK|contador\(0),
	combout => \U_TICK|Equal0~7_combout\);

-- Location: LCCOMB_X11_Y20_N18
\U_TICK|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TICK|Add0~12_combout\ = (\U_TICK|contador\(6) & (\U_TICK|Add0~11\ $ (GND))) # (!\U_TICK|contador\(6) & (!\U_TICK|Add0~11\ & VCC))
-- \U_TICK|Add0~13\ = CARRY((\U_TICK|contador\(6) & !\U_TICK|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_TICK|contador\(6),
	datad => VCC,
	cin => \U_TICK|Add0~11\,
	combout => \U_TICK|Add0~12_combout\,
	cout => \U_TICK|Add0~13\);

-- Location: FF_X11_Y20_N19
\U_TICK|contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_TICK|Add0~12_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TICK|contador\(6));

-- Location: LCCOMB_X11_Y20_N20
\U_TICK|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TICK|Add0~14_combout\ = (\U_TICK|contador\(7) & (!\U_TICK|Add0~13\)) # (!\U_TICK|contador\(7) & ((\U_TICK|Add0~13\) # (GND)))
-- \U_TICK|Add0~15\ = CARRY((!\U_TICK|Add0~13\) # (!\U_TICK|contador\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_TICK|contador\(7),
	datad => VCC,
	cin => \U_TICK|Add0~13\,
	combout => \U_TICK|Add0~14_combout\,
	cout => \U_TICK|Add0~15\);

-- Location: LCCOMB_X12_Y20_N4
\U_TICK|contador~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TICK|contador~11_combout\ = (!\U_TICK|Equal0~8_combout\ & \U_TICK|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_TICK|Equal0~8_combout\,
	datad => \U_TICK|Add0~14_combout\,
	combout => \U_TICK|contador~11_combout\);

-- Location: FF_X12_Y20_N5
\U_TICK|contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_TICK|contador~11_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TICK|contador\(7));

-- Location: LCCOMB_X11_Y20_N22
\U_TICK|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TICK|Add0~16_combout\ = (\U_TICK|contador\(8) & (\U_TICK|Add0~15\ $ (GND))) # (!\U_TICK|contador\(8) & (!\U_TICK|Add0~15\ & VCC))
-- \U_TICK|Add0~17\ = CARRY((\U_TICK|contador\(8) & !\U_TICK|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_TICK|contador\(8),
	datad => VCC,
	cin => \U_TICK|Add0~15\,
	combout => \U_TICK|Add0~16_combout\,
	cout => \U_TICK|Add0~17\);

-- Location: FF_X11_Y20_N23
\U_TICK|contador[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_TICK|Add0~16_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TICK|contador\(8));

-- Location: LCCOMB_X11_Y20_N24
\U_TICK|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TICK|Add0~18_combout\ = (\U_TICK|contador\(9) & (!\U_TICK|Add0~17\)) # (!\U_TICK|contador\(9) & ((\U_TICK|Add0~17\) # (GND)))
-- \U_TICK|Add0~19\ = CARRY((!\U_TICK|Add0~17\) # (!\U_TICK|contador\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_TICK|contador\(9),
	datad => VCC,
	cin => \U_TICK|Add0~17\,
	combout => \U_TICK|Add0~18_combout\,
	cout => \U_TICK|Add0~19\);

-- Location: FF_X11_Y20_N25
\U_TICK|contador[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_TICK|Add0~18_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TICK|contador\(9));

-- Location: LCCOMB_X11_Y20_N0
\U_TICK|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TICK|Equal0~5_combout\ = (!\U_TICK|contador\(7) & (!\U_TICK|contador\(9) & (!\U_TICK|contador\(8) & \U_TICK|contador\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_TICK|contador\(7),
	datab => \U_TICK|contador\(9),
	datac => \U_TICK|contador\(8),
	datad => \U_TICK|contador\(6),
	combout => \U_TICK|Equal0~5_combout\);

-- Location: LCCOMB_X11_Y20_N26
\U_TICK|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TICK|Add0~20_combout\ = (\U_TICK|contador\(10) & (\U_TICK|Add0~19\ $ (GND))) # (!\U_TICK|contador\(10) & (!\U_TICK|Add0~19\ & VCC))
-- \U_TICK|Add0~21\ = CARRY((\U_TICK|contador\(10) & !\U_TICK|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_TICK|contador\(10),
	datad => VCC,
	cin => \U_TICK|Add0~19\,
	combout => \U_TICK|Add0~20_combout\,
	cout => \U_TICK|Add0~21\);

-- Location: FF_X11_Y20_N27
\U_TICK|contador[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_TICK|Add0~20_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TICK|contador\(10));

-- Location: LCCOMB_X11_Y20_N28
\U_TICK|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TICK|Add0~22_combout\ = (\U_TICK|contador\(11) & (!\U_TICK|Add0~21\)) # (!\U_TICK|contador\(11) & ((\U_TICK|Add0~21\) # (GND)))
-- \U_TICK|Add0~23\ = CARRY((!\U_TICK|Add0~21\) # (!\U_TICK|contador\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_TICK|contador\(11),
	datad => VCC,
	cin => \U_TICK|Add0~21\,
	combout => \U_TICK|Add0~22_combout\,
	cout => \U_TICK|Add0~23\);

-- Location: FF_X11_Y20_N29
\U_TICK|contador[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_TICK|Add0~22_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TICK|contador\(11));

-- Location: LCCOMB_X11_Y20_N30
\U_TICK|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TICK|Add0~24_combout\ = (\U_TICK|contador\(12) & (\U_TICK|Add0~23\ $ (GND))) # (!\U_TICK|contador\(12) & (!\U_TICK|Add0~23\ & VCC))
-- \U_TICK|Add0~25\ = CARRY((\U_TICK|contador\(12) & !\U_TICK|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_TICK|contador\(12),
	datad => VCC,
	cin => \U_TICK|Add0~23\,
	combout => \U_TICK|Add0~24_combout\,
	cout => \U_TICK|Add0~25\);

-- Location: LCCOMB_X12_Y19_N4
\U_TICK|contador~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TICK|contador~10_combout\ = (!\U_TICK|Equal0~8_combout\ & \U_TICK|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_TICK|Equal0~8_combout\,
	datac => \U_TICK|Add0~24_combout\,
	combout => \U_TICK|contador~10_combout\);

-- Location: FF_X12_Y19_N5
\U_TICK|contador[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_TICK|contador~10_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TICK|contador\(12));

-- Location: LCCOMB_X11_Y19_N0
\U_TICK|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TICK|Add0~26_combout\ = (\U_TICK|contador\(13) & (!\U_TICK|Add0~25\)) # (!\U_TICK|contador\(13) & ((\U_TICK|Add0~25\) # (GND)))
-- \U_TICK|Add0~27\ = CARRY((!\U_TICK|Add0~25\) # (!\U_TICK|contador\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_TICK|contador\(13),
	datad => VCC,
	cin => \U_TICK|Add0~25\,
	combout => \U_TICK|Add0~26_combout\,
	cout => \U_TICK|Add0~27\);

-- Location: LCCOMB_X12_Y19_N6
\U_TICK|contador~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TICK|contador~9_combout\ = (!\U_TICK|Equal0~8_combout\ & \U_TICK|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_TICK|Equal0~8_combout\,
	datad => \U_TICK|Add0~26_combout\,
	combout => \U_TICK|contador~9_combout\);

-- Location: FF_X12_Y19_N7
\U_TICK|contador[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_TICK|contador~9_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TICK|contador\(13));

-- Location: LCCOMB_X11_Y19_N2
\U_TICK|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TICK|Add0~28_combout\ = (\U_TICK|contador\(14) & (\U_TICK|Add0~27\ $ (GND))) # (!\U_TICK|contador\(14) & (!\U_TICK|Add0~27\ & VCC))
-- \U_TICK|Add0~29\ = CARRY((\U_TICK|contador\(14) & !\U_TICK|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_TICK|contador\(14),
	datad => VCC,
	cin => \U_TICK|Add0~27\,
	combout => \U_TICK|Add0~28_combout\,
	cout => \U_TICK|Add0~29\);

-- Location: LCCOMB_X12_Y19_N30
\U_TICK|contador~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TICK|contador~8_combout\ = (!\U_TICK|Equal0~8_combout\ & \U_TICK|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_TICK|Equal0~8_combout\,
	datad => \U_TICK|Add0~28_combout\,
	combout => \U_TICK|contador~8_combout\);

-- Location: FF_X12_Y19_N31
\U_TICK|contador[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_TICK|contador~8_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TICK|contador\(14));

-- Location: LCCOMB_X11_Y19_N4
\U_TICK|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TICK|Add0~30_combout\ = (\U_TICK|contador\(15) & (!\U_TICK|Add0~29\)) # (!\U_TICK|contador\(15) & ((\U_TICK|Add0~29\) # (GND)))
-- \U_TICK|Add0~31\ = CARRY((!\U_TICK|Add0~29\) # (!\U_TICK|contador\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_TICK|contador\(15),
	datad => VCC,
	cin => \U_TICK|Add0~29\,
	combout => \U_TICK|Add0~30_combout\,
	cout => \U_TICK|Add0~31\);

-- Location: LCCOMB_X12_Y19_N24
\U_TICK|contador~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TICK|contador~7_combout\ = (!\U_TICK|Equal0~8_combout\ & \U_TICK|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_TICK|Equal0~8_combout\,
	datac => \U_TICK|Add0~30_combout\,
	combout => \U_TICK|contador~7_combout\);

-- Location: FF_X12_Y19_N25
\U_TICK|contador[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_TICK|contador~7_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TICK|contador\(15));

-- Location: LCCOMB_X11_Y19_N6
\U_TICK|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TICK|Add0~32_combout\ = (\U_TICK|contador\(16) & (\U_TICK|Add0~31\ $ (GND))) # (!\U_TICK|contador\(16) & (!\U_TICK|Add0~31\ & VCC))
-- \U_TICK|Add0~33\ = CARRY((\U_TICK|contador\(16) & !\U_TICK|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_TICK|contador\(16),
	datad => VCC,
	cin => \U_TICK|Add0~31\,
	combout => \U_TICK|Add0~32_combout\,
	cout => \U_TICK|Add0~33\);

-- Location: FF_X11_Y19_N7
\U_TICK|contador[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_TICK|Add0~32_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TICK|contador\(16));

-- Location: LCCOMB_X11_Y19_N8
\U_TICK|Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TICK|Add0~34_combout\ = (\U_TICK|contador\(17) & (!\U_TICK|Add0~33\)) # (!\U_TICK|contador\(17) & ((\U_TICK|Add0~33\) # (GND)))
-- \U_TICK|Add0~35\ = CARRY((!\U_TICK|Add0~33\) # (!\U_TICK|contador\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_TICK|contador\(17),
	datad => VCC,
	cin => \U_TICK|Add0~33\,
	combout => \U_TICK|Add0~34_combout\,
	cout => \U_TICK|Add0~35\);

-- Location: LCCOMB_X12_Y19_N2
\U_TICK|contador~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TICK|contador~6_combout\ = (!\U_TICK|Equal0~8_combout\ & \U_TICK|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_TICK|Equal0~8_combout\,
	datad => \U_TICK|Add0~34_combout\,
	combout => \U_TICK|contador~6_combout\);

-- Location: FF_X12_Y19_N3
\U_TICK|contador[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_TICK|contador~6_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TICK|contador\(17));

-- Location: LCCOMB_X12_Y19_N12
\U_TICK|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TICK|Equal0~2_combout\ = (\U_TICK|contador\(14) & (\U_TICK|contador\(17) & (!\U_TICK|contador\(16) & \U_TICK|contador\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_TICK|contador\(14),
	datab => \U_TICK|contador\(17),
	datac => \U_TICK|contador\(16),
	datad => \U_TICK|contador\(15),
	combout => \U_TICK|Equal0~2_combout\);

-- Location: LCCOMB_X11_Y19_N10
\U_TICK|Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TICK|Add0~36_combout\ = (\U_TICK|contador\(18) & (\U_TICK|Add0~35\ $ (GND))) # (!\U_TICK|contador\(18) & (!\U_TICK|Add0~35\ & VCC))
-- \U_TICK|Add0~37\ = CARRY((\U_TICK|contador\(18) & !\U_TICK|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_TICK|contador\(18),
	datad => VCC,
	cin => \U_TICK|Add0~35\,
	combout => \U_TICK|Add0~36_combout\,
	cout => \U_TICK|Add0~37\);

-- Location: FF_X11_Y19_N11
\U_TICK|contador[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_TICK|Add0~36_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TICK|contador\(18));

-- Location: LCCOMB_X11_Y19_N12
\U_TICK|Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TICK|Add0~38_combout\ = (\U_TICK|contador\(19) & (!\U_TICK|Add0~37\)) # (!\U_TICK|contador\(19) & ((\U_TICK|Add0~37\) # (GND)))
-- \U_TICK|Add0~39\ = CARRY((!\U_TICK|Add0~37\) # (!\U_TICK|contador\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_TICK|contador\(19),
	datad => VCC,
	cin => \U_TICK|Add0~37\,
	combout => \U_TICK|Add0~38_combout\,
	cout => \U_TICK|Add0~39\);

-- Location: LCCOMB_X12_Y19_N18
\U_TICK|contador~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TICK|contador~5_combout\ = (!\U_TICK|Equal0~8_combout\ & \U_TICK|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_TICK|Equal0~8_combout\,
	datad => \U_TICK|Add0~38_combout\,
	combout => \U_TICK|contador~5_combout\);

-- Location: FF_X12_Y19_N19
\U_TICK|contador[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_TICK|contador~5_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TICK|contador\(19));

-- Location: LCCOMB_X11_Y19_N14
\U_TICK|Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TICK|Add0~40_combout\ = (\U_TICK|contador\(20) & (\U_TICK|Add0~39\ $ (GND))) # (!\U_TICK|contador\(20) & (!\U_TICK|Add0~39\ & VCC))
-- \U_TICK|Add0~41\ = CARRY((\U_TICK|contador\(20) & !\U_TICK|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_TICK|contador\(20),
	datad => VCC,
	cin => \U_TICK|Add0~39\,
	combout => \U_TICK|Add0~40_combout\,
	cout => \U_TICK|Add0~41\);

-- Location: LCCOMB_X12_Y19_N16
\U_TICK|contador~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TICK|contador~4_combout\ = (!\U_TICK|Equal0~8_combout\ & \U_TICK|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_TICK|Equal0~8_combout\,
	datad => \U_TICK|Add0~40_combout\,
	combout => \U_TICK|contador~4_combout\);

-- Location: FF_X12_Y19_N17
\U_TICK|contador[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_TICK|contador~4_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TICK|contador\(20));

-- Location: LCCOMB_X11_Y19_N16
\U_TICK|Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TICK|Add0~42_combout\ = (\U_TICK|contador\(21) & (!\U_TICK|Add0~41\)) # (!\U_TICK|contador\(21) & ((\U_TICK|Add0~41\) # (GND)))
-- \U_TICK|Add0~43\ = CARRY((!\U_TICK|Add0~41\) # (!\U_TICK|contador\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_TICK|contador\(21),
	datad => VCC,
	cin => \U_TICK|Add0~41\,
	combout => \U_TICK|Add0~42_combout\,
	cout => \U_TICK|Add0~43\);

-- Location: LCCOMB_X11_Y19_N26
\U_TICK|contador~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TICK|contador~3_combout\ = (\U_TICK|Add0~42_combout\ & !\U_TICK|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_TICK|Add0~42_combout\,
	datac => \U_TICK|Equal0~8_combout\,
	combout => \U_TICK|contador~3_combout\);

-- Location: FF_X11_Y19_N27
\U_TICK|contador[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_TICK|contador~3_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TICK|contador\(21));

-- Location: LCCOMB_X12_Y19_N28
\U_TICK|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TICK|Equal0~1_combout\ = (!\U_TICK|contador\(18) & (\U_TICK|contador\(19) & (\U_TICK|contador\(21) & \U_TICK|contador\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_TICK|contador\(18),
	datab => \U_TICK|contador\(19),
	datac => \U_TICK|contador\(21),
	datad => \U_TICK|contador\(20),
	combout => \U_TICK|Equal0~1_combout\);

-- Location: LCCOMB_X11_Y19_N18
\U_TICK|Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TICK|Add0~44_combout\ = (\U_TICK|contador\(22) & (\U_TICK|Add0~43\ $ (GND))) # (!\U_TICK|contador\(22) & (!\U_TICK|Add0~43\ & VCC))
-- \U_TICK|Add0~45\ = CARRY((\U_TICK|contador\(22) & !\U_TICK|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_TICK|contador\(22),
	datad => VCC,
	cin => \U_TICK|Add0~43\,
	combout => \U_TICK|Add0~44_combout\,
	cout => \U_TICK|Add0~45\);

-- Location: LCCOMB_X12_Y19_N20
\U_TICK|contador~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TICK|contador~2_combout\ = (!\U_TICK|Equal0~8_combout\ & \U_TICK|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_TICK|Equal0~8_combout\,
	datad => \U_TICK|Add0~44_combout\,
	combout => \U_TICK|contador~2_combout\);

-- Location: FF_X12_Y19_N21
\U_TICK|contador[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_TICK|contador~2_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TICK|contador\(22));

-- Location: LCCOMB_X11_Y19_N20
\U_TICK|Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TICK|Add0~46_combout\ = (\U_TICK|contador\(23) & (!\U_TICK|Add0~45\)) # (!\U_TICK|contador\(23) & ((\U_TICK|Add0~45\) # (GND)))
-- \U_TICK|Add0~47\ = CARRY((!\U_TICK|Add0~45\) # (!\U_TICK|contador\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_TICK|contador\(23),
	datad => VCC,
	cin => \U_TICK|Add0~45\,
	combout => \U_TICK|Add0~46_combout\,
	cout => \U_TICK|Add0~47\);

-- Location: LCCOMB_X11_Y19_N28
\U_TICK|contador~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TICK|contador~1_combout\ = (\U_TICK|Add0~46_combout\ & !\U_TICK|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_TICK|Add0~46_combout\,
	datac => \U_TICK|Equal0~8_combout\,
	combout => \U_TICK|contador~1_combout\);

-- Location: FF_X11_Y19_N29
\U_TICK|contador[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_TICK|contador~1_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TICK|contador\(23));

-- Location: LCCOMB_X11_Y19_N22
\U_TICK|Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TICK|Add0~48_combout\ = (\U_TICK|contador\(24) & (\U_TICK|Add0~47\ $ (GND))) # (!\U_TICK|contador\(24) & (!\U_TICK|Add0~47\ & VCC))
-- \U_TICK|Add0~49\ = CARRY((\U_TICK|contador\(24) & !\U_TICK|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_TICK|contador\(24),
	datad => VCC,
	cin => \U_TICK|Add0~47\,
	combout => \U_TICK|Add0~48_combout\,
	cout => \U_TICK|Add0~49\);

-- Location: FF_X11_Y19_N23
\U_TICK|contador[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_TICK|Add0~48_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TICK|contador\(24));

-- Location: LCCOMB_X11_Y19_N24
\U_TICK|Add0~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TICK|Add0~50_combout\ = \U_TICK|contador\(25) $ (\U_TICK|Add0~49\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_TICK|contador\(25),
	cin => \U_TICK|Add0~49\,
	combout => \U_TICK|Add0~50_combout\);

-- Location: LCCOMB_X11_Y19_N30
\U_TICK|contador~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TICK|contador~0_combout\ = (\U_TICK|Add0~50_combout\ & !\U_TICK|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_TICK|Add0~50_combout\,
	datac => \U_TICK|Equal0~8_combout\,
	combout => \U_TICK|contador~0_combout\);

-- Location: FF_X11_Y19_N31
\U_TICK|contador[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_TICK|contador~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TICK|contador\(25));

-- Location: LCCOMB_X12_Y19_N22
\U_TICK|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TICK|Equal0~0_combout\ = (\U_TICK|contador\(22) & (\U_TICK|contador\(25) & (\U_TICK|contador\(23) & !\U_TICK|contador\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_TICK|contador\(22),
	datab => \U_TICK|contador\(25),
	datac => \U_TICK|contador\(23),
	datad => \U_TICK|contador\(24),
	combout => \U_TICK|Equal0~0_combout\);

-- Location: LCCOMB_X12_Y19_N10
\U_TICK|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TICK|Equal0~3_combout\ = (!\U_TICK|contador\(11) & (\U_TICK|contador\(12) & (!\U_TICK|contador\(10) & \U_TICK|contador\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_TICK|contador\(11),
	datab => \U_TICK|contador\(12),
	datac => \U_TICK|contador\(10),
	datad => \U_TICK|contador\(13),
	combout => \U_TICK|Equal0~3_combout\);

-- Location: LCCOMB_X12_Y19_N0
\U_TICK|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TICK|Equal0~4_combout\ = (\U_TICK|Equal0~2_combout\ & (\U_TICK|Equal0~1_combout\ & (\U_TICK|Equal0~0_combout\ & \U_TICK|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_TICK|Equal0~2_combout\,
	datab => \U_TICK|Equal0~1_combout\,
	datac => \U_TICK|Equal0~0_combout\,
	datad => \U_TICK|Equal0~3_combout\,
	combout => \U_TICK|Equal0~4_combout\);

-- Location: LCCOMB_X12_Y20_N30
\U_TICK|Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TICK|Equal0~8_combout\ = (\U_TICK|Equal0~6_combout\ & (\U_TICK|Equal0~7_combout\ & (\U_TICK|Equal0~5_combout\ & \U_TICK|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_TICK|Equal0~6_combout\,
	datab => \U_TICK|Equal0~7_combout\,
	datac => \U_TICK|Equal0~5_combout\,
	datad => \U_TICK|Equal0~4_combout\,
	combout => \U_TICK|Equal0~8_combout\);

-- Location: LCCOMB_X19_Y17_N16
\U_TICK|tick_1s~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TICK|tick_1s~feeder_combout\ = \U_TICK|Equal0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_TICK|Equal0~8_combout\,
	combout => \U_TICK|tick_1s~feeder_combout\);

-- Location: FF_X19_Y17_N17
\U_TICK|tick_1s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_TICK|tick_1s~feeder_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TICK|tick_1s~q\);

-- Location: FF_X20_Y17_N15
\U_HORARIO|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_HORARIO|Add0~2_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \U_TICK|tick_1s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_HORARIO|contador\(1));

-- Location: LCCOMB_X20_Y17_N16
\U_HORARIO|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HORARIO|Add0~4_combout\ = (\U_HORARIO|contador\(2) & (\U_HORARIO|Add0~3\ $ (GND))) # (!\U_HORARIO|contador\(2) & (!\U_HORARIO|Add0~3\ & VCC))
-- \U_HORARIO|Add0~5\ = CARRY((\U_HORARIO|contador\(2) & !\U_HORARIO|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_HORARIO|contador\(2),
	datad => VCC,
	cin => \U_HORARIO|Add0~3\,
	combout => \U_HORARIO|Add0~4_combout\,
	cout => \U_HORARIO|Add0~5\);

-- Location: LCCOMB_X20_Y16_N26
\U_HORARIO|contador~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HORARIO|contador~1_combout\ = (\U_HORARIO|Add0~4_combout\ & (((!\U_HORARIO|Equal0~0_combout\) # (!\U_HORARIO|Equal0~1_combout\)) # (!\U_HORARIO|contador\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_HORARIO|contador\(7),
	datab => \U_HORARIO|Equal0~1_combout\,
	datac => \U_HORARIO|Equal0~0_combout\,
	datad => \U_HORARIO|Add0~4_combout\,
	combout => \U_HORARIO|contador~1_combout\);

-- Location: FF_X20_Y16_N27
\U_HORARIO|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_HORARIO|contador~1_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \U_TICK|tick_1s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_HORARIO|contador\(2));

-- Location: LCCOMB_X20_Y17_N18
\U_HORARIO|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HORARIO|Add0~6_combout\ = (\U_HORARIO|contador\(3) & (!\U_HORARIO|Add0~5\)) # (!\U_HORARIO|contador\(3) & ((\U_HORARIO|Add0~5\) # (GND)))
-- \U_HORARIO|Add0~7\ = CARRY((!\U_HORARIO|Add0~5\) # (!\U_HORARIO|contador\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_HORARIO|contador\(3),
	datad => VCC,
	cin => \U_HORARIO|Add0~5\,
	combout => \U_HORARIO|Add0~6_combout\,
	cout => \U_HORARIO|Add0~7\);

-- Location: FF_X20_Y17_N19
\U_HORARIO|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_HORARIO|Add0~6_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \U_TICK|tick_1s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_HORARIO|contador\(3));

-- Location: LCCOMB_X20_Y17_N20
\U_HORARIO|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HORARIO|Add0~8_combout\ = (\U_HORARIO|contador\(4) & (\U_HORARIO|Add0~7\ $ (GND))) # (!\U_HORARIO|contador\(4) & (!\U_HORARIO|Add0~7\ & VCC))
-- \U_HORARIO|Add0~9\ = CARRY((\U_HORARIO|contador\(4) & !\U_HORARIO|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_HORARIO|contador\(4),
	datad => VCC,
	cin => \U_HORARIO|Add0~7\,
	combout => \U_HORARIO|Add0~8_combout\,
	cout => \U_HORARIO|Add0~9\);

-- Location: LCCOMB_X20_Y16_N30
\U_HORARIO|contador~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HORARIO|contador~3_combout\ = (\U_HORARIO|Add0~8_combout\ & (((!\U_HORARIO|Equal0~0_combout\) # (!\U_HORARIO|Equal0~1_combout\)) # (!\U_HORARIO|contador\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_HORARIO|contador\(7),
	datab => \U_HORARIO|Equal0~1_combout\,
	datac => \U_HORARIO|Equal0~0_combout\,
	datad => \U_HORARIO|Add0~8_combout\,
	combout => \U_HORARIO|contador~3_combout\);

-- Location: FF_X20_Y16_N31
\U_HORARIO|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_HORARIO|contador~3_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \U_TICK|tick_1s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_HORARIO|contador\(4));

-- Location: LCCOMB_X20_Y16_N4
\U_HORARIO|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HORARIO|Equal0~0_combout\ = (\U_HORARIO|contador\(2) & (\U_HORARIO|contador\(4) & !\U_HORARIO|contador\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_HORARIO|contador\(2),
	datac => \U_HORARIO|contador\(4),
	datad => \U_HORARIO|contador\(6),
	combout => \U_HORARIO|Equal0~0_combout\);

-- Location: LCCOMB_X20_Y17_N10
\U_HORARIO|contador~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HORARIO|contador~4_combout\ = (\U_HORARIO|Add0~0_combout\ & (((!\U_HORARIO|contador\(7)) # (!\U_HORARIO|Equal0~1_combout\)) # (!\U_HORARIO|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_HORARIO|Add0~0_combout\,
	datab => \U_HORARIO|Equal0~0_combout\,
	datac => \U_HORARIO|Equal0~1_combout\,
	datad => \U_HORARIO|contador\(7),
	combout => \U_HORARIO|contador~4_combout\);

-- Location: FF_X20_Y17_N11
\U_HORARIO|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_HORARIO|contador~4_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \U_TICK|tick_1s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_HORARIO|contador\(0));

-- Location: LCCOMB_X20_Y17_N4
\U_HORARIO|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HORARIO|Equal0~1_combout\ = (!\U_HORARIO|contador\(0) & (!\U_HORARIO|contador\(3) & (!\U_HORARIO|contador\(1) & \U_HORARIO|contador\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_HORARIO|contador\(0),
	datab => \U_HORARIO|contador\(3),
	datac => \U_HORARIO|contador\(1),
	datad => \U_HORARIO|contador\(5),
	combout => \U_HORARIO|Equal0~1_combout\);

-- Location: LCCOMB_X20_Y17_N22
\U_HORARIO|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HORARIO|Add0~10_combout\ = (\U_HORARIO|contador\(5) & (!\U_HORARIO|Add0~9\)) # (!\U_HORARIO|contador\(5) & ((\U_HORARIO|Add0~9\) # (GND)))
-- \U_HORARIO|Add0~11\ = CARRY((!\U_HORARIO|Add0~9\) # (!\U_HORARIO|contador\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_HORARIO|contador\(5),
	datad => VCC,
	cin => \U_HORARIO|Add0~9\,
	combout => \U_HORARIO|Add0~10_combout\,
	cout => \U_HORARIO|Add0~11\);

-- Location: LCCOMB_X20_Y16_N8
\U_HORARIO|contador~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HORARIO|contador~2_combout\ = (\U_HORARIO|Add0~10_combout\ & (((!\U_HORARIO|Equal0~0_combout\) # (!\U_HORARIO|Equal0~1_combout\)) # (!\U_HORARIO|contador\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_HORARIO|contador\(7),
	datab => \U_HORARIO|Equal0~1_combout\,
	datac => \U_HORARIO|Equal0~0_combout\,
	datad => \U_HORARIO|Add0~10_combout\,
	combout => \U_HORARIO|contador~2_combout\);

-- Location: FF_X20_Y16_N9
\U_HORARIO|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_HORARIO|contador~2_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \U_TICK|tick_1s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_HORARIO|contador\(5));

-- Location: LCCOMB_X20_Y17_N24
\U_HORARIO|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HORARIO|Add0~12_combout\ = (\U_HORARIO|contador\(6) & (\U_HORARIO|Add0~11\ $ (GND))) # (!\U_HORARIO|contador\(6) & (!\U_HORARIO|Add0~11\ & VCC))
-- \U_HORARIO|Add0~13\ = CARRY((\U_HORARIO|contador\(6) & !\U_HORARIO|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_HORARIO|contador\(6),
	datad => VCC,
	cin => \U_HORARIO|Add0~11\,
	combout => \U_HORARIO|Add0~12_combout\,
	cout => \U_HORARIO|Add0~13\);

-- Location: FF_X20_Y16_N1
\U_HORARIO|contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U_HORARIO|Add0~12_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => VCC,
	ena => \U_TICK|tick_1s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_HORARIO|contador\(6));

-- Location: LCCOMB_X20_Y17_N26
\U_HORARIO|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HORARIO|Add0~14_combout\ = \U_HORARIO|Add0~13\ $ (\U_HORARIO|contador\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U_HORARIO|contador\(7),
	cin => \U_HORARIO|Add0~13\,
	combout => \U_HORARIO|Add0~14_combout\);

-- Location: LCCOMB_X20_Y16_N10
\U_HORARIO|contador~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HORARIO|contador~0_combout\ = (\U_HORARIO|Add0~14_combout\ & (((!\U_HORARIO|Equal0~1_combout\) # (!\U_HORARIO|contador\(7))) # (!\U_HORARIO|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_HORARIO|Add0~14_combout\,
	datab => \U_HORARIO|Equal0~0_combout\,
	datac => \U_HORARIO|contador\(7),
	datad => \U_HORARIO|Equal0~1_combout\,
	combout => \U_HORARIO|contador~0_combout\);

-- Location: FF_X20_Y16_N11
\U_HORARIO|contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_HORARIO|contador~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \U_TICK|tick_1s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_HORARIO|contador\(7));

-- Location: FF_X17_Y20_N23
\U_ADMIN|clave_buf[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U_TECLADO|key_latched\(1),
	sload => VCC,
	ena => \U_ADMIN|clave_buf[3][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADMIN|clave_buf[3][1]~q\);

-- Location: FF_X17_Y20_N17
\U_ADMIN|clave_buf[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U_TECLADO|key_latched\(1),
	sload => VCC,
	ena => \U_ADMIN|clave_buf[2][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADMIN|clave_buf[2][1]~q\);

-- Location: LCCOMB_X17_Y20_N16
\U_ADMIN|Selector38~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|Selector38~0_combout\ = (\U_ADMIN|write_step\(2) & ((\U_ADMIN|write_step\(0) & (\U_ADMIN|clave_buf[3][1]~q\)) # (!\U_ADMIN|write_step\(0) & ((\U_ADMIN|clave_buf[2][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|clave_buf[3][1]~q\,
	datab => \U_ADMIN|write_step\(2),
	datac => \U_ADMIN|clave_buf[2][1]~q\,
	datad => \U_ADMIN|write_step\(0),
	combout => \U_ADMIN|Selector38~0_combout\);

-- Location: FF_X17_Y21_N13
\U_ADMIN|horario_buf[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U_TECLADO|key_latched\(1),
	sload => VCC,
	ena => \U_ADMIN|horario_buf[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADMIN|horario_buf\(1));

-- Location: LCCOMB_X17_Y21_N12
\U_ADMIN|Selector38~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|Selector38~1_combout\ = (\U_ADMIN|write_step\(1) & (((\U_ADMIN|write_step\(0))))) # (!\U_ADMIN|write_step\(1) & ((\U_ADMIN|write_step\(0) & ((\U_ADMIN|horario_buf\(1)))) # (!\U_ADMIN|write_step\(0) & (\U_ADMIN|usuario_sel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|write_step\(1),
	datab => \U_ADMIN|usuario_sel\(1),
	datac => \U_ADMIN|horario_buf\(1),
	datad => \U_ADMIN|write_step\(0),
	combout => \U_ADMIN|Selector38~1_combout\);

-- Location: FF_X16_Y20_N29
\U_ADMIN|clave_buf[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U_TECLADO|key_latched\(1),
	sload => VCC,
	ena => \U_ADMIN|clave_buf[0][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADMIN|clave_buf[0][1]~q\);

-- Location: LCCOMB_X16_Y20_N18
\U_ADMIN|clave_buf[1][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|clave_buf[1][1]~feeder_combout\ = \U_TECLADO|key_latched\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_TECLADO|key_latched\(1),
	combout => \U_ADMIN|clave_buf[1][1]~feeder_combout\);

-- Location: FF_X16_Y20_N19
\U_ADMIN|clave_buf[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_ADMIN|clave_buf[1][1]~feeder_combout\,
	ena => \U_ADMIN|clave_buf[1][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADMIN|clave_buf[1][1]~q\);

-- Location: LCCOMB_X16_Y20_N28
\U_ADMIN|Selector38~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|Selector38~2_combout\ = (\U_ADMIN|Selector38~1_combout\ & (((\U_ADMIN|clave_buf[1][1]~q\)) # (!\U_ADMIN|write_step\(1)))) # (!\U_ADMIN|Selector38~1_combout\ & (\U_ADMIN|write_step\(1) & (\U_ADMIN|clave_buf[0][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|Selector38~1_combout\,
	datab => \U_ADMIN|write_step\(1),
	datac => \U_ADMIN|clave_buf[0][1]~q\,
	datad => \U_ADMIN|clave_buf[1][1]~q\,
	combout => \U_ADMIN|Selector38~2_combout\);

-- Location: LCCOMB_X20_Y20_N4
\U_ADMIN|Selector38~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|Selector38~3_combout\ = (\U_ADMIN|Selector38~0_combout\) # ((!\U_ADMIN|write_step\(2) & \U_ADMIN|Selector38~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|write_step\(2),
	datab => \U_ADMIN|Selector38~0_combout\,
	datad => \U_ADMIN|Selector38~2_combout\,
	combout => \U_ADMIN|Selector38~3_combout\);

-- Location: FF_X20_Y20_N5
\U_ADMIN|dato_i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_ADMIN|Selector38~3_combout\,
	asdata => VCC,
	clrn => \ALT_INV_RESET~input_o\,
	sload => \U_ADMIN|estado.OP_ELIMINAR_USR~q\,
	ena => \U_ADMIN|addr_i[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADMIN|dato_i\(1));

-- Location: LCCOMB_X21_Y20_N16
\mem_data_in_s[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_data_in_s[1]~0_combout\ = (\U_ADMIN|estado.ESPERA~q\ & \U_ADMIN|dato_i\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_ADMIN|estado.ESPERA~q\,
	datac => \U_ADMIN|dato_i\(1),
	combout => \mem_data_in_s[1]~0_combout\);

-- Location: LCCOMB_X26_Y20_N14
\U_MEMORIA|U_RAM|mem~255feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~255feeder_combout\ = \mem_data_in_s[1]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_data_in_s[1]~0_combout\,
	combout => \U_MEMORIA|U_RAM|mem~255feeder_combout\);

-- Location: FF_X26_Y20_N15
\U_MEMORIA|U_RAM|mem~255\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~255feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~255_q\);

-- Location: FF_X24_Y20_N3
\U_MEMORIA|U_RAM|mem~263\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[1]~0_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~263_q\);

-- Location: LCCOMB_X24_Y22_N18
\U_MEMORIA|U_RAM|mem~492\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~492_combout\ = !\mem_data_in_s[1]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_data_in_s[1]~0_combout\,
	combout => \U_MEMORIA|U_RAM|mem~492_combout\);

-- Location: FF_X24_Y22_N19
\U_MEMORIA|U_RAM|mem~239\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~492_combout\,
	ena => \U_MEMORIA|U_RAM|mem~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~239_q\);

-- Location: LCCOMB_X24_Y22_N8
\U_MEMORIA|U_RAM|mem~491\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~491_combout\ = !\mem_data_in_s[1]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_data_in_s[1]~0_combout\,
	combout => \U_MEMORIA|U_RAM|mem~491_combout\);

-- Location: FF_X24_Y22_N9
\U_MEMORIA|U_RAM|mem~247\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~491_combout\,
	ena => \U_MEMORIA|U_RAM|mem~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~247_q\);

-- Location: LCCOMB_X24_Y20_N12
\U_MEMORIA|U_RAM|mem~277\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~277_combout\ = (\mem_address_s[0]~4_combout\ & (((\mem_address_s[1]~3_combout\) # (!\U_MEMORIA|U_RAM|mem~247_q\)))) # (!\mem_address_s[0]~4_combout\ & (!\U_MEMORIA|U_RAM|mem~239_q\ & ((!\mem_address_s[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~239_q\,
	datab => \mem_address_s[0]~4_combout\,
	datac => \U_MEMORIA|U_RAM|mem~247_q\,
	datad => \mem_address_s[1]~3_combout\,
	combout => \U_MEMORIA|U_RAM|mem~277_combout\);

-- Location: LCCOMB_X24_Y20_N2
\U_MEMORIA|U_RAM|mem~278\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~278_combout\ = (\mem_address_s[1]~3_combout\ & ((\U_MEMORIA|U_RAM|mem~277_combout\ & ((\U_MEMORIA|U_RAM|mem~263_q\))) # (!\U_MEMORIA|U_RAM|mem~277_combout\ & (\U_MEMORIA|U_RAM|mem~255_q\)))) # (!\mem_address_s[1]~3_combout\ & 
-- (((\U_MEMORIA|U_RAM|mem~277_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[1]~3_combout\,
	datab => \U_MEMORIA|U_RAM|mem~255_q\,
	datac => \U_MEMORIA|U_RAM|mem~263_q\,
	datad => \U_MEMORIA|U_RAM|mem~277_combout\,
	combout => \U_MEMORIA|U_RAM|mem~278_combout\);

-- Location: LCCOMB_X19_Y21_N4
\U_MEMORIA|U_RAM|mem~484\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~484_combout\ = !\mem_data_in_s[1]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_data_in_s[1]~0_combout\,
	combout => \U_MEMORIA|U_RAM|mem~484_combout\);

-- Location: FF_X19_Y21_N5
\U_MEMORIA|U_RAM|mem~231\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~484_combout\,
	ena => \U_MEMORIA|U_RAM|mem~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~231_q\);

-- Location: LCCOMB_X20_Y21_N28
\U_MEMORIA|U_RAM|mem~481\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~481_combout\ = !\mem_data_in_s[1]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_data_in_s[1]~0_combout\,
	combout => \U_MEMORIA|U_RAM|mem~481_combout\);

-- Location: FF_X20_Y21_N29
\U_MEMORIA|U_RAM|mem~215\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~481_combout\,
	ena => \U_MEMORIA|U_RAM|mem~433_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~215_q\);

-- Location: LCCOMB_X19_Y20_N16
\U_MEMORIA|U_RAM|mem~482\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~482_combout\ = !\mem_data_in_s[1]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_data_in_s[1]~0_combout\,
	combout => \U_MEMORIA|U_RAM|mem~482_combout\);

-- Location: FF_X19_Y20_N17
\U_MEMORIA|U_RAM|mem~223\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~482_combout\,
	ena => \U_MEMORIA|U_RAM|mem~435_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~223_q\);

-- Location: LCCOMB_X19_Y20_N30
\U_MEMORIA|U_RAM|mem~483\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~483_combout\ = !\mem_data_in_s[1]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_data_in_s[1]~0_combout\,
	combout => \U_MEMORIA|U_RAM|mem~483_combout\);

-- Location: FF_X19_Y20_N31
\U_MEMORIA|U_RAM|mem~207\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~483_combout\,
	ena => \U_MEMORIA|U_RAM|mem~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~207_q\);

-- Location: LCCOMB_X19_Y20_N8
\U_MEMORIA|U_RAM|mem~270\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~270_combout\ = (\mem_address_s[0]~4_combout\ & (((\mem_address_s[1]~3_combout\)))) # (!\mem_address_s[0]~4_combout\ & ((\mem_address_s[1]~3_combout\ & (!\U_MEMORIA|U_RAM|mem~223_q\)) # (!\mem_address_s[1]~3_combout\ & 
-- ((!\U_MEMORIA|U_RAM|mem~207_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[0]~4_combout\,
	datab => \U_MEMORIA|U_RAM|mem~223_q\,
	datac => \U_MEMORIA|U_RAM|mem~207_q\,
	datad => \mem_address_s[1]~3_combout\,
	combout => \U_MEMORIA|U_RAM|mem~270_combout\);

-- Location: LCCOMB_X19_Y20_N2
\U_MEMORIA|U_RAM|mem~271\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~271_combout\ = (\mem_address_s[0]~4_combout\ & ((\U_MEMORIA|U_RAM|mem~270_combout\ & (!\U_MEMORIA|U_RAM|mem~231_q\)) # (!\U_MEMORIA|U_RAM|mem~270_combout\ & ((!\U_MEMORIA|U_RAM|mem~215_q\))))) # (!\mem_address_s[0]~4_combout\ & 
-- (((\U_MEMORIA|U_RAM|mem~270_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~231_q\,
	datab => \U_MEMORIA|U_RAM|mem~215_q\,
	datac => \mem_address_s[0]~4_combout\,
	datad => \U_MEMORIA|U_RAM|mem~270_combout\,
	combout => \U_MEMORIA|U_RAM|mem~271_combout\);

-- Location: LCCOMB_X20_Y21_N26
\U_MEMORIA|U_RAM|mem~485\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~485_combout\ = !\mem_data_in_s[1]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_data_in_s[1]~0_combout\,
	combout => \U_MEMORIA|U_RAM|mem~485_combout\);

-- Location: FF_X20_Y21_N27
\U_MEMORIA|U_RAM|mem~191\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~485_combout\,
	ena => \U_MEMORIA|U_RAM|mem~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~191_q\);

-- Location: LCCOMB_X23_Y21_N14
\U_MEMORIA|U_RAM|mem~488\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~488_combout\ = !\mem_data_in_s[1]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_data_in_s[1]~0_combout\,
	combout => \U_MEMORIA|U_RAM|mem~488_combout\);

-- Location: FF_X23_Y21_N15
\U_MEMORIA|U_RAM|mem~199\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~488_combout\,
	ena => \U_MEMORIA|U_RAM|mem~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~199_q\);

-- Location: LCCOMB_X23_Y21_N28
\U_MEMORIA|U_RAM|mem~487\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~487_combout\ = !\mem_data_in_s[1]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_data_in_s[1]~0_combout\,
	combout => \U_MEMORIA|U_RAM|mem~487_combout\);

-- Location: FF_X23_Y21_N29
\U_MEMORIA|U_RAM|mem~175\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~487_combout\,
	ena => \U_MEMORIA|U_RAM|mem~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~175_q\);

-- Location: LCCOMB_X22_Y21_N20
\U_MEMORIA|U_RAM|mem~486\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~486_combout\ = !\mem_data_in_s[1]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_data_in_s[1]~0_combout\,
	combout => \U_MEMORIA|U_RAM|mem~486_combout\);

-- Location: FF_X22_Y21_N21
\U_MEMORIA|U_RAM|mem~183\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~486_combout\,
	ena => \U_MEMORIA|U_RAM|mem~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~183_q\);

-- Location: LCCOMB_X24_Y20_N16
\U_MEMORIA|U_RAM|mem~272\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~272_combout\ = (\mem_address_s[0]~4_combout\ & (((\mem_address_s[1]~3_combout\) # (!\U_MEMORIA|U_RAM|mem~183_q\)))) # (!\mem_address_s[0]~4_combout\ & (!\U_MEMORIA|U_RAM|mem~175_q\ & ((!\mem_address_s[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~175_q\,
	datab => \mem_address_s[0]~4_combout\,
	datac => \U_MEMORIA|U_RAM|mem~183_q\,
	datad => \mem_address_s[1]~3_combout\,
	combout => \U_MEMORIA|U_RAM|mem~272_combout\);

-- Location: LCCOMB_X24_Y20_N22
\U_MEMORIA|U_RAM|mem~273\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~273_combout\ = (\mem_address_s[1]~3_combout\ & ((\U_MEMORIA|U_RAM|mem~272_combout\ & ((!\U_MEMORIA|U_RAM|mem~199_q\))) # (!\U_MEMORIA|U_RAM|mem~272_combout\ & (!\U_MEMORIA|U_RAM|mem~191_q\)))) # (!\mem_address_s[1]~3_combout\ & 
-- (((\U_MEMORIA|U_RAM|mem~272_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[1]~3_combout\,
	datab => \U_MEMORIA|U_RAM|mem~191_q\,
	datac => \U_MEMORIA|U_RAM|mem~199_q\,
	datad => \U_MEMORIA|U_RAM|mem~272_combout\,
	combout => \U_MEMORIA|U_RAM|mem~273_combout\);

-- Location: LCCOMB_X24_Y19_N0
\U_MEMORIA|U_RAM|mem~490\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~490_combout\ = !\mem_data_in_s[1]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_data_in_s[1]~0_combout\,
	combout => \U_MEMORIA|U_RAM|mem~490_combout\);

-- Location: FF_X24_Y19_N1
\U_MEMORIA|U_RAM|mem~167\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~490_combout\,
	ena => \U_MEMORIA|U_RAM|mem~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~167_q\);

-- Location: FF_X24_Y20_N25
\U_MEMORIA|U_RAM|mem~151\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[1]~0_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~151_q\);

-- Location: FF_X24_Y19_N9
\U_MEMORIA|U_RAM|mem~143\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[1]~0_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~143_q\);

-- Location: LCCOMB_X20_Y22_N16
\U_MEMORIA|U_RAM|mem~489\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~489_combout\ = !\mem_data_in_s[1]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_data_in_s[1]~0_combout\,
	combout => \U_MEMORIA|U_RAM|mem~489_combout\);

-- Location: FF_X20_Y22_N17
\U_MEMORIA|U_RAM|mem~159\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~489_combout\,
	ena => \U_MEMORIA|U_RAM|mem~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~159_q\);

-- Location: LCCOMB_X24_Y19_N2
\U_MEMORIA|U_RAM|mem~274\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~274_combout\ = (\mem_address_s[0]~4_combout\ & (((\mem_address_s[1]~3_combout\)))) # (!\mem_address_s[0]~4_combout\ & ((\mem_address_s[1]~3_combout\ & ((!\U_MEMORIA|U_RAM|mem~159_q\))) # (!\mem_address_s[1]~3_combout\ & 
-- (\U_MEMORIA|U_RAM|mem~143_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~143_q\,
	datab => \mem_address_s[0]~4_combout\,
	datac => \mem_address_s[1]~3_combout\,
	datad => \U_MEMORIA|U_RAM|mem~159_q\,
	combout => \U_MEMORIA|U_RAM|mem~274_combout\);

-- Location: LCCOMB_X24_Y20_N24
\U_MEMORIA|U_RAM|mem~275\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~275_combout\ = (\mem_address_s[0]~4_combout\ & ((\U_MEMORIA|U_RAM|mem~274_combout\ & (!\U_MEMORIA|U_RAM|mem~167_q\)) # (!\U_MEMORIA|U_RAM|mem~274_combout\ & ((\U_MEMORIA|U_RAM|mem~151_q\))))) # (!\mem_address_s[0]~4_combout\ & 
-- (((\U_MEMORIA|U_RAM|mem~274_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[0]~4_combout\,
	datab => \U_MEMORIA|U_RAM|mem~167_q\,
	datac => \U_MEMORIA|U_RAM|mem~151_q\,
	datad => \U_MEMORIA|U_RAM|mem~274_combout\,
	combout => \U_MEMORIA|U_RAM|mem~275_combout\);

-- Location: LCCOMB_X24_Y20_N6
\U_MEMORIA|U_RAM|mem~276\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~276_combout\ = (\mem_address_s[3]~1_combout\ & (\mem_address_s[2]~0_combout\)) # (!\mem_address_s[3]~1_combout\ & ((\mem_address_s[2]~0_combout\ & (\U_MEMORIA|U_RAM|mem~273_combout\)) # (!\mem_address_s[2]~0_combout\ & 
-- ((\U_MEMORIA|U_RAM|mem~275_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[3]~1_combout\,
	datab => \mem_address_s[2]~0_combout\,
	datac => \U_MEMORIA|U_RAM|mem~273_combout\,
	datad => \U_MEMORIA|U_RAM|mem~275_combout\,
	combout => \U_MEMORIA|U_RAM|mem~276_combout\);

-- Location: LCCOMB_X24_Y20_N4
\U_MEMORIA|U_RAM|mem~279\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~279_combout\ = (\mem_address_s[3]~1_combout\ & ((\U_MEMORIA|U_RAM|mem~276_combout\ & (\U_MEMORIA|U_RAM|mem~278_combout\)) # (!\U_MEMORIA|U_RAM|mem~276_combout\ & ((\U_MEMORIA|U_RAM|mem~271_combout\))))) # 
-- (!\mem_address_s[3]~1_combout\ & (((\U_MEMORIA|U_RAM|mem~276_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[3]~1_combout\,
	datab => \U_MEMORIA|U_RAM|mem~278_combout\,
	datac => \U_MEMORIA|U_RAM|mem~271_combout\,
	datad => \U_MEMORIA|U_RAM|mem~276_combout\,
	combout => \U_MEMORIA|U_RAM|mem~279_combout\);

-- Location: LCCOMB_X20_Y23_N12
\U_MEMORIA|U_RAM|mem~63feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~63feeder_combout\ = \mem_data_in_s[1]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_data_in_s[1]~0_combout\,
	combout => \U_MEMORIA|U_RAM|mem~63feeder_combout\);

-- Location: FF_X20_Y23_N13
\U_MEMORIA|U_RAM|mem~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~63feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~63_q\);

-- Location: FF_X21_Y22_N23
\U_MEMORIA|U_RAM|mem~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[1]~0_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~468_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~127_q\);

-- Location: LCCOMB_X20_Y22_N22
\U_MEMORIA|U_RAM|mem~493\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~493_combout\ = !\mem_data_in_s[1]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_data_in_s[1]~0_combout\,
	combout => \U_MEMORIA|U_RAM|mem~493_combout\);

-- Location: FF_X20_Y22_N23
\U_MEMORIA|U_RAM|mem~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~493_combout\,
	ena => \U_MEMORIA|U_RAM|mem~466_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~95_q\);

-- Location: FF_X21_Y22_N17
\U_MEMORIA|U_RAM|mem~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[1]~0_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~31_q\);

-- Location: LCCOMB_X21_Y22_N16
\U_MEMORIA|U_RAM|mem~280\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~280_combout\ = (\mem_address_s[2]~0_combout\ & (((\mem_address_s[3]~1_combout\)))) # (!\mem_address_s[2]~0_combout\ & ((\mem_address_s[3]~1_combout\ & (!\U_MEMORIA|U_RAM|mem~95_q\)) # (!\mem_address_s[3]~1_combout\ & 
-- ((\U_MEMORIA|U_RAM|mem~31_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[2]~0_combout\,
	datab => \U_MEMORIA|U_RAM|mem~95_q\,
	datac => \U_MEMORIA|U_RAM|mem~31_q\,
	datad => \mem_address_s[3]~1_combout\,
	combout => \U_MEMORIA|U_RAM|mem~280_combout\);

-- Location: LCCOMB_X21_Y22_N22
\U_MEMORIA|U_RAM|mem~281\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~281_combout\ = (\mem_address_s[2]~0_combout\ & ((\U_MEMORIA|U_RAM|mem~280_combout\ & ((\U_MEMORIA|U_RAM|mem~127_q\))) # (!\U_MEMORIA|U_RAM|mem~280_combout\ & (\U_MEMORIA|U_RAM|mem~63_q\)))) # (!\mem_address_s[2]~0_combout\ & 
-- (((\U_MEMORIA|U_RAM|mem~280_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[2]~0_combout\,
	datab => \U_MEMORIA|U_RAM|mem~63_q\,
	datac => \U_MEMORIA|U_RAM|mem~127_q\,
	datad => \U_MEMORIA|U_RAM|mem~280_combout\,
	combout => \U_MEMORIA|U_RAM|mem~281_combout\);

-- Location: FF_X24_Y23_N19
\U_MEMORIA|U_RAM|mem~135\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[1]~0_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~480_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~135_q\);

-- Location: FF_X24_Y23_N25
\U_MEMORIA|U_RAM|mem~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[1]~0_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~71_q\);

-- Location: LCCOMB_X23_Y23_N16
\U_MEMORIA|U_RAM|mem~103feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~103feeder_combout\ = \mem_data_in_s[1]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_data_in_s[1]~0_combout\,
	combout => \U_MEMORIA|U_RAM|mem~103feeder_combout\);

-- Location: FF_X23_Y23_N17
\U_MEMORIA|U_RAM|mem~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~103feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~478_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~103_q\);

-- Location: FF_X23_Y23_N11
\U_MEMORIA|U_RAM|mem~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[1]~0_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~479_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~39_q\);

-- Location: LCCOMB_X23_Y23_N10
\U_MEMORIA|U_RAM|mem~287\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~287_combout\ = (\mem_address_s[3]~1_combout\ & ((\U_MEMORIA|U_RAM|mem~103_q\) # ((\mem_address_s[2]~0_combout\)))) # (!\mem_address_s[3]~1_combout\ & (((\U_MEMORIA|U_RAM|mem~39_q\ & !\mem_address_s[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[3]~1_combout\,
	datab => \U_MEMORIA|U_RAM|mem~103_q\,
	datac => \U_MEMORIA|U_RAM|mem~39_q\,
	datad => \mem_address_s[2]~0_combout\,
	combout => \U_MEMORIA|U_RAM|mem~287_combout\);

-- Location: LCCOMB_X24_Y23_N24
\U_MEMORIA|U_RAM|mem~288\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~288_combout\ = (\mem_address_s[2]~0_combout\ & ((\U_MEMORIA|U_RAM|mem~287_combout\ & (\U_MEMORIA|U_RAM|mem~135_q\)) # (!\U_MEMORIA|U_RAM|mem~287_combout\ & ((\U_MEMORIA|U_RAM|mem~71_q\))))) # (!\mem_address_s[2]~0_combout\ & 
-- (((\U_MEMORIA|U_RAM|mem~287_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~135_q\,
	datab => \mem_address_s[2]~0_combout\,
	datac => \U_MEMORIA|U_RAM|mem~71_q\,
	datad => \U_MEMORIA|U_RAM|mem~287_combout\,
	combout => \U_MEMORIA|U_RAM|mem~288_combout\);

-- Location: LCCOMB_X22_Y21_N14
\U_MEMORIA|U_RAM|mem~55feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~55feeder_combout\ = \mem_data_in_s[1]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_data_in_s[1]~0_combout\,
	combout => \U_MEMORIA|U_RAM|mem~55feeder_combout\);

-- Location: FF_X22_Y21_N15
\U_MEMORIA|U_RAM|mem~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~55feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~55_q\);

-- Location: FF_X21_Y21_N31
\U_MEMORIA|U_RAM|mem~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[1]~0_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~119_q\);

-- Location: LCCOMB_X23_Y19_N8
\U_MEMORIA|U_RAM|mem~494\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~494_combout\ = !\mem_data_in_s[1]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_data_in_s[1]~0_combout\,
	combout => \U_MEMORIA|U_RAM|mem~494_combout\);

-- Location: FF_X23_Y19_N9
\U_MEMORIA|U_RAM|mem~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~494_combout\,
	ena => \U_MEMORIA|U_RAM|mem~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~87_q\);

-- Location: FF_X21_Y21_N25
\U_MEMORIA|U_RAM|mem~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[1]~0_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~23_q\);

-- Location: LCCOMB_X21_Y21_N24
\U_MEMORIA|U_RAM|mem~282\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~282_combout\ = (\mem_address_s[3]~1_combout\ & (((\mem_address_s[2]~0_combout\)) # (!\U_MEMORIA|U_RAM|mem~87_q\))) # (!\mem_address_s[3]~1_combout\ & (((\U_MEMORIA|U_RAM|mem~23_q\ & !\mem_address_s[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[3]~1_combout\,
	datab => \U_MEMORIA|U_RAM|mem~87_q\,
	datac => \U_MEMORIA|U_RAM|mem~23_q\,
	datad => \mem_address_s[2]~0_combout\,
	combout => \U_MEMORIA|U_RAM|mem~282_combout\);

-- Location: LCCOMB_X21_Y21_N30
\U_MEMORIA|U_RAM|mem~283\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~283_combout\ = (\mem_address_s[2]~0_combout\ & ((\U_MEMORIA|U_RAM|mem~282_combout\ & ((\U_MEMORIA|U_RAM|mem~119_q\))) # (!\U_MEMORIA|U_RAM|mem~282_combout\ & (\U_MEMORIA|U_RAM|mem~55_q\)))) # (!\mem_address_s[2]~0_combout\ & 
-- (((\U_MEMORIA|U_RAM|mem~282_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[2]~0_combout\,
	datab => \U_MEMORIA|U_RAM|mem~55_q\,
	datac => \U_MEMORIA|U_RAM|mem~119_q\,
	datad => \U_MEMORIA|U_RAM|mem~282_combout\,
	combout => \U_MEMORIA|U_RAM|mem~283_combout\);

-- Location: LCCOMB_X22_Y22_N8
\U_MEMORIA|U_RAM|mem~47feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~47feeder_combout\ = \mem_data_in_s[1]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_data_in_s[1]~0_combout\,
	combout => \U_MEMORIA|U_RAM|mem~47feeder_combout\);

-- Location: FF_X22_Y22_N9
\U_MEMORIA|U_RAM|mem~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~47feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~47_q\);

-- Location: FF_X21_Y23_N15
\U_MEMORIA|U_RAM|mem~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[1]~0_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~111_q\);

-- Location: LCCOMB_X22_Y23_N4
\U_MEMORIA|U_RAM|mem~79feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~79feeder_combout\ = \mem_data_in_s[1]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_data_in_s[1]~0_combout\,
	combout => \U_MEMORIA|U_RAM|mem~79feeder_combout\);

-- Location: FF_X22_Y23_N5
\U_MEMORIA|U_RAM|mem~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~79feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~79_q\);

-- Location: FF_X21_Y23_N25
\U_MEMORIA|U_RAM|mem~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[1]~0_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~15_q\);

-- Location: LCCOMB_X21_Y23_N24
\U_MEMORIA|U_RAM|mem~284\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~284_combout\ = (\mem_address_s[2]~0_combout\ & (((\mem_address_s[3]~1_combout\)))) # (!\mem_address_s[2]~0_combout\ & ((\mem_address_s[3]~1_combout\ & (\U_MEMORIA|U_RAM|mem~79_q\)) # (!\mem_address_s[3]~1_combout\ & 
-- ((\U_MEMORIA|U_RAM|mem~15_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[2]~0_combout\,
	datab => \U_MEMORIA|U_RAM|mem~79_q\,
	datac => \U_MEMORIA|U_RAM|mem~15_q\,
	datad => \mem_address_s[3]~1_combout\,
	combout => \U_MEMORIA|U_RAM|mem~284_combout\);

-- Location: LCCOMB_X21_Y23_N14
\U_MEMORIA|U_RAM|mem~285\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~285_combout\ = (\mem_address_s[2]~0_combout\ & ((\U_MEMORIA|U_RAM|mem~284_combout\ & ((\U_MEMORIA|U_RAM|mem~111_q\))) # (!\U_MEMORIA|U_RAM|mem~284_combout\ & (\U_MEMORIA|U_RAM|mem~47_q\)))) # (!\mem_address_s[2]~0_combout\ & 
-- (((\U_MEMORIA|U_RAM|mem~284_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~47_q\,
	datab => \mem_address_s[2]~0_combout\,
	datac => \U_MEMORIA|U_RAM|mem~111_q\,
	datad => \U_MEMORIA|U_RAM|mem~284_combout\,
	combout => \U_MEMORIA|U_RAM|mem~285_combout\);

-- Location: LCCOMB_X24_Y20_N10
\U_MEMORIA|U_RAM|mem~286\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~286_combout\ = (\mem_address_s[1]~3_combout\ & (\mem_address_s[0]~4_combout\)) # (!\mem_address_s[1]~3_combout\ & ((\mem_address_s[0]~4_combout\ & (\U_MEMORIA|U_RAM|mem~283_combout\)) # (!\mem_address_s[0]~4_combout\ & 
-- ((\U_MEMORIA|U_RAM|mem~285_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[1]~3_combout\,
	datab => \mem_address_s[0]~4_combout\,
	datac => \U_MEMORIA|U_RAM|mem~283_combout\,
	datad => \U_MEMORIA|U_RAM|mem~285_combout\,
	combout => \U_MEMORIA|U_RAM|mem~286_combout\);

-- Location: LCCOMB_X24_Y20_N20
\U_MEMORIA|U_RAM|mem~289\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~289_combout\ = (\mem_address_s[1]~3_combout\ & ((\U_MEMORIA|U_RAM|mem~286_combout\ & ((\U_MEMORIA|U_RAM|mem~288_combout\))) # (!\U_MEMORIA|U_RAM|mem~286_combout\ & (\U_MEMORIA|U_RAM|mem~281_combout\)))) # 
-- (!\mem_address_s[1]~3_combout\ & (((\U_MEMORIA|U_RAM|mem~286_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[1]~3_combout\,
	datab => \U_MEMORIA|U_RAM|mem~281_combout\,
	datac => \U_MEMORIA|U_RAM|mem~288_combout\,
	datad => \U_MEMORIA|U_RAM|mem~286_combout\,
	combout => \U_MEMORIA|U_RAM|mem~289_combout\);

-- Location: LCCOMB_X24_Y20_N26
\U_MEMORIA|data_out[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|data_out[1]~2_combout\ = (\U_MEMORIA|data_out[1]~1_combout\ & ((\mem_address_s[4]~2_combout\ & (\U_MEMORIA|U_RAM|mem~279_combout\)) # (!\mem_address_s[4]~2_combout\ & ((\U_MEMORIA|U_RAM|mem~289_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|data_out[1]~1_combout\,
	datab => \mem_address_s[4]~2_combout\,
	datac => \U_MEMORIA|U_RAM|mem~279_combout\,
	datad => \U_MEMORIA|U_RAM|mem~289_combout\,
	combout => \U_MEMORIA|data_out[1]~2_combout\);

-- Location: LCCOMB_X23_Y20_N28
\U_MEMORIA|data_out[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|data_out[1]~3_combout\ = (\U_ADMIN|estado.ESPERA~q\ & ((\U_MEMORIA|data_out[2]~0_combout\) # ((\U_MEMORIA|data_out[1]~2_combout\)))) # (!\U_ADMIN|estado.ESPERA~q\ & (!\U_GESTOR|addr_rd\(5) & ((\U_MEMORIA|data_out[2]~0_combout\) # 
-- (\U_MEMORIA|data_out[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|estado.ESPERA~q\,
	datab => \U_MEMORIA|data_out[2]~0_combout\,
	datac => \U_GESTOR|addr_rd\(5),
	datad => \U_MEMORIA|data_out[1]~2_combout\,
	combout => \U_MEMORIA|data_out[1]~3_combout\);

-- Location: LCCOMB_X23_Y20_N20
\U_GESTOR|horario_ram[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GESTOR|horario_ram[1]~1_combout\ = !\U_MEMORIA|data_out[1]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_MEMORIA|data_out[1]~3_combout\,
	combout => \U_GESTOR|horario_ram[1]~1_combout\);

-- Location: FF_X23_Y20_N21
\U_GESTOR|horario_ram[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_GESTOR|horario_ram[1]~1_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \U_GESTOR|horario_ram[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GESTOR|horario_ram\(1));

-- Location: LCCOMB_X21_Y16_N10
\U_HORARIO|horario[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HORARIO|horario[1]~0_combout\ = (\U_HORARIO|contador\(5) & (\U_HORARIO|contador\(4) & \U_HORARIO|contador\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_HORARIO|contador\(5),
	datab => \U_HORARIO|contador\(4),
	datad => \U_HORARIO|contador\(3),
	combout => \U_HORARIO|horario[1]~0_combout\);

-- Location: LCCOMB_X21_Y16_N18
\U_GESTOR|Equal6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GESTOR|Equal6~0_combout\ = \U_GESTOR|horario_ram\(1) $ (((!\U_HORARIO|contador\(7) & ((!\U_HORARIO|horario[1]~0_combout\) # (!\U_HORARIO|contador\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_HORARIO|contador\(7),
	datab => \U_GESTOR|horario_ram\(1),
	datac => \U_HORARIO|contador\(6),
	datad => \U_HORARIO|horario[1]~0_combout\,
	combout => \U_GESTOR|Equal6~0_combout\);

-- Location: LCCOMB_X20_Y16_N14
\U_HORARIO|horario[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HORARIO|horario[0]~1_combout\ = (\U_HORARIO|contador\(6) & (((!\U_HORARIO|contador\(3)) # (!\U_HORARIO|contador\(5))) # (!\U_HORARIO|contador\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_HORARIO|contador\(4),
	datab => \U_HORARIO|contador\(6),
	datac => \U_HORARIO|contador\(5),
	datad => \U_HORARIO|contador\(3),
	combout => \U_HORARIO|horario[0]~1_combout\);

-- Location: LCCOMB_X20_Y16_N22
\U_HORARIO|horario[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HORARIO|horario[0]~2_combout\ = (\U_HORARIO|contador\(5) & ((\U_HORARIO|contador\(7)) # ((\U_HORARIO|Equal0~0_combout\ & \U_HORARIO|contador\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_HORARIO|contador\(7),
	datab => \U_HORARIO|contador\(5),
	datac => \U_HORARIO|Equal0~0_combout\,
	datad => \U_HORARIO|contador\(3),
	combout => \U_HORARIO|horario[0]~2_combout\);

-- Location: LCCOMB_X20_Y16_N28
\U_HORARIO|horario[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HORARIO|horario[0]~3_combout\ = (\U_HORARIO|contador\(7) & ((\U_HORARIO|contador\(3)) # ((\U_HORARIO|contador\(2) & \U_HORARIO|contador\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_HORARIO|contador\(2),
	datab => \U_HORARIO|contador\(7),
	datac => \U_HORARIO|contador\(1),
	datad => \U_HORARIO|contador\(3),
	combout => \U_HORARIO|horario[0]~3_combout\);

-- Location: LCCOMB_X20_Y16_N6
\U_HORARIO|horario[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HORARIO|horario[0]~4_combout\ = (\U_HORARIO|horario[0]~1_combout\) # ((\U_HORARIO|horario[0]~2_combout\) # ((\U_HORARIO|contador\(4) & \U_HORARIO|horario[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_HORARIO|contador\(4),
	datab => \U_HORARIO|horario[0]~1_combout\,
	datac => \U_HORARIO|horario[0]~2_combout\,
	datad => \U_HORARIO|horario[0]~3_combout\,
	combout => \U_HORARIO|horario[0]~4_combout\);

-- Location: LCCOMB_X22_Y17_N12
\U_GESTOR|id_ram[0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GESTOR|id_ram[0]~8_combout\ = !\U_MEMORIA|data_out[0]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_MEMORIA|data_out[0]~6_combout\,
	combout => \U_GESTOR|id_ram[0]~8_combout\);

-- Location: FF_X22_Y17_N13
\U_GESTOR|id_ram[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_GESTOR|id_ram[0]~8_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \U_GESTOR|id_ram[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GESTOR|id_ram\(0));

-- Location: LCCOMB_X22_Y17_N2
\U_GESTOR|id_ram[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GESTOR|id_ram[1]~7_combout\ = !\U_MEMORIA|data_out[1]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_MEMORIA|data_out[1]~3_combout\,
	combout => \U_GESTOR|id_ram[1]~7_combout\);

-- Location: FF_X22_Y17_N3
\U_GESTOR|id_ram[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_GESTOR|id_ram[1]~7_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \U_GESTOR|id_ram[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GESTOR|id_ram\(1));

-- Location: LCCOMB_X22_Y18_N0
\U_MEMORIA|U_RAM|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|LessThan0~0_combout\ = (\mem_address_s[3]~1_combout\) # ((\mem_address_s[4]~2_combout\) # ((\mem_address_s[2]~0_combout\ & \mem_address_s[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[3]~1_combout\,
	datab => \mem_address_s[4]~2_combout\,
	datac => \mem_address_s[2]~0_combout\,
	datad => \mem_address_s[1]~3_combout\,
	combout => \U_MEMORIA|U_RAM|LessThan0~0_combout\);

-- Location: LCCOMB_X22_Y18_N30
\U_MEMORIA|data_out[3]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|data_out[3]~17_combout\ = (!\U_MEMORIA|U_RAM|LessThan0~0_combout\ & ((\mem_address_s[2]~0_combout\ & ((\mem_address_s[0]~4_combout\))) # (!\mem_address_s[2]~0_combout\ & (!\mem_address_s[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[1]~3_combout\,
	datab => \mem_address_s[0]~4_combout\,
	datac => \mem_address_s[2]~0_combout\,
	datad => \U_MEMORIA|U_RAM|LessThan0~0_combout\,
	combout => \U_MEMORIA|data_out[3]~17_combout\);

-- Location: LCCOMB_X16_Y20_N30
\U_ADMIN|clave_buf[1][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|clave_buf[1][3]~feeder_combout\ = \U_TECLADO|key_latched\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_TECLADO|key_latched\(3),
	combout => \U_ADMIN|clave_buf[1][3]~feeder_combout\);

-- Location: FF_X16_Y20_N31
\U_ADMIN|clave_buf[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_ADMIN|clave_buf[1][3]~feeder_combout\,
	ena => \U_ADMIN|clave_buf[1][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADMIN|clave_buf[1][3]~q\);

-- Location: FF_X17_Y20_N9
\U_ADMIN|clave_buf[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U_TECLADO|key_latched\(3),
	sload => VCC,
	ena => \U_ADMIN|clave_buf[2][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADMIN|clave_buf[2][3]~q\);

-- Location: LCCOMB_X17_Y20_N8
\U_ADMIN|Selector36~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|Selector36~0_combout\ = (\U_ADMIN|write_step\(2) & (((\U_ADMIN|clave_buf[2][3]~q\)))) # (!\U_ADMIN|write_step\(2) & (\U_ADMIN|write_step\(1) & ((\U_ADMIN|write_step\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|write_step\(1),
	datab => \U_ADMIN|write_step\(2),
	datac => \U_ADMIN|clave_buf[2][3]~q\,
	datad => \U_ADMIN|write_step\(0),
	combout => \U_ADMIN|Selector36~0_combout\);

-- Location: FF_X16_Y20_N17
\U_ADMIN|clave_buf[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U_TECLADO|key_latched\(3),
	sload => VCC,
	ena => \U_ADMIN|clave_buf[0][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADMIN|clave_buf[0][3]~q\);

-- Location: LCCOMB_X16_Y20_N12
\U_ADMIN|dato_i[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|dato_i[2]~0_combout\ = (\U_ADMIN|write_step\(1) & !\U_ADMIN|write_step\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_ADMIN|write_step\(1),
	datad => \U_ADMIN|write_step\(2),
	combout => \U_ADMIN|dato_i[2]~0_combout\);

-- Location: LCCOMB_X16_Y20_N16
\U_ADMIN|Selector36~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|Selector36~1_combout\ = (\U_ADMIN|Selector36~0_combout\ & ((\U_ADMIN|clave_buf[1][3]~q\) # ((!\U_ADMIN|dato_i[2]~0_combout\)))) # (!\U_ADMIN|Selector36~0_combout\ & (((\U_ADMIN|clave_buf[0][3]~q\ & \U_ADMIN|dato_i[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|clave_buf[1][3]~q\,
	datab => \U_ADMIN|Selector36~0_combout\,
	datac => \U_ADMIN|clave_buf[0][3]~q\,
	datad => \U_ADMIN|dato_i[2]~0_combout\,
	combout => \U_ADMIN|Selector36~1_combout\);

-- Location: FF_X17_Y20_N27
\U_ADMIN|clave_buf[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U_TECLADO|key_latched\(3),
	sload => VCC,
	ena => \U_ADMIN|clave_buf[3][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADMIN|clave_buf[3][3]~q\);

-- Location: LCCOMB_X17_Y20_N26
\U_ADMIN|Selector36~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|Selector36~2_combout\ = (\U_ADMIN|write_step\(2) & ((\U_ADMIN|write_step\(0) & ((\U_ADMIN|clave_buf[3][3]~q\))) # (!\U_ADMIN|write_step\(0) & (\U_ADMIN|Selector36~1_combout\)))) # (!\U_ADMIN|write_step\(2) & (\U_ADMIN|Selector36~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|Selector36~1_combout\,
	datab => \U_ADMIN|write_step\(2),
	datac => \U_ADMIN|clave_buf[3][3]~q\,
	datad => \U_ADMIN|write_step\(0),
	combout => \U_ADMIN|Selector36~2_combout\);

-- Location: LCCOMB_X20_Y20_N16
\U_ADMIN|dato_i[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|dato_i[3]~feeder_combout\ = \U_ADMIN|Selector36~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_ADMIN|Selector36~2_combout\,
	combout => \U_ADMIN|dato_i[3]~feeder_combout\);

-- Location: FF_X20_Y20_N17
\U_ADMIN|dato_i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_ADMIN|dato_i[3]~feeder_combout\,
	asdata => VCC,
	clrn => \ALT_INV_RESET~input_o\,
	sload => \U_ADMIN|estado.OP_ELIMINAR_USR~q\,
	ena => \U_ADMIN|addr_i[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADMIN|dato_i\(3));

-- Location: LCCOMB_X20_Y20_N6
\mem_data_in_s[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_data_in_s[3]~3_combout\ = (\U_ADMIN|dato_i\(3) & \U_ADMIN|estado.ESPERA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_ADMIN|dato_i\(3),
	datac => \U_ADMIN|estado.ESPERA~q\,
	combout => \mem_data_in_s[3]~3_combout\);

-- Location: LCCOMB_X22_Y21_N24
\U_MEMORIA|U_RAM|mem~185feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~185feeder_combout\ = \mem_data_in_s[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_data_in_s[3]~3_combout\,
	combout => \U_MEMORIA|U_RAM|mem~185feeder_combout\);

-- Location: FF_X22_Y21_N25
\U_MEMORIA|U_RAM|mem~185\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~185feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~185_q\);

-- Location: FF_X23_Y21_N25
\U_MEMORIA|U_RAM|mem~201\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[3]~3_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~201_q\);

-- Location: LCCOMB_X20_Y21_N0
\U_MEMORIA|U_RAM|mem~193feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~193feeder_combout\ = \mem_data_in_s[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_data_in_s[3]~3_combout\,
	combout => \U_MEMORIA|U_RAM|mem~193feeder_combout\);

-- Location: FF_X20_Y21_N1
\U_MEMORIA|U_RAM|mem~193\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~193feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~193_q\);

-- Location: FF_X23_Y21_N11
\U_MEMORIA|U_RAM|mem~177\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[3]~3_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~177_q\);

-- Location: LCCOMB_X23_Y21_N10
\U_MEMORIA|U_RAM|mem~390\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~390_combout\ = (\mem_address_s[1]~3_combout\ & ((\U_MEMORIA|U_RAM|mem~193_q\) # ((\mem_address_s[0]~4_combout\)))) # (!\mem_address_s[1]~3_combout\ & (((\U_MEMORIA|U_RAM|mem~177_q\ & !\mem_address_s[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~193_q\,
	datab => \mem_address_s[1]~3_combout\,
	datac => \U_MEMORIA|U_RAM|mem~177_q\,
	datad => \mem_address_s[0]~4_combout\,
	combout => \U_MEMORIA|U_RAM|mem~390_combout\);

-- Location: LCCOMB_X23_Y21_N18
\U_MEMORIA|U_RAM|mem~391\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~391_combout\ = (\mem_address_s[0]~4_combout\ & ((\U_MEMORIA|U_RAM|mem~390_combout\ & ((\U_MEMORIA|U_RAM|mem~201_q\))) # (!\U_MEMORIA|U_RAM|mem~390_combout\ & (\U_MEMORIA|U_RAM|mem~185_q\)))) # (!\mem_address_s[0]~4_combout\ & 
-- (((\U_MEMORIA|U_RAM|mem~390_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[0]~4_combout\,
	datab => \U_MEMORIA|U_RAM|mem~185_q\,
	datac => \U_MEMORIA|U_RAM|mem~201_q\,
	datad => \U_MEMORIA|U_RAM|mem~390_combout\,
	combout => \U_MEMORIA|U_RAM|mem~391_combout\);

-- Location: FF_X24_Y22_N5
\U_MEMORIA|U_RAM|mem~249\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[3]~3_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~249_q\);

-- Location: FF_X23_Y22_N17
\U_MEMORIA|U_RAM|mem~265\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[3]~3_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~265_q\);

-- Location: FF_X24_Y22_N7
\U_MEMORIA|U_RAM|mem~241\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[3]~3_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~241_q\);

-- Location: LCCOMB_X26_Y22_N8
\U_MEMORIA|U_RAM|mem~257feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~257feeder_combout\ = \mem_data_in_s[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_data_in_s[3]~3_combout\,
	combout => \U_MEMORIA|U_RAM|mem~257feeder_combout\);

-- Location: FF_X26_Y22_N9
\U_MEMORIA|U_RAM|mem~257\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~257feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~257_q\);

-- Location: LCCOMB_X24_Y22_N6
\U_MEMORIA|U_RAM|mem~397\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~397_combout\ = (\mem_address_s[0]~4_combout\ & (\mem_address_s[1]~3_combout\)) # (!\mem_address_s[0]~4_combout\ & ((\mem_address_s[1]~3_combout\ & ((\U_MEMORIA|U_RAM|mem~257_q\))) # (!\mem_address_s[1]~3_combout\ & 
-- (\U_MEMORIA|U_RAM|mem~241_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[0]~4_combout\,
	datab => \mem_address_s[1]~3_combout\,
	datac => \U_MEMORIA|U_RAM|mem~241_q\,
	datad => \U_MEMORIA|U_RAM|mem~257_q\,
	combout => \U_MEMORIA|U_RAM|mem~397_combout\);

-- Location: LCCOMB_X23_Y22_N16
\U_MEMORIA|U_RAM|mem~398\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~398_combout\ = (\mem_address_s[0]~4_combout\ & ((\U_MEMORIA|U_RAM|mem~397_combout\ & ((\U_MEMORIA|U_RAM|mem~265_q\))) # (!\U_MEMORIA|U_RAM|mem~397_combout\ & (\U_MEMORIA|U_RAM|mem~249_q\)))) # (!\mem_address_s[0]~4_combout\ & 
-- (((\U_MEMORIA|U_RAM|mem~397_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~249_q\,
	datab => \mem_address_s[0]~4_combout\,
	datac => \U_MEMORIA|U_RAM|mem~265_q\,
	datad => \U_MEMORIA|U_RAM|mem~397_combout\,
	combout => \U_MEMORIA|U_RAM|mem~398_combout\);

-- Location: LCCOMB_X19_Y20_N4
\U_MEMORIA|U_RAM|mem~225feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~225feeder_combout\ = \mem_data_in_s[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_data_in_s[3]~3_combout\,
	combout => \U_MEMORIA|U_RAM|mem~225feeder_combout\);

-- Location: FF_X19_Y20_N5
\U_MEMORIA|U_RAM|mem~225\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~225feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~435_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~225_q\);

-- Location: FF_X19_Y21_N3
\U_MEMORIA|U_RAM|mem~233\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[3]~3_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~233_q\);

-- Location: LCCOMB_X20_Y21_N6
\U_MEMORIA|U_RAM|mem~217feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~217feeder_combout\ = \mem_data_in_s[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_data_in_s[3]~3_combout\,
	combout => \U_MEMORIA|U_RAM|mem~217feeder_combout\);

-- Location: FF_X20_Y21_N7
\U_MEMORIA|U_RAM|mem~217\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~217feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~433_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~217_q\);

-- Location: FF_X19_Y21_N29
\U_MEMORIA|U_RAM|mem~209\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[3]~3_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~209_q\);

-- Location: LCCOMB_X19_Y21_N28
\U_MEMORIA|U_RAM|mem~392\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~392_combout\ = (\mem_address_s[1]~3_combout\ & (((\mem_address_s[0]~4_combout\)))) # (!\mem_address_s[1]~3_combout\ & ((\mem_address_s[0]~4_combout\ & (\U_MEMORIA|U_RAM|mem~217_q\)) # (!\mem_address_s[0]~4_combout\ & 
-- ((\U_MEMORIA|U_RAM|mem~209_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[1]~3_combout\,
	datab => \U_MEMORIA|U_RAM|mem~217_q\,
	datac => \U_MEMORIA|U_RAM|mem~209_q\,
	datad => \mem_address_s[0]~4_combout\,
	combout => \U_MEMORIA|U_RAM|mem~392_combout\);

-- Location: LCCOMB_X19_Y21_N2
\U_MEMORIA|U_RAM|mem~393\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~393_combout\ = (\mem_address_s[1]~3_combout\ & ((\U_MEMORIA|U_RAM|mem~392_combout\ & ((\U_MEMORIA|U_RAM|mem~233_q\))) # (!\U_MEMORIA|U_RAM|mem~392_combout\ & (\U_MEMORIA|U_RAM|mem~225_q\)))) # (!\mem_address_s[1]~3_combout\ & 
-- (((\U_MEMORIA|U_RAM|mem~392_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[1]~3_combout\,
	datab => \U_MEMORIA|U_RAM|mem~225_q\,
	datac => \U_MEMORIA|U_RAM|mem~233_q\,
	datad => \U_MEMORIA|U_RAM|mem~392_combout\,
	combout => \U_MEMORIA|U_RAM|mem~393_combout\);

-- Location: LCCOMB_X20_Y22_N14
\U_MEMORIA|U_RAM|mem~161feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~161feeder_combout\ = \mem_data_in_s[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_data_in_s[3]~3_combout\,
	combout => \U_MEMORIA|U_RAM|mem~161feeder_combout\);

-- Location: FF_X20_Y22_N15
\U_MEMORIA|U_RAM|mem~161\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~161feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~161_q\);

-- Location: FF_X24_Y19_N11
\U_MEMORIA|U_RAM|mem~169\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[3]~3_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~169_q\);

-- Location: LCCOMB_X26_Y19_N26
\U_MEMORIA|U_RAM|mem~153feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~153feeder_combout\ = \mem_data_in_s[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_data_in_s[3]~3_combout\,
	combout => \U_MEMORIA|U_RAM|mem~153feeder_combout\);

-- Location: FF_X26_Y19_N27
\U_MEMORIA|U_RAM|mem~153\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~153feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~153_q\);

-- Location: FF_X24_Y19_N29
\U_MEMORIA|U_RAM|mem~145\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[3]~3_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~145_q\);

-- Location: LCCOMB_X24_Y19_N28
\U_MEMORIA|U_RAM|mem~394\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~394_combout\ = (\mem_address_s[1]~3_combout\ & (((\mem_address_s[0]~4_combout\)))) # (!\mem_address_s[1]~3_combout\ & ((\mem_address_s[0]~4_combout\ & (\U_MEMORIA|U_RAM|mem~153_q\)) # (!\mem_address_s[0]~4_combout\ & 
-- ((\U_MEMORIA|U_RAM|mem~145_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~153_q\,
	datab => \mem_address_s[1]~3_combout\,
	datac => \U_MEMORIA|U_RAM|mem~145_q\,
	datad => \mem_address_s[0]~4_combout\,
	combout => \U_MEMORIA|U_RAM|mem~394_combout\);

-- Location: LCCOMB_X24_Y19_N10
\U_MEMORIA|U_RAM|mem~395\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~395_combout\ = (\mem_address_s[1]~3_combout\ & ((\U_MEMORIA|U_RAM|mem~394_combout\ & ((\U_MEMORIA|U_RAM|mem~169_q\))) # (!\U_MEMORIA|U_RAM|mem~394_combout\ & (\U_MEMORIA|U_RAM|mem~161_q\)))) # (!\mem_address_s[1]~3_combout\ & 
-- (((\U_MEMORIA|U_RAM|mem~394_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~161_q\,
	datab => \mem_address_s[1]~3_combout\,
	datac => \U_MEMORIA|U_RAM|mem~169_q\,
	datad => \U_MEMORIA|U_RAM|mem~394_combout\,
	combout => \U_MEMORIA|U_RAM|mem~395_combout\);

-- Location: LCCOMB_X22_Y18_N2
\U_MEMORIA|U_RAM|mem~396\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~396_combout\ = (\mem_address_s[3]~1_combout\ & ((\mem_address_s[2]~0_combout\) # ((\U_MEMORIA|U_RAM|mem~393_combout\)))) # (!\mem_address_s[3]~1_combout\ & (!\mem_address_s[2]~0_combout\ & ((\U_MEMORIA|U_RAM|mem~395_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[3]~1_combout\,
	datab => \mem_address_s[2]~0_combout\,
	datac => \U_MEMORIA|U_RAM|mem~393_combout\,
	datad => \U_MEMORIA|U_RAM|mem~395_combout\,
	combout => \U_MEMORIA|U_RAM|mem~396_combout\);

-- Location: LCCOMB_X22_Y18_N4
\U_MEMORIA|U_RAM|mem~399\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~399_combout\ = (\mem_address_s[2]~0_combout\ & ((\U_MEMORIA|U_RAM|mem~396_combout\ & ((\U_MEMORIA|U_RAM|mem~398_combout\))) # (!\U_MEMORIA|U_RAM|mem~396_combout\ & (\U_MEMORIA|U_RAM|mem~391_combout\)))) # 
-- (!\mem_address_s[2]~0_combout\ & (((\U_MEMORIA|U_RAM|mem~396_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~391_combout\,
	datab => \U_MEMORIA|U_RAM|mem~398_combout\,
	datac => \mem_address_s[2]~0_combout\,
	datad => \U_MEMORIA|U_RAM|mem~396_combout\,
	combout => \U_MEMORIA|U_RAM|mem~399_combout\);

-- Location: FF_X21_Y21_N15
\U_MEMORIA|U_RAM|mem~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[3]~3_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~121_q\);

-- Location: FF_X22_Y21_N7
\U_MEMORIA|U_RAM|mem~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[3]~3_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~57_q\);

-- Location: FF_X23_Y19_N17
\U_MEMORIA|U_RAM|mem~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[3]~3_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~89_q\);

-- Location: FF_X21_Y21_N13
\U_MEMORIA|U_RAM|mem~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[3]~3_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~25_q\);

-- Location: LCCOMB_X21_Y21_N12
\U_MEMORIA|U_RAM|mem~400\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~400_combout\ = (\mem_address_s[3]~1_combout\ & ((\U_MEMORIA|U_RAM|mem~89_q\) # ((\mem_address_s[2]~0_combout\)))) # (!\mem_address_s[3]~1_combout\ & (((\U_MEMORIA|U_RAM|mem~25_q\ & !\mem_address_s[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[3]~1_combout\,
	datab => \U_MEMORIA|U_RAM|mem~89_q\,
	datac => \U_MEMORIA|U_RAM|mem~25_q\,
	datad => \mem_address_s[2]~0_combout\,
	combout => \U_MEMORIA|U_RAM|mem~400_combout\);

-- Location: LCCOMB_X22_Y21_N6
\U_MEMORIA|U_RAM|mem~401\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~401_combout\ = (\mem_address_s[2]~0_combout\ & ((\U_MEMORIA|U_RAM|mem~400_combout\ & (\U_MEMORIA|U_RAM|mem~121_q\)) # (!\U_MEMORIA|U_RAM|mem~400_combout\ & ((\U_MEMORIA|U_RAM|mem~57_q\))))) # (!\mem_address_s[2]~0_combout\ & 
-- (((\U_MEMORIA|U_RAM|mem~400_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~121_q\,
	datab => \mem_address_s[2]~0_combout\,
	datac => \U_MEMORIA|U_RAM|mem~57_q\,
	datad => \U_MEMORIA|U_RAM|mem~400_combout\,
	combout => \U_MEMORIA|U_RAM|mem~401_combout\);

-- Location: LCCOMB_X24_Y23_N10
\U_MEMORIA|U_RAM|mem~137feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~137feeder_combout\ = \mem_data_in_s[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_data_in_s[3]~3_combout\,
	combout => \U_MEMORIA|U_RAM|mem~137feeder_combout\);

-- Location: FF_X24_Y23_N11
\U_MEMORIA|U_RAM|mem~137\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~137feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~480_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~137_q\);

-- Location: FF_X23_Y23_N31
\U_MEMORIA|U_RAM|mem~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[3]~3_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~478_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~105_q\);

-- Location: LCCOMB_X22_Y23_N22
\U_MEMORIA|U_RAM|mem~73feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~73feeder_combout\ = \mem_data_in_s[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_data_in_s[3]~3_combout\,
	combout => \U_MEMORIA|U_RAM|mem~73feeder_combout\);

-- Location: FF_X22_Y23_N23
\U_MEMORIA|U_RAM|mem~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~73feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~73_q\);

-- Location: FF_X23_Y23_N1
\U_MEMORIA|U_RAM|mem~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[3]~3_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~479_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~41_q\);

-- Location: LCCOMB_X23_Y23_N0
\U_MEMORIA|U_RAM|mem~407\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~407_combout\ = (\mem_address_s[3]~1_combout\ & (((\mem_address_s[2]~0_combout\)))) # (!\mem_address_s[3]~1_combout\ & ((\mem_address_s[2]~0_combout\ & (\U_MEMORIA|U_RAM|mem~73_q\)) # (!\mem_address_s[2]~0_combout\ & 
-- ((\U_MEMORIA|U_RAM|mem~41_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[3]~1_combout\,
	datab => \U_MEMORIA|U_RAM|mem~73_q\,
	datac => \U_MEMORIA|U_RAM|mem~41_q\,
	datad => \mem_address_s[2]~0_combout\,
	combout => \U_MEMORIA|U_RAM|mem~407_combout\);

-- Location: LCCOMB_X23_Y23_N30
\U_MEMORIA|U_RAM|mem~408\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~408_combout\ = (\mem_address_s[3]~1_combout\ & ((\U_MEMORIA|U_RAM|mem~407_combout\ & (\U_MEMORIA|U_RAM|mem~137_q\)) # (!\U_MEMORIA|U_RAM|mem~407_combout\ & ((\U_MEMORIA|U_RAM|mem~105_q\))))) # (!\mem_address_s[3]~1_combout\ & 
-- (((\U_MEMORIA|U_RAM|mem~407_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~137_q\,
	datab => \mem_address_s[3]~1_combout\,
	datac => \U_MEMORIA|U_RAM|mem~105_q\,
	datad => \U_MEMORIA|U_RAM|mem~407_combout\,
	combout => \U_MEMORIA|U_RAM|mem~408_combout\);

-- Location: LCCOMB_X22_Y22_N20
\U_MEMORIA|U_RAM|mem~49feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~49feeder_combout\ = \mem_data_in_s[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_data_in_s[3]~3_combout\,
	combout => \U_MEMORIA|U_RAM|mem~49feeder_combout\);

-- Location: FF_X22_Y22_N21
\U_MEMORIA|U_RAM|mem~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~49feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~49_q\);

-- Location: FF_X21_Y23_N1
\U_MEMORIA|U_RAM|mem~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[3]~3_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~113_q\);

-- Location: LCCOMB_X22_Y23_N28
\U_MEMORIA|U_RAM|mem~81feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~81feeder_combout\ = \mem_data_in_s[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_data_in_s[3]~3_combout\,
	combout => \U_MEMORIA|U_RAM|mem~81feeder_combout\);

-- Location: FF_X22_Y23_N29
\U_MEMORIA|U_RAM|mem~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~81feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~81_q\);

-- Location: FF_X21_Y23_N3
\U_MEMORIA|U_RAM|mem~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[3]~3_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~17_q\);

-- Location: LCCOMB_X21_Y23_N2
\U_MEMORIA|U_RAM|mem~404\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~404_combout\ = (\mem_address_s[2]~0_combout\ & (((\mem_address_s[3]~1_combout\)))) # (!\mem_address_s[2]~0_combout\ & ((\mem_address_s[3]~1_combout\ & (\U_MEMORIA|U_RAM|mem~81_q\)) # (!\mem_address_s[3]~1_combout\ & 
-- ((\U_MEMORIA|U_RAM|mem~17_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[2]~0_combout\,
	datab => \U_MEMORIA|U_RAM|mem~81_q\,
	datac => \U_MEMORIA|U_RAM|mem~17_q\,
	datad => \mem_address_s[3]~1_combout\,
	combout => \U_MEMORIA|U_RAM|mem~404_combout\);

-- Location: LCCOMB_X21_Y23_N0
\U_MEMORIA|U_RAM|mem~405\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~405_combout\ = (\mem_address_s[2]~0_combout\ & ((\U_MEMORIA|U_RAM|mem~404_combout\ & ((\U_MEMORIA|U_RAM|mem~113_q\))) # (!\U_MEMORIA|U_RAM|mem~404_combout\ & (\U_MEMORIA|U_RAM|mem~49_q\)))) # (!\mem_address_s[2]~0_combout\ & 
-- (((\U_MEMORIA|U_RAM|mem~404_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~49_q\,
	datab => \mem_address_s[2]~0_combout\,
	datac => \U_MEMORIA|U_RAM|mem~113_q\,
	datad => \U_MEMORIA|U_RAM|mem~404_combout\,
	combout => \U_MEMORIA|U_RAM|mem~405_combout\);

-- Location: LCCOMB_X20_Y22_N8
\U_MEMORIA|U_RAM|mem~97feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~97feeder_combout\ = \mem_data_in_s[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_data_in_s[3]~3_combout\,
	combout => \U_MEMORIA|U_RAM|mem~97feeder_combout\);

-- Location: FF_X20_Y22_N9
\U_MEMORIA|U_RAM|mem~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~97feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~466_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~97_q\);

-- Location: FF_X21_Y22_N13
\U_MEMORIA|U_RAM|mem~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[3]~3_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~468_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~129_q\);

-- Location: LCCOMB_X20_Y23_N30
\U_MEMORIA|U_RAM|mem~65feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~65feeder_combout\ = \mem_data_in_s[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_data_in_s[3]~3_combout\,
	combout => \U_MEMORIA|U_RAM|mem~65feeder_combout\);

-- Location: FF_X20_Y23_N31
\U_MEMORIA|U_RAM|mem~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~65feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~65_q\);

-- Location: FF_X21_Y22_N3
\U_MEMORIA|U_RAM|mem~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[3]~3_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~33_q\);

-- Location: LCCOMB_X21_Y22_N2
\U_MEMORIA|U_RAM|mem~402\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~402_combout\ = (\mem_address_s[2]~0_combout\ & ((\U_MEMORIA|U_RAM|mem~65_q\) # ((\mem_address_s[3]~1_combout\)))) # (!\mem_address_s[2]~0_combout\ & (((\U_MEMORIA|U_RAM|mem~33_q\ & !\mem_address_s[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[2]~0_combout\,
	datab => \U_MEMORIA|U_RAM|mem~65_q\,
	datac => \U_MEMORIA|U_RAM|mem~33_q\,
	datad => \mem_address_s[3]~1_combout\,
	combout => \U_MEMORIA|U_RAM|mem~402_combout\);

-- Location: LCCOMB_X21_Y22_N12
\U_MEMORIA|U_RAM|mem~403\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~403_combout\ = (\mem_address_s[3]~1_combout\ & ((\U_MEMORIA|U_RAM|mem~402_combout\ & ((\U_MEMORIA|U_RAM|mem~129_q\))) # (!\U_MEMORIA|U_RAM|mem~402_combout\ & (\U_MEMORIA|U_RAM|mem~97_q\)))) # (!\mem_address_s[3]~1_combout\ & 
-- (((\U_MEMORIA|U_RAM|mem~402_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~97_q\,
	datab => \mem_address_s[3]~1_combout\,
	datac => \U_MEMORIA|U_RAM|mem~129_q\,
	datad => \U_MEMORIA|U_RAM|mem~402_combout\,
	combout => \U_MEMORIA|U_RAM|mem~403_combout\);

-- Location: LCCOMB_X22_Y18_N10
\U_MEMORIA|U_RAM|mem~406\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~406_combout\ = (\mem_address_s[1]~3_combout\ & ((\mem_address_s[0]~4_combout\) # ((\U_MEMORIA|U_RAM|mem~403_combout\)))) # (!\mem_address_s[1]~3_combout\ & (!\mem_address_s[0]~4_combout\ & (\U_MEMORIA|U_RAM|mem~405_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[1]~3_combout\,
	datab => \mem_address_s[0]~4_combout\,
	datac => \U_MEMORIA|U_RAM|mem~405_combout\,
	datad => \U_MEMORIA|U_RAM|mem~403_combout\,
	combout => \U_MEMORIA|U_RAM|mem~406_combout\);

-- Location: LCCOMB_X22_Y18_N8
\U_MEMORIA|U_RAM|mem~409\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~409_combout\ = (\mem_address_s[0]~4_combout\ & ((\U_MEMORIA|U_RAM|mem~406_combout\ & ((\U_MEMORIA|U_RAM|mem~408_combout\))) # (!\U_MEMORIA|U_RAM|mem~406_combout\ & (\U_MEMORIA|U_RAM|mem~401_combout\)))) # 
-- (!\mem_address_s[0]~4_combout\ & (((\U_MEMORIA|U_RAM|mem~406_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~401_combout\,
	datab => \mem_address_s[0]~4_combout\,
	datac => \U_MEMORIA|U_RAM|mem~408_combout\,
	datad => \U_MEMORIA|U_RAM|mem~406_combout\,
	combout => \U_MEMORIA|U_RAM|mem~409_combout\);

-- Location: LCCOMB_X22_Y18_N6
\U_MEMORIA|data_out[3]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|data_out[3]~16_combout\ = (\U_MEMORIA|data_out[1]~1_combout\ & ((\mem_address_s[4]~2_combout\ & (\U_MEMORIA|U_RAM|mem~399_combout\)) # (!\mem_address_s[4]~2_combout\ & ((\U_MEMORIA|U_RAM|mem~409_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|data_out[1]~1_combout\,
	datab => \U_MEMORIA|U_RAM|mem~399_combout\,
	datac => \U_MEMORIA|U_RAM|mem~409_combout\,
	datad => \mem_address_s[4]~2_combout\,
	combout => \U_MEMORIA|data_out[3]~16_combout\);

-- Location: LCCOMB_X22_Y18_N20
\U_MEMORIA|data_out[3]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|data_out[3]~18_combout\ = (\U_ADMIN|estado.ESPERA~q\ & (((\U_MEMORIA|data_out[3]~17_combout\) # (\U_MEMORIA|data_out[3]~16_combout\)))) # (!\U_ADMIN|estado.ESPERA~q\ & (!\U_GESTOR|addr_rd\(5) & ((\U_MEMORIA|data_out[3]~17_combout\) # 
-- (\U_MEMORIA|data_out[3]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|estado.ESPERA~q\,
	datab => \U_GESTOR|addr_rd\(5),
	datac => \U_MEMORIA|data_out[3]~17_combout\,
	datad => \U_MEMORIA|data_out[3]~16_combout\,
	combout => \U_MEMORIA|data_out[3]~18_combout\);

-- Location: LCCOMB_X22_Y17_N26
\U_GESTOR|id_ram[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GESTOR|id_ram[3]~5_combout\ = !\U_MEMORIA|data_out[3]~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_MEMORIA|data_out[3]~18_combout\,
	combout => \U_GESTOR|id_ram[3]~5_combout\);

-- Location: FF_X22_Y17_N27
\U_GESTOR|id_ram[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_GESTOR|id_ram[3]~5_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \U_GESTOR|id_ram[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GESTOR|id_ram\(3));

-- Location: LCCOMB_X23_Y19_N26
\U_MEMORIA|data_out[2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|data_out[2]~7_combout\ = (!\mem_address_s[4]~2_combout\ & (!\mem_address_s[1]~3_combout\ & (!\mem_address_s[2]~0_combout\ & !\mem_address_s[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[4]~2_combout\,
	datab => \mem_address_s[1]~3_combout\,
	datac => \mem_address_s[2]~0_combout\,
	datad => \mem_address_s[3]~1_combout\,
	combout => \U_MEMORIA|data_out[2]~7_combout\);

-- Location: LCCOMB_X16_Y20_N24
\U_ADMIN|clave_buf[1][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|clave_buf[1][2]~feeder_combout\ = \U_TECLADO|key_latched\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_TECLADO|key_latched\(2),
	combout => \U_ADMIN|clave_buf[1][2]~feeder_combout\);

-- Location: FF_X16_Y20_N25
\U_ADMIN|clave_buf[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_ADMIN|clave_buf[1][2]~feeder_combout\,
	ena => \U_ADMIN|clave_buf[1][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADMIN|clave_buf[1][2]~q\);

-- Location: FF_X16_Y20_N15
\U_ADMIN|clave_buf[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U_TECLADO|key_latched\(2),
	sload => VCC,
	ena => \U_ADMIN|clave_buf[0][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADMIN|clave_buf[0][2]~q\);

-- Location: FF_X17_Y20_N5
\U_ADMIN|clave_buf[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U_TECLADO|key_latched\(2),
	sload => VCC,
	ena => \U_ADMIN|clave_buf[2][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADMIN|clave_buf[2][2]~q\);

-- Location: LCCOMB_X17_Y20_N4
\U_ADMIN|Selector37~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|Selector37~0_combout\ = (\U_ADMIN|write_step\(2) & (((\U_ADMIN|clave_buf[2][2]~q\)))) # (!\U_ADMIN|write_step\(2) & (\U_ADMIN|write_step\(1) & ((\U_ADMIN|write_step\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|write_step\(1),
	datab => \U_ADMIN|write_step\(2),
	datac => \U_ADMIN|clave_buf[2][2]~q\,
	datad => \U_ADMIN|write_step\(0),
	combout => \U_ADMIN|Selector37~0_combout\);

-- Location: LCCOMB_X16_Y20_N14
\U_ADMIN|Selector37~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|Selector37~1_combout\ = (\U_ADMIN|dato_i[2]~0_combout\ & ((\U_ADMIN|Selector37~0_combout\ & (\U_ADMIN|clave_buf[1][2]~q\)) # (!\U_ADMIN|Selector37~0_combout\ & ((\U_ADMIN|clave_buf[0][2]~q\))))) # (!\U_ADMIN|dato_i[2]~0_combout\ & 
-- (((\U_ADMIN|Selector37~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|dato_i[2]~0_combout\,
	datab => \U_ADMIN|clave_buf[1][2]~q\,
	datac => \U_ADMIN|clave_buf[0][2]~q\,
	datad => \U_ADMIN|Selector37~0_combout\,
	combout => \U_ADMIN|Selector37~1_combout\);

-- Location: FF_X17_Y20_N11
\U_ADMIN|clave_buf[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U_TECLADO|key_latched\(2),
	sload => VCC,
	ena => \U_ADMIN|clave_buf[3][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADMIN|clave_buf[3][2]~q\);

-- Location: LCCOMB_X17_Y20_N10
\U_ADMIN|Selector37~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|Selector37~2_combout\ = (\U_ADMIN|write_step\(2) & ((\U_ADMIN|write_step\(0) & ((\U_ADMIN|clave_buf[3][2]~q\))) # (!\U_ADMIN|write_step\(0) & (\U_ADMIN|Selector37~1_combout\)))) # (!\U_ADMIN|write_step\(2) & (\U_ADMIN|Selector37~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|Selector37~1_combout\,
	datab => \U_ADMIN|write_step\(2),
	datac => \U_ADMIN|clave_buf[3][2]~q\,
	datad => \U_ADMIN|write_step\(0),
	combout => \U_ADMIN|Selector37~2_combout\);

-- Location: LCCOMB_X20_Y20_N10
\U_ADMIN|dato_i[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|dato_i[2]~feeder_combout\ = \U_ADMIN|Selector37~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_ADMIN|Selector37~2_combout\,
	combout => \U_ADMIN|dato_i[2]~feeder_combout\);

-- Location: FF_X20_Y20_N11
\U_ADMIN|dato_i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_ADMIN|dato_i[2]~feeder_combout\,
	asdata => VCC,
	clrn => \ALT_INV_RESET~input_o\,
	sload => \U_ADMIN|estado.OP_ELIMINAR_USR~q\,
	ena => \U_ADMIN|addr_i[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADMIN|dato_i\(2));

-- Location: LCCOMB_X19_Y20_N26
\mem_data_in_s[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_data_in_s[2]~4_combout\ = (\U_ADMIN|estado.ESPERA~q\ & \U_ADMIN|dato_i\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_ADMIN|estado.ESPERA~q\,
	datad => \U_ADMIN|dato_i\(2),
	combout => \mem_data_in_s[2]~4_combout\);

-- Location: LCCOMB_X26_Y20_N2
\U_MEMORIA|U_RAM|mem~256feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~256feeder_combout\ = \mem_data_in_s[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_data_in_s[2]~4_combout\,
	combout => \U_MEMORIA|U_RAM|mem~256feeder_combout\);

-- Location: FF_X26_Y20_N3
\U_MEMORIA|U_RAM|mem~256\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~256feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~256_q\);

-- Location: FF_X23_Y22_N27
\U_MEMORIA|U_RAM|mem~264\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[2]~4_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~264_q\);

-- Location: LCCOMB_X24_Y22_N20
\U_MEMORIA|U_RAM|mem~248feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~248feeder_combout\ = \mem_data_in_s[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_data_in_s[2]~4_combout\,
	combout => \U_MEMORIA|U_RAM|mem~248feeder_combout\);

-- Location: FF_X24_Y22_N21
\U_MEMORIA|U_RAM|mem~248\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~248feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~248_q\);

-- Location: FF_X24_Y22_N23
\U_MEMORIA|U_RAM|mem~240\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[2]~4_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~240_q\);

-- Location: LCCOMB_X24_Y22_N22
\U_MEMORIA|U_RAM|mem~417\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~417_combout\ = (\mem_address_s[0]~4_combout\ & ((\U_MEMORIA|U_RAM|mem~248_q\) # ((\mem_address_s[1]~3_combout\)))) # (!\mem_address_s[0]~4_combout\ & (((\U_MEMORIA|U_RAM|mem~240_q\ & !\mem_address_s[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[0]~4_combout\,
	datab => \U_MEMORIA|U_RAM|mem~248_q\,
	datac => \U_MEMORIA|U_RAM|mem~240_q\,
	datad => \mem_address_s[1]~3_combout\,
	combout => \U_MEMORIA|U_RAM|mem~417_combout\);

-- Location: LCCOMB_X23_Y22_N26
\U_MEMORIA|U_RAM|mem~418\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~418_combout\ = (\mem_address_s[1]~3_combout\ & ((\U_MEMORIA|U_RAM|mem~417_combout\ & ((\U_MEMORIA|U_RAM|mem~264_q\))) # (!\U_MEMORIA|U_RAM|mem~417_combout\ & (\U_MEMORIA|U_RAM|mem~256_q\)))) # (!\mem_address_s[1]~3_combout\ & 
-- (((\U_MEMORIA|U_RAM|mem~417_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[1]~3_combout\,
	datab => \U_MEMORIA|U_RAM|mem~256_q\,
	datac => \U_MEMORIA|U_RAM|mem~264_q\,
	datad => \U_MEMORIA|U_RAM|mem~417_combout\,
	combout => \U_MEMORIA|U_RAM|mem~418_combout\);

-- Location: LCCOMB_X20_Y21_N20
\U_MEMORIA|U_RAM|mem~216feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~216feeder_combout\ = \mem_data_in_s[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_data_in_s[2]~4_combout\,
	combout => \U_MEMORIA|U_RAM|mem~216feeder_combout\);

-- Location: FF_X20_Y21_N21
\U_MEMORIA|U_RAM|mem~216\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~216feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~433_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~216_q\);

-- Location: FF_X19_Y21_N13
\U_MEMORIA|U_RAM|mem~232\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[2]~4_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~232_q\);

-- Location: FF_X19_Y20_N15
\U_MEMORIA|U_RAM|mem~224\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[2]~4_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~435_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~224_q\);

-- Location: FF_X19_Y20_N1
\U_MEMORIA|U_RAM|mem~208\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[2]~4_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~208_q\);

-- Location: LCCOMB_X19_Y20_N0
\U_MEMORIA|U_RAM|mem~410\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~410_combout\ = (\mem_address_s[0]~4_combout\ & (((\mem_address_s[1]~3_combout\)))) # (!\mem_address_s[0]~4_combout\ & ((\mem_address_s[1]~3_combout\ & (\U_MEMORIA|U_RAM|mem~224_q\)) # (!\mem_address_s[1]~3_combout\ & 
-- ((\U_MEMORIA|U_RAM|mem~208_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~224_q\,
	datab => \mem_address_s[0]~4_combout\,
	datac => \U_MEMORIA|U_RAM|mem~208_q\,
	datad => \mem_address_s[1]~3_combout\,
	combout => \U_MEMORIA|U_RAM|mem~410_combout\);

-- Location: LCCOMB_X19_Y21_N26
\U_MEMORIA|U_RAM|mem~411\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~411_combout\ = (\mem_address_s[0]~4_combout\ & ((\U_MEMORIA|U_RAM|mem~410_combout\ & ((\U_MEMORIA|U_RAM|mem~232_q\))) # (!\U_MEMORIA|U_RAM|mem~410_combout\ & (\U_MEMORIA|U_RAM|mem~216_q\)))) # (!\mem_address_s[0]~4_combout\ & 
-- (((\U_MEMORIA|U_RAM|mem~410_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~216_q\,
	datab => \mem_address_s[0]~4_combout\,
	datac => \U_MEMORIA|U_RAM|mem~232_q\,
	datad => \U_MEMORIA|U_RAM|mem~410_combout\,
	combout => \U_MEMORIA|U_RAM|mem~411_combout\);

-- Location: LCCOMB_X20_Y21_N30
\U_MEMORIA|U_RAM|mem~192feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~192feeder_combout\ = \mem_data_in_s[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_data_in_s[2]~4_combout\,
	combout => \U_MEMORIA|U_RAM|mem~192feeder_combout\);

-- Location: FF_X20_Y21_N31
\U_MEMORIA|U_RAM|mem~192\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~192feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~192_q\);

-- Location: FF_X23_Y21_N31
\U_MEMORIA|U_RAM|mem~200\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[2]~4_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~200_q\);

-- Location: LCCOMB_X22_Y21_N16
\U_MEMORIA|U_RAM|mem~184feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~184feeder_combout\ = \mem_data_in_s[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_data_in_s[2]~4_combout\,
	combout => \U_MEMORIA|U_RAM|mem~184feeder_combout\);

-- Location: FF_X22_Y21_N17
\U_MEMORIA|U_RAM|mem~184\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~184feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~184_q\);

-- Location: FF_X23_Y21_N1
\U_MEMORIA|U_RAM|mem~176\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[2]~4_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~176_q\);

-- Location: LCCOMB_X23_Y21_N0
\U_MEMORIA|U_RAM|mem~412\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~412_combout\ = (\mem_address_s[1]~3_combout\ & (((\mem_address_s[0]~4_combout\)))) # (!\mem_address_s[1]~3_combout\ & ((\mem_address_s[0]~4_combout\ & (\U_MEMORIA|U_RAM|mem~184_q\)) # (!\mem_address_s[0]~4_combout\ & 
-- ((\U_MEMORIA|U_RAM|mem~176_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~184_q\,
	datab => \mem_address_s[1]~3_combout\,
	datac => \U_MEMORIA|U_RAM|mem~176_q\,
	datad => \mem_address_s[0]~4_combout\,
	combout => \U_MEMORIA|U_RAM|mem~412_combout\);

-- Location: LCCOMB_X23_Y21_N30
\U_MEMORIA|U_RAM|mem~413\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~413_combout\ = (\mem_address_s[1]~3_combout\ & ((\U_MEMORIA|U_RAM|mem~412_combout\ & ((\U_MEMORIA|U_RAM|mem~200_q\))) # (!\U_MEMORIA|U_RAM|mem~412_combout\ & (\U_MEMORIA|U_RAM|mem~192_q\)))) # (!\mem_address_s[1]~3_combout\ & 
-- (((\U_MEMORIA|U_RAM|mem~412_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~192_q\,
	datab => \mem_address_s[1]~3_combout\,
	datac => \U_MEMORIA|U_RAM|mem~200_q\,
	datad => \U_MEMORIA|U_RAM|mem~412_combout\,
	combout => \U_MEMORIA|U_RAM|mem~413_combout\);

-- Location: LCCOMB_X26_Y19_N28
\U_MEMORIA|U_RAM|mem~152feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~152feeder_combout\ = \mem_data_in_s[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_data_in_s[2]~4_combout\,
	combout => \U_MEMORIA|U_RAM|mem~152feeder_combout\);

-- Location: FF_X26_Y19_N29
\U_MEMORIA|U_RAM|mem~152\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~152feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~152_q\);

-- Location: FF_X24_Y19_N31
\U_MEMORIA|U_RAM|mem~168\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[2]~4_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~168_q\);

-- Location: LCCOMB_X20_Y22_N18
\U_MEMORIA|U_RAM|mem~160feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~160feeder_combout\ = \mem_data_in_s[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_data_in_s[2]~4_combout\,
	combout => \U_MEMORIA|U_RAM|mem~160feeder_combout\);

-- Location: FF_X20_Y22_N19
\U_MEMORIA|U_RAM|mem~160\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~160feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~160_q\);

-- Location: FF_X24_Y19_N21
\U_MEMORIA|U_RAM|mem~144\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[2]~4_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~144_q\);

-- Location: LCCOMB_X24_Y19_N20
\U_MEMORIA|U_RAM|mem~414\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~414_combout\ = (\mem_address_s[0]~4_combout\ & (((\mem_address_s[1]~3_combout\)))) # (!\mem_address_s[0]~4_combout\ & ((\mem_address_s[1]~3_combout\ & (\U_MEMORIA|U_RAM|mem~160_q\)) # (!\mem_address_s[1]~3_combout\ & 
-- ((\U_MEMORIA|U_RAM|mem~144_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[0]~4_combout\,
	datab => \U_MEMORIA|U_RAM|mem~160_q\,
	datac => \U_MEMORIA|U_RAM|mem~144_q\,
	datad => \mem_address_s[1]~3_combout\,
	combout => \U_MEMORIA|U_RAM|mem~414_combout\);

-- Location: LCCOMB_X24_Y19_N30
\U_MEMORIA|U_RAM|mem~415\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~415_combout\ = (\mem_address_s[0]~4_combout\ & ((\U_MEMORIA|U_RAM|mem~414_combout\ & ((\U_MEMORIA|U_RAM|mem~168_q\))) # (!\U_MEMORIA|U_RAM|mem~414_combout\ & (\U_MEMORIA|U_RAM|mem~152_q\)))) # (!\mem_address_s[0]~4_combout\ & 
-- (((\U_MEMORIA|U_RAM|mem~414_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[0]~4_combout\,
	datab => \U_MEMORIA|U_RAM|mem~152_q\,
	datac => \U_MEMORIA|U_RAM|mem~168_q\,
	datad => \U_MEMORIA|U_RAM|mem~414_combout\,
	combout => \U_MEMORIA|U_RAM|mem~415_combout\);

-- Location: LCCOMB_X22_Y18_N12
\U_MEMORIA|U_RAM|mem~416\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~416_combout\ = (\mem_address_s[3]~1_combout\ & (\mem_address_s[2]~0_combout\)) # (!\mem_address_s[3]~1_combout\ & ((\mem_address_s[2]~0_combout\ & (\U_MEMORIA|U_RAM|mem~413_combout\)) # (!\mem_address_s[2]~0_combout\ & 
-- ((\U_MEMORIA|U_RAM|mem~415_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[3]~1_combout\,
	datab => \mem_address_s[2]~0_combout\,
	datac => \U_MEMORIA|U_RAM|mem~413_combout\,
	datad => \U_MEMORIA|U_RAM|mem~415_combout\,
	combout => \U_MEMORIA|U_RAM|mem~416_combout\);

-- Location: LCCOMB_X22_Y18_N26
\U_MEMORIA|U_RAM|mem~419\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~419_combout\ = (\mem_address_s[3]~1_combout\ & ((\U_MEMORIA|U_RAM|mem~416_combout\ & (\U_MEMORIA|U_RAM|mem~418_combout\)) # (!\U_MEMORIA|U_RAM|mem~416_combout\ & ((\U_MEMORIA|U_RAM|mem~411_combout\))))) # 
-- (!\mem_address_s[3]~1_combout\ & (((\U_MEMORIA|U_RAM|mem~416_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[3]~1_combout\,
	datab => \U_MEMORIA|U_RAM|mem~418_combout\,
	datac => \U_MEMORIA|U_RAM|mem~411_combout\,
	datad => \U_MEMORIA|U_RAM|mem~416_combout\,
	combout => \U_MEMORIA|U_RAM|mem~419_combout\);

-- Location: LCCOMB_X20_Y23_N8
\U_MEMORIA|U_RAM|mem~64feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~64feeder_combout\ = \mem_data_in_s[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_data_in_s[2]~4_combout\,
	combout => \U_MEMORIA|U_RAM|mem~64feeder_combout\);

-- Location: FF_X20_Y23_N9
\U_MEMORIA|U_RAM|mem~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~64feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~64_q\);

-- Location: FF_X21_Y22_N21
\U_MEMORIA|U_RAM|mem~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[2]~4_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~468_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~128_q\);

-- Location: LCCOMB_X20_Y22_N24
\U_MEMORIA|U_RAM|mem~96feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~96feeder_combout\ = \mem_data_in_s[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_data_in_s[2]~4_combout\,
	combout => \U_MEMORIA|U_RAM|mem~96feeder_combout\);

-- Location: FF_X20_Y22_N25
\U_MEMORIA|U_RAM|mem~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~96feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~466_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~96_q\);

-- Location: FF_X21_Y22_N7
\U_MEMORIA|U_RAM|mem~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[2]~4_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~32_q\);

-- Location: LCCOMB_X21_Y22_N6
\U_MEMORIA|U_RAM|mem~420\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~420_combout\ = (\mem_address_s[2]~0_combout\ & (((\mem_address_s[3]~1_combout\)))) # (!\mem_address_s[2]~0_combout\ & ((\mem_address_s[3]~1_combout\ & (\U_MEMORIA|U_RAM|mem~96_q\)) # (!\mem_address_s[3]~1_combout\ & 
-- ((\U_MEMORIA|U_RAM|mem~32_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[2]~0_combout\,
	datab => \U_MEMORIA|U_RAM|mem~96_q\,
	datac => \U_MEMORIA|U_RAM|mem~32_q\,
	datad => \mem_address_s[3]~1_combout\,
	combout => \U_MEMORIA|U_RAM|mem~420_combout\);

-- Location: LCCOMB_X21_Y22_N20
\U_MEMORIA|U_RAM|mem~421\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~421_combout\ = (\mem_address_s[2]~0_combout\ & ((\U_MEMORIA|U_RAM|mem~420_combout\ & ((\U_MEMORIA|U_RAM|mem~128_q\))) # (!\U_MEMORIA|U_RAM|mem~420_combout\ & (\U_MEMORIA|U_RAM|mem~64_q\)))) # (!\mem_address_s[2]~0_combout\ & 
-- (((\U_MEMORIA|U_RAM|mem~420_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[2]~0_combout\,
	datab => \U_MEMORIA|U_RAM|mem~64_q\,
	datac => \U_MEMORIA|U_RAM|mem~128_q\,
	datad => \U_MEMORIA|U_RAM|mem~420_combout\,
	combout => \U_MEMORIA|U_RAM|mem~421_combout\);

-- Location: LCCOMB_X24_Y23_N28
\U_MEMORIA|U_RAM|mem~136feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~136feeder_combout\ = \mem_data_in_s[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_data_in_s[2]~4_combout\,
	combout => \U_MEMORIA|U_RAM|mem~136feeder_combout\);

-- Location: FF_X24_Y23_N29
\U_MEMORIA|U_RAM|mem~136\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~136feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~480_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~136_q\);

-- Location: FF_X22_Y23_N31
\U_MEMORIA|U_RAM|mem~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[2]~4_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~72_q\);

-- Location: LCCOMB_X23_Y23_N20
\U_MEMORIA|U_RAM|mem~40feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~40feeder_combout\ = \mem_data_in_s[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_data_in_s[2]~4_combout\,
	combout => \U_MEMORIA|U_RAM|mem~40feeder_combout\);

-- Location: FF_X23_Y23_N21
\U_MEMORIA|U_RAM|mem~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~40feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~479_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~40_q\);

-- Location: LCCOMB_X23_Y23_N26
\U_MEMORIA|U_RAM|mem~509\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~509_combout\ = !\mem_data_in_s[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_data_in_s[2]~4_combout\,
	combout => \U_MEMORIA|U_RAM|mem~509_combout\);

-- Location: FF_X23_Y23_N27
\U_MEMORIA|U_RAM|mem~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~509_combout\,
	ena => \U_MEMORIA|U_RAM|mem~478_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~104_q\);

-- Location: LCCOMB_X22_Y23_N24
\U_MEMORIA|U_RAM|mem~427\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~427_combout\ = (\mem_address_s[3]~1_combout\ & (((\mem_address_s[2]~0_combout\) # (!\U_MEMORIA|U_RAM|mem~104_q\)))) # (!\mem_address_s[3]~1_combout\ & (\U_MEMORIA|U_RAM|mem~40_q\ & ((!\mem_address_s[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~40_q\,
	datab => \U_MEMORIA|U_RAM|mem~104_q\,
	datac => \mem_address_s[3]~1_combout\,
	datad => \mem_address_s[2]~0_combout\,
	combout => \U_MEMORIA|U_RAM|mem~427_combout\);

-- Location: LCCOMB_X22_Y23_N30
\U_MEMORIA|U_RAM|mem~428\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~428_combout\ = (\mem_address_s[2]~0_combout\ & ((\U_MEMORIA|U_RAM|mem~427_combout\ & (\U_MEMORIA|U_RAM|mem~136_q\)) # (!\U_MEMORIA|U_RAM|mem~427_combout\ & ((\U_MEMORIA|U_RAM|mem~72_q\))))) # (!\mem_address_s[2]~0_combout\ & 
-- (((\U_MEMORIA|U_RAM|mem~427_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[2]~0_combout\,
	datab => \U_MEMORIA|U_RAM|mem~136_q\,
	datac => \U_MEMORIA|U_RAM|mem~72_q\,
	datad => \U_MEMORIA|U_RAM|mem~427_combout\,
	combout => \U_MEMORIA|U_RAM|mem~428_combout\);

-- Location: LCCOMB_X19_Y23_N22
\U_MEMORIA|U_RAM|mem~88feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~88feeder_combout\ = \mem_data_in_s[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_data_in_s[2]~4_combout\,
	combout => \U_MEMORIA|U_RAM|mem~88feeder_combout\);

-- Location: FF_X19_Y23_N23
\U_MEMORIA|U_RAM|mem~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~88feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~88_q\);

-- Location: FF_X21_Y21_N11
\U_MEMORIA|U_RAM|mem~120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[2]~4_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~120_q\);

-- Location: LCCOMB_X22_Y21_N10
\U_MEMORIA|U_RAM|mem~56feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~56feeder_combout\ = \mem_data_in_s[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_data_in_s[2]~4_combout\,
	combout => \U_MEMORIA|U_RAM|mem~56feeder_combout\);

-- Location: FF_X22_Y21_N11
\U_MEMORIA|U_RAM|mem~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~56feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~56_q\);

-- Location: FF_X21_Y21_N29
\U_MEMORIA|U_RAM|mem~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[2]~4_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~24_q\);

-- Location: LCCOMB_X21_Y21_N28
\U_MEMORIA|U_RAM|mem~422\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~422_combout\ = (\mem_address_s[3]~1_combout\ & (((\mem_address_s[2]~0_combout\)))) # (!\mem_address_s[3]~1_combout\ & ((\mem_address_s[2]~0_combout\ & (\U_MEMORIA|U_RAM|mem~56_q\)) # (!\mem_address_s[2]~0_combout\ & 
-- ((\U_MEMORIA|U_RAM|mem~24_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[3]~1_combout\,
	datab => \U_MEMORIA|U_RAM|mem~56_q\,
	datac => \U_MEMORIA|U_RAM|mem~24_q\,
	datad => \mem_address_s[2]~0_combout\,
	combout => \U_MEMORIA|U_RAM|mem~422_combout\);

-- Location: LCCOMB_X21_Y21_N10
\U_MEMORIA|U_RAM|mem~423\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~423_combout\ = (\mem_address_s[3]~1_combout\ & ((\U_MEMORIA|U_RAM|mem~422_combout\ & ((\U_MEMORIA|U_RAM|mem~120_q\))) # (!\U_MEMORIA|U_RAM|mem~422_combout\ & (\U_MEMORIA|U_RAM|mem~88_q\)))) # (!\mem_address_s[3]~1_combout\ & 
-- (((\U_MEMORIA|U_RAM|mem~422_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[3]~1_combout\,
	datab => \U_MEMORIA|U_RAM|mem~88_q\,
	datac => \U_MEMORIA|U_RAM|mem~120_q\,
	datad => \U_MEMORIA|U_RAM|mem~422_combout\,
	combout => \U_MEMORIA|U_RAM|mem~423_combout\);

-- Location: LCCOMB_X22_Y23_N0
\U_MEMORIA|U_RAM|mem~80feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~80feeder_combout\ = \mem_data_in_s[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_data_in_s[2]~4_combout\,
	combout => \U_MEMORIA|U_RAM|mem~80feeder_combout\);

-- Location: FF_X22_Y23_N1
\U_MEMORIA|U_RAM|mem~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~80feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~80_q\);

-- Location: FF_X21_Y23_N9
\U_MEMORIA|U_RAM|mem~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[2]~4_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~112_q\);

-- Location: LCCOMB_X22_Y22_N2
\U_MEMORIA|U_RAM|mem~48feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~48feeder_combout\ = \mem_data_in_s[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_data_in_s[2]~4_combout\,
	combout => \U_MEMORIA|U_RAM|mem~48feeder_combout\);

-- Location: FF_X22_Y22_N3
\U_MEMORIA|U_RAM|mem~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~48feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~48_q\);

-- Location: FF_X21_Y23_N19
\U_MEMORIA|U_RAM|mem~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[2]~4_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~16_q\);

-- Location: LCCOMB_X21_Y23_N18
\U_MEMORIA|U_RAM|mem~424\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~424_combout\ = (\mem_address_s[2]~0_combout\ & ((\U_MEMORIA|U_RAM|mem~48_q\) # ((\mem_address_s[3]~1_combout\)))) # (!\mem_address_s[2]~0_combout\ & (((\U_MEMORIA|U_RAM|mem~16_q\ & !\mem_address_s[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[2]~0_combout\,
	datab => \U_MEMORIA|U_RAM|mem~48_q\,
	datac => \U_MEMORIA|U_RAM|mem~16_q\,
	datad => \mem_address_s[3]~1_combout\,
	combout => \U_MEMORIA|U_RAM|mem~424_combout\);

-- Location: LCCOMB_X21_Y23_N8
\U_MEMORIA|U_RAM|mem~425\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~425_combout\ = (\mem_address_s[3]~1_combout\ & ((\U_MEMORIA|U_RAM|mem~424_combout\ & ((\U_MEMORIA|U_RAM|mem~112_q\))) # (!\U_MEMORIA|U_RAM|mem~424_combout\ & (\U_MEMORIA|U_RAM|mem~80_q\)))) # (!\mem_address_s[3]~1_combout\ & 
-- (((\U_MEMORIA|U_RAM|mem~424_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~80_q\,
	datab => \mem_address_s[3]~1_combout\,
	datac => \U_MEMORIA|U_RAM|mem~112_q\,
	datad => \U_MEMORIA|U_RAM|mem~424_combout\,
	combout => \U_MEMORIA|U_RAM|mem~425_combout\);

-- Location: LCCOMB_X22_Y18_N24
\U_MEMORIA|U_RAM|mem~426\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~426_combout\ = (\mem_address_s[1]~3_combout\ & (\mem_address_s[0]~4_combout\)) # (!\mem_address_s[1]~3_combout\ & ((\mem_address_s[0]~4_combout\ & (\U_MEMORIA|U_RAM|mem~423_combout\)) # (!\mem_address_s[0]~4_combout\ & 
-- ((\U_MEMORIA|U_RAM|mem~425_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[1]~3_combout\,
	datab => \mem_address_s[0]~4_combout\,
	datac => \U_MEMORIA|U_RAM|mem~423_combout\,
	datad => \U_MEMORIA|U_RAM|mem~425_combout\,
	combout => \U_MEMORIA|U_RAM|mem~426_combout\);

-- Location: LCCOMB_X22_Y18_N18
\U_MEMORIA|U_RAM|mem~429\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~429_combout\ = (\mem_address_s[1]~3_combout\ & ((\U_MEMORIA|U_RAM|mem~426_combout\ & ((\U_MEMORIA|U_RAM|mem~428_combout\))) # (!\U_MEMORIA|U_RAM|mem~426_combout\ & (\U_MEMORIA|U_RAM|mem~421_combout\)))) # 
-- (!\mem_address_s[1]~3_combout\ & (((\U_MEMORIA|U_RAM|mem~426_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[1]~3_combout\,
	datab => \U_MEMORIA|U_RAM|mem~421_combout\,
	datac => \U_MEMORIA|U_RAM|mem~428_combout\,
	datad => \U_MEMORIA|U_RAM|mem~426_combout\,
	combout => \U_MEMORIA|U_RAM|mem~429_combout\);

-- Location: LCCOMB_X22_Y18_N28
\U_MEMORIA|data_out[2]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|data_out[2]~19_combout\ = (\U_MEMORIA|data_out[1]~1_combout\ & ((\mem_address_s[4]~2_combout\ & (\U_MEMORIA|U_RAM|mem~419_combout\)) # (!\mem_address_s[4]~2_combout\ & ((\U_MEMORIA|U_RAM|mem~429_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~419_combout\,
	datab => \U_MEMORIA|data_out[1]~1_combout\,
	datac => \mem_address_s[4]~2_combout\,
	datad => \U_MEMORIA|U_RAM|mem~429_combout\,
	combout => \U_MEMORIA|data_out[2]~19_combout\);

-- Location: LCCOMB_X22_Y18_N14
\U_MEMORIA|data_out[2]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|data_out[2]~20_combout\ = (\U_ADMIN|estado.ESPERA~q\ & (((\U_MEMORIA|data_out[2]~7_combout\) # (\U_MEMORIA|data_out[2]~19_combout\)))) # (!\U_ADMIN|estado.ESPERA~q\ & (!\U_GESTOR|addr_rd\(5) & ((\U_MEMORIA|data_out[2]~7_combout\) # 
-- (\U_MEMORIA|data_out[2]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|estado.ESPERA~q\,
	datab => \U_GESTOR|addr_rd\(5),
	datac => \U_MEMORIA|data_out[2]~7_combout\,
	datad => \U_MEMORIA|data_out[2]~19_combout\,
	combout => \U_MEMORIA|data_out[2]~20_combout\);

-- Location: LCCOMB_X22_Y17_N0
\U_GESTOR|id_ram[2]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GESTOR|id_ram[2]~6_combout\ = !\U_MEMORIA|data_out[2]~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_MEMORIA|data_out[2]~20_combout\,
	combout => \U_GESTOR|id_ram[2]~6_combout\);

-- Location: FF_X22_Y17_N1
\U_GESTOR|id_ram[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_GESTOR|id_ram[2]~6_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \U_GESTOR|id_ram[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GESTOR|id_ram\(2));

-- Location: LCCOMB_X22_Y17_N30
\U_GESTOR|Equal5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GESTOR|Equal5~1_combout\ = (\U_GESTOR|id_ram\(0)) # ((\U_GESTOR|id_ram\(1)) # ((\U_GESTOR|id_ram\(3)) # (\U_GESTOR|id_ram\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GESTOR|id_ram\(0),
	datab => \U_GESTOR|id_ram\(1),
	datac => \U_GESTOR|id_ram\(3),
	datad => \U_GESTOR|id_ram\(2),
	combout => \U_GESTOR|Equal5~1_combout\);

-- Location: LCCOMB_X20_Y20_N20
\U_ADMIN|dato_i[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|dato_i[4]~feeder_combout\ = \U_ADMIN|estado.OP_ELIMINAR_USR~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_ADMIN|estado.OP_ELIMINAR_USR~q\,
	combout => \U_ADMIN|dato_i[4]~feeder_combout\);

-- Location: FF_X20_Y20_N21
\U_ADMIN|dato_i[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_ADMIN|dato_i[4]~feeder_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \U_ADMIN|addr_i[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ADMIN|dato_i\(4));

-- Location: LCCOMB_X19_Y20_N24
\mem_data_in_s[7]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_data_in_s[7]~2_combout\ = (\U_ADMIN|dato_i\(4) & \U_ADMIN|estado.ESPERA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_ADMIN|dato_i\(4),
	datad => \U_ADMIN|estado.ESPERA~q\,
	combout => \mem_data_in_s[7]~2_combout\);

-- Location: LCCOMB_X19_Y21_N6
\U_MEMORIA|U_RAM|mem~234feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~234feeder_combout\ = \mem_data_in_s[7]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_data_in_s[7]~2_combout\,
	combout => \U_MEMORIA|U_RAM|mem~234feeder_combout\);

-- Location: FF_X19_Y21_N7
\U_MEMORIA|U_RAM|mem~234\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~234feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~234_q\);

-- Location: FF_X20_Y21_N25
\U_MEMORIA|U_RAM|mem~218\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[7]~2_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~433_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~218_q\);

-- Location: LCCOMB_X19_Y20_N10
\U_MEMORIA|U_RAM|mem~226feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~226feeder_combout\ = \mem_data_in_s[7]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_data_in_s[7]~2_combout\,
	combout => \U_MEMORIA|U_RAM|mem~226feeder_combout\);

-- Location: FF_X19_Y20_N11
\U_MEMORIA|U_RAM|mem~226\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~226feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~435_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~226_q\);

-- Location: FF_X19_Y21_N21
\U_MEMORIA|U_RAM|mem~210\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[7]~2_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~210_q\);

-- Location: LCCOMB_X19_Y21_N20
\U_MEMORIA|U_RAM|mem~370\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~370_combout\ = (\mem_address_s[0]~4_combout\ & (((\mem_address_s[1]~3_combout\)))) # (!\mem_address_s[0]~4_combout\ & ((\mem_address_s[1]~3_combout\ & (\U_MEMORIA|U_RAM|mem~226_q\)) # (!\mem_address_s[1]~3_combout\ & 
-- ((\U_MEMORIA|U_RAM|mem~210_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~226_q\,
	datab => \mem_address_s[0]~4_combout\,
	datac => \U_MEMORIA|U_RAM|mem~210_q\,
	datad => \mem_address_s[1]~3_combout\,
	combout => \U_MEMORIA|U_RAM|mem~370_combout\);

-- Location: LCCOMB_X20_Y21_N24
\U_MEMORIA|U_RAM|mem~371\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~371_combout\ = (\mem_address_s[0]~4_combout\ & ((\U_MEMORIA|U_RAM|mem~370_combout\ & (\U_MEMORIA|U_RAM|mem~234_q\)) # (!\U_MEMORIA|U_RAM|mem~370_combout\ & ((\U_MEMORIA|U_RAM|mem~218_q\))))) # (!\mem_address_s[0]~4_combout\ & 
-- (((\U_MEMORIA|U_RAM|mem~370_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[0]~4_combout\,
	datab => \U_MEMORIA|U_RAM|mem~234_q\,
	datac => \U_MEMORIA|U_RAM|mem~218_q\,
	datad => \U_MEMORIA|U_RAM|mem~370_combout\,
	combout => \U_MEMORIA|U_RAM|mem~371_combout\);

-- Location: LCCOMB_X26_Y19_N16
\U_MEMORIA|U_RAM|mem~154feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~154feeder_combout\ = \mem_data_in_s[7]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_data_in_s[7]~2_combout\,
	combout => \U_MEMORIA|U_RAM|mem~154feeder_combout\);

-- Location: FF_X26_Y19_N17
\U_MEMORIA|U_RAM|mem~154\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~154feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~154_q\);

-- Location: FF_X24_Y19_N27
\U_MEMORIA|U_RAM|mem~170\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[7]~2_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~170_q\);

-- Location: LCCOMB_X20_Y22_N26
\U_MEMORIA|U_RAM|mem~162feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~162feeder_combout\ = \mem_data_in_s[7]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_data_in_s[7]~2_combout\,
	combout => \U_MEMORIA|U_RAM|mem~162feeder_combout\);

-- Location: FF_X20_Y22_N27
\U_MEMORIA|U_RAM|mem~162\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~162feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~162_q\);

-- Location: FF_X24_Y19_N25
\U_MEMORIA|U_RAM|mem~146\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[7]~2_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~146_q\);

-- Location: LCCOMB_X24_Y19_N24
\U_MEMORIA|U_RAM|mem~374\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~374_combout\ = (\mem_address_s[1]~3_combout\ & ((\U_MEMORIA|U_RAM|mem~162_q\) # ((\mem_address_s[0]~4_combout\)))) # (!\mem_address_s[1]~3_combout\ & (((\U_MEMORIA|U_RAM|mem~146_q\ & !\mem_address_s[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~162_q\,
	datab => \mem_address_s[1]~3_combout\,
	datac => \U_MEMORIA|U_RAM|mem~146_q\,
	datad => \mem_address_s[0]~4_combout\,
	combout => \U_MEMORIA|U_RAM|mem~374_combout\);

-- Location: LCCOMB_X24_Y19_N26
\U_MEMORIA|U_RAM|mem~375\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~375_combout\ = (\mem_address_s[0]~4_combout\ & ((\U_MEMORIA|U_RAM|mem~374_combout\ & ((\U_MEMORIA|U_RAM|mem~170_q\))) # (!\U_MEMORIA|U_RAM|mem~374_combout\ & (\U_MEMORIA|U_RAM|mem~154_q\)))) # (!\mem_address_s[0]~4_combout\ & 
-- (((\U_MEMORIA|U_RAM|mem~374_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[0]~4_combout\,
	datab => \U_MEMORIA|U_RAM|mem~154_q\,
	datac => \U_MEMORIA|U_RAM|mem~170_q\,
	datad => \U_MEMORIA|U_RAM|mem~374_combout\,
	combout => \U_MEMORIA|U_RAM|mem~375_combout\);

-- Location: LCCOMB_X22_Y21_N12
\U_MEMORIA|U_RAM|mem~186feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~186feeder_combout\ = \mem_data_in_s[7]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_data_in_s[7]~2_combout\,
	combout => \U_MEMORIA|U_RAM|mem~186feeder_combout\);

-- Location: FF_X22_Y21_N13
\U_MEMORIA|U_RAM|mem~186\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~186feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~186_q\);

-- Location: FF_X23_Y21_N23
\U_MEMORIA|U_RAM|mem~178\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[7]~2_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~178_q\);

-- Location: LCCOMB_X23_Y21_N22
\U_MEMORIA|U_RAM|mem~372\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~372_combout\ = (\mem_address_s[1]~3_combout\ & (((\mem_address_s[0]~4_combout\)))) # (!\mem_address_s[1]~3_combout\ & ((\mem_address_s[0]~4_combout\ & (\U_MEMORIA|U_RAM|mem~186_q\)) # (!\mem_address_s[0]~4_combout\ & 
-- ((\U_MEMORIA|U_RAM|mem~178_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~186_q\,
	datab => \mem_address_s[1]~3_combout\,
	datac => \U_MEMORIA|U_RAM|mem~178_q\,
	datad => \mem_address_s[0]~4_combout\,
	combout => \U_MEMORIA|U_RAM|mem~372_combout\);

-- Location: FF_X23_Y21_N5
\U_MEMORIA|U_RAM|mem~202\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[7]~2_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~202_q\);

-- Location: FF_X20_Y21_N15
\U_MEMORIA|U_RAM|mem~194\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[7]~2_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~194_q\);

-- Location: LCCOMB_X23_Y21_N4
\U_MEMORIA|U_RAM|mem~373\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~373_combout\ = (\U_MEMORIA|U_RAM|mem~372_combout\ & (((\U_MEMORIA|U_RAM|mem~202_q\)) # (!\mem_address_s[1]~3_combout\))) # (!\U_MEMORIA|U_RAM|mem~372_combout\ & (\mem_address_s[1]~3_combout\ & ((\U_MEMORIA|U_RAM|mem~194_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~372_combout\,
	datab => \mem_address_s[1]~3_combout\,
	datac => \U_MEMORIA|U_RAM|mem~202_q\,
	datad => \U_MEMORIA|U_RAM|mem~194_q\,
	combout => \U_MEMORIA|U_RAM|mem~373_combout\);

-- Location: LCCOMB_X23_Y19_N14
\U_MEMORIA|U_RAM|mem~376\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~376_combout\ = (\mem_address_s[2]~0_combout\ & ((\mem_address_s[3]~1_combout\) # ((\U_MEMORIA|U_RAM|mem~373_combout\)))) # (!\mem_address_s[2]~0_combout\ & (!\mem_address_s[3]~1_combout\ & (\U_MEMORIA|U_RAM|mem~375_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[2]~0_combout\,
	datab => \mem_address_s[3]~1_combout\,
	datac => \U_MEMORIA|U_RAM|mem~375_combout\,
	datad => \U_MEMORIA|U_RAM|mem~373_combout\,
	combout => \U_MEMORIA|U_RAM|mem~376_combout\);

-- Location: LCCOMB_X26_Y20_N8
\U_MEMORIA|U_RAM|mem~258feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~258feeder_combout\ = \mem_data_in_s[7]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_data_in_s[7]~2_combout\,
	combout => \U_MEMORIA|U_RAM|mem~258feeder_combout\);

-- Location: FF_X26_Y20_N9
\U_MEMORIA|U_RAM|mem~258\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~258feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~258_q\);

-- Location: FF_X24_Y20_N29
\U_MEMORIA|U_RAM|mem~266\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[7]~2_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~266_q\);

-- Location: LCCOMB_X24_Y22_N28
\U_MEMORIA|U_RAM|mem~250feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~250feeder_combout\ = \mem_data_in_s[7]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_data_in_s[7]~2_combout\,
	combout => \U_MEMORIA|U_RAM|mem~250feeder_combout\);

-- Location: FF_X24_Y22_N29
\U_MEMORIA|U_RAM|mem~250\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~250feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~250_q\);

-- Location: FF_X24_Y22_N15
\U_MEMORIA|U_RAM|mem~242\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[7]~2_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~242_q\);

-- Location: LCCOMB_X24_Y22_N14
\U_MEMORIA|U_RAM|mem~377\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~377_combout\ = (\mem_address_s[0]~4_combout\ & ((\U_MEMORIA|U_RAM|mem~250_q\) # ((\mem_address_s[1]~3_combout\)))) # (!\mem_address_s[0]~4_combout\ & (((\U_MEMORIA|U_RAM|mem~242_q\ & !\mem_address_s[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[0]~4_combout\,
	datab => \U_MEMORIA|U_RAM|mem~250_q\,
	datac => \U_MEMORIA|U_RAM|mem~242_q\,
	datad => \mem_address_s[1]~3_combout\,
	combout => \U_MEMORIA|U_RAM|mem~377_combout\);

-- Location: LCCOMB_X24_Y20_N28
\U_MEMORIA|U_RAM|mem~378\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~378_combout\ = (\mem_address_s[1]~3_combout\ & ((\U_MEMORIA|U_RAM|mem~377_combout\ & ((\U_MEMORIA|U_RAM|mem~266_q\))) # (!\U_MEMORIA|U_RAM|mem~377_combout\ & (\U_MEMORIA|U_RAM|mem~258_q\)))) # (!\mem_address_s[1]~3_combout\ & 
-- (((\U_MEMORIA|U_RAM|mem~377_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[1]~3_combout\,
	datab => \U_MEMORIA|U_RAM|mem~258_q\,
	datac => \U_MEMORIA|U_RAM|mem~266_q\,
	datad => \U_MEMORIA|U_RAM|mem~377_combout\,
	combout => \U_MEMORIA|U_RAM|mem~378_combout\);

-- Location: LCCOMB_X23_Y19_N12
\U_MEMORIA|U_RAM|mem~379\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~379_combout\ = (\mem_address_s[3]~1_combout\ & ((\U_MEMORIA|U_RAM|mem~376_combout\ & ((\U_MEMORIA|U_RAM|mem~378_combout\))) # (!\U_MEMORIA|U_RAM|mem~376_combout\ & (\U_MEMORIA|U_RAM|mem~371_combout\)))) # 
-- (!\mem_address_s[3]~1_combout\ & (((\U_MEMORIA|U_RAM|mem~376_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[3]~1_combout\,
	datab => \U_MEMORIA|U_RAM|mem~371_combout\,
	datac => \U_MEMORIA|U_RAM|mem~376_combout\,
	datad => \U_MEMORIA|U_RAM|mem~378_combout\,
	combout => \U_MEMORIA|U_RAM|mem~379_combout\);

-- Location: LCCOMB_X20_Y22_N4
\U_MEMORIA|U_RAM|mem~98feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~98feeder_combout\ = \mem_data_in_s[7]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_data_in_s[7]~2_combout\,
	combout => \U_MEMORIA|U_RAM|mem~98feeder_combout\);

-- Location: FF_X20_Y22_N5
\U_MEMORIA|U_RAM|mem~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~98feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~466_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~98_q\);

-- Location: FF_X21_Y22_N27
\U_MEMORIA|U_RAM|mem~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[7]~2_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~34_q\);

-- Location: LCCOMB_X21_Y22_N26
\U_MEMORIA|U_RAM|mem~380\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~380_combout\ = (\mem_address_s[2]~0_combout\ & (((\mem_address_s[3]~1_combout\)))) # (!\mem_address_s[2]~0_combout\ & ((\mem_address_s[3]~1_combout\ & (\U_MEMORIA|U_RAM|mem~98_q\)) # (!\mem_address_s[3]~1_combout\ & 
-- ((\U_MEMORIA|U_RAM|mem~34_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[2]~0_combout\,
	datab => \U_MEMORIA|U_RAM|mem~98_q\,
	datac => \U_MEMORIA|U_RAM|mem~34_q\,
	datad => \mem_address_s[3]~1_combout\,
	combout => \U_MEMORIA|U_RAM|mem~380_combout\);

-- Location: LCCOMB_X20_Y23_N28
\U_MEMORIA|U_RAM|mem~66feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~66feeder_combout\ = \mem_data_in_s[7]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_data_in_s[7]~2_combout\,
	combout => \U_MEMORIA|U_RAM|mem~66feeder_combout\);

-- Location: FF_X20_Y23_N29
\U_MEMORIA|U_RAM|mem~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~66feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~66_q\);

-- Location: FF_X21_Y22_N25
\U_MEMORIA|U_RAM|mem~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[7]~2_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~468_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~130_q\);

-- Location: LCCOMB_X21_Y22_N24
\U_MEMORIA|U_RAM|mem~381\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~381_combout\ = (\U_MEMORIA|U_RAM|mem~380_combout\ & (((\U_MEMORIA|U_RAM|mem~130_q\) # (!\mem_address_s[2]~0_combout\)))) # (!\U_MEMORIA|U_RAM|mem~380_combout\ & (\U_MEMORIA|U_RAM|mem~66_q\ & ((\mem_address_s[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~380_combout\,
	datab => \U_MEMORIA|U_RAM|mem~66_q\,
	datac => \U_MEMORIA|U_RAM|mem~130_q\,
	datad => \mem_address_s[2]~0_combout\,
	combout => \U_MEMORIA|U_RAM|mem~381_combout\);

-- Location: LCCOMB_X24_Y23_N20
\U_MEMORIA|U_RAM|mem~138feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~138feeder_combout\ = \mem_data_in_s[7]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_data_in_s[7]~2_combout\,
	combout => \U_MEMORIA|U_RAM|mem~138feeder_combout\);

-- Location: FF_X24_Y23_N21
\U_MEMORIA|U_RAM|mem~138\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~138feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~480_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~138_q\);

-- Location: FF_X22_Y23_N13
\U_MEMORIA|U_RAM|mem~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[7]~2_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~74_q\);

-- Location: LCCOMB_X23_Y23_N4
\U_MEMORIA|U_RAM|mem~42feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~42feeder_combout\ = \mem_data_in_s[7]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_data_in_s[7]~2_combout\,
	combout => \U_MEMORIA|U_RAM|mem~42feeder_combout\);

-- Location: FF_X23_Y23_N5
\U_MEMORIA|U_RAM|mem~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~42feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~479_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~42_q\);

-- Location: LCCOMB_X23_Y23_N18
\U_MEMORIA|U_RAM|mem~106feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~106feeder_combout\ = \mem_data_in_s[7]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_data_in_s[7]~2_combout\,
	combout => \U_MEMORIA|U_RAM|mem~106feeder_combout\);

-- Location: FF_X23_Y23_N19
\U_MEMORIA|U_RAM|mem~106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~106feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~478_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~106_q\);

-- Location: LCCOMB_X22_Y23_N18
\U_MEMORIA|U_RAM|mem~387\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~387_combout\ = (\mem_address_s[3]~1_combout\ & (((\U_MEMORIA|U_RAM|mem~106_q\) # (\mem_address_s[2]~0_combout\)))) # (!\mem_address_s[3]~1_combout\ & (\U_MEMORIA|U_RAM|mem~42_q\ & ((!\mem_address_s[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~42_q\,
	datab => \U_MEMORIA|U_RAM|mem~106_q\,
	datac => \mem_address_s[3]~1_combout\,
	datad => \mem_address_s[2]~0_combout\,
	combout => \U_MEMORIA|U_RAM|mem~387_combout\);

-- Location: LCCOMB_X22_Y23_N12
\U_MEMORIA|U_RAM|mem~388\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~388_combout\ = (\mem_address_s[2]~0_combout\ & ((\U_MEMORIA|U_RAM|mem~387_combout\ & (\U_MEMORIA|U_RAM|mem~138_q\)) # (!\U_MEMORIA|U_RAM|mem~387_combout\ & ((\U_MEMORIA|U_RAM|mem~74_q\))))) # (!\mem_address_s[2]~0_combout\ & 
-- (((\U_MEMORIA|U_RAM|mem~387_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~138_q\,
	datab => \mem_address_s[2]~0_combout\,
	datac => \U_MEMORIA|U_RAM|mem~74_q\,
	datad => \U_MEMORIA|U_RAM|mem~387_combout\,
	combout => \U_MEMORIA|U_RAM|mem~388_combout\);

-- Location: FF_X22_Y23_N27
\U_MEMORIA|U_RAM|mem~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[7]~2_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~82_q\);

-- Location: FF_X21_Y23_N17
\U_MEMORIA|U_RAM|mem~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[7]~2_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~114_q\);

-- Location: LCCOMB_X22_Y22_N26
\U_MEMORIA|U_RAM|mem~50feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~50feeder_combout\ = \mem_data_in_s[7]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_data_in_s[7]~2_combout\,
	combout => \U_MEMORIA|U_RAM|mem~50feeder_combout\);

-- Location: FF_X22_Y22_N27
\U_MEMORIA|U_RAM|mem~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~50feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~50_q\);

-- Location: FF_X21_Y23_N11
\U_MEMORIA|U_RAM|mem~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[7]~2_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~18_q\);

-- Location: LCCOMB_X21_Y23_N10
\U_MEMORIA|U_RAM|mem~384\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~384_combout\ = (\mem_address_s[2]~0_combout\ & ((\U_MEMORIA|U_RAM|mem~50_q\) # ((\mem_address_s[3]~1_combout\)))) # (!\mem_address_s[2]~0_combout\ & (((\U_MEMORIA|U_RAM|mem~18_q\ & !\mem_address_s[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[2]~0_combout\,
	datab => \U_MEMORIA|U_RAM|mem~50_q\,
	datac => \U_MEMORIA|U_RAM|mem~18_q\,
	datad => \mem_address_s[3]~1_combout\,
	combout => \U_MEMORIA|U_RAM|mem~384_combout\);

-- Location: LCCOMB_X21_Y23_N16
\U_MEMORIA|U_RAM|mem~385\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~385_combout\ = (\mem_address_s[3]~1_combout\ & ((\U_MEMORIA|U_RAM|mem~384_combout\ & ((\U_MEMORIA|U_RAM|mem~114_q\))) # (!\U_MEMORIA|U_RAM|mem~384_combout\ & (\U_MEMORIA|U_RAM|mem~82_q\)))) # (!\mem_address_s[3]~1_combout\ & 
-- (((\U_MEMORIA|U_RAM|mem~384_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~82_q\,
	datab => \mem_address_s[3]~1_combout\,
	datac => \U_MEMORIA|U_RAM|mem~114_q\,
	datad => \U_MEMORIA|U_RAM|mem~384_combout\,
	combout => \U_MEMORIA|U_RAM|mem~385_combout\);

-- Location: FF_X23_Y19_N31
\U_MEMORIA|U_RAM|mem~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[7]~2_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~90_q\);

-- Location: FF_X21_Y21_N3
\U_MEMORIA|U_RAM|mem~122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[7]~2_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~122_q\);

-- Location: LCCOMB_X22_Y21_N18
\U_MEMORIA|U_RAM|mem~58feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~58feeder_combout\ = \mem_data_in_s[7]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_data_in_s[7]~2_combout\,
	combout => \U_MEMORIA|U_RAM|mem~58feeder_combout\);

-- Location: FF_X22_Y21_N19
\U_MEMORIA|U_RAM|mem~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~58feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~58_q\);

-- Location: FF_X21_Y21_N21
\U_MEMORIA|U_RAM|mem~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[7]~2_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~26_q\);

-- Location: LCCOMB_X21_Y21_N20
\U_MEMORIA|U_RAM|mem~382\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~382_combout\ = (\mem_address_s[3]~1_combout\ & (((\mem_address_s[2]~0_combout\)))) # (!\mem_address_s[3]~1_combout\ & ((\mem_address_s[2]~0_combout\ & (\U_MEMORIA|U_RAM|mem~58_q\)) # (!\mem_address_s[2]~0_combout\ & 
-- ((\U_MEMORIA|U_RAM|mem~26_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[3]~1_combout\,
	datab => \U_MEMORIA|U_RAM|mem~58_q\,
	datac => \U_MEMORIA|U_RAM|mem~26_q\,
	datad => \mem_address_s[2]~0_combout\,
	combout => \U_MEMORIA|U_RAM|mem~382_combout\);

-- Location: LCCOMB_X21_Y21_N2
\U_MEMORIA|U_RAM|mem~383\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~383_combout\ = (\mem_address_s[3]~1_combout\ & ((\U_MEMORIA|U_RAM|mem~382_combout\ & ((\U_MEMORIA|U_RAM|mem~122_q\))) # (!\U_MEMORIA|U_RAM|mem~382_combout\ & (\U_MEMORIA|U_RAM|mem~90_q\)))) # (!\mem_address_s[3]~1_combout\ & 
-- (((\U_MEMORIA|U_RAM|mem~382_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[3]~1_combout\,
	datab => \U_MEMORIA|U_RAM|mem~90_q\,
	datac => \U_MEMORIA|U_RAM|mem~122_q\,
	datad => \U_MEMORIA|U_RAM|mem~382_combout\,
	combout => \U_MEMORIA|U_RAM|mem~383_combout\);

-- Location: LCCOMB_X22_Y19_N24
\U_MEMORIA|U_RAM|mem~386\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~386_combout\ = (\mem_address_s[0]~4_combout\ & ((\mem_address_s[1]~3_combout\) # ((\U_MEMORIA|U_RAM|mem~383_combout\)))) # (!\mem_address_s[0]~4_combout\ & (!\mem_address_s[1]~3_combout\ & (\U_MEMORIA|U_RAM|mem~385_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[0]~4_combout\,
	datab => \mem_address_s[1]~3_combout\,
	datac => \U_MEMORIA|U_RAM|mem~385_combout\,
	datad => \U_MEMORIA|U_RAM|mem~383_combout\,
	combout => \U_MEMORIA|U_RAM|mem~386_combout\);

-- Location: LCCOMB_X22_Y19_N30
\U_MEMORIA|U_RAM|mem~389\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~389_combout\ = (\mem_address_s[1]~3_combout\ & ((\U_MEMORIA|U_RAM|mem~386_combout\ & ((\U_MEMORIA|U_RAM|mem~388_combout\))) # (!\U_MEMORIA|U_RAM|mem~386_combout\ & (\U_MEMORIA|U_RAM|mem~381_combout\)))) # 
-- (!\mem_address_s[1]~3_combout\ & (((\U_MEMORIA|U_RAM|mem~386_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~381_combout\,
	datab => \mem_address_s[1]~3_combout\,
	datac => \U_MEMORIA|U_RAM|mem~388_combout\,
	datad => \U_MEMORIA|U_RAM|mem~386_combout\,
	combout => \U_MEMORIA|U_RAM|mem~389_combout\);

-- Location: LCCOMB_X22_Y17_N20
\U_MEMORIA|data_out[4]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|data_out[4]~14_combout\ = (\U_MEMORIA|data_out[1]~1_combout\ & ((\mem_address_s[4]~2_combout\ & (\U_MEMORIA|U_RAM|mem~379_combout\)) # (!\mem_address_s[4]~2_combout\ & ((\U_MEMORIA|U_RAM|mem~389_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|data_out[1]~1_combout\,
	datab => \mem_address_s[4]~2_combout\,
	datac => \U_MEMORIA|U_RAM|mem~379_combout\,
	datad => \U_MEMORIA|U_RAM|mem~389_combout\,
	combout => \U_MEMORIA|data_out[4]~14_combout\);

-- Location: LCCOMB_X22_Y17_N22
\U_MEMORIA|data_out[4]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|data_out[4]~15_combout\ = (\U_ADMIN|estado.ESPERA~q\ & (((!\U_MEMORIA|data_out[2]~7_combout\ & !\U_MEMORIA|data_out[4]~14_combout\)))) # (!\U_ADMIN|estado.ESPERA~q\ & ((\U_GESTOR|addr_rd\(5)) # ((!\U_MEMORIA|data_out[2]~7_combout\ & 
-- !\U_MEMORIA|data_out[4]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|estado.ESPERA~q\,
	datab => \U_GESTOR|addr_rd\(5),
	datac => \U_MEMORIA|data_out[2]~7_combout\,
	datad => \U_MEMORIA|data_out[4]~14_combout\,
	combout => \U_MEMORIA|data_out[4]~15_combout\);

-- Location: FF_X22_Y17_N23
\U_GESTOR|id_ram[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|data_out[4]~15_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \U_GESTOR|id_ram[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GESTOR|id_ram\(4));

-- Location: FF_X19_Y20_N21
\U_MEMORIA|U_RAM|mem~229\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[7]~2_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~435_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~229_q\);

-- Location: FF_X19_Y21_N23
\U_MEMORIA|U_RAM|mem~237\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[7]~2_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~237_q\);

-- Location: FF_X20_Y21_N5
\U_MEMORIA|U_RAM|mem~221\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[7]~2_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~433_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~221_q\);

-- Location: FF_X19_Y21_N1
\U_MEMORIA|U_RAM|mem~213\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[7]~2_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~213_q\);

-- Location: LCCOMB_X19_Y21_N0
\U_MEMORIA|U_RAM|mem~312\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~312_combout\ = (\mem_address_s[0]~4_combout\ & ((\U_MEMORIA|U_RAM|mem~221_q\) # ((\mem_address_s[1]~3_combout\)))) # (!\mem_address_s[0]~4_combout\ & (((\U_MEMORIA|U_RAM|mem~213_q\ & !\mem_address_s[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~221_q\,
	datab => \mem_address_s[0]~4_combout\,
	datac => \U_MEMORIA|U_RAM|mem~213_q\,
	datad => \mem_address_s[1]~3_combout\,
	combout => \U_MEMORIA|U_RAM|mem~312_combout\);

-- Location: LCCOMB_X19_Y21_N22
\U_MEMORIA|U_RAM|mem~313\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~313_combout\ = (\mem_address_s[1]~3_combout\ & ((\U_MEMORIA|U_RAM|mem~312_combout\ & ((\U_MEMORIA|U_RAM|mem~237_q\))) # (!\U_MEMORIA|U_RAM|mem~312_combout\ & (\U_MEMORIA|U_RAM|mem~229_q\)))) # (!\mem_address_s[1]~3_combout\ & 
-- (((\U_MEMORIA|U_RAM|mem~312_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~229_q\,
	datab => \mem_address_s[1]~3_combout\,
	datac => \U_MEMORIA|U_RAM|mem~237_q\,
	datad => \U_MEMORIA|U_RAM|mem~312_combout\,
	combout => \U_MEMORIA|U_RAM|mem~313_combout\);

-- Location: FF_X24_Y19_N19
\U_MEMORIA|U_RAM|mem~173\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[7]~2_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~173_q\);

-- Location: LCCOMB_X20_Y22_N6
\U_MEMORIA|U_RAM|mem~165feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~165feeder_combout\ = \mem_data_in_s[7]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_data_in_s[7]~2_combout\,
	combout => \U_MEMORIA|U_RAM|mem~165feeder_combout\);

-- Location: FF_X20_Y22_N7
\U_MEMORIA|U_RAM|mem~165\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~165feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~165_q\);

-- Location: LCCOMB_X24_Y19_N12
\U_MEMORIA|U_RAM|mem~149feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~149feeder_combout\ = \mem_data_in_s[7]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_data_in_s[7]~2_combout\,
	combout => \U_MEMORIA|U_RAM|mem~149feeder_combout\);

-- Location: FF_X24_Y19_N13
\U_MEMORIA|U_RAM|mem~149\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~149feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~149_q\);

-- Location: LCCOMB_X26_Y19_N22
\U_MEMORIA|U_RAM|mem~157feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~157feeder_combout\ = \mem_data_in_s[7]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_data_in_s[7]~2_combout\,
	combout => \U_MEMORIA|U_RAM|mem~157feeder_combout\);

-- Location: FF_X26_Y19_N23
\U_MEMORIA|U_RAM|mem~157\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~157feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~157_q\);

-- Location: LCCOMB_X23_Y19_N20
\U_MEMORIA|U_RAM|mem~314\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~314_combout\ = (\mem_address_s[0]~4_combout\ & (((\U_MEMORIA|U_RAM|mem~157_q\) # (\mem_address_s[1]~3_combout\)))) # (!\mem_address_s[0]~4_combout\ & (\U_MEMORIA|U_RAM|mem~149_q\ & ((!\mem_address_s[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[0]~4_combout\,
	datab => \U_MEMORIA|U_RAM|mem~149_q\,
	datac => \U_MEMORIA|U_RAM|mem~157_q\,
	datad => \mem_address_s[1]~3_combout\,
	combout => \U_MEMORIA|U_RAM|mem~314_combout\);

-- Location: LCCOMB_X23_Y19_N6
\U_MEMORIA|U_RAM|mem~315\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~315_combout\ = (\mem_address_s[1]~3_combout\ & ((\U_MEMORIA|U_RAM|mem~314_combout\ & (\U_MEMORIA|U_RAM|mem~173_q\)) # (!\U_MEMORIA|U_RAM|mem~314_combout\ & ((\U_MEMORIA|U_RAM|mem~165_q\))))) # (!\mem_address_s[1]~3_combout\ & 
-- (((\U_MEMORIA|U_RAM|mem~314_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~173_q\,
	datab => \mem_address_s[1]~3_combout\,
	datac => \U_MEMORIA|U_RAM|mem~165_q\,
	datad => \U_MEMORIA|U_RAM|mem~314_combout\,
	combout => \U_MEMORIA|U_RAM|mem~315_combout\);

-- Location: LCCOMB_X19_Y21_N16
\U_MEMORIA|U_RAM|mem~316\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~316_combout\ = (\mem_address_s[2]~0_combout\ & (\mem_address_s[3]~1_combout\)) # (!\mem_address_s[2]~0_combout\ & ((\mem_address_s[3]~1_combout\ & (\U_MEMORIA|U_RAM|mem~313_combout\)) # (!\mem_address_s[3]~1_combout\ & 
-- ((\U_MEMORIA|U_RAM|mem~315_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[2]~0_combout\,
	datab => \mem_address_s[3]~1_combout\,
	datac => \U_MEMORIA|U_RAM|mem~313_combout\,
	datad => \U_MEMORIA|U_RAM|mem~315_combout\,
	combout => \U_MEMORIA|U_RAM|mem~316_combout\);

-- Location: LCCOMB_X20_Y21_N22
\U_MEMORIA|U_RAM|mem~197feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~197feeder_combout\ = \mem_data_in_s[7]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_data_in_s[7]~2_combout\,
	combout => \U_MEMORIA|U_RAM|mem~197feeder_combout\);

-- Location: FF_X20_Y21_N23
\U_MEMORIA|U_RAM|mem~197\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~197feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~197_q\);

-- Location: FF_X23_Y21_N27
\U_MEMORIA|U_RAM|mem~181\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[7]~2_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~181_q\);

-- Location: LCCOMB_X23_Y21_N26
\U_MEMORIA|U_RAM|mem~310\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~310_combout\ = (\mem_address_s[1]~3_combout\ & ((\U_MEMORIA|U_RAM|mem~197_q\) # ((\mem_address_s[0]~4_combout\)))) # (!\mem_address_s[1]~3_combout\ & (((\U_MEMORIA|U_RAM|mem~181_q\ & !\mem_address_s[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~197_q\,
	datab => \mem_address_s[1]~3_combout\,
	datac => \U_MEMORIA|U_RAM|mem~181_q\,
	datad => \mem_address_s[0]~4_combout\,
	combout => \U_MEMORIA|U_RAM|mem~310_combout\);

-- Location: FF_X23_Y21_N9
\U_MEMORIA|U_RAM|mem~205\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[7]~2_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~205_q\);

-- Location: FF_X22_Y21_N31
\U_MEMORIA|U_RAM|mem~189\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[7]~2_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~189_q\);

-- Location: LCCOMB_X23_Y21_N8
\U_MEMORIA|U_RAM|mem~311\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~311_combout\ = (\U_MEMORIA|U_RAM|mem~310_combout\ & (((\U_MEMORIA|U_RAM|mem~205_q\)) # (!\mem_address_s[0]~4_combout\))) # (!\U_MEMORIA|U_RAM|mem~310_combout\ & (\mem_address_s[0]~4_combout\ & ((\U_MEMORIA|U_RAM|mem~189_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~310_combout\,
	datab => \mem_address_s[0]~4_combout\,
	datac => \U_MEMORIA|U_RAM|mem~205_q\,
	datad => \U_MEMORIA|U_RAM|mem~189_q\,
	combout => \U_MEMORIA|U_RAM|mem~311_combout\);

-- Location: LCCOMB_X24_Y22_N16
\U_MEMORIA|U_RAM|mem~253feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~253feeder_combout\ = \mem_data_in_s[7]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_data_in_s[7]~2_combout\,
	combout => \U_MEMORIA|U_RAM|mem~253feeder_combout\);

-- Location: FF_X24_Y22_N17
\U_MEMORIA|U_RAM|mem~253\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~253feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~253_q\);

-- Location: FF_X23_Y22_N5
\U_MEMORIA|U_RAM|mem~269\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[7]~2_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~269_q\);

-- Location: LCCOMB_X26_Y20_N6
\U_MEMORIA|U_RAM|mem~261feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~261feeder_combout\ = \mem_data_in_s[7]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_data_in_s[7]~2_combout\,
	combout => \U_MEMORIA|U_RAM|mem~261feeder_combout\);

-- Location: FF_X26_Y20_N7
\U_MEMORIA|U_RAM|mem~261\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~261feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~261_q\);

-- Location: FF_X24_Y22_N27
\U_MEMORIA|U_RAM|mem~245\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[7]~2_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~245_q\);

-- Location: LCCOMB_X24_Y22_N26
\U_MEMORIA|U_RAM|mem~317\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~317_combout\ = (\mem_address_s[0]~4_combout\ & (((\mem_address_s[1]~3_combout\)))) # (!\mem_address_s[0]~4_combout\ & ((\mem_address_s[1]~3_combout\ & (\U_MEMORIA|U_RAM|mem~261_q\)) # (!\mem_address_s[1]~3_combout\ & 
-- ((\U_MEMORIA|U_RAM|mem~245_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[0]~4_combout\,
	datab => \U_MEMORIA|U_RAM|mem~261_q\,
	datac => \U_MEMORIA|U_RAM|mem~245_q\,
	datad => \mem_address_s[1]~3_combout\,
	combout => \U_MEMORIA|U_RAM|mem~317_combout\);

-- Location: LCCOMB_X23_Y22_N4
\U_MEMORIA|U_RAM|mem~318\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~318_combout\ = (\mem_address_s[0]~4_combout\ & ((\U_MEMORIA|U_RAM|mem~317_combout\ & ((\U_MEMORIA|U_RAM|mem~269_q\))) # (!\U_MEMORIA|U_RAM|mem~317_combout\ & (\U_MEMORIA|U_RAM|mem~253_q\)))) # (!\mem_address_s[0]~4_combout\ & 
-- (((\U_MEMORIA|U_RAM|mem~317_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~253_q\,
	datab => \mem_address_s[0]~4_combout\,
	datac => \U_MEMORIA|U_RAM|mem~269_q\,
	datad => \U_MEMORIA|U_RAM|mem~317_combout\,
	combout => \U_MEMORIA|U_RAM|mem~318_combout\);

-- Location: LCCOMB_X19_Y21_N10
\U_MEMORIA|U_RAM|mem~319\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~319_combout\ = (\mem_address_s[2]~0_combout\ & ((\U_MEMORIA|U_RAM|mem~316_combout\ & ((\U_MEMORIA|U_RAM|mem~318_combout\))) # (!\U_MEMORIA|U_RAM|mem~316_combout\ & (\U_MEMORIA|U_RAM|mem~311_combout\)))) # 
-- (!\mem_address_s[2]~0_combout\ & (\U_MEMORIA|U_RAM|mem~316_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[2]~0_combout\,
	datab => \U_MEMORIA|U_RAM|mem~316_combout\,
	datac => \U_MEMORIA|U_RAM|mem~311_combout\,
	datad => \U_MEMORIA|U_RAM|mem~318_combout\,
	combout => \U_MEMORIA|U_RAM|mem~319_combout\);

-- Location: FF_X23_Y23_N3
\U_MEMORIA|U_RAM|mem~109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[7]~2_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~478_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~109_q\);

-- Location: FF_X24_Y23_N15
\U_MEMORIA|U_RAM|mem~141\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[7]~2_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~480_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~141_q\);

-- Location: LCCOMB_X22_Y23_N6
\U_MEMORIA|U_RAM|mem~77feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~77feeder_combout\ = \mem_data_in_s[7]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_data_in_s[7]~2_combout\,
	combout => \U_MEMORIA|U_RAM|mem~77feeder_combout\);

-- Location: FF_X22_Y23_N7
\U_MEMORIA|U_RAM|mem~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~77feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~77_q\);

-- Location: FF_X23_Y23_N9
\U_MEMORIA|U_RAM|mem~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[7]~2_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~479_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~45_q\);

-- Location: LCCOMB_X23_Y23_N8
\U_MEMORIA|U_RAM|mem~327\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~327_combout\ = (\mem_address_s[2]~0_combout\ & ((\U_MEMORIA|U_RAM|mem~77_q\) # ((\mem_address_s[3]~1_combout\)))) # (!\mem_address_s[2]~0_combout\ & (((\U_MEMORIA|U_RAM|mem~45_q\ & !\mem_address_s[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~77_q\,
	datab => \mem_address_s[2]~0_combout\,
	datac => \U_MEMORIA|U_RAM|mem~45_q\,
	datad => \mem_address_s[3]~1_combout\,
	combout => \U_MEMORIA|U_RAM|mem~327_combout\);

-- Location: LCCOMB_X24_Y23_N14
\U_MEMORIA|U_RAM|mem~328\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~328_combout\ = (\mem_address_s[3]~1_combout\ & ((\U_MEMORIA|U_RAM|mem~327_combout\ & ((\U_MEMORIA|U_RAM|mem~141_q\))) # (!\U_MEMORIA|U_RAM|mem~327_combout\ & (\U_MEMORIA|U_RAM|mem~109_q\)))) # (!\mem_address_s[3]~1_combout\ & 
-- (((\U_MEMORIA|U_RAM|mem~327_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[3]~1_combout\,
	datab => \U_MEMORIA|U_RAM|mem~109_q\,
	datac => \U_MEMORIA|U_RAM|mem~141_q\,
	datad => \U_MEMORIA|U_RAM|mem~327_combout\,
	combout => \U_MEMORIA|U_RAM|mem~328_combout\);

-- Location: FF_X22_Y21_N1
\U_MEMORIA|U_RAM|mem~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[7]~2_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~61_q\);

-- Location: FF_X21_Y21_N23
\U_MEMORIA|U_RAM|mem~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[7]~2_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~125_q\);

-- Location: FF_X21_Y21_N1
\U_MEMORIA|U_RAM|mem~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[7]~2_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~29_q\);

-- Location: LCCOMB_X19_Y23_N4
\U_MEMORIA|U_RAM|mem~93feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~93feeder_combout\ = \mem_data_in_s[7]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_data_in_s[7]~2_combout\,
	combout => \U_MEMORIA|U_RAM|mem~93feeder_combout\);

-- Location: FF_X19_Y23_N5
\U_MEMORIA|U_RAM|mem~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~93feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~93_q\);

-- Location: LCCOMB_X21_Y21_N0
\U_MEMORIA|U_RAM|mem~320\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~320_combout\ = (\mem_address_s[2]~0_combout\ & (\mem_address_s[3]~1_combout\)) # (!\mem_address_s[2]~0_combout\ & ((\mem_address_s[3]~1_combout\ & ((\U_MEMORIA|U_RAM|mem~93_q\))) # (!\mem_address_s[3]~1_combout\ & 
-- (\U_MEMORIA|U_RAM|mem~29_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[2]~0_combout\,
	datab => \mem_address_s[3]~1_combout\,
	datac => \U_MEMORIA|U_RAM|mem~29_q\,
	datad => \U_MEMORIA|U_RAM|mem~93_q\,
	combout => \U_MEMORIA|U_RAM|mem~320_combout\);

-- Location: LCCOMB_X21_Y21_N22
\U_MEMORIA|U_RAM|mem~321\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~321_combout\ = (\mem_address_s[2]~0_combout\ & ((\U_MEMORIA|U_RAM|mem~320_combout\ & ((\U_MEMORIA|U_RAM|mem~125_q\))) # (!\U_MEMORIA|U_RAM|mem~320_combout\ & (\U_MEMORIA|U_RAM|mem~61_q\)))) # (!\mem_address_s[2]~0_combout\ & 
-- (((\U_MEMORIA|U_RAM|mem~320_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[2]~0_combout\,
	datab => \U_MEMORIA|U_RAM|mem~61_q\,
	datac => \U_MEMORIA|U_RAM|mem~125_q\,
	datad => \U_MEMORIA|U_RAM|mem~320_combout\,
	combout => \U_MEMORIA|U_RAM|mem~321_combout\);

-- Location: LCCOMB_X20_Y23_N6
\U_MEMORIA|U_RAM|mem~69feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~69feeder_combout\ = \mem_data_in_s[7]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_data_in_s[7]~2_combout\,
	combout => \U_MEMORIA|U_RAM|mem~69feeder_combout\);

-- Location: FF_X20_Y23_N7
\U_MEMORIA|U_RAM|mem~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~69feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~69_q\);

-- Location: FF_X21_Y22_N11
\U_MEMORIA|U_RAM|mem~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[7]~2_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~37_q\);

-- Location: LCCOMB_X21_Y22_N10
\U_MEMORIA|U_RAM|mem~322\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~322_combout\ = (\mem_address_s[2]~0_combout\ & ((\U_MEMORIA|U_RAM|mem~69_q\) # ((\mem_address_s[3]~1_combout\)))) # (!\mem_address_s[2]~0_combout\ & (((\U_MEMORIA|U_RAM|mem~37_q\ & !\mem_address_s[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[2]~0_combout\,
	datab => \U_MEMORIA|U_RAM|mem~69_q\,
	datac => \U_MEMORIA|U_RAM|mem~37_q\,
	datad => \mem_address_s[3]~1_combout\,
	combout => \U_MEMORIA|U_RAM|mem~322_combout\);

-- Location: FF_X20_Y22_N29
\U_MEMORIA|U_RAM|mem~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[7]~2_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~466_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~101_q\);

-- Location: FF_X21_Y22_N9
\U_MEMORIA|U_RAM|mem~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[7]~2_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~468_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~133_q\);

-- Location: LCCOMB_X21_Y22_N8
\U_MEMORIA|U_RAM|mem~323\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~323_combout\ = (\U_MEMORIA|U_RAM|mem~322_combout\ & (((\U_MEMORIA|U_RAM|mem~133_q\) # (!\mem_address_s[3]~1_combout\)))) # (!\U_MEMORIA|U_RAM|mem~322_combout\ & (\U_MEMORIA|U_RAM|mem~101_q\ & ((\mem_address_s[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~322_combout\,
	datab => \U_MEMORIA|U_RAM|mem~101_q\,
	datac => \U_MEMORIA|U_RAM|mem~133_q\,
	datad => \mem_address_s[3]~1_combout\,
	combout => \U_MEMORIA|U_RAM|mem~323_combout\);

-- Location: LCCOMB_X22_Y22_N14
\U_MEMORIA|U_RAM|mem~53feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~53feeder_combout\ = \mem_data_in_s[7]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_data_in_s[7]~2_combout\,
	combout => \U_MEMORIA|U_RAM|mem~53feeder_combout\);

-- Location: FF_X22_Y22_N15
\U_MEMORIA|U_RAM|mem~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~53feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~53_q\);

-- Location: FF_X21_Y23_N13
\U_MEMORIA|U_RAM|mem~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[7]~2_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~117_q\);

-- Location: LCCOMB_X22_Y23_N20
\U_MEMORIA|U_RAM|mem~85feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~85feeder_combout\ = \mem_data_in_s[7]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_data_in_s[7]~2_combout\,
	combout => \U_MEMORIA|U_RAM|mem~85feeder_combout\);

-- Location: FF_X22_Y23_N21
\U_MEMORIA|U_RAM|mem~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~85feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~85_q\);

-- Location: FF_X21_Y23_N7
\U_MEMORIA|U_RAM|mem~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[7]~2_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~21_q\);

-- Location: LCCOMB_X21_Y23_N6
\U_MEMORIA|U_RAM|mem~324\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~324_combout\ = (\mem_address_s[2]~0_combout\ & (((\mem_address_s[3]~1_combout\)))) # (!\mem_address_s[2]~0_combout\ & ((\mem_address_s[3]~1_combout\ & (\U_MEMORIA|U_RAM|mem~85_q\)) # (!\mem_address_s[3]~1_combout\ & 
-- ((\U_MEMORIA|U_RAM|mem~21_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~85_q\,
	datab => \mem_address_s[2]~0_combout\,
	datac => \U_MEMORIA|U_RAM|mem~21_q\,
	datad => \mem_address_s[3]~1_combout\,
	combout => \U_MEMORIA|U_RAM|mem~324_combout\);

-- Location: LCCOMB_X21_Y23_N12
\U_MEMORIA|U_RAM|mem~325\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~325_combout\ = (\mem_address_s[2]~0_combout\ & ((\U_MEMORIA|U_RAM|mem~324_combout\ & ((\U_MEMORIA|U_RAM|mem~117_q\))) # (!\U_MEMORIA|U_RAM|mem~324_combout\ & (\U_MEMORIA|U_RAM|mem~53_q\)))) # (!\mem_address_s[2]~0_combout\ & 
-- (((\U_MEMORIA|U_RAM|mem~324_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~53_q\,
	datab => \mem_address_s[2]~0_combout\,
	datac => \U_MEMORIA|U_RAM|mem~117_q\,
	datad => \U_MEMORIA|U_RAM|mem~324_combout\,
	combout => \U_MEMORIA|U_RAM|mem~325_combout\);

-- Location: LCCOMB_X22_Y19_N2
\U_MEMORIA|U_RAM|mem~326\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~326_combout\ = (\mem_address_s[0]~4_combout\ & (\mem_address_s[1]~3_combout\)) # (!\mem_address_s[0]~4_combout\ & ((\mem_address_s[1]~3_combout\ & (\U_MEMORIA|U_RAM|mem~323_combout\)) # (!\mem_address_s[1]~3_combout\ & 
-- ((\U_MEMORIA|U_RAM|mem~325_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[0]~4_combout\,
	datab => \mem_address_s[1]~3_combout\,
	datac => \U_MEMORIA|U_RAM|mem~323_combout\,
	datad => \U_MEMORIA|U_RAM|mem~325_combout\,
	combout => \U_MEMORIA|U_RAM|mem~326_combout\);

-- Location: LCCOMB_X22_Y19_N20
\U_MEMORIA|U_RAM|mem~329\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~329_combout\ = (\mem_address_s[0]~4_combout\ & ((\U_MEMORIA|U_RAM|mem~326_combout\ & (\U_MEMORIA|U_RAM|mem~328_combout\)) # (!\U_MEMORIA|U_RAM|mem~326_combout\ & ((\U_MEMORIA|U_RAM|mem~321_combout\))))) # 
-- (!\mem_address_s[0]~4_combout\ & (((\U_MEMORIA|U_RAM|mem~326_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[0]~4_combout\,
	datab => \U_MEMORIA|U_RAM|mem~328_combout\,
	datac => \U_MEMORIA|U_RAM|mem~321_combout\,
	datad => \U_MEMORIA|U_RAM|mem~326_combout\,
	combout => \U_MEMORIA|U_RAM|mem~329_combout\);

-- Location: LCCOMB_X22_Y17_N10
\U_MEMORIA|data_out[7]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|data_out[7]~8_combout\ = (\U_MEMORIA|data_out[1]~1_combout\ & ((\mem_address_s[4]~2_combout\ & (\U_MEMORIA|U_RAM|mem~319_combout\)) # (!\mem_address_s[4]~2_combout\ & ((\U_MEMORIA|U_RAM|mem~329_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|data_out[1]~1_combout\,
	datab => \mem_address_s[4]~2_combout\,
	datac => \U_MEMORIA|U_RAM|mem~319_combout\,
	datad => \U_MEMORIA|U_RAM|mem~329_combout\,
	combout => \U_MEMORIA|data_out[7]~8_combout\);

-- Location: LCCOMB_X22_Y17_N4
\U_MEMORIA|data_out[7]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|data_out[7]~9_combout\ = (\U_ADMIN|estado.ESPERA~q\ & (((!\U_MEMORIA|data_out[2]~7_combout\ & !\U_MEMORIA|data_out[7]~8_combout\)))) # (!\U_ADMIN|estado.ESPERA~q\ & ((\U_GESTOR|addr_rd\(5)) # ((!\U_MEMORIA|data_out[2]~7_combout\ & 
-- !\U_MEMORIA|data_out[7]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|estado.ESPERA~q\,
	datab => \U_GESTOR|addr_rd\(5),
	datac => \U_MEMORIA|data_out[2]~7_combout\,
	datad => \U_MEMORIA|data_out[7]~8_combout\,
	combout => \U_MEMORIA|data_out[7]~9_combout\);

-- Location: FF_X22_Y17_N5
\U_GESTOR|id_ram[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|data_out[7]~9_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \U_GESTOR|id_ram[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GESTOR|id_ram\(7));

-- Location: LCCOMB_X23_Y23_N6
\U_MEMORIA|U_RAM|mem~107feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~107feeder_combout\ = \mem_data_in_s[7]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_data_in_s[7]~2_combout\,
	combout => \U_MEMORIA|U_RAM|mem~107feeder_combout\);

-- Location: FF_X23_Y23_N7
\U_MEMORIA|U_RAM|mem~107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~107feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~478_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~107_q\);

-- Location: FF_X19_Y23_N1
\U_MEMORIA|U_RAM|mem~139\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[7]~2_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~480_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~139_q\);

-- Location: LCCOMB_X22_Y23_N8
\U_MEMORIA|U_RAM|mem~75feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~75feeder_combout\ = \mem_data_in_s[7]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_data_in_s[7]~2_combout\,
	combout => \U_MEMORIA|U_RAM|mem~75feeder_combout\);

-- Location: FF_X22_Y23_N9
\U_MEMORIA|U_RAM|mem~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~75feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~75_q\);

-- Location: LCCOMB_X23_Y23_N12
\U_MEMORIA|U_RAM|mem~43feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~43feeder_combout\ = \mem_data_in_s[7]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_data_in_s[7]~2_combout\,
	combout => \U_MEMORIA|U_RAM|mem~43feeder_combout\);

-- Location: FF_X23_Y23_N13
\U_MEMORIA|U_RAM|mem~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~43feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~479_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~43_q\);

-- Location: LCCOMB_X19_Y23_N2
\U_MEMORIA|U_RAM|mem~367\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~367_combout\ = (\mem_address_s[3]~1_combout\ & (((\mem_address_s[2]~0_combout\)))) # (!\mem_address_s[3]~1_combout\ & ((\mem_address_s[2]~0_combout\ & (\U_MEMORIA|U_RAM|mem~75_q\)) # (!\mem_address_s[2]~0_combout\ & 
-- ((\U_MEMORIA|U_RAM|mem~43_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~75_q\,
	datab => \U_MEMORIA|U_RAM|mem~43_q\,
	datac => \mem_address_s[3]~1_combout\,
	datad => \mem_address_s[2]~0_combout\,
	combout => \U_MEMORIA|U_RAM|mem~367_combout\);

-- Location: LCCOMB_X19_Y23_N0
\U_MEMORIA|U_RAM|mem~368\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~368_combout\ = (\mem_address_s[3]~1_combout\ & ((\U_MEMORIA|U_RAM|mem~367_combout\ & ((\U_MEMORIA|U_RAM|mem~139_q\))) # (!\U_MEMORIA|U_RAM|mem~367_combout\ & (\U_MEMORIA|U_RAM|mem~107_q\)))) # (!\mem_address_s[3]~1_combout\ & 
-- (((\U_MEMORIA|U_RAM|mem~367_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[3]~1_combout\,
	datab => \U_MEMORIA|U_RAM|mem~107_q\,
	datac => \U_MEMORIA|U_RAM|mem~139_q\,
	datad => \U_MEMORIA|U_RAM|mem~367_combout\,
	combout => \U_MEMORIA|U_RAM|mem~368_combout\);

-- Location: FF_X21_Y21_N27
\U_MEMORIA|U_RAM|mem~123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[7]~2_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~123_q\);

-- Location: FF_X22_Y21_N27
\U_MEMORIA|U_RAM|mem~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[7]~2_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~59_q\);

-- Location: FF_X21_Y21_N9
\U_MEMORIA|U_RAM|mem~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[7]~2_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~27_q\);

-- Location: LCCOMB_X19_Y23_N12
\U_MEMORIA|U_RAM|mem~91feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~91feeder_combout\ = \mem_data_in_s[7]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_data_in_s[7]~2_combout\,
	combout => \U_MEMORIA|U_RAM|mem~91feeder_combout\);

-- Location: FF_X19_Y23_N13
\U_MEMORIA|U_RAM|mem~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~91feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~91_q\);

-- Location: LCCOMB_X21_Y21_N8
\U_MEMORIA|U_RAM|mem~360\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~360_combout\ = (\mem_address_s[2]~0_combout\ & (\mem_address_s[3]~1_combout\)) # (!\mem_address_s[2]~0_combout\ & ((\mem_address_s[3]~1_combout\ & ((\U_MEMORIA|U_RAM|mem~91_q\))) # (!\mem_address_s[3]~1_combout\ & 
-- (\U_MEMORIA|U_RAM|mem~27_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[2]~0_combout\,
	datab => \mem_address_s[3]~1_combout\,
	datac => \U_MEMORIA|U_RAM|mem~27_q\,
	datad => \U_MEMORIA|U_RAM|mem~91_q\,
	combout => \U_MEMORIA|U_RAM|mem~360_combout\);

-- Location: LCCOMB_X22_Y21_N26
\U_MEMORIA|U_RAM|mem~361\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~361_combout\ = (\mem_address_s[2]~0_combout\ & ((\U_MEMORIA|U_RAM|mem~360_combout\ & (\U_MEMORIA|U_RAM|mem~123_q\)) # (!\U_MEMORIA|U_RAM|mem~360_combout\ & ((\U_MEMORIA|U_RAM|mem~59_q\))))) # (!\mem_address_s[2]~0_combout\ & 
-- (((\U_MEMORIA|U_RAM|mem~360_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~123_q\,
	datab => \mem_address_s[2]~0_combout\,
	datac => \U_MEMORIA|U_RAM|mem~59_q\,
	datad => \U_MEMORIA|U_RAM|mem~360_combout\,
	combout => \U_MEMORIA|U_RAM|mem~361_combout\);

-- Location: LCCOMB_X22_Y23_N14
\U_MEMORIA|U_RAM|mem~83feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~83feeder_combout\ = \mem_data_in_s[7]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_data_in_s[7]~2_combout\,
	combout => \U_MEMORIA|U_RAM|mem~83feeder_combout\);

-- Location: FF_X22_Y23_N15
\U_MEMORIA|U_RAM|mem~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~83feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~83_q\);

-- Location: FF_X21_Y23_N31
\U_MEMORIA|U_RAM|mem~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[7]~2_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~19_q\);

-- Location: LCCOMB_X21_Y23_N30
\U_MEMORIA|U_RAM|mem~364\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~364_combout\ = (\mem_address_s[2]~0_combout\ & (((\mem_address_s[3]~1_combout\)))) # (!\mem_address_s[2]~0_combout\ & ((\mem_address_s[3]~1_combout\ & (\U_MEMORIA|U_RAM|mem~83_q\)) # (!\mem_address_s[3]~1_combout\ & 
-- ((\U_MEMORIA|U_RAM|mem~19_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~83_q\,
	datab => \mem_address_s[2]~0_combout\,
	datac => \U_MEMORIA|U_RAM|mem~19_q\,
	datad => \mem_address_s[3]~1_combout\,
	combout => \U_MEMORIA|U_RAM|mem~364_combout\);

-- Location: LCCOMB_X22_Y22_N16
\U_MEMORIA|U_RAM|mem~51feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~51feeder_combout\ = \mem_data_in_s[7]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_data_in_s[7]~2_combout\,
	combout => \U_MEMORIA|U_RAM|mem~51feeder_combout\);

-- Location: FF_X22_Y22_N17
\U_MEMORIA|U_RAM|mem~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~51feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~51_q\);

-- Location: FF_X21_Y23_N5
\U_MEMORIA|U_RAM|mem~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[7]~2_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~115_q\);

-- Location: LCCOMB_X21_Y23_N4
\U_MEMORIA|U_RAM|mem~365\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~365_combout\ = (\U_MEMORIA|U_RAM|mem~364_combout\ & (((\U_MEMORIA|U_RAM|mem~115_q\) # (!\mem_address_s[2]~0_combout\)))) # (!\U_MEMORIA|U_RAM|mem~364_combout\ & (\U_MEMORIA|U_RAM|mem~51_q\ & ((\mem_address_s[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~364_combout\,
	datab => \U_MEMORIA|U_RAM|mem~51_q\,
	datac => \U_MEMORIA|U_RAM|mem~115_q\,
	datad => \mem_address_s[2]~0_combout\,
	combout => \U_MEMORIA|U_RAM|mem~365_combout\);

-- Location: LCCOMB_X20_Y23_N26
\U_MEMORIA|U_RAM|mem~67feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~67feeder_combout\ = \mem_data_in_s[7]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_data_in_s[7]~2_combout\,
	combout => \U_MEMORIA|U_RAM|mem~67feeder_combout\);

-- Location: FF_X20_Y23_N27
\U_MEMORIA|U_RAM|mem~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~67feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~67_q\);

-- Location: FF_X21_Y22_N31
\U_MEMORIA|U_RAM|mem~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[7]~2_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~35_q\);

-- Location: LCCOMB_X21_Y22_N30
\U_MEMORIA|U_RAM|mem~362\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~362_combout\ = (\mem_address_s[2]~0_combout\ & ((\U_MEMORIA|U_RAM|mem~67_q\) # ((\mem_address_s[3]~1_combout\)))) # (!\mem_address_s[2]~0_combout\ & (((\U_MEMORIA|U_RAM|mem~35_q\ & !\mem_address_s[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[2]~0_combout\,
	datab => \U_MEMORIA|U_RAM|mem~67_q\,
	datac => \U_MEMORIA|U_RAM|mem~35_q\,
	datad => \mem_address_s[3]~1_combout\,
	combout => \U_MEMORIA|U_RAM|mem~362_combout\);

-- Location: LCCOMB_X20_Y22_N20
\U_MEMORIA|U_RAM|mem~99feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~99feeder_combout\ = \mem_data_in_s[7]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_data_in_s[7]~2_combout\,
	combout => \U_MEMORIA|U_RAM|mem~99feeder_combout\);

-- Location: FF_X20_Y22_N21
\U_MEMORIA|U_RAM|mem~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~99feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~466_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~99_q\);

-- Location: FF_X21_Y22_N5
\U_MEMORIA|U_RAM|mem~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[7]~2_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~468_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~131_q\);

-- Location: LCCOMB_X21_Y22_N4
\U_MEMORIA|U_RAM|mem~363\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~363_combout\ = (\U_MEMORIA|U_RAM|mem~362_combout\ & (((\U_MEMORIA|U_RAM|mem~131_q\) # (!\mem_address_s[3]~1_combout\)))) # (!\U_MEMORIA|U_RAM|mem~362_combout\ & (\U_MEMORIA|U_RAM|mem~99_q\ & ((\mem_address_s[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~362_combout\,
	datab => \U_MEMORIA|U_RAM|mem~99_q\,
	datac => \U_MEMORIA|U_RAM|mem~131_q\,
	datad => \mem_address_s[3]~1_combout\,
	combout => \U_MEMORIA|U_RAM|mem~363_combout\);

-- Location: LCCOMB_X22_Y19_N16
\U_MEMORIA|U_RAM|mem~366\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~366_combout\ = (\mem_address_s[0]~4_combout\ & (\mem_address_s[1]~3_combout\)) # (!\mem_address_s[0]~4_combout\ & ((\mem_address_s[1]~3_combout\ & ((\U_MEMORIA|U_RAM|mem~363_combout\))) # (!\mem_address_s[1]~3_combout\ & 
-- (\U_MEMORIA|U_RAM|mem~365_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[0]~4_combout\,
	datab => \mem_address_s[1]~3_combout\,
	datac => \U_MEMORIA|U_RAM|mem~365_combout\,
	datad => \U_MEMORIA|U_RAM|mem~363_combout\,
	combout => \U_MEMORIA|U_RAM|mem~366_combout\);

-- Location: LCCOMB_X22_Y19_N10
\U_MEMORIA|U_RAM|mem~369\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~369_combout\ = (\mem_address_s[0]~4_combout\ & ((\U_MEMORIA|U_RAM|mem~366_combout\ & (\U_MEMORIA|U_RAM|mem~368_combout\)) # (!\U_MEMORIA|U_RAM|mem~366_combout\ & ((\U_MEMORIA|U_RAM|mem~361_combout\))))) # 
-- (!\mem_address_s[0]~4_combout\ & (((\U_MEMORIA|U_RAM|mem~366_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[0]~4_combout\,
	datab => \U_MEMORIA|U_RAM|mem~368_combout\,
	datac => \U_MEMORIA|U_RAM|mem~361_combout\,
	datad => \U_MEMORIA|U_RAM|mem~366_combout\,
	combout => \U_MEMORIA|U_RAM|mem~369_combout\);

-- Location: FF_X19_Y20_N25
\U_MEMORIA|U_RAM|mem~227\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \mem_data_in_s[7]~2_combout\,
	ena => \U_MEMORIA|U_RAM|mem~435_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~227_q\);

-- Location: FF_X19_Y21_N31
\U_MEMORIA|U_RAM|mem~235\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[7]~2_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~235_q\);

-- Location: LCCOMB_X20_Y21_N2
\U_MEMORIA|U_RAM|mem~219feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~219feeder_combout\ = \mem_data_in_s[7]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_data_in_s[7]~2_combout\,
	combout => \U_MEMORIA|U_RAM|mem~219feeder_combout\);

-- Location: FF_X20_Y21_N3
\U_MEMORIA|U_RAM|mem~219\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~219feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~433_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~219_q\);

-- Location: FF_X19_Y21_N25
\U_MEMORIA|U_RAM|mem~211\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[7]~2_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~211_q\);

-- Location: LCCOMB_X19_Y21_N24
\U_MEMORIA|U_RAM|mem~352\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~352_combout\ = (\mem_address_s[0]~4_combout\ & ((\U_MEMORIA|U_RAM|mem~219_q\) # ((\mem_address_s[1]~3_combout\)))) # (!\mem_address_s[0]~4_combout\ & (((\U_MEMORIA|U_RAM|mem~211_q\ & !\mem_address_s[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~219_q\,
	datab => \mem_address_s[0]~4_combout\,
	datac => \U_MEMORIA|U_RAM|mem~211_q\,
	datad => \mem_address_s[1]~3_combout\,
	combout => \U_MEMORIA|U_RAM|mem~352_combout\);

-- Location: LCCOMB_X19_Y21_N30
\U_MEMORIA|U_RAM|mem~353\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~353_combout\ = (\mem_address_s[1]~3_combout\ & ((\U_MEMORIA|U_RAM|mem~352_combout\ & ((\U_MEMORIA|U_RAM|mem~235_q\))) # (!\U_MEMORIA|U_RAM|mem~352_combout\ & (\U_MEMORIA|U_RAM|mem~227_q\)))) # (!\mem_address_s[1]~3_combout\ & 
-- (((\U_MEMORIA|U_RAM|mem~352_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~227_q\,
	datab => \mem_address_s[1]~3_combout\,
	datac => \U_MEMORIA|U_RAM|mem~235_q\,
	datad => \U_MEMORIA|U_RAM|mem~352_combout\,
	combout => \U_MEMORIA|U_RAM|mem~353_combout\);

-- Location: LCCOMB_X20_Y22_N30
\U_MEMORIA|U_RAM|mem~163feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~163feeder_combout\ = \mem_data_in_s[7]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_data_in_s[7]~2_combout\,
	combout => \U_MEMORIA|U_RAM|mem~163feeder_combout\);

-- Location: FF_X20_Y22_N31
\U_MEMORIA|U_RAM|mem~163\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~163feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~163_q\);

-- Location: FF_X24_Y19_N23
\U_MEMORIA|U_RAM|mem~171\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[7]~2_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~171_q\);

-- Location: LCCOMB_X26_Y19_N30
\U_MEMORIA|U_RAM|mem~155feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~155feeder_combout\ = \mem_data_in_s[7]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_data_in_s[7]~2_combout\,
	combout => \U_MEMORIA|U_RAM|mem~155feeder_combout\);

-- Location: FF_X26_Y19_N31
\U_MEMORIA|U_RAM|mem~155\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~155feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~155_q\);

-- Location: FF_X24_Y19_N17
\U_MEMORIA|U_RAM|mem~147\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[7]~2_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~147_q\);

-- Location: LCCOMB_X24_Y19_N16
\U_MEMORIA|U_RAM|mem~354\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~354_combout\ = (\mem_address_s[1]~3_combout\ & (((\mem_address_s[0]~4_combout\)))) # (!\mem_address_s[1]~3_combout\ & ((\mem_address_s[0]~4_combout\ & (\U_MEMORIA|U_RAM|mem~155_q\)) # (!\mem_address_s[0]~4_combout\ & 
-- ((\U_MEMORIA|U_RAM|mem~147_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~155_q\,
	datab => \mem_address_s[1]~3_combout\,
	datac => \U_MEMORIA|U_RAM|mem~147_q\,
	datad => \mem_address_s[0]~4_combout\,
	combout => \U_MEMORIA|U_RAM|mem~354_combout\);

-- Location: LCCOMB_X24_Y19_N22
\U_MEMORIA|U_RAM|mem~355\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~355_combout\ = (\mem_address_s[1]~3_combout\ & ((\U_MEMORIA|U_RAM|mem~354_combout\ & ((\U_MEMORIA|U_RAM|mem~171_q\))) # (!\U_MEMORIA|U_RAM|mem~354_combout\ & (\U_MEMORIA|U_RAM|mem~163_q\)))) # (!\mem_address_s[1]~3_combout\ & 
-- (((\U_MEMORIA|U_RAM|mem~354_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[1]~3_combout\,
	datab => \U_MEMORIA|U_RAM|mem~163_q\,
	datac => \U_MEMORIA|U_RAM|mem~171_q\,
	datad => \U_MEMORIA|U_RAM|mem~354_combout\,
	combout => \U_MEMORIA|U_RAM|mem~355_combout\);

-- Location: LCCOMB_X21_Y20_N28
\U_MEMORIA|U_RAM|mem~356\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~356_combout\ = (\mem_address_s[2]~0_combout\ & (((\mem_address_s[3]~1_combout\)))) # (!\mem_address_s[2]~0_combout\ & ((\mem_address_s[3]~1_combout\ & (\U_MEMORIA|U_RAM|mem~353_combout\)) # (!\mem_address_s[3]~1_combout\ & 
-- ((\U_MEMORIA|U_RAM|mem~355_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~353_combout\,
	datab => \mem_address_s[2]~0_combout\,
	datac => \U_MEMORIA|U_RAM|mem~355_combout\,
	datad => \mem_address_s[3]~1_combout\,
	combout => \U_MEMORIA|U_RAM|mem~356_combout\);

-- Location: FF_X23_Y21_N13
\U_MEMORIA|U_RAM|mem~203\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[7]~2_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~203_q\);

-- Location: FF_X22_Y21_N5
\U_MEMORIA|U_RAM|mem~187\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[7]~2_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~187_q\);

-- Location: LCCOMB_X23_Y22_N20
\U_MEMORIA|U_RAM|mem~195feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~195feeder_combout\ = \mem_data_in_s[7]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_data_in_s[7]~2_combout\,
	combout => \U_MEMORIA|U_RAM|mem~195feeder_combout\);

-- Location: FF_X23_Y22_N21
\U_MEMORIA|U_RAM|mem~195\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~195feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~195_q\);

-- Location: FF_X23_Y21_N7
\U_MEMORIA|U_RAM|mem~179\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[7]~2_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~179_q\);

-- Location: LCCOMB_X23_Y21_N6
\U_MEMORIA|U_RAM|mem~350\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~350_combout\ = (\mem_address_s[1]~3_combout\ & ((\U_MEMORIA|U_RAM|mem~195_q\) # ((\mem_address_s[0]~4_combout\)))) # (!\mem_address_s[1]~3_combout\ & (((\U_MEMORIA|U_RAM|mem~179_q\ & !\mem_address_s[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~195_q\,
	datab => \mem_address_s[1]~3_combout\,
	datac => \U_MEMORIA|U_RAM|mem~179_q\,
	datad => \mem_address_s[0]~4_combout\,
	combout => \U_MEMORIA|U_RAM|mem~350_combout\);

-- Location: LCCOMB_X22_Y21_N4
\U_MEMORIA|U_RAM|mem~351\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~351_combout\ = (\mem_address_s[0]~4_combout\ & ((\U_MEMORIA|U_RAM|mem~350_combout\ & (\U_MEMORIA|U_RAM|mem~203_q\)) # (!\U_MEMORIA|U_RAM|mem~350_combout\ & ((\U_MEMORIA|U_RAM|mem~187_q\))))) # (!\mem_address_s[0]~4_combout\ & 
-- (((\U_MEMORIA|U_RAM|mem~350_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~203_q\,
	datab => \mem_address_s[0]~4_combout\,
	datac => \U_MEMORIA|U_RAM|mem~187_q\,
	datad => \U_MEMORIA|U_RAM|mem~350_combout\,
	combout => \U_MEMORIA|U_RAM|mem~351_combout\);

-- Location: FF_X24_Y22_N25
\U_MEMORIA|U_RAM|mem~251\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[7]~2_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~251_q\);

-- Location: FF_X23_Y22_N15
\U_MEMORIA|U_RAM|mem~267\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[7]~2_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~267_q\);

-- Location: FF_X24_Y22_N3
\U_MEMORIA|U_RAM|mem~243\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[7]~2_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~243_q\);

-- Location: LCCOMB_X26_Y20_N22
\U_MEMORIA|U_RAM|mem~259feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~259feeder_combout\ = \mem_data_in_s[7]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_data_in_s[7]~2_combout\,
	combout => \U_MEMORIA|U_RAM|mem~259feeder_combout\);

-- Location: FF_X26_Y20_N23
\U_MEMORIA|U_RAM|mem~259\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~259feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~259_q\);

-- Location: LCCOMB_X24_Y22_N2
\U_MEMORIA|U_RAM|mem~357\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~357_combout\ = (\mem_address_s[0]~4_combout\ & (\mem_address_s[1]~3_combout\)) # (!\mem_address_s[0]~4_combout\ & ((\mem_address_s[1]~3_combout\ & ((\U_MEMORIA|U_RAM|mem~259_q\))) # (!\mem_address_s[1]~3_combout\ & 
-- (\U_MEMORIA|U_RAM|mem~243_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[0]~4_combout\,
	datab => \mem_address_s[1]~3_combout\,
	datac => \U_MEMORIA|U_RAM|mem~243_q\,
	datad => \U_MEMORIA|U_RAM|mem~259_q\,
	combout => \U_MEMORIA|U_RAM|mem~357_combout\);

-- Location: LCCOMB_X23_Y22_N14
\U_MEMORIA|U_RAM|mem~358\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~358_combout\ = (\mem_address_s[0]~4_combout\ & ((\U_MEMORIA|U_RAM|mem~357_combout\ & ((\U_MEMORIA|U_RAM|mem~267_q\))) # (!\U_MEMORIA|U_RAM|mem~357_combout\ & (\U_MEMORIA|U_RAM|mem~251_q\)))) # (!\mem_address_s[0]~4_combout\ & 
-- (((\U_MEMORIA|U_RAM|mem~357_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~251_q\,
	datab => \mem_address_s[0]~4_combout\,
	datac => \U_MEMORIA|U_RAM|mem~267_q\,
	datad => \U_MEMORIA|U_RAM|mem~357_combout\,
	combout => \U_MEMORIA|U_RAM|mem~358_combout\);

-- Location: LCCOMB_X21_Y20_N14
\U_MEMORIA|U_RAM|mem~359\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~359_combout\ = (\mem_address_s[2]~0_combout\ & ((\U_MEMORIA|U_RAM|mem~356_combout\ & ((\U_MEMORIA|U_RAM|mem~358_combout\))) # (!\U_MEMORIA|U_RAM|mem~356_combout\ & (\U_MEMORIA|U_RAM|mem~351_combout\)))) # 
-- (!\mem_address_s[2]~0_combout\ & (\U_MEMORIA|U_RAM|mem~356_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[2]~0_combout\,
	datab => \U_MEMORIA|U_RAM|mem~356_combout\,
	datac => \U_MEMORIA|U_RAM|mem~351_combout\,
	datad => \U_MEMORIA|U_RAM|mem~358_combout\,
	combout => \U_MEMORIA|U_RAM|mem~359_combout\);

-- Location: LCCOMB_X22_Y17_N18
\U_MEMORIA|data_out[5]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|data_out[5]~12_combout\ = (\U_MEMORIA|data_out[1]~1_combout\ & ((\mem_address_s[4]~2_combout\ & ((\U_MEMORIA|U_RAM|mem~359_combout\))) # (!\mem_address_s[4]~2_combout\ & (\U_MEMORIA|U_RAM|mem~369_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|data_out[1]~1_combout\,
	datab => \mem_address_s[4]~2_combout\,
	datac => \U_MEMORIA|U_RAM|mem~369_combout\,
	datad => \U_MEMORIA|U_RAM|mem~359_combout\,
	combout => \U_MEMORIA|data_out[5]~12_combout\);

-- Location: LCCOMB_X22_Y17_N8
\U_MEMORIA|data_out[5]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|data_out[5]~13_combout\ = (\U_ADMIN|estado.ESPERA~q\ & (((!\U_MEMORIA|data_out[2]~7_combout\ & !\U_MEMORIA|data_out[5]~12_combout\)))) # (!\U_ADMIN|estado.ESPERA~q\ & ((\U_GESTOR|addr_rd\(5)) # ((!\U_MEMORIA|data_out[2]~7_combout\ & 
-- !\U_MEMORIA|data_out[5]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|estado.ESPERA~q\,
	datab => \U_GESTOR|addr_rd\(5),
	datac => \U_MEMORIA|data_out[2]~7_combout\,
	datad => \U_MEMORIA|data_out[5]~12_combout\,
	combout => \U_MEMORIA|data_out[5]~13_combout\);

-- Location: FF_X22_Y17_N9
\U_GESTOR|id_ram[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|data_out[5]~13_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \U_GESTOR|id_ram[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GESTOR|id_ram\(5));

-- Location: LCCOMB_X24_Y23_N0
\U_MEMORIA|U_RAM|mem~76feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~76feeder_combout\ = \mem_data_in_s[7]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_data_in_s[7]~2_combout\,
	combout => \U_MEMORIA|U_RAM|mem~76feeder_combout\);

-- Location: FF_X24_Y23_N1
\U_MEMORIA|U_RAM|mem~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~76feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~76_q\);

-- Location: FF_X24_Y23_N31
\U_MEMORIA|U_RAM|mem~140\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[7]~2_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~480_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~140_q\);

-- Location: LCCOMB_X23_Y23_N14
\U_MEMORIA|U_RAM|mem~108feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~108feeder_combout\ = \mem_data_in_s[7]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_data_in_s[7]~2_combout\,
	combout => \U_MEMORIA|U_RAM|mem~108feeder_combout\);

-- Location: FF_X23_Y23_N15
\U_MEMORIA|U_RAM|mem~108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~108feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~478_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~108_q\);

-- Location: FF_X23_Y23_N29
\U_MEMORIA|U_RAM|mem~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[7]~2_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~479_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~44_q\);

-- Location: LCCOMB_X23_Y23_N28
\U_MEMORIA|U_RAM|mem~347\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~347_combout\ = (\mem_address_s[2]~0_combout\ & (((\mem_address_s[3]~1_combout\)))) # (!\mem_address_s[2]~0_combout\ & ((\mem_address_s[3]~1_combout\ & (\U_MEMORIA|U_RAM|mem~108_q\)) # (!\mem_address_s[3]~1_combout\ & 
-- ((\U_MEMORIA|U_RAM|mem~44_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~108_q\,
	datab => \mem_address_s[2]~0_combout\,
	datac => \U_MEMORIA|U_RAM|mem~44_q\,
	datad => \mem_address_s[3]~1_combout\,
	combout => \U_MEMORIA|U_RAM|mem~347_combout\);

-- Location: LCCOMB_X24_Y23_N30
\U_MEMORIA|U_RAM|mem~348\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~348_combout\ = (\mem_address_s[2]~0_combout\ & ((\U_MEMORIA|U_RAM|mem~347_combout\ & ((\U_MEMORIA|U_RAM|mem~140_q\))) # (!\U_MEMORIA|U_RAM|mem~347_combout\ & (\U_MEMORIA|U_RAM|mem~76_q\)))) # (!\mem_address_s[2]~0_combout\ & 
-- (((\U_MEMORIA|U_RAM|mem~347_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[2]~0_combout\,
	datab => \U_MEMORIA|U_RAM|mem~76_q\,
	datac => \U_MEMORIA|U_RAM|mem~140_q\,
	datad => \U_MEMORIA|U_RAM|mem~347_combout\,
	combout => \U_MEMORIA|U_RAM|mem~348_combout\);

-- Location: LCCOMB_X19_Y23_N14
\U_MEMORIA|U_RAM|mem~92feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~92feeder_combout\ = \mem_data_in_s[7]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_data_in_s[7]~2_combout\,
	combout => \U_MEMORIA|U_RAM|mem~92feeder_combout\);

-- Location: FF_X19_Y23_N15
\U_MEMORIA|U_RAM|mem~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~92feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~92_q\);

-- Location: FF_X21_Y21_N7
\U_MEMORIA|U_RAM|mem~124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[7]~2_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~124_q\);

-- Location: LCCOMB_X22_Y22_N28
\U_MEMORIA|U_RAM|mem~60feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~60feeder_combout\ = \mem_data_in_s[7]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_data_in_s[7]~2_combout\,
	combout => \U_MEMORIA|U_RAM|mem~60feeder_combout\);

-- Location: FF_X22_Y22_N29
\U_MEMORIA|U_RAM|mem~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~60feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~60_q\);

-- Location: FF_X21_Y21_N17
\U_MEMORIA|U_RAM|mem~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[7]~2_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~28_q\);

-- Location: LCCOMB_X21_Y21_N16
\U_MEMORIA|U_RAM|mem~342\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~342_combout\ = (\mem_address_s[3]~1_combout\ & (((\mem_address_s[2]~0_combout\)))) # (!\mem_address_s[3]~1_combout\ & ((\mem_address_s[2]~0_combout\ & (\U_MEMORIA|U_RAM|mem~60_q\)) # (!\mem_address_s[2]~0_combout\ & 
-- ((\U_MEMORIA|U_RAM|mem~28_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[3]~1_combout\,
	datab => \U_MEMORIA|U_RAM|mem~60_q\,
	datac => \U_MEMORIA|U_RAM|mem~28_q\,
	datad => \mem_address_s[2]~0_combout\,
	combout => \U_MEMORIA|U_RAM|mem~342_combout\);

-- Location: LCCOMB_X21_Y21_N6
\U_MEMORIA|U_RAM|mem~343\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~343_combout\ = (\mem_address_s[3]~1_combout\ & ((\U_MEMORIA|U_RAM|mem~342_combout\ & ((\U_MEMORIA|U_RAM|mem~124_q\))) # (!\U_MEMORIA|U_RAM|mem~342_combout\ & (\U_MEMORIA|U_RAM|mem~92_q\)))) # (!\mem_address_s[3]~1_combout\ & 
-- (((\U_MEMORIA|U_RAM|mem~342_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[3]~1_combout\,
	datab => \U_MEMORIA|U_RAM|mem~92_q\,
	datac => \U_MEMORIA|U_RAM|mem~124_q\,
	datad => \U_MEMORIA|U_RAM|mem~342_combout\,
	combout => \U_MEMORIA|U_RAM|mem~343_combout\);

-- Location: LCCOMB_X22_Y22_N22
\U_MEMORIA|U_RAM|mem~52feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~52feeder_combout\ = \mem_data_in_s[7]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_data_in_s[7]~2_combout\,
	combout => \U_MEMORIA|U_RAM|mem~52feeder_combout\);

-- Location: FF_X22_Y22_N23
\U_MEMORIA|U_RAM|mem~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~52feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~52_q\);

-- Location: FF_X21_Y23_N27
\U_MEMORIA|U_RAM|mem~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[7]~2_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~20_q\);

-- Location: LCCOMB_X21_Y23_N26
\U_MEMORIA|U_RAM|mem~344\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~344_combout\ = (\mem_address_s[2]~0_combout\ & ((\U_MEMORIA|U_RAM|mem~52_q\) # ((\mem_address_s[3]~1_combout\)))) # (!\mem_address_s[2]~0_combout\ & (((\U_MEMORIA|U_RAM|mem~20_q\ & !\mem_address_s[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[2]~0_combout\,
	datab => \U_MEMORIA|U_RAM|mem~52_q\,
	datac => \U_MEMORIA|U_RAM|mem~20_q\,
	datad => \mem_address_s[3]~1_combout\,
	combout => \U_MEMORIA|U_RAM|mem~344_combout\);

-- Location: FF_X22_Y23_N17
\U_MEMORIA|U_RAM|mem~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[7]~2_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~84_q\);

-- Location: FF_X21_Y23_N21
\U_MEMORIA|U_RAM|mem~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[7]~2_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~116_q\);

-- Location: LCCOMB_X21_Y23_N20
\U_MEMORIA|U_RAM|mem~345\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~345_combout\ = (\U_MEMORIA|U_RAM|mem~344_combout\ & (((\U_MEMORIA|U_RAM|mem~116_q\) # (!\mem_address_s[3]~1_combout\)))) # (!\U_MEMORIA|U_RAM|mem~344_combout\ & (\U_MEMORIA|U_RAM|mem~84_q\ & ((\mem_address_s[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~344_combout\,
	datab => \U_MEMORIA|U_RAM|mem~84_q\,
	datac => \U_MEMORIA|U_RAM|mem~116_q\,
	datad => \mem_address_s[3]~1_combout\,
	combout => \U_MEMORIA|U_RAM|mem~345_combout\);

-- Location: LCCOMB_X22_Y19_N8
\U_MEMORIA|U_RAM|mem~346\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~346_combout\ = (\mem_address_s[0]~4_combout\ & ((\mem_address_s[1]~3_combout\) # ((\U_MEMORIA|U_RAM|mem~343_combout\)))) # (!\mem_address_s[0]~4_combout\ & (!\mem_address_s[1]~3_combout\ & ((\U_MEMORIA|U_RAM|mem~345_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[0]~4_combout\,
	datab => \mem_address_s[1]~3_combout\,
	datac => \U_MEMORIA|U_RAM|mem~343_combout\,
	datad => \U_MEMORIA|U_RAM|mem~345_combout\,
	combout => \U_MEMORIA|U_RAM|mem~346_combout\);

-- Location: FF_X20_Y23_N25
\U_MEMORIA|U_RAM|mem~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[7]~2_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~68_q\);

-- Location: FF_X21_Y22_N29
\U_MEMORIA|U_RAM|mem~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[7]~2_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~468_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~132_q\);

-- Location: FF_X20_Y22_N1
\U_MEMORIA|U_RAM|mem~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[7]~2_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~466_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~100_q\);

-- Location: FF_X21_Y22_N19
\U_MEMORIA|U_RAM|mem~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[7]~2_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~36_q\);

-- Location: LCCOMB_X21_Y22_N18
\U_MEMORIA|U_RAM|mem~340\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~340_combout\ = (\mem_address_s[2]~0_combout\ & (((\mem_address_s[3]~1_combout\)))) # (!\mem_address_s[2]~0_combout\ & ((\mem_address_s[3]~1_combout\ & (\U_MEMORIA|U_RAM|mem~100_q\)) # (!\mem_address_s[3]~1_combout\ & 
-- ((\U_MEMORIA|U_RAM|mem~36_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[2]~0_combout\,
	datab => \U_MEMORIA|U_RAM|mem~100_q\,
	datac => \U_MEMORIA|U_RAM|mem~36_q\,
	datad => \mem_address_s[3]~1_combout\,
	combout => \U_MEMORIA|U_RAM|mem~340_combout\);

-- Location: LCCOMB_X21_Y22_N28
\U_MEMORIA|U_RAM|mem~341\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~341_combout\ = (\mem_address_s[2]~0_combout\ & ((\U_MEMORIA|U_RAM|mem~340_combout\ & ((\U_MEMORIA|U_RAM|mem~132_q\))) # (!\U_MEMORIA|U_RAM|mem~340_combout\ & (\U_MEMORIA|U_RAM|mem~68_q\)))) # (!\mem_address_s[2]~0_combout\ & 
-- (((\U_MEMORIA|U_RAM|mem~340_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[2]~0_combout\,
	datab => \U_MEMORIA|U_RAM|mem~68_q\,
	datac => \U_MEMORIA|U_RAM|mem~132_q\,
	datad => \U_MEMORIA|U_RAM|mem~340_combout\,
	combout => \U_MEMORIA|U_RAM|mem~341_combout\);

-- Location: LCCOMB_X22_Y19_N18
\U_MEMORIA|U_RAM|mem~349\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~349_combout\ = (\mem_address_s[1]~3_combout\ & ((\U_MEMORIA|U_RAM|mem~346_combout\ & (\U_MEMORIA|U_RAM|mem~348_combout\)) # (!\U_MEMORIA|U_RAM|mem~346_combout\ & ((\U_MEMORIA|U_RAM|mem~341_combout\))))) # 
-- (!\mem_address_s[1]~3_combout\ & (((\U_MEMORIA|U_RAM|mem~346_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~348_combout\,
	datab => \mem_address_s[1]~3_combout\,
	datac => \U_MEMORIA|U_RAM|mem~346_combout\,
	datad => \U_MEMORIA|U_RAM|mem~341_combout\,
	combout => \U_MEMORIA|U_RAM|mem~349_combout\);

-- Location: LCCOMB_X26_Y20_N16
\U_MEMORIA|U_RAM|mem~260feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~260feeder_combout\ = \mem_data_in_s[7]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_data_in_s[7]~2_combout\,
	combout => \U_MEMORIA|U_RAM|mem~260feeder_combout\);

-- Location: FF_X26_Y20_N17
\U_MEMORIA|U_RAM|mem~260\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~260feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~260_q\);

-- Location: LCCOMB_X24_Y22_N12
\U_MEMORIA|U_RAM|mem~252feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~252feeder_combout\ = \mem_data_in_s[7]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_data_in_s[7]~2_combout\,
	combout => \U_MEMORIA|U_RAM|mem~252feeder_combout\);

-- Location: FF_X24_Y22_N13
\U_MEMORIA|U_RAM|mem~252\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~252feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~252_q\);

-- Location: FF_X24_Y22_N11
\U_MEMORIA|U_RAM|mem~244\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[7]~2_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~244_q\);

-- Location: LCCOMB_X24_Y22_N10
\U_MEMORIA|U_RAM|mem~337\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~337_combout\ = (\mem_address_s[1]~3_combout\ & (((\mem_address_s[0]~4_combout\)))) # (!\mem_address_s[1]~3_combout\ & ((\mem_address_s[0]~4_combout\ & (\U_MEMORIA|U_RAM|mem~252_q\)) # (!\mem_address_s[0]~4_combout\ & 
-- ((\U_MEMORIA|U_RAM|mem~244_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~252_q\,
	datab => \mem_address_s[1]~3_combout\,
	datac => \U_MEMORIA|U_RAM|mem~244_q\,
	datad => \mem_address_s[0]~4_combout\,
	combout => \U_MEMORIA|U_RAM|mem~337_combout\);

-- Location: FF_X23_Y22_N19
\U_MEMORIA|U_RAM|mem~268\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[7]~2_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~268_q\);

-- Location: LCCOMB_X23_Y22_N18
\U_MEMORIA|U_RAM|mem~338\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~338_combout\ = (\U_MEMORIA|U_RAM|mem~337_combout\ & (((\U_MEMORIA|U_RAM|mem~268_q\) # (!\mem_address_s[1]~3_combout\)))) # (!\U_MEMORIA|U_RAM|mem~337_combout\ & (\U_MEMORIA|U_RAM|mem~260_q\ & ((\mem_address_s[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~260_q\,
	datab => \U_MEMORIA|U_RAM|mem~337_combout\,
	datac => \U_MEMORIA|U_RAM|mem~268_q\,
	datad => \mem_address_s[1]~3_combout\,
	combout => \U_MEMORIA|U_RAM|mem~338_combout\);

-- Location: LCCOMB_X19_Y21_N18
\U_MEMORIA|U_RAM|mem~236feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~236feeder_combout\ = \mem_data_in_s[7]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_data_in_s[7]~2_combout\,
	combout => \U_MEMORIA|U_RAM|mem~236feeder_combout\);

-- Location: FF_X19_Y21_N19
\U_MEMORIA|U_RAM|mem~236\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~236feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~236_q\);

-- Location: FF_X20_Y21_N19
\U_MEMORIA|U_RAM|mem~220\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[7]~2_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~433_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~220_q\);

-- Location: LCCOMB_X19_Y20_N18
\U_MEMORIA|U_RAM|mem~228feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~228feeder_combout\ = \mem_data_in_s[7]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_data_in_s[7]~2_combout\,
	combout => \U_MEMORIA|U_RAM|mem~228feeder_combout\);

-- Location: FF_X19_Y20_N19
\U_MEMORIA|U_RAM|mem~228\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~228feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~435_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~228_q\);

-- Location: FF_X19_Y21_N9
\U_MEMORIA|U_RAM|mem~212\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[7]~2_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~212_q\);

-- Location: LCCOMB_X19_Y21_N8
\U_MEMORIA|U_RAM|mem~330\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~330_combout\ = (\mem_address_s[0]~4_combout\ & (((\mem_address_s[1]~3_combout\)))) # (!\mem_address_s[0]~4_combout\ & ((\mem_address_s[1]~3_combout\ & (\U_MEMORIA|U_RAM|mem~228_q\)) # (!\mem_address_s[1]~3_combout\ & 
-- ((\U_MEMORIA|U_RAM|mem~212_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~228_q\,
	datab => \mem_address_s[0]~4_combout\,
	datac => \U_MEMORIA|U_RAM|mem~212_q\,
	datad => \mem_address_s[1]~3_combout\,
	combout => \U_MEMORIA|U_RAM|mem~330_combout\);

-- Location: LCCOMB_X20_Y21_N18
\U_MEMORIA|U_RAM|mem~331\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~331_combout\ = (\mem_address_s[0]~4_combout\ & ((\U_MEMORIA|U_RAM|mem~330_combout\ & (\U_MEMORIA|U_RAM|mem~236_q\)) # (!\U_MEMORIA|U_RAM|mem~330_combout\ & ((\U_MEMORIA|U_RAM|mem~220_q\))))) # (!\mem_address_s[0]~4_combout\ & 
-- (((\U_MEMORIA|U_RAM|mem~330_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[0]~4_combout\,
	datab => \U_MEMORIA|U_RAM|mem~236_q\,
	datac => \U_MEMORIA|U_RAM|mem~220_q\,
	datad => \U_MEMORIA|U_RAM|mem~330_combout\,
	combout => \U_MEMORIA|U_RAM|mem~331_combout\);

-- Location: FF_X26_Y19_N1
\U_MEMORIA|U_RAM|mem~156\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[7]~2_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~156_q\);

-- Location: FF_X24_Y19_N15
\U_MEMORIA|U_RAM|mem~172\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[7]~2_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~172_q\);

-- Location: LCCOMB_X20_Y22_N10
\U_MEMORIA|U_RAM|mem~164feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~164feeder_combout\ = \mem_data_in_s[7]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_data_in_s[7]~2_combout\,
	combout => \U_MEMORIA|U_RAM|mem~164feeder_combout\);

-- Location: FF_X20_Y22_N11
\U_MEMORIA|U_RAM|mem~164\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~164feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~164_q\);

-- Location: FF_X24_Y19_N5
\U_MEMORIA|U_RAM|mem~148\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[7]~2_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~148_q\);

-- Location: LCCOMB_X24_Y19_N4
\U_MEMORIA|U_RAM|mem~334\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~334_combout\ = (\mem_address_s[1]~3_combout\ & ((\U_MEMORIA|U_RAM|mem~164_q\) # ((\mem_address_s[0]~4_combout\)))) # (!\mem_address_s[1]~3_combout\ & (((\U_MEMORIA|U_RAM|mem~148_q\ & !\mem_address_s[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~164_q\,
	datab => \mem_address_s[1]~3_combout\,
	datac => \U_MEMORIA|U_RAM|mem~148_q\,
	datad => \mem_address_s[0]~4_combout\,
	combout => \U_MEMORIA|U_RAM|mem~334_combout\);

-- Location: LCCOMB_X24_Y19_N14
\U_MEMORIA|U_RAM|mem~335\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~335_combout\ = (\mem_address_s[0]~4_combout\ & ((\U_MEMORIA|U_RAM|mem~334_combout\ & ((\U_MEMORIA|U_RAM|mem~172_q\))) # (!\U_MEMORIA|U_RAM|mem~334_combout\ & (\U_MEMORIA|U_RAM|mem~156_q\)))) # (!\mem_address_s[0]~4_combout\ & 
-- (((\U_MEMORIA|U_RAM|mem~334_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~156_q\,
	datab => \mem_address_s[0]~4_combout\,
	datac => \U_MEMORIA|U_RAM|mem~172_q\,
	datad => \U_MEMORIA|U_RAM|mem~334_combout\,
	combout => \U_MEMORIA|U_RAM|mem~335_combout\);

-- Location: LCCOMB_X20_Y21_N8
\U_MEMORIA|U_RAM|mem~196feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~196feeder_combout\ = \mem_data_in_s[7]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_data_in_s[7]~2_combout\,
	combout => \U_MEMORIA|U_RAM|mem~196feeder_combout\);

-- Location: FF_X20_Y21_N9
\U_MEMORIA|U_RAM|mem~196\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~196feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~196_q\);

-- Location: FF_X23_Y21_N21
\U_MEMORIA|U_RAM|mem~204\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[7]~2_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~204_q\);

-- Location: LCCOMB_X22_Y21_N2
\U_MEMORIA|U_RAM|mem~188feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~188feeder_combout\ = \mem_data_in_s[7]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_data_in_s[7]~2_combout\,
	combout => \U_MEMORIA|U_RAM|mem~188feeder_combout\);

-- Location: FF_X22_Y21_N3
\U_MEMORIA|U_RAM|mem~188\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|U_RAM|mem~188feeder_combout\,
	ena => \U_MEMORIA|U_RAM|mem~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~188_q\);

-- Location: FF_X23_Y21_N3
\U_MEMORIA|U_RAM|mem~180\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \mem_data_in_s[7]~2_combout\,
	sload => VCC,
	ena => \U_MEMORIA|U_RAM|mem~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEMORIA|U_RAM|mem~180_q\);

-- Location: LCCOMB_X23_Y21_N2
\U_MEMORIA|U_RAM|mem~332\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~332_combout\ = (\mem_address_s[1]~3_combout\ & (((\mem_address_s[0]~4_combout\)))) # (!\mem_address_s[1]~3_combout\ & ((\mem_address_s[0]~4_combout\ & (\U_MEMORIA|U_RAM|mem~188_q\)) # (!\mem_address_s[0]~4_combout\ & 
-- ((\U_MEMORIA|U_RAM|mem~180_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~188_q\,
	datab => \mem_address_s[1]~3_combout\,
	datac => \U_MEMORIA|U_RAM|mem~180_q\,
	datad => \mem_address_s[0]~4_combout\,
	combout => \U_MEMORIA|U_RAM|mem~332_combout\);

-- Location: LCCOMB_X23_Y21_N20
\U_MEMORIA|U_RAM|mem~333\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~333_combout\ = (\mem_address_s[1]~3_combout\ & ((\U_MEMORIA|U_RAM|mem~332_combout\ & ((\U_MEMORIA|U_RAM|mem~204_q\))) # (!\U_MEMORIA|U_RAM|mem~332_combout\ & (\U_MEMORIA|U_RAM|mem~196_q\)))) # (!\mem_address_s[1]~3_combout\ & 
-- (((\U_MEMORIA|U_RAM|mem~332_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~196_q\,
	datab => \mem_address_s[1]~3_combout\,
	datac => \U_MEMORIA|U_RAM|mem~204_q\,
	datad => \U_MEMORIA|U_RAM|mem~332_combout\,
	combout => \U_MEMORIA|U_RAM|mem~333_combout\);

-- Location: LCCOMB_X23_Y19_N28
\U_MEMORIA|U_RAM|mem~336\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~336_combout\ = (\mem_address_s[3]~1_combout\ & (((\mem_address_s[2]~0_combout\)))) # (!\mem_address_s[3]~1_combout\ & ((\mem_address_s[2]~0_combout\ & ((\U_MEMORIA|U_RAM|mem~333_combout\))) # (!\mem_address_s[2]~0_combout\ & 
-- (\U_MEMORIA|U_RAM|mem~335_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_address_s[3]~1_combout\,
	datab => \U_MEMORIA|U_RAM|mem~335_combout\,
	datac => \mem_address_s[2]~0_combout\,
	datad => \U_MEMORIA|U_RAM|mem~333_combout\,
	combout => \U_MEMORIA|U_RAM|mem~336_combout\);

-- Location: LCCOMB_X22_Y19_N14
\U_MEMORIA|U_RAM|mem~339\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|U_RAM|mem~339_combout\ = (\mem_address_s[3]~1_combout\ & ((\U_MEMORIA|U_RAM|mem~336_combout\ & (\U_MEMORIA|U_RAM|mem~338_combout\)) # (!\U_MEMORIA|U_RAM|mem~336_combout\ & ((\U_MEMORIA|U_RAM|mem~331_combout\))))) # 
-- (!\mem_address_s[3]~1_combout\ & (((\U_MEMORIA|U_RAM|mem~336_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|U_RAM|mem~338_combout\,
	datab => \mem_address_s[3]~1_combout\,
	datac => \U_MEMORIA|U_RAM|mem~331_combout\,
	datad => \U_MEMORIA|U_RAM|mem~336_combout\,
	combout => \U_MEMORIA|U_RAM|mem~339_combout\);

-- Location: LCCOMB_X22_Y17_N28
\U_MEMORIA|data_out[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|data_out[6]~10_combout\ = (\U_MEMORIA|data_out[1]~1_combout\ & ((\mem_address_s[4]~2_combout\ & ((\U_MEMORIA|U_RAM|mem~339_combout\))) # (!\mem_address_s[4]~2_combout\ & (\U_MEMORIA|U_RAM|mem~349_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEMORIA|data_out[1]~1_combout\,
	datab => \mem_address_s[4]~2_combout\,
	datac => \U_MEMORIA|U_RAM|mem~349_combout\,
	datad => \U_MEMORIA|U_RAM|mem~339_combout\,
	combout => \U_MEMORIA|data_out[6]~10_combout\);

-- Location: LCCOMB_X22_Y17_N6
\U_MEMORIA|data_out[6]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MEMORIA|data_out[6]~11_combout\ = (\U_ADMIN|estado.ESPERA~q\ & (((!\U_MEMORIA|data_out[2]~7_combout\ & !\U_MEMORIA|data_out[6]~10_combout\)))) # (!\U_ADMIN|estado.ESPERA~q\ & ((\U_GESTOR|addr_rd\(5)) # ((!\U_MEMORIA|data_out[2]~7_combout\ & 
-- !\U_MEMORIA|data_out[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|estado.ESPERA~q\,
	datab => \U_GESTOR|addr_rd\(5),
	datac => \U_MEMORIA|data_out[2]~7_combout\,
	datad => \U_MEMORIA|data_out[6]~10_combout\,
	combout => \U_MEMORIA|data_out[6]~11_combout\);

-- Location: FF_X22_Y17_N7
\U_GESTOR|id_ram[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|data_out[6]~11_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \U_GESTOR|id_ram[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GESTOR|id_ram\(6));

-- Location: LCCOMB_X22_Y17_N16
\U_GESTOR|Equal5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GESTOR|Equal5~0_combout\ = (\U_GESTOR|id_ram\(4)) # ((\U_GESTOR|id_ram\(7)) # ((\U_GESTOR|id_ram\(5)) # (\U_GESTOR|id_ram\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GESTOR|id_ram\(4),
	datab => \U_GESTOR|id_ram\(7),
	datac => \U_GESTOR|id_ram\(5),
	datad => \U_GESTOR|id_ram\(6),
	combout => \U_GESTOR|Equal5~0_combout\);

-- Location: LCCOMB_X21_Y16_N16
\U_GESTOR|Equal5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GESTOR|Equal5~2_combout\ = (\U_GESTOR|Equal5~1_combout\) # (\U_GESTOR|Equal5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_GESTOR|Equal5~1_combout\,
	datad => \U_GESTOR|Equal5~0_combout\,
	combout => \U_GESTOR|Equal5~2_combout\);

-- Location: LCCOMB_X21_Y16_N26
\U_FSM|estado_siguiente~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_FSM|estado_siguiente~4_combout\ = (\U_GESTOR|Equal6~0_combout\) # ((\U_GESTOR|horario_ram\(0) $ (!\U_HORARIO|horario[0]~4_combout\)) # (!\U_GESTOR|Equal5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GESTOR|horario_ram\(0),
	datab => \U_GESTOR|Equal6~0_combout\,
	datac => \U_HORARIO|horario[0]~4_combout\,
	datad => \U_GESTOR|Equal5~2_combout\,
	combout => \U_FSM|estado_siguiente~4_combout\);

-- Location: LCCOMB_X23_Y18_N22
\U_REGISTRO|d0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_REGISTRO|d0~1_combout\ = (\U_TECLADO|key_latched\(1) & \U_REGISTRO|contador~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_TECLADO|key_latched\(1),
	datad => \U_REGISTRO|contador~4_combout\,
	combout => \U_REGISTRO|d0~1_combout\);

-- Location: FF_X23_Y18_N23
\U_REGISTRO|d0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_REGISTRO|d0~1_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \U_REGISTRO|contador[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REGISTRO|d0\(1));

-- Location: LCCOMB_X23_Y18_N18
\U_REGISTRO|d1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_REGISTRO|d1~1_combout\ = (\U_REGISTRO|d0\(1) & \U_REGISTRO|contador~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REGISTRO|d0\(1),
	datad => \U_REGISTRO|contador~4_combout\,
	combout => \U_REGISTRO|d1~1_combout\);

-- Location: FF_X23_Y18_N19
\U_REGISTRO|d1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_REGISTRO|d1~1_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \U_REGISTRO|contador[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REGISTRO|d1\(1));

-- Location: LCCOMB_X24_Y18_N14
\U_REGISTRO|d2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_REGISTRO|d2~1_combout\ = (\U_REGISTRO|d1\(1) & \U_REGISTRO|contador~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_REGISTRO|d1\(1),
	datac => \U_REGISTRO|contador~4_combout\,
	combout => \U_REGISTRO|d2~1_combout\);

-- Location: FF_X24_Y18_N15
\U_REGISTRO|d2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_REGISTRO|d2~1_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \U_REGISTRO|contador[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REGISTRO|d2\(1));

-- Location: LCCOMB_X23_Y18_N10
\U_REGISTRO|d3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_REGISTRO|d3~1_combout\ = (\U_REGISTRO|d2\(1) & \U_REGISTRO|contador~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REGISTRO|d2\(1),
	datad => \U_REGISTRO|contador~4_combout\,
	combout => \U_REGISTRO|d3~1_combout\);

-- Location: FF_X23_Y18_N11
\U_REGISTRO|d3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_REGISTRO|d3~1_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \U_REGISTRO|contador[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REGISTRO|d3\(1));

-- Location: LCCOMB_X24_Y18_N10
\U_REGISTRO|d0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_REGISTRO|d0~3_combout\ = (\U_TECLADO|key_latched\(3) & \U_REGISTRO|contador~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_TECLADO|key_latched\(3),
	datac => \U_REGISTRO|contador~4_combout\,
	combout => \U_REGISTRO|d0~3_combout\);

-- Location: FF_X24_Y18_N11
\U_REGISTRO|d0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_REGISTRO|d0~3_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \U_REGISTRO|contador[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REGISTRO|d0\(3));

-- Location: LCCOMB_X23_Y18_N30
\U_REGISTRO|d1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_REGISTRO|d1~3_combout\ = (\U_REGISTRO|d0\(3) & \U_REGISTRO|contador~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REGISTRO|d0\(3),
	datad => \U_REGISTRO|contador~4_combout\,
	combout => \U_REGISTRO|d1~3_combout\);

-- Location: FF_X23_Y18_N31
\U_REGISTRO|d1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_REGISTRO|d1~3_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \U_REGISTRO|contador[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REGISTRO|d1\(3));

-- Location: LCCOMB_X24_Y18_N22
\U_REGISTRO|d2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_REGISTRO|d2~3_combout\ = (\U_REGISTRO|d1\(3) & \U_REGISTRO|contador~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_REGISTRO|d1\(3),
	datac => \U_REGISTRO|contador~4_combout\,
	combout => \U_REGISTRO|d2~3_combout\);

-- Location: FF_X24_Y18_N23
\U_REGISTRO|d2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_REGISTRO|d2~3_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \U_REGISTRO|contador[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REGISTRO|d2\(3));

-- Location: LCCOMB_X24_Y18_N24
\U_REGISTRO|d3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_REGISTRO|d3~3_combout\ = (\U_REGISTRO|d2\(3) & \U_REGISTRO|contador~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REGISTRO|d2\(3),
	datac => \U_REGISTRO|contador~4_combout\,
	combout => \U_REGISTRO|d3~3_combout\);

-- Location: FF_X24_Y18_N25
\U_REGISTRO|d3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_REGISTRO|d3~3_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \U_REGISTRO|contador[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REGISTRO|d3\(3));

-- Location: LCCOMB_X24_Y18_N8
\U_REGISTRO|d0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_REGISTRO|d0~2_combout\ = (\U_TECLADO|key_latched\(2) & \U_REGISTRO|contador~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_TECLADO|key_latched\(2),
	datac => \U_REGISTRO|contador~4_combout\,
	combout => \U_REGISTRO|d0~2_combout\);

-- Location: FF_X24_Y18_N9
\U_REGISTRO|d0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_REGISTRO|d0~2_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \U_REGISTRO|contador[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REGISTRO|d0\(2));

-- Location: LCCOMB_X23_Y18_N24
\U_REGISTRO|d1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_REGISTRO|d1~2_combout\ = (\U_REGISTRO|d0\(2) & \U_REGISTRO|contador~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_REGISTRO|d0\(2),
	datad => \U_REGISTRO|contador~4_combout\,
	combout => \U_REGISTRO|d1~2_combout\);

-- Location: FF_X23_Y18_N25
\U_REGISTRO|d1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_REGISTRO|d1~2_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \U_REGISTRO|contador[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REGISTRO|d1\(2));

-- Location: LCCOMB_X24_Y18_N16
\U_REGISTRO|d2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_REGISTRO|d2~2_combout\ = (\U_REGISTRO|d1\(2) & \U_REGISTRO|contador~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_REGISTRO|d1\(2),
	datac => \U_REGISTRO|contador~4_combout\,
	combout => \U_REGISTRO|d2~2_combout\);

-- Location: FF_X24_Y18_N17
\U_REGISTRO|d2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_REGISTRO|d2~2_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \U_REGISTRO|contador[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REGISTRO|d2\(2));

-- Location: LCCOMB_X23_Y18_N0
\U_REGISTRO|d3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_REGISTRO|d3~2_combout\ = (\U_REGISTRO|d2\(2) & \U_REGISTRO|contador~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_REGISTRO|d2\(2),
	datad => \U_REGISTRO|contador~4_combout\,
	combout => \U_REGISTRO|d3~2_combout\);

-- Location: FF_X23_Y18_N1
\U_REGISTRO|d3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_REGISTRO|d3~2_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \U_REGISTRO|contador[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REGISTRO|d3\(2));

-- Location: LCCOMB_X23_Y18_N4
\U_REGISTRO|d0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_REGISTRO|d0~0_combout\ = (\U_TECLADO|key_latched\(0) & \U_REGISTRO|contador~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_TECLADO|key_latched\(0),
	datad => \U_REGISTRO|contador~4_combout\,
	combout => \U_REGISTRO|d0~0_combout\);

-- Location: FF_X23_Y18_N5
\U_REGISTRO|d0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_REGISTRO|d0~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \U_REGISTRO|contador[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REGISTRO|d0\(0));

-- Location: LCCOMB_X23_Y18_N16
\U_REGISTRO|d1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_REGISTRO|d1~0_combout\ = (\U_REGISTRO|d0\(0) & \U_REGISTRO|contador~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_REGISTRO|d0\(0),
	datad => \U_REGISTRO|contador~4_combout\,
	combout => \U_REGISTRO|d1~0_combout\);

-- Location: FF_X23_Y18_N17
\U_REGISTRO|d1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_REGISTRO|d1~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \U_REGISTRO|contador[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REGISTRO|d1\(0));

-- Location: LCCOMB_X24_Y18_N28
\U_REGISTRO|d2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_REGISTRO|d2~0_combout\ = (\U_REGISTRO|d1\(0) & \U_REGISTRO|contador~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REGISTRO|d1\(0),
	datac => \U_REGISTRO|contador~4_combout\,
	combout => \U_REGISTRO|d2~0_combout\);

-- Location: FF_X24_Y18_N29
\U_REGISTRO|d2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_REGISTRO|d2~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \U_REGISTRO|contador[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REGISTRO|d2\(0));

-- Location: LCCOMB_X23_Y18_N20
\U_REGISTRO|d3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_REGISTRO|d3~0_combout\ = (\U_REGISTRO|d2\(0) & \U_REGISTRO|contador~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_REGISTRO|d2\(0),
	datad => \U_REGISTRO|contador~4_combout\,
	combout => \U_REGISTRO|d3~0_combout\);

-- Location: FF_X23_Y18_N21
\U_REGISTRO|d3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_REGISTRO|d3~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \U_REGISTRO|contador[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REGISTRO|d3\(0));

-- Location: LCCOMB_X24_Y18_N6
\U_GESTOR|clave_ok_i~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GESTOR|clave_ok_i~3_combout\ = (\U_REGISTRO|d3\(1) & (!\U_REGISTRO|d3\(3) & (!\U_REGISTRO|d3\(2) & !\U_REGISTRO|d3\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REGISTRO|d3\(1),
	datab => \U_REGISTRO|d3\(3),
	datac => \U_REGISTRO|d3\(2),
	datad => \U_REGISTRO|d3\(0),
	combout => \U_GESTOR|clave_ok_i~3_combout\);

-- Location: LCCOMB_X24_Y18_N0
\U_GESTOR|clave_ok_i~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GESTOR|clave_ok_i~2_combout\ = (!\U_REGISTRO|d2\(3) & (!\U_REGISTRO|d2\(2) & (\U_REGISTRO|d2\(1) & \U_REGISTRO|d2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REGISTRO|d2\(3),
	datab => \U_REGISTRO|d2\(2),
	datac => \U_REGISTRO|d2\(1),
	datad => \U_REGISTRO|d2\(0),
	combout => \U_GESTOR|clave_ok_i~2_combout\);

-- Location: LCCOMB_X24_Y18_N4
\U_GESTOR|clave_ok_i~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GESTOR|clave_ok_i~0_combout\ = (\U_REGISTRO|d0\(3) & (!\U_REGISTRO|d0\(2) & (!\U_REGISTRO|d0\(0) & !\U_REGISTRO|d0\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REGISTRO|d0\(3),
	datab => \U_REGISTRO|d0\(2),
	datac => \U_REGISTRO|d0\(0),
	datad => \U_REGISTRO|d0\(1),
	combout => \U_GESTOR|clave_ok_i~0_combout\);

-- Location: LCCOMB_X24_Y18_N18
\U_GESTOR|clave_ok_i~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GESTOR|clave_ok_i~1_combout\ = (!\U_REGISTRO|d1\(0) & (!\U_REGISTRO|d1\(3) & (!\U_REGISTRO|d1\(1) & !\U_REGISTRO|d1\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REGISTRO|d1\(0),
	datab => \U_REGISTRO|d1\(3),
	datac => \U_REGISTRO|d1\(1),
	datad => \U_REGISTRO|d1\(2),
	combout => \U_GESTOR|clave_ok_i~1_combout\);

-- Location: LCCOMB_X24_Y18_N20
\U_GESTOR|clave_ok_i~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GESTOR|clave_ok_i~4_combout\ = (\U_GESTOR|clave_ok_i~3_combout\ & (\U_GESTOR|clave_ok_i~2_combout\ & (\U_GESTOR|clave_ok_i~0_combout\ & \U_GESTOR|clave_ok_i~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GESTOR|clave_ok_i~3_combout\,
	datab => \U_GESTOR|clave_ok_i~2_combout\,
	datac => \U_GESTOR|clave_ok_i~0_combout\,
	datad => \U_GESTOR|clave_ok_i~1_combout\,
	combout => \U_GESTOR|clave_ok_i~4_combout\);

-- Location: LCCOMB_X23_Y16_N30
\U_GESTOR|d1_ram[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GESTOR|d1_ram[1]~feeder_combout\ = \U_MEMORIA|data_out[1]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_MEMORIA|data_out[1]~3_combout\,
	combout => \U_GESTOR|d1_ram[1]~feeder_combout\);

-- Location: FF_X23_Y16_N31
\U_GESTOR|d1_ram[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_GESTOR|d1_ram[1]~feeder_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \U_GESTOR|d1_ram[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GESTOR|d1_ram\(1));

-- Location: FF_X23_Y16_N21
\U_GESTOR|d1_ram[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U_MEMORIA|data_out[0]~6_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => VCC,
	ena => \U_GESTOR|d1_ram[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GESTOR|d1_ram\(0));

-- Location: LCCOMB_X23_Y16_N20
\U_GESTOR|clave_ok_i~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GESTOR|clave_ok_i~7_combout\ = (\U_GESTOR|d1_ram\(1) & (\U_REGISTRO|d2\(1) & (\U_REGISTRO|d2\(0) $ (!\U_GESTOR|d1_ram\(0))))) # (!\U_GESTOR|d1_ram\(1) & (!\U_REGISTRO|d2\(1) & (\U_REGISTRO|d2\(0) $ (!\U_GESTOR|d1_ram\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GESTOR|d1_ram\(1),
	datab => \U_REGISTRO|d2\(0),
	datac => \U_GESTOR|d1_ram\(0),
	datad => \U_REGISTRO|d2\(1),
	combout => \U_GESTOR|clave_ok_i~7_combout\);

-- Location: LCCOMB_X23_Y16_N18
\U_GESTOR|d1_ram[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GESTOR|d1_ram[3]~feeder_combout\ = \U_MEMORIA|data_out[3]~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_MEMORIA|data_out[3]~18_combout\,
	combout => \U_GESTOR|d1_ram[3]~feeder_combout\);

-- Location: FF_X23_Y16_N19
\U_GESTOR|d1_ram[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_GESTOR|d1_ram[3]~feeder_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \U_GESTOR|d1_ram[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GESTOR|d1_ram\(3));

-- Location: FF_X23_Y16_N13
\U_GESTOR|d1_ram[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U_MEMORIA|data_out[2]~20_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => VCC,
	ena => \U_GESTOR|d1_ram[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GESTOR|d1_ram\(2));

-- Location: LCCOMB_X23_Y16_N12
\U_GESTOR|clave_ok_i~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GESTOR|clave_ok_i~8_combout\ = (\U_REGISTRO|d2\(3) & (\U_GESTOR|d1_ram\(3) & (\U_GESTOR|d1_ram\(2) $ (!\U_REGISTRO|d2\(2))))) # (!\U_REGISTRO|d2\(3) & (!\U_GESTOR|d1_ram\(3) & (\U_GESTOR|d1_ram\(2) $ (!\U_REGISTRO|d2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REGISTRO|d2\(3),
	datab => \U_GESTOR|d1_ram\(3),
	datac => \U_GESTOR|d1_ram\(2),
	datad => \U_REGISTRO|d2\(2),
	combout => \U_GESTOR|clave_ok_i~8_combout\);

-- Location: LCCOMB_X22_Y20_N6
\U_GESTOR|d0_ram[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GESTOR|d0_ram[0]~feeder_combout\ = \U_MEMORIA|data_out[0]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_MEMORIA|data_out[0]~6_combout\,
	combout => \U_GESTOR|d0_ram[0]~feeder_combout\);

-- Location: FF_X22_Y20_N7
\U_GESTOR|d0_ram[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_GESTOR|d0_ram[0]~feeder_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \U_GESTOR|d0_ram[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GESTOR|d0_ram\(0));

-- Location: FF_X22_Y20_N13
\U_GESTOR|d0_ram[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U_MEMORIA|data_out[1]~3_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => VCC,
	ena => \U_GESTOR|d0_ram[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GESTOR|d0_ram\(1));

-- Location: LCCOMB_X22_Y20_N12
\U_GESTOR|clave_ok_i~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GESTOR|clave_ok_i~5_combout\ = (\U_GESTOR|d0_ram\(0) & (\U_REGISTRO|d3\(0) & (\U_REGISTRO|d3\(1) $ (!\U_GESTOR|d0_ram\(1))))) # (!\U_GESTOR|d0_ram\(0) & (!\U_REGISTRO|d3\(0) & (\U_REGISTRO|d3\(1) $ (!\U_GESTOR|d0_ram\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GESTOR|d0_ram\(0),
	datab => \U_REGISTRO|d3\(1),
	datac => \U_GESTOR|d0_ram\(1),
	datad => \U_REGISTRO|d3\(0),
	combout => \U_GESTOR|clave_ok_i~5_combout\);

-- Location: FF_X22_Y20_N27
\U_GESTOR|d0_ram[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U_MEMORIA|data_out[2]~20_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => VCC,
	ena => \U_GESTOR|d0_ram[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GESTOR|d0_ram\(2));

-- Location: FF_X22_Y20_N29
\U_GESTOR|d0_ram[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U_MEMORIA|data_out[3]~18_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => VCC,
	ena => \U_GESTOR|d0_ram[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GESTOR|d0_ram\(3));

-- Location: LCCOMB_X22_Y20_N28
\U_GESTOR|clave_ok_i~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GESTOR|clave_ok_i~6_combout\ = (\U_GESTOR|d0_ram\(2) & (\U_REGISTRO|d3\(2) & (\U_GESTOR|d0_ram\(3) $ (!\U_REGISTRO|d3\(3))))) # (!\U_GESTOR|d0_ram\(2) & (!\U_REGISTRO|d3\(2) & (\U_GESTOR|d0_ram\(3) $ (!\U_REGISTRO|d3\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GESTOR|d0_ram\(2),
	datab => \U_REGISTRO|d3\(2),
	datac => \U_GESTOR|d0_ram\(3),
	datad => \U_REGISTRO|d3\(3),
	combout => \U_GESTOR|clave_ok_i~6_combout\);

-- Location: LCCOMB_X22_Y16_N14
\U_GESTOR|clave_ok_i~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GESTOR|clave_ok_i~9_combout\ = (\U_GESTOR|clave_ok_i~7_combout\ & (\U_GESTOR|clave_ok_i~8_combout\ & (\U_GESTOR|clave_ok_i~5_combout\ & \U_GESTOR|clave_ok_i~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GESTOR|clave_ok_i~7_combout\,
	datab => \U_GESTOR|clave_ok_i~8_combout\,
	datac => \U_GESTOR|clave_ok_i~5_combout\,
	datad => \U_GESTOR|clave_ok_i~6_combout\,
	combout => \U_GESTOR|clave_ok_i~9_combout\);

-- Location: LCCOMB_X22_Y18_N22
\U_GESTOR|d3_ram[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GESTOR|d3_ram[3]~0_combout\ = (\U_GESTOR|estado_rd.LEE_D3~q\ & (\U_REGISTRO|contador~5_combout\ & ((\U_REGISTRO|contador[1]~6_combout\) # (!\U_FSM|Selector7~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GESTOR|estado_rd.LEE_D3~q\,
	datab => \U_REGISTRO|contador[1]~6_combout\,
	datac => \U_REGISTRO|contador~5_combout\,
	datad => \U_FSM|Selector7~11_combout\,
	combout => \U_GESTOR|d3_ram[3]~0_combout\);

-- Location: FF_X23_Y20_N23
\U_GESTOR|d3_ram[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|data_out[0]~6_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \U_GESTOR|d3_ram[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GESTOR|d3_ram\(0));

-- Location: FF_X23_Y20_N17
\U_GESTOR|d3_ram[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U_MEMORIA|data_out[1]~3_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => VCC,
	ena => \U_GESTOR|d3_ram[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GESTOR|d3_ram\(1));

-- Location: LCCOMB_X23_Y20_N12
\U_GESTOR|clave_ok_i~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GESTOR|clave_ok_i~12_combout\ = (\U_GESTOR|d3_ram\(0) & (\U_REGISTRO|d0\(0) & (\U_GESTOR|d3_ram\(1) $ (!\U_REGISTRO|d0\(1))))) # (!\U_GESTOR|d3_ram\(0) & (!\U_REGISTRO|d0\(0) & (\U_GESTOR|d3_ram\(1) $ (!\U_REGISTRO|d0\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GESTOR|d3_ram\(0),
	datab => \U_GESTOR|d3_ram\(1),
	datac => \U_REGISTRO|d0\(1),
	datad => \U_REGISTRO|d0\(0),
	combout => \U_GESTOR|clave_ok_i~12_combout\);

-- Location: LCCOMB_X23_Y18_N12
\U_GESTOR|d2_ram[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GESTOR|d2_ram[0]~feeder_combout\ = \U_MEMORIA|data_out[0]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_MEMORIA|data_out[0]~6_combout\,
	combout => \U_GESTOR|d2_ram[0]~feeder_combout\);

-- Location: FF_X23_Y18_N13
\U_GESTOR|d2_ram[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_GESTOR|d2_ram[0]~feeder_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \U_GESTOR|d2_ram[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GESTOR|d2_ram\(0));

-- Location: FF_X23_Y18_N3
\U_GESTOR|d2_ram[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U_MEMORIA|data_out[1]~3_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => VCC,
	ena => \U_GESTOR|d2_ram[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GESTOR|d2_ram\(1));

-- Location: LCCOMB_X23_Y18_N2
\U_GESTOR|clave_ok_i~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GESTOR|clave_ok_i~10_combout\ = (\U_GESTOR|d2_ram\(0) & (\U_REGISTRO|d1\(0) & (\U_GESTOR|d2_ram\(1) $ (!\U_REGISTRO|d1\(1))))) # (!\U_GESTOR|d2_ram\(0) & (!\U_REGISTRO|d1\(0) & (\U_GESTOR|d2_ram\(1) $ (!\U_REGISTRO|d1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GESTOR|d2_ram\(0),
	datab => \U_REGISTRO|d1\(0),
	datac => \U_GESTOR|d2_ram\(1),
	datad => \U_REGISTRO|d1\(1),
	combout => \U_GESTOR|clave_ok_i~10_combout\);

-- Location: LCCOMB_X23_Y18_N28
\U_GESTOR|d2_ram[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GESTOR|d2_ram[2]~feeder_combout\ = \U_MEMORIA|data_out[2]~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_MEMORIA|data_out[2]~20_combout\,
	combout => \U_GESTOR|d2_ram[2]~feeder_combout\);

-- Location: FF_X23_Y18_N29
\U_GESTOR|d2_ram[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_GESTOR|d2_ram[2]~feeder_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \U_GESTOR|d2_ram[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GESTOR|d2_ram\(2));

-- Location: FF_X23_Y18_N27
\U_GESTOR|d2_ram[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U_MEMORIA|data_out[3]~18_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => VCC,
	ena => \U_GESTOR|d2_ram[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GESTOR|d2_ram\(3));

-- Location: LCCOMB_X23_Y18_N26
\U_GESTOR|clave_ok_i~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GESTOR|clave_ok_i~11_combout\ = (\U_REGISTRO|d1\(3) & (\U_GESTOR|d2_ram\(3) & (\U_GESTOR|d2_ram\(2) $ (!\U_REGISTRO|d1\(2))))) # (!\U_REGISTRO|d1\(3) & (!\U_GESTOR|d2_ram\(3) & (\U_GESTOR|d2_ram\(2) $ (!\U_REGISTRO|d1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REGISTRO|d1\(3),
	datab => \U_GESTOR|d2_ram\(2),
	datac => \U_GESTOR|d2_ram\(3),
	datad => \U_REGISTRO|d1\(2),
	combout => \U_GESTOR|clave_ok_i~11_combout\);

-- Location: FF_X22_Y18_N15
\U_GESTOR|d3_ram[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|data_out[2]~20_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \U_GESTOR|d3_ram[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GESTOR|d3_ram\(2));

-- Location: FF_X22_Y18_N21
\U_GESTOR|d3_ram[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_MEMORIA|data_out[3]~18_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \U_GESTOR|d3_ram[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GESTOR|d3_ram\(3));

-- Location: LCCOMB_X24_Y18_N2
\U_GESTOR|clave_ok_i~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GESTOR|clave_ok_i~13_combout\ = (\U_REGISTRO|d0\(3) & (\U_GESTOR|d3_ram\(3) & (\U_REGISTRO|d0\(2) $ (!\U_GESTOR|d3_ram\(2))))) # (!\U_REGISTRO|d0\(3) & (!\U_GESTOR|d3_ram\(3) & (\U_REGISTRO|d0\(2) $ (!\U_GESTOR|d3_ram\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REGISTRO|d0\(3),
	datab => \U_REGISTRO|d0\(2),
	datac => \U_GESTOR|d3_ram\(2),
	datad => \U_GESTOR|d3_ram\(3),
	combout => \U_GESTOR|clave_ok_i~13_combout\);

-- Location: LCCOMB_X23_Y20_N2
\U_GESTOR|clave_ok_i~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GESTOR|clave_ok_i~14_combout\ = (\U_GESTOR|clave_ok_i~12_combout\ & (\U_GESTOR|clave_ok_i~10_combout\ & (\U_GESTOR|clave_ok_i~11_combout\ & \U_GESTOR|clave_ok_i~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GESTOR|clave_ok_i~12_combout\,
	datab => \U_GESTOR|clave_ok_i~10_combout\,
	datac => \U_GESTOR|clave_ok_i~11_combout\,
	datad => \U_GESTOR|clave_ok_i~13_combout\,
	combout => \U_GESTOR|clave_ok_i~14_combout\);

-- Location: LCCOMB_X22_Y16_N24
\U_GESTOR|clave_correcta~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GESTOR|clave_correcta~0_combout\ = (\U_GESTOR|es_admin~q\ & (\U_GESTOR|clave_ok_i~4_combout\)) # (!\U_GESTOR|es_admin~q\ & (((\U_GESTOR|clave_ok_i~9_combout\ & \U_GESTOR|clave_ok_i~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GESTOR|clave_ok_i~4_combout\,
	datab => \U_GESTOR|es_admin~q\,
	datac => \U_GESTOR|clave_ok_i~9_combout\,
	datad => \U_GESTOR|clave_ok_i~14_combout\,
	combout => \U_GESTOR|clave_correcta~0_combout\);

-- Location: LCCOMB_X22_Y16_N6
\U_FSM|iniciar_error~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_FSM|iniciar_error~0_combout\ = (!\intrusion_total_s~0_combout\ & (!\U_GESTOR|clave_correcta~0_combout\ & ((\U_GESTOR|es_admin~q\) # (!\U_FSM|estado_siguiente~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \intrusion_total_s~0_combout\,
	datab => \U_GESTOR|es_admin~q\,
	datac => \U_FSM|estado_siguiente~4_combout\,
	datad => \U_GESTOR|clave_correcta~0_combout\,
	combout => \U_FSM|iniciar_error~0_combout\);

-- Location: LCCOMB_X27_Y16_N18
\U_FSM|iniciar_error~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_FSM|iniciar_error~1_combout\ = ((\U_FSM|intentos\(1)) # ((!\U_FSM|iniciar_error~0_combout\) # (!\U_FSM|process_1~0_combout\))) # (!\U_REGISTRO|contador\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REGISTRO|contador\(2),
	datab => \U_FSM|intentos\(1),
	datac => \U_FSM|process_1~0_combout\,
	datad => \U_FSM|iniciar_error~0_combout\,
	combout => \U_FSM|iniciar_error~1_combout\);

-- Location: LCCOMB_X27_Y16_N2
\U_TIMER_ERROR|contador~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TIMER_ERROR|contador~6_combout\ = (\U_TIMER_ERROR|Add0~0_combout\ & (((\U_FSM|iniciar_error~1_combout\) # (!\U_FSM|estado_actual.INGRESO~q\)) # (!\U_FSM|volver_idle~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_TIMER_ERROR|Add0~0_combout\,
	datab => \U_FSM|volver_idle~1_combout\,
	datac => \U_FSM|estado_actual.INGRESO~q\,
	datad => \U_FSM|iniciar_error~1_combout\,
	combout => \U_TIMER_ERROR|contador~6_combout\);

-- Location: LCCOMB_X27_Y16_N20
\U_FSM|iniciar_error~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_FSM|iniciar_error~2_combout\ = (\U_FSM|estado_actual.INGRESO~q\ & (\U_FSM|Selector6~4_combout\ & !\U_FSM|iniciar_error~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|estado_actual.INGRESO~q\,
	datac => \U_FSM|Selector6~4_combout\,
	datad => \U_FSM|iniciar_error~1_combout\,
	combout => \U_FSM|iniciar_error~2_combout\);

-- Location: LCCOMB_X27_Y16_N4
\U_TIMER_ERROR|contador[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TIMER_ERROR|contador[2]~1_combout\ = (\U_FSM|iniciar_error~2_combout\) # ((\U_TIMER_ERROR|en_marcha~q\ & (\U_TIMER_ERROR|LessThan0~1_combout\ & \U_TICK|tick_1s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_TIMER_ERROR|en_marcha~q\,
	datab => \U_TIMER_ERROR|LessThan0~1_combout\,
	datac => \U_TICK|tick_1s~q\,
	datad => \U_FSM|iniciar_error~2_combout\,
	combout => \U_TIMER_ERROR|contador[2]~1_combout\);

-- Location: FF_X27_Y16_N3
\U_TIMER_ERROR|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_TIMER_ERROR|contador~6_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \U_TIMER_ERROR|contador[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TIMER_ERROR|contador\(0));

-- Location: LCCOMB_X28_Y16_N8
\U_TIMER_ERROR|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TIMER_ERROR|Add0~2_combout\ = (\U_TIMER_ERROR|contador\(1) & (\U_TIMER_ERROR|Add0~1\ & VCC)) # (!\U_TIMER_ERROR|contador\(1) & (!\U_TIMER_ERROR|Add0~1\))
-- \U_TIMER_ERROR|Add0~3\ = CARRY((!\U_TIMER_ERROR|contador\(1) & !\U_TIMER_ERROR|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_TIMER_ERROR|contador\(1),
	datad => VCC,
	cin => \U_TIMER_ERROR|Add0~1\,
	combout => \U_TIMER_ERROR|Add0~2_combout\,
	cout => \U_TIMER_ERROR|Add0~3\);

-- Location: LCCOMB_X27_Y16_N16
\U_TIMER_ERROR|contador~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TIMER_ERROR|contador~5_combout\ = (\U_TIMER_ERROR|Add0~2_combout\) # ((\U_FSM|estado_actual.INGRESO~q\ & (\U_FSM|volver_idle~1_combout\ & !\U_FSM|iniciar_error~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|estado_actual.INGRESO~q\,
	datab => \U_TIMER_ERROR|Add0~2_combout\,
	datac => \U_FSM|volver_idle~1_combout\,
	datad => \U_FSM|iniciar_error~1_combout\,
	combout => \U_TIMER_ERROR|contador~5_combout\);

-- Location: FF_X27_Y16_N17
\U_TIMER_ERROR|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_TIMER_ERROR|contador~5_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \U_TIMER_ERROR|contador[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TIMER_ERROR|contador\(1));

-- Location: LCCOMB_X28_Y16_N10
\U_TIMER_ERROR|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TIMER_ERROR|Add0~4_combout\ = (\U_TIMER_ERROR|contador\(2) & ((GND) # (!\U_TIMER_ERROR|Add0~3\))) # (!\U_TIMER_ERROR|contador\(2) & (\U_TIMER_ERROR|Add0~3\ $ (GND)))
-- \U_TIMER_ERROR|Add0~5\ = CARRY((\U_TIMER_ERROR|contador\(2)) # (!\U_TIMER_ERROR|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_TIMER_ERROR|contador\(2),
	datad => VCC,
	cin => \U_TIMER_ERROR|Add0~3\,
	combout => \U_TIMER_ERROR|Add0~4_combout\,
	cout => \U_TIMER_ERROR|Add0~5\);

-- Location: LCCOMB_X27_Y16_N24
\U_TIMER_ERROR|contador~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TIMER_ERROR|contador~4_combout\ = (\U_TIMER_ERROR|Add0~4_combout\ & (((\U_FSM|iniciar_error~1_combout\) # (!\U_FSM|volver_idle~1_combout\)) # (!\U_FSM|estado_actual.INGRESO~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|estado_actual.INGRESO~q\,
	datab => \U_TIMER_ERROR|Add0~4_combout\,
	datac => \U_FSM|volver_idle~1_combout\,
	datad => \U_FSM|iniciar_error~1_combout\,
	combout => \U_TIMER_ERROR|contador~4_combout\);

-- Location: FF_X27_Y16_N25
\U_TIMER_ERROR|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_TIMER_ERROR|contador~4_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \U_TIMER_ERROR|contador[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TIMER_ERROR|contador\(2));

-- Location: LCCOMB_X28_Y16_N12
\U_TIMER_ERROR|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TIMER_ERROR|Add0~6_combout\ = (\U_TIMER_ERROR|contador\(3) & (\U_TIMER_ERROR|Add0~5\ & VCC)) # (!\U_TIMER_ERROR|contador\(3) & (!\U_TIMER_ERROR|Add0~5\))
-- \U_TIMER_ERROR|Add0~7\ = CARRY((!\U_TIMER_ERROR|contador\(3) & !\U_TIMER_ERROR|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_TIMER_ERROR|contador\(3),
	datad => VCC,
	cin => \U_TIMER_ERROR|Add0~5\,
	combout => \U_TIMER_ERROR|Add0~6_combout\,
	cout => \U_TIMER_ERROR|Add0~7\);

-- Location: LCCOMB_X27_Y16_N6
\U_TIMER_ERROR|contador~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TIMER_ERROR|contador~3_combout\ = (\U_TIMER_ERROR|Add0~6_combout\ & (((\U_FSM|iniciar_error~1_combout\) # (!\U_FSM|volver_idle~1_combout\)) # (!\U_FSM|estado_actual.INGRESO~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|estado_actual.INGRESO~q\,
	datab => \U_TIMER_ERROR|Add0~6_combout\,
	datac => \U_FSM|volver_idle~1_combout\,
	datad => \U_FSM|iniciar_error~1_combout\,
	combout => \U_TIMER_ERROR|contador~3_combout\);

-- Location: FF_X27_Y16_N7
\U_TIMER_ERROR|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_TIMER_ERROR|contador~3_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \U_TIMER_ERROR|contador[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TIMER_ERROR|contador\(3));

-- Location: LCCOMB_X28_Y16_N14
\U_TIMER_ERROR|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TIMER_ERROR|Add0~8_combout\ = (\U_TIMER_ERROR|contador\(4) & ((GND) # (!\U_TIMER_ERROR|Add0~7\))) # (!\U_TIMER_ERROR|contador\(4) & (\U_TIMER_ERROR|Add0~7\ $ (GND)))
-- \U_TIMER_ERROR|Add0~9\ = CARRY((\U_TIMER_ERROR|contador\(4)) # (!\U_TIMER_ERROR|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_TIMER_ERROR|contador\(4),
	datad => VCC,
	cin => \U_TIMER_ERROR|Add0~7\,
	combout => \U_TIMER_ERROR|Add0~8_combout\,
	cout => \U_TIMER_ERROR|Add0~9\);

-- Location: LCCOMB_X27_Y16_N12
\U_TIMER_ERROR|contador~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TIMER_ERROR|contador~2_combout\ = (\U_TIMER_ERROR|Add0~8_combout\ & (((\U_FSM|iniciar_error~1_combout\) # (!\U_FSM|volver_idle~1_combout\)) # (!\U_FSM|estado_actual.INGRESO~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|estado_actual.INGRESO~q\,
	datab => \U_TIMER_ERROR|Add0~8_combout\,
	datac => \U_FSM|volver_idle~1_combout\,
	datad => \U_FSM|iniciar_error~1_combout\,
	combout => \U_TIMER_ERROR|contador~2_combout\);

-- Location: FF_X27_Y16_N13
\U_TIMER_ERROR|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_TIMER_ERROR|contador~2_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \U_TIMER_ERROR|contador[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TIMER_ERROR|contador\(4));

-- Location: LCCOMB_X28_Y16_N16
\U_TIMER_ERROR|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TIMER_ERROR|Add0~10_combout\ = \U_TIMER_ERROR|Add0~9\ $ (!\U_TIMER_ERROR|contador\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U_TIMER_ERROR|contador\(5),
	cin => \U_TIMER_ERROR|Add0~9\,
	combout => \U_TIMER_ERROR|Add0~10_combout\);

-- Location: LCCOMB_X27_Y16_N14
\U_TIMER_ERROR|contador~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TIMER_ERROR|contador~0_combout\ = (\U_TIMER_ERROR|Add0~10_combout\ & (((\U_FSM|iniciar_error~1_combout\) # (!\U_FSM|volver_idle~1_combout\)) # (!\U_FSM|estado_actual.INGRESO~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|estado_actual.INGRESO~q\,
	datab => \U_TIMER_ERROR|Add0~10_combout\,
	datac => \U_FSM|volver_idle~1_combout\,
	datad => \U_FSM|iniciar_error~1_combout\,
	combout => \U_TIMER_ERROR|contador~0_combout\);

-- Location: FF_X27_Y16_N15
\U_TIMER_ERROR|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_TIMER_ERROR|contador~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \U_TIMER_ERROR|contador[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TIMER_ERROR|contador\(5));

-- Location: LCCOMB_X27_Y16_N22
\U_TIMER_ERROR|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TIMER_ERROR|LessThan0~0_combout\ = (\U_TIMER_ERROR|contador\(4)) # ((\U_TIMER_ERROR|contador\(2)) # ((\U_TIMER_ERROR|contador\(5)) # (\U_TIMER_ERROR|contador\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_TIMER_ERROR|contador\(4),
	datab => \U_TIMER_ERROR|contador\(2),
	datac => \U_TIMER_ERROR|contador\(5),
	datad => \U_TIMER_ERROR|contador\(3),
	combout => \U_TIMER_ERROR|LessThan0~0_combout\);

-- Location: LCCOMB_X27_Y16_N0
\U_TIMER_ERROR|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TIMER_ERROR|LessThan0~1_combout\ = (\U_TIMER_ERROR|contador\(0)) # ((\U_TIMER_ERROR|LessThan0~0_combout\) # (\U_TIMER_ERROR|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_TIMER_ERROR|contador\(0),
	datac => \U_TIMER_ERROR|LessThan0~0_combout\,
	datad => \U_TIMER_ERROR|contador\(1),
	combout => \U_TIMER_ERROR|LessThan0~1_combout\);

-- Location: LCCOMB_X27_Y16_N10
\U_TIMER_ERROR|en_marcha~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TIMER_ERROR|en_marcha~0_combout\ = (\U_FSM|iniciar_error~2_combout\) # ((\U_TIMER_ERROR|en_marcha~q\ & ((\U_TIMER_ERROR|LessThan0~1_combout\) # (!\U_TICK|tick_1s~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_TIMER_ERROR|LessThan0~1_combout\,
	datab => \U_TICK|tick_1s~q\,
	datac => \U_TIMER_ERROR|en_marcha~q\,
	datad => \U_FSM|iniciar_error~2_combout\,
	combout => \U_TIMER_ERROR|en_marcha~0_combout\);

-- Location: FF_X27_Y16_N11
\U_TIMER_ERROR|en_marcha\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_TIMER_ERROR|en_marcha~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TIMER_ERROR|en_marcha~q\);

-- Location: LCCOMB_X27_Y16_N28
\U_TIMER_ERROR|fin~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TIMER_ERROR|fin~0_combout\ = (\U_TIMER_ERROR|en_marcha~q\ & (!\U_TIMER_ERROR|LessThan0~1_combout\ & (\U_TICK|tick_1s~q\ & !\U_FSM|iniciar_error~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_TIMER_ERROR|en_marcha~q\,
	datab => \U_TIMER_ERROR|LessThan0~1_combout\,
	datac => \U_TICK|tick_1s~q\,
	datad => \U_FSM|iniciar_error~2_combout\,
	combout => \U_TIMER_ERROR|fin~0_combout\);

-- Location: FF_X27_Y16_N29
\U_TIMER_ERROR|fin\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_TIMER_ERROR|fin~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TIMER_ERROR|fin~q\);

-- Location: LCCOMB_X24_Y16_N14
\U_TIMER_BLOQUEO|contador[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TIMER_BLOQUEO|contador[0]~6_combout\ = \U_TIMER_BLOQUEO|contador\(0) $ (VCC)
-- \U_TIMER_BLOQUEO|contador[0]~7\ = CARRY(\U_TIMER_BLOQUEO|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_TIMER_BLOQUEO|contador\(0),
	datad => VCC,
	combout => \U_TIMER_BLOQUEO|contador[0]~6_combout\,
	cout => \U_TIMER_BLOQUEO|contador[0]~7\);

-- Location: LCCOMB_X26_Y16_N4
\~GND\ : cycloneiii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X19_Y16_N23
\U_FSM|estado_actual.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U_FSM|estado_siguiente.IDLE~14_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FSM|estado_actual.IDLE~q\);

-- Location: LCCOMB_X19_Y16_N24
\U_FSM|estado_siguiente.INGRESO~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_FSM|estado_siguiente.INGRESO~11_combout\ = (\U_FSM|estado_actual.BLOQUEO~q\) # ((!\intrusion_total_s~0_combout\ & ((\U_FSM|estado_actual.ABRIR~q\) # (\U_FSM|estado_actual.ERROR_CLAVE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|estado_actual.ABRIR~q\,
	datab => \U_FSM|estado_actual.ERROR_CLAVE~q\,
	datac => \intrusion_total_s~0_combout\,
	datad => \U_FSM|estado_actual.BLOQUEO~q\,
	combout => \U_FSM|estado_siguiente.INGRESO~11_combout\);

-- Location: LCCOMB_X19_Y16_N0
\U_FSM|estado_siguiente.INGRESO~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_FSM|estado_siguiente.INGRESO~8_combout\ = (\U_FSM|volver_idle~1_combout\ & ((!\U_FSM|estado_siguiente.INGRESO~11_combout\) # (!\U_FSM|estado_siguiente.INGRESO~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|estado_siguiente.INGRESO~7_combout\,
	datab => \U_FSM|estado_siguiente.INGRESO~11_combout\,
	datad => \U_FSM|volver_idle~1_combout\,
	combout => \U_FSM|estado_siguiente.INGRESO~8_combout\);

-- Location: LCCOMB_X19_Y16_N2
\U_FSM|iniciar_bloqueo~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_FSM|iniciar_bloqueo~4_combout\ = (\U_FSM|estado_actual.IDLE~q\ & (((!\U_FSM|estado_actual.ABRIR~q\ & !\U_FSM|estado_actual.ERROR_CLAVE~q\)) # (!\U_FSM|estado_siguiente.INGRESO~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|estado_actual.ABRIR~q\,
	datab => \U_FSM|estado_actual.ERROR_CLAVE~q\,
	datac => \U_FSM|estado_actual.IDLE~q\,
	datad => \U_FSM|estado_siguiente.INGRESO~8_combout\,
	combout => \U_FSM|iniciar_bloqueo~4_combout\);

-- Location: LCCOMB_X24_Y16_N2
\U_FSM|iniciar_bloqueo~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_FSM|iniciar_bloqueo~2_combout\ = (\U_FSM|estado_actual.INGRESO~q\ & (!\U_FSM|estado_siguiente.ERROR_CLAVE~9_combout\ & !\U_FSM|Selector2~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|estado_actual.INGRESO~q\,
	datac => \U_FSM|estado_siguiente.ERROR_CLAVE~9_combout\,
	datad => \U_FSM|Selector2~16_combout\,
	combout => \U_FSM|iniciar_bloqueo~2_combout\);

-- Location: LCCOMB_X24_Y16_N28
\U_FSM|iniciar_bloqueo~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_FSM|iniciar_bloqueo~3_combout\ = (\U_FSM|volver_idle~1_combout\ & (\U_FSM|estado_siguiente.BLOQUEO~4_combout\ & ((\U_FSM|iniciar_bloqueo~2_combout\) # (!\U_FSM|iniciar_bloqueo~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|iniciar_bloqueo~4_combout\,
	datab => \U_FSM|volver_idle~1_combout\,
	datac => \U_FSM|estado_siguiente.BLOQUEO~4_combout\,
	datad => \U_FSM|iniciar_bloqueo~2_combout\,
	combout => \U_FSM|iniciar_bloqueo~3_combout\);

-- Location: LCCOMB_X24_Y16_N4
\U_TIMER_BLOQUEO|contador[0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TIMER_BLOQUEO|contador[0]~8_combout\ = (\U_FSM|iniciar_bloqueo~3_combout\) # ((\U_TIMER_BLOQUEO|en_marcha~q\ & (\U_TICK|tick_1s~q\ & \U_TIMER_BLOQUEO|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_TIMER_BLOQUEO|en_marcha~q\,
	datab => \U_TICK|tick_1s~q\,
	datac => \U_TIMER_BLOQUEO|LessThan0~1_combout\,
	datad => \U_FSM|iniciar_bloqueo~3_combout\,
	combout => \U_TIMER_BLOQUEO|contador[0]~8_combout\);

-- Location: FF_X24_Y16_N15
\U_TIMER_BLOQUEO|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_TIMER_BLOQUEO|contador[0]~6_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => \U_FSM|iniciar_bloqueo~3_combout\,
	ena => \U_TIMER_BLOQUEO|contador[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TIMER_BLOQUEO|contador\(0));

-- Location: LCCOMB_X24_Y16_N16
\U_TIMER_BLOQUEO|contador[1]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TIMER_BLOQUEO|contador[1]~9_combout\ = (\U_TIMER_BLOQUEO|contador\(1) & (\U_TIMER_BLOQUEO|contador[0]~7\ & VCC)) # (!\U_TIMER_BLOQUEO|contador\(1) & (!\U_TIMER_BLOQUEO|contador[0]~7\))
-- \U_TIMER_BLOQUEO|contador[1]~10\ = CARRY((!\U_TIMER_BLOQUEO|contador\(1) & !\U_TIMER_BLOQUEO|contador[0]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_TIMER_BLOQUEO|contador\(1),
	datad => VCC,
	cin => \U_TIMER_BLOQUEO|contador[0]~7\,
	combout => \U_TIMER_BLOQUEO|contador[1]~9_combout\,
	cout => \U_TIMER_BLOQUEO|contador[1]~10\);

-- Location: FF_X24_Y16_N17
\U_TIMER_BLOQUEO|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_TIMER_BLOQUEO|contador[1]~9_combout\,
	asdata => VCC,
	clrn => \ALT_INV_RESET~input_o\,
	sload => \U_FSM|iniciar_bloqueo~3_combout\,
	ena => \U_TIMER_BLOQUEO|contador[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TIMER_BLOQUEO|contador\(1));

-- Location: LCCOMB_X24_Y16_N18
\U_TIMER_BLOQUEO|contador[2]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TIMER_BLOQUEO|contador[2]~11_combout\ = (\U_TIMER_BLOQUEO|contador\(2) & ((GND) # (!\U_TIMER_BLOQUEO|contador[1]~10\))) # (!\U_TIMER_BLOQUEO|contador\(2) & (\U_TIMER_BLOQUEO|contador[1]~10\ $ (GND)))
-- \U_TIMER_BLOQUEO|contador[2]~12\ = CARRY((\U_TIMER_BLOQUEO|contador\(2)) # (!\U_TIMER_BLOQUEO|contador[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_TIMER_BLOQUEO|contador\(2),
	datad => VCC,
	cin => \U_TIMER_BLOQUEO|contador[1]~10\,
	combout => \U_TIMER_BLOQUEO|contador[2]~11_combout\,
	cout => \U_TIMER_BLOQUEO|contador[2]~12\);

-- Location: FF_X24_Y16_N19
\U_TIMER_BLOQUEO|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_TIMER_BLOQUEO|contador[2]~11_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => \U_FSM|iniciar_bloqueo~3_combout\,
	ena => \U_TIMER_BLOQUEO|contador[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TIMER_BLOQUEO|contador\(2));

-- Location: LCCOMB_X24_Y16_N20
\U_TIMER_BLOQUEO|contador[3]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TIMER_BLOQUEO|contador[3]~13_combout\ = (\U_TIMER_BLOQUEO|contador\(3) & (\U_TIMER_BLOQUEO|contador[2]~12\ & VCC)) # (!\U_TIMER_BLOQUEO|contador\(3) & (!\U_TIMER_BLOQUEO|contador[2]~12\))
-- \U_TIMER_BLOQUEO|contador[3]~14\ = CARRY((!\U_TIMER_BLOQUEO|contador\(3) & !\U_TIMER_BLOQUEO|contador[2]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_TIMER_BLOQUEO|contador\(3),
	datad => VCC,
	cin => \U_TIMER_BLOQUEO|contador[2]~12\,
	combout => \U_TIMER_BLOQUEO|contador[3]~13_combout\,
	cout => \U_TIMER_BLOQUEO|contador[3]~14\);

-- Location: FF_X24_Y16_N21
\U_TIMER_BLOQUEO|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_TIMER_BLOQUEO|contador[3]~13_combout\,
	asdata => VCC,
	clrn => \ALT_INV_RESET~input_o\,
	sload => \U_FSM|iniciar_bloqueo~3_combout\,
	ena => \U_TIMER_BLOQUEO|contador[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TIMER_BLOQUEO|contador\(3));

-- Location: LCCOMB_X24_Y16_N22
\U_TIMER_BLOQUEO|contador[4]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TIMER_BLOQUEO|contador[4]~15_combout\ = (\U_TIMER_BLOQUEO|contador\(4) & ((GND) # (!\U_TIMER_BLOQUEO|contador[3]~14\))) # (!\U_TIMER_BLOQUEO|contador\(4) & (\U_TIMER_BLOQUEO|contador[3]~14\ $ (GND)))
-- \U_TIMER_BLOQUEO|contador[4]~16\ = CARRY((\U_TIMER_BLOQUEO|contador\(4)) # (!\U_TIMER_BLOQUEO|contador[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_TIMER_BLOQUEO|contador\(4),
	datad => VCC,
	cin => \U_TIMER_BLOQUEO|contador[3]~14\,
	combout => \U_TIMER_BLOQUEO|contador[4]~15_combout\,
	cout => \U_TIMER_BLOQUEO|contador[4]~16\);

-- Location: FF_X24_Y16_N23
\U_TIMER_BLOQUEO|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_TIMER_BLOQUEO|contador[4]~15_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => \U_FSM|iniciar_bloqueo~3_combout\,
	ena => \U_TIMER_BLOQUEO|contador[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TIMER_BLOQUEO|contador\(4));

-- Location: LCCOMB_X24_Y16_N24
\U_TIMER_BLOQUEO|contador[5]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TIMER_BLOQUEO|contador[5]~17_combout\ = \U_TIMER_BLOQUEO|contador[4]~16\ $ (!\U_TIMER_BLOQUEO|contador\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U_TIMER_BLOQUEO|contador\(5),
	cin => \U_TIMER_BLOQUEO|contador[4]~16\,
	combout => \U_TIMER_BLOQUEO|contador[5]~17_combout\);

-- Location: FF_X24_Y16_N25
\U_TIMER_BLOQUEO|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_TIMER_BLOQUEO|contador[5]~17_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => \U_FSM|iniciar_bloqueo~3_combout\,
	ena => \U_TIMER_BLOQUEO|contador[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TIMER_BLOQUEO|contador\(5));

-- Location: LCCOMB_X24_Y16_N0
\U_TIMER_BLOQUEO|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TIMER_BLOQUEO|LessThan0~0_combout\ = (\U_TIMER_BLOQUEO|contador\(3)) # ((\U_TIMER_BLOQUEO|contador\(5)) # ((\U_TIMER_BLOQUEO|contador\(4)) # (\U_TIMER_BLOQUEO|contador\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_TIMER_BLOQUEO|contador\(3),
	datab => \U_TIMER_BLOQUEO|contador\(5),
	datac => \U_TIMER_BLOQUEO|contador\(4),
	datad => \U_TIMER_BLOQUEO|contador\(2),
	combout => \U_TIMER_BLOQUEO|LessThan0~0_combout\);

-- Location: LCCOMB_X24_Y16_N30
\U_TIMER_BLOQUEO|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TIMER_BLOQUEO|LessThan0~1_combout\ = (\U_TIMER_BLOQUEO|contador\(1)) # ((\U_TIMER_BLOQUEO|contador\(0)) # (\U_TIMER_BLOQUEO|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_TIMER_BLOQUEO|contador\(1),
	datac => \U_TIMER_BLOQUEO|contador\(0),
	datad => \U_TIMER_BLOQUEO|LessThan0~0_combout\,
	combout => \U_TIMER_BLOQUEO|LessThan0~1_combout\);

-- Location: LCCOMB_X24_Y16_N26
\U_TIMER_BLOQUEO|en_marcha~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TIMER_BLOQUEO|en_marcha~0_combout\ = (\U_FSM|iniciar_bloqueo~3_combout\) # ((\U_TIMER_BLOQUEO|en_marcha~q\ & ((\U_TIMER_BLOQUEO|LessThan0~1_combout\) # (!\U_TICK|tick_1s~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_TIMER_BLOQUEO|LessThan0~1_combout\,
	datab => \U_TICK|tick_1s~q\,
	datac => \U_TIMER_BLOQUEO|en_marcha~q\,
	datad => \U_FSM|iniciar_bloqueo~3_combout\,
	combout => \U_TIMER_BLOQUEO|en_marcha~0_combout\);

-- Location: FF_X24_Y16_N27
\U_TIMER_BLOQUEO|en_marcha\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_TIMER_BLOQUEO|en_marcha~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TIMER_BLOQUEO|en_marcha~q\);

-- Location: LCCOMB_X24_Y16_N8
\U_TIMER_BLOQUEO|fin~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TIMER_BLOQUEO|fin~0_combout\ = (\U_TIMER_BLOQUEO|en_marcha~q\ & (\U_TICK|tick_1s~q\ & (!\U_TIMER_BLOQUEO|LessThan0~1_combout\ & !\U_FSM|iniciar_bloqueo~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_TIMER_BLOQUEO|en_marcha~q\,
	datab => \U_TICK|tick_1s~q\,
	datac => \U_TIMER_BLOQUEO|LessThan0~1_combout\,
	datad => \U_FSM|iniciar_bloqueo~3_combout\,
	combout => \U_TIMER_BLOQUEO|fin~0_combout\);

-- Location: FF_X24_Y16_N9
\U_TIMER_BLOQUEO|fin\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_TIMER_BLOQUEO|fin~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TIMER_BLOQUEO|fin~q\);

-- Location: LCCOMB_X19_Y16_N18
\U_FSM|estado_siguiente.INGRESO~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_FSM|estado_siguiente.INGRESO~6_combout\ = (!\U_FSM|estado_actual.ABRIR~q\ & ((\U_FSM|estado_actual.BLOQUEO~q\ & ((\U_TIMER_BLOQUEO|fin~q\))) # (!\U_FSM|estado_actual.BLOQUEO~q\ & (\U_TIMER_ERROR|fin~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|estado_actual.ABRIR~q\,
	datab => \U_FSM|estado_actual.BLOQUEO~q\,
	datac => \U_TIMER_ERROR|fin~q\,
	datad => \U_TIMER_BLOQUEO|fin~q\,
	combout => \U_FSM|estado_siguiente.INGRESO~6_combout\);

-- Location: LCCOMB_X19_Y16_N6
\U_FSM|estado_siguiente.INGRESO~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_FSM|estado_siguiente.INGRESO~7_combout\ = (\U_FSM|estado_siguiente.INGRESO~6_combout\) # ((\U_FSM|estado_actual.ABRIR~q\ & \U_TIMER_OPEN|fin~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|estado_actual.ABRIR~q\,
	datac => \U_TIMER_OPEN|fin~q\,
	datad => \U_FSM|estado_siguiente.INGRESO~6_combout\,
	combout => \U_FSM|estado_siguiente.INGRESO~7_combout\);

-- Location: LCCOMB_X19_Y16_N22
\U_FSM|estado_siguiente.INGRESO~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_FSM|estado_siguiente.INGRESO~5_combout\ = (\intrusion_total_s~0_combout\ & (((!\HEX3~4_combout\) # (!\U_FSM|estado_actual.IDLE~q\)))) # (!\intrusion_total_s~0_combout\ & (\U_GESTOR|hay_usuario~q\ & (!\U_FSM|estado_actual.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \intrusion_total_s~0_combout\,
	datab => \U_GESTOR|hay_usuario~q\,
	datac => \U_FSM|estado_actual.IDLE~q\,
	datad => \HEX3~4_combout\,
	combout => \U_FSM|estado_siguiente.INGRESO~5_combout\);

-- Location: LCCOMB_X19_Y16_N26
\U_FSM|estado_siguiente.IDLE~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_FSM|estado_siguiente.IDLE~13_combout\ = (!\U_FSM|estado_actual.IDLE~q\ & (!\U_FSM|estado_siguiente.INGRESO~5_combout\ & !\U_FSM|estado_siguiente.INGRESO~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_FSM|estado_actual.IDLE~q\,
	datac => \U_FSM|estado_siguiente.INGRESO~5_combout\,
	datad => \U_FSM|estado_siguiente.INGRESO~4_combout\,
	combout => \U_FSM|estado_siguiente.IDLE~13_combout\);

-- Location: LCCOMB_X19_Y16_N4
\U_FSM|estado_siguiente.IDLE~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_FSM|estado_siguiente.IDLE~14_combout\ = (!\U_FSM|estado_siguiente.IDLE~13_combout\ & (\U_FSM|volver_idle~1_combout\ & ((!\U_FSM|estado_siguiente.INGRESO~11_combout\) # (!\U_FSM|estado_siguiente.INGRESO~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|estado_siguiente.INGRESO~7_combout\,
	datab => \U_FSM|estado_siguiente.INGRESO~11_combout\,
	datac => \U_FSM|estado_siguiente.IDLE~13_combout\,
	datad => \U_FSM|volver_idle~1_combout\,
	combout => \U_FSM|estado_siguiente.IDLE~14_combout\);

-- Location: LCCOMB_X19_Y16_N10
\U_REGISTRO|contador~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_REGISTRO|contador~2_combout\ = (\U_FSM|volver_idle~1_combout\ & ((\U_FSM|estado_siguiente.IDLE~14_combout\) # ((!\U_FSM|estado_actual.BLOQUEO~q\ & \HEX3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|estado_actual.BLOQUEO~q\,
	datab => \HEX3~4_combout\,
	datac => \U_FSM|estado_siguiente.IDLE~14_combout\,
	datad => \U_FSM|volver_idle~1_combout\,
	combout => \U_REGISTRO|contador~2_combout\);

-- Location: LCCOMB_X22_Y16_N0
\U_REGISTRO|contador~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_REGISTRO|contador~3_combout\ = (\U_FSM|estado_actual.INGRESO~q\ & (((!\U_FSM|estado_siguiente.ERROR_CLAVE~9_combout\ & !\U_FSM|estado_siguiente.BLOQUEO~4_combout\)))) # (!\U_FSM|estado_actual.INGRESO~q\ & ((\HEX3~4_combout\) # 
-- ((!\U_FSM|estado_siguiente.BLOQUEO~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|estado_actual.INGRESO~q\,
	datab => \HEX3~4_combout\,
	datac => \U_FSM|estado_siguiente.ERROR_CLAVE~9_combout\,
	datad => \U_FSM|estado_siguiente.BLOQUEO~4_combout\,
	combout => \U_REGISTRO|contador~3_combout\);

-- Location: LCCOMB_X22_Y16_N20
\U_REGISTRO|contador~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_REGISTRO|contador~4_combout\ = (\U_REGISTRO|contador~2_combout\ & (\U_REGISTRO|contador~3_combout\ & ((!\U_FSM|estado_actual.INGRESO~q\) # (!\U_FSM|Selector2~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|Selector2~16_combout\,
	datab => \U_FSM|estado_actual.INGRESO~q\,
	datac => \U_REGISTRO|contador~2_combout\,
	datad => \U_REGISTRO|contador~3_combout\,
	combout => \U_REGISTRO|contador~4_combout\);

-- Location: FF_X22_Y16_N21
\U_GESTOR|hay_usuario\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_REGISTRO|contador~4_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \U_GESTOR|base_addr_reg[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GESTOR|hay_usuario~q\);

-- Location: LCCOMB_X23_Y16_N4
\U_FSM|estado_siguiente.IDLE~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_FSM|estado_siguiente.IDLE~12_combout\ = (\U_FSM|volver_idle~1_combout\ & (\U_GESTOR|hay_usuario~q\ & (!\intrusion_total_s~0_combout\ & !\U_FSM|estado_actual.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|volver_idle~1_combout\,
	datab => \U_GESTOR|hay_usuario~q\,
	datac => \intrusion_total_s~0_combout\,
	datad => \U_FSM|estado_actual.IDLE~q\,
	combout => \U_FSM|estado_siguiente.IDLE~12_combout\);

-- Location: LCCOMB_X20_Y16_N12
\U_FSM|estado_siguiente.INGRESO~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_FSM|estado_siguiente.INGRESO~9_combout\ = (\U_FSM|estado_siguiente.INGRESO~5_combout\) # ((\U_FSM|estado_siguiente.INGRESO~4_combout\) # (!\U_FSM|estado_siguiente.INGRESO~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|estado_siguiente.INGRESO~5_combout\,
	datac => \U_FSM|estado_siguiente.INGRESO~8_combout\,
	datad => \U_FSM|estado_siguiente.INGRESO~4_combout\,
	combout => \U_FSM|estado_siguiente.INGRESO~9_combout\);

-- Location: LCCOMB_X21_Y16_N8
\U_FSM|estado_siguiente.INGRESO~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_FSM|estado_siguiente.INGRESO~10_combout\ = (\U_FSM|estado_siguiente.INGRESO~9_combout\ & (\U_FSM|estado_siguiente.IDLE~12_combout\)) # (!\U_FSM|estado_siguiente.INGRESO~9_combout\ & ((\U_FSM|estado_actual.INGRESO~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_FSM|estado_siguiente.IDLE~12_combout\,
	datac => \U_FSM|estado_actual.INGRESO~q\,
	datad => \U_FSM|estado_siguiente.INGRESO~9_combout\,
	combout => \U_FSM|estado_siguiente.INGRESO~10_combout\);

-- Location: FF_X21_Y16_N9
\U_FSM|estado_actual.INGRESO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_FSM|estado_siguiente.INGRESO~10_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FSM|estado_actual.INGRESO~q\);

-- Location: LCCOMB_X19_Y16_N20
\U_FSM|estado_siguiente.INGRESO~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_FSM|estado_siguiente.INGRESO~4_combout\ = (\U_FSM|estado_actual.INGRESO~q\ & ((\intrusion_total_s~0_combout\) # ((\U_REGISTRO|contador\(2) & \U_FSM|process_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|estado_actual.INGRESO~q\,
	datab => \U_REGISTRO|contador\(2),
	datac => \intrusion_total_s~0_combout\,
	datad => \U_FSM|process_1~0_combout\,
	combout => \U_FSM|estado_siguiente.INGRESO~4_combout\);

-- Location: LCCOMB_X23_Y16_N26
\U_FSM|estado_siguiente.ERROR_CLAVE~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_FSM|estado_siguiente.ERROR_CLAVE~6_combout\ = (\U_FSM|estado_actual.BLOQUEO~q\) # ((!\intrusion_total_s~0_combout\ & ((!\HEX3~4_combout\) # (!\U_FSM|estado_actual.IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \intrusion_total_s~0_combout\,
	datab => \U_FSM|estado_actual.IDLE~q\,
	datac => \U_FSM|estado_actual.BLOQUEO~q\,
	datad => \HEX3~4_combout\,
	combout => \U_FSM|estado_siguiente.ERROR_CLAVE~6_combout\);

-- Location: LCCOMB_X22_Y16_N12
\U_FSM|estado_siguiente.ERROR_CLAVE~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_FSM|estado_siguiente.ERROR_CLAVE~7_combout\ = (\U_FSM|estado_siguiente.ERROR_CLAVE~6_combout\ & ((\U_FSM|estado_actual.IDLE~q\ & ((\U_FSM|estado_siguiente.INGRESO~7_combout\))) # (!\U_FSM|estado_actual.IDLE~q\ & (\U_GESTOR|hay_usuario~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|estado_actual.IDLE~q\,
	datab => \U_GESTOR|hay_usuario~q\,
	datac => \U_FSM|estado_siguiente.INGRESO~7_combout\,
	datad => \U_FSM|estado_siguiente.ERROR_CLAVE~6_combout\,
	combout => \U_FSM|estado_siguiente.ERROR_CLAVE~7_combout\);

-- Location: LCCOMB_X22_Y16_N16
\U_FSM|estado_siguiente.BLOQUEO~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_FSM|estado_siguiente.BLOQUEO~1_combout\ = (!\U_FSM|estado_siguiente.ERROR_CLAVE~7_combout\ & ((\U_FSM|estado_actual.BLOQUEO~q\) # ((!\U_FSM|estado_actual.INGRESO~q\ & !\U_FSM|estado_siguiente.ERROR_CLAVE~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|estado_actual.INGRESO~q\,
	datab => \U_FSM|estado_siguiente.ERROR_CLAVE~6_combout\,
	datac => \U_FSM|estado_actual.BLOQUEO~q\,
	datad => \U_FSM|estado_siguiente.ERROR_CLAVE~7_combout\,
	combout => \U_FSM|estado_siguiente.BLOQUEO~1_combout\);

-- Location: LCCOMB_X21_Y16_N28
\U_FSM|estado_siguiente.BLOQUEO~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_FSM|estado_siguiente.BLOQUEO~2_combout\ = (!\U_GESTOR|es_admin~q\ & ((\U_GESTOR|Equal6~0_combout\) # (\U_GESTOR|horario_ram\(0) $ (!\U_HORARIO|horario[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GESTOR|horario_ram\(0),
	datab => \U_GESTOR|es_admin~q\,
	datac => \U_HORARIO|horario[0]~4_combout\,
	datad => \U_GESTOR|Equal6~0_combout\,
	combout => \U_FSM|estado_siguiente.BLOQUEO~2_combout\);

-- Location: LCCOMB_X21_Y16_N6
\U_FSM|estado_siguiente.BLOQUEO~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_FSM|estado_siguiente.BLOQUEO~3_combout\ = (!\U_FSM|estado_siguiente.BLOQUEO~2_combout\ & ((\U_GESTOR|Equal5~0_combout\) # ((\U_GESTOR|es_admin~q\) # (\U_GESTOR|Equal5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GESTOR|Equal5~0_combout\,
	datab => \U_GESTOR|es_admin~q\,
	datac => \U_GESTOR|Equal5~1_combout\,
	datad => \U_FSM|estado_siguiente.BLOQUEO~2_combout\,
	combout => \U_FSM|estado_siguiente.BLOQUEO~3_combout\);

-- Location: LCCOMB_X22_Y16_N2
\U_FSM|estado_siguiente.BLOQUEO~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_FSM|estado_siguiente.BLOQUEO~0_combout\ = (\intrusion_total_s~0_combout\) # ((\U_FSM|intentos\(1) & !\U_GESTOR|clave_correcta~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|intentos\(1),
	datac => \intrusion_total_s~0_combout\,
	datad => \U_GESTOR|clave_correcta~0_combout\,
	combout => \U_FSM|estado_siguiente.BLOQUEO~0_combout\);

-- Location: LCCOMB_X22_Y16_N26
\U_FSM|estado_siguiente.BLOQUEO~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_FSM|estado_siguiente.BLOQUEO~4_combout\ = (\U_FSM|estado_siguiente.INGRESO~4_combout\ & (((\U_FSM|estado_siguiente.BLOQUEO~0_combout\) # (!\U_FSM|estado_siguiente.BLOQUEO~3_combout\)))) # (!\U_FSM|estado_siguiente.INGRESO~4_combout\ & 
-- (\U_FSM|estado_siguiente.BLOQUEO~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|estado_siguiente.INGRESO~4_combout\,
	datab => \U_FSM|estado_siguiente.BLOQUEO~1_combout\,
	datac => \U_FSM|estado_siguiente.BLOQUEO~3_combout\,
	datad => \U_FSM|estado_siguiente.BLOQUEO~0_combout\,
	combout => \U_FSM|estado_siguiente.BLOQUEO~4_combout\);

-- Location: LCCOMB_X20_Y19_N0
\U_FSM|estado_siguiente.BLOQUEO~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_FSM|estado_siguiente.BLOQUEO~5_combout\ = (\U_FSM|volver_idle~1_combout\ & \U_FSM|estado_siguiente.BLOQUEO~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_FSM|volver_idle~1_combout\,
	datad => \U_FSM|estado_siguiente.BLOQUEO~4_combout\,
	combout => \U_FSM|estado_siguiente.BLOQUEO~5_combout\);

-- Location: FF_X20_Y19_N1
\U_FSM|estado_actual.BLOQUEO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_FSM|estado_siguiente.BLOQUEO~5_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FSM|estado_actual.BLOQUEO~q\);

-- Location: LCCOMB_X20_Y19_N6
\U_FSM|volver_idle~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_FSM|volver_idle~0_combout\ = (\U_TECLADO|tecla_valida~q\ & \U_ADMIN|Equal4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_TECLADO|tecla_valida~q\,
	datad => \U_ADMIN|Equal4~0_combout\,
	combout => \U_FSM|volver_idle~0_combout\);

-- Location: LCCOMB_X20_Y19_N18
\U_FSM|volver_idle~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_FSM|volver_idle~1_combout\ = (!\salida_admin_s~combout\ & ((\U_FSM|estado_actual.BLOQUEO~q\) # ((!\U_FSM|volver_idle~0_combout\) # (!\U_FSM|estado_actual.IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \salida_admin_s~combout\,
	datab => \U_FSM|estado_actual.BLOQUEO~q\,
	datac => \U_FSM|estado_actual.IDLE~q\,
	datad => \U_FSM|volver_idle~0_combout\,
	combout => \U_FSM|volver_idle~1_combout\);

-- Location: LCCOMB_X20_Y18_N0
\U_FSM|Selector6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_FSM|Selector6~2_combout\ = (\U_REGISTRO|contador\(2) & (\U_FSM|estado_actual.INGRESO~q\ & \U_FSM|process_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REGISTRO|contador\(2),
	datac => \U_FSM|estado_actual.INGRESO~q\,
	datad => \U_FSM|process_1~0_combout\,
	combout => \U_FSM|Selector6~2_combout\);

-- Location: LCCOMB_X21_Y16_N24
\U_FSM|Selector6~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_FSM|Selector6~3_combout\ = (\U_FSM|Selector6~2_combout\ & (\U_GESTOR|clave_correcta~0_combout\ & ((\U_GESTOR|es_admin~q\) # (!\U_FSM|estado_siguiente~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|estado_siguiente~4_combout\,
	datab => \U_FSM|Selector6~2_combout\,
	datac => \U_GESTOR|es_admin~q\,
	datad => \U_GESTOR|clave_correcta~0_combout\,
	combout => \U_FSM|Selector6~3_combout\);

-- Location: LCCOMB_X21_Y16_N20
\U_FSM|iniciar_apertura~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_FSM|iniciar_apertura~0_combout\ = (!\intrusion_total_s~0_combout\ & (\U_FSM|volver_idle~1_combout\ & \U_FSM|Selector6~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \intrusion_total_s~0_combout\,
	datac => \U_FSM|volver_idle~1_combout\,
	datad => \U_FSM|Selector6~3_combout\,
	combout => \U_FSM|iniciar_apertura~0_combout\);

-- Location: LCCOMB_X26_Y16_N28
\U_TIMER_OPEN|en_marcha~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TIMER_OPEN|en_marcha~0_combout\ = (\U_FSM|iniciar_apertura~0_combout\) # ((\U_TIMER_OPEN|en_marcha~q\ & ((\U_TIMER_OPEN|LessThan0~1_combout\) # (!\U_TICK|tick_1s~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_TIMER_OPEN|LessThan0~1_combout\,
	datab => \U_TICK|tick_1s~q\,
	datac => \U_TIMER_OPEN|en_marcha~q\,
	datad => \U_FSM|iniciar_apertura~0_combout\,
	combout => \U_TIMER_OPEN|en_marcha~0_combout\);

-- Location: FF_X26_Y16_N29
\U_TIMER_OPEN|en_marcha\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_TIMER_OPEN|en_marcha~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TIMER_OPEN|en_marcha~q\);

-- Location: LCCOMB_X26_Y16_N10
\U_TIMER_OPEN|contador[0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TIMER_OPEN|contador[0]~8_combout\ = (\U_FSM|iniciar_apertura~0_combout\) # ((\U_TIMER_OPEN|LessThan0~1_combout\ & (\U_TIMER_OPEN|en_marcha~q\ & \U_TICK|tick_1s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_TIMER_OPEN|LessThan0~1_combout\,
	datab => \U_TIMER_OPEN|en_marcha~q\,
	datac => \U_TICK|tick_1s~q\,
	datad => \U_FSM|iniciar_apertura~0_combout\,
	combout => \U_TIMER_OPEN|contador[0]~8_combout\);

-- Location: FF_X26_Y16_N15
\U_TIMER_OPEN|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_TIMER_OPEN|contador[0]~6_combout\,
	asdata => VCC,
	clrn => \ALT_INV_RESET~input_o\,
	sload => \U_FSM|iniciar_apertura~0_combout\,
	ena => \U_TIMER_OPEN|contador[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TIMER_OPEN|contador\(0));

-- Location: LCCOMB_X26_Y16_N16
\U_TIMER_OPEN|contador[1]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TIMER_OPEN|contador[1]~9_combout\ = (\U_TIMER_OPEN|contador\(1) & (\U_TIMER_OPEN|contador[0]~7\ & VCC)) # (!\U_TIMER_OPEN|contador\(1) & (!\U_TIMER_OPEN|contador[0]~7\))
-- \U_TIMER_OPEN|contador[1]~10\ = CARRY((!\U_TIMER_OPEN|contador\(1) & !\U_TIMER_OPEN|contador[0]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_TIMER_OPEN|contador\(1),
	datad => VCC,
	cin => \U_TIMER_OPEN|contador[0]~7\,
	combout => \U_TIMER_OPEN|contador[1]~9_combout\,
	cout => \U_TIMER_OPEN|contador[1]~10\);

-- Location: FF_X26_Y16_N17
\U_TIMER_OPEN|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_TIMER_OPEN|contador[1]~9_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => \U_FSM|iniciar_apertura~0_combout\,
	ena => \U_TIMER_OPEN|contador[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TIMER_OPEN|contador\(1));

-- Location: LCCOMB_X26_Y16_N18
\U_TIMER_OPEN|contador[2]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TIMER_OPEN|contador[2]~11_combout\ = (\U_TIMER_OPEN|contador\(2) & ((GND) # (!\U_TIMER_OPEN|contador[1]~10\))) # (!\U_TIMER_OPEN|contador\(2) & (\U_TIMER_OPEN|contador[1]~10\ $ (GND)))
-- \U_TIMER_OPEN|contador[2]~12\ = CARRY((\U_TIMER_OPEN|contador\(2)) # (!\U_TIMER_OPEN|contador[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_TIMER_OPEN|contador\(2),
	datad => VCC,
	cin => \U_TIMER_OPEN|contador[1]~10\,
	combout => \U_TIMER_OPEN|contador[2]~11_combout\,
	cout => \U_TIMER_OPEN|contador[2]~12\);

-- Location: FF_X26_Y16_N19
\U_TIMER_OPEN|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_TIMER_OPEN|contador[2]~11_combout\,
	asdata => VCC,
	clrn => \ALT_INV_RESET~input_o\,
	sload => \U_FSM|iniciar_apertura~0_combout\,
	ena => \U_TIMER_OPEN|contador[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TIMER_OPEN|contador\(2));

-- Location: LCCOMB_X26_Y16_N20
\U_TIMER_OPEN|contador[3]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TIMER_OPEN|contador[3]~13_combout\ = (\U_TIMER_OPEN|contador\(3) & (\U_TIMER_OPEN|contador[2]~12\ & VCC)) # (!\U_TIMER_OPEN|contador\(3) & (!\U_TIMER_OPEN|contador[2]~12\))
-- \U_TIMER_OPEN|contador[3]~14\ = CARRY((!\U_TIMER_OPEN|contador\(3) & !\U_TIMER_OPEN|contador[2]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_TIMER_OPEN|contador\(3),
	datad => VCC,
	cin => \U_TIMER_OPEN|contador[2]~12\,
	combout => \U_TIMER_OPEN|contador[3]~13_combout\,
	cout => \U_TIMER_OPEN|contador[3]~14\);

-- Location: FF_X26_Y16_N21
\U_TIMER_OPEN|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_TIMER_OPEN|contador[3]~13_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => \U_FSM|iniciar_apertura~0_combout\,
	ena => \U_TIMER_OPEN|contador[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TIMER_OPEN|contador\(3));

-- Location: LCCOMB_X26_Y16_N22
\U_TIMER_OPEN|contador[4]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TIMER_OPEN|contador[4]~15_combout\ = (\U_TIMER_OPEN|contador\(4) & ((GND) # (!\U_TIMER_OPEN|contador[3]~14\))) # (!\U_TIMER_OPEN|contador\(4) & (\U_TIMER_OPEN|contador[3]~14\ $ (GND)))
-- \U_TIMER_OPEN|contador[4]~16\ = CARRY((\U_TIMER_OPEN|contador\(4)) # (!\U_TIMER_OPEN|contador[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_TIMER_OPEN|contador\(4),
	datad => VCC,
	cin => \U_TIMER_OPEN|contador[3]~14\,
	combout => \U_TIMER_OPEN|contador[4]~15_combout\,
	cout => \U_TIMER_OPEN|contador[4]~16\);

-- Location: FF_X26_Y16_N23
\U_TIMER_OPEN|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_TIMER_OPEN|contador[4]~15_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => \U_FSM|iniciar_apertura~0_combout\,
	ena => \U_TIMER_OPEN|contador[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TIMER_OPEN|contador\(4));

-- Location: LCCOMB_X26_Y16_N24
\U_TIMER_OPEN|contador[5]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TIMER_OPEN|contador[5]~17_combout\ = \U_TIMER_OPEN|contador[4]~16\ $ (!\U_TIMER_OPEN|contador\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U_TIMER_OPEN|contador\(5),
	cin => \U_TIMER_OPEN|contador[4]~16\,
	combout => \U_TIMER_OPEN|contador[5]~17_combout\);

-- Location: FF_X26_Y16_N25
\U_TIMER_OPEN|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_TIMER_OPEN|contador[5]~17_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => \U_FSM|iniciar_apertura~0_combout\,
	ena => \U_TIMER_OPEN|contador[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TIMER_OPEN|contador\(5));

-- Location: LCCOMB_X26_Y16_N26
\U_TIMER_OPEN|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TIMER_OPEN|LessThan0~0_combout\ = (\U_TIMER_OPEN|contador\(3)) # ((\U_TIMER_OPEN|contador\(2)) # ((\U_TIMER_OPEN|contador\(4)) # (\U_TIMER_OPEN|contador\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_TIMER_OPEN|contador\(3),
	datab => \U_TIMER_OPEN|contador\(2),
	datac => \U_TIMER_OPEN|contador\(4),
	datad => \U_TIMER_OPEN|contador\(5),
	combout => \U_TIMER_OPEN|LessThan0~0_combout\);

-- Location: LCCOMB_X26_Y16_N12
\U_TIMER_OPEN|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TIMER_OPEN|LessThan0~1_combout\ = (\U_TIMER_OPEN|LessThan0~0_combout\) # ((\U_TIMER_OPEN|contador\(0)) # (\U_TIMER_OPEN|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_TIMER_OPEN|LessThan0~0_combout\,
	datac => \U_TIMER_OPEN|contador\(0),
	datad => \U_TIMER_OPEN|contador\(1),
	combout => \U_TIMER_OPEN|LessThan0~1_combout\);

-- Location: LCCOMB_X19_Y16_N8
\U_TIMER_OPEN|fin~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_TIMER_OPEN|fin~0_combout\ = (!\U_TIMER_OPEN|LessThan0~1_combout\ & (\U_TICK|tick_1s~q\ & (\U_TIMER_OPEN|en_marcha~q\ & !\U_FSM|iniciar_apertura~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_TIMER_OPEN|LessThan0~1_combout\,
	datab => \U_TICK|tick_1s~q\,
	datac => \U_TIMER_OPEN|en_marcha~q\,
	datad => \U_FSM|iniciar_apertura~0_combout\,
	combout => \U_TIMER_OPEN|fin~0_combout\);

-- Location: FF_X19_Y16_N9
\U_TIMER_OPEN|fin\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_TIMER_OPEN|fin~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_TIMER_OPEN|fin~q\);

-- Location: LCCOMB_X21_Y16_N14
\U_FSM|Selector2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_FSM|Selector2~16_combout\ = (!\intrusion_total_s~0_combout\ & ((\U_FSM|Selector6~3_combout\) # ((\U_FSM|estado_actual.ABRIR~q\ & !\U_TIMER_OPEN|fin~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|estado_actual.ABRIR~q\,
	datab => \intrusion_total_s~0_combout\,
	datac => \U_TIMER_OPEN|fin~q\,
	datad => \U_FSM|Selector6~3_combout\,
	combout => \U_FSM|Selector2~16_combout\);

-- Location: LCCOMB_X19_Y16_N30
\U_FSM|estado_siguiente.ABRIR~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_FSM|estado_siguiente.ABRIR~0_combout\ = (\U_FSM|Selector2~16_combout\ & \U_FSM|volver_idle~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_FSM|Selector2~16_combout\,
	datad => \U_FSM|volver_idle~1_combout\,
	combout => \U_FSM|estado_siguiente.ABRIR~0_combout\);

-- Location: FF_X19_Y16_N31
\U_FSM|estado_actual.ABRIR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_FSM|estado_siguiente.ABRIR~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FSM|estado_actual.ABRIR~q\);

-- Location: LCCOMB_X19_Y17_N28
\delay_sensor~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_sensor~2_combout\ = (delay_sensor(0) & (!delay_sensor(1) & ((!\U_FSM|volver_idle~1_combout\) # (!\U_FSM|estado_actual.ABRIR~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_sensor(0),
	datab => \U_FSM|estado_actual.ABRIR~q\,
	datac => delay_sensor(1),
	datad => \U_FSM|volver_idle~1_combout\,
	combout => \delay_sensor~2_combout\);

-- Location: LCCOMB_X19_Y17_N24
\delay_sensor[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_sensor[0]~1_combout\ = (\U_FSM|estado_actual.ABRIR~q\ & ((\U_FSM|volver_idle~1_combout\) # ((\ignorar_sensor_s~q\ & \U_TICK|tick_1s~q\)))) # (!\U_FSM|estado_actual.ABRIR~q\ & (\ignorar_sensor_s~q\ & (\U_TICK|tick_1s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|estado_actual.ABRIR~q\,
	datab => \ignorar_sensor_s~q\,
	datac => \U_TICK|tick_1s~q\,
	datad => \U_FSM|volver_idle~1_combout\,
	combout => \delay_sensor[0]~1_combout\);

-- Location: FF_X19_Y17_N29
\delay_sensor[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \delay_sensor~2_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \delay_sensor[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_sensor(1));

-- Location: LCCOMB_X19_Y17_N22
\delay_sensor~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_sensor~0_combout\ = (!delay_sensor(1) & (!delay_sensor(0) & ((!\U_FSM|estado_actual.ABRIR~q\) # (!\U_FSM|volver_idle~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|volver_idle~1_combout\,
	datab => delay_sensor(1),
	datac => delay_sensor(0),
	datad => \U_FSM|estado_actual.ABRIR~q\,
	combout => \delay_sensor~0_combout\);

-- Location: FF_X19_Y17_N23
\delay_sensor[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \delay_sensor~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \delay_sensor[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_sensor(0));

-- Location: LCCOMB_X19_Y17_N30
\ignorar_sensor_s~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ignorar_sensor_s~0_combout\ = (\ignorar_sensor_s~q\ & ((delay_sensor(0)) # ((!\U_TICK|tick_1s~q\) # (!delay_sensor(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_sensor(0),
	datab => delay_sensor(1),
	datac => \ignorar_sensor_s~q\,
	datad => \U_TICK|tick_1s~q\,
	combout => \ignorar_sensor_s~0_combout\);

-- Location: LCCOMB_X19_Y16_N12
\ignorar_sensor_s~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ignorar_sensor_s~1_combout\ = (\ignorar_sensor_s~0_combout\) # ((\U_FSM|estado_actual.ABRIR~q\ & \U_FSM|volver_idle~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|estado_actual.ABRIR~q\,
	datac => \ignorar_sensor_s~0_combout\,
	datad => \U_FSM|volver_idle~1_combout\,
	combout => \ignorar_sensor_s~1_combout\);

-- Location: FF_X19_Y16_N13
ignorar_sensor_s : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ignorar_sensor_s~1_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ignorar_sensor_s~q\);

-- Location: LCCOMB_X19_Y16_N14
\intrusion_total_s~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \intrusion_total_s~0_combout\ = (\INTRUSION_SW~input_o\) # ((!\SENSOR_PUERTA~input_o\ & !\ignorar_sensor_s~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SENSOR_PUERTA~input_o\,
	datac => \INTRUSION_SW~input_o\,
	datad => \ignorar_sensor_s~q\,
	combout => \intrusion_total_s~0_combout\);

-- Location: LCCOMB_X20_Y16_N18
\U_FSM|limpiar_intentos~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_FSM|limpiar_intentos~0_combout\ = ((\U_FSM|estado_actual.BLOQUEO~q\ & ((\U_TIMER_BLOQUEO|fin~q\) # (\salida_admin_s~combout\)))) # (!\U_FSM|volver_idle~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|volver_idle~1_combout\,
	datab => \U_FSM|estado_actual.BLOQUEO~q\,
	datac => \U_TIMER_BLOQUEO|fin~q\,
	datad => \salida_admin_s~combout\,
	combout => \U_FSM|limpiar_intentos~0_combout\);

-- Location: LCCOMB_X21_Y16_N22
\U_FSM|limpiar_intentos~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_FSM|limpiar_intentos~1_combout\ = (\U_FSM|limpiar_intentos~0_combout\) # ((\U_FSM|Selector6~4_combout\ & (!\intrusion_total_s~0_combout\ & \U_FSM|Selector6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|Selector6~4_combout\,
	datab => \intrusion_total_s~0_combout\,
	datac => \U_FSM|Selector6~3_combout\,
	datad => \U_FSM|limpiar_intentos~0_combout\,
	combout => \U_FSM|limpiar_intentos~1_combout\);

-- Location: LCCOMB_X21_Y16_N0
\U_FSM|intentos~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_FSM|intentos~0_combout\ = (\U_FSM|estado_siguiente.BLOQUEO~3_combout\ & (\U_FSM|Selector6~2_combout\ & !\U_GESTOR|clave_correcta~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|estado_siguiente.BLOQUEO~3_combout\,
	datab => \U_FSM|Selector6~2_combout\,
	datad => \U_GESTOR|clave_correcta~0_combout\,
	combout => \U_FSM|intentos~0_combout\);

-- Location: LCCOMB_X21_Y16_N2
\U_FSM|intentos~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_FSM|intentos~2_combout\ = (!\U_FSM|limpiar_intentos~1_combout\ & ((\U_FSM|intentos\(0) & ((\U_FSM|intentos\(1)) # (!\U_FSM|intentos~0_combout\))) # (!\U_FSM|intentos\(0) & ((\U_FSM|intentos~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|limpiar_intentos~1_combout\,
	datab => \U_FSM|intentos\(1),
	datac => \U_FSM|intentos\(0),
	datad => \U_FSM|intentos~0_combout\,
	combout => \U_FSM|intentos~2_combout\);

-- Location: FF_X21_Y16_N3
\U_FSM|intentos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_FSM|intentos~2_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FSM|intentos\(0));

-- Location: LCCOMB_X21_Y16_N12
\U_FSM|intentos~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_FSM|intentos~1_combout\ = (!\U_FSM|limpiar_intentos~1_combout\ & ((\U_FSM|intentos\(1)) # ((\U_FSM|intentos\(0) & \U_FSM|intentos~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|limpiar_intentos~1_combout\,
	datab => \U_FSM|intentos\(0),
	datac => \U_FSM|intentos\(1),
	datad => \U_FSM|intentos~0_combout\,
	combout => \U_FSM|intentos~1_combout\);

-- Location: FF_X21_Y16_N13
\U_FSM|intentos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_FSM|intentos~1_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FSM|intentos\(1));

-- Location: LCCOMB_X22_Y16_N30
\U_FSM|estado_siguiente.ERROR_CLAVE~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_FSM|estado_siguiente.ERROR_CLAVE~8_combout\ = (\U_FSM|estado_actual.ERROR_CLAVE~q\ & (!\U_FSM|estado_siguiente.ERROR_CLAVE~7_combout\ & ((\U_FSM|estado_actual.INGRESO~q\) # (\U_FSM|estado_siguiente.ERROR_CLAVE~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|estado_actual.INGRESO~q\,
	datab => \U_FSM|estado_siguiente.ERROR_CLAVE~6_combout\,
	datac => \U_FSM|estado_actual.ERROR_CLAVE~q\,
	datad => \U_FSM|estado_siguiente.ERROR_CLAVE~7_combout\,
	combout => \U_FSM|estado_siguiente.ERROR_CLAVE~8_combout\);

-- Location: LCCOMB_X22_Y16_N8
\U_FSM|estado_siguiente.ERROR_CLAVE~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_FSM|estado_siguiente.ERROR_CLAVE~9_combout\ = (\U_FSM|estado_siguiente.INGRESO~4_combout\ & (!\U_FSM|intentos\(1) & ((\U_FSM|iniciar_error~0_combout\)))) # (!\U_FSM|estado_siguiente.INGRESO~4_combout\ & 
-- (((\U_FSM|estado_siguiente.ERROR_CLAVE~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|intentos\(1),
	datab => \U_FSM|estado_siguiente.INGRESO~4_combout\,
	datac => \U_FSM|estado_siguiente.ERROR_CLAVE~8_combout\,
	datad => \U_FSM|iniciar_error~0_combout\,
	combout => \U_FSM|estado_siguiente.ERROR_CLAVE~9_combout\);

-- Location: LCCOMB_X19_Y16_N28
\U_FSM|estado_siguiente.ERROR_CLAVE~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_FSM|estado_siguiente.ERROR_CLAVE~10_combout\ = (\U_FSM|estado_siguiente.ERROR_CLAVE~9_combout\ & \U_FSM|volver_idle~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_FSM|estado_siguiente.ERROR_CLAVE~9_combout\,
	datad => \U_FSM|volver_idle~1_combout\,
	combout => \U_FSM|estado_siguiente.ERROR_CLAVE~10_combout\);

-- Location: FF_X19_Y16_N29
\U_FSM|estado_actual.ERROR_CLAVE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_FSM|estado_siguiente.ERROR_CLAVE~10_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_FSM|estado_actual.ERROR_CLAVE~q\);

-- Location: LCCOMB_X27_Y21_N28
\U_FSM|estado_out[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_FSM|estado_out\(0) = (\U_FSM|estado_actual.ERROR_CLAVE~q\) # (\U_FSM|estado_actual.INGRESO~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_FSM|estado_actual.ERROR_CLAVE~q\,
	datad => \U_FSM|estado_actual.INGRESO~q\,
	combout => \U_FSM|estado_out\(0));

-- Location: LCCOMB_X19_Y22_N20
\HEX0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0~4_combout\ = (!\U_ADMIN|estado.ESPERA~q\ & ((\U_FSM|estado_out\(0)) # ((\HEX3~4_combout\ & !\U_FSM|estado_actual.BLOQUEO~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX3~4_combout\,
	datab => \U_FSM|estado_actual.BLOQUEO~q\,
	datac => \U_ADMIN|estado.ESPERA~q\,
	datad => \U_FSM|estado_out\(0),
	combout => \HEX0~4_combout\);

-- Location: LCCOMB_X19_Y22_N22
\HEX0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0~38_combout\ = (\U_FSM|estado_actual.ERROR_CLAVE~q\ & (\HEX0~4_combout\ & (!\U_ADMIN|admin_hex0_es_num~0_combout\ & !\U_FSM|estado_actual.INGRESO~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|estado_actual.ERROR_CLAVE~q\,
	datab => \HEX0~4_combout\,
	datac => \U_ADMIN|admin_hex0_es_num~0_combout\,
	datad => \U_FSM|estado_actual.INGRESO~q\,
	combout => \HEX0~38_combout\);

-- Location: LCCOMB_X19_Y18_N12
\U_GESTOR|usuario_actual[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GESTOR|usuario_actual[0]~0_combout\ = (!\U_GESTOR|base_addr_reg\(3) & !\U_GESTOR|es_admin~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_GESTOR|base_addr_reg\(3),
	datac => \U_GESTOR|es_admin~q\,
	combout => \U_GESTOR|usuario_actual[0]~0_combout\);

-- Location: LCCOMB_X20_Y18_N4
\Equal5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (!\U_REGISTRO|contador\(0) & (!\U_REGISTRO|contador\(1) & !\U_REGISTRO|contador\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REGISTRO|contador\(0),
	datab => \U_REGISTRO|contador\(1),
	datad => \U_REGISTRO|contador\(2),
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X19_Y22_N30
\HEX2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX2~6_combout\ = (!\U_FSM|estado_actual.ERROR_CLAVE~q\ & (!\U_FSM|estado_actual.BLOQUEO~q\ & !\U_FSM|estado_actual.ABRIR~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|estado_actual.ERROR_CLAVE~q\,
	datab => \U_FSM|estado_actual.BLOQUEO~q\,
	datad => \U_FSM|estado_actual.ABRIR~q\,
	combout => \HEX2~6_combout\);

-- Location: LCCOMB_X19_Y22_N8
\HEX0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0~5_combout\ = (\U_ADMIN|estado.ESPERA~q\) # ((\Equal5~0_combout\ & ((\HEX2~6_combout\) # (\U_FSM|estado_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => \HEX2~6_combout\,
	datac => \U_ADMIN|estado.ESPERA~q\,
	datad => \U_FSM|estado_out\(0),
	combout => \HEX0~5_combout\);

-- Location: LCCOMB_X19_Y18_N2
\Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (!\U_GESTOR|es_admin~q\ & ((!\U_GESTOR|base_addr_reg\(4)) # (!\U_GESTOR|base_addr_reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_GESTOR|base_addr_reg\(3),
	datac => \U_GESTOR|es_admin~q\,
	datad => \U_GESTOR|base_addr_reg\(4),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X19_Y18_N4
\HEX0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0~6_combout\ = (\HEX0~4_combout\ & ((\Mux5~0_combout\) # (!\HEX0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0~5_combout\,
	datab => \Mux5~0_combout\,
	datad => \HEX0~4_combout\,
	combout => \HEX0~6_combout\);

-- Location: LCCOMB_X15_Y19_N20
\U_ADMIN|admin_hex0_cod~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|admin_hex0_cod~0_combout\ = (\U_ADMIN|estado.OP_ELIMINAR_USR~q\) # (\U_ADMIN|estado.OP_AGREGAR_USR~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|estado.OP_ELIMINAR_USR~q\,
	datac => \U_ADMIN|estado.OP_AGREGAR_USR~q\,
	combout => \U_ADMIN|admin_hex0_cod~0_combout\);

-- Location: LCCOMB_X16_Y18_N20
\U_ADM_HEX0_COD|Mux6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADM_HEX0_COD|Mux6~4_combout\ = (\U_ADMIN|admin_hex0_cod~0_combout\ & (!\U_ADMIN|estado.CLAVE_ADMIN~q\ & (!\U_ADMIN|usuario_sel\(0) & !\U_ADMIN|estado.ADMIN_OK~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|admin_hex0_cod~0_combout\,
	datab => \U_ADMIN|estado.CLAVE_ADMIN~q\,
	datac => \U_ADMIN|usuario_sel\(0),
	datad => \U_ADMIN|estado.ADMIN_OK~q\,
	combout => \U_ADM_HEX0_COD|Mux6~4_combout\);

-- Location: LCCOMB_X17_Y16_N22
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \U_TIMER_OPEN|contador\(3) $ (VCC)
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\U_TIMER_OPEN|contador\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_TIMER_OPEN|contador\(3),
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X17_Y16_N24
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\U_TIMER_OPEN|contador\(4) & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\U_TIMER_OPEN|contador\(4) & 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\U_TIMER_OPEN|contador\(4) & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_TIMER_OPEN|contador\(4),
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X17_Y16_N26
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\U_TIMER_OPEN|contador\(5) & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\U_TIMER_OPEN|contador\(5) & 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\U_TIMER_OPEN|contador\(5) & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_TIMER_OPEN|contador\(5),
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X17_Y16_N28
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X17_Y17_N12
\Mod0|auto_generated|divider|divider|StageOut[21]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\);

-- Location: LCCOMB_X17_Y16_N0
\Mod0|auto_generated|divider|divider|StageOut[21]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \U_TIMER_OPEN|contador\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \U_TIMER_OPEN|contador\(5),
	combout => \Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\);

-- Location: LCCOMB_X17_Y17_N30
\Mod0|auto_generated|divider|divider|StageOut[20]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\);

-- Location: LCCOMB_X17_Y16_N2
\Mod0|auto_generated|divider|divider|StageOut[20]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \U_TIMER_OPEN|contador\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \U_TIMER_OPEN|contador\(4),
	combout => \Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\);

-- Location: LCCOMB_X17_Y16_N30
\Mod0|auto_generated|divider|divider|StageOut[19]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\);

-- Location: LCCOMB_X17_Y17_N8
\Mod0|auto_generated|divider|divider|StageOut[19]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \U_TIMER_OPEN|contador\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \U_TIMER_OPEN|contador\(3),
	combout => \Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\);

-- Location: LCCOMB_X17_Y16_N18
\Mod0|auto_generated|divider|divider|StageOut[18]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \U_TIMER_OPEN|contador\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \U_TIMER_OPEN|contador\(2),
	combout => \Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\);

-- Location: LCCOMB_X17_Y16_N16
\Mod0|auto_generated|divider|divider|StageOut[18]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \U_TIMER_OPEN|contador\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \U_TIMER_OPEN|contador\(2),
	combout => \Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\);

-- Location: LCCOMB_X17_Y16_N4
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X17_Y16_N6
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X17_Y16_N8
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X17_Y16_N10
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X17_Y16_N12
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X16_Y16_N30
\Mod0|auto_generated|divider|divider|StageOut[24]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[24]~33_combout\ = (\U_TIMER_OPEN|contador\(1) & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_TIMER_OPEN|contador\(1),
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[24]~33_combout\);

-- Location: LCCOMB_X16_Y16_N8
\Mod0|auto_generated|divider|divider|StageOut[24]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[24]~32_combout\ = (\U_TIMER_OPEN|contador\(1) & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_TIMER_OPEN|contador\(1),
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[24]~32_combout\);

-- Location: LCCOMB_X16_Y16_N10
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[24]~33_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[24]~32_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[24]~33_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[24]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[24]~33_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[24]~32_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X17_Y16_N20
\Mod0|auto_generated|divider|divider|StageOut[28]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[28]~39_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\U_TIMER_OPEN|contador\(5)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \U_TIMER_OPEN|contador\(5),
	combout => \Mod0|auto_generated|divider|divider|StageOut[28]~39_combout\);

-- Location: LCCOMB_X16_Y16_N28
\Mod0|auto_generated|divider|divider|StageOut[28]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[28]~34_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[28]~34_combout\);

-- Location: LCCOMB_X16_Y16_N26
\Mod0|auto_generated|divider|divider|StageOut[27]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[27]~35_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[27]~35_combout\);

-- Location: LCCOMB_X17_Y16_N14
\Mod0|auto_generated|divider|divider|StageOut[27]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[27]~40_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\U_TIMER_OPEN|contador\(4)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => \U_TIMER_OPEN|contador\(4),
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[27]~40_combout\);

-- Location: LCCOMB_X17_Y17_N18
\Mod0|auto_generated|divider|divider|StageOut[26]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[26]~41_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\U_TIMER_OPEN|contador\(3)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \U_TIMER_OPEN|contador\(3),
	combout => \Mod0|auto_generated|divider|divider|StageOut[26]~41_combout\);

-- Location: LCCOMB_X16_Y16_N24
\Mod0|auto_generated|divider|divider|StageOut[26]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\);

-- Location: LCCOMB_X16_Y16_N22
\Mod0|auto_generated|divider|divider|StageOut[25]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \U_TIMER_OPEN|contador\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \U_TIMER_OPEN|contador\(2),
	combout => \Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\);

-- Location: LCCOMB_X16_Y16_N0
\Mod0|auto_generated|divider|divider|StageOut[25]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\);

-- Location: LCCOMB_X16_Y16_N12
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X16_Y16_N14
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[26]~41_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[26]~41_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[26]~41_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[26]~41_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X16_Y16_N16
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[27]~35_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[27]~40_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[27]~35_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[27]~40_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X16_Y16_N18
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[28]~39_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[28]~34_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[28]~39_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[28]~34_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\);

-- Location: LCCOMB_X16_Y16_N20
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X16_Y16_N6
\unidad_temp[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unidad_temp[1]~5_combout\ = (\U_FSM|estado_actual.ABRIR~q\ & ((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\U_TIMER_OPEN|contador\(1)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datab => \U_FSM|estado_actual.ABRIR~q\,
	datac => \U_TIMER_OPEN|contador\(1),
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \unidad_temp[1]~5_combout\);

-- Location: LCCOMB_X23_Y17_N0
\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \U_TIMER_BLOQUEO|contador\(3) $ (VCC)
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\U_TIMER_BLOQUEO|contador\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_TIMER_BLOQUEO|contador\(3),
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X23_Y17_N2
\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\U_TIMER_BLOQUEO|contador\(4) & (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\U_TIMER_BLOQUEO|contador\(4) & 
-- (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\U_TIMER_BLOQUEO|contador\(4) & !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_TIMER_BLOQUEO|contador\(4),
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X23_Y17_N4
\Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\U_TIMER_BLOQUEO|contador\(5) & (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\U_TIMER_BLOQUEO|contador\(5) & 
-- (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\U_TIMER_BLOQUEO|contador\(5) & !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_TIMER_BLOQUEO|contador\(5),
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X23_Y17_N6
\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X23_Y17_N14
\Mod1|auto_generated|divider|divider|StageOut[21]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[21]~25_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[21]~25_combout\);

-- Location: LCCOMB_X23_Y17_N24
\Mod1|auto_generated|divider|divider|StageOut[21]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[21]~24_combout\ = (\U_TIMER_BLOQUEO|contador\(5) & \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_TIMER_BLOQUEO|contador\(5),
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[21]~24_combout\);

-- Location: LCCOMB_X23_Y17_N18
\Mod1|auto_generated|divider|divider|StageOut[20]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[20]~27_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[20]~27_combout\);

-- Location: LCCOMB_X23_Y17_N12
\Mod1|auto_generated|divider|divider|StageOut[20]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[20]~26_combout\ = (\U_TIMER_BLOQUEO|contador\(4) & \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_TIMER_BLOQUEO|contador\(4),
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[20]~26_combout\);

-- Location: LCCOMB_X23_Y17_N20
\Mod1|auto_generated|divider|divider|StageOut[19]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[19]~29_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[19]~29_combout\);

-- Location: LCCOMB_X16_Y17_N10
\Mod1|auto_generated|divider|divider|StageOut[19]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[19]~28_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \U_TIMER_BLOQUEO|contador\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \U_TIMER_BLOQUEO|contador\(3),
	combout => \Mod1|auto_generated|divider|divider|StageOut[19]~28_combout\);

-- Location: LCCOMB_X23_Y17_N28
\Mod1|auto_generated|divider|divider|StageOut[18]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[18]~31_combout\ = (\U_TIMER_BLOQUEO|contador\(2) & !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_TIMER_BLOQUEO|contador\(2),
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[18]~31_combout\);

-- Location: LCCOMB_X23_Y17_N10
\Mod1|auto_generated|divider|divider|StageOut[18]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[18]~30_combout\ = (\U_TIMER_BLOQUEO|contador\(2) & \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_TIMER_BLOQUEO|contador\(2),
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[18]~30_combout\);

-- Location: LCCOMB_X19_Y17_N6
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Mod1|auto_generated|divider|divider|StageOut[18]~31_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[18]~30_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[18]~31_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[18]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[18]~31_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[18]~30_combout\,
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X19_Y17_N8
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\Mod1|auto_generated|divider|divider|StageOut[19]~29_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[19]~28_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Mod1|auto_generated|divider|divider|StageOut[19]~29_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[19]~28_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[19]~29_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[19]~28_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[19]~29_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[19]~28_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X19_Y17_N10
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Mod1|auto_generated|divider|divider|StageOut[20]~27_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[20]~26_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Mod1|auto_generated|divider|divider|StageOut[20]~27_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[20]~26_combout\)))))
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Mod1|auto_generated|divider|divider|StageOut[20]~27_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[20]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[20]~27_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[20]~26_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X19_Y17_N12
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\Mod1|auto_generated|divider|divider|StageOut[21]~25_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[21]~24_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\Mod1|auto_generated|divider|divider|StageOut[21]~25_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[21]~24_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[21]~25_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[21]~24_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[21]~25_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[21]~24_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X19_Y17_N14
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X16_Y15_N26
\Mod1|auto_generated|divider|divider|StageOut[24]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[24]~37_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \U_TIMER_BLOQUEO|contador\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \U_TIMER_BLOQUEO|contador\(1),
	combout => \Mod1|auto_generated|divider|divider|StageOut[24]~37_combout\);

-- Location: LCCOMB_X16_Y15_N24
\Mod1|auto_generated|divider|divider|StageOut[24]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[24]~38_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \U_TIMER_BLOQUEO|contador\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \U_TIMER_BLOQUEO|contador\(1),
	combout => \Mod1|auto_generated|divider|divider|StageOut[24]~38_combout\);

-- Location: LCCOMB_X16_Y15_N12
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Mod1|auto_generated|divider|divider|StageOut[24]~37_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[24]~38_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[24]~37_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[24]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[24]~37_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[24]~38_combout\,
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X19_Y17_N0
\Mod1|auto_generated|divider|divider|StageOut[28]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[28]~32_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[28]~32_combout\);

-- Location: LCCOMB_X23_Y17_N16
\Mod1|auto_generated|divider|divider|StageOut[28]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[28]~39_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\U_TIMER_BLOQUEO|contador\(5))) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \U_TIMER_BLOQUEO|contador\(5),
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[28]~39_combout\);

-- Location: LCCOMB_X19_Y17_N26
\Mod1|auto_generated|divider|divider|StageOut[27]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[27]~33_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[27]~33_combout\);

-- Location: LCCOMB_X23_Y17_N30
\Mod1|auto_generated|divider|divider|StageOut[27]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[27]~40_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\U_TIMER_BLOQUEO|contador\(4)))) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => \U_TIMER_BLOQUEO|contador\(4),
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[27]~40_combout\);

-- Location: LCCOMB_X16_Y17_N24
\Mod1|auto_generated|divider|divider|StageOut[26]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[26]~41_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\U_TIMER_BLOQUEO|contador\(3)))) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \U_TIMER_BLOQUEO|contador\(3),
	combout => \Mod1|auto_generated|divider|divider|StageOut[26]~41_combout\);

-- Location: LCCOMB_X16_Y17_N4
\Mod1|auto_generated|divider|divider|StageOut[26]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[26]~34_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[26]~34_combout\);

-- Location: LCCOMB_X16_Y15_N28
\Mod1|auto_generated|divider|divider|StageOut[25]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[25]~35_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \U_TIMER_BLOQUEO|contador\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \U_TIMER_BLOQUEO|contador\(2),
	combout => \Mod1|auto_generated|divider|divider|StageOut[25]~35_combout\);

-- Location: LCCOMB_X16_Y17_N6
\Mod1|auto_generated|divider|divider|StageOut[25]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[25]~36_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[25]~36_combout\);

-- Location: LCCOMB_X16_Y15_N14
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\Mod1|auto_generated|divider|divider|StageOut[25]~35_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[25]~36_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\Mod1|auto_generated|divider|divider|StageOut[25]~35_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[25]~36_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[25]~35_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[25]~36_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[25]~35_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[25]~36_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X16_Y15_N16
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\Mod1|auto_generated|divider|divider|StageOut[26]~41_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[26]~34_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\Mod1|auto_generated|divider|divider|StageOut[26]~41_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[26]~34_combout\)))))
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\Mod1|auto_generated|divider|divider|StageOut[26]~41_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[26]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[26]~41_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[26]~34_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X16_Y15_N18
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[27]~33_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[27]~40_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[27]~33_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[27]~40_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X16_Y15_N20
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[28]~32_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[28]~39_combout\) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[28]~32_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[28]~39_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\);

-- Location: LCCOMB_X16_Y15_N22
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X16_Y15_N2
\unidad_temp[1]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unidad_temp[1]~6_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\U_TIMER_BLOQUEO|contador\(1)))) # (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \U_TIMER_BLOQUEO|contador\(1),
	combout => \unidad_temp[1]~6_combout\);

-- Location: LCCOMB_X15_Y16_N26
\unidad_temp[1]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unidad_temp[1]~11_combout\ = (\unidad_temp[1]~5_combout\) # ((\U_FSM|estado_actual.BLOQUEO~q\ & (!\U_FSM|estado_actual.ABRIR~q\ & \unidad_temp[1]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidad_temp[1]~5_combout\,
	datab => \U_FSM|estado_actual.BLOQUEO~q\,
	datac => \U_FSM|estado_actual.ABRIR~q\,
	datad => \unidad_temp[1]~6_combout\,
	combout => \unidad_temp[1]~11_combout\);

-- Location: LCCOMB_X16_Y15_N0
\unidad_temp[2]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unidad_temp[2]~8_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[25]~35_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[25]~36_combout\)))) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[25]~35_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[25]~36_combout\,
	combout => \unidad_temp[2]~8_combout\);

-- Location: LCCOMB_X16_Y16_N4
\unidad_temp[2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unidad_temp[2]~7_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \unidad_temp[2]~7_combout\);

-- Location: LCCOMB_X15_Y16_N8
\unidad_temp[2]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unidad_temp[2]~12_combout\ = (\U_FSM|estado_actual.ABRIR~q\ & (((\unidad_temp[2]~7_combout\)))) # (!\U_FSM|estado_actual.ABRIR~q\ & (\unidad_temp[2]~8_combout\ & (\U_FSM|estado_actual.BLOQUEO~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidad_temp[2]~8_combout\,
	datab => \U_FSM|estado_actual.BLOQUEO~q\,
	datac => \U_FSM|estado_actual.ABRIR~q\,
	datad => \unidad_temp[2]~7_combout\,
	combout => \unidad_temp[2]~12_combout\);

-- Location: LCCOMB_X15_Y16_N20
\unidad_temp[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unidad_temp[0]~4_combout\ = (\U_FSM|estado_actual.ABRIR~q\ & (((\U_TIMER_OPEN|contador\(0))))) # (!\U_FSM|estado_actual.ABRIR~q\ & (\U_TIMER_BLOQUEO|contador\(0) & (\U_FSM|estado_actual.BLOQUEO~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|estado_actual.ABRIR~q\,
	datab => \U_TIMER_BLOQUEO|contador\(0),
	datac => \U_FSM|estado_actual.BLOQUEO~q\,
	datad => \U_TIMER_OPEN|contador\(0),
	combout => \unidad_temp[0]~4_combout\);

-- Location: LCCOMB_X16_Y16_N2
\unidad_temp[3]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unidad_temp[3]~10_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[26]~41_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[26]~41_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \unidad_temp[3]~10_combout\);

-- Location: LCCOMB_X19_Y17_N4
\unidad_temp[3]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unidad_temp[3]~9_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (((\Mod1|auto_generated|divider|divider|StageOut[19]~28_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[19]~29_combout\)))) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[19]~28_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[19]~29_combout\,
	combout => \unidad_temp[3]~9_combout\);

-- Location: LCCOMB_X15_Y16_N2
\unidad_temp[3]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unidad_temp[3]~13_combout\ = ((\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\unidad_temp[3]~9_combout\))) # (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\))) # (!\U_FSM|estado_actual.BLOQUEO~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datab => \unidad_temp[3]~9_combout\,
	datac => \U_FSM|estado_actual.BLOQUEO~q\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \unidad_temp[3]~13_combout\);

-- Location: LCCOMB_X15_Y16_N24
\unidad_temp[3]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unidad_temp[3]~14_combout\ = (\U_FSM|estado_actual.ABRIR~q\ & (\unidad_temp[3]~10_combout\ & ((\U_FSM|estado_actual.BLOQUEO~q\) # (\unidad_temp[3]~13_combout\)))) # (!\U_FSM|estado_actual.ABRIR~q\ & (((\U_FSM|estado_actual.BLOQUEO~q\ & 
-- \unidad_temp[3]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidad_temp[3]~10_combout\,
	datab => \U_FSM|estado_actual.BLOQUEO~q\,
	datac => \U_FSM|estado_actual.ABRIR~q\,
	datad => \unidad_temp[3]~13_combout\,
	combout => \unidad_temp[3]~14_combout\);

-- Location: LCCOMB_X15_Y20_N26
\U_UNIDAD|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_UNIDAD|Mux6~0_combout\ = (\unidad_temp[1]~11_combout\ & (((\unidad_temp[3]~14_combout\)))) # (!\unidad_temp[1]~11_combout\ & (\unidad_temp[2]~12_combout\ $ (((\unidad_temp[0]~4_combout\ & !\unidad_temp[3]~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidad_temp[1]~11_combout\,
	datab => \unidad_temp[2]~12_combout\,
	datac => \unidad_temp[0]~4_combout\,
	datad => \unidad_temp[3]~14_combout\,
	combout => \U_UNIDAD|Mux6~0_combout\);

-- Location: LCCOMB_X19_Y18_N26
\HEX0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0~7_combout\ = (\HEX0~4_combout\ & (((\HEX0~5_combout\)))) # (!\HEX0~4_combout\ & ((\HEX0~5_combout\ & (!\U_ADM_HEX0_COD|Mux6~4_combout\)) # (!\HEX0~5_combout\ & ((\U_UNIDAD|Mux6~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADM_HEX0_COD|Mux6~4_combout\,
	datab => \HEX0~4_combout\,
	datac => \U_UNIDAD|Mux6~0_combout\,
	datad => \HEX0~5_combout\,
	combout => \HEX0~7_combout\);

-- Location: LCCOMB_X24_Y18_N12
\U_HEX0_NUM|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HEX0_NUM|Mux6~0_combout\ = (\U_REGISTRO|d0\(1) & (((\U_REGISTRO|d0\(3))))) # (!\U_REGISTRO|d0\(1) & (\U_REGISTRO|d0\(2) $ (((\U_REGISTRO|d0\(0) & !\U_REGISTRO|d0\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REGISTRO|d0\(2),
	datab => \U_REGISTRO|d0\(1),
	datac => \U_REGISTRO|d0\(0),
	datad => \U_REGISTRO|d0\(3),
	combout => \U_HEX0_NUM|Mux6~0_combout\);

-- Location: LCCOMB_X19_Y18_N20
\HEX0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0~8_combout\ = (\HEX0~6_combout\ & ((\HEX0~7_combout\ & (!\U_GESTOR|usuario_actual[0]~0_combout\)) # (!\HEX0~7_combout\ & ((\U_HEX0_NUM|Mux6~0_combout\))))) # (!\HEX0~6_combout\ & (((\HEX0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GESTOR|usuario_actual[0]~0_combout\,
	datab => \HEX0~6_combout\,
	datac => \HEX0~7_combout\,
	datad => \U_HEX0_NUM|Mux6~0_combout\,
	combout => \HEX0~8_combout\);

-- Location: LCCOMB_X19_Y22_N12
\HEX0~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0~39_combout\ = (!\U_FSM|estado_actual.INGRESO~q\ & (!\U_ADMIN|estado.ESPERA~q\ & ((\U_FSM|estado_actual.ERROR_CLAVE~q\) # (\HEX2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|estado_actual.ERROR_CLAVE~q\,
	datab => \U_FSM|estado_actual.INGRESO~q\,
	datac => \U_ADMIN|estado.ESPERA~q\,
	datad => \HEX2~6_combout\,
	combout => \HEX0~39_combout\);

-- Location: LCCOMB_X17_Y22_N0
\HEX0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0~9_combout\ = (\HEX0~38_combout\) # ((\HEX0~8_combout\ & (!\HEX0~39_combout\ & !\U_ADMIN|admin_hex0_es_num~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0~38_combout\,
	datab => \HEX0~8_combout\,
	datac => \HEX0~39_combout\,
	datad => \U_ADMIN|admin_hex0_es_num~0_combout\,
	combout => \HEX0~9_combout\);

-- Location: LCCOMB_X17_Y22_N20
\HEX0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0~10_combout\ = (\HEX0~9_combout\) # ((\U_ADM_HEX0_NUM|Mux6~0_combout\ & \U_ADMIN|admin_hex0_es_num~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADM_HEX0_NUM|Mux6~0_combout\,
	datab => \U_ADMIN|admin_hex0_es_num~0_combout\,
	datad => \HEX0~9_combout\,
	combout => \HEX0~10_combout\);

-- Location: LCCOMB_X17_Y20_N0
\U_ADMIN|admin_hex1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADMIN|admin_hex1~0_combout\ = (!\U_ADMIN|estado.CLAVE_ADMIN~q\ & !\U_ADMIN|estado.ADMIN_OK~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|estado.CLAVE_ADMIN~q\,
	datac => \U_ADMIN|estado.ADMIN_OK~q\,
	combout => \U_ADMIN|admin_hex1~0_combout\);

-- Location: LCCOMB_X17_Y21_N0
\U_ADM_HEX0_COD|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADM_HEX0_COD|Mux5~0_combout\ = (\U_ADMIN|admin_hex0_cod~0_combout\ & (\U_ADMIN|admin_hex1~0_combout\ & (\U_ADMIN|usuario_sel\(1) $ (!\U_ADMIN|usuario_sel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|admin_hex0_cod~0_combout\,
	datab => \U_ADMIN|usuario_sel\(1),
	datac => \U_ADMIN|usuario_sel\(0),
	datad => \U_ADMIN|admin_hex1~0_combout\,
	combout => \U_ADM_HEX0_COD|Mux5~0_combout\);

-- Location: LCCOMB_X17_Y22_N2
\U_ADM_HEX0_NUM|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADM_HEX0_NUM|Mux5~0_combout\ = (\U_ADMIN|admin_hex0_num[2]~2_combout\ & ((\U_ADMIN|admin_hex0_num[3]~3_combout\) # (\U_ADMIN|admin_hex0_num[1]~1_combout\ $ (\U_ADMIN|admin_hex0_num[0]~0_combout\)))) # (!\U_ADMIN|admin_hex0_num[2]~2_combout\ & 
-- (\U_ADMIN|admin_hex0_num[1]~1_combout\ & (\U_ADMIN|admin_hex0_num[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|admin_hex0_num[2]~2_combout\,
	datab => \U_ADMIN|admin_hex0_num[1]~1_combout\,
	datac => \U_ADMIN|admin_hex0_num[3]~3_combout\,
	datad => \U_ADMIN|admin_hex0_num[0]~0_combout\,
	combout => \U_ADM_HEX0_NUM|Mux5~0_combout\);

-- Location: LCCOMB_X19_Y22_N26
\HEX0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0~14_combout\ = (\U_ADMIN|estado.ESPERA~q\ & ((\U_ADMIN|admin_hex0_es_num~0_combout\ & ((\U_ADM_HEX0_NUM|Mux5~0_combout\))) # (!\U_ADMIN|admin_hex0_es_num~0_combout\ & (!\U_ADM_HEX0_COD|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADM_HEX0_COD|Mux5~0_combout\,
	datab => \U_ADMIN|admin_hex0_es_num~0_combout\,
	datac => \U_ADMIN|estado.ESPERA~q\,
	datad => \U_ADM_HEX0_NUM|Mux5~0_combout\,
	combout => \HEX0~14_combout\);

-- Location: LCCOMB_X26_Y23_N20
\HEX3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX3~5_combout\ = (!\U_FSM|estado_actual.BLOQUEO~q\ & !\U_ADMIN|estado.ESPERA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|estado_actual.BLOQUEO~q\,
	datad => \U_ADMIN|estado.ESPERA~q\,
	combout => \HEX3~5_combout\);

-- Location: LCCOMB_X19_Y18_N14
\HEX0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0~11_combout\ = (\Equal5~0_combout\ & (!\U_GESTOR|es_admin~q\ & (\U_GESTOR|base_addr_reg\(3) $ (\U_GESTOR|base_addr_reg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => \U_GESTOR|es_admin~q\,
	datac => \U_GESTOR|base_addr_reg\(3),
	datad => \U_GESTOR|base_addr_reg\(4),
	combout => \HEX0~11_combout\);

-- Location: LCCOMB_X20_Y18_N14
\U_HEX0_NUM|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HEX0_NUM|Mux5~0_combout\ = (\U_REGISTRO|d0\(2) & ((\U_REGISTRO|d0\(3)) # (\U_REGISTRO|d0\(0) $ (\U_REGISTRO|d0\(1))))) # (!\U_REGISTRO|d0\(2) & (((\U_REGISTRO|d0\(1) & \U_REGISTRO|d0\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REGISTRO|d0\(0),
	datab => \U_REGISTRO|d0\(1),
	datac => \U_REGISTRO|d0\(2),
	datad => \U_REGISTRO|d0\(3),
	combout => \U_HEX0_NUM|Mux5~0_combout\);

-- Location: LCCOMB_X20_Y18_N20
\HEX0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0~12_combout\ = (\U_FSM|estado_out\(0) & ((\HEX0~11_combout\) # ((!\Equal5~0_combout\ & \U_HEX0_NUM|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0~11_combout\,
	datab => \Equal5~0_combout\,
	datac => \U_HEX0_NUM|Mux5~0_combout\,
	datad => \U_FSM|estado_out\(0),
	combout => \HEX0~12_combout\);

-- Location: LCCOMB_X20_Y18_N22
\HEX0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0~13_combout\ = (\HEX3~5_combout\ & ((\HEX0~12_combout\) # (\HEX3~4_combout\ $ (\U_FSM|estado_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX3~5_combout\,
	datab => \HEX0~12_combout\,
	datac => \HEX3~4_combout\,
	datad => \U_FSM|estado_out\(0),
	combout => \HEX0~13_combout\);

-- Location: LCCOMB_X15_Y16_N22
\U_UNIDAD|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_UNIDAD|Mux5~0_combout\ = (\unidad_temp[2]~12_combout\ & ((\unidad_temp[3]~14_combout\) # (\unidad_temp[0]~4_combout\ $ (\unidad_temp[1]~11_combout\)))) # (!\unidad_temp[2]~12_combout\ & (((\unidad_temp[1]~11_combout\ & \unidad_temp[3]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidad_temp[2]~12_combout\,
	datab => \unidad_temp[0]~4_combout\,
	datac => \unidad_temp[1]~11_combout\,
	datad => \unidad_temp[3]~14_combout\,
	combout => \U_UNIDAD|Mux5~0_combout\);

-- Location: LCCOMB_X19_Y22_N24
\HEX0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0~15_combout\ = (!\U_ADMIN|estado.ESPERA~q\ & ((\U_FSM|estado_actual.BLOQUEO~q\) # ((!\U_FSM|estado_actual.ERROR_CLAVE~q\ & !\U_FSM|estado_actual.INGRESO~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|estado_actual.ERROR_CLAVE~q\,
	datab => \U_FSM|estado_actual.BLOQUEO~q\,
	datac => \U_ADMIN|estado.ESPERA~q\,
	datad => \U_FSM|estado_actual.INGRESO~q\,
	combout => \HEX0~15_combout\);

-- Location: LCCOMB_X19_Y22_N14
\HEX0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0~16_combout\ = (\HEX0~14_combout\) # ((\HEX0~13_combout\) # ((\U_UNIDAD|Mux5~0_combout\ & \HEX0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0~14_combout\,
	datab => \HEX0~13_combout\,
	datac => \U_UNIDAD|Mux5~0_combout\,
	datad => \HEX0~15_combout\,
	combout => \HEX0~16_combout\);

-- Location: LCCOMB_X19_Y18_N10
\Mux5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\U_GESTOR|base_addr_reg\(3)) # ((\U_GESTOR|es_admin~q\) # (!\U_GESTOR|base_addr_reg\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_GESTOR|base_addr_reg\(3),
	datac => \U_GESTOR|es_admin~q\,
	datad => \U_GESTOR|base_addr_reg\(4),
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X15_Y16_N12
\U_UNIDAD|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_UNIDAD|Mux4~0_combout\ = (\unidad_temp[2]~12_combout\ & (((\unidad_temp[3]~14_combout\)))) # (!\unidad_temp[2]~12_combout\ & (\unidad_temp[1]~11_combout\ & ((\unidad_temp[3]~14_combout\) # (!\unidad_temp[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidad_temp[2]~12_combout\,
	datab => \unidad_temp[0]~4_combout\,
	datac => \unidad_temp[1]~11_combout\,
	datad => \unidad_temp[3]~14_combout\,
	combout => \U_UNIDAD|Mux4~0_combout\);

-- Location: LCCOMB_X20_Y18_N28
\U_HEX0_NUM|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HEX0_NUM|Mux4~0_combout\ = (\U_REGISTRO|d0\(2) & (((\U_REGISTRO|d0\(3))))) # (!\U_REGISTRO|d0\(2) & (\U_REGISTRO|d0\(1) & ((\U_REGISTRO|d0\(3)) # (!\U_REGISTRO|d0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REGISTRO|d0\(0),
	datab => \U_REGISTRO|d0\(1),
	datac => \U_REGISTRO|d0\(2),
	datad => \U_REGISTRO|d0\(3),
	combout => \U_HEX0_NUM|Mux4~0_combout\);

-- Location: LCCOMB_X19_Y18_N0
\HEX0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0~17_combout\ = (\HEX0~5_combout\ & (\HEX0~4_combout\)) # (!\HEX0~5_combout\ & ((\HEX0~4_combout\ & ((\U_HEX0_NUM|Mux4~0_combout\))) # (!\HEX0~4_combout\ & (\U_UNIDAD|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0~5_combout\,
	datab => \HEX0~4_combout\,
	datac => \U_UNIDAD|Mux4~0_combout\,
	datad => \U_HEX0_NUM|Mux4~0_combout\,
	combout => \HEX0~17_combout\);

-- Location: LCCOMB_X17_Y21_N26
\U_ADM_HEX0_COD|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADM_HEX0_COD|Mux4~0_combout\ = (\U_ADMIN|admin_hex0_cod~0_combout\ & (\U_ADMIN|admin_hex1~0_combout\ & ((\U_ADMIN|usuario_sel\(0)) # (!\U_ADMIN|usuario_sel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|admin_hex0_cod~0_combout\,
	datab => \U_ADMIN|usuario_sel\(1),
	datac => \U_ADMIN|usuario_sel\(0),
	datad => \U_ADMIN|admin_hex1~0_combout\,
	combout => \U_ADM_HEX0_COD|Mux4~0_combout\);

-- Location: LCCOMB_X19_Y18_N8
\HEX0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0~18_combout\ = (\HEX0~17_combout\ & (((!\HEX0~5_combout\)) # (!\Mux5~1_combout\))) # (!\HEX0~17_combout\ & (((!\U_ADM_HEX0_COD|Mux4~0_combout\ & \HEX0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~1_combout\,
	datab => \HEX0~17_combout\,
	datac => \U_ADM_HEX0_COD|Mux4~0_combout\,
	datad => \HEX0~5_combout\,
	combout => \HEX0~18_combout\);

-- Location: LCCOMB_X17_Y22_N4
\U_ADM_HEX0_NUM|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADM_HEX0_NUM|Mux4~0_combout\ = (\U_ADMIN|admin_hex0_num[2]~2_combout\ & (((\U_ADMIN|admin_hex0_num[3]~3_combout\)))) # (!\U_ADMIN|admin_hex0_num[2]~2_combout\ & (\U_ADMIN|admin_hex0_num[1]~1_combout\ & ((\U_ADMIN|admin_hex0_num[3]~3_combout\) # 
-- (!\U_ADMIN|admin_hex0_num[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|admin_hex0_num[2]~2_combout\,
	datab => \U_ADMIN|admin_hex0_num[1]~1_combout\,
	datac => \U_ADMIN|admin_hex0_num[3]~3_combout\,
	datad => \U_ADMIN|admin_hex0_num[0]~0_combout\,
	combout => \U_ADM_HEX0_NUM|Mux4~0_combout\);

-- Location: LCCOMB_X17_Y22_N30
\HEX0~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0~19_combout\ = (\U_ADMIN|admin_hex0_es_num~0_combout\ & (((\U_ADM_HEX0_NUM|Mux4~0_combout\)))) # (!\U_ADMIN|admin_hex0_es_num~0_combout\ & ((\HEX0~18_combout\) # ((\HEX0~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0~18_combout\,
	datab => \HEX0~39_combout\,
	datac => \U_ADM_HEX0_NUM|Mux4~0_combout\,
	datad => \U_ADMIN|admin_hex0_es_num~0_combout\,
	combout => \HEX0~19_combout\);

-- Location: LCCOMB_X17_Y22_N26
\U_ADM_HEX0_NUM|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADM_HEX0_NUM|Mux3~0_combout\ = (\U_ADMIN|admin_hex0_num[1]~1_combout\ & ((\U_ADMIN|admin_hex0_num[3]~3_combout\) # ((\U_ADMIN|admin_hex0_num[2]~2_combout\ & \U_ADMIN|admin_hex0_num[0]~0_combout\)))) # (!\U_ADMIN|admin_hex0_num[1]~1_combout\ & 
-- (\U_ADMIN|admin_hex0_num[2]~2_combout\ $ (((!\U_ADMIN|admin_hex0_num[3]~3_combout\ & \U_ADMIN|admin_hex0_num[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|admin_hex0_num[2]~2_combout\,
	datab => \U_ADMIN|admin_hex0_num[1]~1_combout\,
	datac => \U_ADMIN|admin_hex0_num[3]~3_combout\,
	datad => \U_ADMIN|admin_hex0_num[0]~0_combout\,
	combout => \U_ADM_HEX0_NUM|Mux3~0_combout\);

-- Location: LCCOMB_X19_Y18_N6
\Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\U_GESTOR|base_addr_reg\(3)) # ((\U_GESTOR|es_admin~q\) # (\U_GESTOR|base_addr_reg\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_GESTOR|base_addr_reg\(3),
	datac => \U_GESTOR|es_admin~q\,
	datad => \U_GESTOR|base_addr_reg\(4),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X20_Y16_N16
\U_HEX0_NUM|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HEX0_NUM|Mux3~0_combout\ = (\U_REGISTRO|d0\(1) & ((\U_REGISTRO|d0\(3)) # ((\U_REGISTRO|d0\(0) & \U_REGISTRO|d0\(2))))) # (!\U_REGISTRO|d0\(1) & (\U_REGISTRO|d0\(2) $ (((\U_REGISTRO|d0\(0) & !\U_REGISTRO|d0\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REGISTRO|d0\(0),
	datab => \U_REGISTRO|d0\(2),
	datac => \U_REGISTRO|d0\(1),
	datad => \U_REGISTRO|d0\(3),
	combout => \U_HEX0_NUM|Mux3~0_combout\);

-- Location: LCCOMB_X17_Y21_N8
\U_ADM_HEX0_COD|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADM_HEX0_COD|Mux3~0_combout\ = (\U_ADMIN|admin_hex0_cod~0_combout\ & (\U_ADMIN|admin_hex1~0_combout\ & ((\U_ADMIN|usuario_sel\(1)) # (\U_ADMIN|usuario_sel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|admin_hex0_cod~0_combout\,
	datab => \U_ADMIN|usuario_sel\(1),
	datac => \U_ADMIN|usuario_sel\(0),
	datad => \U_ADMIN|admin_hex1~0_combout\,
	combout => \U_ADM_HEX0_COD|Mux3~0_combout\);

-- Location: LCCOMB_X15_Y16_N18
\U_UNIDAD|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_UNIDAD|Mux3~0_combout\ = (\unidad_temp[1]~11_combout\ & ((\unidad_temp[3]~14_combout\) # ((\unidad_temp[2]~12_combout\ & \unidad_temp[0]~4_combout\)))) # (!\unidad_temp[1]~11_combout\ & (\unidad_temp[2]~12_combout\ $ (((\unidad_temp[0]~4_combout\ & 
-- !\unidad_temp[3]~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidad_temp[2]~12_combout\,
	datab => \unidad_temp[0]~4_combout\,
	datac => \unidad_temp[1]~11_combout\,
	datad => \unidad_temp[3]~14_combout\,
	combout => \U_UNIDAD|Mux3~0_combout\);

-- Location: LCCOMB_X19_Y18_N28
\HEX0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0~20_combout\ = (\HEX0~4_combout\ & (((!\HEX0~5_combout\)))) # (!\HEX0~4_combout\ & ((\HEX0~5_combout\ & (!\U_ADM_HEX0_COD|Mux3~0_combout\)) # (!\HEX0~5_combout\ & ((\U_UNIDAD|Mux3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADM_HEX0_COD|Mux3~0_combout\,
	datab => \HEX0~4_combout\,
	datac => \U_UNIDAD|Mux3~0_combout\,
	datad => \HEX0~5_combout\,
	combout => \HEX0~20_combout\);

-- Location: LCCOMB_X19_Y18_N18
\HEX0~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0~21_combout\ = (\HEX0~6_combout\ & ((\HEX0~20_combout\ & ((\U_HEX0_NUM|Mux3~0_combout\))) # (!\HEX0~20_combout\ & (!\Mux3~0_combout\)))) # (!\HEX0~6_combout\ & (((\HEX0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datab => \HEX0~6_combout\,
	datac => \U_HEX0_NUM|Mux3~0_combout\,
	datad => \HEX0~20_combout\,
	combout => \HEX0~21_combout\);

-- Location: LCCOMB_X17_Y22_N24
\HEX0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0~22_combout\ = (\HEX0~38_combout\) # ((\HEX0~21_combout\ & (!\HEX0~39_combout\ & !\U_ADMIN|admin_hex0_es_num~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0~21_combout\,
	datab => \HEX0~39_combout\,
	datac => \HEX0~38_combout\,
	datad => \U_ADMIN|admin_hex0_es_num~0_combout\,
	combout => \HEX0~22_combout\);

-- Location: LCCOMB_X17_Y22_N16
\HEX0~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0~23_combout\ = (\HEX0~22_combout\) # ((\U_ADM_HEX0_NUM|Mux3~0_combout\ & \U_ADMIN|admin_hex0_es_num~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADM_HEX0_NUM|Mux3~0_combout\,
	datab => \U_ADMIN|admin_hex0_es_num~0_combout\,
	datad => \HEX0~22_combout\,
	combout => \HEX0~23_combout\);

-- Location: LCCOMB_X17_Y22_N22
\U_ADM_HEX0_NUM|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADM_HEX0_NUM|Mux2~0_combout\ = (\U_ADMIN|admin_hex0_num[0]~0_combout\) # ((\U_ADMIN|admin_hex0_num[1]~1_combout\ & ((\U_ADMIN|admin_hex0_num[3]~3_combout\))) # (!\U_ADMIN|admin_hex0_num[1]~1_combout\ & (\U_ADMIN|admin_hex0_num[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|admin_hex0_num[2]~2_combout\,
	datab => \U_ADMIN|admin_hex0_num[1]~1_combout\,
	datac => \U_ADMIN|admin_hex0_num[3]~3_combout\,
	datad => \U_ADMIN|admin_hex0_num[0]~0_combout\,
	combout => \U_ADM_HEX0_NUM|Mux2~0_combout\);

-- Location: LCCOMB_X16_Y17_N26
\U_ADM_HEX0_COD|Mux2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADM_HEX0_COD|Mux2~8_combout\ = (!\U_ADMIN|estado.CLAVE_ADMIN~q\ & (!\U_ADMIN|estado.ADMIN_OK~q\ & ((\U_ADMIN|estado.OP_ELIMINAR_USR~q\) # (\U_ADMIN|estado.OP_AGREGAR_USR~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|estado.CLAVE_ADMIN~q\,
	datab => \U_ADMIN|estado.OP_ELIMINAR_USR~q\,
	datac => \U_ADMIN|estado.ADMIN_OK~q\,
	datad => \U_ADMIN|estado.OP_AGREGAR_USR~q\,
	combout => \U_ADM_HEX0_COD|Mux2~8_combout\);

-- Location: LCCOMB_X16_Y17_N20
\HEX0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0~24_combout\ = (\U_ADMIN|estado.ESPERA~q\ & ((\U_ADMIN|admin_hex0_es_num~0_combout\ & (\U_ADM_HEX0_NUM|Mux2~0_combout\)) # (!\U_ADMIN|admin_hex0_es_num~0_combout\ & ((!\U_ADM_HEX0_COD|Mux2~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADM_HEX0_NUM|Mux2~0_combout\,
	datab => \U_ADMIN|admin_hex0_es_num~0_combout\,
	datac => \U_ADM_HEX0_COD|Mux2~8_combout\,
	datad => \U_ADMIN|estado.ESPERA~q\,
	combout => \HEX0~24_combout\);

-- Location: LCCOMB_X15_Y16_N28
\U_UNIDAD|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_UNIDAD|Mux2~0_combout\ = (\unidad_temp[0]~4_combout\) # ((\unidad_temp[1]~11_combout\ & ((\unidad_temp[3]~14_combout\))) # (!\unidad_temp[1]~11_combout\ & (\unidad_temp[2]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidad_temp[2]~12_combout\,
	datab => \unidad_temp[0]~4_combout\,
	datac => \unidad_temp[1]~11_combout\,
	datad => \unidad_temp[3]~14_combout\,
	combout => \U_UNIDAD|Mux2~0_combout\);

-- Location: LCCOMB_X19_Y22_N0
\HEX0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0~28_combout\ = (\U_UNIDAD|Mux2~0_combout\ & ((\U_FSM|estado_actual.BLOQUEO~q\) # ((!\U_FSM|estado_out\(0) & !\HEX3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_UNIDAD|Mux2~0_combout\,
	datab => \U_FSM|estado_out\(0),
	datac => \U_FSM|estado_actual.BLOQUEO~q\,
	datad => \HEX3~4_combout\,
	combout => \HEX0~28_combout\);

-- Location: LCCOMB_X24_Y18_N30
\U_HEX0_NUM|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HEX0_NUM|Mux2~0_combout\ = (\U_REGISTRO|d0\(0)) # ((\U_REGISTRO|d0\(1) & ((\U_REGISTRO|d0\(3)))) # (!\U_REGISTRO|d0\(1) & (\U_REGISTRO|d0\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REGISTRO|d0\(2),
	datab => \U_REGISTRO|d0\(1),
	datac => \U_REGISTRO|d0\(0),
	datad => \U_REGISTRO|d0\(3),
	combout => \U_HEX0_NUM|Mux2~0_combout\);

-- Location: LCCOMB_X20_Y18_N10
\HEX0~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0~25_combout\ = (\U_HEX0_NUM|Mux2~0_combout\ & (!\Equal5~0_combout\ & (\HEX3~4_combout\ & \U_FSM|estado_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_HEX0_NUM|Mux2~0_combout\,
	datab => \Equal5~0_combout\,
	datac => \HEX3~4_combout\,
	datad => \U_FSM|estado_out\(0),
	combout => \HEX0~25_combout\);

-- Location: LCCOMB_X19_Y22_N16
\HEX0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0~26_combout\ = (\U_FSM|estado_actual.ABRIR~q\ & \U_FSM|estado_actual.INGRESO~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_FSM|estado_actual.ABRIR~q\,
	datad => \U_FSM|estado_actual.INGRESO~q\,
	combout => \HEX0~26_combout\);

-- Location: LCCOMB_X19_Y22_N6
\HEX0~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0~27_combout\ = (!\U_FSM|estado_actual.BLOQUEO~q\ & ((\U_FSM|estado_actual.ERROR_CLAVE~q\) # ((\HEX0~25_combout\) # (\HEX0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|estado_actual.ERROR_CLAVE~q\,
	datab => \HEX0~25_combout\,
	datac => \U_FSM|estado_actual.BLOQUEO~q\,
	datad => \HEX0~26_combout\,
	combout => \HEX0~27_combout\);

-- Location: LCCOMB_X19_Y22_N18
\HEX0~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0~29_combout\ = (\HEX0~24_combout\) # ((!\U_ADMIN|estado.ESPERA~q\ & ((\HEX0~28_combout\) # (\HEX0~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0~24_combout\,
	datab => \HEX0~28_combout\,
	datac => \U_ADMIN|estado.ESPERA~q\,
	datad => \HEX0~27_combout\,
	combout => \HEX0~29_combout\);

-- Location: LCCOMB_X17_Y22_N10
\U_ADM_HEX0_NUM|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADM_HEX0_NUM|Mux1~0_combout\ = (\U_ADMIN|admin_hex0_num[2]~2_combout\ & ((\U_ADMIN|admin_hex0_num[3]~3_combout\) # ((\U_ADMIN|admin_hex0_num[1]~1_combout\ & \U_ADMIN|admin_hex0_num[0]~0_combout\)))) # (!\U_ADMIN|admin_hex0_num[2]~2_combout\ & 
-- ((\U_ADMIN|admin_hex0_num[1]~1_combout\) # ((!\U_ADMIN|admin_hex0_num[3]~3_combout\ & \U_ADMIN|admin_hex0_num[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|admin_hex0_num[2]~2_combout\,
	datab => \U_ADMIN|admin_hex0_num[1]~1_combout\,
	datac => \U_ADMIN|admin_hex0_num[3]~3_combout\,
	datad => \U_ADMIN|admin_hex0_num[0]~0_combout\,
	combout => \U_ADM_HEX0_NUM|Mux1~0_combout\);

-- Location: LCCOMB_X15_Y16_N14
\U_UNIDAD|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_UNIDAD|Mux1~0_combout\ = (\unidad_temp[2]~12_combout\ & ((\unidad_temp[3]~14_combout\) # ((\unidad_temp[0]~4_combout\ & \unidad_temp[1]~11_combout\)))) # (!\unidad_temp[2]~12_combout\ & ((\unidad_temp[1]~11_combout\) # ((\unidad_temp[0]~4_combout\ & 
-- !\unidad_temp[3]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidad_temp[2]~12_combout\,
	datab => \unidad_temp[0]~4_combout\,
	datac => \unidad_temp[1]~11_combout\,
	datad => \unidad_temp[3]~14_combout\,
	combout => \U_UNIDAD|Mux1~0_combout\);

-- Location: LCCOMB_X20_Y17_N28
\U_HEX0_NUM|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HEX0_NUM|Mux1~0_combout\ = (\U_REGISTRO|d0\(2) & ((\U_REGISTRO|d0\(3)) # ((\U_REGISTRO|d0\(1) & \U_REGISTRO|d0\(0))))) # (!\U_REGISTRO|d0\(2) & ((\U_REGISTRO|d0\(1)) # ((!\U_REGISTRO|d0\(3) & \U_REGISTRO|d0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REGISTRO|d0\(3),
	datab => \U_REGISTRO|d0\(2),
	datac => \U_REGISTRO|d0\(1),
	datad => \U_REGISTRO|d0\(0),
	combout => \U_HEX0_NUM|Mux1~0_combout\);

-- Location: LCCOMB_X19_Y18_N24
\HEX0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0~30_combout\ = (\HEX0~4_combout\ & (((\U_HEX0_NUM|Mux1~0_combout\) # (\HEX0~5_combout\)))) # (!\HEX0~4_combout\ & (\U_UNIDAD|Mux1~0_combout\ & ((!\HEX0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_UNIDAD|Mux1~0_combout\,
	datab => \HEX0~4_combout\,
	datac => \U_HEX0_NUM|Mux1~0_combout\,
	datad => \HEX0~5_combout\,
	combout => \HEX0~30_combout\);

-- Location: LCCOMB_X17_Y21_N6
\U_ADM_HEX0_COD|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADM_HEX0_COD|Mux1~0_combout\ = (\U_ADMIN|admin_hex0_cod~0_combout\ & (\U_ADMIN|admin_hex1~0_combout\ & ((!\U_ADMIN|usuario_sel\(0)) # (!\U_ADMIN|usuario_sel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|admin_hex0_cod~0_combout\,
	datab => \U_ADMIN|usuario_sel\(1),
	datac => \U_ADMIN|usuario_sel\(0),
	datad => \U_ADMIN|admin_hex1~0_combout\,
	combout => \U_ADM_HEX0_COD|Mux1~0_combout\);

-- Location: LCCOMB_X19_Y18_N30
\HEX0~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0~31_combout\ = (\HEX0~5_combout\ & ((\HEX0~30_combout\ & ((!\Mux5~0_combout\))) # (!\HEX0~30_combout\ & (!\U_ADM_HEX0_COD|Mux1~0_combout\)))) # (!\HEX0~5_combout\ & (\HEX0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0~5_combout\,
	datab => \HEX0~30_combout\,
	datac => \U_ADM_HEX0_COD|Mux1~0_combout\,
	datad => \Mux5~0_combout\,
	combout => \HEX0~31_combout\);

-- Location: LCCOMB_X17_Y22_N28
\HEX0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0~32_combout\ = (\HEX0~38_combout\) # ((\HEX0~31_combout\ & (!\HEX0~39_combout\ & !\U_ADMIN|admin_hex0_es_num~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0~38_combout\,
	datab => \HEX0~31_combout\,
	datac => \HEX0~39_combout\,
	datad => \U_ADMIN|admin_hex0_es_num~0_combout\,
	combout => \HEX0~32_combout\);

-- Location: LCCOMB_X17_Y22_N8
\HEX0~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0~33_combout\ = (\HEX0~32_combout\) # ((\U_ADM_HEX0_NUM|Mux1~0_combout\ & \U_ADMIN|admin_hex0_es_num~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADM_HEX0_NUM|Mux1~0_combout\,
	datab => \U_ADMIN|admin_hex0_es_num~0_combout\,
	datad => \HEX0~32_combout\,
	combout => \HEX0~33_combout\);

-- Location: LCCOMB_X17_Y22_N12
\U_ADM_HEX0_NUM|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADM_HEX0_NUM|Mux0~0_combout\ = (\U_ADMIN|admin_hex0_num[2]~2_combout\ & (!\U_ADMIN|admin_hex0_num[3]~3_combout\ & ((!\U_ADMIN|admin_hex0_num[0]~0_combout\) # (!\U_ADMIN|admin_hex0_num[1]~1_combout\)))) # (!\U_ADMIN|admin_hex0_num[2]~2_combout\ & 
-- (\U_ADMIN|admin_hex0_num[1]~1_combout\ $ ((\U_ADMIN|admin_hex0_num[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|admin_hex0_num[2]~2_combout\,
	datab => \U_ADMIN|admin_hex0_num[1]~1_combout\,
	datac => \U_ADMIN|admin_hex0_num[3]~3_combout\,
	datad => \U_ADMIN|admin_hex0_num[0]~0_combout\,
	combout => \U_ADM_HEX0_NUM|Mux0~0_combout\);

-- Location: LCCOMB_X15_Y20_N20
\U_UNIDAD|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_UNIDAD|Mux0~0_combout\ = (\unidad_temp[1]~11_combout\ & (!\unidad_temp[3]~14_combout\ & ((!\unidad_temp[0]~4_combout\) # (!\unidad_temp[2]~12_combout\)))) # (!\unidad_temp[1]~11_combout\ & (\unidad_temp[2]~12_combout\ $ 
-- (((\unidad_temp[3]~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidad_temp[1]~11_combout\,
	datab => \unidad_temp[2]~12_combout\,
	datac => \unidad_temp[0]~4_combout\,
	datad => \unidad_temp[3]~14_combout\,
	combout => \U_UNIDAD|Mux0~0_combout\);

-- Location: LCCOMB_X20_Y18_N24
\U_HEX0_NUM|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HEX0_NUM|Mux0~0_combout\ = (\U_REGISTRO|d0\(1) & (!\U_REGISTRO|d0\(3) & ((!\U_REGISTRO|d0\(2)) # (!\U_REGISTRO|d0\(0))))) # (!\U_REGISTRO|d0\(1) & ((\U_REGISTRO|d0\(2) $ (\U_REGISTRO|d0\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REGISTRO|d0\(0),
	datab => \U_REGISTRO|d0\(1),
	datac => \U_REGISTRO|d0\(2),
	datad => \U_REGISTRO|d0\(3),
	combout => \U_HEX0_NUM|Mux0~0_combout\);

-- Location: LCCOMB_X19_Y18_N16
\HEX0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0~34_combout\ = (\HEX0~5_combout\ & (\HEX0~4_combout\)) # (!\HEX0~5_combout\ & ((\HEX0~4_combout\ & ((!\U_HEX0_NUM|Mux0~0_combout\))) # (!\HEX0~4_combout\ & (!\U_UNIDAD|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0~5_combout\,
	datab => \HEX0~4_combout\,
	datac => \U_UNIDAD|Mux0~0_combout\,
	datad => \U_HEX0_NUM|Mux0~0_combout\,
	combout => \HEX0~34_combout\);

-- Location: LCCOMB_X17_Y21_N20
\U_ADM_HEX0_COD|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADM_HEX0_COD|Mux0~0_combout\ = (((\U_ADMIN|usuario_sel\(0)) # (!\U_ADMIN|admin_hex1~0_combout\)) # (!\U_ADMIN|usuario_sel\(1))) # (!\U_ADMIN|admin_hex0_cod~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|admin_hex0_cod~0_combout\,
	datab => \U_ADMIN|usuario_sel\(1),
	datac => \U_ADMIN|usuario_sel\(0),
	datad => \U_ADMIN|admin_hex1~0_combout\,
	combout => \U_ADM_HEX0_COD|Mux0~0_combout\);

-- Location: LCCOMB_X19_Y18_N22
\HEX0~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0~35_combout\ = (\HEX0~34_combout\ & (((!\HEX0~5_combout\)) # (!\Mux5~1_combout\))) # (!\HEX0~34_combout\ & (((!\U_ADM_HEX0_COD|Mux0~0_combout\ & \HEX0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~1_combout\,
	datab => \HEX0~34_combout\,
	datac => \U_ADM_HEX0_COD|Mux0~0_combout\,
	datad => \HEX0~5_combout\,
	combout => \HEX0~35_combout\);

-- Location: LCCOMB_X17_Y22_N18
\HEX0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0~36_combout\ = (\HEX0~38_combout\) # ((\HEX0~35_combout\ & (!\HEX0~39_combout\ & !\U_ADMIN|admin_hex0_es_num~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0~35_combout\,
	datab => \HEX0~39_combout\,
	datac => \HEX0~38_combout\,
	datad => \U_ADMIN|admin_hex0_es_num~0_combout\,
	combout => \HEX0~36_combout\);

-- Location: LCCOMB_X17_Y22_N14
\HEX0~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0~37_combout\ = (\HEX0~36_combout\) # ((!\U_ADM_HEX0_NUM|Mux0~0_combout\ & \U_ADMIN|admin_hex0_es_num~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADM_HEX0_NUM|Mux0~0_combout\,
	datab => \U_ADMIN|admin_hex0_es_num~0_combout\,
	datad => \HEX0~36_combout\,
	combout => \HEX0~37_combout\);

-- Location: LCCOMB_X24_Y21_N12
\U_HEX1_NUM|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HEX1_NUM|Mux6~0_combout\ = (\U_REGISTRO|d1\(1) & (\U_REGISTRO|d1\(3))) # (!\U_REGISTRO|d1\(1) & (\U_REGISTRO|d1\(2) $ (((!\U_REGISTRO|d1\(3) & \U_REGISTRO|d1\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REGISTRO|d1\(1),
	datab => \U_REGISTRO|d1\(3),
	datac => \U_REGISTRO|d1\(2),
	datad => \U_REGISTRO|d1\(0),
	combout => \U_HEX1_NUM|Mux6~0_combout\);

-- Location: LCCOMB_X24_Y21_N26
\HEX1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX1~2_combout\ = (\Equal5~0_combout\ & (\Mux5~0_combout\)) # (!\Equal5~0_combout\ & ((\U_HEX1_NUM|Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datac => \Mux5~0_combout\,
	datad => \U_HEX1_NUM|Mux6~0_combout\,
	combout => \HEX1~2_combout\);

-- Location: LCCOMB_X24_Y21_N0
\HEX1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX1~3_combout\ = (\U_FSM|estado_actual.INGRESO~q\ & ((!\HEX1~2_combout\))) # (!\U_FSM|estado_actual.INGRESO~q\ & (\U_FSM|estado_actual.ABRIR~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|estado_actual.ABRIR~q\,
	datac => \HEX1~2_combout\,
	datad => \U_FSM|estado_actual.INGRESO~q\,
	combout => \HEX1~3_combout\);

-- Location: LCCOMB_X17_Y21_N30
\HEX1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX1~4_combout\ = (\U_ADMIN|estado.ESPERA~q\ & (((\U_ADMIN|usuario_sel\(0)) # (!\U_ADMIN|admin_hex1~0_combout\)))) # (!\U_ADMIN|estado.ESPERA~q\ & (!\HEX1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX1~3_combout\,
	datab => \U_ADMIN|usuario_sel\(0),
	datac => \U_ADMIN|estado.ESPERA~q\,
	datad => \U_ADMIN|admin_hex1~0_combout\,
	combout => \HEX1~4_combout\);

-- Location: LCCOMB_X17_Y21_N28
\U_ADM_HEX1|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADM_HEX1|Mux5~0_combout\ = (\U_ADMIN|estado.ESPERA~q\ & (\U_ADMIN|admin_hex1~0_combout\ & (\U_ADMIN|usuario_sel\(1) $ (!\U_ADMIN|usuario_sel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|estado.ESPERA~q\,
	datab => \U_ADMIN|usuario_sel\(1),
	datac => \U_ADMIN|usuario_sel\(0),
	datad => \U_ADMIN|admin_hex1~0_combout\,
	combout => \U_ADM_HEX1|Mux5~0_combout\);

-- Location: LCCOMB_X24_Y21_N2
\U_HEX1_NUM|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HEX1_NUM|Mux5~0_combout\ = (\U_REGISTRO|d1\(3) & ((\U_REGISTRO|d1\(1)) # ((\U_REGISTRO|d1\(2))))) # (!\U_REGISTRO|d1\(3) & (\U_REGISTRO|d1\(2) & (\U_REGISTRO|d1\(1) $ (\U_REGISTRO|d1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REGISTRO|d1\(1),
	datab => \U_REGISTRO|d1\(3),
	datac => \U_REGISTRO|d1\(2),
	datad => \U_REGISTRO|d1\(0),
	combout => \U_HEX1_NUM|Mux5~0_combout\);

-- Location: LCCOMB_X24_Y21_N20
\HEX1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX1~5_combout\ = ((\Equal5~0_combout\ & ((\Mux5~0_combout\))) # (!\Equal5~0_combout\ & (\U_HEX1_NUM|Mux5~0_combout\))) # (!\U_FSM|estado_actual.INGRESO~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|estado_actual.INGRESO~q\,
	datab => \U_HEX1_NUM|Mux5~0_combout\,
	datac => \Mux5~0_combout\,
	datad => \Equal5~0_combout\,
	combout => \HEX1~5_combout\);

-- Location: LCCOMB_X17_Y21_N10
\HEX1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX1~6_combout\ = (\U_ADMIN|estado.ESPERA~q\ & (!\U_ADM_HEX1|Mux5~0_combout\)) # (!\U_ADMIN|estado.ESPERA~q\ & ((\HEX1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_ADM_HEX1|Mux5~0_combout\,
	datac => \U_ADMIN|estado.ESPERA~q\,
	datad => \HEX1~5_combout\,
	combout => \HEX1~6_combout\);

-- Location: LCCOMB_X24_Y21_N22
\U_HEX1_NUM|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HEX1_NUM|Mux4~0_combout\ = (\U_REGISTRO|d1\(2) & (((\U_REGISTRO|d1\(3))))) # (!\U_REGISTRO|d1\(2) & (\U_REGISTRO|d1\(1) & ((\U_REGISTRO|d1\(3)) # (!\U_REGISTRO|d1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REGISTRO|d1\(1),
	datab => \U_REGISTRO|d1\(3),
	datac => \U_REGISTRO|d1\(2),
	datad => \U_REGISTRO|d1\(0),
	combout => \U_HEX1_NUM|Mux4~0_combout\);

-- Location: LCCOMB_X24_Y21_N4
\HEX1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX1~7_combout\ = ((\Equal5~0_combout\ & (\Mux5~0_combout\)) # (!\Equal5~0_combout\ & ((\U_HEX1_NUM|Mux4~0_combout\)))) # (!\U_FSM|estado_actual.INGRESO~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|estado_actual.INGRESO~q\,
	datab => \Mux5~0_combout\,
	datac => \U_HEX1_NUM|Mux4~0_combout\,
	datad => \Equal5~0_combout\,
	combout => \HEX1~7_combout\);

-- Location: LCCOMB_X17_Y21_N4
\U_ADM_HEX1|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADM_HEX1|Mux4~0_combout\ = (\U_ADMIN|estado.ESPERA~q\ & (\U_ADMIN|admin_hex1~0_combout\ & ((\U_ADMIN|usuario_sel\(0)) # (!\U_ADMIN|usuario_sel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|estado.ESPERA~q\,
	datab => \U_ADMIN|usuario_sel\(1),
	datac => \U_ADMIN|usuario_sel\(0),
	datad => \U_ADMIN|admin_hex1~0_combout\,
	combout => \U_ADM_HEX1|Mux4~0_combout\);

-- Location: LCCOMB_X24_Y21_N18
\HEX1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX1~8_combout\ = (\U_ADMIN|estado.ESPERA~q\ & ((!\U_ADM_HEX1|Mux4~0_combout\))) # (!\U_ADMIN|estado.ESPERA~q\ & (\HEX1~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_ADMIN|estado.ESPERA~q\,
	datac => \HEX1~7_combout\,
	datad => \U_ADM_HEX1|Mux4~0_combout\,
	combout => \HEX1~8_combout\);

-- Location: LCCOMB_X17_Y21_N2
\U_ADM_HEX1|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADM_HEX1|Mux3~0_combout\ = (\U_ADMIN|estado.ESPERA~q\ & (\U_ADMIN|admin_hex1~0_combout\ & ((\U_ADMIN|usuario_sel\(1)) # (\U_ADMIN|usuario_sel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|estado.ESPERA~q\,
	datab => \U_ADMIN|usuario_sel\(1),
	datac => \U_ADMIN|usuario_sel\(0),
	datad => \U_ADMIN|admin_hex1~0_combout\,
	combout => \U_ADM_HEX1|Mux3~0_combout\);

-- Location: LCCOMB_X24_Y21_N8
\U_HEX1_NUM|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HEX1_NUM|Mux3~0_combout\ = (\U_REGISTRO|d1\(1) & ((\U_REGISTRO|d1\(3)) # ((\U_REGISTRO|d1\(2) & \U_REGISTRO|d1\(0))))) # (!\U_REGISTRO|d1\(1) & (\U_REGISTRO|d1\(2) $ (((!\U_REGISTRO|d1\(3) & \U_REGISTRO|d1\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REGISTRO|d1\(1),
	datab => \U_REGISTRO|d1\(3),
	datac => \U_REGISTRO|d1\(2),
	datad => \U_REGISTRO|d1\(0),
	combout => \U_HEX1_NUM|Mux3~0_combout\);

-- Location: LCCOMB_X27_Y21_N2
\HEX1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX1~9_combout\ = (\U_FSM|estado_actual.BLOQUEO~q\ & (!\U_FSM|estado_actual.INGRESO~q\ & ((!\U_FSM|estado_actual.ABRIR~q\)))) # (!\U_FSM|estado_actual.BLOQUEO~q\ & ((\U_FSM|estado_actual.ERROR_CLAVE~q\) # ((\U_FSM|estado_actual.INGRESO~q\ & 
-- \U_FSM|estado_actual.ABRIR~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|estado_actual.BLOQUEO~q\,
	datab => \U_FSM|estado_actual.INGRESO~q\,
	datac => \U_FSM|estado_actual.ERROR_CLAVE~q\,
	datad => \U_FSM|estado_actual.ABRIR~q\,
	combout => \HEX1~9_combout\);

-- Location: LCCOMB_X27_Y21_N20
\HEX1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX1~10_combout\ = (\HEX1~9_combout\) # ((\U_FSM|estado_actual.INGRESO~q\ & ((\Equal5~0_combout\) # (\U_HEX1_NUM|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => \U_HEX1_NUM|Mux3~0_combout\,
	datac => \HEX1~9_combout\,
	datad => \U_FSM|estado_actual.INGRESO~q\,
	combout => \HEX1~10_combout\);

-- Location: LCCOMB_X27_Y21_N30
\HEX1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX1~11_combout\ = (\U_ADMIN|estado.ESPERA~q\ & (!\U_ADM_HEX1|Mux3~0_combout\)) # (!\U_ADMIN|estado.ESPERA~q\ & ((\HEX1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_ADM_HEX1|Mux3~0_combout\,
	datac => \U_ADMIN|estado.ESPERA~q\,
	datad => \HEX1~10_combout\,
	combout => \HEX1~11_combout\);

-- Location: LCCOMB_X24_Y21_N24
\U_HEX1_NUM|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HEX1_NUM|Mux2~0_combout\ = (\U_REGISTRO|d1\(0)) # ((\U_REGISTRO|d1\(1) & (\U_REGISTRO|d1\(3))) # (!\U_REGISTRO|d1\(1) & ((\U_REGISTRO|d1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REGISTRO|d1\(1),
	datab => \U_REGISTRO|d1\(3),
	datac => \U_REGISTRO|d1\(2),
	datad => \U_REGISTRO|d1\(0),
	combout => \U_HEX1_NUM|Mux2~0_combout\);

-- Location: LCCOMB_X24_Y21_N30
\HEX1~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX1~13_combout\ = (\HEX1~12_combout\ & ((\Equal5~0_combout\ & ((\Mux5~0_combout\))) # (!\Equal5~0_combout\ & (\U_HEX1_NUM|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX1~12_combout\,
	datab => \U_HEX1_NUM|Mux2~0_combout\,
	datac => \Mux5~0_combout\,
	datad => \Equal5~0_combout\,
	combout => \HEX1~13_combout\);

-- Location: LCCOMB_X17_Y20_N24
\HEX1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX1~20_combout\ = (\HEX1~13_combout\) # ((\U_ADMIN|estado.ESPERA~q\ & ((\U_ADMIN|estado.CLAVE_ADMIN~q\) # (\U_ADMIN|estado.ADMIN_OK~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|estado.CLAVE_ADMIN~q\,
	datab => \U_ADMIN|estado.ESPERA~q\,
	datac => \U_ADMIN|estado.ADMIN_OK~q\,
	datad => \HEX1~13_combout\,
	combout => \HEX1~20_combout\);

-- Location: LCCOMB_X26_Y21_N12
\HEX1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX1~14_combout\ = (\U_ADMIN|estado.ESPERA~q\) # ((\U_FSM|estado_actual.INGRESO~q\ & \Equal5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_FSM|estado_actual.INGRESO~q\,
	datac => \U_ADMIN|estado.ESPERA~q\,
	datad => \Equal5~0_combout\,
	combout => \HEX1~14_combout\);

-- Location: LCCOMB_X17_Y21_N24
\U_ADM_HEX1|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADM_HEX1|Mux1~0_combout\ = (\U_ADMIN|estado.ESPERA~q\ & (\U_ADMIN|admin_hex1~0_combout\ & ((!\U_ADMIN|usuario_sel\(0)) # (!\U_ADMIN|usuario_sel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|estado.ESPERA~q\,
	datab => \U_ADMIN|usuario_sel\(1),
	datac => \U_ADMIN|usuario_sel\(0),
	datad => \U_ADMIN|admin_hex1~0_combout\,
	combout => \U_ADM_HEX1|Mux1~0_combout\);

-- Location: LCCOMB_X24_Y21_N16
\U_HEX1_NUM|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HEX1_NUM|Mux1~0_combout\ = (\U_REGISTRO|d1\(2) & ((\U_REGISTRO|d1\(3)) # ((\U_REGISTRO|d1\(1) & \U_REGISTRO|d1\(0))))) # (!\U_REGISTRO|d1\(2) & ((\U_REGISTRO|d1\(1)) # ((!\U_REGISTRO|d1\(3) & \U_REGISTRO|d1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REGISTRO|d1\(1),
	datab => \U_REGISTRO|d1\(3),
	datac => \U_REGISTRO|d1\(2),
	datad => \U_REGISTRO|d1\(0),
	combout => \U_HEX1_NUM|Mux1~0_combout\);

-- Location: LCCOMB_X27_Y21_N4
\HEX1~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX1~15_combout\ = (\U_FSM|estado_actual.BLOQUEO~q\) # ((\U_FSM|estado_actual.ERROR_CLAVE~q\ & !\U_FSM|estado_actual.ABRIR~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_FSM|estado_actual.ERROR_CLAVE~q\,
	datac => \U_FSM|estado_actual.BLOQUEO~q\,
	datad => \U_FSM|estado_actual.ABRIR~q\,
	combout => \HEX1~15_combout\);

-- Location: LCCOMB_X26_Y21_N6
\HEX1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX1~16_combout\ = (\HEX1~14_combout\ & (((\HEX1~12_combout\)))) # (!\HEX1~14_combout\ & ((\HEX1~12_combout\ & (\U_HEX1_NUM|Mux1~0_combout\)) # (!\HEX1~12_combout\ & ((\HEX1~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX1~14_combout\,
	datab => \U_HEX1_NUM|Mux1~0_combout\,
	datac => \HEX1~12_combout\,
	datad => \HEX1~15_combout\,
	combout => \HEX1~16_combout\);

-- Location: LCCOMB_X26_Y21_N28
\HEX1~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX1~17_combout\ = (\HEX1~14_combout\ & ((\HEX1~16_combout\ & ((\Mux5~0_combout\))) # (!\HEX1~16_combout\ & (!\U_ADM_HEX1|Mux1~0_combout\)))) # (!\HEX1~14_combout\ & (((\HEX1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX1~14_combout\,
	datab => \U_ADM_HEX1|Mux1~0_combout\,
	datac => \Mux5~0_combout\,
	datad => \HEX1~16_combout\,
	combout => \HEX1~17_combout\);

-- Location: LCCOMB_X17_Y21_N14
\U_ADM_HEX1|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_ADM_HEX1|Mux0~0_combout\ = (((\U_ADMIN|usuario_sel\(0)) # (!\U_ADMIN|admin_hex1~0_combout\)) # (!\U_ADMIN|usuario_sel\(1))) # (!\U_ADMIN|estado.ESPERA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|estado.ESPERA~q\,
	datab => \U_ADMIN|usuario_sel\(1),
	datac => \U_ADMIN|usuario_sel\(0),
	datad => \U_ADMIN|admin_hex1~0_combout\,
	combout => \U_ADM_HEX1|Mux0~0_combout\);

-- Location: LCCOMB_X24_Y21_N6
\U_HEX1_NUM|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HEX1_NUM|Mux0~0_combout\ = (\U_REGISTRO|d1\(1) & (!\U_REGISTRO|d1\(3) & ((!\U_REGISTRO|d1\(0)) # (!\U_REGISTRO|d1\(2))))) # (!\U_REGISTRO|d1\(1) & (\U_REGISTRO|d1\(3) $ ((\U_REGISTRO|d1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REGISTRO|d1\(1),
	datab => \U_REGISTRO|d1\(3),
	datac => \U_REGISTRO|d1\(2),
	datad => \U_REGISTRO|d1\(0),
	combout => \U_HEX1_NUM|Mux0~0_combout\);

-- Location: LCCOMB_X26_Y21_N18
\HEX1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX1~18_combout\ = (\HEX1~12_combout\ & (((\HEX1~14_combout\)) # (!\U_HEX1_NUM|Mux0~0_combout\))) # (!\HEX1~12_combout\ & (((\HEX2~6_combout\ & !\HEX1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_HEX1_NUM|Mux0~0_combout\,
	datab => \HEX2~6_combout\,
	datac => \HEX1~12_combout\,
	datad => \HEX1~14_combout\,
	combout => \HEX1~18_combout\);

-- Location: LCCOMB_X26_Y21_N0
\HEX1~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX1~19_combout\ = (\HEX1~18_combout\ & (((\Mux5~0_combout\) # (!\HEX1~14_combout\)))) # (!\HEX1~18_combout\ & (!\U_ADM_HEX1|Mux0~0_combout\ & ((\HEX1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADM_HEX1|Mux0~0_combout\,
	datab => \HEX1~18_combout\,
	datac => \Mux5~0_combout\,
	datad => \HEX1~14_combout\,
	combout => \HEX1~19_combout\);

-- Location: LCCOMB_X27_Y21_N10
\HEX2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX2~7_combout\ = (\U_ADMIN|estado.ESPERA~q\) # ((!\U_FSM|estado_actual.INGRESO~q\ & !\U_FSM|estado_actual.ABRIR~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_FSM|estado_actual.INGRESO~q\,
	datac => \U_ADMIN|estado.ESPERA~q\,
	datad => \U_FSM|estado_actual.ABRIR~q\,
	combout => \HEX2~7_combout\);

-- Location: LCCOMB_X26_Y21_N30
\U_HEX2_NUM|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HEX2_NUM|Mux6~0_combout\ = (\U_REGISTRO|d2\(1) & (\U_REGISTRO|d2\(3))) # (!\U_REGISTRO|d2\(1) & (\U_REGISTRO|d2\(2) $ (((!\U_REGISTRO|d2\(3) & \U_REGISTRO|d2\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REGISTRO|d2\(3),
	datab => \U_REGISTRO|d2\(1),
	datac => \U_REGISTRO|d2\(2),
	datad => \U_REGISTRO|d2\(0),
	combout => \U_HEX2_NUM|Mux6~0_combout\);

-- Location: LCCOMB_X27_Y21_N24
\HEX2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX2~8_combout\ = (\HEX2~7_combout\) # ((\U_FSM|estado_actual.INGRESO~q\ & ((\U_HEX2_NUM|Mux6~0_combout\) # (\Equal5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX2~7_combout\,
	datab => \U_HEX2_NUM|Mux6~0_combout\,
	datac => \Equal5~0_combout\,
	datad => \U_FSM|estado_actual.INGRESO~q\,
	combout => \HEX2~8_combout\);

-- Location: LCCOMB_X26_Y21_N16
\U_HEX2_NUM|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HEX2_NUM|Mux5~0_combout\ = (\U_REGISTRO|d2\(3) & ((\U_REGISTRO|d2\(1)) # ((\U_REGISTRO|d2\(2))))) # (!\U_REGISTRO|d2\(3) & (\U_REGISTRO|d2\(2) & (\U_REGISTRO|d2\(1) $ (\U_REGISTRO|d2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REGISTRO|d2\(3),
	datab => \U_REGISTRO|d2\(1),
	datac => \U_REGISTRO|d2\(2),
	datad => \U_REGISTRO|d2\(0),
	combout => \U_HEX2_NUM|Mux5~0_combout\);

-- Location: LCCOMB_X26_Y21_N14
\HEX2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX2~9_combout\ = (\U_FSM|estado_actual.INGRESO~q\ & ((\Equal5~0_combout\) # (\U_HEX2_NUM|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => \U_HEX2_NUM|Mux5~0_combout\,
	datad => \U_FSM|estado_actual.INGRESO~q\,
	combout => \HEX2~9_combout\);

-- Location: LCCOMB_X27_Y21_N22
\HEX2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX2~10_combout\ = (!\U_ADMIN|estado.ESPERA~q\ & ((\U_FSM|estado_actual.ERROR_CLAVE~q\) # ((\U_FSM|estado_actual.BLOQUEO~q\) # (\HEX2~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|estado.ESPERA~q\,
	datab => \U_FSM|estado_actual.ERROR_CLAVE~q\,
	datac => \U_FSM|estado_actual.BLOQUEO~q\,
	datad => \HEX2~9_combout\,
	combout => \HEX2~10_combout\);

-- Location: LCCOMB_X26_Y21_N4
\U_HEX2_NUM|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HEX2_NUM|Mux4~0_combout\ = (\U_REGISTRO|d2\(2) & (\U_REGISTRO|d2\(3))) # (!\U_REGISTRO|d2\(2) & (\U_REGISTRO|d2\(1) & ((\U_REGISTRO|d2\(3)) # (!\U_REGISTRO|d2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REGISTRO|d2\(3),
	datab => \U_REGISTRO|d2\(1),
	datac => \U_REGISTRO|d2\(2),
	datad => \U_REGISTRO|d2\(0),
	combout => \U_HEX2_NUM|Mux4~0_combout\);

-- Location: LCCOMB_X26_Y21_N10
\HEX2~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX2~11_combout\ = ((\U_FSM|estado_actual.INGRESO~q\ & ((\Equal5~0_combout\) # (\U_HEX2_NUM|Mux4~0_combout\)))) # (!\HEX2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => \HEX2~6_combout\,
	datac => \U_HEX2_NUM|Mux4~0_combout\,
	datad => \U_FSM|estado_actual.INGRESO~q\,
	combout => \HEX2~11_combout\);

-- Location: LCCOMB_X26_Y21_N8
\HEX2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX2~12_combout\ = (!\U_ADMIN|estado.ESPERA~q\ & \HEX2~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_ADMIN|estado.ESPERA~q\,
	datad => \HEX2~11_combout\,
	combout => \HEX2~12_combout\);

-- Location: LCCOMB_X26_Y21_N22
\U_HEX2_NUM|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HEX2_NUM|Mux3~0_combout\ = (\U_REGISTRO|d2\(1) & ((\U_REGISTRO|d2\(3)) # ((\U_REGISTRO|d2\(2) & \U_REGISTRO|d2\(0))))) # (!\U_REGISTRO|d2\(1) & (\U_REGISTRO|d2\(2) $ (((!\U_REGISTRO|d2\(3) & \U_REGISTRO|d2\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REGISTRO|d2\(3),
	datab => \U_REGISTRO|d2\(1),
	datac => \U_REGISTRO|d2\(2),
	datad => \U_REGISTRO|d2\(0),
	combout => \U_HEX2_NUM|Mux3~0_combout\);

-- Location: LCCOMB_X19_Y22_N28
\HEX2~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX2~13_combout\ = ((\U_FSM|estado_actual.INGRESO~q\ & ((\Equal5~0_combout\) # (\U_HEX2_NUM|Mux3~0_combout\)))) # (!\HEX3~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => \U_FSM|estado_actual.INGRESO~q\,
	datac => \U_HEX2_NUM|Mux3~0_combout\,
	datad => \HEX3~4_combout\,
	combout => \HEX2~13_combout\);

-- Location: LCCOMB_X19_Y22_N10
\HEX2~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX2~17_combout\ = (!\U_FSM|estado_actual.BLOQUEO~q\ & (!\U_ADMIN|estado.ESPERA~q\ & \HEX2~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_FSM|estado_actual.BLOQUEO~q\,
	datac => \U_ADMIN|estado.ESPERA~q\,
	datad => \HEX2~13_combout\,
	combout => \HEX2~17_combout\);

-- Location: LCCOMB_X26_Y21_N20
\U_HEX2_NUM|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HEX2_NUM|Mux2~0_combout\ = (\U_REGISTRO|d2\(0)) # ((\U_REGISTRO|d2\(1) & (\U_REGISTRO|d2\(3))) # (!\U_REGISTRO|d2\(1) & ((\U_REGISTRO|d2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REGISTRO|d2\(3),
	datab => \U_REGISTRO|d2\(1),
	datac => \U_REGISTRO|d2\(2),
	datad => \U_REGISTRO|d2\(0),
	combout => \U_HEX2_NUM|Mux2~0_combout\);

-- Location: LCCOMB_X26_Y21_N2
\HEX2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX2~18_combout\ = (!\U_ADMIN|estado.ESPERA~q\ & (\U_FSM|estado_actual.INGRESO~q\ & ((\U_HEX2_NUM|Mux2~0_combout\) # (\Equal5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|estado.ESPERA~q\,
	datab => \U_HEX2_NUM|Mux2~0_combout\,
	datac => \Equal5~0_combout\,
	datad => \U_FSM|estado_actual.INGRESO~q\,
	combout => \HEX2~18_combout\);

-- Location: LCCOMB_X26_Y21_N26
\U_HEX2_NUM|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HEX2_NUM|Mux1~0_combout\ = (\U_REGISTRO|d2\(2) & ((\U_REGISTRO|d2\(3)) # ((\U_REGISTRO|d2\(1) & \U_REGISTRO|d2\(0))))) # (!\U_REGISTRO|d2\(2) & ((\U_REGISTRO|d2\(1)) # ((!\U_REGISTRO|d2\(3) & \U_REGISTRO|d2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REGISTRO|d2\(3),
	datab => \U_REGISTRO|d2\(1),
	datac => \U_REGISTRO|d2\(2),
	datad => \U_REGISTRO|d2\(0),
	combout => \U_HEX2_NUM|Mux1~0_combout\);

-- Location: LCCOMB_X20_Y18_N26
\HEX3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX3~6_combout\ = (\U_FSM|estado_actual.INGRESO~q\ & ((\U_REGISTRO|contador\(0)) # ((\U_REGISTRO|contador\(1)) # (\U_REGISTRO|contador\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REGISTRO|contador\(0),
	datab => \U_FSM|estado_actual.INGRESO~q\,
	datac => \U_REGISTRO|contador\(1),
	datad => \U_REGISTRO|contador\(2),
	combout => \HEX3~6_combout\);

-- Location: LCCOMB_X19_Y22_N2
\HEX2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX2~14_combout\ = (!\U_FSM|estado_actual.ABRIR~q\ & (!\U_FSM|estado_actual.BLOQUEO~q\ & ((\U_HEX2_NUM|Mux1~0_combout\) # (!\HEX3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_HEX2_NUM|Mux1~0_combout\,
	datab => \U_FSM|estado_actual.ABRIR~q\,
	datac => \U_FSM|estado_actual.BLOQUEO~q\,
	datad => \HEX3~6_combout\,
	combout => \HEX2~14_combout\);

-- Location: LCCOMB_X19_Y22_N4
\HEX2~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX2~15_combout\ = (\U_FSM|estado_actual.ERROR_CLAVE~q\) # ((\U_ADMIN|estado.ESPERA~q\) # (\HEX2~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|estado_actual.ERROR_CLAVE~q\,
	datac => \U_ADMIN|estado.ESPERA~q\,
	datad => \HEX2~14_combout\,
	combout => \HEX2~15_combout\);

-- Location: LCCOMB_X26_Y21_N24
\U_HEX2_NUM|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HEX2_NUM|Mux0~0_combout\ = (\U_REGISTRO|d2\(1) & (!\U_REGISTRO|d2\(3) & ((!\U_REGISTRO|d2\(0)) # (!\U_REGISTRO|d2\(2))))) # (!\U_REGISTRO|d2\(1) & (\U_REGISTRO|d2\(3) $ ((\U_REGISTRO|d2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REGISTRO|d2\(3),
	datab => \U_REGISTRO|d2\(1),
	datac => \U_REGISTRO|d2\(2),
	datad => \U_REGISTRO|d2\(0),
	combout => \U_HEX2_NUM|Mux0~0_combout\);

-- Location: LCCOMB_X27_Y21_N12
\HEX2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX2~16_combout\ = (\U_FSM|estado_actual.BLOQUEO~q\) # ((\U_FSM|estado_actual.INGRESO~q\ & ((\Equal5~0_combout\) # (!\U_HEX2_NUM|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => \U_FSM|estado_actual.INGRESO~q\,
	datac => \U_FSM|estado_actual.BLOQUEO~q\,
	datad => \U_HEX2_NUM|Mux0~0_combout\,
	combout => \HEX2~16_combout\);

-- Location: LCCOMB_X27_Y21_N6
\HEX2~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX2~19_combout\ = (\HEX2~16_combout\ & (!\U_FSM|estado_actual.ERROR_CLAVE~q\ & (!\U_ADMIN|estado.ESPERA~q\ & !\U_FSM|estado_actual.ABRIR~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX2~16_combout\,
	datab => \U_FSM|estado_actual.ERROR_CLAVE~q\,
	datac => \U_ADMIN|estado.ESPERA~q\,
	datad => \U_FSM|estado_actual.ABRIR~q\,
	combout => \HEX2~19_combout\);

-- Location: LCCOMB_X22_Y20_N20
\U_HEX3_NUM|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HEX3_NUM|Mux6~0_combout\ = (\U_REGISTRO|d3\(1) & (\U_REGISTRO|d3\(3))) # (!\U_REGISTRO|d3\(1) & (\U_REGISTRO|d3\(2) $ (((!\U_REGISTRO|d3\(3) & \U_REGISTRO|d3\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REGISTRO|d3\(3),
	datab => \U_REGISTRO|d3\(2),
	datac => \U_REGISTRO|d3\(1),
	datad => \U_REGISTRO|d3\(0),
	combout => \U_HEX3_NUM|Mux6~0_combout\);

-- Location: LCCOMB_X22_Y20_N2
\HEX3~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX3~7_combout\ = (\HEX3~5_combout\ & (\HEX3~4_combout\ & ((\U_HEX3_NUM|Mux6~0_combout\) # (!\HEX3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX3~6_combout\,
	datab => \U_HEX3_NUM|Mux6~0_combout\,
	datac => \HEX3~5_combout\,
	datad => \HEX3~4_combout\,
	combout => \HEX3~7_combout\);

-- Location: LCCOMB_X22_Y20_N0
\U_HEX3_NUM|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HEX3_NUM|Mux5~0_combout\ = (\U_REGISTRO|d3\(3) & ((\U_REGISTRO|d3\(2)) # ((\U_REGISTRO|d3\(1))))) # (!\U_REGISTRO|d3\(3) & (\U_REGISTRO|d3\(2) & (\U_REGISTRO|d3\(1) $ (\U_REGISTRO|d3\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REGISTRO|d3\(3),
	datab => \U_REGISTRO|d3\(2),
	datac => \U_REGISTRO|d3\(1),
	datad => \U_REGISTRO|d3\(0),
	combout => \U_HEX3_NUM|Mux5~0_combout\);

-- Location: LCCOMB_X27_Y21_N18
\HEX3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX3~8_combout\ = (\U_FSM|estado_actual.ERROR_CLAVE~q\) # ((\U_FSM|estado_actual.INGRESO~q\ & ((\Equal5~0_combout\) # (\U_HEX3_NUM|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => \U_FSM|estado_actual.INGRESO~q\,
	datac => \U_FSM|estado_actual.ERROR_CLAVE~q\,
	datad => \U_HEX3_NUM|Mux5~0_combout\,
	combout => \HEX3~8_combout\);

-- Location: LCCOMB_X27_Y21_N0
\HEX3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX3~14_combout\ = (!\U_ADMIN|estado.ESPERA~q\ & (\HEX3~8_combout\ & !\U_FSM|estado_actual.BLOQUEO~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|estado.ESPERA~q\,
	datab => \HEX3~8_combout\,
	datac => \U_FSM|estado_actual.BLOQUEO~q\,
	combout => \HEX3~14_combout\);

-- Location: LCCOMB_X22_Y20_N30
\U_HEX3_NUM|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HEX3_NUM|Mux4~0_combout\ = (\U_REGISTRO|d3\(2) & (\U_REGISTRO|d3\(3))) # (!\U_REGISTRO|d3\(2) & (\U_REGISTRO|d3\(1) & ((\U_REGISTRO|d3\(3)) # (!\U_REGISTRO|d3\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REGISTRO|d3\(3),
	datab => \U_REGISTRO|d3\(2),
	datac => \U_REGISTRO|d3\(1),
	datad => \U_REGISTRO|d3\(0),
	combout => \U_HEX3_NUM|Mux4~0_combout\);

-- Location: LCCOMB_X27_Y21_N16
\HEX3~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX3~9_combout\ = (\U_FSM|estado_actual.ERROR_CLAVE~q\) # ((\U_FSM|estado_actual.INGRESO~q\ & ((\Equal5~0_combout\) # (\U_HEX3_NUM|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => \U_FSM|estado_actual.ERROR_CLAVE~q\,
	datac => \U_HEX3_NUM|Mux4~0_combout\,
	datad => \U_FSM|estado_actual.INGRESO~q\,
	combout => \HEX3~9_combout\);

-- Location: LCCOMB_X27_Y21_N14
\HEX3~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX3~15_combout\ = (!\U_ADMIN|estado.ESPERA~q\ & (\HEX3~9_combout\ & !\U_FSM|estado_actual.BLOQUEO~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADMIN|estado.ESPERA~q\,
	datab => \HEX3~9_combout\,
	datac => \U_FSM|estado_actual.BLOQUEO~q\,
	combout => \HEX3~15_combout\);

-- Location: LCCOMB_X22_Y20_N8
\U_HEX3_NUM|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HEX3_NUM|Mux3~0_combout\ = (\U_REGISTRO|d3\(1) & ((\U_REGISTRO|d3\(3)) # ((\U_REGISTRO|d3\(2) & \U_REGISTRO|d3\(0))))) # (!\U_REGISTRO|d3\(1) & (\U_REGISTRO|d3\(2) $ (((!\U_REGISTRO|d3\(3) & \U_REGISTRO|d3\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REGISTRO|d3\(3),
	datab => \U_REGISTRO|d3\(2),
	datac => \U_REGISTRO|d3\(1),
	datad => \U_REGISTRO|d3\(0),
	combout => \U_HEX3_NUM|Mux3~0_combout\);

-- Location: LCCOMB_X22_Y20_N18
\HEX3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX3~10_combout\ = ((\HEX3~4_combout\ & ((\U_HEX3_NUM|Mux3~0_combout\) # (!\HEX3~6_combout\)))) # (!\HEX3~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX3~5_combout\,
	datab => \HEX3~4_combout\,
	datac => \U_HEX3_NUM|Mux3~0_combout\,
	datad => \HEX3~6_combout\,
	combout => \HEX3~10_combout\);

-- Location: LCCOMB_X22_Y20_N4
\U_HEX3_NUM|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HEX3_NUM|Mux2~0_combout\ = (\U_REGISTRO|d3\(0)) # ((\U_REGISTRO|d3\(1) & (\U_REGISTRO|d3\(3))) # (!\U_REGISTRO|d3\(1) & ((\U_REGISTRO|d3\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REGISTRO|d3\(3),
	datab => \U_REGISTRO|d3\(2),
	datac => \U_REGISTRO|d3\(1),
	datad => \U_REGISTRO|d3\(0),
	combout => \U_HEX3_NUM|Mux2~0_combout\);

-- Location: LCCOMB_X24_Y18_N26
\HEX3~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX3~11_combout\ = (\HEX3~4_combout\ & (\HEX3~5_combout\ & ((\U_HEX3_NUM|Mux2~0_combout\) # (!\HEX3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX3~6_combout\,
	datab => \U_HEX3_NUM|Mux2~0_combout\,
	datac => \HEX3~4_combout\,
	datad => \HEX3~5_combout\,
	combout => \HEX3~11_combout\);

-- Location: LCCOMB_X22_Y20_N14
\U_HEX3_NUM|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HEX3_NUM|Mux1~0_combout\ = (\U_REGISTRO|d3\(2) & ((\U_REGISTRO|d3\(3)) # ((\U_REGISTRO|d3\(1) & \U_REGISTRO|d3\(0))))) # (!\U_REGISTRO|d3\(2) & ((\U_REGISTRO|d3\(1)) # ((!\U_REGISTRO|d3\(3) & \U_REGISTRO|d3\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REGISTRO|d3\(3),
	datab => \U_REGISTRO|d3\(2),
	datac => \U_REGISTRO|d3\(1),
	datad => \U_REGISTRO|d3\(0),
	combout => \U_HEX3_NUM|Mux1~0_combout\);

-- Location: LCCOMB_X22_Y20_N24
\HEX3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX3~12_combout\ = (\HEX3~5_combout\ & (\HEX3~4_combout\ & ((\U_HEX3_NUM|Mux1~0_combout\) # (!\HEX3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX3~5_combout\,
	datab => \HEX3~4_combout\,
	datac => \U_HEX3_NUM|Mux1~0_combout\,
	datad => \HEX3~6_combout\,
	combout => \HEX3~12_combout\);

-- Location: LCCOMB_X22_Y20_N22
\U_HEX3_NUM|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HEX3_NUM|Mux0~0_combout\ = (\U_REGISTRO|d3\(2) & (!\U_REGISTRO|d3\(3) & ((!\U_REGISTRO|d3\(0)) # (!\U_REGISTRO|d3\(1))))) # (!\U_REGISTRO|d3\(2) & (\U_REGISTRO|d3\(3) $ ((\U_REGISTRO|d3\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REGISTRO|d3\(3),
	datab => \U_REGISTRO|d3\(2),
	datac => \U_REGISTRO|d3\(1),
	datad => \U_REGISTRO|d3\(0),
	combout => \U_HEX3_NUM|Mux0~0_combout\);

-- Location: LCCOMB_X26_Y20_N20
\HEX3~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX3~13_combout\ = (\HEX3~5_combout\ & (!\U_FSM|estado_actual.ERROR_CLAVE~q\ & ((!\U_HEX3_NUM|Mux0~0_combout\) # (!\HEX3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX3~5_combout\,
	datab => \U_FSM|estado_actual.ERROR_CLAVE~q\,
	datac => \HEX3~6_combout\,
	datad => \U_HEX3_NUM|Mux0~0_combout\,
	combout => \HEX3~13_combout\);

-- Location: LCCOMB_X15_Y18_N12
\U_SERVO|counter[0]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SERVO|counter[0]~20_combout\ = \U_SERVO|counter\(0) $ (VCC)
-- \U_SERVO|counter[0]~21\ = CARRY(\U_SERVO|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SERVO|counter\(0),
	datad => VCC,
	combout => \U_SERVO|counter[0]~20_combout\,
	cout => \U_SERVO|counter[0]~21\);

-- Location: LCCOMB_X15_Y17_N26
\U_SERVO|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SERVO|LessThan0~0_combout\ = (!\U_SERVO|counter\(13) & (!\U_SERVO|counter\(12) & !\U_SERVO|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SERVO|counter\(13),
	datac => \U_SERVO|counter\(12),
	datad => \U_SERVO|counter\(11),
	combout => \U_SERVO|LessThan0~0_combout\);

-- Location: LCCOMB_X15_Y18_N10
\U_SERVO|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SERVO|LessThan0~3_combout\ = (((!\U_SERVO|counter\(4)) # (!\U_SERVO|counter\(5))) # (!\U_SERVO|counter\(1))) # (!\U_SERVO|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SERVO|counter\(0),
	datab => \U_SERVO|counter\(1),
	datac => \U_SERVO|counter\(5),
	datad => \U_SERVO|counter\(4),
	combout => \U_SERVO|LessThan0~3_combout\);

-- Location: LCCOMB_X15_Y18_N4
\U_SERVO|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SERVO|LessThan0~2_combout\ = (!\U_SERVO|counter\(6) & (!\U_SERVO|counter\(7) & !\U_SERVO|counter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_SERVO|counter\(6),
	datac => \U_SERVO|counter\(7),
	datad => \U_SERVO|counter\(8),
	combout => \U_SERVO|LessThan0~2_combout\);

-- Location: LCCOMB_X15_Y18_N0
\U_SERVO|LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SERVO|LessThan0~4_combout\ = (\U_SERVO|LessThan0~2_combout\ & ((\U_SERVO|LessThan0~3_combout\) # ((!\U_SERVO|counter\(2)) # (!\U_SERVO|counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SERVO|LessThan0~3_combout\,
	datab => \U_SERVO|counter\(3),
	datac => \U_SERVO|LessThan0~2_combout\,
	datad => \U_SERVO|counter\(2),
	combout => \U_SERVO|LessThan0~4_combout\);

-- Location: LCCOMB_X15_Y18_N6
\U_SERVO|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SERVO|LessThan0~5_combout\ = (!\U_SERVO|counter\(10) & (\U_SERVO|LessThan0~0_combout\ & ((\U_SERVO|LessThan0~4_combout\) # (!\U_SERVO|counter\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SERVO|counter\(9),
	datab => \U_SERVO|counter\(10),
	datac => \U_SERVO|LessThan0~0_combout\,
	datad => \U_SERVO|LessThan0~4_combout\,
	combout => \U_SERVO|LessThan0~5_combout\);

-- Location: LCCOMB_X15_Y17_N10
\U_SERVO|counter[15]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SERVO|counter[15]~50_combout\ = (\U_SERVO|counter\(15) & (!\U_SERVO|counter[14]~49\)) # (!\U_SERVO|counter\(15) & ((\U_SERVO|counter[14]~49\) # (GND)))
-- \U_SERVO|counter[15]~51\ = CARRY((!\U_SERVO|counter[14]~49\) # (!\U_SERVO|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_SERVO|counter\(15),
	datad => VCC,
	cin => \U_SERVO|counter[14]~49\,
	combout => \U_SERVO|counter[15]~50_combout\,
	cout => \U_SERVO|counter[15]~51\);

-- Location: LCCOMB_X15_Y17_N12
\U_SERVO|counter[16]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SERVO|counter[16]~52_combout\ = (\U_SERVO|counter\(16) & (\U_SERVO|counter[15]~51\ $ (GND))) # (!\U_SERVO|counter\(16) & (!\U_SERVO|counter[15]~51\ & VCC))
-- \U_SERVO|counter[16]~53\ = CARRY((\U_SERVO|counter\(16) & !\U_SERVO|counter[15]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_SERVO|counter\(16),
	datad => VCC,
	cin => \U_SERVO|counter[15]~51\,
	combout => \U_SERVO|counter[16]~52_combout\,
	cout => \U_SERVO|counter[16]~53\);

-- Location: FF_X15_Y17_N13
\U_SERVO|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_SERVO|counter[16]~52_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \U_SERVO|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SERVO|counter\(16));

-- Location: LCCOMB_X15_Y17_N14
\U_SERVO|counter[17]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SERVO|counter[17]~54_combout\ = (\U_SERVO|counter\(17) & (!\U_SERVO|counter[16]~53\)) # (!\U_SERVO|counter\(17) & ((\U_SERVO|counter[16]~53\) # (GND)))
-- \U_SERVO|counter[17]~55\ = CARRY((!\U_SERVO|counter[16]~53\) # (!\U_SERVO|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_SERVO|counter\(17),
	datad => VCC,
	cin => \U_SERVO|counter[16]~53\,
	combout => \U_SERVO|counter[17]~54_combout\,
	cout => \U_SERVO|counter[17]~55\);

-- Location: FF_X15_Y17_N15
\U_SERVO|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_SERVO|counter[17]~54_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \U_SERVO|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SERVO|counter\(17));

-- Location: LCCOMB_X15_Y17_N16
\U_SERVO|counter[18]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SERVO|counter[18]~56_combout\ = (\U_SERVO|counter\(18) & (\U_SERVO|counter[17]~55\ $ (GND))) # (!\U_SERVO|counter\(18) & (!\U_SERVO|counter[17]~55\ & VCC))
-- \U_SERVO|counter[18]~57\ = CARRY((\U_SERVO|counter\(18) & !\U_SERVO|counter[17]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_SERVO|counter\(18),
	datad => VCC,
	cin => \U_SERVO|counter[17]~55\,
	combout => \U_SERVO|counter[18]~56_combout\,
	cout => \U_SERVO|counter[18]~57\);

-- Location: FF_X15_Y17_N17
\U_SERVO|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_SERVO|counter[18]~56_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \U_SERVO|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SERVO|counter\(18));

-- Location: LCCOMB_X15_Y17_N18
\U_SERVO|counter[19]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SERVO|counter[19]~58_combout\ = \U_SERVO|counter[18]~57\ $ (\U_SERVO|counter\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U_SERVO|counter\(19),
	cin => \U_SERVO|counter[18]~57\,
	combout => \U_SERVO|counter[19]~58_combout\);

-- Location: FF_X15_Y17_N19
\U_SERVO|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_SERVO|counter[19]~58_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \U_SERVO|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SERVO|counter\(19));

-- Location: LCCOMB_X15_Y17_N28
\U_SERVO|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SERVO|LessThan0~1_combout\ = (((!\U_SERVO|counter\(18)) # (!\U_SERVO|counter\(17))) # (!\U_SERVO|counter\(19))) # (!\U_SERVO|counter\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SERVO|counter\(16),
	datab => \U_SERVO|counter\(19),
	datac => \U_SERVO|counter\(17),
	datad => \U_SERVO|counter\(18),
	combout => \U_SERVO|LessThan0~1_combout\);

-- Location: LCCOMB_X15_Y17_N22
\U_SERVO|LessThan0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SERVO|LessThan0~6_combout\ = (!\U_SERVO|LessThan0~1_combout\ & ((\U_SERVO|counter\(15)) # ((\U_SERVO|counter\(14) & !\U_SERVO|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SERVO|counter\(15),
	datab => \U_SERVO|counter\(14),
	datac => \U_SERVO|LessThan0~5_combout\,
	datad => \U_SERVO|LessThan0~1_combout\,
	combout => \U_SERVO|LessThan0~6_combout\);

-- Location: FF_X15_Y18_N13
\U_SERVO|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_SERVO|counter[0]~20_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \U_SERVO|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SERVO|counter\(0));

-- Location: LCCOMB_X15_Y18_N14
\U_SERVO|counter[1]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SERVO|counter[1]~22_combout\ = (\U_SERVO|counter\(1) & (!\U_SERVO|counter[0]~21\)) # (!\U_SERVO|counter\(1) & ((\U_SERVO|counter[0]~21\) # (GND)))
-- \U_SERVO|counter[1]~23\ = CARRY((!\U_SERVO|counter[0]~21\) # (!\U_SERVO|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_SERVO|counter\(1),
	datad => VCC,
	cin => \U_SERVO|counter[0]~21\,
	combout => \U_SERVO|counter[1]~22_combout\,
	cout => \U_SERVO|counter[1]~23\);

-- Location: FF_X15_Y18_N15
\U_SERVO|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_SERVO|counter[1]~22_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \U_SERVO|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SERVO|counter\(1));

-- Location: LCCOMB_X15_Y18_N16
\U_SERVO|counter[2]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SERVO|counter[2]~24_combout\ = (\U_SERVO|counter\(2) & (\U_SERVO|counter[1]~23\ $ (GND))) # (!\U_SERVO|counter\(2) & (!\U_SERVO|counter[1]~23\ & VCC))
-- \U_SERVO|counter[2]~25\ = CARRY((\U_SERVO|counter\(2) & !\U_SERVO|counter[1]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_SERVO|counter\(2),
	datad => VCC,
	cin => \U_SERVO|counter[1]~23\,
	combout => \U_SERVO|counter[2]~24_combout\,
	cout => \U_SERVO|counter[2]~25\);

-- Location: FF_X15_Y18_N17
\U_SERVO|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_SERVO|counter[2]~24_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \U_SERVO|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SERVO|counter\(2));

-- Location: LCCOMB_X15_Y18_N18
\U_SERVO|counter[3]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SERVO|counter[3]~26_combout\ = (\U_SERVO|counter\(3) & (!\U_SERVO|counter[2]~25\)) # (!\U_SERVO|counter\(3) & ((\U_SERVO|counter[2]~25\) # (GND)))
-- \U_SERVO|counter[3]~27\ = CARRY((!\U_SERVO|counter[2]~25\) # (!\U_SERVO|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_SERVO|counter\(3),
	datad => VCC,
	cin => \U_SERVO|counter[2]~25\,
	combout => \U_SERVO|counter[3]~26_combout\,
	cout => \U_SERVO|counter[3]~27\);

-- Location: FF_X15_Y18_N19
\U_SERVO|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_SERVO|counter[3]~26_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \U_SERVO|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SERVO|counter\(3));

-- Location: LCCOMB_X15_Y18_N20
\U_SERVO|counter[4]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SERVO|counter[4]~28_combout\ = (\U_SERVO|counter\(4) & (\U_SERVO|counter[3]~27\ $ (GND))) # (!\U_SERVO|counter\(4) & (!\U_SERVO|counter[3]~27\ & VCC))
-- \U_SERVO|counter[4]~29\ = CARRY((\U_SERVO|counter\(4) & !\U_SERVO|counter[3]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_SERVO|counter\(4),
	datad => VCC,
	cin => \U_SERVO|counter[3]~27\,
	combout => \U_SERVO|counter[4]~28_combout\,
	cout => \U_SERVO|counter[4]~29\);

-- Location: FF_X15_Y18_N21
\U_SERVO|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_SERVO|counter[4]~28_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \U_SERVO|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SERVO|counter\(4));

-- Location: LCCOMB_X15_Y18_N22
\U_SERVO|counter[5]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SERVO|counter[5]~30_combout\ = (\U_SERVO|counter\(5) & (!\U_SERVO|counter[4]~29\)) # (!\U_SERVO|counter\(5) & ((\U_SERVO|counter[4]~29\) # (GND)))
-- \U_SERVO|counter[5]~31\ = CARRY((!\U_SERVO|counter[4]~29\) # (!\U_SERVO|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_SERVO|counter\(5),
	datad => VCC,
	cin => \U_SERVO|counter[4]~29\,
	combout => \U_SERVO|counter[5]~30_combout\,
	cout => \U_SERVO|counter[5]~31\);

-- Location: FF_X15_Y18_N23
\U_SERVO|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_SERVO|counter[5]~30_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \U_SERVO|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SERVO|counter\(5));

-- Location: LCCOMB_X15_Y18_N24
\U_SERVO|counter[6]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SERVO|counter[6]~32_combout\ = (\U_SERVO|counter\(6) & (\U_SERVO|counter[5]~31\ $ (GND))) # (!\U_SERVO|counter\(6) & (!\U_SERVO|counter[5]~31\ & VCC))
-- \U_SERVO|counter[6]~33\ = CARRY((\U_SERVO|counter\(6) & !\U_SERVO|counter[5]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_SERVO|counter\(6),
	datad => VCC,
	cin => \U_SERVO|counter[5]~31\,
	combout => \U_SERVO|counter[6]~32_combout\,
	cout => \U_SERVO|counter[6]~33\);

-- Location: FF_X15_Y18_N25
\U_SERVO|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_SERVO|counter[6]~32_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \U_SERVO|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SERVO|counter\(6));

-- Location: LCCOMB_X15_Y18_N26
\U_SERVO|counter[7]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SERVO|counter[7]~34_combout\ = (\U_SERVO|counter\(7) & (!\U_SERVO|counter[6]~33\)) # (!\U_SERVO|counter\(7) & ((\U_SERVO|counter[6]~33\) # (GND)))
-- \U_SERVO|counter[7]~35\ = CARRY((!\U_SERVO|counter[6]~33\) # (!\U_SERVO|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_SERVO|counter\(7),
	datad => VCC,
	cin => \U_SERVO|counter[6]~33\,
	combout => \U_SERVO|counter[7]~34_combout\,
	cout => \U_SERVO|counter[7]~35\);

-- Location: FF_X15_Y18_N27
\U_SERVO|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_SERVO|counter[7]~34_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \U_SERVO|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SERVO|counter\(7));

-- Location: LCCOMB_X15_Y18_N28
\U_SERVO|counter[8]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SERVO|counter[8]~36_combout\ = (\U_SERVO|counter\(8) & (\U_SERVO|counter[7]~35\ $ (GND))) # (!\U_SERVO|counter\(8) & (!\U_SERVO|counter[7]~35\ & VCC))
-- \U_SERVO|counter[8]~37\ = CARRY((\U_SERVO|counter\(8) & !\U_SERVO|counter[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_SERVO|counter\(8),
	datad => VCC,
	cin => \U_SERVO|counter[7]~35\,
	combout => \U_SERVO|counter[8]~36_combout\,
	cout => \U_SERVO|counter[8]~37\);

-- Location: FF_X15_Y18_N29
\U_SERVO|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_SERVO|counter[8]~36_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \U_SERVO|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SERVO|counter\(8));

-- Location: LCCOMB_X15_Y18_N30
\U_SERVO|counter[9]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SERVO|counter[9]~38_combout\ = (\U_SERVO|counter\(9) & (!\U_SERVO|counter[8]~37\)) # (!\U_SERVO|counter\(9) & ((\U_SERVO|counter[8]~37\) # (GND)))
-- \U_SERVO|counter[9]~39\ = CARRY((!\U_SERVO|counter[8]~37\) # (!\U_SERVO|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_SERVO|counter\(9),
	datad => VCC,
	cin => \U_SERVO|counter[8]~37\,
	combout => \U_SERVO|counter[9]~38_combout\,
	cout => \U_SERVO|counter[9]~39\);

-- Location: FF_X15_Y18_N31
\U_SERVO|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_SERVO|counter[9]~38_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \U_SERVO|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SERVO|counter\(9));

-- Location: LCCOMB_X15_Y17_N0
\U_SERVO|counter[10]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SERVO|counter[10]~40_combout\ = (\U_SERVO|counter\(10) & (\U_SERVO|counter[9]~39\ $ (GND))) # (!\U_SERVO|counter\(10) & (!\U_SERVO|counter[9]~39\ & VCC))
-- \U_SERVO|counter[10]~41\ = CARRY((\U_SERVO|counter\(10) & !\U_SERVO|counter[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_SERVO|counter\(10),
	datad => VCC,
	cin => \U_SERVO|counter[9]~39\,
	combout => \U_SERVO|counter[10]~40_combout\,
	cout => \U_SERVO|counter[10]~41\);

-- Location: FF_X15_Y17_N1
\U_SERVO|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_SERVO|counter[10]~40_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \U_SERVO|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SERVO|counter\(10));

-- Location: LCCOMB_X15_Y17_N2
\U_SERVO|counter[11]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SERVO|counter[11]~42_combout\ = (\U_SERVO|counter\(11) & (!\U_SERVO|counter[10]~41\)) # (!\U_SERVO|counter\(11) & ((\U_SERVO|counter[10]~41\) # (GND)))
-- \U_SERVO|counter[11]~43\ = CARRY((!\U_SERVO|counter[10]~41\) # (!\U_SERVO|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_SERVO|counter\(11),
	datad => VCC,
	cin => \U_SERVO|counter[10]~41\,
	combout => \U_SERVO|counter[11]~42_combout\,
	cout => \U_SERVO|counter[11]~43\);

-- Location: FF_X15_Y17_N3
\U_SERVO|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_SERVO|counter[11]~42_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \U_SERVO|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SERVO|counter\(11));

-- Location: LCCOMB_X15_Y17_N4
\U_SERVO|counter[12]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SERVO|counter[12]~44_combout\ = (\U_SERVO|counter\(12) & (\U_SERVO|counter[11]~43\ $ (GND))) # (!\U_SERVO|counter\(12) & (!\U_SERVO|counter[11]~43\ & VCC))
-- \U_SERVO|counter[12]~45\ = CARRY((\U_SERVO|counter\(12) & !\U_SERVO|counter[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_SERVO|counter\(12),
	datad => VCC,
	cin => \U_SERVO|counter[11]~43\,
	combout => \U_SERVO|counter[12]~44_combout\,
	cout => \U_SERVO|counter[12]~45\);

-- Location: FF_X15_Y17_N5
\U_SERVO|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_SERVO|counter[12]~44_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \U_SERVO|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SERVO|counter\(12));

-- Location: LCCOMB_X15_Y17_N6
\U_SERVO|counter[13]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SERVO|counter[13]~46_combout\ = (\U_SERVO|counter\(13) & (!\U_SERVO|counter[12]~45\)) # (!\U_SERVO|counter\(13) & ((\U_SERVO|counter[12]~45\) # (GND)))
-- \U_SERVO|counter[13]~47\ = CARRY((!\U_SERVO|counter[12]~45\) # (!\U_SERVO|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_SERVO|counter\(13),
	datad => VCC,
	cin => \U_SERVO|counter[12]~45\,
	combout => \U_SERVO|counter[13]~46_combout\,
	cout => \U_SERVO|counter[13]~47\);

-- Location: FF_X15_Y17_N7
\U_SERVO|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_SERVO|counter[13]~46_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \U_SERVO|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SERVO|counter\(13));

-- Location: LCCOMB_X15_Y17_N8
\U_SERVO|counter[14]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SERVO|counter[14]~48_combout\ = (\U_SERVO|counter\(14) & (\U_SERVO|counter[13]~47\ $ (GND))) # (!\U_SERVO|counter\(14) & (!\U_SERVO|counter[13]~47\ & VCC))
-- \U_SERVO|counter[14]~49\ = CARRY((\U_SERVO|counter\(14) & !\U_SERVO|counter[13]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_SERVO|counter\(14),
	datad => VCC,
	cin => \U_SERVO|counter[13]~47\,
	combout => \U_SERVO|counter[14]~48_combout\,
	cout => \U_SERVO|counter[14]~49\);

-- Location: FF_X15_Y17_N9
\U_SERVO|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_SERVO|counter[14]~48_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \U_SERVO|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SERVO|counter\(14));

-- Location: FF_X15_Y17_N11
\U_SERVO|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_SERVO|counter[15]~50_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \U_SERVO|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SERVO|counter\(15));

-- Location: LCCOMB_X16_Y17_N22
\U_FSM|abrir_puerta~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_FSM|abrir_puerta~0_combout\ = (\U_FSM|estado_actual.ABRIR~q\ & \U_FSM|volver_idle~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_FSM|estado_actual.ABRIR~q\,
	datad => \U_FSM|volver_idle~1_combout\,
	combout => \U_FSM|abrir_puerta~0_combout\);

-- Location: LCCOMB_X16_Y17_N28
\U_SERVO|pulse_width[16]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SERVO|pulse_width[16]~feeder_combout\ = \U_FSM|abrir_puerta~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_FSM|abrir_puerta~0_combout\,
	combout => \U_SERVO|pulse_width[16]~feeder_combout\);

-- Location: FF_X16_Y17_N29
\U_SERVO|pulse_width[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_SERVO|pulse_width[16]~feeder_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SERVO|pulse_width\(16));

-- Location: LCCOMB_X16_Y17_N2
\U_SERVO|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SERVO|LessThan1~1_combout\ = (\U_SERVO|counter\(15) & (!\U_SERVO|counter\(16) & ((\U_SERVO|pulse_width\(16)) # (!\U_SERVO|counter\(14))))) # (!\U_SERVO|counter\(15) & ((\U_SERVO|pulse_width\(16)) # ((!\U_SERVO|counter\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SERVO|counter\(15),
	datab => \U_SERVO|pulse_width\(16),
	datac => \U_SERVO|counter\(16),
	datad => \U_SERVO|counter\(14),
	combout => \U_SERVO|LessThan1~1_combout\);

-- Location: LCCOMB_X15_Y18_N8
\U_SERVO|LessThan1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SERVO|LessThan1~2_combout\ = (\U_SERVO|counter\(7) & ((\U_SERVO|counter\(6)) # ((\U_SERVO|counter\(5))))) # (!\U_SERVO|counter\(7) & (\U_SERVO|counter\(6) & ((\U_SERVO|counter\(5)) # (\U_SERVO|counter\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SERVO|counter\(7),
	datab => \U_SERVO|counter\(6),
	datac => \U_SERVO|counter\(5),
	datad => \U_SERVO|counter\(4),
	combout => \U_SERVO|LessThan1~2_combout\);

-- Location: LCCOMB_X15_Y18_N2
\U_SERVO|LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SERVO|LessThan1~3_combout\ = (\U_SERVO|counter\(7) & ((\U_SERVO|counter\(8)) # ((\U_SERVO|counter\(10) & \U_SERVO|LessThan1~2_combout\)))) # (!\U_SERVO|counter\(7) & (\U_SERVO|counter\(8) & ((\U_SERVO|counter\(10)) # (\U_SERVO|LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SERVO|counter\(7),
	datab => \U_SERVO|counter\(10),
	datac => \U_SERVO|LessThan1~2_combout\,
	datad => \U_SERVO|counter\(8),
	combout => \U_SERVO|LessThan1~3_combout\);

-- Location: LCCOMB_X15_Y17_N30
\U_SERVO|LessThan1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SERVO|LessThan1~4_combout\ = (\U_SERVO|LessThan1~3_combout\ & ((\U_SERVO|counter\(9)) # ((!\U_SERVO|counter\(10) & \U_SERVO|counter\(16))))) # (!\U_SERVO|LessThan1~3_combout\ & (!\U_SERVO|counter\(10) & ((\U_SERVO|counter\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SERVO|LessThan1~3_combout\,
	datab => \U_SERVO|counter\(10),
	datac => \U_SERVO|counter\(9),
	datad => \U_SERVO|counter\(16),
	combout => \U_SERVO|LessThan1~4_combout\);

-- Location: LCCOMB_X15_Y17_N24
\U_SERVO|LessThan1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SERVO|LessThan1~5_combout\ = (\U_SERVO|LessThan1~4_combout\ & (!\U_SERVO|counter\(10) & (!\U_SERVO|counter\(14) & \U_SERVO|pulse_width\(16)))) # (!\U_SERVO|LessThan1~4_combout\ & (((!\U_SERVO|counter\(14) & \U_SERVO|pulse_width\(16))) # 
-- (!\U_SERVO|counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SERVO|LessThan1~4_combout\,
	datab => \U_SERVO|counter\(10),
	datac => \U_SERVO|counter\(14),
	datad => \U_SERVO|pulse_width\(16),
	combout => \U_SERVO|LessThan1~5_combout\);

-- Location: LCCOMB_X15_Y16_N0
\U_SERVO|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SERVO|LessThan1~0_combout\ = (!\U_SERVO|counter\(18) & (!\U_SERVO|counter\(19) & !\U_SERVO|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_SERVO|counter\(18),
	datac => \U_SERVO|counter\(19),
	datad => \U_SERVO|counter\(17),
	combout => \U_SERVO|LessThan1~0_combout\);

-- Location: LCCOMB_X15_Y17_N20
\U_SERVO|LessThan1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SERVO|LessThan1~6_combout\ = (\U_SERVO|LessThan1~0_combout\ & ((\U_SERVO|LessThan1~1_combout\) # ((\U_SERVO|LessThan1~5_combout\ & \U_SERVO|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SERVO|LessThan1~1_combout\,
	datab => \U_SERVO|LessThan1~5_combout\,
	datac => \U_SERVO|LessThan0~0_combout\,
	datad => \U_SERVO|LessThan1~0_combout\,
	combout => \U_SERVO|LessThan1~6_combout\);

-- Location: FF_X15_Y17_N21
\U_SERVO|servo_pwm\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_SERVO|LessThan1~6_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SERVO|servo_pwm~q\);

-- Location: LCCOMB_X21_Y19_N0
\U_BUZZER|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BUZZER|Add0~0_combout\ = \U_BUZZER|contador\(0) $ (VCC)
-- \U_BUZZER|Add0~1\ = CARRY(\U_BUZZER|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BUZZER|contador\(0),
	datad => VCC,
	combout => \U_BUZZER|Add0~0_combout\,
	cout => \U_BUZZER|Add0~1\);

-- Location: LCCOMB_X19_Y19_N16
\U_BUZZER|contador~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BUZZER|contador~6_combout\ = (\U_BUZZER|Add0~0_combout\ & !\U_BUZZER|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_BUZZER|Add0~0_combout\,
	datad => \U_BUZZER|Equal0~4_combout\,
	combout => \U_BUZZER|contador~6_combout\);

-- Location: LCCOMB_X20_Y19_N20
\U_FSM|activar_alarma~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_FSM|activar_alarma~0_combout\ = ((!\U_ADMIN|estado.ESPERA~q\ & \modo_admin_prev_s~q\)) # (!\U_FSM|estado_actual.BLOQUEO~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_FSM|estado_actual.BLOQUEO~q\,
	datac => \U_ADMIN|estado.ESPERA~q\,
	datad => \modo_admin_prev_s~q\,
	combout => \U_FSM|activar_alarma~0_combout\);

-- Location: FF_X20_Y19_N29
\U_BUZZER|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U_BUZZER|contador~6_combout\,
	clrn => \U_FSM|ALT_INV_activar_alarma~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_BUZZER|contador\(0));

-- Location: LCCOMB_X21_Y19_N2
\U_BUZZER|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BUZZER|Add0~2_combout\ = (\U_BUZZER|contador\(1) & (!\U_BUZZER|Add0~1\)) # (!\U_BUZZER|contador\(1) & ((\U_BUZZER|Add0~1\) # (GND)))
-- \U_BUZZER|Add0~3\ = CARRY((!\U_BUZZER|Add0~1\) # (!\U_BUZZER|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_BUZZER|contador\(1),
	datad => VCC,
	cin => \U_BUZZER|Add0~1\,
	combout => \U_BUZZER|Add0~2_combout\,
	cout => \U_BUZZER|Add0~3\);

-- Location: FF_X21_Y19_N3
\U_BUZZER|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_BUZZER|Add0~2_combout\,
	clrn => \U_FSM|ALT_INV_activar_alarma~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_BUZZER|contador\(1));

-- Location: LCCOMB_X21_Y19_N4
\U_BUZZER|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BUZZER|Add0~4_combout\ = (\U_BUZZER|contador\(2) & (\U_BUZZER|Add0~3\ $ (GND))) # (!\U_BUZZER|contador\(2) & (!\U_BUZZER|Add0~3\ & VCC))
-- \U_BUZZER|Add0~5\ = CARRY((\U_BUZZER|contador\(2) & !\U_BUZZER|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_BUZZER|contador\(2),
	datad => VCC,
	cin => \U_BUZZER|Add0~3\,
	combout => \U_BUZZER|Add0~4_combout\,
	cout => \U_BUZZER|Add0~5\);

-- Location: LCCOMB_X19_Y19_N4
\U_BUZZER|contador~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BUZZER|contador~5_combout\ = (\U_BUZZER|Add0~4_combout\ & !\U_BUZZER|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_BUZZER|Add0~4_combout\,
	datad => \U_BUZZER|Equal0~4_combout\,
	combout => \U_BUZZER|contador~5_combout\);

-- Location: FF_X19_Y19_N5
\U_BUZZER|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_BUZZER|contador~5_combout\,
	clrn => \U_FSM|ALT_INV_activar_alarma~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_BUZZER|contador\(2));

-- Location: LCCOMB_X21_Y19_N6
\U_BUZZER|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BUZZER|Add0~6_combout\ = (\U_BUZZER|contador\(3) & (!\U_BUZZER|Add0~5\)) # (!\U_BUZZER|contador\(3) & ((\U_BUZZER|Add0~5\) # (GND)))
-- \U_BUZZER|Add0~7\ = CARRY((!\U_BUZZER|Add0~5\) # (!\U_BUZZER|contador\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BUZZER|contador\(3),
	datad => VCC,
	cin => \U_BUZZER|Add0~5\,
	combout => \U_BUZZER|Add0~6_combout\,
	cout => \U_BUZZER|Add0~7\);

-- Location: FF_X21_Y19_N7
\U_BUZZER|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_BUZZER|Add0~6_combout\,
	clrn => \U_FSM|ALT_INV_activar_alarma~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_BUZZER|contador\(3));

-- Location: LCCOMB_X19_Y19_N10
\U_BUZZER|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BUZZER|Equal0~3_combout\ = (!\U_BUZZER|contador\(1) & (!\U_BUZZER|contador\(3) & (\U_BUZZER|contador\(2) & !\U_BUZZER|contador\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BUZZER|contador\(1),
	datab => \U_BUZZER|contador\(3),
	datac => \U_BUZZER|contador\(2),
	datad => \U_BUZZER|contador\(0),
	combout => \U_BUZZER|Equal0~3_combout\);

-- Location: LCCOMB_X21_Y19_N8
\U_BUZZER|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BUZZER|Add0~8_combout\ = (\U_BUZZER|contador\(4) & (\U_BUZZER|Add0~7\ $ (GND))) # (!\U_BUZZER|contador\(4) & (!\U_BUZZER|Add0~7\ & VCC))
-- \U_BUZZER|Add0~9\ = CARRY((\U_BUZZER|contador\(4) & !\U_BUZZER|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BUZZER|contador\(4),
	datad => VCC,
	cin => \U_BUZZER|Add0~7\,
	combout => \U_BUZZER|Add0~8_combout\,
	cout => \U_BUZZER|Add0~9\);

-- Location: LCCOMB_X20_Y19_N8
\U_BUZZER|contador~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BUZZER|contador~4_combout\ = (\U_BUZZER|Add0~8_combout\ & !\U_BUZZER|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_BUZZER|Add0~8_combout\,
	datad => \U_BUZZER|Equal0~4_combout\,
	combout => \U_BUZZER|contador~4_combout\);

-- Location: FF_X20_Y19_N9
\U_BUZZER|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_BUZZER|contador~4_combout\,
	clrn => \U_FSM|ALT_INV_activar_alarma~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_BUZZER|contador\(4));

-- Location: LCCOMB_X21_Y19_N10
\U_BUZZER|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BUZZER|Add0~10_combout\ = (\U_BUZZER|contador\(5) & (!\U_BUZZER|Add0~9\)) # (!\U_BUZZER|contador\(5) & ((\U_BUZZER|Add0~9\) # (GND)))
-- \U_BUZZER|Add0~11\ = CARRY((!\U_BUZZER|Add0~9\) # (!\U_BUZZER|contador\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_BUZZER|contador\(5),
	datad => VCC,
	cin => \U_BUZZER|Add0~9\,
	combout => \U_BUZZER|Add0~10_combout\,
	cout => \U_BUZZER|Add0~11\);

-- Location: LCCOMB_X20_Y19_N22
\U_BUZZER|contador~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BUZZER|contador~3_combout\ = (\U_BUZZER|Add0~10_combout\ & !\U_BUZZER|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_BUZZER|Add0~10_combout\,
	datad => \U_BUZZER|Equal0~4_combout\,
	combout => \U_BUZZER|contador~3_combout\);

-- Location: FF_X20_Y19_N23
\U_BUZZER|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_BUZZER|contador~3_combout\,
	clrn => \U_FSM|ALT_INV_activar_alarma~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_BUZZER|contador\(5));

-- Location: LCCOMB_X21_Y19_N12
\U_BUZZER|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BUZZER|Add0~12_combout\ = (\U_BUZZER|contador\(6) & (\U_BUZZER|Add0~11\ $ (GND))) # (!\U_BUZZER|contador\(6) & (!\U_BUZZER|Add0~11\ & VCC))
-- \U_BUZZER|Add0~13\ = CARRY((\U_BUZZER|contador\(6) & !\U_BUZZER|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BUZZER|contador\(6),
	datad => VCC,
	cin => \U_BUZZER|Add0~11\,
	combout => \U_BUZZER|Add0~12_combout\,
	cout => \U_BUZZER|Add0~13\);

-- Location: FF_X21_Y19_N13
\U_BUZZER|contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_BUZZER|Add0~12_combout\,
	clrn => \U_FSM|ALT_INV_activar_alarma~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_BUZZER|contador\(6));

-- Location: LCCOMB_X21_Y19_N14
\U_BUZZER|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BUZZER|Add0~14_combout\ = (\U_BUZZER|contador\(7) & (!\U_BUZZER|Add0~13\)) # (!\U_BUZZER|contador\(7) & ((\U_BUZZER|Add0~13\) # (GND)))
-- \U_BUZZER|Add0~15\ = CARRY((!\U_BUZZER|Add0~13\) # (!\U_BUZZER|contador\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_BUZZER|contador\(7),
	datad => VCC,
	cin => \U_BUZZER|Add0~13\,
	combout => \U_BUZZER|Add0~14_combout\,
	cout => \U_BUZZER|Add0~15\);

-- Location: FF_X21_Y19_N15
\U_BUZZER|contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_BUZZER|Add0~14_combout\,
	clrn => \U_FSM|ALT_INV_activar_alarma~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_BUZZER|contador\(7));

-- Location: LCCOMB_X19_Y19_N2
\U_BUZZER|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BUZZER|Equal0~2_combout\ = (!\U_BUZZER|contador\(6) & (\U_BUZZER|contador\(5) & (\U_BUZZER|contador\(4) & !\U_BUZZER|contador\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BUZZER|contador\(6),
	datab => \U_BUZZER|contador\(5),
	datac => \U_BUZZER|contador\(4),
	datad => \U_BUZZER|contador\(7),
	combout => \U_BUZZER|Equal0~2_combout\);

-- Location: LCCOMB_X21_Y19_N16
\U_BUZZER|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BUZZER|Add0~16_combout\ = (\U_BUZZER|contador\(8) & (\U_BUZZER|Add0~15\ $ (GND))) # (!\U_BUZZER|contador\(8) & (!\U_BUZZER|Add0~15\ & VCC))
-- \U_BUZZER|Add0~17\ = CARRY((\U_BUZZER|contador\(8) & !\U_BUZZER|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_BUZZER|contador\(8),
	datad => VCC,
	cin => \U_BUZZER|Add0~15\,
	combout => \U_BUZZER|Add0~16_combout\,
	cout => \U_BUZZER|Add0~17\);

-- Location: FF_X21_Y19_N17
\U_BUZZER|contador[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_BUZZER|Add0~16_combout\,
	clrn => \U_FSM|ALT_INV_activar_alarma~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_BUZZER|contador\(8));

-- Location: LCCOMB_X21_Y19_N18
\U_BUZZER|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BUZZER|Add0~18_combout\ = (\U_BUZZER|contador\(9) & (!\U_BUZZER|Add0~17\)) # (!\U_BUZZER|contador\(9) & ((\U_BUZZER|Add0~17\) # (GND)))
-- \U_BUZZER|Add0~19\ = CARRY((!\U_BUZZER|Add0~17\) # (!\U_BUZZER|contador\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_BUZZER|contador\(9),
	datad => VCC,
	cin => \U_BUZZER|Add0~17\,
	combout => \U_BUZZER|Add0~18_combout\,
	cout => \U_BUZZER|Add0~19\);

-- Location: FF_X21_Y19_N19
\U_BUZZER|contador[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_BUZZER|Add0~18_combout\,
	clrn => \U_FSM|ALT_INV_activar_alarma~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_BUZZER|contador\(9));

-- Location: LCCOMB_X21_Y19_N20
\U_BUZZER|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BUZZER|Add0~20_combout\ = (\U_BUZZER|contador\(10) & (\U_BUZZER|Add0~19\ $ (GND))) # (!\U_BUZZER|contador\(10) & (!\U_BUZZER|Add0~19\ & VCC))
-- \U_BUZZER|Add0~21\ = CARRY((\U_BUZZER|contador\(10) & !\U_BUZZER|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_BUZZER|contador\(10),
	datad => VCC,
	cin => \U_BUZZER|Add0~19\,
	combout => \U_BUZZER|Add0~20_combout\,
	cout => \U_BUZZER|Add0~21\);

-- Location: LCCOMB_X20_Y19_N4
\U_BUZZER|contador~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BUZZER|contador~2_combout\ = (\U_BUZZER|Add0~20_combout\ & !\U_BUZZER|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_BUZZER|Add0~20_combout\,
	datad => \U_BUZZER|Equal0~4_combout\,
	combout => \U_BUZZER|contador~2_combout\);

-- Location: FF_X20_Y19_N5
\U_BUZZER|contador[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_BUZZER|contador~2_combout\,
	clrn => \U_FSM|ALT_INV_activar_alarma~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_BUZZER|contador\(10));

-- Location: LCCOMB_X21_Y19_N22
\U_BUZZER|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BUZZER|Add0~22_combout\ = (\U_BUZZER|contador\(11) & (!\U_BUZZER|Add0~21\)) # (!\U_BUZZER|contador\(11) & ((\U_BUZZER|Add0~21\) # (GND)))
-- \U_BUZZER|Add0~23\ = CARRY((!\U_BUZZER|Add0~21\) # (!\U_BUZZER|contador\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BUZZER|contador\(11),
	datad => VCC,
	cin => \U_BUZZER|Add0~21\,
	combout => \U_BUZZER|Add0~22_combout\,
	cout => \U_BUZZER|Add0~23\);

-- Location: FF_X21_Y19_N23
\U_BUZZER|contador[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_BUZZER|Add0~22_combout\,
	clrn => \U_FSM|ALT_INV_activar_alarma~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_BUZZER|contador\(11));

-- Location: LCCOMB_X21_Y19_N24
\U_BUZZER|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BUZZER|Add0~24_combout\ = (\U_BUZZER|contador\(12) & (\U_BUZZER|Add0~23\ $ (GND))) # (!\U_BUZZER|contador\(12) & (!\U_BUZZER|Add0~23\ & VCC))
-- \U_BUZZER|Add0~25\ = CARRY((\U_BUZZER|contador\(12) & !\U_BUZZER|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BUZZER|contador\(12),
	datad => VCC,
	cin => \U_BUZZER|Add0~23\,
	combout => \U_BUZZER|Add0~24_combout\,
	cout => \U_BUZZER|Add0~25\);

-- Location: LCCOMB_X20_Y19_N16
\U_BUZZER|contador~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BUZZER|contador~1_combout\ = (\U_BUZZER|Add0~24_combout\ & !\U_BUZZER|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_BUZZER|Add0~24_combout\,
	datad => \U_BUZZER|Equal0~4_combout\,
	combout => \U_BUZZER|contador~1_combout\);

-- Location: FF_X20_Y19_N17
\U_BUZZER|contador[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_BUZZER|contador~1_combout\,
	clrn => \U_FSM|ALT_INV_activar_alarma~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_BUZZER|contador\(12));

-- Location: LCCOMB_X21_Y19_N26
\U_BUZZER|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BUZZER|Add0~26_combout\ = (\U_BUZZER|contador\(13) & (!\U_BUZZER|Add0~25\)) # (!\U_BUZZER|contador\(13) & ((\U_BUZZER|Add0~25\) # (GND)))
-- \U_BUZZER|Add0~27\ = CARRY((!\U_BUZZER|Add0~25\) # (!\U_BUZZER|contador\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BUZZER|contador\(13),
	datad => VCC,
	cin => \U_BUZZER|Add0~25\,
	combout => \U_BUZZER|Add0~26_combout\,
	cout => \U_BUZZER|Add0~27\);

-- Location: FF_X21_Y19_N27
\U_BUZZER|contador[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_BUZZER|Add0~26_combout\,
	clrn => \U_FSM|ALT_INV_activar_alarma~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_BUZZER|contador\(13));

-- Location: LCCOMB_X21_Y19_N28
\U_BUZZER|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BUZZER|Add0~28_combout\ = (\U_BUZZER|contador\(14) & (\U_BUZZER|Add0~27\ $ (GND))) # (!\U_BUZZER|contador\(14) & (!\U_BUZZER|Add0~27\ & VCC))
-- \U_BUZZER|Add0~29\ = CARRY((\U_BUZZER|contador\(14) & !\U_BUZZER|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_BUZZER|contador\(14),
	datad => VCC,
	cin => \U_BUZZER|Add0~27\,
	combout => \U_BUZZER|Add0~28_combout\,
	cout => \U_BUZZER|Add0~29\);

-- Location: FF_X21_Y19_N29
\U_BUZZER|contador[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_BUZZER|Add0~28_combout\,
	clrn => \U_FSM|ALT_INV_activar_alarma~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_BUZZER|contador\(14));

-- Location: LCCOMB_X21_Y19_N30
\U_BUZZER|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BUZZER|Add0~30_combout\ = \U_BUZZER|Add0~29\ $ (\U_BUZZER|contador\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U_BUZZER|contador\(15),
	cin => \U_BUZZER|Add0~29\,
	combout => \U_BUZZER|Add0~30_combout\);

-- Location: LCCOMB_X19_Y19_N8
\U_BUZZER|contador~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BUZZER|contador~0_combout\ = (!\U_BUZZER|Equal0~4_combout\ & \U_BUZZER|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_BUZZER|Equal0~4_combout\,
	datad => \U_BUZZER|Add0~30_combout\,
	combout => \U_BUZZER|contador~0_combout\);

-- Location: FF_X19_Y19_N9
\U_BUZZER|contador[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_BUZZER|contador~0_combout\,
	clrn => \U_FSM|ALT_INV_activar_alarma~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_BUZZER|contador\(15));

-- Location: LCCOMB_X19_Y19_N14
\U_BUZZER|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BUZZER|Equal0~0_combout\ = (!\U_BUZZER|contador\(14) & (\U_BUZZER|contador\(12) & (!\U_BUZZER|contador\(13) & \U_BUZZER|contador\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BUZZER|contador\(14),
	datab => \U_BUZZER|contador\(12),
	datac => \U_BUZZER|contador\(13),
	datad => \U_BUZZER|contador\(15),
	combout => \U_BUZZER|Equal0~0_combout\);

-- Location: LCCOMB_X19_Y19_N20
\U_BUZZER|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BUZZER|Equal0~1_combout\ = (!\U_BUZZER|contador\(11) & (!\U_BUZZER|contador\(9) & (!\U_BUZZER|contador\(8) & \U_BUZZER|contador\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BUZZER|contador\(11),
	datab => \U_BUZZER|contador\(9),
	datac => \U_BUZZER|contador\(8),
	datad => \U_BUZZER|contador\(10),
	combout => \U_BUZZER|Equal0~1_combout\);

-- Location: LCCOMB_X19_Y19_N24
\U_BUZZER|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BUZZER|Equal0~4_combout\ = (\U_BUZZER|Equal0~3_combout\ & (\U_BUZZER|Equal0~2_combout\ & (\U_BUZZER|Equal0~0_combout\ & \U_BUZZER|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BUZZER|Equal0~3_combout\,
	datab => \U_BUZZER|Equal0~2_combout\,
	datac => \U_BUZZER|Equal0~0_combout\,
	datad => \U_BUZZER|Equal0~1_combout\,
	combout => \U_BUZZER|Equal0~4_combout\);

-- Location: LCCOMB_X19_Y19_N12
\U_BUZZER|beep_i~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BUZZER|beep_i~0_combout\ = \U_BUZZER|beep_i~q\ $ (\U_BUZZER|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_BUZZER|beep_i~q\,
	datad => \U_BUZZER|Equal0~4_combout\,
	combout => \U_BUZZER|beep_i~0_combout\);

-- Location: FF_X19_Y19_N13
\U_BUZZER|beep_i\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_BUZZER|beep_i~0_combout\,
	clrn => \U_FSM|ALT_INV_activar_alarma~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_BUZZER|beep_i~q\);

-- Location: LCCOMB_X20_Y16_N24
\U_HORARIO|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HORARIO|Equal1~0_combout\ = (\U_HORARIO|contador\(6)) # ((\U_HORARIO|contador\(7)) # ((\U_HORARIO|contador\(2) & \U_HORARIO|horario[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_HORARIO|contador\(2),
	datab => \U_HORARIO|contador\(6),
	datac => \U_HORARIO|horario[1]~0_combout\,
	datad => \U_HORARIO|contador\(7),
	combout => \U_HORARIO|Equal1~0_combout\);

-- Location: LCCOMB_X20_Y16_N20
\U_HORARIO|Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HORARIO|Equal2~0_combout\ = (!\U_HORARIO|contador\(7) & (\U_HORARIO|horario[0]~4_combout\ & ((!\U_HORARIO|horario[1]~0_combout\) # (!\U_HORARIO|contador\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_HORARIO|contador\(7),
	datab => \U_HORARIO|contador\(6),
	datac => \U_HORARIO|horario[1]~0_combout\,
	datad => \U_HORARIO|horario[0]~4_combout\,
	combout => \U_HORARIO|Equal2~0_combout\);

-- Location: LCCOMB_X20_Y16_N2
\U_HORARIO|Equal2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HORARIO|Equal2~1_combout\ = (!\U_HORARIO|horario[0]~4_combout\ & ((\U_HORARIO|contador\(7)) # ((\U_HORARIO|contador\(6) & \U_HORARIO|horario[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_HORARIO|contador\(7),
	datab => \U_HORARIO|contador\(6),
	datac => \U_HORARIO|horario[1]~0_combout\,
	datad => \U_HORARIO|horario[0]~4_combout\,
	combout => \U_HORARIO|Equal2~1_combout\);

-- Location: LCCOMB_X20_Y16_N0
\U_HORARIO|Equal2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_HORARIO|Equal2~2_combout\ = (\U_HORARIO|horario[0]~4_combout\ & ((\U_HORARIO|contador\(7)) # ((\U_HORARIO|horario[1]~0_combout\ & \U_HORARIO|contador\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_HORARIO|contador\(7),
	datab => \U_HORARIO|horario[1]~0_combout\,
	datac => \U_HORARIO|contador\(6),
	datad => \U_HORARIO|horario[0]~4_combout\,
	combout => \U_HORARIO|Equal2~2_combout\);

ww_COLUMNA(0) <= \COLUMNA[0]~output_o\;

ww_COLUMNA(1) <= \COLUMNA[1]~output_o\;

ww_COLUMNA(2) <= \COLUMNA[2]~output_o\;

ww_COLUMNA(3) <= \COLUMNA[3]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_SERVO_PWM <= \SERVO_PWM~output_o\;

ww_BUZZER_OUT <= \BUZZER_OUT~output_o\;

ww_LED_ABRIR <= \LED_ABRIR~output_o\;

ww_LED_ALARMA <= \LED_ALARMA~output_o\;

ww_LED_BLOQUEO <= \LED_BLOQUEO~output_o\;

ww_LED_MANANA <= \LED_MANANA~output_o\;

ww_LED_TARDE <= \LED_TARDE~output_o\;

ww_LED_NOCHE <= \LED_NOCHE~output_o\;

ww_LED_FIN <= \LED_FIN~output_o\;
END structure;


