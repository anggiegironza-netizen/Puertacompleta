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

-- DATE "05/12/2026 12:28:33"

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

ENTITY 	memoria_completa IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	address : IN std_logic_vector(5 DOWNTO 0);
	data_in : IN std_logic_vector(7 DOWNTO 0);
	we : IN std_logic;
	data_out : OUT std_logic_vector(7 DOWNTO 0)
	);
END memoria_completa;

-- Design Ports Information
-- rst	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[0]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[1]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[2]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[3]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[4]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[5]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[6]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[7]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[1]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[2]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[4]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[5]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[0]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- we	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[1]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[2]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[3]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[4]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[5]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[6]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[7]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF memoria_completa IS
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
SIGNAL ww_address : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_data_in : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_we : std_logic;
SIGNAL ww_data_out : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \data_out[0]~output_o\ : std_logic;
SIGNAL \data_out[1]~output_o\ : std_logic;
SIGNAL \data_out[2]~output_o\ : std_logic;
SIGNAL \data_out[3]~output_o\ : std_logic;
SIGNAL \data_out[4]~output_o\ : std_logic;
SIGNAL \data_out[5]~output_o\ : std_logic;
SIGNAL \data_out[6]~output_o\ : std_logic;
SIGNAL \data_out[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \address[2]~input_o\ : std_logic;
SIGNAL \address[5]~input_o\ : std_logic;
SIGNAL \address[1]~input_o\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \address[4]~input_o\ : std_logic;
SIGNAL \address[3]~input_o\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \address[0]~input_o\ : std_logic;
SIGNAL \U_ROM|data_out~0_combout\ : std_logic;
SIGNAL \data_out~0_combout\ : std_logic;
SIGNAL \U_RAM|data_out~0_combout\ : std_logic;
SIGNAL \data_in[0]~input_o\ : std_logic;
SIGNAL \U_RAM|mem~481_combout\ : std_logic;
SIGNAL \we~input_o\ : std_logic;
SIGNAL \U_RAM|mem~436_combout\ : std_logic;
SIGNAL \U_RAM|mem~437_combout\ : std_logic;
SIGNAL \U_RAM|mem~198_q\ : std_logic;
SIGNAL \U_RAM|mem~478_combout\ : std_logic;
SIGNAL \U_RAM|mem~430_combout\ : std_logic;
SIGNAL \U_RAM|mem~431_combout\ : std_logic;
SIGNAL \U_RAM|mem~190_q\ : std_logic;
SIGNAL \U_RAM|mem~480_combout\ : std_logic;
SIGNAL \U_RAM|mem~434_combout\ : std_logic;
SIGNAL \U_RAM|mem~435_combout\ : std_logic;
SIGNAL \U_RAM|mem~174_q\ : std_logic;
SIGNAL \U_RAM|mem~479_combout\ : std_logic;
SIGNAL \U_RAM|mem~432_combout\ : std_logic;
SIGNAL \U_RAM|mem~433_combout\ : std_logic;
SIGNAL \U_RAM|mem~182_q\ : std_logic;
SIGNAL \U_RAM|mem~270_combout\ : std_logic;
SIGNAL \U_RAM|mem~271_combout\ : std_logic;
SIGNAL \U_RAM|mem~454_combout\ : std_logic;
SIGNAL \U_RAM|mem~455_combout\ : std_logic;
SIGNAL \U_RAM|mem~254_q\ : std_logic;
SIGNAL \U_RAM|mem~460_combout\ : std_logic;
SIGNAL \U_RAM|mem~461_combout\ : std_logic;
SIGNAL \U_RAM|mem~262_q\ : std_logic;
SIGNAL \U_RAM|mem~491_combout\ : std_logic;
SIGNAL \U_RAM|mem~458_combout\ : std_logic;
SIGNAL \U_RAM|mem~459_combout\ : std_logic;
SIGNAL \U_RAM|mem~238_q\ : std_logic;
SIGNAL \U_RAM|mem~490_combout\ : std_logic;
SIGNAL \U_RAM|mem~456_combout\ : std_logic;
SIGNAL \U_RAM|mem~457_combout\ : std_logic;
SIGNAL \U_RAM|mem~246_q\ : std_logic;
SIGNAL \U_RAM|mem~277_combout\ : std_logic;
SIGNAL \U_RAM|mem~278_combout\ : std_logic;
SIGNAL \U_RAM|mem~482_combout\ : std_logic;
SIGNAL \U_RAM|mem~438_combout\ : std_logic;
SIGNAL \U_RAM|mem~439_combout\ : std_logic;
SIGNAL \U_RAM|mem~222_q\ : std_logic;
SIGNAL \U_RAM|mem~485_combout\ : std_logic;
SIGNAL \U_RAM|mem~444_combout\ : std_logic;
SIGNAL \U_RAM|mem~445_combout\ : std_logic;
SIGNAL \U_RAM|mem~230_q\ : std_logic;
SIGNAL \U_RAM|mem~484_combout\ : std_logic;
SIGNAL \U_RAM|mem~442_combout\ : std_logic;
SIGNAL \U_RAM|mem~443_combout\ : std_logic;
SIGNAL \U_RAM|mem~206_q\ : std_logic;
SIGNAL \U_RAM|mem~483_combout\ : std_logic;
SIGNAL \U_RAM|mem~440_combout\ : std_logic;
SIGNAL \U_RAM|mem~441_combout\ : std_logic;
SIGNAL \U_RAM|mem~214_q\ : std_logic;
SIGNAL \U_RAM|mem~272_combout\ : std_logic;
SIGNAL \U_RAM|mem~273_combout\ : std_logic;
SIGNAL \U_RAM|mem~486_combout\ : std_logic;
SIGNAL \U_RAM|mem~446_combout\ : std_logic;
SIGNAL \U_RAM|mem~447_combout\ : std_logic;
SIGNAL \U_RAM|mem~158_q\ : std_logic;
SIGNAL \U_RAM|mem~489_combout\ : std_logic;
SIGNAL \U_RAM|mem~452_combout\ : std_logic;
SIGNAL \U_RAM|mem~453_combout\ : std_logic;
SIGNAL \U_RAM|mem~166_q\ : std_logic;
SIGNAL \U_RAM|mem~488_combout\ : std_logic;
SIGNAL \U_RAM|mem~450_combout\ : std_logic;
SIGNAL \U_RAM|mem~451_combout\ : std_logic;
SIGNAL \U_RAM|mem~142_q\ : std_logic;
SIGNAL \U_RAM|mem~487_combout\ : std_logic;
SIGNAL \U_RAM|mem~448_combout\ : std_logic;
SIGNAL \U_RAM|mem~449_combout\ : std_logic;
SIGNAL \U_RAM|mem~150_q\ : std_logic;
SIGNAL \U_RAM|mem~274_combout\ : std_logic;
SIGNAL \U_RAM|mem~275_combout\ : std_logic;
SIGNAL \U_RAM|mem~276_combout\ : std_logic;
SIGNAL \U_RAM|mem~279_combout\ : std_logic;
SIGNAL \U_RAM|mem~498_combout\ : std_logic;
SIGNAL \U_RAM|mem~474_combout\ : std_logic;
SIGNAL \U_RAM|mem~126_q\ : std_logic;
SIGNAL \U_RAM|mem~501_combout\ : std_logic;
SIGNAL \U_RAM|mem~477_combout\ : std_logic;
SIGNAL \U_RAM|mem~134_q\ : std_logic;
SIGNAL \U_RAM|mem~500_combout\ : std_logic;
SIGNAL \U_RAM|mem~476_combout\ : std_logic;
SIGNAL \U_RAM|mem~62_q\ : std_logic;
SIGNAL \U_RAM|mem~499_combout\ : std_logic;
SIGNAL \U_RAM|mem~475_combout\ : std_logic;
SIGNAL \U_RAM|mem~70_q\ : std_logic;
SIGNAL \U_RAM|mem~287_combout\ : std_logic;
SIGNAL \U_RAM|mem~288_combout\ : std_logic;
SIGNAL \U_RAM|mem~462_combout\ : std_logic;
SIGNAL \U_RAM|mem~54_q\ : std_logic;
SIGNAL \U_RAM|mem~493_combout\ : std_logic;
SIGNAL \U_RAM|mem~465_combout\ : std_logic;
SIGNAL \U_RAM|mem~118_q\ : std_logic;
SIGNAL \U_RAM|mem~464_combout\ : std_logic;
SIGNAL \U_RAM|mem~46_q\ : std_logic;
SIGNAL \U_RAM|mem~492_combout\ : std_logic;
SIGNAL \U_RAM|mem~463_combout\ : std_logic;
SIGNAL \U_RAM|mem~110_q\ : std_logic;
SIGNAL \U_RAM|mem~280_combout\ : std_logic;
SIGNAL \U_RAM|mem~281_combout\ : std_logic;
SIGNAL \U_RAM|mem~496_combout\ : std_logic;
SIGNAL \U_RAM|mem~470_combout\ : std_logic;
SIGNAL \U_RAM|mem~78_q\ : std_logic;
SIGNAL \U_RAM|mem~497_combout\ : std_logic;
SIGNAL \U_RAM|mem~473_combout\ : std_logic;
SIGNAL \U_RAM|mem~86_q\ : std_logic;
SIGNAL \U_RAM|mem~472_combout\ : std_logic;
SIGNAL \U_RAM|mem~14_q\ : std_logic;
SIGNAL \U_RAM|mem~471_combout\ : std_logic;
SIGNAL \U_RAM|mem~22_q\ : std_logic;
SIGNAL \U_RAM|mem~284_combout\ : std_logic;
SIGNAL \U_RAM|mem~285_combout\ : std_logic;
SIGNAL \U_RAM|mem~494_combout\ : std_logic;
SIGNAL \U_RAM|mem~466_combout\ : std_logic;
SIGNAL \U_RAM|mem~94_q\ : std_logic;
SIGNAL \U_RAM|mem~495_combout\ : std_logic;
SIGNAL \U_RAM|mem~469_combout\ : std_logic;
SIGNAL \U_RAM|mem~102_q\ : std_logic;
SIGNAL \U_RAM|mem~468_combout\ : std_logic;
SIGNAL \U_RAM|mem~30_q\ : std_logic;
SIGNAL \U_RAM|mem~467_combout\ : std_logic;
SIGNAL \U_RAM|mem~38_q\ : std_logic;
SIGNAL \U_RAM|mem~282_combout\ : std_logic;
SIGNAL \U_RAM|mem~283_combout\ : std_logic;
SIGNAL \U_RAM|mem~286_combout\ : std_logic;
SIGNAL \U_RAM|mem~289_combout\ : std_logic;
SIGNAL \U_RAM|data_out~1_combout\ : std_logic;
SIGNAL \data_out~1_combout\ : std_logic;
SIGNAL \data_in[1]~input_o\ : std_logic;
SIGNAL \U_RAM|mem~255feeder_combout\ : std_logic;
SIGNAL \U_RAM|mem~255_q\ : std_logic;
SIGNAL \U_RAM|mem~263_q\ : std_logic;
SIGNAL \U_RAM|mem~515_combout\ : std_logic;
SIGNAL \U_RAM|mem~239_q\ : std_logic;
SIGNAL \U_RAM|mem~514_combout\ : std_logic;
SIGNAL \U_RAM|mem~247_q\ : std_logic;
SIGNAL \U_RAM|mem~297_combout\ : std_logic;
SIGNAL \U_RAM|mem~298_combout\ : std_logic;
SIGNAL \U_RAM|mem~505_combout\ : std_logic;
SIGNAL \U_RAM|mem~231_q\ : std_logic;
SIGNAL \U_RAM|mem~502_combout\ : std_logic;
SIGNAL \U_RAM|mem~215_q\ : std_logic;
SIGNAL \U_RAM|mem~504_combout\ : std_logic;
SIGNAL \U_RAM|mem~207_q\ : std_logic;
SIGNAL \U_RAM|mem~503_combout\ : std_logic;
SIGNAL \U_RAM|mem~223_q\ : std_logic;
SIGNAL \U_RAM|mem~290_combout\ : std_logic;
SIGNAL \U_RAM|mem~291_combout\ : std_logic;
SIGNAL \U_RAM|mem~506_combout\ : std_logic;
SIGNAL \U_RAM|mem~191_q\ : std_logic;
SIGNAL \U_RAM|mem~509_combout\ : std_logic;
SIGNAL \U_RAM|mem~199_q\ : std_logic;
SIGNAL \U_RAM|mem~508_combout\ : std_logic;
SIGNAL \U_RAM|mem~175_q\ : std_logic;
SIGNAL \U_RAM|mem~507_combout\ : std_logic;
SIGNAL \U_RAM|mem~183_q\ : std_logic;
SIGNAL \U_RAM|mem~292_combout\ : std_logic;
SIGNAL \U_RAM|mem~293_combout\ : std_logic;
SIGNAL \U_RAM|mem~510_combout\ : std_logic;
SIGNAL \U_RAM|mem~151_q\ : std_logic;
SIGNAL \U_RAM|mem~513_combout\ : std_logic;
SIGNAL \U_RAM|mem~167_q\ : std_logic;
SIGNAL \U_RAM|mem~512_combout\ : std_logic;
SIGNAL \U_RAM|mem~143_q\ : std_logic;
SIGNAL \U_RAM|mem~511_combout\ : std_logic;
SIGNAL \U_RAM|mem~159_q\ : std_logic;
SIGNAL \U_RAM|mem~294_combout\ : std_logic;
SIGNAL \U_RAM|mem~295_combout\ : std_logic;
SIGNAL \U_RAM|mem~296_combout\ : std_logic;
SIGNAL \U_RAM|mem~299_combout\ : std_logic;
SIGNAL \U_RAM|mem~518_combout\ : std_logic;
SIGNAL \U_RAM|mem~127_q\ : std_logic;
SIGNAL \U_RAM|mem~516_combout\ : std_logic;
SIGNAL \U_RAM|mem~63_q\ : std_logic;
SIGNAL \U_RAM|mem~31_q\ : std_logic;
SIGNAL \U_RAM|mem~517_combout\ : std_logic;
SIGNAL \U_RAM|mem~95_q\ : std_logic;
SIGNAL \U_RAM|mem~300_combout\ : std_logic;
SIGNAL \U_RAM|mem~301_combout\ : std_logic;
SIGNAL \U_RAM|mem~39_q\ : std_logic;
SIGNAL \U_RAM|mem~524_combout\ : std_logic;
SIGNAL \U_RAM|mem~103_q\ : std_logic;
SIGNAL \U_RAM|mem~307_combout\ : std_logic;
SIGNAL \U_RAM|mem~525_combout\ : std_logic;
SIGNAL \U_RAM|mem~135_q\ : std_logic;
SIGNAL \U_RAM|mem~523_combout\ : std_logic;
SIGNAL \U_RAM|mem~71_q\ : std_logic;
SIGNAL \U_RAM|mem~308_combout\ : std_logic;
SIGNAL \U_RAM|mem~47_q\ : std_logic;
SIGNAL \U_RAM|mem~522_combout\ : std_logic;
SIGNAL \U_RAM|mem~111_q\ : std_logic;
SIGNAL \U_RAM|mem~15_q\ : std_logic;
SIGNAL \U_RAM|mem~521_combout\ : std_logic;
SIGNAL \U_RAM|mem~79_q\ : std_logic;
SIGNAL \U_RAM|mem~304_combout\ : std_logic;
SIGNAL \U_RAM|mem~305_combout\ : std_logic;
SIGNAL \U_RAM|mem~55_q\ : std_logic;
SIGNAL \U_RAM|mem~520_combout\ : std_logic;
SIGNAL \U_RAM|mem~119_q\ : std_logic;
SIGNAL \U_RAM|mem~23_q\ : std_logic;
SIGNAL \U_RAM|mem~519_combout\ : std_logic;
SIGNAL \U_RAM|mem~87_q\ : std_logic;
SIGNAL \U_RAM|mem~302_combout\ : std_logic;
SIGNAL \U_RAM|mem~303_combout\ : std_logic;
SIGNAL \U_RAM|mem~306_combout\ : std_logic;
SIGNAL \U_RAM|mem~309_combout\ : std_logic;
SIGNAL \U_RAM|data_out~2_combout\ : std_logic;
SIGNAL \U_ROM|data_out~1_combout\ : std_logic;
SIGNAL \data_out~2_combout\ : std_logic;
SIGNAL \U_ROM|data_out~2_combout\ : std_logic;
SIGNAL \data_in[2]~input_o\ : std_logic;
SIGNAL \U_RAM|mem~48_q\ : std_logic;
SIGNAL \U_RAM|mem~546_combout\ : std_logic;
SIGNAL \U_RAM|mem~112_q\ : std_logic;
SIGNAL \U_RAM|mem~16_q\ : std_logic;
SIGNAL \U_RAM|mem~545_combout\ : std_logic;
SIGNAL \U_RAM|mem~80_q\ : std_logic;
SIGNAL \U_RAM|mem~324_combout\ : std_logic;
SIGNAL \U_RAM|mem~325_combout\ : std_logic;
SIGNAL \U_RAM|mem~542_combout\ : std_logic;
SIGNAL \U_RAM|mem~64_q\ : std_logic;
SIGNAL \U_RAM|mem~544_combout\ : std_logic;
SIGNAL \U_RAM|mem~128_q\ : std_logic;
SIGNAL \U_RAM|mem~32_q\ : std_logic;
SIGNAL \U_RAM|mem~543_combout\ : std_logic;
SIGNAL \U_RAM|mem~96_q\ : std_logic;
SIGNAL \U_RAM|mem~322_combout\ : std_logic;
SIGNAL \U_RAM|mem~323_combout\ : std_logic;
SIGNAL \U_RAM|mem~326_combout\ : std_logic;
SIGNAL \U_RAM|mem~541_combout\ : std_logic;
SIGNAL \U_RAM|mem~120_q\ : std_logic;
SIGNAL \U_RAM|mem~540_combout\ : std_logic;
SIGNAL \U_RAM|mem~88_q\ : std_logic;
SIGNAL \U_RAM|mem~24_q\ : std_logic;
SIGNAL \U_RAM|mem~56_q\ : std_logic;
SIGNAL \U_RAM|mem~320_combout\ : std_logic;
SIGNAL \U_RAM|mem~321_combout\ : std_logic;
SIGNAL \U_RAM|mem~547_combout\ : std_logic;
SIGNAL \U_RAM|mem~104_q\ : std_logic;
SIGNAL \U_RAM|mem~549_combout\ : std_logic;
SIGNAL \U_RAM|mem~136_q\ : std_logic;
SIGNAL \U_RAM|mem~40_q\ : std_logic;
SIGNAL \U_RAM|mem~548_combout\ : std_logic;
SIGNAL \U_RAM|mem~72_q\ : std_logic;
SIGNAL \U_RAM|mem~327_combout\ : std_logic;
SIGNAL \U_RAM|mem~328_combout\ : std_logic;
SIGNAL \U_RAM|mem~329_combout\ : std_logic;
SIGNAL \U_RAM|mem~529_combout\ : std_logic;
SIGNAL \U_RAM|mem~200_q\ : std_logic;
SIGNAL \U_RAM|mem~526_combout\ : std_logic;
SIGNAL \U_RAM|mem~184_q\ : std_logic;
SIGNAL \U_RAM|mem~528_combout\ : std_logic;
SIGNAL \U_RAM|mem~176_q\ : std_logic;
SIGNAL \U_RAM|mem~527_combout\ : std_logic;
SIGNAL \U_RAM|mem~192_q\ : std_logic;
SIGNAL \U_RAM|mem~310_combout\ : std_logic;
SIGNAL \U_RAM|mem~311_combout\ : std_logic;
SIGNAL \U_RAM|mem~538_combout\ : std_logic;
SIGNAL \U_RAM|mem~248_q\ : std_logic;
SIGNAL \U_RAM|mem~264_q\ : std_logic;
SIGNAL \U_RAM|mem~539_combout\ : std_logic;
SIGNAL \U_RAM|mem~240_q\ : std_logic;
SIGNAL \U_RAM|mem~256feeder_combout\ : std_logic;
SIGNAL \U_RAM|mem~256_q\ : std_logic;
SIGNAL \U_RAM|mem~317_combout\ : std_logic;
SIGNAL \U_RAM|mem~318_combout\ : std_logic;
SIGNAL \U_RAM|mem~530_combout\ : std_logic;
SIGNAL \U_RAM|mem~224_q\ : std_logic;
SIGNAL \U_RAM|mem~533_combout\ : std_logic;
SIGNAL \U_RAM|mem~232_q\ : std_logic;
SIGNAL \U_RAM|mem~532_combout\ : std_logic;
SIGNAL \U_RAM|mem~208_q\ : std_logic;
SIGNAL \U_RAM|mem~531_combout\ : std_logic;
SIGNAL \U_RAM|mem~216_q\ : std_logic;
SIGNAL \U_RAM|mem~312_combout\ : std_logic;
SIGNAL \U_RAM|mem~313_combout\ : std_logic;
SIGNAL \U_RAM|mem~534_combout\ : std_logic;
SIGNAL \U_RAM|mem~160_q\ : std_logic;
SIGNAL \U_RAM|mem~537_combout\ : std_logic;
SIGNAL \U_RAM|mem~168_q\ : std_logic;
SIGNAL \U_RAM|mem~536_combout\ : std_logic;
SIGNAL \U_RAM|mem~144_q\ : std_logic;
SIGNAL \U_RAM|mem~535_combout\ : std_logic;
SIGNAL \U_RAM|mem~152_q\ : std_logic;
SIGNAL \U_RAM|mem~314_combout\ : std_logic;
SIGNAL \U_RAM|mem~315_combout\ : std_logic;
SIGNAL \U_RAM|mem~316_combout\ : std_logic;
SIGNAL \U_RAM|mem~319_combout\ : std_logic;
SIGNAL \U_RAM|data_out~3_combout\ : std_logic;
SIGNAL \data_out~3_combout\ : std_logic;
SIGNAL \U_ROM|data_out~3_combout\ : std_logic;
SIGNAL \data_in[3]~input_o\ : std_logic;
SIGNAL \U_RAM|mem~257_q\ : std_logic;
SIGNAL \U_RAM|mem~265_q\ : std_logic;
SIGNAL \U_RAM|mem~563_combout\ : std_logic;
SIGNAL \U_RAM|mem~241_q\ : std_logic;
SIGNAL \U_RAM|mem~562_combout\ : std_logic;
SIGNAL \U_RAM|mem~249_q\ : std_logic;
SIGNAL \U_RAM|mem~337_combout\ : std_logic;
SIGNAL \U_RAM|mem~338_combout\ : std_logic;
SIGNAL \U_RAM|mem~553_combout\ : std_logic;
SIGNAL \U_RAM|mem~233_q\ : std_logic;
SIGNAL \U_RAM|mem~550_combout\ : std_logic;
SIGNAL \U_RAM|mem~217_q\ : std_logic;
SIGNAL \U_RAM|mem~552_combout\ : std_logic;
SIGNAL \U_RAM|mem~209_q\ : std_logic;
SIGNAL \U_RAM|mem~551_combout\ : std_logic;
SIGNAL \U_RAM|mem~225_q\ : std_logic;
SIGNAL \U_RAM|mem~330_combout\ : std_logic;
SIGNAL \U_RAM|mem~331_combout\ : std_logic;
SIGNAL \U_RAM|mem~554_combout\ : std_logic;
SIGNAL \U_RAM|mem~193_q\ : std_logic;
SIGNAL \U_RAM|mem~557_combout\ : std_logic;
SIGNAL \U_RAM|mem~201_q\ : std_logic;
SIGNAL \U_RAM|mem~556_combout\ : std_logic;
SIGNAL \U_RAM|mem~177_q\ : std_logic;
SIGNAL \U_RAM|mem~555_combout\ : std_logic;
SIGNAL \U_RAM|mem~185_q\ : std_logic;
SIGNAL \U_RAM|mem~332_combout\ : std_logic;
SIGNAL \U_RAM|mem~333_combout\ : std_logic;
SIGNAL \U_RAM|mem~558_combout\ : std_logic;
SIGNAL \U_RAM|mem~153feeder_combout\ : std_logic;
SIGNAL \U_RAM|mem~153_q\ : std_logic;
SIGNAL \U_RAM|mem~561_combout\ : std_logic;
SIGNAL \U_RAM|mem~169_q\ : std_logic;
SIGNAL \U_RAM|mem~560_combout\ : std_logic;
SIGNAL \U_RAM|mem~145_q\ : std_logic;
SIGNAL \U_RAM|mem~559_combout\ : std_logic;
SIGNAL \U_RAM|mem~161_q\ : std_logic;
SIGNAL \U_RAM|mem~334_combout\ : std_logic;
SIGNAL \U_RAM|mem~335_combout\ : std_logic;
SIGNAL \U_RAM|mem~336_combout\ : std_logic;
SIGNAL \U_RAM|mem~339_combout\ : std_logic;
SIGNAL \U_RAM|mem~566_combout\ : std_logic;
SIGNAL \U_RAM|mem~129_q\ : std_logic;
SIGNAL \U_RAM|mem~564_combout\ : std_logic;
SIGNAL \U_RAM|mem~97_q\ : std_logic;
SIGNAL \U_RAM|mem~33feeder_combout\ : std_logic;
SIGNAL \U_RAM|mem~33_q\ : std_logic;
SIGNAL \U_RAM|mem~565_combout\ : std_logic;
SIGNAL \U_RAM|mem~65_q\ : std_logic;
SIGNAL \U_RAM|mem~340_combout\ : std_logic;
SIGNAL \U_RAM|mem~341_combout\ : std_logic;
SIGNAL \U_RAM|mem~571_combout\ : std_logic;
SIGNAL \U_RAM|mem~73_q\ : std_logic;
SIGNAL \U_RAM|mem~573_combout\ : std_logic;
SIGNAL \U_RAM|mem~137_q\ : std_logic;
SIGNAL \U_RAM|mem~41_q\ : std_logic;
SIGNAL \U_RAM|mem~572_combout\ : std_logic;
SIGNAL \U_RAM|mem~105_q\ : std_logic;
SIGNAL \U_RAM|mem~347_combout\ : std_logic;
SIGNAL \U_RAM|mem~348_combout\ : std_logic;
SIGNAL \U_RAM|mem~57_q\ : std_logic;
SIGNAL \U_RAM|mem~568_combout\ : std_logic;
SIGNAL \U_RAM|mem~121_q\ : std_logic;
SIGNAL \U_RAM|mem~25_q\ : std_logic;
SIGNAL \U_RAM|mem~567_combout\ : std_logic;
SIGNAL \U_RAM|mem~89_q\ : std_logic;
SIGNAL \U_RAM|mem~342_combout\ : std_logic;
SIGNAL \U_RAM|mem~343_combout\ : std_logic;
SIGNAL \U_RAM|mem~569_combout\ : std_logic;
SIGNAL \U_RAM|mem~81_q\ : std_logic;
SIGNAL \U_RAM|mem~570_combout\ : std_logic;
SIGNAL \U_RAM|mem~113_q\ : std_logic;
SIGNAL \U_RAM|mem~17_q\ : std_logic;
SIGNAL \U_RAM|mem~49feeder_combout\ : std_logic;
SIGNAL \U_RAM|mem~49_q\ : std_logic;
SIGNAL \U_RAM|mem~344_combout\ : std_logic;
SIGNAL \U_RAM|mem~345_combout\ : std_logic;
SIGNAL \U_RAM|mem~346_combout\ : std_logic;
SIGNAL \U_RAM|mem~349_combout\ : std_logic;
SIGNAL \U_RAM|data_out~4_combout\ : std_logic;
SIGNAL \data_out~4_combout\ : std_logic;
SIGNAL \data_in[4]~input_o\ : std_logic;
SIGNAL \U_RAM|mem~595_combout\ : std_logic;
SIGNAL \U_RAM|mem~106_q\ : std_logic;
SIGNAL \U_RAM|mem~597_combout\ : std_logic;
SIGNAL \U_RAM|mem~138_q\ : std_logic;
SIGNAL \U_RAM|mem~42_q\ : std_logic;
SIGNAL \U_RAM|mem~596_combout\ : std_logic;
SIGNAL \U_RAM|mem~74_q\ : std_logic;
SIGNAL \U_RAM|mem~367_combout\ : std_logic;
SIGNAL \U_RAM|mem~368_combout\ : std_logic;
SIGNAL \U_RAM|mem~589_combout\ : std_logic;
SIGNAL \U_RAM|mem~122_q\ : std_logic;
SIGNAL \U_RAM|mem~588_combout\ : std_logic;
SIGNAL \U_RAM|mem~90_q\ : std_logic;
SIGNAL \U_RAM|mem~26_q\ : std_logic;
SIGNAL \U_RAM|mem~58feeder_combout\ : std_logic;
SIGNAL \U_RAM|mem~58_q\ : std_logic;
SIGNAL \U_RAM|mem~360_combout\ : std_logic;
SIGNAL \U_RAM|mem~361_combout\ : std_logic;
SIGNAL \U_RAM|mem~50_q\ : std_logic;
SIGNAL \U_RAM|mem~594_combout\ : std_logic;
SIGNAL \U_RAM|mem~114_q\ : std_logic;
SIGNAL \U_RAM|mem~18_q\ : std_logic;
SIGNAL \U_RAM|mem~593_combout\ : std_logic;
SIGNAL \U_RAM|mem~82_q\ : std_logic;
SIGNAL \U_RAM|mem~364_combout\ : std_logic;
SIGNAL \U_RAM|mem~365_combout\ : std_logic;
SIGNAL \U_RAM|mem~590_combout\ : std_logic;
SIGNAL \U_RAM|mem~66_q\ : std_logic;
SIGNAL \U_RAM|mem~592_combout\ : std_logic;
SIGNAL \U_RAM|mem~130_q\ : std_logic;
SIGNAL \U_RAM|mem~34_q\ : std_logic;
SIGNAL \U_RAM|mem~591_combout\ : std_logic;
SIGNAL \U_RAM|mem~98_q\ : std_logic;
SIGNAL \U_RAM|mem~362_combout\ : std_logic;
SIGNAL \U_RAM|mem~363_combout\ : std_logic;
SIGNAL \U_RAM|mem~366_combout\ : std_logic;
SIGNAL \U_RAM|mem~369_combout\ : std_logic;
SIGNAL \U_RAM|mem~582_combout\ : std_logic;
SIGNAL \U_RAM|mem~162_q\ : std_logic;
SIGNAL \U_RAM|mem~585_combout\ : std_logic;
SIGNAL \U_RAM|mem~170_q\ : std_logic;
SIGNAL \U_RAM|mem~584_combout\ : std_logic;
SIGNAL \U_RAM|mem~146_q\ : std_logic;
SIGNAL \U_RAM|mem~583_combout\ : std_logic;
SIGNAL \U_RAM|mem~154_q\ : std_logic;
SIGNAL \U_RAM|mem~354_combout\ : std_logic;
SIGNAL \U_RAM|mem~355_combout\ : std_logic;
SIGNAL \U_RAM|mem~578_combout\ : std_logic;
SIGNAL \U_RAM|mem~226_q\ : std_logic;
SIGNAL \U_RAM|mem~581_combout\ : std_logic;
SIGNAL \U_RAM|mem~234_q\ : std_logic;
SIGNAL \U_RAM|mem~580_combout\ : std_logic;
SIGNAL \U_RAM|mem~210_q\ : std_logic;
SIGNAL \U_RAM|mem~579_combout\ : std_logic;
SIGNAL \U_RAM|mem~218_q\ : std_logic;
SIGNAL \U_RAM|mem~352_combout\ : std_logic;
SIGNAL \U_RAM|mem~353_combout\ : std_logic;
SIGNAL \U_RAM|mem~356_combout\ : std_logic;
SIGNAL \U_RAM|mem~586_combout\ : std_logic;
SIGNAL \U_RAM|mem~250_q\ : std_logic;
SIGNAL \U_RAM|mem~266_q\ : std_logic;
SIGNAL \U_RAM|mem~587_combout\ : std_logic;
SIGNAL \U_RAM|mem~242_q\ : std_logic;
SIGNAL \U_RAM|mem~258_q\ : std_logic;
SIGNAL \U_RAM|mem~357_combout\ : std_logic;
SIGNAL \U_RAM|mem~358_combout\ : std_logic;
SIGNAL \U_RAM|mem~577_combout\ : std_logic;
SIGNAL \U_RAM|mem~202_q\ : std_logic;
SIGNAL \U_RAM|mem~574_combout\ : std_logic;
SIGNAL \U_RAM|mem~186_q\ : std_logic;
SIGNAL \U_RAM|mem~576_combout\ : std_logic;
SIGNAL \U_RAM|mem~178_q\ : std_logic;
SIGNAL \U_RAM|mem~575_combout\ : std_logic;
SIGNAL \U_RAM|mem~194_q\ : std_logic;
SIGNAL \U_RAM|mem~350_combout\ : std_logic;
SIGNAL \U_RAM|mem~351_combout\ : std_logic;
SIGNAL \U_RAM|mem~359_combout\ : std_logic;
SIGNAL \U_RAM|data_out~5_combout\ : std_logic;
SIGNAL \data_out~5_combout\ : std_logic;
SIGNAL \data_in[5]~input_o\ : std_logic;
SIGNAL \U_RAM|mem~614_combout\ : std_logic;
SIGNAL \U_RAM|mem~131_q\ : std_logic;
SIGNAL \U_RAM|mem~612_combout\ : std_logic;
SIGNAL \U_RAM|mem~99_q\ : std_logic;
SIGNAL \U_RAM|mem~35_q\ : std_logic;
SIGNAL \U_RAM|mem~613_combout\ : std_logic;
SIGNAL \U_RAM|mem~67_q\ : std_logic;
SIGNAL \U_RAM|mem~380_combout\ : std_logic;
SIGNAL \U_RAM|mem~381_combout\ : std_logic;
SIGNAL \U_RAM|mem~619_combout\ : std_logic;
SIGNAL \U_RAM|mem~75_q\ : std_logic;
SIGNAL \U_RAM|mem~621_combout\ : std_logic;
SIGNAL \U_RAM|mem~139_q\ : std_logic;
SIGNAL \U_RAM|mem~43_q\ : std_logic;
SIGNAL \U_RAM|mem~620_combout\ : std_logic;
SIGNAL \U_RAM|mem~107_q\ : std_logic;
SIGNAL \U_RAM|mem~387_combout\ : std_logic;
SIGNAL \U_RAM|mem~388_combout\ : std_logic;
SIGNAL \U_RAM|mem~59feeder_combout\ : std_logic;
SIGNAL \U_RAM|mem~59_q\ : std_logic;
SIGNAL \U_RAM|mem~616_combout\ : std_logic;
SIGNAL \U_RAM|mem~123_q\ : std_logic;
SIGNAL \U_RAM|mem~27_q\ : std_logic;
SIGNAL \U_RAM|mem~615_combout\ : std_logic;
SIGNAL \U_RAM|mem~91_q\ : std_logic;
SIGNAL \U_RAM|mem~382_combout\ : std_logic;
SIGNAL \U_RAM|mem~383_combout\ : std_logic;
SIGNAL \U_RAM|mem~617_combout\ : std_logic;
SIGNAL \U_RAM|mem~83_q\ : std_logic;
SIGNAL \U_RAM|mem~618_combout\ : std_logic;
SIGNAL \U_RAM|mem~115_q\ : std_logic;
SIGNAL \U_RAM|mem~19_q\ : std_logic;
SIGNAL \U_RAM|mem~51_q\ : std_logic;
SIGNAL \U_RAM|mem~384_combout\ : std_logic;
SIGNAL \U_RAM|mem~385_combout\ : std_logic;
SIGNAL \U_RAM|mem~386_combout\ : std_logic;
SIGNAL \U_RAM|mem~389_combout\ : std_logic;
SIGNAL \U_RAM|mem~611_combout\ : std_logic;
SIGNAL \U_RAM|mem~243_q\ : std_logic;
SIGNAL \U_RAM|mem~610_combout\ : std_logic;
SIGNAL \U_RAM|mem~251_q\ : std_logic;
SIGNAL \U_RAM|mem~377_combout\ : std_logic;
SIGNAL \U_RAM|mem~267_q\ : std_logic;
SIGNAL \U_RAM|mem~259_q\ : std_logic;
SIGNAL \U_RAM|mem~378_combout\ : std_logic;
SIGNAL \U_RAM|mem~601_combout\ : std_logic;
SIGNAL \U_RAM|mem~235_q\ : std_logic;
SIGNAL \U_RAM|mem~598_combout\ : std_logic;
SIGNAL \U_RAM|mem~219_q\ : std_logic;
SIGNAL \U_RAM|mem~600_combout\ : std_logic;
SIGNAL \U_RAM|mem~211_q\ : std_logic;
SIGNAL \U_RAM|mem~599_combout\ : std_logic;
SIGNAL \U_RAM|mem~227_q\ : std_logic;
SIGNAL \U_RAM|mem~370_combout\ : std_logic;
SIGNAL \U_RAM|mem~371_combout\ : std_logic;
SIGNAL \U_RAM|mem~602_combout\ : std_logic;
SIGNAL \U_RAM|mem~195_q\ : std_logic;
SIGNAL \U_RAM|mem~605_combout\ : std_logic;
SIGNAL \U_RAM|mem~203_q\ : std_logic;
SIGNAL \U_RAM|mem~604_combout\ : std_logic;
SIGNAL \U_RAM|mem~179_q\ : std_logic;
SIGNAL \U_RAM|mem~603_combout\ : std_logic;
SIGNAL \U_RAM|mem~187_q\ : std_logic;
SIGNAL \U_RAM|mem~372_combout\ : std_logic;
SIGNAL \U_RAM|mem~373_combout\ : std_logic;
SIGNAL \U_RAM|mem~606_combout\ : std_logic;
SIGNAL \U_RAM|mem~155_q\ : std_logic;
SIGNAL \U_RAM|mem~609_combout\ : std_logic;
SIGNAL \U_RAM|mem~171_q\ : std_logic;
SIGNAL \U_RAM|mem~608_combout\ : std_logic;
SIGNAL \U_RAM|mem~147_q\ : std_logic;
SIGNAL \U_RAM|mem~607_combout\ : std_logic;
SIGNAL \U_RAM|mem~163_q\ : std_logic;
SIGNAL \U_RAM|mem~374_combout\ : std_logic;
SIGNAL \U_RAM|mem~375_combout\ : std_logic;
SIGNAL \U_RAM|mem~376_combout\ : std_logic;
SIGNAL \U_RAM|mem~379_combout\ : std_logic;
SIGNAL \U_RAM|data_out~6_combout\ : std_logic;
SIGNAL \data_out~6_combout\ : std_logic;
SIGNAL \data_in[6]~input_o\ : std_logic;
SIGNAL \U_RAM|mem~643_combout\ : std_logic;
SIGNAL \U_RAM|mem~108_q\ : std_logic;
SIGNAL \U_RAM|mem~645_combout\ : std_logic;
SIGNAL \U_RAM|mem~140_q\ : std_logic;
SIGNAL \U_RAM|mem~44_q\ : std_logic;
SIGNAL \U_RAM|mem~644_combout\ : std_logic;
SIGNAL \U_RAM|mem~76_q\ : std_logic;
SIGNAL \U_RAM|mem~407_combout\ : std_logic;
SIGNAL \U_RAM|mem~408_combout\ : std_logic;
SIGNAL \U_RAM|mem~637_combout\ : std_logic;
SIGNAL \U_RAM|mem~124_q\ : std_logic;
SIGNAL \U_RAM|mem~636_combout\ : std_logic;
SIGNAL \U_RAM|mem~92_q\ : std_logic;
SIGNAL \U_RAM|mem~28_q\ : std_logic;
SIGNAL \U_RAM|mem~60_q\ : std_logic;
SIGNAL \U_RAM|mem~400_combout\ : std_logic;
SIGNAL \U_RAM|mem~401_combout\ : std_logic;
SIGNAL \U_RAM|mem~52_q\ : std_logic;
SIGNAL \U_RAM|mem~642_combout\ : std_logic;
SIGNAL \U_RAM|mem~116_q\ : std_logic;
SIGNAL \U_RAM|mem~20_q\ : std_logic;
SIGNAL \U_RAM|mem~641_combout\ : std_logic;
SIGNAL \U_RAM|mem~84_q\ : std_logic;
SIGNAL \U_RAM|mem~404_combout\ : std_logic;
SIGNAL \U_RAM|mem~405_combout\ : std_logic;
SIGNAL \U_RAM|mem~638_combout\ : std_logic;
SIGNAL \U_RAM|mem~68_q\ : std_logic;
SIGNAL \U_RAM|mem~640_combout\ : std_logic;
SIGNAL \U_RAM|mem~132_q\ : std_logic;
SIGNAL \U_RAM|mem~36_q\ : std_logic;
SIGNAL \U_RAM|mem~639_combout\ : std_logic;
SIGNAL \U_RAM|mem~100_q\ : std_logic;
SIGNAL \U_RAM|mem~402_combout\ : std_logic;
SIGNAL \U_RAM|mem~403_combout\ : std_logic;
SIGNAL \U_RAM|mem~406_combout\ : std_logic;
SIGNAL \U_RAM|mem~409_combout\ : std_logic;
SIGNAL \U_RAM|mem~625_combout\ : std_logic;
SIGNAL \U_RAM|mem~204_q\ : std_logic;
SIGNAL \U_RAM|mem~622_combout\ : std_logic;
SIGNAL \U_RAM|mem~188_q\ : std_logic;
SIGNAL \U_RAM|mem~624_combout\ : std_logic;
SIGNAL \U_RAM|mem~180_q\ : std_logic;
SIGNAL \U_RAM|mem~623_combout\ : std_logic;
SIGNAL \U_RAM|mem~196_q\ : std_logic;
SIGNAL \U_RAM|mem~390_combout\ : std_logic;
SIGNAL \U_RAM|mem~391_combout\ : std_logic;
SIGNAL \U_RAM|mem~634_combout\ : std_logic;
SIGNAL \U_RAM|mem~252_q\ : std_logic;
SIGNAL \U_RAM|mem~268_q\ : std_logic;
SIGNAL \U_RAM|mem~635_combout\ : std_logic;
SIGNAL \U_RAM|mem~244_q\ : std_logic;
SIGNAL \U_RAM|mem~260feeder_combout\ : std_logic;
SIGNAL \U_RAM|mem~260_q\ : std_logic;
SIGNAL \U_RAM|mem~397_combout\ : std_logic;
SIGNAL \U_RAM|mem~398_combout\ : std_logic;
SIGNAL \U_RAM|mem~626_combout\ : std_logic;
SIGNAL \U_RAM|mem~228_q\ : std_logic;
SIGNAL \U_RAM|mem~629_combout\ : std_logic;
SIGNAL \U_RAM|mem~236_q\ : std_logic;
SIGNAL \U_RAM|mem~628_combout\ : std_logic;
SIGNAL \U_RAM|mem~212_q\ : std_logic;
SIGNAL \U_RAM|mem~627_combout\ : std_logic;
SIGNAL \U_RAM|mem~220_q\ : std_logic;
SIGNAL \U_RAM|mem~392_combout\ : std_logic;
SIGNAL \U_RAM|mem~393_combout\ : std_logic;
SIGNAL \U_RAM|mem~630_combout\ : std_logic;
SIGNAL \U_RAM|mem~164_q\ : std_logic;
SIGNAL \U_RAM|mem~633_combout\ : std_logic;
SIGNAL \U_RAM|mem~172_q\ : std_logic;
SIGNAL \U_RAM|mem~632_combout\ : std_logic;
SIGNAL \U_RAM|mem~148_q\ : std_logic;
SIGNAL \U_RAM|mem~631_combout\ : std_logic;
SIGNAL \U_RAM|mem~156_q\ : std_logic;
SIGNAL \U_RAM|mem~394_combout\ : std_logic;
SIGNAL \U_RAM|mem~395_combout\ : std_logic;
SIGNAL \U_RAM|mem~396_combout\ : std_logic;
SIGNAL \U_RAM|mem~399_combout\ : std_logic;
SIGNAL \U_RAM|data_out~7_combout\ : std_logic;
SIGNAL \data_out~7_combout\ : std_logic;
SIGNAL \data_in[7]~input_o\ : std_logic;
SIGNAL \U_RAM|mem~649_combout\ : std_logic;
SIGNAL \U_RAM|mem~237_q\ : std_logic;
SIGNAL \U_RAM|mem~646_combout\ : std_logic;
SIGNAL \U_RAM|mem~221_q\ : std_logic;
SIGNAL \U_RAM|mem~648_combout\ : std_logic;
SIGNAL \U_RAM|mem~213_q\ : std_logic;
SIGNAL \U_RAM|mem~647_combout\ : std_logic;
SIGNAL \U_RAM|mem~229_q\ : std_logic;
SIGNAL \U_RAM|mem~410_combout\ : std_logic;
SIGNAL \U_RAM|mem~411_combout\ : std_logic;
SIGNAL \U_RAM|mem~261_q\ : std_logic;
SIGNAL \U_RAM|mem~269_q\ : std_logic;
SIGNAL \U_RAM|mem~659_combout\ : std_logic;
SIGNAL \U_RAM|mem~245_q\ : std_logic;
SIGNAL \U_RAM|mem~658_combout\ : std_logic;
SIGNAL \U_RAM|mem~253_q\ : std_logic;
SIGNAL \U_RAM|mem~417_combout\ : std_logic;
SIGNAL \U_RAM|mem~418_combout\ : std_logic;
SIGNAL \U_RAM|mem~653_combout\ : std_logic;
SIGNAL \U_RAM|mem~205_q\ : std_logic;
SIGNAL \U_RAM|mem~650_combout\ : std_logic;
SIGNAL \U_RAM|mem~197_q\ : std_logic;
SIGNAL \U_RAM|mem~652_combout\ : std_logic;
SIGNAL \U_RAM|mem~181_q\ : std_logic;
SIGNAL \U_RAM|mem~651_combout\ : std_logic;
SIGNAL \U_RAM|mem~189_q\ : std_logic;
SIGNAL \U_RAM|mem~412_combout\ : std_logic;
SIGNAL \U_RAM|mem~413_combout\ : std_logic;
SIGNAL \U_RAM|mem~654_combout\ : std_logic;
SIGNAL \U_RAM|mem~157_q\ : std_logic;
SIGNAL \U_RAM|mem~657_combout\ : std_logic;
SIGNAL \U_RAM|mem~173_q\ : std_logic;
SIGNAL \U_RAM|mem~656_combout\ : std_logic;
SIGNAL \U_RAM|mem~149_q\ : std_logic;
SIGNAL \U_RAM|mem~655_combout\ : std_logic;
SIGNAL \U_RAM|mem~165_q\ : std_logic;
SIGNAL \U_RAM|mem~414_combout\ : std_logic;
SIGNAL \U_RAM|mem~415_combout\ : std_logic;
SIGNAL \U_RAM|mem~416_combout\ : std_logic;
SIGNAL \U_RAM|mem~419_combout\ : std_logic;
SIGNAL \U_RAM|mem~667_combout\ : std_logic;
SIGNAL \U_RAM|mem~77_q\ : std_logic;
SIGNAL \U_RAM|mem~669_combout\ : std_logic;
SIGNAL \U_RAM|mem~141_q\ : std_logic;
SIGNAL \U_RAM|mem~45_q\ : std_logic;
SIGNAL \U_RAM|mem~668_combout\ : std_logic;
SIGNAL \U_RAM|mem~109_q\ : std_logic;
SIGNAL \U_RAM|mem~427_combout\ : std_logic;
SIGNAL \U_RAM|mem~428_combout\ : std_logic;
SIGNAL \U_RAM|mem~662_combout\ : std_logic;
SIGNAL \U_RAM|mem~133_q\ : std_logic;
SIGNAL \U_RAM|mem~660_combout\ : std_logic;
SIGNAL \U_RAM|mem~101_q\ : std_logic;
SIGNAL \U_RAM|mem~37_q\ : std_logic;
SIGNAL \U_RAM|mem~661_combout\ : std_logic;
SIGNAL \U_RAM|mem~69_q\ : std_logic;
SIGNAL \U_RAM|mem~420_combout\ : std_logic;
SIGNAL \U_RAM|mem~421_combout\ : std_logic;
SIGNAL \U_RAM|mem~61feeder_combout\ : std_logic;
SIGNAL \U_RAM|mem~61_q\ : std_logic;
SIGNAL \U_RAM|mem~664_combout\ : std_logic;
SIGNAL \U_RAM|mem~125_q\ : std_logic;
SIGNAL \U_RAM|mem~29_q\ : std_logic;
SIGNAL \U_RAM|mem~663_combout\ : std_logic;
SIGNAL \U_RAM|mem~93_q\ : std_logic;
SIGNAL \U_RAM|mem~422_combout\ : std_logic;
SIGNAL \U_RAM|mem~423_combout\ : std_logic;
SIGNAL \U_RAM|mem~665_combout\ : std_logic;
SIGNAL \U_RAM|mem~85_q\ : std_logic;
SIGNAL \U_RAM|mem~666_combout\ : std_logic;
SIGNAL \U_RAM|mem~117_q\ : std_logic;
SIGNAL \U_RAM|mem~21_q\ : std_logic;
SIGNAL \U_RAM|mem~53feeder_combout\ : std_logic;
SIGNAL \U_RAM|mem~53_q\ : std_logic;
SIGNAL \U_RAM|mem~424_combout\ : std_logic;
SIGNAL \U_RAM|mem~425_combout\ : std_logic;
SIGNAL \U_RAM|mem~426_combout\ : std_logic;
SIGNAL \U_RAM|mem~429_combout\ : std_logic;
SIGNAL \U_RAM|data_out~8_combout\ : std_logic;
SIGNAL \data_out~8_combout\ : std_logic;
SIGNAL \U_ROM|data_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_RAM|data_out\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_address <= address;
ww_data_in <= data_in;
ww_we <= we;
data_out <= ww_data_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X33_Y25_N2
\data_out[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out~1_combout\,
	devoe => ww_devoe,
	o => \data_out[0]~output_o\);

-- Location: IOOBUF_X31_Y31_N9
\data_out[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out~2_combout\,
	devoe => ww_devoe,
	o => \data_out[1]~output_o\);

-- Location: IOOBUF_X14_Y31_N9
\data_out[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out~3_combout\,
	devoe => ww_devoe,
	o => \data_out[2]~output_o\);

-- Location: IOOBUF_X33_Y27_N2
\data_out[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out~4_combout\,
	devoe => ww_devoe,
	o => \data_out[3]~output_o\);

-- Location: IOOBUF_X12_Y31_N9
\data_out[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out~5_combout\,
	devoe => ww_devoe,
	o => \data_out[4]~output_o\);

-- Location: IOOBUF_X14_Y31_N2
\data_out[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out~6_combout\,
	devoe => ww_devoe,
	o => \data_out[5]~output_o\);

-- Location: IOOBUF_X33_Y25_N9
\data_out[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out~7_combout\,
	devoe => ww_devoe,
	o => \data_out[6]~output_o\);

-- Location: IOOBUF_X29_Y31_N2
\data_out[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out~8_combout\,
	devoe => ww_devoe,
	o => \data_out[7]~output_o\);

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

-- Location: IOIBUF_X33_Y16_N15
\address[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(2),
	o => \address[2]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\address[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(5),
	o => \address[5]~input_o\);

-- Location: IOIBUF_X33_Y16_N22
\address[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(1),
	o => \address[1]~input_o\);

-- Location: LCCOMB_X21_Y28_N24
\LessThan1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (\address[2]~input_o\ & \address[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \address[2]~input_o\,
	datad => \address[1]~input_o\,
	combout => \LessThan1~0_combout\);

-- Location: IOIBUF_X16_Y0_N8
\address[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(4),
	o => \address[4]~input_o\);

-- Location: IOIBUF_X24_Y31_N8
\address[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(3),
	o => \address[3]~input_o\);

-- Location: LCCOMB_X21_Y28_N0
\LessThan0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (\address[5]~input_o\) # ((\LessThan1~0_combout\) # ((\address[4]~input_o\) # (\address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[5]~input_o\,
	datab => \LessThan1~0_combout\,
	datac => \address[4]~input_o\,
	datad => \address[3]~input_o\,
	combout => \LessThan0~0_combout\);

-- Location: IOIBUF_X20_Y31_N8
\address[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(0),
	o => \address[0]~input_o\);

-- Location: LCCOMB_X24_Y26_N12
\U_ROM|data_out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ROM|data_out~0_combout\ = (!\address[2]~input_o\ & (!\LessThan0~0_combout\ & ((\address[0]~input_o\) # (!\address[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \LessThan0~0_combout\,
	datac => \address[0]~input_o\,
	datad => \address[1]~input_o\,
	combout => \U_ROM|data_out~0_combout\);

-- Location: FF_X24_Y26_N13
\U_ROM|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ROM|data_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ROM|data_out\(0));

-- Location: LCCOMB_X21_Y28_N14
\data_out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_out~0_combout\ = (!\address[5]~input_o\ & ((\LessThan1~0_combout\ & ((!\address[3]~input_o\) # (!\address[4]~input_o\))) # (!\LessThan1~0_combout\ & ((\address[4]~input_o\) # (\address[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[5]~input_o\,
	datab => \LessThan1~0_combout\,
	datac => \address[4]~input_o\,
	datad => \address[3]~input_o\,
	combout => \data_out~0_combout\);

-- Location: LCCOMB_X21_Y28_N26
\U_RAM|data_out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|data_out~0_combout\ = (\address[5]~input_o\) # ((\LessThan1~0_combout\ & (\address[4]~input_o\ & \address[3]~input_o\)) # (!\LessThan1~0_combout\ & (!\address[4]~input_o\ & !\address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[5]~input_o\,
	datab => \LessThan1~0_combout\,
	datac => \address[4]~input_o\,
	datad => \address[3]~input_o\,
	combout => \U_RAM|data_out~0_combout\);

-- Location: IOIBUF_X26_Y31_N1
\data_in[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(0),
	o => \data_in[0]~input_o\);

-- Location: LCCOMB_X25_Y27_N14
\U_RAM|mem~481\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~481_combout\ = !\data_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[0]~input_o\,
	combout => \U_RAM|mem~481_combout\);

-- Location: IOIBUF_X29_Y31_N8
\we~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_we,
	o => \we~input_o\);

-- Location: LCCOMB_X25_Y26_N12
\U_RAM|mem~436\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~436_combout\ = (\address[2]~input_o\ & (!\address[3]~input_o\ & (\address[0]~input_o\ & \address[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[3]~input_o\,
	datac => \address[0]~input_o\,
	datad => \address[1]~input_o\,
	combout => \U_RAM|mem~436_combout\);

-- Location: LCCOMB_X25_Y26_N6
\U_RAM|mem~437\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~437_combout\ = (!\U_RAM|data_out~0_combout\ & (\we~input_o\ & (\address[4]~input_o\ & \U_RAM|mem~436_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RAM|data_out~0_combout\,
	datab => \we~input_o\,
	datac => \address[4]~input_o\,
	datad => \U_RAM|mem~436_combout\,
	combout => \U_RAM|mem~437_combout\);

-- Location: FF_X25_Y27_N15
\U_RAM|mem~198\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~481_combout\,
	ena => \U_RAM|mem~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~198_q\);

-- Location: LCCOMB_X26_Y27_N0
\U_RAM|mem~478\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~478_combout\ = !\data_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[0]~input_o\,
	combout => \U_RAM|mem~478_combout\);

-- Location: LCCOMB_X24_Y25_N4
\U_RAM|mem~430\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~430_combout\ = (!\address[3]~input_o\ & (\address[2]~input_o\ & (!\address[0]~input_o\ & \address[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \address[2]~input_o\,
	datac => \address[0]~input_o\,
	datad => \address[1]~input_o\,
	combout => \U_RAM|mem~430_combout\);

-- Location: LCCOMB_X24_Y25_N2
\U_RAM|mem~431\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~431_combout\ = (!\U_RAM|data_out~0_combout\ & (\U_RAM|mem~430_combout\ & (\address[4]~input_o\ & \we~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RAM|data_out~0_combout\,
	datab => \U_RAM|mem~430_combout\,
	datac => \address[4]~input_o\,
	datad => \we~input_o\,
	combout => \U_RAM|mem~431_combout\);

-- Location: FF_X26_Y27_N1
\U_RAM|mem~190\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~478_combout\,
	ena => \U_RAM|mem~431_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~190_q\);

-- Location: LCCOMB_X25_Y27_N26
\U_RAM|mem~480\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~480_combout\ = !\data_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[0]~input_o\,
	combout => \U_RAM|mem~480_combout\);

-- Location: LCCOMB_X25_Y25_N8
\U_RAM|mem~434\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~434_combout\ = (\address[2]~input_o\ & (!\address[0]~input_o\ & (!\address[3]~input_o\ & !\address[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[0]~input_o\,
	datac => \address[3]~input_o\,
	datad => \address[1]~input_o\,
	combout => \U_RAM|mem~434_combout\);

-- Location: LCCOMB_X25_Y25_N18
\U_RAM|mem~435\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~435_combout\ = (\address[4]~input_o\ & (!\U_RAM|data_out~0_combout\ & (\U_RAM|mem~434_combout\ & \we~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[4]~input_o\,
	datab => \U_RAM|data_out~0_combout\,
	datac => \U_RAM|mem~434_combout\,
	datad => \we~input_o\,
	combout => \U_RAM|mem~435_combout\);

-- Location: FF_X25_Y27_N1
\U_RAM|mem~174\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~480_combout\,
	sload => VCC,
	ena => \U_RAM|mem~435_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~174_q\);

-- Location: LCCOMB_X24_Y27_N28
\U_RAM|mem~479\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~479_combout\ = !\data_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[0]~input_o\,
	combout => \U_RAM|mem~479_combout\);

-- Location: LCCOMB_X24_Y25_N24
\U_RAM|mem~432\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~432_combout\ = (!\address[3]~input_o\ & (\address[2]~input_o\ & (\address[0]~input_o\ & !\address[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \address[2]~input_o\,
	datac => \address[0]~input_o\,
	datad => \address[1]~input_o\,
	combout => \U_RAM|mem~432_combout\);

-- Location: LCCOMB_X24_Y25_N18
\U_RAM|mem~433\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~433_combout\ = (!\U_RAM|data_out~0_combout\ & (\U_RAM|mem~432_combout\ & (\address[4]~input_o\ & \we~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RAM|data_out~0_combout\,
	datab => \U_RAM|mem~432_combout\,
	datac => \address[4]~input_o\,
	datad => \we~input_o\,
	combout => \U_RAM|mem~433_combout\);

-- Location: FF_X24_Y27_N29
\U_RAM|mem~182\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~479_combout\,
	ena => \U_RAM|mem~433_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~182_q\);

-- Location: LCCOMB_X25_Y27_N0
\U_RAM|mem~270\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~270_combout\ = (\address[1]~input_o\ & (\address[0]~input_o\)) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & ((!\U_RAM|mem~182_q\))) # (!\address[0]~input_o\ & (!\U_RAM|mem~174_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => \U_RAM|mem~174_q\,
	datad => \U_RAM|mem~182_q\,
	combout => \U_RAM|mem~270_combout\);

-- Location: LCCOMB_X25_Y27_N20
\U_RAM|mem~271\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~271_combout\ = (\address[1]~input_o\ & ((\U_RAM|mem~270_combout\ & (!\U_RAM|mem~198_q\)) # (!\U_RAM|mem~270_combout\ & ((!\U_RAM|mem~190_q\))))) # (!\address[1]~input_o\ & (((\U_RAM|mem~270_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \U_RAM|mem~198_q\,
	datac => \U_RAM|mem~190_q\,
	datad => \U_RAM|mem~270_combout\,
	combout => \U_RAM|mem~271_combout\);

-- Location: LCCOMB_X24_Y28_N10
\U_RAM|mem~454\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~454_combout\ = (\address[2]~input_o\ & (!\address[0]~input_o\ & (\address[3]~input_o\ & \address[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[0]~input_o\,
	datac => \address[3]~input_o\,
	datad => \address[1]~input_o\,
	combout => \U_RAM|mem~454_combout\);

-- Location: LCCOMB_X24_Y28_N8
\U_RAM|mem~455\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~455_combout\ = (!\U_RAM|data_out~0_combout\ & (\we~input_o\ & (\address[4]~input_o\ & \U_RAM|mem~454_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RAM|data_out~0_combout\,
	datab => \we~input_o\,
	datac => \address[4]~input_o\,
	datad => \U_RAM|mem~454_combout\,
	combout => \U_RAM|mem~455_combout\);

-- Location: FF_X21_Y26_N5
\U_RAM|mem~254\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_in[0]~input_o\,
	sload => VCC,
	ena => \U_RAM|mem~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~254_q\);

-- Location: LCCOMB_X24_Y28_N30
\U_RAM|mem~460\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~460_combout\ = (\address[2]~input_o\ & (\address[0]~input_o\ & (\address[3]~input_o\ & \address[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[0]~input_o\,
	datac => \address[3]~input_o\,
	datad => \address[1]~input_o\,
	combout => \U_RAM|mem~460_combout\);

-- Location: LCCOMB_X24_Y28_N12
\U_RAM|mem~461\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~461_combout\ = (!\U_RAM|data_out~0_combout\ & (\we~input_o\ & (\U_RAM|mem~460_combout\ & \address[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RAM|data_out~0_combout\,
	datab => \we~input_o\,
	datac => \U_RAM|mem~460_combout\,
	datad => \address[4]~input_o\,
	combout => \U_RAM|mem~461_combout\);

-- Location: FF_X19_Y26_N29
\U_RAM|mem~262\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_in[0]~input_o\,
	sload => VCC,
	ena => \U_RAM|mem~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~262_q\);

-- Location: LCCOMB_X20_Y26_N26
\U_RAM|mem~491\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~491_combout\ = !\data_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[0]~input_o\,
	combout => \U_RAM|mem~491_combout\);

-- Location: LCCOMB_X25_Y25_N16
\U_RAM|mem~458\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~458_combout\ = (\address[2]~input_o\ & (!\address[0]~input_o\ & (\address[3]~input_o\ & !\address[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[0]~input_o\,
	datac => \address[3]~input_o\,
	datad => \address[1]~input_o\,
	combout => \U_RAM|mem~458_combout\);

-- Location: LCCOMB_X25_Y25_N30
\U_RAM|mem~459\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~459_combout\ = (\we~input_o\ & (!\U_RAM|data_out~0_combout\ & (\address[4]~input_o\ & \U_RAM|mem~458_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \we~input_o\,
	datab => \U_RAM|data_out~0_combout\,
	datac => \address[4]~input_o\,
	datad => \U_RAM|mem~458_combout\,
	combout => \U_RAM|mem~459_combout\);

-- Location: FF_X20_Y26_N7
\U_RAM|mem~238\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~491_combout\,
	sload => VCC,
	ena => \U_RAM|mem~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~238_q\);

-- Location: LCCOMB_X20_Y26_N0
\U_RAM|mem~490\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~490_combout\ = !\data_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[0]~input_o\,
	combout => \U_RAM|mem~490_combout\);

-- Location: LCCOMB_X24_Y28_N14
\U_RAM|mem~456\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~456_combout\ = (\address[2]~input_o\ & (\address[0]~input_o\ & (\address[3]~input_o\ & !\address[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[0]~input_o\,
	datac => \address[3]~input_o\,
	datad => \address[1]~input_o\,
	combout => \U_RAM|mem~456_combout\);

-- Location: LCCOMB_X24_Y28_N4
\U_RAM|mem~457\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~457_combout\ = (!\U_RAM|data_out~0_combout\ & (\U_RAM|mem~456_combout\ & (\we~input_o\ & \address[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RAM|data_out~0_combout\,
	datab => \U_RAM|mem~456_combout\,
	datac => \we~input_o\,
	datad => \address[4]~input_o\,
	combout => \U_RAM|mem~457_combout\);

-- Location: FF_X20_Y26_N1
\U_RAM|mem~246\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~490_combout\,
	ena => \U_RAM|mem~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~246_q\);

-- Location: LCCOMB_X20_Y26_N6
\U_RAM|mem~277\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~277_combout\ = (\address[0]~input_o\ & ((\address[1]~input_o\) # ((!\U_RAM|mem~246_q\)))) # (!\address[0]~input_o\ & (!\address[1]~input_o\ & (!\U_RAM|mem~238_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \U_RAM|mem~238_q\,
	datad => \U_RAM|mem~246_q\,
	combout => \U_RAM|mem~277_combout\);

-- Location: LCCOMB_X19_Y26_N28
\U_RAM|mem~278\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~278_combout\ = (\address[1]~input_o\ & ((\U_RAM|mem~277_combout\ & ((\U_RAM|mem~262_q\))) # (!\U_RAM|mem~277_combout\ & (\U_RAM|mem~254_q\)))) # (!\address[1]~input_o\ & (((\U_RAM|mem~277_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \U_RAM|mem~254_q\,
	datac => \U_RAM|mem~262_q\,
	datad => \U_RAM|mem~277_combout\,
	combout => \U_RAM|mem~278_combout\);

-- Location: LCCOMB_X22_Y27_N16
\U_RAM|mem~482\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~482_combout\ = !\data_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[0]~input_o\,
	combout => \U_RAM|mem~482_combout\);

-- Location: LCCOMB_X25_Y26_N16
\U_RAM|mem~438\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~438_combout\ = (!\address[2]~input_o\ & (\address[3]~input_o\ & (!\address[0]~input_o\ & \address[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[3]~input_o\,
	datac => \address[0]~input_o\,
	datad => \address[1]~input_o\,
	combout => \U_RAM|mem~438_combout\);

-- Location: LCCOMB_X25_Y25_N20
\U_RAM|mem~439\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~439_combout\ = (\address[4]~input_o\ & (!\U_RAM|data_out~0_combout\ & (\U_RAM|mem~438_combout\ & \we~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[4]~input_o\,
	datab => \U_RAM|data_out~0_combout\,
	datac => \U_RAM|mem~438_combout\,
	datad => \we~input_o\,
	combout => \U_RAM|mem~439_combout\);

-- Location: FF_X22_Y27_N17
\U_RAM|mem~222\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~482_combout\,
	ena => \U_RAM|mem~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~222_q\);

-- Location: LCCOMB_X23_Y27_N8
\U_RAM|mem~485\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~485_combout\ = !\data_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[0]~input_o\,
	combout => \U_RAM|mem~485_combout\);

-- Location: LCCOMB_X25_Y25_N14
\U_RAM|mem~444\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~444_combout\ = (!\address[2]~input_o\ & (\address[0]~input_o\ & (\address[3]~input_o\ & \address[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[0]~input_o\,
	datac => \address[3]~input_o\,
	datad => \address[1]~input_o\,
	combout => \U_RAM|mem~444_combout\);

-- Location: LCCOMB_X25_Y25_N24
\U_RAM|mem~445\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~445_combout\ = (\address[4]~input_o\ & (!\U_RAM|data_out~0_combout\ & (\U_RAM|mem~444_combout\ & \we~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[4]~input_o\,
	datab => \U_RAM|data_out~0_combout\,
	datac => \U_RAM|mem~444_combout\,
	datad => \we~input_o\,
	combout => \U_RAM|mem~445_combout\);

-- Location: FF_X23_Y27_N15
\U_RAM|mem~230\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~485_combout\,
	sload => VCC,
	ena => \U_RAM|mem~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~230_q\);

-- Location: LCCOMB_X24_Y27_N12
\U_RAM|mem~484\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~484_combout\ = !\data_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[0]~input_o\,
	combout => \U_RAM|mem~484_combout\);

-- Location: LCCOMB_X21_Y28_N18
\U_RAM|mem~442\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~442_combout\ = (!\address[0]~input_o\ & (\address[3]~input_o\ & (!\address[2]~input_o\ & !\address[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[3]~input_o\,
	datac => \address[2]~input_o\,
	datad => \address[1]~input_o\,
	combout => \U_RAM|mem~442_combout\);

-- Location: LCCOMB_X21_Y28_N12
\U_RAM|mem~443\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~443_combout\ = (\address[4]~input_o\ & (\U_RAM|mem~442_combout\ & (!\U_RAM|data_out~0_combout\ & \we~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[4]~input_o\,
	datab => \U_RAM|mem~442_combout\,
	datac => \U_RAM|data_out~0_combout\,
	datad => \we~input_o\,
	combout => \U_RAM|mem~443_combout\);

-- Location: FF_X23_Y27_N25
\U_RAM|mem~206\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~484_combout\,
	sload => VCC,
	ena => \U_RAM|mem~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~206_q\);

-- Location: LCCOMB_X24_Y27_N18
\U_RAM|mem~483\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~483_combout\ = !\data_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[0]~input_o\,
	combout => \U_RAM|mem~483_combout\);

-- Location: LCCOMB_X24_Y25_N0
\U_RAM|mem~440\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~440_combout\ = (\address[3]~input_o\ & (!\address[2]~input_o\ & (\address[0]~input_o\ & !\address[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \address[2]~input_o\,
	datac => \address[0]~input_o\,
	datad => \address[1]~input_o\,
	combout => \U_RAM|mem~440_combout\);

-- Location: LCCOMB_X24_Y27_N0
\U_RAM|mem~441\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~441_combout\ = (\U_RAM|mem~440_combout\ & (\address[4]~input_o\ & (\we~input_o\ & !\U_RAM|data_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RAM|mem~440_combout\,
	datab => \address[4]~input_o\,
	datac => \we~input_o\,
	datad => \U_RAM|data_out~0_combout\,
	combout => \U_RAM|mem~441_combout\);

-- Location: FF_X24_Y27_N19
\U_RAM|mem~214\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~483_combout\,
	ena => \U_RAM|mem~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~214_q\);

-- Location: LCCOMB_X23_Y27_N24
\U_RAM|mem~272\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~272_combout\ = (\address[0]~input_o\ & ((\address[1]~input_o\) # ((!\U_RAM|mem~214_q\)))) # (!\address[0]~input_o\ & (!\address[1]~input_o\ & (!\U_RAM|mem~206_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \U_RAM|mem~206_q\,
	datad => \U_RAM|mem~214_q\,
	combout => \U_RAM|mem~272_combout\);

-- Location: LCCOMB_X23_Y27_N14
\U_RAM|mem~273\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~273_combout\ = (\address[1]~input_o\ & ((\U_RAM|mem~272_combout\ & ((!\U_RAM|mem~230_q\))) # (!\U_RAM|mem~272_combout\ & (!\U_RAM|mem~222_q\)))) # (!\address[1]~input_o\ & (((\U_RAM|mem~272_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RAM|mem~222_q\,
	datab => \address[1]~input_o\,
	datac => \U_RAM|mem~230_q\,
	datad => \U_RAM|mem~272_combout\,
	combout => \U_RAM|mem~273_combout\);

-- Location: LCCOMB_X26_Y28_N4
\U_RAM|mem~486\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~486_combout\ = !\data_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[0]~input_o\,
	combout => \U_RAM|mem~486_combout\);

-- Location: LCCOMB_X20_Y25_N16
\U_RAM|mem~446\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~446_combout\ = (!\address[3]~input_o\ & (!\address[2]~input_o\ & (!\address[0]~input_o\ & \address[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \address[2]~input_o\,
	datac => \address[0]~input_o\,
	datad => \address[1]~input_o\,
	combout => \U_RAM|mem~446_combout\);

-- Location: LCCOMB_X25_Y25_N22
\U_RAM|mem~447\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~447_combout\ = (\we~input_o\ & (\U_RAM|mem~446_combout\ & (\address[4]~input_o\ & !\U_RAM|data_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \we~input_o\,
	datab => \U_RAM|mem~446_combout\,
	datac => \address[4]~input_o\,
	datad => \U_RAM|data_out~0_combout\,
	combout => \U_RAM|mem~447_combout\);

-- Location: FF_X26_Y28_N5
\U_RAM|mem~158\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~486_combout\,
	ena => \U_RAM|mem~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~158_q\);

-- Location: LCCOMB_X25_Y28_N4
\U_RAM|mem~489\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~489_combout\ = !\data_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[0]~input_o\,
	combout => \U_RAM|mem~489_combout\);

-- Location: LCCOMB_X19_Y26_N2
\U_RAM|mem~452\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~452_combout\ = (\address[1]~input_o\ & (\address[0]~input_o\ & (!\address[3]~input_o\ & !\address[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => \address[3]~input_o\,
	datad => \address[2]~input_o\,
	combout => \U_RAM|mem~452_combout\);

-- Location: LCCOMB_X22_Y26_N24
\U_RAM|mem~453\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~453_combout\ = (\address[4]~input_o\ & (\U_RAM|mem~452_combout\ & (!\U_RAM|data_out~0_combout\ & \we~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[4]~input_o\,
	datab => \U_RAM|mem~452_combout\,
	datac => \U_RAM|data_out~0_combout\,
	datad => \we~input_o\,
	combout => \U_RAM|mem~453_combout\);

-- Location: FF_X25_Y28_N27
\U_RAM|mem~166\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~489_combout\,
	sload => VCC,
	ena => \U_RAM|mem~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~166_q\);

-- Location: LCCOMB_X24_Y28_N16
\U_RAM|mem~488\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~488_combout\ = !\data_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[0]~input_o\,
	combout => \U_RAM|mem~488_combout\);

-- Location: LCCOMB_X21_Y28_N2
\U_RAM|mem~450\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~450_combout\ = (!\address[0]~input_o\ & (!\address[3]~input_o\ & (!\address[2]~input_o\ & !\address[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[3]~input_o\,
	datac => \address[2]~input_o\,
	datad => \address[1]~input_o\,
	combout => \U_RAM|mem~450_combout\);

-- Location: LCCOMB_X24_Y28_N28
\U_RAM|mem~451\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~451_combout\ = (!\U_RAM|data_out~0_combout\ & (\U_RAM|mem~450_combout\ & (\we~input_o\ & \address[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RAM|data_out~0_combout\,
	datab => \U_RAM|mem~450_combout\,
	datac => \we~input_o\,
	datad => \address[4]~input_o\,
	combout => \U_RAM|mem~451_combout\);

-- Location: FF_X25_Y28_N29
\U_RAM|mem~142\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~488_combout\,
	sload => VCC,
	ena => \U_RAM|mem~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~142_q\);

-- Location: LCCOMB_X26_Y28_N22
\U_RAM|mem~487\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~487_combout\ = !\data_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[0]~input_o\,
	combout => \U_RAM|mem~487_combout\);

-- Location: LCCOMB_X25_Y26_N2
\U_RAM|mem~448\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~448_combout\ = (!\address[2]~input_o\ & (!\address[3]~input_o\ & (\address[0]~input_o\ & !\address[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[3]~input_o\,
	datac => \address[0]~input_o\,
	datad => \address[1]~input_o\,
	combout => \U_RAM|mem~448_combout\);

-- Location: LCCOMB_X24_Y25_N30
\U_RAM|mem~449\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~449_combout\ = (!\U_RAM|data_out~0_combout\ & (\U_RAM|mem~448_combout\ & (\address[4]~input_o\ & \we~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RAM|data_out~0_combout\,
	datab => \U_RAM|mem~448_combout\,
	datac => \address[4]~input_o\,
	datad => \we~input_o\,
	combout => \U_RAM|mem~449_combout\);

-- Location: FF_X26_Y28_N23
\U_RAM|mem~150\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~487_combout\,
	ena => \U_RAM|mem~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~150_q\);

-- Location: LCCOMB_X25_Y28_N28
\U_RAM|mem~274\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~274_combout\ = (\address[0]~input_o\ & ((\address[1]~input_o\) # ((!\U_RAM|mem~150_q\)))) # (!\address[0]~input_o\ & (!\address[1]~input_o\ & (!\U_RAM|mem~142_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \U_RAM|mem~142_q\,
	datad => \U_RAM|mem~150_q\,
	combout => \U_RAM|mem~274_combout\);

-- Location: LCCOMB_X25_Y28_N26
\U_RAM|mem~275\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~275_combout\ = (\address[1]~input_o\ & ((\U_RAM|mem~274_combout\ & ((!\U_RAM|mem~166_q\))) # (!\U_RAM|mem~274_combout\ & (!\U_RAM|mem~158_q\)))) # (!\address[1]~input_o\ & (((\U_RAM|mem~274_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RAM|mem~158_q\,
	datab => \address[1]~input_o\,
	datac => \U_RAM|mem~166_q\,
	datad => \U_RAM|mem~274_combout\,
	combout => \U_RAM|mem~275_combout\);

-- Location: LCCOMB_X24_Y25_N28
\U_RAM|mem~276\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~276_combout\ = (\address[3]~input_o\ & ((\address[2]~input_o\) # ((\U_RAM|mem~273_combout\)))) # (!\address[3]~input_o\ & (!\address[2]~input_o\ & ((\U_RAM|mem~275_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \address[2]~input_o\,
	datac => \U_RAM|mem~273_combout\,
	datad => \U_RAM|mem~275_combout\,
	combout => \U_RAM|mem~276_combout\);

-- Location: LCCOMB_X24_Y25_N26
\U_RAM|mem~279\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~279_combout\ = (\address[2]~input_o\ & ((\U_RAM|mem~276_combout\ & ((\U_RAM|mem~278_combout\))) # (!\U_RAM|mem~276_combout\ & (\U_RAM|mem~271_combout\)))) # (!\address[2]~input_o\ & (((\U_RAM|mem~276_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RAM|mem~271_combout\,
	datab => \address[2]~input_o\,
	datac => \U_RAM|mem~278_combout\,
	datad => \U_RAM|mem~276_combout\,
	combout => \U_RAM|mem~279_combout\);

-- Location: LCCOMB_X25_Y25_N12
\U_RAM|mem~498\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~498_combout\ = !\data_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[0]~input_o\,
	combout => \U_RAM|mem~498_combout\);

-- Location: LCCOMB_X24_Y28_N24
\U_RAM|mem~474\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~474_combout\ = (!\U_RAM|data_out~0_combout\ & (\we~input_o\ & (!\address[4]~input_o\ & \U_RAM|mem~454_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RAM|data_out~0_combout\,
	datab => \we~input_o\,
	datac => \address[4]~input_o\,
	datad => \U_RAM|mem~454_combout\,
	combout => \U_RAM|mem~474_combout\);

-- Location: FF_X25_Y25_N13
\U_RAM|mem~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~498_combout\,
	ena => \U_RAM|mem~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~126_q\);

-- Location: LCCOMB_X22_Y28_N30
\U_RAM|mem~501\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~501_combout\ = !\data_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[0]~input_o\,
	combout => \U_RAM|mem~501_combout\);

-- Location: LCCOMB_X24_Y28_N18
\U_RAM|mem~477\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~477_combout\ = (!\U_RAM|data_out~0_combout\ & (\we~input_o\ & (\U_RAM|mem~460_combout\ & !\address[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RAM|data_out~0_combout\,
	datab => \we~input_o\,
	datac => \U_RAM|mem~460_combout\,
	datad => \address[4]~input_o\,
	combout => \U_RAM|mem~477_combout\);

-- Location: FF_X25_Y25_N7
\U_RAM|mem~134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~501_combout\,
	sload => VCC,
	ena => \U_RAM|mem~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~134_q\);

-- Location: LCCOMB_X21_Y26_N8
\U_RAM|mem~500\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~500_combout\ = !\data_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[0]~input_o\,
	combout => \U_RAM|mem~500_combout\);

-- Location: LCCOMB_X23_Y25_N4
\U_RAM|mem~476\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~476_combout\ = (\U_RAM|mem~430_combout\ & (!\address[4]~input_o\ & (!\U_RAM|data_out~0_combout\ & \we~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RAM|mem~430_combout\,
	datab => \address[4]~input_o\,
	datac => \U_RAM|data_out~0_combout\,
	datad => \we~input_o\,
	combout => \U_RAM|mem~476_combout\);

-- Location: FF_X21_Y25_N23
\U_RAM|mem~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~500_combout\,
	sload => VCC,
	ena => \U_RAM|mem~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~62_q\);

-- Location: LCCOMB_X21_Y25_N12
\U_RAM|mem~499\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~499_combout\ = !\data_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[0]~input_o\,
	combout => \U_RAM|mem~499_combout\);

-- Location: LCCOMB_X24_Y27_N6
\U_RAM|mem~475\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~475_combout\ = (\we~input_o\ & (\U_RAM|mem~436_combout\ & (!\address[4]~input_o\ & !\U_RAM|data_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \we~input_o\,
	datab => \U_RAM|mem~436_combout\,
	datac => \address[4]~input_o\,
	datad => \U_RAM|data_out~0_combout\,
	combout => \U_RAM|mem~475_combout\);

-- Location: FF_X21_Y25_N13
\U_RAM|mem~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~499_combout\,
	ena => \U_RAM|mem~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~70_q\);

-- Location: LCCOMB_X21_Y25_N22
\U_RAM|mem~287\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~287_combout\ = (\address[3]~input_o\ & (\address[0]~input_o\)) # (!\address[3]~input_o\ & ((\address[0]~input_o\ & ((!\U_RAM|mem~70_q\))) # (!\address[0]~input_o\ & (!\U_RAM|mem~62_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \address[0]~input_o\,
	datac => \U_RAM|mem~62_q\,
	datad => \U_RAM|mem~70_q\,
	combout => \U_RAM|mem~287_combout\);

-- Location: LCCOMB_X25_Y25_N6
\U_RAM|mem~288\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~288_combout\ = (\address[3]~input_o\ & ((\U_RAM|mem~287_combout\ & ((!\U_RAM|mem~134_q\))) # (!\U_RAM|mem~287_combout\ & (!\U_RAM|mem~126_q\)))) # (!\address[3]~input_o\ & (((\U_RAM|mem~287_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RAM|mem~126_q\,
	datab => \address[3]~input_o\,
	datac => \U_RAM|mem~134_q\,
	datad => \U_RAM|mem~287_combout\,
	combout => \U_RAM|mem~288_combout\);

-- Location: LCCOMB_X24_Y25_N16
\U_RAM|mem~462\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~462_combout\ = (!\U_RAM|data_out~0_combout\ & (\U_RAM|mem~432_combout\ & (!\address[4]~input_o\ & \we~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RAM|data_out~0_combout\,
	datab => \U_RAM|mem~432_combout\,
	datac => \address[4]~input_o\,
	datad => \we~input_o\,
	combout => \U_RAM|mem~462_combout\);

-- Location: FF_X23_Y29_N13
\U_RAM|mem~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_in[0]~input_o\,
	sload => VCC,
	ena => \U_RAM|mem~462_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~54_q\);

-- Location: LCCOMB_X23_Y29_N6
\U_RAM|mem~493\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~493_combout\ = !\data_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[0]~input_o\,
	combout => \U_RAM|mem~493_combout\);

-- Location: LCCOMB_X24_Y28_N26
\U_RAM|mem~465\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~465_combout\ = (!\U_RAM|data_out~0_combout\ & (\U_RAM|mem~456_combout\ & (\we~input_o\ & !\address[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RAM|data_out~0_combout\,
	datab => \U_RAM|mem~456_combout\,
	datac => \we~input_o\,
	datad => \address[4]~input_o\,
	combout => \U_RAM|mem~465_combout\);

-- Location: FF_X23_Y29_N7
\U_RAM|mem~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~493_combout\,
	ena => \U_RAM|mem~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~118_q\);

-- Location: LCCOMB_X25_Y25_N2
\U_RAM|mem~464\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~464_combout\ = (!\address[4]~input_o\ & (!\U_RAM|data_out~0_combout\ & (\U_RAM|mem~434_combout\ & \we~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[4]~input_o\,
	datab => \U_RAM|data_out~0_combout\,
	datac => \U_RAM|mem~434_combout\,
	datad => \we~input_o\,
	combout => \U_RAM|mem~464_combout\);

-- Location: FF_X23_Y28_N3
\U_RAM|mem~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_in[0]~input_o\,
	sload => VCC,
	ena => \U_RAM|mem~464_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~46_q\);

-- Location: LCCOMB_X23_Y28_N12
\U_RAM|mem~492\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~492_combout\ = !\data_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[0]~input_o\,
	combout => \U_RAM|mem~492_combout\);

-- Location: LCCOMB_X25_Y25_N0
\U_RAM|mem~463\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~463_combout\ = (\we~input_o\ & (!\U_RAM|data_out~0_combout\ & (!\address[4]~input_o\ & \U_RAM|mem~458_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \we~input_o\,
	datab => \U_RAM|data_out~0_combout\,
	datac => \address[4]~input_o\,
	datad => \U_RAM|mem~458_combout\,
	combout => \U_RAM|mem~463_combout\);

-- Location: FF_X23_Y28_N13
\U_RAM|mem~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~492_combout\,
	ena => \U_RAM|mem~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~110_q\);

-- Location: LCCOMB_X23_Y28_N2
\U_RAM|mem~280\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~280_combout\ = (\address[0]~input_o\ & (\address[3]~input_o\)) # (!\address[0]~input_o\ & ((\address[3]~input_o\ & ((!\U_RAM|mem~110_q\))) # (!\address[3]~input_o\ & (\U_RAM|mem~46_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[3]~input_o\,
	datac => \U_RAM|mem~46_q\,
	datad => \U_RAM|mem~110_q\,
	combout => \U_RAM|mem~280_combout\);

-- Location: LCCOMB_X24_Y25_N8
\U_RAM|mem~281\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~281_combout\ = (\address[0]~input_o\ & ((\U_RAM|mem~280_combout\ & ((!\U_RAM|mem~118_q\))) # (!\U_RAM|mem~280_combout\ & (\U_RAM|mem~54_q\)))) # (!\address[0]~input_o\ & (((\U_RAM|mem~280_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RAM|mem~54_q\,
	datab => \address[0]~input_o\,
	datac => \U_RAM|mem~118_q\,
	datad => \U_RAM|mem~280_combout\,
	combout => \U_RAM|mem~281_combout\);

-- Location: LCCOMB_X24_Y29_N20
\U_RAM|mem~496\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~496_combout\ = !\data_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[0]~input_o\,
	combout => \U_RAM|mem~496_combout\);

-- Location: LCCOMB_X22_Y28_N20
\U_RAM|mem~470\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~470_combout\ = (!\U_RAM|data_out~0_combout\ & (\U_RAM|mem~442_combout\ & (\we~input_o\ & !\address[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RAM|data_out~0_combout\,
	datab => \U_RAM|mem~442_combout\,
	datac => \we~input_o\,
	datad => \address[4]~input_o\,
	combout => \U_RAM|mem~470_combout\);

-- Location: FF_X24_Y29_N21
\U_RAM|mem~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~496_combout\,
	ena => \U_RAM|mem~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~78_q\);

-- Location: LCCOMB_X26_Y26_N30
\U_RAM|mem~497\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~497_combout\ = !\data_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[0]~input_o\,
	combout => \U_RAM|mem~497_combout\);

-- Location: LCCOMB_X24_Y25_N22
\U_RAM|mem~473\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~473_combout\ = (!\U_RAM|data_out~0_combout\ & (\U_RAM|mem~440_combout\ & (!\address[4]~input_o\ & \we~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RAM|data_out~0_combout\,
	datab => \U_RAM|mem~440_combout\,
	datac => \address[4]~input_o\,
	datad => \we~input_o\,
	combout => \U_RAM|mem~473_combout\);

-- Location: FF_X24_Y25_N15
\U_RAM|mem~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~497_combout\,
	sload => VCC,
	ena => \U_RAM|mem~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~86_q\);

-- Location: LCCOMB_X24_Y28_N2
\U_RAM|mem~472\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~472_combout\ = (!\U_RAM|data_out~0_combout\ & (\U_RAM|mem~450_combout\ & (\we~input_o\ & !\address[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RAM|data_out~0_combout\,
	datab => \U_RAM|mem~450_combout\,
	datac => \we~input_o\,
	datad => \address[4]~input_o\,
	combout => \U_RAM|mem~472_combout\);

-- Location: FF_X24_Y28_N7
\U_RAM|mem~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_in[0]~input_o\,
	sload => VCC,
	ena => \U_RAM|mem~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~14_q\);

-- Location: LCCOMB_X24_Y28_N0
\U_RAM|mem~471\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~471_combout\ = (!\U_RAM|data_out~0_combout\ & (\we~input_o\ & (!\address[4]~input_o\ & \U_RAM|mem~448_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RAM|data_out~0_combout\,
	datab => \we~input_o\,
	datac => \address[4]~input_o\,
	datad => \U_RAM|mem~448_combout\,
	combout => \U_RAM|mem~471_combout\);

-- Location: FF_X24_Y28_N21
\U_RAM|mem~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_in[0]~input_o\,
	sload => VCC,
	ena => \U_RAM|mem~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~22_q\);

-- Location: LCCOMB_X24_Y28_N6
\U_RAM|mem~284\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~284_combout\ = (\address[0]~input_o\ & ((\address[3]~input_o\) # ((\U_RAM|mem~22_q\)))) # (!\address[0]~input_o\ & (!\address[3]~input_o\ & (\U_RAM|mem~14_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[3]~input_o\,
	datac => \U_RAM|mem~14_q\,
	datad => \U_RAM|mem~22_q\,
	combout => \U_RAM|mem~284_combout\);

-- Location: LCCOMB_X24_Y25_N14
\U_RAM|mem~285\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~285_combout\ = (\address[3]~input_o\ & ((\U_RAM|mem~284_combout\ & ((!\U_RAM|mem~86_q\))) # (!\U_RAM|mem~284_combout\ & (!\U_RAM|mem~78_q\)))) # (!\address[3]~input_o\ & (((\U_RAM|mem~284_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \U_RAM|mem~78_q\,
	datac => \U_RAM|mem~86_q\,
	datad => \U_RAM|mem~284_combout\,
	combout => \U_RAM|mem~285_combout\);

-- Location: LCCOMB_X23_Y25_N12
\U_RAM|mem~494\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~494_combout\ = !\data_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[0]~input_o\,
	combout => \U_RAM|mem~494_combout\);

-- Location: LCCOMB_X25_Y25_N4
\U_RAM|mem~466\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~466_combout\ = (!\address[4]~input_o\ & (!\U_RAM|data_out~0_combout\ & (\U_RAM|mem~438_combout\ & \we~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[4]~input_o\,
	datab => \U_RAM|data_out~0_combout\,
	datac => \U_RAM|mem~438_combout\,
	datad => \we~input_o\,
	combout => \U_RAM|mem~466_combout\);

-- Location: FF_X23_Y25_N13
\U_RAM|mem~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~494_combout\,
	ena => \U_RAM|mem~466_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~94_q\);

-- Location: LCCOMB_X23_Y25_N30
\U_RAM|mem~495\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~495_combout\ = !\data_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[0]~input_o\,
	combout => \U_RAM|mem~495_combout\);

-- Location: LCCOMB_X25_Y25_N28
\U_RAM|mem~469\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~469_combout\ = (!\address[4]~input_o\ & (!\U_RAM|data_out~0_combout\ & (\U_RAM|mem~444_combout\ & \we~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[4]~input_o\,
	datab => \U_RAM|data_out~0_combout\,
	datac => \U_RAM|mem~444_combout\,
	datad => \we~input_o\,
	combout => \U_RAM|mem~469_combout\);

-- Location: FF_X23_Y25_N15
\U_RAM|mem~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~495_combout\,
	sload => VCC,
	ena => \U_RAM|mem~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~102_q\);

-- Location: LCCOMB_X25_Y25_N26
\U_RAM|mem~468\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~468_combout\ = (\we~input_o\ & (\U_RAM|mem~446_combout\ & (!\address[4]~input_o\ & !\U_RAM|data_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \we~input_o\,
	datab => \U_RAM|mem~446_combout\,
	datac => \address[4]~input_o\,
	datad => \U_RAM|data_out~0_combout\,
	combout => \U_RAM|mem~468_combout\);

-- Location: FF_X22_Y25_N13
\U_RAM|mem~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_in[0]~input_o\,
	sload => VCC,
	ena => \U_RAM|mem~468_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~30_q\);

-- Location: LCCOMB_X22_Y26_N6
\U_RAM|mem~467\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~467_combout\ = (!\address[4]~input_o\ & (\U_RAM|mem~452_combout\ & (!\U_RAM|data_out~0_combout\ & \we~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[4]~input_o\,
	datab => \U_RAM|mem~452_combout\,
	datac => \U_RAM|data_out~0_combout\,
	datad => \we~input_o\,
	combout => \U_RAM|mem~467_combout\);

-- Location: FF_X20_Y25_N5
\U_RAM|mem~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_in[0]~input_o\,
	sload => VCC,
	ena => \U_RAM|mem~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~38_q\);

-- Location: LCCOMB_X22_Y25_N12
\U_RAM|mem~282\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~282_combout\ = (\address[3]~input_o\ & (\address[0]~input_o\)) # (!\address[3]~input_o\ & ((\address[0]~input_o\ & ((\U_RAM|mem~38_q\))) # (!\address[0]~input_o\ & (\U_RAM|mem~30_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \address[0]~input_o\,
	datac => \U_RAM|mem~30_q\,
	datad => \U_RAM|mem~38_q\,
	combout => \U_RAM|mem~282_combout\);

-- Location: LCCOMB_X23_Y25_N14
\U_RAM|mem~283\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~283_combout\ = (\address[3]~input_o\ & ((\U_RAM|mem~282_combout\ & ((!\U_RAM|mem~102_q\))) # (!\U_RAM|mem~282_combout\ & (!\U_RAM|mem~94_q\)))) # (!\address[3]~input_o\ & (((\U_RAM|mem~282_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RAM|mem~94_q\,
	datab => \address[3]~input_o\,
	datac => \U_RAM|mem~102_q\,
	datad => \U_RAM|mem~282_combout\,
	combout => \U_RAM|mem~283_combout\);

-- Location: LCCOMB_X24_Y25_N12
\U_RAM|mem~286\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~286_combout\ = (\address[1]~input_o\ & ((\address[2]~input_o\) # ((\U_RAM|mem~283_combout\)))) # (!\address[1]~input_o\ & (!\address[2]~input_o\ & (\U_RAM|mem~285_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[2]~input_o\,
	datac => \U_RAM|mem~285_combout\,
	datad => \U_RAM|mem~283_combout\,
	combout => \U_RAM|mem~286_combout\);

-- Location: LCCOMB_X24_Y25_N6
\U_RAM|mem~289\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~289_combout\ = (\address[2]~input_o\ & ((\U_RAM|mem~286_combout\ & (\U_RAM|mem~288_combout\)) # (!\U_RAM|mem~286_combout\ & ((\U_RAM|mem~281_combout\))))) # (!\address[2]~input_o\ & (((\U_RAM|mem~286_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RAM|mem~288_combout\,
	datab => \address[2]~input_o\,
	datac => \U_RAM|mem~281_combout\,
	datad => \U_RAM|mem~286_combout\,
	combout => \U_RAM|mem~289_combout\);

-- Location: LCCOMB_X24_Y25_N20
\U_RAM|data_out~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|data_out~1_combout\ = (\U_RAM|data_out~0_combout\) # ((\address[4]~input_o\ & (\U_RAM|mem~279_combout\)) # (!\address[4]~input_o\ & ((\U_RAM|mem~289_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RAM|data_out~0_combout\,
	datab => \address[4]~input_o\,
	datac => \U_RAM|mem~279_combout\,
	datad => \U_RAM|mem~289_combout\,
	combout => \U_RAM|data_out~1_combout\);

-- Location: FF_X24_Y25_N21
\U_RAM|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|data_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|data_out\(0));

-- Location: LCCOMB_X24_Y25_N10
\data_out~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_out~1_combout\ = (\U_ROM|data_out\(0) & (((\data_out~0_combout\ & \U_RAM|data_out\(0))) # (!\LessThan0~0_combout\))) # (!\U_ROM|data_out\(0) & (\data_out~0_combout\ & ((\U_RAM|data_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ROM|data_out\(0),
	datab => \data_out~0_combout\,
	datac => \LessThan0~0_combout\,
	datad => \U_RAM|data_out\(0),
	combout => \data_out~1_combout\);

-- Location: IOIBUF_X24_Y31_N1
\data_in[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(1),
	o => \data_in[1]~input_o\);

-- Location: LCCOMB_X18_Y26_N24
\U_RAM|mem~255feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~255feeder_combout\ = \data_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[1]~input_o\,
	combout => \U_RAM|mem~255feeder_combout\);

-- Location: FF_X18_Y26_N25
\U_RAM|mem~255\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~255feeder_combout\,
	ena => \U_RAM|mem~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~255_q\);

-- Location: FF_X19_Y26_N15
\U_RAM|mem~263\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_in[1]~input_o\,
	sload => VCC,
	ena => \U_RAM|mem~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~263_q\);

-- Location: LCCOMB_X19_Y26_N16
\U_RAM|mem~515\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~515_combout\ = !\data_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[1]~input_o\,
	combout => \U_RAM|mem~515_combout\);

-- Location: FF_X20_Y26_N19
\U_RAM|mem~239\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~515_combout\,
	sload => VCC,
	ena => \U_RAM|mem~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~239_q\);

-- Location: LCCOMB_X22_Y29_N10
\U_RAM|mem~514\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~514_combout\ = !\data_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[1]~input_o\,
	combout => \U_RAM|mem~514_combout\);

-- Location: FF_X20_Y26_N21
\U_RAM|mem~247\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~514_combout\,
	sload => VCC,
	ena => \U_RAM|mem~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~247_q\);

-- Location: LCCOMB_X20_Y26_N18
\U_RAM|mem~297\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~297_combout\ = (\address[0]~input_o\ & ((\address[1]~input_o\) # ((!\U_RAM|mem~247_q\)))) # (!\address[0]~input_o\ & (!\address[1]~input_o\ & (!\U_RAM|mem~239_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \U_RAM|mem~239_q\,
	datad => \U_RAM|mem~247_q\,
	combout => \U_RAM|mem~297_combout\);

-- Location: LCCOMB_X19_Y26_N14
\U_RAM|mem~298\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~298_combout\ = (\address[1]~input_o\ & ((\U_RAM|mem~297_combout\ & ((\U_RAM|mem~263_q\))) # (!\U_RAM|mem~297_combout\ & (\U_RAM|mem~255_q\)))) # (!\address[1]~input_o\ & (((\U_RAM|mem~297_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \U_RAM|mem~255_q\,
	datac => \U_RAM|mem~263_q\,
	datad => \U_RAM|mem~297_combout\,
	combout => \U_RAM|mem~298_combout\);

-- Location: LCCOMB_X22_Y27_N6
\U_RAM|mem~505\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~505_combout\ = !\data_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[1]~input_o\,
	combout => \U_RAM|mem~505_combout\);

-- Location: FF_X23_Y27_N7
\U_RAM|mem~231\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~505_combout\,
	sload => VCC,
	ena => \U_RAM|mem~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~231_q\);

-- Location: LCCOMB_X23_Y28_N26
\U_RAM|mem~502\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~502_combout\ = !\data_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[1]~input_o\,
	combout => \U_RAM|mem~502_combout\);

-- Location: FF_X24_Y27_N25
\U_RAM|mem~215\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~502_combout\,
	sload => VCC,
	ena => \U_RAM|mem~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~215_q\);

-- Location: LCCOMB_X23_Y27_N22
\U_RAM|mem~504\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~504_combout\ = !\data_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[1]~input_o\,
	combout => \U_RAM|mem~504_combout\);

-- Location: FF_X23_Y27_N21
\U_RAM|mem~207\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~504_combout\,
	sload => VCC,
	ena => \U_RAM|mem~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~207_q\);

-- Location: LCCOMB_X22_Y27_N18
\U_RAM|mem~503\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~503_combout\ = !\data_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[1]~input_o\,
	combout => \U_RAM|mem~503_combout\);

-- Location: FF_X22_Y27_N19
\U_RAM|mem~223\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~503_combout\,
	ena => \U_RAM|mem~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~223_q\);

-- Location: LCCOMB_X23_Y27_N20
\U_RAM|mem~290\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~290_combout\ = (\address[0]~input_o\ & (\address[1]~input_o\)) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & ((!\U_RAM|mem~223_q\))) # (!\address[1]~input_o\ & (!\U_RAM|mem~207_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \U_RAM|mem~207_q\,
	datad => \U_RAM|mem~223_q\,
	combout => \U_RAM|mem~290_combout\);

-- Location: LCCOMB_X24_Y27_N24
\U_RAM|mem~291\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~291_combout\ = (\address[0]~input_o\ & ((\U_RAM|mem~290_combout\ & (!\U_RAM|mem~231_q\)) # (!\U_RAM|mem~290_combout\ & ((!\U_RAM|mem~215_q\))))) # (!\address[0]~input_o\ & (((\U_RAM|mem~290_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RAM|mem~231_q\,
	datab => \address[0]~input_o\,
	datac => \U_RAM|mem~215_q\,
	datad => \U_RAM|mem~290_combout\,
	combout => \U_RAM|mem~291_combout\);

-- Location: LCCOMB_X26_Y27_N22
\U_RAM|mem~506\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~506_combout\ = !\data_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[1]~input_o\,
	combout => \U_RAM|mem~506_combout\);

-- Location: FF_X26_Y27_N23
\U_RAM|mem~191\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~506_combout\,
	ena => \U_RAM|mem~431_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~191_q\);

-- Location: LCCOMB_X23_Y29_N26
\U_RAM|mem~509\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~509_combout\ = !\data_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[1]~input_o\,
	combout => \U_RAM|mem~509_combout\);

-- Location: FF_X25_Y27_N5
\U_RAM|mem~199\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~509_combout\,
	sload => VCC,
	ena => \U_RAM|mem~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~199_q\);

-- Location: LCCOMB_X23_Y27_N26
\U_RAM|mem~508\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~508_combout\ = !\data_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in[1]~input_o\,
	combout => \U_RAM|mem~508_combout\);

-- Location: FF_X25_Y27_N7
\U_RAM|mem~175\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~508_combout\,
	sload => VCC,
	ena => \U_RAM|mem~435_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~175_q\);

-- Location: LCCOMB_X24_Y27_N14
\U_RAM|mem~507\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~507_combout\ = !\data_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[1]~input_o\,
	combout => \U_RAM|mem~507_combout\);

-- Location: FF_X24_Y27_N15
\U_RAM|mem~183\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~507_combout\,
	ena => \U_RAM|mem~433_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~183_q\);

-- Location: LCCOMB_X25_Y27_N6
\U_RAM|mem~292\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~292_combout\ = (\address[1]~input_o\ & (\address[0]~input_o\)) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & ((!\U_RAM|mem~183_q\))) # (!\address[0]~input_o\ & (!\U_RAM|mem~175_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => \U_RAM|mem~175_q\,
	datad => \U_RAM|mem~183_q\,
	combout => \U_RAM|mem~292_combout\);

-- Location: LCCOMB_X25_Y27_N4
\U_RAM|mem~293\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~293_combout\ = (\address[1]~input_o\ & ((\U_RAM|mem~292_combout\ & ((!\U_RAM|mem~199_q\))) # (!\U_RAM|mem~292_combout\ & (!\U_RAM|mem~191_q\)))) # (!\address[1]~input_o\ & (((\U_RAM|mem~292_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \U_RAM|mem~191_q\,
	datac => \U_RAM|mem~199_q\,
	datad => \U_RAM|mem~292_combout\,
	combout => \U_RAM|mem~293_combout\);

-- Location: LCCOMB_X26_Y28_N0
\U_RAM|mem~510\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~510_combout\ = !\data_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[1]~input_o\,
	combout => \U_RAM|mem~510_combout\);

-- Location: FF_X26_Y28_N1
\U_RAM|mem~151\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~510_combout\,
	ena => \U_RAM|mem~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~151_q\);

-- Location: LCCOMB_X24_Y30_N16
\U_RAM|mem~513\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~513_combout\ = !\data_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[1]~input_o\,
	combout => \U_RAM|mem~513_combout\);

-- Location: FF_X25_Y28_N19
\U_RAM|mem~167\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~513_combout\,
	sload => VCC,
	ena => \U_RAM|mem~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~167_q\);

-- Location: LCCOMB_X23_Y28_N28
\U_RAM|mem~512\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~512_combout\ = !\data_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[1]~input_o\,
	combout => \U_RAM|mem~512_combout\);

-- Location: FF_X25_Y28_N25
\U_RAM|mem~143\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~512_combout\,
	sload => VCC,
	ena => \U_RAM|mem~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~143_q\);

-- Location: LCCOMB_X26_Y28_N2
\U_RAM|mem~511\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~511_combout\ = !\data_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[1]~input_o\,
	combout => \U_RAM|mem~511_combout\);

-- Location: FF_X26_Y28_N3
\U_RAM|mem~159\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~511_combout\,
	ena => \U_RAM|mem~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~159_q\);

-- Location: LCCOMB_X25_Y28_N24
\U_RAM|mem~294\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~294_combout\ = (\address[0]~input_o\ & (\address[1]~input_o\)) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & ((!\U_RAM|mem~159_q\))) # (!\address[1]~input_o\ & (!\U_RAM|mem~143_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \U_RAM|mem~143_q\,
	datad => \U_RAM|mem~159_q\,
	combout => \U_RAM|mem~294_combout\);

-- Location: LCCOMB_X25_Y28_N18
\U_RAM|mem~295\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~295_combout\ = (\address[0]~input_o\ & ((\U_RAM|mem~294_combout\ & ((!\U_RAM|mem~167_q\))) # (!\U_RAM|mem~294_combout\ & (!\U_RAM|mem~151_q\)))) # (!\address[0]~input_o\ & (((\U_RAM|mem~294_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \U_RAM|mem~151_q\,
	datac => \U_RAM|mem~167_q\,
	datad => \U_RAM|mem~294_combout\,
	combout => \U_RAM|mem~295_combout\);

-- Location: LCCOMB_X24_Y26_N2
\U_RAM|mem~296\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~296_combout\ = (\address[2]~input_o\ & ((\address[3]~input_o\) # ((\U_RAM|mem~293_combout\)))) # (!\address[2]~input_o\ & (!\address[3]~input_o\ & ((\U_RAM|mem~295_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[3]~input_o\,
	datac => \U_RAM|mem~293_combout\,
	datad => \U_RAM|mem~295_combout\,
	combout => \U_RAM|mem~296_combout\);

-- Location: LCCOMB_X24_Y26_N8
\U_RAM|mem~299\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~299_combout\ = (\address[3]~input_o\ & ((\U_RAM|mem~296_combout\ & (\U_RAM|mem~298_combout\)) # (!\U_RAM|mem~296_combout\ & ((\U_RAM|mem~291_combout\))))) # (!\address[3]~input_o\ & (((\U_RAM|mem~296_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RAM|mem~298_combout\,
	datab => \address[3]~input_o\,
	datac => \U_RAM|mem~291_combout\,
	datad => \U_RAM|mem~296_combout\,
	combout => \U_RAM|mem~299_combout\);

-- Location: LCCOMB_X22_Y25_N28
\U_RAM|mem~518\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~518_combout\ = !\data_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[1]~input_o\,
	combout => \U_RAM|mem~518_combout\);

-- Location: FF_X22_Y25_N29
\U_RAM|mem~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~518_combout\,
	ena => \U_RAM|mem~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~127_q\);

-- Location: LCCOMB_X21_Y25_N26
\U_RAM|mem~516\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~516_combout\ = !\data_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[1]~input_o\,
	combout => \U_RAM|mem~516_combout\);

-- Location: FF_X21_Y25_N1
\U_RAM|mem~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~516_combout\,
	sload => VCC,
	ena => \U_RAM|mem~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~63_q\);

-- Location: FF_X22_Y25_N27
\U_RAM|mem~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_in[1]~input_o\,
	sload => VCC,
	ena => \U_RAM|mem~468_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~31_q\);

-- Location: LCCOMB_X23_Y25_N24
\U_RAM|mem~517\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~517_combout\ = !\data_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[1]~input_o\,
	combout => \U_RAM|mem~517_combout\);

-- Location: FF_X23_Y25_N25
\U_RAM|mem~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~517_combout\,
	ena => \U_RAM|mem~466_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~95_q\);

-- Location: LCCOMB_X22_Y25_N26
\U_RAM|mem~300\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~300_combout\ = (\address[3]~input_o\ & ((\address[2]~input_o\) # ((!\U_RAM|mem~95_q\)))) # (!\address[3]~input_o\ & (!\address[2]~input_o\ & (\U_RAM|mem~31_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \address[2]~input_o\,
	datac => \U_RAM|mem~31_q\,
	datad => \U_RAM|mem~95_q\,
	combout => \U_RAM|mem~300_combout\);

-- Location: LCCOMB_X21_Y25_N0
\U_RAM|mem~301\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~301_combout\ = (\address[2]~input_o\ & ((\U_RAM|mem~300_combout\ & (!\U_RAM|mem~127_q\)) # (!\U_RAM|mem~300_combout\ & ((!\U_RAM|mem~63_q\))))) # (!\address[2]~input_o\ & (((\U_RAM|mem~300_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \U_RAM|mem~127_q\,
	datac => \U_RAM|mem~63_q\,
	datad => \U_RAM|mem~300_combout\,
	combout => \U_RAM|mem~301_combout\);

-- Location: FF_X20_Y25_N27
\U_RAM|mem~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_in[1]~input_o\,
	sload => VCC,
	ena => \U_RAM|mem~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~39_q\);

-- Location: LCCOMB_X19_Y25_N24
\U_RAM|mem~524\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~524_combout\ = !\data_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[1]~input_o\,
	combout => \U_RAM|mem~524_combout\);

-- Location: FF_X19_Y25_N25
\U_RAM|mem~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~524_combout\,
	ena => \U_RAM|mem~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~103_q\);

-- Location: LCCOMB_X20_Y25_N26
\U_RAM|mem~307\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~307_combout\ = (\address[3]~input_o\ & ((\address[2]~input_o\) # ((!\U_RAM|mem~103_q\)))) # (!\address[3]~input_o\ & (!\address[2]~input_o\ & (\U_RAM|mem~39_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \address[2]~input_o\,
	datac => \U_RAM|mem~39_q\,
	datad => \U_RAM|mem~103_q\,
	combout => \U_RAM|mem~307_combout\);

-- Location: LCCOMB_X21_Y27_N22
\U_RAM|mem~525\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~525_combout\ = !\data_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[1]~input_o\,
	combout => \U_RAM|mem~525_combout\);

-- Location: FF_X20_Y25_N21
\U_RAM|mem~135\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~525_combout\,
	sload => VCC,
	ena => \U_RAM|mem~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~135_q\);

-- Location: LCCOMB_X21_Y25_N6
\U_RAM|mem~523\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~523_combout\ = !\data_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[1]~input_o\,
	combout => \U_RAM|mem~523_combout\);

-- Location: FF_X21_Y25_N7
\U_RAM|mem~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~523_combout\,
	ena => \U_RAM|mem~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~71_q\);

-- Location: LCCOMB_X20_Y25_N20
\U_RAM|mem~308\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~308_combout\ = (\U_RAM|mem~307_combout\ & (((!\U_RAM|mem~135_q\)) # (!\address[2]~input_o\))) # (!\U_RAM|mem~307_combout\ & (\address[2]~input_o\ & ((!\U_RAM|mem~71_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RAM|mem~307_combout\,
	datab => \address[2]~input_o\,
	datac => \U_RAM|mem~135_q\,
	datad => \U_RAM|mem~71_q\,
	combout => \U_RAM|mem~308_combout\);

-- Location: FF_X23_Y28_N9
\U_RAM|mem~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_in[1]~input_o\,
	sload => VCC,
	ena => \U_RAM|mem~464_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~47_q\);

-- Location: LCCOMB_X23_Y28_N8
\U_RAM|mem~522\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~522_combout\ = !\data_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[1]~input_o\,
	combout => \U_RAM|mem~522_combout\);

-- Location: FF_X24_Y26_N23
\U_RAM|mem~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~522_combout\,
	sload => VCC,
	ena => \U_RAM|mem~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~111_q\);

-- Location: FF_X22_Y28_N19
\U_RAM|mem~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_in[1]~input_o\,
	sload => VCC,
	ena => \U_RAM|mem~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~15_q\);

-- Location: LCCOMB_X22_Y28_N12
\U_RAM|mem~521\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~521_combout\ = !\data_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[1]~input_o\,
	combout => \U_RAM|mem~521_combout\);

-- Location: FF_X22_Y28_N13
\U_RAM|mem~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~521_combout\,
	ena => \U_RAM|mem~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~79_q\);

-- Location: LCCOMB_X22_Y28_N18
\U_RAM|mem~304\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~304_combout\ = (\address[3]~input_o\ & ((\address[2]~input_o\) # ((!\U_RAM|mem~79_q\)))) # (!\address[3]~input_o\ & (!\address[2]~input_o\ & (\U_RAM|mem~15_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \address[2]~input_o\,
	datac => \U_RAM|mem~15_q\,
	datad => \U_RAM|mem~79_q\,
	combout => \U_RAM|mem~304_combout\);

-- Location: LCCOMB_X24_Y26_N22
\U_RAM|mem~305\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~305_combout\ = (\address[2]~input_o\ & ((\U_RAM|mem~304_combout\ & ((!\U_RAM|mem~111_q\))) # (!\U_RAM|mem~304_combout\ & (\U_RAM|mem~47_q\)))) # (!\address[2]~input_o\ & (((\U_RAM|mem~304_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \U_RAM|mem~47_q\,
	datac => \U_RAM|mem~111_q\,
	datad => \U_RAM|mem~304_combout\,
	combout => \U_RAM|mem~305_combout\);

-- Location: FF_X23_Y29_N5
\U_RAM|mem~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_in[1]~input_o\,
	sload => VCC,
	ena => \U_RAM|mem~462_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~55_q\);

-- Location: LCCOMB_X23_Y29_N4
\U_RAM|mem~520\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~520_combout\ = !\data_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[1]~input_o\,
	combout => \U_RAM|mem~520_combout\);

-- Location: FF_X23_Y29_N15
\U_RAM|mem~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~520_combout\,
	sload => VCC,
	ena => \U_RAM|mem~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~119_q\);

-- Location: FF_X22_Y29_N29
\U_RAM|mem~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_in[1]~input_o\,
	sload => VCC,
	ena => \U_RAM|mem~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~23_q\);

-- Location: LCCOMB_X21_Y29_N12
\U_RAM|mem~519\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~519_combout\ = !\data_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[1]~input_o\,
	combout => \U_RAM|mem~519_combout\);

-- Location: FF_X21_Y29_N13
\U_RAM|mem~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~519_combout\,
	ena => \U_RAM|mem~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~87_q\);

-- Location: LCCOMB_X22_Y29_N28
\U_RAM|mem~302\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~302_combout\ = (\address[2]~input_o\ & (\address[3]~input_o\)) # (!\address[2]~input_o\ & ((\address[3]~input_o\ & ((!\U_RAM|mem~87_q\))) # (!\address[3]~input_o\ & (\U_RAM|mem~23_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[3]~input_o\,
	datac => \U_RAM|mem~23_q\,
	datad => \U_RAM|mem~87_q\,
	combout => \U_RAM|mem~302_combout\);

-- Location: LCCOMB_X23_Y29_N14
\U_RAM|mem~303\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~303_combout\ = (\address[2]~input_o\ & ((\U_RAM|mem~302_combout\ & ((!\U_RAM|mem~119_q\))) # (!\U_RAM|mem~302_combout\ & (\U_RAM|mem~55_q\)))) # (!\address[2]~input_o\ & (((\U_RAM|mem~302_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \U_RAM|mem~55_q\,
	datac => \U_RAM|mem~119_q\,
	datad => \U_RAM|mem~302_combout\,
	combout => \U_RAM|mem~303_combout\);

-- Location: LCCOMB_X24_Y26_N16
\U_RAM|mem~306\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~306_combout\ = (\address[0]~input_o\ & ((\address[1]~input_o\) # ((\U_RAM|mem~303_combout\)))) # (!\address[0]~input_o\ & (!\address[1]~input_o\ & (\U_RAM|mem~305_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \U_RAM|mem~305_combout\,
	datad => \U_RAM|mem~303_combout\,
	combout => \U_RAM|mem~306_combout\);

-- Location: LCCOMB_X24_Y26_N18
\U_RAM|mem~309\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~309_combout\ = (\address[1]~input_o\ & ((\U_RAM|mem~306_combout\ & ((\U_RAM|mem~308_combout\))) # (!\U_RAM|mem~306_combout\ & (\U_RAM|mem~301_combout\)))) # (!\address[1]~input_o\ & (((\U_RAM|mem~306_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RAM|mem~301_combout\,
	datab => \address[1]~input_o\,
	datac => \U_RAM|mem~308_combout\,
	datad => \U_RAM|mem~306_combout\,
	combout => \U_RAM|mem~309_combout\);

-- Location: LCCOMB_X24_Y26_N30
\U_RAM|data_out~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|data_out~2_combout\ = (\U_RAM|data_out~0_combout\) # ((\address[4]~input_o\ & (\U_RAM|mem~299_combout\)) # (!\address[4]~input_o\ & ((\U_RAM|mem~309_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[4]~input_o\,
	datab => \U_RAM|data_out~0_combout\,
	datac => \U_RAM|mem~299_combout\,
	datad => \U_RAM|mem~309_combout\,
	combout => \U_RAM|data_out~2_combout\);

-- Location: FF_X24_Y26_N31
\U_RAM|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|data_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|data_out\(1));

-- Location: LCCOMB_X24_Y26_N4
\U_ROM|data_out~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ROM|data_out~1_combout\ = (!\LessThan0~0_combout\ & !\address[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~0_combout\,
	datad => \address[2]~input_o\,
	combout => \U_ROM|data_out~1_combout\);

-- Location: FF_X24_Y26_N5
\U_ROM|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ROM|data_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ROM|data_out\(1));

-- Location: LCCOMB_X24_Y26_N26
\data_out~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_out~2_combout\ = (\U_RAM|data_out\(1) & ((\data_out~0_combout\) # ((!\LessThan0~0_combout\ & \U_ROM|data_out\(1))))) # (!\U_RAM|data_out\(1) & (((!\LessThan0~0_combout\ & \U_ROM|data_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RAM|data_out\(1),
	datab => \data_out~0_combout\,
	datac => \LessThan0~0_combout\,
	datad => \U_ROM|data_out\(1),
	combout => \data_out~2_combout\);

-- Location: LCCOMB_X23_Y26_N4
\U_ROM|data_out~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ROM|data_out~2_combout\ = (!\address[2]~input_o\ & (!\LessThan0~0_combout\ & !\address[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \address[2]~input_o\,
	datac => \LessThan0~0_combout\,
	datad => \address[1]~input_o\,
	combout => \U_ROM|data_out~2_combout\);

-- Location: FF_X23_Y26_N5
\U_ROM|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ROM|data_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ROM|data_out\(2));

-- Location: IOIBUF_X33_Y28_N1
\data_in[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(2),
	o => \data_in[2]~input_o\);

-- Location: FF_X23_Y28_N11
\U_RAM|mem~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_in[2]~input_o\,
	sload => VCC,
	ena => \U_RAM|mem~464_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~48_q\);

-- Location: LCCOMB_X22_Y26_N12
\U_RAM|mem~546\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~546_combout\ = !\data_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[2]~input_o\,
	combout => \U_RAM|mem~546_combout\);

-- Location: FF_X22_Y26_N5
\U_RAM|mem~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~546_combout\,
	sload => VCC,
	ena => \U_RAM|mem~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~112_q\);

-- Location: FF_X22_Y28_N23
\U_RAM|mem~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_in[2]~input_o\,
	sload => VCC,
	ena => \U_RAM|mem~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~16_q\);

-- Location: LCCOMB_X22_Y28_N16
\U_RAM|mem~545\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~545_combout\ = !\data_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[2]~input_o\,
	combout => \U_RAM|mem~545_combout\);

-- Location: FF_X22_Y28_N17
\U_RAM|mem~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~545_combout\,
	ena => \U_RAM|mem~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~80_q\);

-- Location: LCCOMB_X22_Y28_N22
\U_RAM|mem~324\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~324_combout\ = (\address[3]~input_o\ & ((\address[2]~input_o\) # ((!\U_RAM|mem~80_q\)))) # (!\address[3]~input_o\ & (!\address[2]~input_o\ & (\U_RAM|mem~16_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \address[2]~input_o\,
	datac => \U_RAM|mem~16_q\,
	datad => \U_RAM|mem~80_q\,
	combout => \U_RAM|mem~324_combout\);

-- Location: LCCOMB_X22_Y26_N4
\U_RAM|mem~325\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~325_combout\ = (\address[2]~input_o\ & ((\U_RAM|mem~324_combout\ & ((!\U_RAM|mem~112_q\))) # (!\U_RAM|mem~324_combout\ & (\U_RAM|mem~48_q\)))) # (!\address[2]~input_o\ & (((\U_RAM|mem~324_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \U_RAM|mem~48_q\,
	datac => \U_RAM|mem~112_q\,
	datad => \U_RAM|mem~324_combout\,
	combout => \U_RAM|mem~325_combout\);

-- Location: LCCOMB_X21_Y25_N16
\U_RAM|mem~542\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~542_combout\ = !\data_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[2]~input_o\,
	combout => \U_RAM|mem~542_combout\);

-- Location: FF_X21_Y25_N17
\U_RAM|mem~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~542_combout\,
	ena => \U_RAM|mem~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~64_q\);

-- Location: LCCOMB_X26_Y26_N24
\U_RAM|mem~544\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~544_combout\ = !\data_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[2]~input_o\,
	combout => \U_RAM|mem~544_combout\);

-- Location: FF_X22_Y25_N5
\U_RAM|mem~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~544_combout\,
	sload => VCC,
	ena => \U_RAM|mem~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~128_q\);

-- Location: FF_X22_Y25_N3
\U_RAM|mem~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_in[2]~input_o\,
	sload => VCC,
	ena => \U_RAM|mem~468_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~32_q\);

-- Location: LCCOMB_X23_Y25_N6
\U_RAM|mem~543\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~543_combout\ = !\data_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[2]~input_o\,
	combout => \U_RAM|mem~543_combout\);

-- Location: FF_X23_Y25_N7
\U_RAM|mem~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~543_combout\,
	ena => \U_RAM|mem~466_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~96_q\);

-- Location: LCCOMB_X22_Y25_N2
\U_RAM|mem~322\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~322_combout\ = (\address[3]~input_o\ & ((\address[2]~input_o\) # ((!\U_RAM|mem~96_q\)))) # (!\address[3]~input_o\ & (!\address[2]~input_o\ & (\U_RAM|mem~32_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \address[2]~input_o\,
	datac => \U_RAM|mem~32_q\,
	datad => \U_RAM|mem~96_q\,
	combout => \U_RAM|mem~322_combout\);

-- Location: LCCOMB_X22_Y25_N4
\U_RAM|mem~323\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~323_combout\ = (\address[2]~input_o\ & ((\U_RAM|mem~322_combout\ & ((!\U_RAM|mem~128_q\))) # (!\U_RAM|mem~322_combout\ & (!\U_RAM|mem~64_q\)))) # (!\address[2]~input_o\ & (((\U_RAM|mem~322_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RAM|mem~64_q\,
	datab => \address[2]~input_o\,
	datac => \U_RAM|mem~128_q\,
	datad => \U_RAM|mem~322_combout\,
	combout => \U_RAM|mem~323_combout\);

-- Location: LCCOMB_X22_Y26_N14
\U_RAM|mem~326\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~326_combout\ = (\address[0]~input_o\ & (\address[1]~input_o\)) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & ((\U_RAM|mem~323_combout\))) # (!\address[1]~input_o\ & (\U_RAM|mem~325_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \U_RAM|mem~325_combout\,
	datad => \U_RAM|mem~323_combout\,
	combout => \U_RAM|mem~326_combout\);

-- Location: LCCOMB_X20_Y28_N4
\U_RAM|mem~541\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~541_combout\ = !\data_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[2]~input_o\,
	combout => \U_RAM|mem~541_combout\);

-- Location: FF_X20_Y28_N5
\U_RAM|mem~120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~541_combout\,
	ena => \U_RAM|mem~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~120_q\);

-- Location: LCCOMB_X19_Y26_N30
\U_RAM|mem~540\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~540_combout\ = !\data_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[2]~input_o\,
	combout => \U_RAM|mem~540_combout\);

-- Location: FF_X19_Y26_N7
\U_RAM|mem~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~540_combout\,
	sload => VCC,
	ena => \U_RAM|mem~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~88_q\);

-- Location: FF_X20_Y29_N3
\U_RAM|mem~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_in[2]~input_o\,
	sload => VCC,
	ena => \U_RAM|mem~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~24_q\);

-- Location: FF_X20_Y29_N13
\U_RAM|mem~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_in[2]~input_o\,
	sload => VCC,
	ena => \U_RAM|mem~462_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~56_q\);

-- Location: LCCOMB_X20_Y29_N2
\U_RAM|mem~320\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~320_combout\ = (\address[2]~input_o\ & ((\address[3]~input_o\) # ((\U_RAM|mem~56_q\)))) # (!\address[2]~input_o\ & (!\address[3]~input_o\ & (\U_RAM|mem~24_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[3]~input_o\,
	datac => \U_RAM|mem~24_q\,
	datad => \U_RAM|mem~56_q\,
	combout => \U_RAM|mem~320_combout\);

-- Location: LCCOMB_X19_Y26_N6
\U_RAM|mem~321\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~321_combout\ = (\address[3]~input_o\ & ((\U_RAM|mem~320_combout\ & (!\U_RAM|mem~120_q\)) # (!\U_RAM|mem~320_combout\ & ((!\U_RAM|mem~88_q\))))) # (!\address[3]~input_o\ & (((\U_RAM|mem~320_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RAM|mem~120_q\,
	datab => \address[3]~input_o\,
	datac => \U_RAM|mem~88_q\,
	datad => \U_RAM|mem~320_combout\,
	combout => \U_RAM|mem~321_combout\);

-- Location: LCCOMB_X19_Y25_N22
\U_RAM|mem~547\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~547_combout\ = !\data_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[2]~input_o\,
	combout => \U_RAM|mem~547_combout\);

-- Location: FF_X19_Y25_N23
\U_RAM|mem~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~547_combout\,
	ena => \U_RAM|mem~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~104_q\);

-- Location: LCCOMB_X20_Y25_N22
\U_RAM|mem~549\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~549_combout\ = !\data_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[2]~input_o\,
	combout => \U_RAM|mem~549_combout\);

-- Location: FF_X20_Y25_N9
\U_RAM|mem~136\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~549_combout\,
	sload => VCC,
	ena => \U_RAM|mem~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~136_q\);

-- Location: FF_X20_Y25_N15
\U_RAM|mem~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_in[2]~input_o\,
	sload => VCC,
	ena => \U_RAM|mem~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~40_q\);

-- Location: LCCOMB_X21_Y25_N18
\U_RAM|mem~548\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~548_combout\ = !\data_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[2]~input_o\,
	combout => \U_RAM|mem~548_combout\);

-- Location: FF_X21_Y25_N19
\U_RAM|mem~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~548_combout\,
	ena => \U_RAM|mem~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~72_q\);

-- Location: LCCOMB_X20_Y25_N14
\U_RAM|mem~327\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~327_combout\ = (\address[3]~input_o\ & (\address[2]~input_o\)) # (!\address[3]~input_o\ & ((\address[2]~input_o\ & ((!\U_RAM|mem~72_q\))) # (!\address[2]~input_o\ & (\U_RAM|mem~40_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \address[2]~input_o\,
	datac => \U_RAM|mem~40_q\,
	datad => \U_RAM|mem~72_q\,
	combout => \U_RAM|mem~327_combout\);

-- Location: LCCOMB_X20_Y25_N8
\U_RAM|mem~328\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~328_combout\ = (\address[3]~input_o\ & ((\U_RAM|mem~327_combout\ & ((!\U_RAM|mem~136_q\))) # (!\U_RAM|mem~327_combout\ & (!\U_RAM|mem~104_q\)))) # (!\address[3]~input_o\ & (((\U_RAM|mem~327_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \U_RAM|mem~104_q\,
	datac => \U_RAM|mem~136_q\,
	datad => \U_RAM|mem~327_combout\,
	combout => \U_RAM|mem~328_combout\);

-- Location: LCCOMB_X22_Y26_N8
\U_RAM|mem~329\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~329_combout\ = (\address[0]~input_o\ & ((\U_RAM|mem~326_combout\ & ((\U_RAM|mem~328_combout\))) # (!\U_RAM|mem~326_combout\ & (\U_RAM|mem~321_combout\)))) # (!\address[0]~input_o\ & (\U_RAM|mem~326_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \U_RAM|mem~326_combout\,
	datac => \U_RAM|mem~321_combout\,
	datad => \U_RAM|mem~328_combout\,
	combout => \U_RAM|mem~329_combout\);

-- Location: LCCOMB_X27_Y26_N6
\U_RAM|mem~529\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~529_combout\ = !\data_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[2]~input_o\,
	combout => \U_RAM|mem~529_combout\);

-- Location: FF_X27_Y26_N7
\U_RAM|mem~200\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~529_combout\,
	ena => \U_RAM|mem~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~200_q\);

-- Location: LCCOMB_X26_Y26_N28
\U_RAM|mem~526\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~526_combout\ = !\data_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[2]~input_o\,
	combout => \U_RAM|mem~526_combout\);

-- Location: FF_X26_Y26_N21
\U_RAM|mem~184\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~526_combout\,
	sload => VCC,
	ena => \U_RAM|mem~433_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~184_q\);

-- Location: LCCOMB_X27_Y26_N12
\U_RAM|mem~528\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~528_combout\ = !\data_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[2]~input_o\,
	combout => \U_RAM|mem~528_combout\);

-- Location: FF_X26_Y26_N7
\U_RAM|mem~176\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~528_combout\,
	sload => VCC,
	ena => \U_RAM|mem~435_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~176_q\);

-- Location: LCCOMB_X27_Y26_N28
\U_RAM|mem~527\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~527_combout\ = !\data_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[2]~input_o\,
	combout => \U_RAM|mem~527_combout\);

-- Location: FF_X27_Y26_N29
\U_RAM|mem~192\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~527_combout\,
	ena => \U_RAM|mem~431_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~192_q\);

-- Location: LCCOMB_X26_Y26_N6
\U_RAM|mem~310\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~310_combout\ = (\address[1]~input_o\ & ((\address[0]~input_o\) # ((!\U_RAM|mem~192_q\)))) # (!\address[1]~input_o\ & (!\address[0]~input_o\ & (!\U_RAM|mem~176_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => \U_RAM|mem~176_q\,
	datad => \U_RAM|mem~192_q\,
	combout => \U_RAM|mem~310_combout\);

-- Location: LCCOMB_X26_Y26_N20
\U_RAM|mem~311\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~311_combout\ = (\address[0]~input_o\ & ((\U_RAM|mem~310_combout\ & (!\U_RAM|mem~200_q\)) # (!\U_RAM|mem~310_combout\ & ((!\U_RAM|mem~184_q\))))) # (!\address[0]~input_o\ & (((\U_RAM|mem~310_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RAM|mem~200_q\,
	datab => \address[0]~input_o\,
	datac => \U_RAM|mem~184_q\,
	datad => \U_RAM|mem~310_combout\,
	combout => \U_RAM|mem~311_combout\);

-- Location: LCCOMB_X18_Y26_N14
\U_RAM|mem~538\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~538_combout\ = !\data_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[2]~input_o\,
	combout => \U_RAM|mem~538_combout\);

-- Location: FF_X18_Y26_N15
\U_RAM|mem~248\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~538_combout\,
	ena => \U_RAM|mem~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~248_q\);

-- Location: FF_X19_Y26_N21
\U_RAM|mem~264\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_in[2]~input_o\,
	sload => VCC,
	ena => \U_RAM|mem~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~264_q\);

-- Location: LCCOMB_X26_Y26_N2
\U_RAM|mem~539\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~539_combout\ = !\data_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[2]~input_o\,
	combout => \U_RAM|mem~539_combout\);

-- Location: FF_X20_Y26_N25
\U_RAM|mem~240\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~539_combout\,
	sload => VCC,
	ena => \U_RAM|mem~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~240_q\);

-- Location: LCCOMB_X21_Y26_N2
\U_RAM|mem~256feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~256feeder_combout\ = \data_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[2]~input_o\,
	combout => \U_RAM|mem~256feeder_combout\);

-- Location: FF_X21_Y26_N3
\U_RAM|mem~256\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~256feeder_combout\,
	ena => \U_RAM|mem~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~256_q\);

-- Location: LCCOMB_X20_Y26_N24
\U_RAM|mem~317\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~317_combout\ = (\address[0]~input_o\ & (\address[1]~input_o\)) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & ((\U_RAM|mem~256_q\))) # (!\address[1]~input_o\ & (!\U_RAM|mem~240_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \U_RAM|mem~240_q\,
	datad => \U_RAM|mem~256_q\,
	combout => \U_RAM|mem~317_combout\);

-- Location: LCCOMB_X19_Y26_N20
\U_RAM|mem~318\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~318_combout\ = (\address[0]~input_o\ & ((\U_RAM|mem~317_combout\ & ((\U_RAM|mem~264_q\))) # (!\U_RAM|mem~317_combout\ & (!\U_RAM|mem~248_q\)))) # (!\address[0]~input_o\ & (((\U_RAM|mem~317_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RAM|mem~248_q\,
	datab => \address[0]~input_o\,
	datac => \U_RAM|mem~264_q\,
	datad => \U_RAM|mem~317_combout\,
	combout => \U_RAM|mem~318_combout\);

-- Location: LCCOMB_X21_Y28_N16
\U_RAM|mem~530\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~530_combout\ = !\data_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[2]~input_o\,
	combout => \U_RAM|mem~530_combout\);

-- Location: FF_X22_Y27_N25
\U_RAM|mem~224\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~530_combout\,
	sload => VCC,
	ena => \U_RAM|mem~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~224_q\);

-- Location: LCCOMB_X26_Y26_N22
\U_RAM|mem~533\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~533_combout\ = !\data_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[2]~input_o\,
	combout => \U_RAM|mem~533_combout\);

-- Location: FF_X23_Y27_N31
\U_RAM|mem~232\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~533_combout\,
	sload => VCC,
	ena => \U_RAM|mem~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~232_q\);

-- Location: LCCOMB_X23_Y27_N4
\U_RAM|mem~532\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~532_combout\ = !\data_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[2]~input_o\,
	combout => \U_RAM|mem~532_combout\);

-- Location: FF_X23_Y27_N17
\U_RAM|mem~208\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~532_combout\,
	sload => VCC,
	ena => \U_RAM|mem~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~208_q\);

-- Location: LCCOMB_X24_Y27_N16
\U_RAM|mem~531\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~531_combout\ = !\data_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[2]~input_o\,
	combout => \U_RAM|mem~531_combout\);

-- Location: FF_X24_Y27_N17
\U_RAM|mem~216\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~531_combout\,
	ena => \U_RAM|mem~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~216_q\);

-- Location: LCCOMB_X23_Y27_N16
\U_RAM|mem~312\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~312_combout\ = (\address[0]~input_o\ & ((\address[1]~input_o\) # ((!\U_RAM|mem~216_q\)))) # (!\address[0]~input_o\ & (!\address[1]~input_o\ & (!\U_RAM|mem~208_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \U_RAM|mem~208_q\,
	datad => \U_RAM|mem~216_q\,
	combout => \U_RAM|mem~312_combout\);

-- Location: LCCOMB_X23_Y27_N30
\U_RAM|mem~313\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~313_combout\ = (\address[1]~input_o\ & ((\U_RAM|mem~312_combout\ & ((!\U_RAM|mem~232_q\))) # (!\U_RAM|mem~312_combout\ & (!\U_RAM|mem~224_q\)))) # (!\address[1]~input_o\ & (((\U_RAM|mem~312_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \U_RAM|mem~224_q\,
	datac => \U_RAM|mem~232_q\,
	datad => \U_RAM|mem~312_combout\,
	combout => \U_RAM|mem~313_combout\);

-- Location: LCCOMB_X26_Y28_N16
\U_RAM|mem~534\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~534_combout\ = !\data_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[2]~input_o\,
	combout => \U_RAM|mem~534_combout\);

-- Location: FF_X26_Y28_N17
\U_RAM|mem~160\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~534_combout\,
	ena => \U_RAM|mem~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~160_q\);

-- Location: LCCOMB_X26_Y26_N4
\U_RAM|mem~537\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~537_combout\ = !\data_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[2]~input_o\,
	combout => \U_RAM|mem~537_combout\);

-- Location: FF_X25_Y28_N3
\U_RAM|mem~168\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~537_combout\,
	sload => VCC,
	ena => \U_RAM|mem~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~168_q\);

-- Location: LCCOMB_X26_Y28_N10
\U_RAM|mem~536\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~536_combout\ = !\data_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[2]~input_o\,
	combout => \U_RAM|mem~536_combout\);

-- Location: FF_X25_Y28_N21
\U_RAM|mem~144\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~536_combout\,
	sload => VCC,
	ena => \U_RAM|mem~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~144_q\);

-- Location: LCCOMB_X26_Y28_N26
\U_RAM|mem~535\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~535_combout\ = !\data_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[2]~input_o\,
	combout => \U_RAM|mem~535_combout\);

-- Location: FF_X26_Y28_N27
\U_RAM|mem~152\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~535_combout\,
	ena => \U_RAM|mem~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~152_q\);

-- Location: LCCOMB_X25_Y28_N20
\U_RAM|mem~314\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~314_combout\ = (\address[0]~input_o\ & ((\address[1]~input_o\) # ((!\U_RAM|mem~152_q\)))) # (!\address[0]~input_o\ & (!\address[1]~input_o\ & (!\U_RAM|mem~144_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \U_RAM|mem~144_q\,
	datad => \U_RAM|mem~152_q\,
	combout => \U_RAM|mem~314_combout\);

-- Location: LCCOMB_X25_Y28_N2
\U_RAM|mem~315\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~315_combout\ = (\address[1]~input_o\ & ((\U_RAM|mem~314_combout\ & ((!\U_RAM|mem~168_q\))) # (!\U_RAM|mem~314_combout\ & (!\U_RAM|mem~160_q\)))) # (!\address[1]~input_o\ & (((\U_RAM|mem~314_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \U_RAM|mem~160_q\,
	datac => \U_RAM|mem~168_q\,
	datad => \U_RAM|mem~314_combout\,
	combout => \U_RAM|mem~315_combout\);

-- Location: LCCOMB_X22_Y26_N16
\U_RAM|mem~316\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~316_combout\ = (\address[2]~input_o\ & (\address[3]~input_o\)) # (!\address[2]~input_o\ & ((\address[3]~input_o\ & (\U_RAM|mem~313_combout\)) # (!\address[3]~input_o\ & ((\U_RAM|mem~315_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[3]~input_o\,
	datac => \U_RAM|mem~313_combout\,
	datad => \U_RAM|mem~315_combout\,
	combout => \U_RAM|mem~316_combout\);

-- Location: LCCOMB_X22_Y26_N10
\U_RAM|mem~319\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~319_combout\ = (\address[2]~input_o\ & ((\U_RAM|mem~316_combout\ & ((\U_RAM|mem~318_combout\))) # (!\U_RAM|mem~316_combout\ & (\U_RAM|mem~311_combout\)))) # (!\address[2]~input_o\ & (((\U_RAM|mem~316_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RAM|mem~311_combout\,
	datab => \address[2]~input_o\,
	datac => \U_RAM|mem~318_combout\,
	datad => \U_RAM|mem~316_combout\,
	combout => \U_RAM|mem~319_combout\);

-- Location: LCCOMB_X22_Y26_N0
\U_RAM|data_out~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|data_out~3_combout\ = (\U_RAM|data_out~0_combout\) # ((\address[4]~input_o\ & ((\U_RAM|mem~319_combout\))) # (!\address[4]~input_o\ & (\U_RAM|mem~329_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RAM|data_out~0_combout\,
	datab => \address[4]~input_o\,
	datac => \U_RAM|mem~329_combout\,
	datad => \U_RAM|mem~319_combout\,
	combout => \U_RAM|data_out~3_combout\);

-- Location: FF_X22_Y26_N1
\U_RAM|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|data_out~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|data_out\(2));

-- Location: LCCOMB_X23_Y26_N10
\data_out~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_out~3_combout\ = (\data_out~0_combout\ & ((\U_RAM|data_out\(2)) # ((\U_ROM|data_out\(2) & !\LessThan0~0_combout\)))) # (!\data_out~0_combout\ & (\U_ROM|data_out\(2) & ((!\LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out~0_combout\,
	datab => \U_ROM|data_out\(2),
	datac => \U_RAM|data_out\(2),
	datad => \LessThan0~0_combout\,
	combout => \data_out~3_combout\);

-- Location: LCCOMB_X24_Y26_N10
\U_ROM|data_out~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_ROM|data_out~3_combout\ = (!\LessThan0~0_combout\ & (!\address[1]~input_o\ & ((\address[0]~input_o\) # (!\address[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \LessThan0~0_combout\,
	datac => \address[0]~input_o\,
	datad => \address[1]~input_o\,
	combout => \U_ROM|data_out~3_combout\);

-- Location: FF_X24_Y26_N11
\U_ROM|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ROM|data_out~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_ROM|data_out\(3));

-- Location: IOIBUF_X22_Y31_N8
\data_in[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(3),
	o => \data_in[3]~input_o\);

-- Location: FF_X18_Y26_N29
\U_RAM|mem~257\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_in[3]~input_o\,
	sload => VCC,
	ena => \U_RAM|mem~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~257_q\);

-- Location: FF_X19_Y26_N9
\U_RAM|mem~265\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_in[3]~input_o\,
	sload => VCC,
	ena => \U_RAM|mem~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~265_q\);

-- Location: LCCOMB_X20_Y26_N14
\U_RAM|mem~563\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~563_combout\ = !\data_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[3]~input_o\,
	combout => \U_RAM|mem~563_combout\);

-- Location: FF_X20_Y26_N17
\U_RAM|mem~241\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~563_combout\,
	sload => VCC,
	ena => \U_RAM|mem~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~241_q\);

-- Location: LCCOMB_X21_Y26_N10
\U_RAM|mem~562\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~562_combout\ = !\data_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[3]~input_o\,
	combout => \U_RAM|mem~562_combout\);

-- Location: FF_X20_Y26_N27
\U_RAM|mem~249\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~562_combout\,
	sload => VCC,
	ena => \U_RAM|mem~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~249_q\);

-- Location: LCCOMB_X20_Y26_N16
\U_RAM|mem~337\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~337_combout\ = (\address[0]~input_o\ & ((\address[1]~input_o\) # ((!\U_RAM|mem~249_q\)))) # (!\address[0]~input_o\ & (!\address[1]~input_o\ & (!\U_RAM|mem~241_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \U_RAM|mem~241_q\,
	datad => \U_RAM|mem~249_q\,
	combout => \U_RAM|mem~337_combout\);

-- Location: LCCOMB_X19_Y26_N8
\U_RAM|mem~338\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~338_combout\ = (\address[1]~input_o\ & ((\U_RAM|mem~337_combout\ & ((\U_RAM|mem~265_q\))) # (!\U_RAM|mem~337_combout\ & (\U_RAM|mem~257_q\)))) # (!\address[1]~input_o\ & (((\U_RAM|mem~337_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \U_RAM|mem~257_q\,
	datac => \U_RAM|mem~265_q\,
	datad => \U_RAM|mem~337_combout\,
	combout => \U_RAM|mem~338_combout\);

-- Location: LCCOMB_X25_Y27_N8
\U_RAM|mem~553\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~553_combout\ = !\data_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[3]~input_o\,
	combout => \U_RAM|mem~553_combout\);

-- Location: FF_X23_Y27_N19
\U_RAM|mem~233\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~553_combout\,
	sload => VCC,
	ena => \U_RAM|mem~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~233_q\);

-- Location: LCCOMB_X24_Y27_N10
\U_RAM|mem~550\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~550_combout\ = !\data_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[3]~input_o\,
	combout => \U_RAM|mem~550_combout\);

-- Location: FF_X24_Y27_N11
\U_RAM|mem~217\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~550_combout\,
	ena => \U_RAM|mem~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~217_q\);

-- Location: LCCOMB_X23_Y27_N18
\U_RAM|mem~552\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~552_combout\ = !\data_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in[3]~input_o\,
	combout => \U_RAM|mem~552_combout\);

-- Location: FF_X23_Y27_N13
\U_RAM|mem~209\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~552_combout\,
	sload => VCC,
	ena => \U_RAM|mem~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~209_q\);

-- Location: LCCOMB_X22_Y27_N14
\U_RAM|mem~551\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~551_combout\ = !\data_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[3]~input_o\,
	combout => \U_RAM|mem~551_combout\);

-- Location: FF_X22_Y27_N15
\U_RAM|mem~225\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~551_combout\,
	ena => \U_RAM|mem~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~225_q\);

-- Location: LCCOMB_X23_Y27_N12
\U_RAM|mem~330\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~330_combout\ = (\address[0]~input_o\ & (\address[1]~input_o\)) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & ((!\U_RAM|mem~225_q\))) # (!\address[1]~input_o\ & (!\U_RAM|mem~209_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \U_RAM|mem~209_q\,
	datad => \U_RAM|mem~225_q\,
	combout => \U_RAM|mem~330_combout\);

-- Location: LCCOMB_X23_Y27_N28
\U_RAM|mem~331\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~331_combout\ = (\address[0]~input_o\ & ((\U_RAM|mem~330_combout\ & (!\U_RAM|mem~233_q\)) # (!\U_RAM|mem~330_combout\ & ((!\U_RAM|mem~217_q\))))) # (!\address[0]~input_o\ & (((\U_RAM|mem~330_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \U_RAM|mem~233_q\,
	datac => \U_RAM|mem~217_q\,
	datad => \U_RAM|mem~330_combout\,
	combout => \U_RAM|mem~331_combout\);

-- Location: LCCOMB_X26_Y28_N24
\U_RAM|mem~554\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~554_combout\ = !\data_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[3]~input_o\,
	combout => \U_RAM|mem~554_combout\);

-- Location: FF_X26_Y27_N17
\U_RAM|mem~193\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~554_combout\,
	sload => VCC,
	ena => \U_RAM|mem~431_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~193_q\);

-- Location: LCCOMB_X25_Y27_N30
\U_RAM|mem~557\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~557_combout\ = !\data_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[3]~input_o\,
	combout => \U_RAM|mem~557_combout\);

-- Location: FF_X25_Y27_N29
\U_RAM|mem~201\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~557_combout\,
	sload => VCC,
	ena => \U_RAM|mem~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~201_q\);

-- Location: LCCOMB_X26_Y27_N30
\U_RAM|mem~556\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~556_combout\ = !\data_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[3]~input_o\,
	combout => \U_RAM|mem~556_combout\);

-- Location: FF_X25_Y27_N11
\U_RAM|mem~177\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~556_combout\,
	sload => VCC,
	ena => \U_RAM|mem~435_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~177_q\);

-- Location: LCCOMB_X24_Y27_N8
\U_RAM|mem~555\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~555_combout\ = !\data_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[3]~input_o\,
	combout => \U_RAM|mem~555_combout\);

-- Location: FF_X24_Y27_N9
\U_RAM|mem~185\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~555_combout\,
	ena => \U_RAM|mem~433_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~185_q\);

-- Location: LCCOMB_X25_Y27_N10
\U_RAM|mem~332\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~332_combout\ = (\address[1]~input_o\ & (\address[0]~input_o\)) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & ((!\U_RAM|mem~185_q\))) # (!\address[0]~input_o\ & (!\U_RAM|mem~177_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => \U_RAM|mem~177_q\,
	datad => \U_RAM|mem~185_q\,
	combout => \U_RAM|mem~332_combout\);

-- Location: LCCOMB_X25_Y27_N28
\U_RAM|mem~333\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~333_combout\ = (\address[1]~input_o\ & ((\U_RAM|mem~332_combout\ & ((!\U_RAM|mem~201_q\))) # (!\U_RAM|mem~332_combout\ & (!\U_RAM|mem~193_q\)))) # (!\address[1]~input_o\ & (((\U_RAM|mem~332_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \U_RAM|mem~193_q\,
	datac => \U_RAM|mem~201_q\,
	datad => \U_RAM|mem~332_combout\,
	combout => \U_RAM|mem~333_combout\);

-- Location: LCCOMB_X23_Y28_N6
\U_RAM|mem~558\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~558_combout\ = !\data_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[3]~input_o\,
	combout => \U_RAM|mem~558_combout\);

-- Location: LCCOMB_X26_Y28_N8
\U_RAM|mem~153feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~153feeder_combout\ = \U_RAM|mem~558_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_RAM|mem~558_combout\,
	combout => \U_RAM|mem~153feeder_combout\);

-- Location: FF_X26_Y28_N9
\U_RAM|mem~153\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~153feeder_combout\,
	ena => \U_RAM|mem~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~153_q\);

-- Location: LCCOMB_X24_Y28_N20
\U_RAM|mem~561\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~561_combout\ = !\data_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in[3]~input_o\,
	combout => \U_RAM|mem~561_combout\);

-- Location: FF_X25_Y28_N15
\U_RAM|mem~169\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~561_combout\,
	sload => VCC,
	ena => \U_RAM|mem~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~169_q\);

-- Location: LCCOMB_X24_Y29_N30
\U_RAM|mem~560\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~560_combout\ = !\data_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[3]~input_o\,
	combout => \U_RAM|mem~560_combout\);

-- Location: FF_X25_Y28_N17
\U_RAM|mem~145\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~560_combout\,
	sload => VCC,
	ena => \U_RAM|mem~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~145_q\);

-- Location: LCCOMB_X26_Y28_N6
\U_RAM|mem~559\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~559_combout\ = !\data_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[3]~input_o\,
	combout => \U_RAM|mem~559_combout\);

-- Location: FF_X26_Y28_N7
\U_RAM|mem~161\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~559_combout\,
	ena => \U_RAM|mem~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~161_q\);

-- Location: LCCOMB_X25_Y28_N16
\U_RAM|mem~334\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~334_combout\ = (\address[0]~input_o\ & (\address[1]~input_o\)) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & ((!\U_RAM|mem~161_q\))) # (!\address[1]~input_o\ & (!\U_RAM|mem~145_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \U_RAM|mem~145_q\,
	datad => \U_RAM|mem~161_q\,
	combout => \U_RAM|mem~334_combout\);

-- Location: LCCOMB_X25_Y28_N14
\U_RAM|mem~335\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~335_combout\ = (\address[0]~input_o\ & ((\U_RAM|mem~334_combout\ & ((!\U_RAM|mem~169_q\))) # (!\U_RAM|mem~334_combout\ & (!\U_RAM|mem~153_q\)))) # (!\address[0]~input_o\ & (((\U_RAM|mem~334_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \U_RAM|mem~153_q\,
	datac => \U_RAM|mem~169_q\,
	datad => \U_RAM|mem~334_combout\,
	combout => \U_RAM|mem~335_combout\);

-- Location: LCCOMB_X24_Y26_N28
\U_RAM|mem~336\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~336_combout\ = (\address[2]~input_o\ & ((\address[3]~input_o\) # ((\U_RAM|mem~333_combout\)))) # (!\address[2]~input_o\ & (!\address[3]~input_o\ & ((\U_RAM|mem~335_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[3]~input_o\,
	datac => \U_RAM|mem~333_combout\,
	datad => \U_RAM|mem~335_combout\,
	combout => \U_RAM|mem~336_combout\);

-- Location: LCCOMB_X24_Y26_N14
\U_RAM|mem~339\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~339_combout\ = (\address[3]~input_o\ & ((\U_RAM|mem~336_combout\ & (\U_RAM|mem~338_combout\)) # (!\U_RAM|mem~336_combout\ & ((\U_RAM|mem~331_combout\))))) # (!\address[3]~input_o\ & (((\U_RAM|mem~336_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RAM|mem~338_combout\,
	datab => \address[3]~input_o\,
	datac => \U_RAM|mem~331_combout\,
	datad => \U_RAM|mem~336_combout\,
	combout => \U_RAM|mem~339_combout\);

-- Location: LCCOMB_X22_Y25_N8
\U_RAM|mem~566\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~566_combout\ = !\data_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[3]~input_o\,
	combout => \U_RAM|mem~566_combout\);

-- Location: FF_X22_Y25_N9
\U_RAM|mem~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~566_combout\,
	ena => \U_RAM|mem~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~129_q\);

-- Location: LCCOMB_X23_Y25_N8
\U_RAM|mem~564\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~564_combout\ = !\data_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[3]~input_o\,
	combout => \U_RAM|mem~564_combout\);

-- Location: FF_X23_Y25_N1
\U_RAM|mem~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~564_combout\,
	sload => VCC,
	ena => \U_RAM|mem~466_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~97_q\);

-- Location: LCCOMB_X22_Y25_N6
\U_RAM|mem~33feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~33feeder_combout\ = \data_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[3]~input_o\,
	combout => \U_RAM|mem~33feeder_combout\);

-- Location: FF_X22_Y25_N7
\U_RAM|mem~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~33feeder_combout\,
	ena => \U_RAM|mem~468_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~33_q\);

-- Location: LCCOMB_X18_Y25_N8
\U_RAM|mem~565\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~565_combout\ = !\data_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[3]~input_o\,
	combout => \U_RAM|mem~565_combout\);

-- Location: FF_X18_Y25_N9
\U_RAM|mem~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~565_combout\,
	ena => \U_RAM|mem~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~65_q\);

-- Location: LCCOMB_X23_Y25_N18
\U_RAM|mem~340\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~340_combout\ = (\address[2]~input_o\ & ((\address[3]~input_o\) # ((!\U_RAM|mem~65_q\)))) # (!\address[2]~input_o\ & (!\address[3]~input_o\ & (\U_RAM|mem~33_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[3]~input_o\,
	datac => \U_RAM|mem~33_q\,
	datad => \U_RAM|mem~65_q\,
	combout => \U_RAM|mem~340_combout\);

-- Location: LCCOMB_X23_Y25_N0
\U_RAM|mem~341\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~341_combout\ = (\address[3]~input_o\ & ((\U_RAM|mem~340_combout\ & (!\U_RAM|mem~129_q\)) # (!\U_RAM|mem~340_combout\ & ((!\U_RAM|mem~97_q\))))) # (!\address[3]~input_o\ & (((\U_RAM|mem~340_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RAM|mem~129_q\,
	datab => \address[3]~input_o\,
	datac => \U_RAM|mem~97_q\,
	datad => \U_RAM|mem~340_combout\,
	combout => \U_RAM|mem~341_combout\);

-- Location: LCCOMB_X21_Y25_N4
\U_RAM|mem~571\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~571_combout\ = !\data_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[3]~input_o\,
	combout => \U_RAM|mem~571_combout\);

-- Location: FF_X21_Y25_N5
\U_RAM|mem~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~571_combout\,
	ena => \U_RAM|mem~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~73_q\);

-- Location: LCCOMB_X21_Y26_N28
\U_RAM|mem~573\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~573_combout\ = !\data_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[3]~input_o\,
	combout => \U_RAM|mem~573_combout\);

-- Location: FF_X20_Y25_N13
\U_RAM|mem~137\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~573_combout\,
	sload => VCC,
	ena => \U_RAM|mem~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~137_q\);

-- Location: FF_X20_Y25_N19
\U_RAM|mem~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_in[3]~input_o\,
	sload => VCC,
	ena => \U_RAM|mem~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~41_q\);

-- Location: LCCOMB_X19_Y25_N12
\U_RAM|mem~572\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~572_combout\ = !\data_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[3]~input_o\,
	combout => \U_RAM|mem~572_combout\);

-- Location: FF_X19_Y25_N13
\U_RAM|mem~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~572_combout\,
	ena => \U_RAM|mem~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~105_q\);

-- Location: LCCOMB_X20_Y25_N18
\U_RAM|mem~347\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~347_combout\ = (\address[3]~input_o\ & ((\address[2]~input_o\) # ((!\U_RAM|mem~105_q\)))) # (!\address[3]~input_o\ & (!\address[2]~input_o\ & (\U_RAM|mem~41_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \address[2]~input_o\,
	datac => \U_RAM|mem~41_q\,
	datad => \U_RAM|mem~105_q\,
	combout => \U_RAM|mem~347_combout\);

-- Location: LCCOMB_X20_Y25_N12
\U_RAM|mem~348\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~348_combout\ = (\address[2]~input_o\ & ((\U_RAM|mem~347_combout\ & ((!\U_RAM|mem~137_q\))) # (!\U_RAM|mem~347_combout\ & (!\U_RAM|mem~73_q\)))) # (!\address[2]~input_o\ & (((\U_RAM|mem~347_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RAM|mem~73_q\,
	datab => \address[2]~input_o\,
	datac => \U_RAM|mem~137_q\,
	datad => \U_RAM|mem~347_combout\,
	combout => \U_RAM|mem~348_combout\);

-- Location: FF_X23_Y29_N25
\U_RAM|mem~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_in[3]~input_o\,
	sload => VCC,
	ena => \U_RAM|mem~462_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~57_q\);

-- Location: LCCOMB_X23_Y29_N24
\U_RAM|mem~568\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~568_combout\ = !\data_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[3]~input_o\,
	combout => \U_RAM|mem~568_combout\);

-- Location: FF_X23_Y29_N11
\U_RAM|mem~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~568_combout\,
	sload => VCC,
	ena => \U_RAM|mem~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~121_q\);

-- Location: FF_X22_Y29_N15
\U_RAM|mem~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_in[3]~input_o\,
	sload => VCC,
	ena => \U_RAM|mem~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~25_q\);

-- Location: LCCOMB_X21_Y29_N10
\U_RAM|mem~567\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~567_combout\ = !\data_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[3]~input_o\,
	combout => \U_RAM|mem~567_combout\);

-- Location: FF_X21_Y29_N11
\U_RAM|mem~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~567_combout\,
	ena => \U_RAM|mem~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~89_q\);

-- Location: LCCOMB_X22_Y29_N14
\U_RAM|mem~342\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~342_combout\ = (\address[2]~input_o\ & (\address[3]~input_o\)) # (!\address[2]~input_o\ & ((\address[3]~input_o\ & ((!\U_RAM|mem~89_q\))) # (!\address[3]~input_o\ & (\U_RAM|mem~25_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[3]~input_o\,
	datac => \U_RAM|mem~25_q\,
	datad => \U_RAM|mem~89_q\,
	combout => \U_RAM|mem~342_combout\);

-- Location: LCCOMB_X23_Y29_N10
\U_RAM|mem~343\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~343_combout\ = (\address[2]~input_o\ & ((\U_RAM|mem~342_combout\ & ((!\U_RAM|mem~121_q\))) # (!\U_RAM|mem~342_combout\ & (\U_RAM|mem~57_q\)))) # (!\address[2]~input_o\ & (((\U_RAM|mem~342_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \U_RAM|mem~57_q\,
	datac => \U_RAM|mem~121_q\,
	datad => \U_RAM|mem~342_combout\,
	combout => \U_RAM|mem~343_combout\);

-- Location: LCCOMB_X22_Y28_N0
\U_RAM|mem~569\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~569_combout\ = !\data_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[3]~input_o\,
	combout => \U_RAM|mem~569_combout\);

-- Location: FF_X22_Y28_N1
\U_RAM|mem~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~569_combout\,
	ena => \U_RAM|mem~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~81_q\);

-- Location: LCCOMB_X23_Y28_N4
\U_RAM|mem~570\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~570_combout\ = !\data_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[3]~input_o\,
	combout => \U_RAM|mem~570_combout\);

-- Location: FF_X23_Y28_N15
\U_RAM|mem~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~570_combout\,
	sload => VCC,
	ena => \U_RAM|mem~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~113_q\);

-- Location: FF_X22_Y28_N3
\U_RAM|mem~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_in[3]~input_o\,
	sload => VCC,
	ena => \U_RAM|mem~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~17_q\);

-- Location: LCCOMB_X23_Y28_N24
\U_RAM|mem~49feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~49feeder_combout\ = \data_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[3]~input_o\,
	combout => \U_RAM|mem~49feeder_combout\);

-- Location: FF_X23_Y28_N25
\U_RAM|mem~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~49feeder_combout\,
	ena => \U_RAM|mem~464_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~49_q\);

-- Location: LCCOMB_X22_Y28_N2
\U_RAM|mem~344\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~344_combout\ = (\address[3]~input_o\ & (\address[2]~input_o\)) # (!\address[3]~input_o\ & ((\address[2]~input_o\ & ((\U_RAM|mem~49_q\))) # (!\address[2]~input_o\ & (\U_RAM|mem~17_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \address[2]~input_o\,
	datac => \U_RAM|mem~17_q\,
	datad => \U_RAM|mem~49_q\,
	combout => \U_RAM|mem~344_combout\);

-- Location: LCCOMB_X23_Y28_N14
\U_RAM|mem~345\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~345_combout\ = (\address[3]~input_o\ & ((\U_RAM|mem~344_combout\ & ((!\U_RAM|mem~113_q\))) # (!\U_RAM|mem~344_combout\ & (!\U_RAM|mem~81_q\)))) # (!\address[3]~input_o\ & (((\U_RAM|mem~344_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RAM|mem~81_q\,
	datab => \address[3]~input_o\,
	datac => \U_RAM|mem~113_q\,
	datad => \U_RAM|mem~344_combout\,
	combout => \U_RAM|mem~345_combout\);

-- Location: LCCOMB_X24_Y26_N20
\U_RAM|mem~346\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~346_combout\ = (\address[0]~input_o\ & ((\address[1]~input_o\) # ((\U_RAM|mem~343_combout\)))) # (!\address[0]~input_o\ & (!\address[1]~input_o\ & ((\U_RAM|mem~345_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \U_RAM|mem~343_combout\,
	datad => \U_RAM|mem~345_combout\,
	combout => \U_RAM|mem~346_combout\);

-- Location: LCCOMB_X24_Y26_N6
\U_RAM|mem~349\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~349_combout\ = (\address[1]~input_o\ & ((\U_RAM|mem~346_combout\ & ((\U_RAM|mem~348_combout\))) # (!\U_RAM|mem~346_combout\ & (\U_RAM|mem~341_combout\)))) # (!\address[1]~input_o\ & (((\U_RAM|mem~346_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RAM|mem~341_combout\,
	datab => \address[1]~input_o\,
	datac => \U_RAM|mem~348_combout\,
	datad => \U_RAM|mem~346_combout\,
	combout => \U_RAM|mem~349_combout\);

-- Location: LCCOMB_X24_Y26_N24
\U_RAM|data_out~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|data_out~4_combout\ = (\U_RAM|data_out~0_combout\) # ((\address[4]~input_o\ & (\U_RAM|mem~339_combout\)) # (!\address[4]~input_o\ & ((\U_RAM|mem~349_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[4]~input_o\,
	datab => \U_RAM|data_out~0_combout\,
	datac => \U_RAM|mem~339_combout\,
	datad => \U_RAM|mem~349_combout\,
	combout => \U_RAM|data_out~4_combout\);

-- Location: FF_X24_Y26_N25
\U_RAM|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|data_out~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|data_out\(3));

-- Location: LCCOMB_X24_Y26_N0
\data_out~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_out~4_combout\ = (\U_ROM|data_out\(3) & (((\data_out~0_combout\ & \U_RAM|data_out\(3))) # (!\LessThan0~0_combout\))) # (!\U_ROM|data_out\(3) & (\data_out~0_combout\ & ((\U_RAM|data_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ROM|data_out\(3),
	datab => \data_out~0_combout\,
	datac => \LessThan0~0_combout\,
	datad => \U_RAM|data_out\(3),
	combout => \data_out~4_combout\);

-- Location: IOIBUF_X22_Y31_N1
\data_in[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(4),
	o => \data_in[4]~input_o\);

-- Location: LCCOMB_X19_Y25_N18
\U_RAM|mem~595\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~595_combout\ = !\data_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[4]~input_o\,
	combout => \U_RAM|mem~595_combout\);

-- Location: FF_X19_Y25_N19
\U_RAM|mem~106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~595_combout\,
	ena => \U_RAM|mem~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~106_q\);

-- Location: LCCOMB_X21_Y26_N30
\U_RAM|mem~597\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~597_combout\ = !\data_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[4]~input_o\,
	combout => \U_RAM|mem~597_combout\);

-- Location: FF_X20_Y25_N25
\U_RAM|mem~138\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~597_combout\,
	sload => VCC,
	ena => \U_RAM|mem~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~138_q\);

-- Location: FF_X20_Y25_N3
\U_RAM|mem~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_in[4]~input_o\,
	sload => VCC,
	ena => \U_RAM|mem~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~42_q\);

-- Location: LCCOMB_X21_Y25_N28
\U_RAM|mem~596\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~596_combout\ = !\data_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[4]~input_o\,
	combout => \U_RAM|mem~596_combout\);

-- Location: FF_X21_Y25_N29
\U_RAM|mem~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~596_combout\,
	ena => \U_RAM|mem~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~74_q\);

-- Location: LCCOMB_X20_Y25_N2
\U_RAM|mem~367\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~367_combout\ = (\address[3]~input_o\ & (\address[2]~input_o\)) # (!\address[3]~input_o\ & ((\address[2]~input_o\ & ((!\U_RAM|mem~74_q\))) # (!\address[2]~input_o\ & (\U_RAM|mem~42_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \address[2]~input_o\,
	datac => \U_RAM|mem~42_q\,
	datad => \U_RAM|mem~74_q\,
	combout => \U_RAM|mem~367_combout\);

-- Location: LCCOMB_X20_Y25_N24
\U_RAM|mem~368\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~368_combout\ = (\address[3]~input_o\ & ((\U_RAM|mem~367_combout\ & ((!\U_RAM|mem~138_q\))) # (!\U_RAM|mem~367_combout\ & (!\U_RAM|mem~106_q\)))) # (!\address[3]~input_o\ & (((\U_RAM|mem~367_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \U_RAM|mem~106_q\,
	datac => \U_RAM|mem~138_q\,
	datad => \U_RAM|mem~367_combout\,
	combout => \U_RAM|mem~368_combout\);

-- Location: LCCOMB_X21_Y29_N18
\U_RAM|mem~589\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~589_combout\ = !\data_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[4]~input_o\,
	combout => \U_RAM|mem~589_combout\);

-- Location: FF_X21_Y29_N19
\U_RAM|mem~122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~589_combout\,
	ena => \U_RAM|mem~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~122_q\);

-- Location: LCCOMB_X20_Y29_N16
\U_RAM|mem~588\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~588_combout\ = !\data_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[4]~input_o\,
	combout => \U_RAM|mem~588_combout\);

-- Location: FF_X21_Y29_N9
\U_RAM|mem~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~588_combout\,
	sload => VCC,
	ena => \U_RAM|mem~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~90_q\);

-- Location: FF_X20_Y29_N15
\U_RAM|mem~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_in[4]~input_o\,
	sload => VCC,
	ena => \U_RAM|mem~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~26_q\);

-- Location: LCCOMB_X20_Y29_N0
\U_RAM|mem~58feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~58feeder_combout\ = \data_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[4]~input_o\,
	combout => \U_RAM|mem~58feeder_combout\);

-- Location: FF_X20_Y29_N1
\U_RAM|mem~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~58feeder_combout\,
	ena => \U_RAM|mem~462_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~58_q\);

-- Location: LCCOMB_X20_Y29_N14
\U_RAM|mem~360\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~360_combout\ = (\address[2]~input_o\ & ((\address[3]~input_o\) # ((\U_RAM|mem~58_q\)))) # (!\address[2]~input_o\ & (!\address[3]~input_o\ & (\U_RAM|mem~26_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[3]~input_o\,
	datac => \U_RAM|mem~26_q\,
	datad => \U_RAM|mem~58_q\,
	combout => \U_RAM|mem~360_combout\);

-- Location: LCCOMB_X21_Y29_N8
\U_RAM|mem~361\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~361_combout\ = (\address[3]~input_o\ & ((\U_RAM|mem~360_combout\ & (!\U_RAM|mem~122_q\)) # (!\U_RAM|mem~360_combout\ & ((!\U_RAM|mem~90_q\))))) # (!\address[3]~input_o\ & (((\U_RAM|mem~360_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \U_RAM|mem~122_q\,
	datac => \U_RAM|mem~90_q\,
	datad => \U_RAM|mem~360_combout\,
	combout => \U_RAM|mem~361_combout\);

-- Location: FF_X23_Y28_N1
\U_RAM|mem~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_in[4]~input_o\,
	sload => VCC,
	ena => \U_RAM|mem~464_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~50_q\);

-- Location: LCCOMB_X19_Y28_N0
\U_RAM|mem~594\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~594_combout\ = !\data_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[4]~input_o\,
	combout => \U_RAM|mem~594_combout\);

-- Location: FF_X21_Y28_N5
\U_RAM|mem~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~594_combout\,
	sload => VCC,
	ena => \U_RAM|mem~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~114_q\);

-- Location: FF_X22_Y28_N7
\U_RAM|mem~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_in[4]~input_o\,
	sload => VCC,
	ena => \U_RAM|mem~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~18_q\);

-- Location: LCCOMB_X22_Y28_N28
\U_RAM|mem~593\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~593_combout\ = !\data_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[4]~input_o\,
	combout => \U_RAM|mem~593_combout\);

-- Location: FF_X22_Y28_N29
\U_RAM|mem~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~593_combout\,
	ena => \U_RAM|mem~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~82_q\);

-- Location: LCCOMB_X22_Y28_N6
\U_RAM|mem~364\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~364_combout\ = (\address[3]~input_o\ & ((\address[2]~input_o\) # ((!\U_RAM|mem~82_q\)))) # (!\address[3]~input_o\ & (!\address[2]~input_o\ & (\U_RAM|mem~18_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \address[2]~input_o\,
	datac => \U_RAM|mem~18_q\,
	datad => \U_RAM|mem~82_q\,
	combout => \U_RAM|mem~364_combout\);

-- Location: LCCOMB_X21_Y28_N4
\U_RAM|mem~365\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~365_combout\ = (\address[2]~input_o\ & ((\U_RAM|mem~364_combout\ & ((!\U_RAM|mem~114_q\))) # (!\U_RAM|mem~364_combout\ & (\U_RAM|mem~50_q\)))) # (!\address[2]~input_o\ & (((\U_RAM|mem~364_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \U_RAM|mem~50_q\,
	datac => \U_RAM|mem~114_q\,
	datad => \U_RAM|mem~364_combout\,
	combout => \U_RAM|mem~365_combout\);

-- Location: LCCOMB_X21_Y25_N10
\U_RAM|mem~590\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~590_combout\ = !\data_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[4]~input_o\,
	combout => \U_RAM|mem~590_combout\);

-- Location: FF_X21_Y25_N11
\U_RAM|mem~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~590_combout\,
	ena => \U_RAM|mem~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~66_q\);

-- Location: LCCOMB_X22_Y25_N30
\U_RAM|mem~592\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~592_combout\ = !\data_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[4]~input_o\,
	combout => \U_RAM|mem~592_combout\);

-- Location: FF_X22_Y25_N21
\U_RAM|mem~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~592_combout\,
	sload => VCC,
	ena => \U_RAM|mem~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~130_q\);

-- Location: FF_X22_Y25_N19
\U_RAM|mem~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_in[4]~input_o\,
	sload => VCC,
	ena => \U_RAM|mem~468_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~34_q\);

-- Location: LCCOMB_X23_Y25_N16
\U_RAM|mem~591\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~591_combout\ = !\data_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[4]~input_o\,
	combout => \U_RAM|mem~591_combout\);

-- Location: FF_X23_Y25_N17
\U_RAM|mem~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~591_combout\,
	ena => \U_RAM|mem~466_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~98_q\);

-- Location: LCCOMB_X22_Y25_N18
\U_RAM|mem~362\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~362_combout\ = (\address[3]~input_o\ & ((\address[2]~input_o\) # ((!\U_RAM|mem~98_q\)))) # (!\address[3]~input_o\ & (!\address[2]~input_o\ & (\U_RAM|mem~34_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \address[2]~input_o\,
	datac => \U_RAM|mem~34_q\,
	datad => \U_RAM|mem~98_q\,
	combout => \U_RAM|mem~362_combout\);

-- Location: LCCOMB_X22_Y25_N20
\U_RAM|mem~363\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~363_combout\ = (\address[2]~input_o\ & ((\U_RAM|mem~362_combout\ & ((!\U_RAM|mem~130_q\))) # (!\U_RAM|mem~362_combout\ & (!\U_RAM|mem~66_q\)))) # (!\address[2]~input_o\ & (((\U_RAM|mem~362_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RAM|mem~66_q\,
	datab => \address[2]~input_o\,
	datac => \U_RAM|mem~130_q\,
	datad => \U_RAM|mem~362_combout\,
	combout => \U_RAM|mem~363_combout\);

-- Location: LCCOMB_X21_Y28_N10
\U_RAM|mem~366\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~366_combout\ = (\address[0]~input_o\ & (\address[1]~input_o\)) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & ((\U_RAM|mem~363_combout\))) # (!\address[1]~input_o\ & (\U_RAM|mem~365_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \U_RAM|mem~365_combout\,
	datad => \U_RAM|mem~363_combout\,
	combout => \U_RAM|mem~366_combout\);

-- Location: LCCOMB_X21_Y28_N8
\U_RAM|mem~369\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~369_combout\ = (\address[0]~input_o\ & ((\U_RAM|mem~366_combout\ & (\U_RAM|mem~368_combout\)) # (!\U_RAM|mem~366_combout\ & ((\U_RAM|mem~361_combout\))))) # (!\address[0]~input_o\ & (((\U_RAM|mem~366_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RAM|mem~368_combout\,
	datab => \address[0]~input_o\,
	datac => \U_RAM|mem~361_combout\,
	datad => \U_RAM|mem~366_combout\,
	combout => \U_RAM|mem~369_combout\);

-- Location: LCCOMB_X26_Y28_N12
\U_RAM|mem~582\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~582_combout\ = !\data_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[4]~input_o\,
	combout => \U_RAM|mem~582_combout\);

-- Location: FF_X26_Y28_N13
\U_RAM|mem~162\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~582_combout\,
	ena => \U_RAM|mem~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~162_q\);

-- Location: LCCOMB_X25_Y28_N8
\U_RAM|mem~585\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~585_combout\ = !\data_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[4]~input_o\,
	combout => \U_RAM|mem~585_combout\);

-- Location: FF_X25_Y28_N7
\U_RAM|mem~170\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~585_combout\,
	sload => VCC,
	ena => \U_RAM|mem~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~170_q\);

-- Location: LCCOMB_X25_Y28_N22
\U_RAM|mem~584\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~584_combout\ = !\data_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[4]~input_o\,
	combout => \U_RAM|mem~584_combout\);

-- Location: FF_X25_Y28_N1
\U_RAM|mem~146\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~584_combout\,
	sload => VCC,
	ena => \U_RAM|mem~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~146_q\);

-- Location: LCCOMB_X26_Y28_N30
\U_RAM|mem~583\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~583_combout\ = !\data_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[4]~input_o\,
	combout => \U_RAM|mem~583_combout\);

-- Location: FF_X26_Y28_N31
\U_RAM|mem~154\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~583_combout\,
	ena => \U_RAM|mem~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~154_q\);

-- Location: LCCOMB_X25_Y28_N0
\U_RAM|mem~354\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~354_combout\ = (\address[0]~input_o\ & ((\address[1]~input_o\) # ((!\U_RAM|mem~154_q\)))) # (!\address[0]~input_o\ & (!\address[1]~input_o\ & (!\U_RAM|mem~146_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \U_RAM|mem~146_q\,
	datad => \U_RAM|mem~154_q\,
	combout => \U_RAM|mem~354_combout\);

-- Location: LCCOMB_X25_Y28_N6
\U_RAM|mem~355\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~355_combout\ = (\address[1]~input_o\ & ((\U_RAM|mem~354_combout\ & ((!\U_RAM|mem~170_q\))) # (!\U_RAM|mem~354_combout\ & (!\U_RAM|mem~162_q\)))) # (!\address[1]~input_o\ & (((\U_RAM|mem~354_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \U_RAM|mem~162_q\,
	datac => \U_RAM|mem~170_q\,
	datad => \U_RAM|mem~354_combout\,
	combout => \U_RAM|mem~355_combout\);

-- Location: LCCOMB_X22_Y27_N28
\U_RAM|mem~578\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~578_combout\ = !\data_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[4]~input_o\,
	combout => \U_RAM|mem~578_combout\);

-- Location: FF_X22_Y27_N29
\U_RAM|mem~226\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~578_combout\,
	ena => \U_RAM|mem~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~226_q\);

-- Location: LCCOMB_X23_Y27_N2
\U_RAM|mem~581\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~581_combout\ = !\data_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[4]~input_o\,
	combout => \U_RAM|mem~581_combout\);

-- Location: FF_X23_Y27_N1
\U_RAM|mem~234\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~581_combout\,
	sload => VCC,
	ena => \U_RAM|mem~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~234_q\);

-- Location: LCCOMB_X24_Y29_N12
\U_RAM|mem~580\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~580_combout\ = !\data_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[4]~input_o\,
	combout => \U_RAM|mem~580_combout\);

-- Location: FF_X23_Y27_N11
\U_RAM|mem~210\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~580_combout\,
	sload => VCC,
	ena => \U_RAM|mem~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~210_q\);

-- Location: LCCOMB_X24_Y27_N4
\U_RAM|mem~579\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~579_combout\ = !\data_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[4]~input_o\,
	combout => \U_RAM|mem~579_combout\);

-- Location: FF_X24_Y27_N5
\U_RAM|mem~218\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~579_combout\,
	ena => \U_RAM|mem~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~218_q\);

-- Location: LCCOMB_X23_Y27_N10
\U_RAM|mem~352\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~352_combout\ = (\address[0]~input_o\ & ((\address[1]~input_o\) # ((!\U_RAM|mem~218_q\)))) # (!\address[0]~input_o\ & (!\address[1]~input_o\ & (!\U_RAM|mem~210_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \U_RAM|mem~210_q\,
	datad => \U_RAM|mem~218_q\,
	combout => \U_RAM|mem~352_combout\);

-- Location: LCCOMB_X23_Y27_N0
\U_RAM|mem~353\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~353_combout\ = (\address[1]~input_o\ & ((\U_RAM|mem~352_combout\ & ((!\U_RAM|mem~234_q\))) # (!\U_RAM|mem~352_combout\ & (!\U_RAM|mem~226_q\)))) # (!\address[1]~input_o\ & (((\U_RAM|mem~352_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \U_RAM|mem~226_q\,
	datac => \U_RAM|mem~234_q\,
	datad => \U_RAM|mem~352_combout\,
	combout => \U_RAM|mem~353_combout\);

-- Location: LCCOMB_X21_Y28_N28
\U_RAM|mem~356\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~356_combout\ = (\address[2]~input_o\ & (\address[3]~input_o\)) # (!\address[2]~input_o\ & ((\address[3]~input_o\ & ((\U_RAM|mem~353_combout\))) # (!\address[3]~input_o\ & (\U_RAM|mem~355_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[3]~input_o\,
	datac => \U_RAM|mem~355_combout\,
	datad => \U_RAM|mem~353_combout\,
	combout => \U_RAM|mem~356_combout\);

-- Location: LCCOMB_X19_Y26_N24
\U_RAM|mem~586\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~586_combout\ = !\data_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[4]~input_o\,
	combout => \U_RAM|mem~586_combout\);

-- Location: FF_X20_Y26_N23
\U_RAM|mem~250\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~586_combout\,
	sload => VCC,
	ena => \U_RAM|mem~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~250_q\);

-- Location: FF_X19_Y26_N11
\U_RAM|mem~266\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_in[4]~input_o\,
	sload => VCC,
	ena => \U_RAM|mem~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~266_q\);

-- Location: LCCOMB_X26_Y26_N26
\U_RAM|mem~587\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~587_combout\ = !\data_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[4]~input_o\,
	combout => \U_RAM|mem~587_combout\);

-- Location: FF_X20_Y26_N29
\U_RAM|mem~242\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~587_combout\,
	sload => VCC,
	ena => \U_RAM|mem~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~242_q\);

-- Location: FF_X21_Y26_N17
\U_RAM|mem~258\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_in[4]~input_o\,
	sload => VCC,
	ena => \U_RAM|mem~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~258_q\);

-- Location: LCCOMB_X20_Y26_N28
\U_RAM|mem~357\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~357_combout\ = (\address[0]~input_o\ & (\address[1]~input_o\)) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & ((\U_RAM|mem~258_q\))) # (!\address[1]~input_o\ & (!\U_RAM|mem~242_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \U_RAM|mem~242_q\,
	datad => \U_RAM|mem~258_q\,
	combout => \U_RAM|mem~357_combout\);

-- Location: LCCOMB_X19_Y26_N10
\U_RAM|mem~358\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~358_combout\ = (\address[0]~input_o\ & ((\U_RAM|mem~357_combout\ & ((\U_RAM|mem~266_q\))) # (!\U_RAM|mem~357_combout\ & (!\U_RAM|mem~250_q\)))) # (!\address[0]~input_o\ & (((\U_RAM|mem~357_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \U_RAM|mem~250_q\,
	datac => \U_RAM|mem~266_q\,
	datad => \U_RAM|mem~357_combout\,
	combout => \U_RAM|mem~358_combout\);

-- Location: LCCOMB_X25_Y27_N16
\U_RAM|mem~577\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~577_combout\ = !\data_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[4]~input_o\,
	combout => \U_RAM|mem~577_combout\);

-- Location: FF_X25_Y27_N17
\U_RAM|mem~202\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~577_combout\,
	ena => \U_RAM|mem~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~202_q\);

-- Location: LCCOMB_X23_Y27_N6
\U_RAM|mem~574\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~574_combout\ = !\data_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[4]~input_o\,
	combout => \U_RAM|mem~574_combout\);

-- Location: FF_X24_Y27_N23
\U_RAM|mem~186\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~574_combout\,
	sload => VCC,
	ena => \U_RAM|mem~433_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~186_q\);

-- Location: LCCOMB_X26_Y27_N12
\U_RAM|mem~576\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~576_combout\ = !\data_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[4]~input_o\,
	combout => \U_RAM|mem~576_combout\);

-- Location: FF_X25_Y27_N23
\U_RAM|mem~178\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~576_combout\,
	sload => VCC,
	ena => \U_RAM|mem~435_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~178_q\);

-- Location: LCCOMB_X26_Y27_N18
\U_RAM|mem~575\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~575_combout\ = !\data_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[4]~input_o\,
	combout => \U_RAM|mem~575_combout\);

-- Location: FF_X26_Y27_N19
\U_RAM|mem~194\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~575_combout\,
	ena => \U_RAM|mem~431_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~194_q\);

-- Location: LCCOMB_X25_Y27_N22
\U_RAM|mem~350\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~350_combout\ = (\address[1]~input_o\ & ((\address[0]~input_o\) # ((!\U_RAM|mem~194_q\)))) # (!\address[1]~input_o\ & (!\address[0]~input_o\ & (!\U_RAM|mem~178_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => \U_RAM|mem~178_q\,
	datad => \U_RAM|mem~194_q\,
	combout => \U_RAM|mem~350_combout\);

-- Location: LCCOMB_X24_Y27_N22
\U_RAM|mem~351\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~351_combout\ = (\address[0]~input_o\ & ((\U_RAM|mem~350_combout\ & (!\U_RAM|mem~202_q\)) # (!\U_RAM|mem~350_combout\ & ((!\U_RAM|mem~186_q\))))) # (!\address[0]~input_o\ & (((\U_RAM|mem~350_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \U_RAM|mem~202_q\,
	datac => \U_RAM|mem~186_q\,
	datad => \U_RAM|mem~350_combout\,
	combout => \U_RAM|mem~351_combout\);

-- Location: LCCOMB_X21_Y28_N6
\U_RAM|mem~359\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~359_combout\ = (\address[2]~input_o\ & ((\U_RAM|mem~356_combout\ & (\U_RAM|mem~358_combout\)) # (!\U_RAM|mem~356_combout\ & ((\U_RAM|mem~351_combout\))))) # (!\address[2]~input_o\ & (\U_RAM|mem~356_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \U_RAM|mem~356_combout\,
	datac => \U_RAM|mem~358_combout\,
	datad => \U_RAM|mem~351_combout\,
	combout => \U_RAM|mem~359_combout\);

-- Location: LCCOMB_X21_Y28_N30
\U_RAM|data_out~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|data_out~5_combout\ = (\U_RAM|data_out~0_combout\) # ((\address[4]~input_o\ & ((\U_RAM|mem~359_combout\))) # (!\address[4]~input_o\ & (\U_RAM|mem~369_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RAM|data_out~0_combout\,
	datab => \address[4]~input_o\,
	datac => \U_RAM|mem~369_combout\,
	datad => \U_RAM|mem~359_combout\,
	combout => \U_RAM|data_out~5_combout\);

-- Location: FF_X21_Y28_N31
\U_RAM|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|data_out~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|data_out\(4));

-- Location: LCCOMB_X21_Y28_N20
\data_out~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_out~5_combout\ = (\U_RAM|data_out\(4) & ((\data_out~0_combout\) # ((!\LessThan0~0_combout\ & \U_ROM|data_out\(2))))) # (!\U_RAM|data_out\(4) & (!\LessThan0~0_combout\ & ((\U_ROM|data_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RAM|data_out\(4),
	datab => \LessThan0~0_combout\,
	datac => \data_out~0_combout\,
	datad => \U_ROM|data_out\(2),
	combout => \data_out~5_combout\);

-- Location: IOIBUF_X33_Y27_N8
\data_in[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(5),
	o => \data_in[5]~input_o\);

-- Location: LCCOMB_X22_Y25_N16
\U_RAM|mem~614\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~614_combout\ = !\data_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[5]~input_o\,
	combout => \U_RAM|mem~614_combout\);

-- Location: FF_X22_Y25_N17
\U_RAM|mem~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~614_combout\,
	ena => \U_RAM|mem~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~131_q\);

-- Location: LCCOMB_X20_Y27_N10
\U_RAM|mem~612\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~612_combout\ = !\data_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[5]~input_o\,
	combout => \U_RAM|mem~612_combout\);

-- Location: FF_X23_Y25_N11
\U_RAM|mem~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~612_combout\,
	sload => VCC,
	ena => \U_RAM|mem~466_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~99_q\);

-- Location: FF_X22_Y25_N15
\U_RAM|mem~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_in[5]~input_o\,
	sload => VCC,
	ena => \U_RAM|mem~468_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~35_q\);

-- Location: LCCOMB_X21_Y25_N2
\U_RAM|mem~613\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~613_combout\ = !\data_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[5]~input_o\,
	combout => \U_RAM|mem~613_combout\);

-- Location: FF_X21_Y25_N3
\U_RAM|mem~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~613_combout\,
	ena => \U_RAM|mem~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~67_q\);

-- Location: LCCOMB_X22_Y25_N14
\U_RAM|mem~380\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~380_combout\ = (\address[3]~input_o\ & (\address[2]~input_o\)) # (!\address[3]~input_o\ & ((\address[2]~input_o\ & ((!\U_RAM|mem~67_q\))) # (!\address[2]~input_o\ & (\U_RAM|mem~35_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \address[2]~input_o\,
	datac => \U_RAM|mem~35_q\,
	datad => \U_RAM|mem~67_q\,
	combout => \U_RAM|mem~380_combout\);

-- Location: LCCOMB_X23_Y25_N10
\U_RAM|mem~381\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~381_combout\ = (\address[3]~input_o\ & ((\U_RAM|mem~380_combout\ & (!\U_RAM|mem~131_q\)) # (!\U_RAM|mem~380_combout\ & ((!\U_RAM|mem~99_q\))))) # (!\address[3]~input_o\ & (((\U_RAM|mem~380_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RAM|mem~131_q\,
	datab => \address[3]~input_o\,
	datac => \U_RAM|mem~99_q\,
	datad => \U_RAM|mem~380_combout\,
	combout => \U_RAM|mem~381_combout\);

-- Location: LCCOMB_X21_Y25_N8
\U_RAM|mem~619\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~619_combout\ = !\data_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[5]~input_o\,
	combout => \U_RAM|mem~619_combout\);

-- Location: FF_X21_Y25_N9
\U_RAM|mem~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~619_combout\,
	ena => \U_RAM|mem~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~75_q\);

-- Location: LCCOMB_X19_Y25_N16
\U_RAM|mem~621\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~621_combout\ = !\data_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[5]~input_o\,
	combout => \U_RAM|mem~621_combout\);

-- Location: FF_X20_Y25_N29
\U_RAM|mem~139\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~621_combout\,
	sload => VCC,
	ena => \U_RAM|mem~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~139_q\);

-- Location: FF_X20_Y25_N7
\U_RAM|mem~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_in[5]~input_o\,
	sload => VCC,
	ena => \U_RAM|mem~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~43_q\);

-- Location: LCCOMB_X19_Y25_N20
\U_RAM|mem~620\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~620_combout\ = !\data_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[5]~input_o\,
	combout => \U_RAM|mem~620_combout\);

-- Location: FF_X19_Y25_N21
\U_RAM|mem~107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~620_combout\,
	ena => \U_RAM|mem~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~107_q\);

-- Location: LCCOMB_X20_Y25_N6
\U_RAM|mem~387\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~387_combout\ = (\address[3]~input_o\ & ((\address[2]~input_o\) # ((!\U_RAM|mem~107_q\)))) # (!\address[3]~input_o\ & (!\address[2]~input_o\ & (\U_RAM|mem~43_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \address[2]~input_o\,
	datac => \U_RAM|mem~43_q\,
	datad => \U_RAM|mem~107_q\,
	combout => \U_RAM|mem~387_combout\);

-- Location: LCCOMB_X20_Y25_N28
\U_RAM|mem~388\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~388_combout\ = (\address[2]~input_o\ & ((\U_RAM|mem~387_combout\ & ((!\U_RAM|mem~139_q\))) # (!\U_RAM|mem~387_combout\ & (!\U_RAM|mem~75_q\)))) # (!\address[2]~input_o\ & (((\U_RAM|mem~387_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \U_RAM|mem~75_q\,
	datac => \U_RAM|mem~139_q\,
	datad => \U_RAM|mem~387_combout\,
	combout => \U_RAM|mem~388_combout\);

-- Location: LCCOMB_X23_Y29_N16
\U_RAM|mem~59feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~59feeder_combout\ = \data_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[5]~input_o\,
	combout => \U_RAM|mem~59feeder_combout\);

-- Location: FF_X23_Y29_N17
\U_RAM|mem~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~59feeder_combout\,
	ena => \U_RAM|mem~462_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~59_q\);

-- Location: LCCOMB_X22_Y29_N12
\U_RAM|mem~616\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~616_combout\ = !\data_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[5]~input_o\,
	combout => \U_RAM|mem~616_combout\);

-- Location: FF_X22_Y29_N7
\U_RAM|mem~123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~616_combout\,
	sload => VCC,
	ena => \U_RAM|mem~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~123_q\);

-- Location: FF_X22_Y29_N21
\U_RAM|mem~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_in[5]~input_o\,
	sload => VCC,
	ena => \U_RAM|mem~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~27_q\);

-- Location: LCCOMB_X21_Y29_N24
\U_RAM|mem~615\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~615_combout\ = !\data_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[5]~input_o\,
	combout => \U_RAM|mem~615_combout\);

-- Location: FF_X21_Y29_N25
\U_RAM|mem~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~615_combout\,
	ena => \U_RAM|mem~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~91_q\);

-- Location: LCCOMB_X22_Y29_N20
\U_RAM|mem~382\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~382_combout\ = (\address[2]~input_o\ & (\address[3]~input_o\)) # (!\address[2]~input_o\ & ((\address[3]~input_o\ & ((!\U_RAM|mem~91_q\))) # (!\address[3]~input_o\ & (\U_RAM|mem~27_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[3]~input_o\,
	datac => \U_RAM|mem~27_q\,
	datad => \U_RAM|mem~91_q\,
	combout => \U_RAM|mem~382_combout\);

-- Location: LCCOMB_X22_Y29_N6
\U_RAM|mem~383\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~383_combout\ = (\address[2]~input_o\ & ((\U_RAM|mem~382_combout\ & ((!\U_RAM|mem~123_q\))) # (!\U_RAM|mem~382_combout\ & (\U_RAM|mem~59_q\)))) # (!\address[2]~input_o\ & (((\U_RAM|mem~382_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \U_RAM|mem~59_q\,
	datac => \U_RAM|mem~123_q\,
	datad => \U_RAM|mem~382_combout\,
	combout => \U_RAM|mem~383_combout\);

-- Location: LCCOMB_X22_Y28_N4
\U_RAM|mem~617\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~617_combout\ = !\data_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[5]~input_o\,
	combout => \U_RAM|mem~617_combout\);

-- Location: FF_X22_Y28_N5
\U_RAM|mem~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~617_combout\,
	ena => \U_RAM|mem~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~83_q\);

-- Location: LCCOMB_X23_Y29_N28
\U_RAM|mem~618\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~618_combout\ = !\data_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[5]~input_o\,
	combout => \U_RAM|mem~618_combout\);

-- Location: FF_X23_Y26_N19
\U_RAM|mem~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~618_combout\,
	sload => VCC,
	ena => \U_RAM|mem~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~115_q\);

-- Location: FF_X22_Y28_N27
\U_RAM|mem~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_in[5]~input_o\,
	sload => VCC,
	ena => \U_RAM|mem~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~19_q\);

-- Location: FF_X23_Y28_N23
\U_RAM|mem~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_in[5]~input_o\,
	sload => VCC,
	ena => \U_RAM|mem~464_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~51_q\);

-- Location: LCCOMB_X22_Y28_N26
\U_RAM|mem~384\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~384_combout\ = (\address[3]~input_o\ & (\address[2]~input_o\)) # (!\address[3]~input_o\ & ((\address[2]~input_o\ & ((\U_RAM|mem~51_q\))) # (!\address[2]~input_o\ & (\U_RAM|mem~19_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \address[2]~input_o\,
	datac => \U_RAM|mem~19_q\,
	datad => \U_RAM|mem~51_q\,
	combout => \U_RAM|mem~384_combout\);

-- Location: LCCOMB_X23_Y26_N18
\U_RAM|mem~385\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~385_combout\ = (\address[3]~input_o\ & ((\U_RAM|mem~384_combout\ & ((!\U_RAM|mem~115_q\))) # (!\U_RAM|mem~384_combout\ & (!\U_RAM|mem~83_q\)))) # (!\address[3]~input_o\ & (((\U_RAM|mem~384_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \U_RAM|mem~83_q\,
	datac => \U_RAM|mem~115_q\,
	datad => \U_RAM|mem~384_combout\,
	combout => \U_RAM|mem~385_combout\);

-- Location: LCCOMB_X23_Y26_N24
\U_RAM|mem~386\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~386_combout\ = (\address[0]~input_o\ & ((\address[1]~input_o\) # ((\U_RAM|mem~383_combout\)))) # (!\address[0]~input_o\ & (!\address[1]~input_o\ & ((\U_RAM|mem~385_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \U_RAM|mem~383_combout\,
	datad => \U_RAM|mem~385_combout\,
	combout => \U_RAM|mem~386_combout\);

-- Location: LCCOMB_X23_Y26_N22
\U_RAM|mem~389\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~389_combout\ = (\address[1]~input_o\ & ((\U_RAM|mem~386_combout\ & ((\U_RAM|mem~388_combout\))) # (!\U_RAM|mem~386_combout\ & (\U_RAM|mem~381_combout\)))) # (!\address[1]~input_o\ & (((\U_RAM|mem~386_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \U_RAM|mem~381_combout\,
	datac => \U_RAM|mem~388_combout\,
	datad => \U_RAM|mem~386_combout\,
	combout => \U_RAM|mem~389_combout\);

-- Location: LCCOMB_X20_Y26_N22
\U_RAM|mem~611\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~611_combout\ = !\data_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in[5]~input_o\,
	combout => \U_RAM|mem~611_combout\);

-- Location: FF_X20_Y26_N9
\U_RAM|mem~243\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~611_combout\,
	sload => VCC,
	ena => \U_RAM|mem~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~243_q\);

-- Location: LCCOMB_X20_Y26_N2
\U_RAM|mem~610\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~610_combout\ = !\data_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[5]~input_o\,
	combout => \U_RAM|mem~610_combout\);

-- Location: FF_X20_Y26_N3
\U_RAM|mem~251\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~610_combout\,
	ena => \U_RAM|mem~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~251_q\);

-- Location: LCCOMB_X20_Y26_N8
\U_RAM|mem~377\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~377_combout\ = (\address[0]~input_o\ & ((\address[1]~input_o\) # ((!\U_RAM|mem~251_q\)))) # (!\address[0]~input_o\ & (!\address[1]~input_o\ & (!\U_RAM|mem~243_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \U_RAM|mem~243_q\,
	datad => \U_RAM|mem~251_q\,
	combout => \U_RAM|mem~377_combout\);

-- Location: FF_X19_Y26_N5
\U_RAM|mem~267\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_in[5]~input_o\,
	sload => VCC,
	ena => \U_RAM|mem~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~267_q\);

-- Location: FF_X21_Y26_N23
\U_RAM|mem~259\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_in[5]~input_o\,
	sload => VCC,
	ena => \U_RAM|mem~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~259_q\);

-- Location: LCCOMB_X19_Y26_N4
\U_RAM|mem~378\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~378_combout\ = (\address[1]~input_o\ & ((\U_RAM|mem~377_combout\ & (\U_RAM|mem~267_q\)) # (!\U_RAM|mem~377_combout\ & ((\U_RAM|mem~259_q\))))) # (!\address[1]~input_o\ & (\U_RAM|mem~377_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \U_RAM|mem~377_combout\,
	datac => \U_RAM|mem~267_q\,
	datad => \U_RAM|mem~259_q\,
	combout => \U_RAM|mem~378_combout\);

-- Location: LCCOMB_X20_Y27_N20
\U_RAM|mem~601\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~601_combout\ = !\data_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[5]~input_o\,
	combout => \U_RAM|mem~601_combout\);

-- Location: FF_X23_Y27_N27
\U_RAM|mem~235\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~601_combout\,
	sload => VCC,
	ena => \U_RAM|mem~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~235_q\);

-- Location: LCCOMB_X24_Y27_N26
\U_RAM|mem~598\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~598_combout\ = !\data_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[5]~input_o\,
	combout => \U_RAM|mem~598_combout\);

-- Location: FF_X24_Y27_N3
\U_RAM|mem~219\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~598_combout\,
	sload => VCC,
	ena => \U_RAM|mem~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~219_q\);

-- Location: LCCOMB_X20_Y27_N26
\U_RAM|mem~600\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~600_combout\ = !\data_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[5]~input_o\,
	combout => \U_RAM|mem~600_combout\);

-- Location: FF_X20_Y27_N17
\U_RAM|mem~211\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~600_combout\,
	sload => VCC,
	ena => \U_RAM|mem~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~211_q\);

-- Location: LCCOMB_X21_Y27_N28
\U_RAM|mem~599\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~599_combout\ = !\data_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[5]~input_o\,
	combout => \U_RAM|mem~599_combout\);

-- Location: FF_X21_Y27_N29
\U_RAM|mem~227\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~599_combout\,
	ena => \U_RAM|mem~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~227_q\);

-- Location: LCCOMB_X20_Y27_N16
\U_RAM|mem~370\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~370_combout\ = (\address[0]~input_o\ & (\address[1]~input_o\)) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & ((!\U_RAM|mem~227_q\))) # (!\address[1]~input_o\ & (!\U_RAM|mem~211_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \U_RAM|mem~211_q\,
	datad => \U_RAM|mem~227_q\,
	combout => \U_RAM|mem~370_combout\);

-- Location: LCCOMB_X24_Y27_N2
\U_RAM|mem~371\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~371_combout\ = (\address[0]~input_o\ & ((\U_RAM|mem~370_combout\ & (!\U_RAM|mem~235_q\)) # (!\U_RAM|mem~370_combout\ & ((!\U_RAM|mem~219_q\))))) # (!\address[0]~input_o\ & (((\U_RAM|mem~370_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RAM|mem~235_q\,
	datab => \address[0]~input_o\,
	datac => \U_RAM|mem~219_q\,
	datad => \U_RAM|mem~370_combout\,
	combout => \U_RAM|mem~371_combout\);

-- Location: LCCOMB_X26_Y27_N28
\U_RAM|mem~602\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~602_combout\ = !\data_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[5]~input_o\,
	combout => \U_RAM|mem~602_combout\);

-- Location: FF_X26_Y27_N29
\U_RAM|mem~195\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~602_combout\,
	ena => \U_RAM|mem~431_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~195_q\);

-- Location: LCCOMB_X27_Y27_N8
\U_RAM|mem~605\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~605_combout\ = !\data_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[5]~input_o\,
	combout => \U_RAM|mem~605_combout\);

-- Location: FF_X25_Y27_N13
\U_RAM|mem~203\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~605_combout\,
	sload => VCC,
	ena => \U_RAM|mem~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~203_q\);

-- Location: LCCOMB_X26_Y27_N10
\U_RAM|mem~604\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~604_combout\ = !\data_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[5]~input_o\,
	combout => \U_RAM|mem~604_combout\);

-- Location: FF_X25_Y27_N3
\U_RAM|mem~179\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~604_combout\,
	sload => VCC,
	ena => \U_RAM|mem~435_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~179_q\);

-- Location: LCCOMB_X24_Y27_N20
\U_RAM|mem~603\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~603_combout\ = !\data_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[5]~input_o\,
	combout => \U_RAM|mem~603_combout\);

-- Location: FF_X24_Y27_N21
\U_RAM|mem~187\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~603_combout\,
	ena => \U_RAM|mem~433_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~187_q\);

-- Location: LCCOMB_X25_Y27_N2
\U_RAM|mem~372\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~372_combout\ = (\address[1]~input_o\ & (\address[0]~input_o\)) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & ((!\U_RAM|mem~187_q\))) # (!\address[0]~input_o\ & (!\U_RAM|mem~179_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => \U_RAM|mem~179_q\,
	datad => \U_RAM|mem~187_q\,
	combout => \U_RAM|mem~372_combout\);

-- Location: LCCOMB_X25_Y27_N12
\U_RAM|mem~373\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~373_combout\ = (\address[1]~input_o\ & ((\U_RAM|mem~372_combout\ & ((!\U_RAM|mem~203_q\))) # (!\U_RAM|mem~372_combout\ & (!\U_RAM|mem~195_q\)))) # (!\address[1]~input_o\ & (((\U_RAM|mem~372_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \U_RAM|mem~195_q\,
	datac => \U_RAM|mem~203_q\,
	datad => \U_RAM|mem~372_combout\,
	combout => \U_RAM|mem~373_combout\);

-- Location: LCCOMB_X26_Y28_N28
\U_RAM|mem~606\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~606_combout\ = !\data_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[5]~input_o\,
	combout => \U_RAM|mem~606_combout\);

-- Location: FF_X26_Y28_N29
\U_RAM|mem~155\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~606_combout\,
	ena => \U_RAM|mem~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~155_q\);

-- Location: LCCOMB_X21_Y27_N0
\U_RAM|mem~609\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~609_combout\ = !\data_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[5]~input_o\,
	combout => \U_RAM|mem~609_combout\);

-- Location: FF_X25_Y28_N11
\U_RAM|mem~171\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~609_combout\,
	sload => VCC,
	ena => \U_RAM|mem~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~171_q\);

-- Location: LCCOMB_X26_Y28_N20
\U_RAM|mem~608\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~608_combout\ = !\data_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[5]~input_o\,
	combout => \U_RAM|mem~608_combout\);

-- Location: FF_X25_Y28_N13
\U_RAM|mem~147\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~608_combout\,
	sload => VCC,
	ena => \U_RAM|mem~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~147_q\);

-- Location: LCCOMB_X26_Y28_N18
\U_RAM|mem~607\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~607_combout\ = !\data_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[5]~input_o\,
	combout => \U_RAM|mem~607_combout\);

-- Location: FF_X26_Y28_N19
\U_RAM|mem~163\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~607_combout\,
	ena => \U_RAM|mem~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~163_q\);

-- Location: LCCOMB_X25_Y28_N12
\U_RAM|mem~374\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~374_combout\ = (\address[0]~input_o\ & (\address[1]~input_o\)) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & ((!\U_RAM|mem~163_q\))) # (!\address[1]~input_o\ & (!\U_RAM|mem~147_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \U_RAM|mem~147_q\,
	datad => \U_RAM|mem~163_q\,
	combout => \U_RAM|mem~374_combout\);

-- Location: LCCOMB_X25_Y28_N10
\U_RAM|mem~375\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~375_combout\ = (\address[0]~input_o\ & ((\U_RAM|mem~374_combout\ & ((!\U_RAM|mem~171_q\))) # (!\U_RAM|mem~374_combout\ & (!\U_RAM|mem~155_q\)))) # (!\address[0]~input_o\ & (((\U_RAM|mem~374_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \U_RAM|mem~155_q\,
	datac => \U_RAM|mem~171_q\,
	datad => \U_RAM|mem~374_combout\,
	combout => \U_RAM|mem~375_combout\);

-- Location: LCCOMB_X23_Y26_N6
\U_RAM|mem~376\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~376_combout\ = (\address[3]~input_o\ & (\address[2]~input_o\)) # (!\address[3]~input_o\ & ((\address[2]~input_o\ & (\U_RAM|mem~373_combout\)) # (!\address[2]~input_o\ & ((\U_RAM|mem~375_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \address[2]~input_o\,
	datac => \U_RAM|mem~373_combout\,
	datad => \U_RAM|mem~375_combout\,
	combout => \U_RAM|mem~376_combout\);

-- Location: LCCOMB_X23_Y26_N12
\U_RAM|mem~379\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~379_combout\ = (\address[3]~input_o\ & ((\U_RAM|mem~376_combout\ & (\U_RAM|mem~378_combout\)) # (!\U_RAM|mem~376_combout\ & ((\U_RAM|mem~371_combout\))))) # (!\address[3]~input_o\ & (((\U_RAM|mem~376_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RAM|mem~378_combout\,
	datab => \address[3]~input_o\,
	datac => \U_RAM|mem~371_combout\,
	datad => \U_RAM|mem~376_combout\,
	combout => \U_RAM|mem~379_combout\);

-- Location: LCCOMB_X23_Y26_N16
\U_RAM|data_out~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|data_out~6_combout\ = (\U_RAM|data_out~0_combout\) # ((\address[4]~input_o\ & ((\U_RAM|mem~379_combout\))) # (!\address[4]~input_o\ & (\U_RAM|mem~389_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RAM|data_out~0_combout\,
	datab => \address[4]~input_o\,
	datac => \U_RAM|mem~389_combout\,
	datad => \U_RAM|mem~379_combout\,
	combout => \U_RAM|data_out~6_combout\);

-- Location: FF_X23_Y26_N17
\U_RAM|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|data_out~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|data_out\(5));

-- Location: LCCOMB_X23_Y26_N14
\data_out~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_out~6_combout\ = (\data_out~0_combout\ & ((\U_RAM|data_out\(5)) # ((\U_ROM|data_out\(2) & !\LessThan0~0_combout\)))) # (!\data_out~0_combout\ & (((\U_ROM|data_out\(2) & !\LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out~0_combout\,
	datab => \U_RAM|data_out\(5),
	datac => \U_ROM|data_out\(2),
	datad => \LessThan0~0_combout\,
	combout => \data_out~6_combout\);

-- Location: IOIBUF_X20_Y31_N1
\data_in[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(6),
	o => \data_in[6]~input_o\);

-- Location: LCCOMB_X19_Y25_N30
\U_RAM|mem~643\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~643_combout\ = !\data_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[6]~input_o\,
	combout => \U_RAM|mem~643_combout\);

-- Location: FF_X19_Y25_N31
\U_RAM|mem~108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~643_combout\,
	ena => \U_RAM|mem~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~108_q\);

-- Location: LCCOMB_X20_Y25_N4
\U_RAM|mem~645\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~645_combout\ = !\data_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in[6]~input_o\,
	combout => \U_RAM|mem~645_combout\);

-- Location: FF_X20_Y25_N1
\U_RAM|mem~140\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~645_combout\,
	sload => VCC,
	ena => \U_RAM|mem~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~140_q\);

-- Location: FF_X20_Y25_N11
\U_RAM|mem~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_in[6]~input_o\,
	sload => VCC,
	ena => \U_RAM|mem~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~44_q\);

-- Location: LCCOMB_X21_Y25_N24
\U_RAM|mem~644\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~644_combout\ = !\data_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[6]~input_o\,
	combout => \U_RAM|mem~644_combout\);

-- Location: FF_X21_Y25_N25
\U_RAM|mem~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~644_combout\,
	ena => \U_RAM|mem~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~76_q\);

-- Location: LCCOMB_X20_Y25_N10
\U_RAM|mem~407\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~407_combout\ = (\address[3]~input_o\ & (\address[2]~input_o\)) # (!\address[3]~input_o\ & ((\address[2]~input_o\ & ((!\U_RAM|mem~76_q\))) # (!\address[2]~input_o\ & (\U_RAM|mem~44_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \address[2]~input_o\,
	datac => \U_RAM|mem~44_q\,
	datad => \U_RAM|mem~76_q\,
	combout => \U_RAM|mem~407_combout\);

-- Location: LCCOMB_X20_Y25_N0
\U_RAM|mem~408\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~408_combout\ = (\address[3]~input_o\ & ((\U_RAM|mem~407_combout\ & ((!\U_RAM|mem~140_q\))) # (!\U_RAM|mem~407_combout\ & (!\U_RAM|mem~108_q\)))) # (!\address[3]~input_o\ & (((\U_RAM|mem~407_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \U_RAM|mem~108_q\,
	datac => \U_RAM|mem~140_q\,
	datad => \U_RAM|mem~407_combout\,
	combout => \U_RAM|mem~408_combout\);

-- Location: LCCOMB_X21_Y29_N0
\U_RAM|mem~637\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~637_combout\ = !\data_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[6]~input_o\,
	combout => \U_RAM|mem~637_combout\);

-- Location: FF_X21_Y29_N1
\U_RAM|mem~124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~637_combout\,
	ena => \U_RAM|mem~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~124_q\);

-- Location: LCCOMB_X23_Y28_N10
\U_RAM|mem~636\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~636_combout\ = !\data_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[6]~input_o\,
	combout => \U_RAM|mem~636_combout\);

-- Location: FF_X21_Y29_N7
\U_RAM|mem~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~636_combout\,
	sload => VCC,
	ena => \U_RAM|mem~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~92_q\);

-- Location: FF_X22_Y29_N25
\U_RAM|mem~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_in[6]~input_o\,
	sload => VCC,
	ena => \U_RAM|mem~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~28_q\);

-- Location: FF_X23_Y29_N19
\U_RAM|mem~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_in[6]~input_o\,
	sload => VCC,
	ena => \U_RAM|mem~462_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~60_q\);

-- Location: LCCOMB_X22_Y29_N24
\U_RAM|mem~400\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~400_combout\ = (\address[2]~input_o\ & ((\address[3]~input_o\) # ((\U_RAM|mem~60_q\)))) # (!\address[2]~input_o\ & (!\address[3]~input_o\ & (\U_RAM|mem~28_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[3]~input_o\,
	datac => \U_RAM|mem~28_q\,
	datad => \U_RAM|mem~60_q\,
	combout => \U_RAM|mem~400_combout\);

-- Location: LCCOMB_X21_Y29_N6
\U_RAM|mem~401\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~401_combout\ = (\address[3]~input_o\ & ((\U_RAM|mem~400_combout\ & (!\U_RAM|mem~124_q\)) # (!\U_RAM|mem~400_combout\ & ((!\U_RAM|mem~92_q\))))) # (!\address[3]~input_o\ & (((\U_RAM|mem~400_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \U_RAM|mem~124_q\,
	datac => \U_RAM|mem~92_q\,
	datad => \U_RAM|mem~400_combout\,
	combout => \U_RAM|mem~401_combout\);

-- Location: FF_X23_Y28_N17
\U_RAM|mem~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_in[6]~input_o\,
	sload => VCC,
	ena => \U_RAM|mem~464_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~52_q\);

-- Location: LCCOMB_X22_Y26_N22
\U_RAM|mem~642\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~642_combout\ = !\data_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[6]~input_o\,
	combout => \U_RAM|mem~642_combout\);

-- Location: FF_X22_Y26_N27
\U_RAM|mem~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~642_combout\,
	sload => VCC,
	ena => \U_RAM|mem~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~116_q\);

-- Location: FF_X22_Y28_N11
\U_RAM|mem~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_in[6]~input_o\,
	sload => VCC,
	ena => \U_RAM|mem~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~20_q\);

-- Location: LCCOMB_X22_Y28_N24
\U_RAM|mem~641\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~641_combout\ = !\data_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[6]~input_o\,
	combout => \U_RAM|mem~641_combout\);

-- Location: FF_X22_Y28_N25
\U_RAM|mem~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~641_combout\,
	ena => \U_RAM|mem~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~84_q\);

-- Location: LCCOMB_X22_Y28_N10
\U_RAM|mem~404\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~404_combout\ = (\address[3]~input_o\ & ((\address[2]~input_o\) # ((!\U_RAM|mem~84_q\)))) # (!\address[3]~input_o\ & (!\address[2]~input_o\ & (\U_RAM|mem~20_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \address[2]~input_o\,
	datac => \U_RAM|mem~20_q\,
	datad => \U_RAM|mem~84_q\,
	combout => \U_RAM|mem~404_combout\);

-- Location: LCCOMB_X22_Y26_N26
\U_RAM|mem~405\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~405_combout\ = (\address[2]~input_o\ & ((\U_RAM|mem~404_combout\ & ((!\U_RAM|mem~116_q\))) # (!\U_RAM|mem~404_combout\ & (\U_RAM|mem~52_q\)))) # (!\address[2]~input_o\ & (((\U_RAM|mem~404_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RAM|mem~52_q\,
	datab => \address[2]~input_o\,
	datac => \U_RAM|mem~116_q\,
	datad => \U_RAM|mem~404_combout\,
	combout => \U_RAM|mem~405_combout\);

-- Location: LCCOMB_X21_Y25_N14
\U_RAM|mem~638\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~638_combout\ = !\data_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[6]~input_o\,
	combout => \U_RAM|mem~638_combout\);

-- Location: FF_X21_Y25_N15
\U_RAM|mem~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~638_combout\,
	ena => \U_RAM|mem~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~68_q\);

-- Location: LCCOMB_X22_Y25_N24
\U_RAM|mem~640\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~640_combout\ = !\data_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in[6]~input_o\,
	combout => \U_RAM|mem~640_combout\);

-- Location: FF_X22_Y25_N1
\U_RAM|mem~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~640_combout\,
	sload => VCC,
	ena => \U_RAM|mem~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~132_q\);

-- Location: FF_X22_Y25_N11
\U_RAM|mem~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_in[6]~input_o\,
	sload => VCC,
	ena => \U_RAM|mem~468_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~36_q\);

-- Location: LCCOMB_X23_Y25_N28
\U_RAM|mem~639\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~639_combout\ = !\data_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[6]~input_o\,
	combout => \U_RAM|mem~639_combout\);

-- Location: FF_X23_Y25_N29
\U_RAM|mem~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~639_combout\,
	ena => \U_RAM|mem~466_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~100_q\);

-- Location: LCCOMB_X22_Y25_N10
\U_RAM|mem~402\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~402_combout\ = (\address[3]~input_o\ & ((\address[2]~input_o\) # ((!\U_RAM|mem~100_q\)))) # (!\address[3]~input_o\ & (!\address[2]~input_o\ & (\U_RAM|mem~36_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \address[2]~input_o\,
	datac => \U_RAM|mem~36_q\,
	datad => \U_RAM|mem~100_q\,
	combout => \U_RAM|mem~402_combout\);

-- Location: LCCOMB_X22_Y25_N0
\U_RAM|mem~403\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~403_combout\ = (\address[2]~input_o\ & ((\U_RAM|mem~402_combout\ & ((!\U_RAM|mem~132_q\))) # (!\U_RAM|mem~402_combout\ & (!\U_RAM|mem~68_q\)))) # (!\address[2]~input_o\ & (((\U_RAM|mem~402_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RAM|mem~68_q\,
	datab => \address[2]~input_o\,
	datac => \U_RAM|mem~132_q\,
	datad => \U_RAM|mem~402_combout\,
	combout => \U_RAM|mem~403_combout\);

-- Location: LCCOMB_X22_Y26_N28
\U_RAM|mem~406\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~406_combout\ = (\address[0]~input_o\ & (\address[1]~input_o\)) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & ((\U_RAM|mem~403_combout\))) # (!\address[1]~input_o\ & (\U_RAM|mem~405_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \U_RAM|mem~405_combout\,
	datad => \U_RAM|mem~403_combout\,
	combout => \U_RAM|mem~406_combout\);

-- Location: LCCOMB_X22_Y26_N30
\U_RAM|mem~409\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~409_combout\ = (\address[0]~input_o\ & ((\U_RAM|mem~406_combout\ & (\U_RAM|mem~408_combout\)) # (!\U_RAM|mem~406_combout\ & ((\U_RAM|mem~401_combout\))))) # (!\address[0]~input_o\ & (((\U_RAM|mem~406_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \U_RAM|mem~408_combout\,
	datac => \U_RAM|mem~401_combout\,
	datad => \U_RAM|mem~406_combout\,
	combout => \U_RAM|mem~409_combout\);

-- Location: LCCOMB_X25_Y27_N24
\U_RAM|mem~625\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~625_combout\ = !\data_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[6]~input_o\,
	combout => \U_RAM|mem~625_combout\);

-- Location: FF_X25_Y27_N25
\U_RAM|mem~204\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~625_combout\,
	ena => \U_RAM|mem~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~204_q\);

-- Location: LCCOMB_X21_Y27_N18
\U_RAM|mem~622\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~622_combout\ = !\data_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[6]~input_o\,
	combout => \U_RAM|mem~622_combout\);

-- Location: FF_X24_Y27_N31
\U_RAM|mem~188\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~622_combout\,
	sload => VCC,
	ena => \U_RAM|mem~433_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~188_q\);

-- Location: LCCOMB_X25_Y26_N0
\U_RAM|mem~624\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~624_combout\ = !\data_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[6]~input_o\,
	combout => \U_RAM|mem~624_combout\);

-- Location: FF_X25_Y27_N19
\U_RAM|mem~180\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~624_combout\,
	sload => VCC,
	ena => \U_RAM|mem~435_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~180_q\);

-- Location: LCCOMB_X26_Y27_N26
\U_RAM|mem~623\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~623_combout\ = !\data_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[6]~input_o\,
	combout => \U_RAM|mem~623_combout\);

-- Location: FF_X26_Y27_N27
\U_RAM|mem~196\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~623_combout\,
	ena => \U_RAM|mem~431_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~196_q\);

-- Location: LCCOMB_X25_Y27_N18
\U_RAM|mem~390\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~390_combout\ = (\address[1]~input_o\ & ((\address[0]~input_o\) # ((!\U_RAM|mem~196_q\)))) # (!\address[1]~input_o\ & (!\address[0]~input_o\ & (!\U_RAM|mem~180_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => \U_RAM|mem~180_q\,
	datad => \U_RAM|mem~196_q\,
	combout => \U_RAM|mem~390_combout\);

-- Location: LCCOMB_X24_Y27_N30
\U_RAM|mem~391\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~391_combout\ = (\address[0]~input_o\ & ((\U_RAM|mem~390_combout\ & (!\U_RAM|mem~204_q\)) # (!\U_RAM|mem~390_combout\ & ((!\U_RAM|mem~188_q\))))) # (!\address[0]~input_o\ & (((\U_RAM|mem~390_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \U_RAM|mem~204_q\,
	datac => \U_RAM|mem~188_q\,
	datad => \U_RAM|mem~390_combout\,
	combout => \U_RAM|mem~391_combout\);

-- Location: LCCOMB_X20_Y26_N30
\U_RAM|mem~634\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~634_combout\ = !\data_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[6]~input_o\,
	combout => \U_RAM|mem~634_combout\);

-- Location: FF_X20_Y26_N31
\U_RAM|mem~252\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~634_combout\,
	ena => \U_RAM|mem~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~252_q\);

-- Location: FF_X19_Y26_N19
\U_RAM|mem~268\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_in[6]~input_o\,
	sload => VCC,
	ena => \U_RAM|mem~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~268_q\);

-- Location: LCCOMB_X20_Y26_N20
\U_RAM|mem~635\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~635_combout\ = !\data_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[6]~input_o\,
	combout => \U_RAM|mem~635_combout\);

-- Location: FF_X20_Y26_N5
\U_RAM|mem~244\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~635_combout\,
	sload => VCC,
	ena => \U_RAM|mem~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~244_q\);

-- Location: LCCOMB_X21_Y26_N26
\U_RAM|mem~260feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~260feeder_combout\ = \data_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[6]~input_o\,
	combout => \U_RAM|mem~260feeder_combout\);

-- Location: FF_X21_Y26_N27
\U_RAM|mem~260\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~260feeder_combout\,
	ena => \U_RAM|mem~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~260_q\);

-- Location: LCCOMB_X20_Y26_N4
\U_RAM|mem~397\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~397_combout\ = (\address[0]~input_o\ & (\address[1]~input_o\)) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & ((\U_RAM|mem~260_q\))) # (!\address[1]~input_o\ & (!\U_RAM|mem~244_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \U_RAM|mem~244_q\,
	datad => \U_RAM|mem~260_q\,
	combout => \U_RAM|mem~397_combout\);

-- Location: LCCOMB_X19_Y26_N18
\U_RAM|mem~398\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~398_combout\ = (\address[0]~input_o\ & ((\U_RAM|mem~397_combout\ & ((\U_RAM|mem~268_q\))) # (!\U_RAM|mem~397_combout\ & (!\U_RAM|mem~252_q\)))) # (!\address[0]~input_o\ & (((\U_RAM|mem~397_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RAM|mem~252_q\,
	datab => \address[0]~input_o\,
	datac => \U_RAM|mem~268_q\,
	datad => \U_RAM|mem~397_combout\,
	combout => \U_RAM|mem~398_combout\);

-- Location: LCCOMB_X21_Y27_N10
\U_RAM|mem~626\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~626_combout\ = !\data_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[6]~input_o\,
	combout => \U_RAM|mem~626_combout\);

-- Location: FF_X21_Y27_N11
\U_RAM|mem~228\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~626_combout\,
	ena => \U_RAM|mem~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~228_q\);

-- Location: LCCOMB_X21_Y27_N4
\U_RAM|mem~629\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~629_combout\ = !\data_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[6]~input_o\,
	combout => \U_RAM|mem~629_combout\);

-- Location: FF_X21_Y27_N9
\U_RAM|mem~236\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~629_combout\,
	sload => VCC,
	ena => \U_RAM|mem~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~236_q\);

-- Location: LCCOMB_X20_Y27_N4
\U_RAM|mem~628\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~628_combout\ = !\data_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[6]~input_o\,
	combout => \U_RAM|mem~628_combout\);

-- Location: FF_X20_Y27_N13
\U_RAM|mem~212\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~628_combout\,
	sload => VCC,
	ena => \U_RAM|mem~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~212_q\);

-- Location: LCCOMB_X20_Y27_N18
\U_RAM|mem~627\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~627_combout\ = !\data_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[6]~input_o\,
	combout => \U_RAM|mem~627_combout\);

-- Location: FF_X20_Y27_N19
\U_RAM|mem~220\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~627_combout\,
	ena => \U_RAM|mem~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~220_q\);

-- Location: LCCOMB_X20_Y27_N12
\U_RAM|mem~392\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~392_combout\ = (\address[0]~input_o\ & ((\address[1]~input_o\) # ((!\U_RAM|mem~220_q\)))) # (!\address[0]~input_o\ & (!\address[1]~input_o\ & (!\U_RAM|mem~212_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \U_RAM|mem~212_q\,
	datad => \U_RAM|mem~220_q\,
	combout => \U_RAM|mem~392_combout\);

-- Location: LCCOMB_X21_Y27_N8
\U_RAM|mem~393\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~393_combout\ = (\address[1]~input_o\ & ((\U_RAM|mem~392_combout\ & ((!\U_RAM|mem~236_q\))) # (!\U_RAM|mem~392_combout\ & (!\U_RAM|mem~228_q\)))) # (!\address[1]~input_o\ & (((\U_RAM|mem~392_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RAM|mem~228_q\,
	datab => \address[1]~input_o\,
	datac => \U_RAM|mem~236_q\,
	datad => \U_RAM|mem~392_combout\,
	combout => \U_RAM|mem~393_combout\);

-- Location: LCCOMB_X26_Y27_N24
\U_RAM|mem~630\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~630_combout\ = !\data_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[6]~input_o\,
	combout => \U_RAM|mem~630_combout\);

-- Location: FF_X26_Y28_N21
\U_RAM|mem~164\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~630_combout\,
	sload => VCC,
	ena => \U_RAM|mem~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~164_q\);

-- Location: LCCOMB_X25_Y26_N4
\U_RAM|mem~633\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~633_combout\ = !\data_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[6]~input_o\,
	combout => \U_RAM|mem~633_combout\);

-- Location: FF_X25_Y26_N27
\U_RAM|mem~172\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~633_combout\,
	sload => VCC,
	ena => \U_RAM|mem~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~172_q\);

-- Location: LCCOMB_X25_Y26_N14
\U_RAM|mem~632\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~632_combout\ = !\data_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[6]~input_o\,
	combout => \U_RAM|mem~632_combout\);

-- Location: FF_X25_Y26_N25
\U_RAM|mem~148\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~632_combout\,
	sload => VCC,
	ena => \U_RAM|mem~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~148_q\);

-- Location: LCCOMB_X21_Y26_N20
\U_RAM|mem~631\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~631_combout\ = !\data_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[6]~input_o\,
	combout => \U_RAM|mem~631_combout\);

-- Location: FF_X21_Y26_N21
\U_RAM|mem~156\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~631_combout\,
	ena => \U_RAM|mem~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~156_q\);

-- Location: LCCOMB_X25_Y26_N24
\U_RAM|mem~394\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~394_combout\ = (\address[1]~input_o\ & (\address[0]~input_o\)) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & ((!\U_RAM|mem~156_q\))) # (!\address[0]~input_o\ & (!\U_RAM|mem~148_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => \U_RAM|mem~148_q\,
	datad => \U_RAM|mem~156_q\,
	combout => \U_RAM|mem~394_combout\);

-- Location: LCCOMB_X25_Y26_N26
\U_RAM|mem~395\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~395_combout\ = (\address[1]~input_o\ & ((\U_RAM|mem~394_combout\ & ((!\U_RAM|mem~172_q\))) # (!\U_RAM|mem~394_combout\ & (!\U_RAM|mem~164_q\)))) # (!\address[1]~input_o\ & (((\U_RAM|mem~394_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RAM|mem~164_q\,
	datab => \address[1]~input_o\,
	datac => \U_RAM|mem~172_q\,
	datad => \U_RAM|mem~394_combout\,
	combout => \U_RAM|mem~395_combout\);

-- Location: LCCOMB_X22_Y26_N18
\U_RAM|mem~396\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~396_combout\ = (\address[2]~input_o\ & (\address[3]~input_o\)) # (!\address[2]~input_o\ & ((\address[3]~input_o\ & (\U_RAM|mem~393_combout\)) # (!\address[3]~input_o\ & ((\U_RAM|mem~395_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[3]~input_o\,
	datac => \U_RAM|mem~393_combout\,
	datad => \U_RAM|mem~395_combout\,
	combout => \U_RAM|mem~396_combout\);

-- Location: LCCOMB_X22_Y26_N20
\U_RAM|mem~399\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~399_combout\ = (\address[2]~input_o\ & ((\U_RAM|mem~396_combout\ & ((\U_RAM|mem~398_combout\))) # (!\U_RAM|mem~396_combout\ & (\U_RAM|mem~391_combout\)))) # (!\address[2]~input_o\ & (((\U_RAM|mem~396_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \U_RAM|mem~391_combout\,
	datac => \U_RAM|mem~398_combout\,
	datad => \U_RAM|mem~396_combout\,
	combout => \U_RAM|mem~399_combout\);

-- Location: LCCOMB_X22_Y26_N2
\U_RAM|data_out~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|data_out~7_combout\ = (\U_RAM|data_out~0_combout\) # ((\address[4]~input_o\ & ((\U_RAM|mem~399_combout\))) # (!\address[4]~input_o\ & (\U_RAM|mem~409_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RAM|data_out~0_combout\,
	datab => \address[4]~input_o\,
	datac => \U_RAM|mem~409_combout\,
	datad => \U_RAM|mem~399_combout\,
	combout => \U_RAM|data_out~7_combout\);

-- Location: FF_X22_Y26_N3
\U_RAM|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|data_out~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|data_out\(6));

-- Location: LCCOMB_X23_Y26_N8
\data_out~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_out~7_combout\ = (\data_out~0_combout\ & ((\U_RAM|data_out\(6)) # ((!\LessThan0~0_combout\ & \U_ROM|data_out\(2))))) # (!\data_out~0_combout\ & (!\LessThan0~0_combout\ & (\U_ROM|data_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out~0_combout\,
	datab => \LessThan0~0_combout\,
	datac => \U_ROM|data_out\(2),
	datad => \U_RAM|data_out\(6),
	combout => \data_out~7_combout\);

-- Location: IOIBUF_X26_Y31_N8
\data_in[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(7),
	o => \data_in[7]~input_o\);

-- Location: LCCOMB_X21_Y27_N24
\U_RAM|mem~649\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~649_combout\ = !\data_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[7]~input_o\,
	combout => \U_RAM|mem~649_combout\);

-- Location: FF_X21_Y27_N25
\U_RAM|mem~237\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~649_combout\,
	ena => \U_RAM|mem~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~237_q\);

-- Location: LCCOMB_X20_Y27_N22
\U_RAM|mem~646\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~646_combout\ = !\data_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[7]~input_o\,
	combout => \U_RAM|mem~646_combout\);

-- Location: FF_X20_Y27_N31
\U_RAM|mem~221\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~646_combout\,
	sload => VCC,
	ena => \U_RAM|mem~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~221_q\);

-- Location: LCCOMB_X20_Y27_N8
\U_RAM|mem~648\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~648_combout\ = !\data_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[7]~input_o\,
	combout => \U_RAM|mem~648_combout\);

-- Location: FF_X20_Y27_N1
\U_RAM|mem~213\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~648_combout\,
	sload => VCC,
	ena => \U_RAM|mem~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~213_q\);

-- Location: LCCOMB_X21_Y27_N2
\U_RAM|mem~647\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~647_combout\ = !\data_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[7]~input_o\,
	combout => \U_RAM|mem~647_combout\);

-- Location: FF_X21_Y27_N3
\U_RAM|mem~229\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~647_combout\,
	ena => \U_RAM|mem~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~229_q\);

-- Location: LCCOMB_X20_Y27_N0
\U_RAM|mem~410\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~410_combout\ = (\address[0]~input_o\ & (\address[1]~input_o\)) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & ((!\U_RAM|mem~229_q\))) # (!\address[1]~input_o\ & (!\U_RAM|mem~213_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \U_RAM|mem~213_q\,
	datad => \U_RAM|mem~229_q\,
	combout => \U_RAM|mem~410_combout\);

-- Location: LCCOMB_X20_Y27_N30
\U_RAM|mem~411\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~411_combout\ = (\address[0]~input_o\ & ((\U_RAM|mem~410_combout\ & (!\U_RAM|mem~237_q\)) # (!\U_RAM|mem~410_combout\ & ((!\U_RAM|mem~221_q\))))) # (!\address[0]~input_o\ & (((\U_RAM|mem~410_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \U_RAM|mem~237_q\,
	datac => \U_RAM|mem~221_q\,
	datad => \U_RAM|mem~410_combout\,
	combout => \U_RAM|mem~411_combout\);

-- Location: FF_X18_Y26_N23
\U_RAM|mem~261\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_in[7]~input_o\,
	sload => VCC,
	ena => \U_RAM|mem~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~261_q\);

-- Location: FF_X19_Y26_N13
\U_RAM|mem~269\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_in[7]~input_o\,
	sload => VCC,
	ena => \U_RAM|mem~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~269_q\);

-- Location: LCCOMB_X21_Y27_N30
\U_RAM|mem~659\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~659_combout\ = !\data_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[7]~input_o\,
	combout => \U_RAM|mem~659_combout\);

-- Location: FF_X20_Y26_N13
\U_RAM|mem~245\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~659_combout\,
	sload => VCC,
	ena => \U_RAM|mem~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~245_q\);

-- Location: LCCOMB_X20_Y26_N10
\U_RAM|mem~658\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~658_combout\ = !\data_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[7]~input_o\,
	combout => \U_RAM|mem~658_combout\);

-- Location: FF_X20_Y26_N11
\U_RAM|mem~253\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~658_combout\,
	ena => \U_RAM|mem~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~253_q\);

-- Location: LCCOMB_X20_Y26_N12
\U_RAM|mem~417\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~417_combout\ = (\address[0]~input_o\ & ((\address[1]~input_o\) # ((!\U_RAM|mem~253_q\)))) # (!\address[0]~input_o\ & (!\address[1]~input_o\ & (!\U_RAM|mem~245_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \U_RAM|mem~245_q\,
	datad => \U_RAM|mem~253_q\,
	combout => \U_RAM|mem~417_combout\);

-- Location: LCCOMB_X19_Y26_N12
\U_RAM|mem~418\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~418_combout\ = (\address[1]~input_o\ & ((\U_RAM|mem~417_combout\ & ((\U_RAM|mem~269_q\))) # (!\U_RAM|mem~417_combout\ & (\U_RAM|mem~261_q\)))) # (!\address[1]~input_o\ & (((\U_RAM|mem~417_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \U_RAM|mem~261_q\,
	datac => \U_RAM|mem~269_q\,
	datad => \U_RAM|mem~417_combout\,
	combout => \U_RAM|mem~418_combout\);

-- Location: LCCOMB_X27_Y26_N18
\U_RAM|mem~653\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~653_combout\ = !\data_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[7]~input_o\,
	combout => \U_RAM|mem~653_combout\);

-- Location: FF_X27_Y26_N19
\U_RAM|mem~205\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~653_combout\,
	ena => \U_RAM|mem~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~205_q\);

-- Location: LCCOMB_X27_Y26_N0
\U_RAM|mem~650\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~650_combout\ = !\data_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[7]~input_o\,
	combout => \U_RAM|mem~650_combout\);

-- Location: FF_X27_Y26_N1
\U_RAM|mem~197\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~650_combout\,
	ena => \U_RAM|mem~431_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~197_q\);

-- Location: LCCOMB_X27_Y26_N30
\U_RAM|mem~652\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~652_combout\ = !\data_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[7]~input_o\,
	combout => \U_RAM|mem~652_combout\);

-- Location: FF_X26_Y26_N19
\U_RAM|mem~181\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~652_combout\,
	sload => VCC,
	ena => \U_RAM|mem~435_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~181_q\);

-- Location: LCCOMB_X26_Y26_N12
\U_RAM|mem~651\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~651_combout\ = !\data_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[7]~input_o\,
	combout => \U_RAM|mem~651_combout\);

-- Location: FF_X26_Y26_N13
\U_RAM|mem~189\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~651_combout\,
	ena => \U_RAM|mem~433_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~189_q\);

-- Location: LCCOMB_X26_Y26_N18
\U_RAM|mem~412\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~412_combout\ = (\address[1]~input_o\ & (\address[0]~input_o\)) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & ((!\U_RAM|mem~189_q\))) # (!\address[0]~input_o\ & (!\U_RAM|mem~181_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => \U_RAM|mem~181_q\,
	datad => \U_RAM|mem~189_q\,
	combout => \U_RAM|mem~412_combout\);

-- Location: LCCOMB_X26_Y26_N16
\U_RAM|mem~413\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~413_combout\ = (\address[1]~input_o\ & ((\U_RAM|mem~412_combout\ & (!\U_RAM|mem~205_q\)) # (!\U_RAM|mem~412_combout\ & ((!\U_RAM|mem~197_q\))))) # (!\address[1]~input_o\ & (((\U_RAM|mem~412_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \U_RAM|mem~205_q\,
	datac => \U_RAM|mem~197_q\,
	datad => \U_RAM|mem~412_combout\,
	combout => \U_RAM|mem~413_combout\);

-- Location: LCCOMB_X26_Y27_N4
\U_RAM|mem~654\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~654_combout\ = !\data_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[7]~input_o\,
	combout => \U_RAM|mem~654_combout\);

-- Location: FF_X26_Y27_N5
\U_RAM|mem~157\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~654_combout\,
	ena => \U_RAM|mem~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~157_q\);

-- Location: LCCOMB_X25_Y26_N8
\U_RAM|mem~657\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~657_combout\ = !\data_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[7]~input_o\,
	combout => \U_RAM|mem~657_combout\);

-- Location: FF_X25_Y26_N11
\U_RAM|mem~173\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~657_combout\,
	sload => VCC,
	ena => \U_RAM|mem~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~173_q\);

-- Location: LCCOMB_X25_Y26_N30
\U_RAM|mem~656\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~656_combout\ = !\data_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[7]~input_o\,
	combout => \U_RAM|mem~656_combout\);

-- Location: FF_X25_Y26_N21
\U_RAM|mem~149\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~656_combout\,
	sload => VCC,
	ena => \U_RAM|mem~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~149_q\);

-- Location: LCCOMB_X26_Y27_N6
\U_RAM|mem~655\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~655_combout\ = !\data_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[7]~input_o\,
	combout => \U_RAM|mem~655_combout\);

-- Location: FF_X26_Y28_N11
\U_RAM|mem~165\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~655_combout\,
	sload => VCC,
	ena => \U_RAM|mem~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~165_q\);

-- Location: LCCOMB_X25_Y26_N20
\U_RAM|mem~414\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~414_combout\ = (\address[1]~input_o\ & ((\address[0]~input_o\) # ((!\U_RAM|mem~165_q\)))) # (!\address[1]~input_o\ & (!\address[0]~input_o\ & (!\U_RAM|mem~149_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => \U_RAM|mem~149_q\,
	datad => \U_RAM|mem~165_q\,
	combout => \U_RAM|mem~414_combout\);

-- Location: LCCOMB_X25_Y26_N10
\U_RAM|mem~415\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~415_combout\ = (\address[0]~input_o\ & ((\U_RAM|mem~414_combout\ & ((!\U_RAM|mem~173_q\))) # (!\U_RAM|mem~414_combout\ & (!\U_RAM|mem~157_q\)))) # (!\address[0]~input_o\ & (((\U_RAM|mem~414_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RAM|mem~157_q\,
	datab => \address[0]~input_o\,
	datac => \U_RAM|mem~173_q\,
	datad => \U_RAM|mem~414_combout\,
	combout => \U_RAM|mem~415_combout\);

-- Location: LCCOMB_X23_Y26_N28
\U_RAM|mem~416\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~416_combout\ = (\address[3]~input_o\ & (\address[2]~input_o\)) # (!\address[3]~input_o\ & ((\address[2]~input_o\ & (\U_RAM|mem~413_combout\)) # (!\address[2]~input_o\ & ((\U_RAM|mem~415_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \address[2]~input_o\,
	datac => \U_RAM|mem~413_combout\,
	datad => \U_RAM|mem~415_combout\,
	combout => \U_RAM|mem~416_combout\);

-- Location: LCCOMB_X23_Y26_N26
\U_RAM|mem~419\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~419_combout\ = (\address[3]~input_o\ & ((\U_RAM|mem~416_combout\ & ((\U_RAM|mem~418_combout\))) # (!\U_RAM|mem~416_combout\ & (\U_RAM|mem~411_combout\)))) # (!\address[3]~input_o\ & (((\U_RAM|mem~416_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \U_RAM|mem~411_combout\,
	datac => \U_RAM|mem~418_combout\,
	datad => \U_RAM|mem~416_combout\,
	combout => \U_RAM|mem~419_combout\);

-- Location: LCCOMB_X21_Y25_N20
\U_RAM|mem~667\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~667_combout\ = !\data_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[7]~input_o\,
	combout => \U_RAM|mem~667_combout\);

-- Location: FF_X21_Y25_N21
\U_RAM|mem~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~667_combout\,
	ena => \U_RAM|mem~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~77_q\);

-- Location: LCCOMB_X21_Y26_N24
\U_RAM|mem~669\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~669_combout\ = !\data_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[7]~input_o\,
	combout => \U_RAM|mem~669_combout\);

-- Location: FF_X20_Y25_N31
\U_RAM|mem~141\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~669_combout\,
	sload => VCC,
	ena => \U_RAM|mem~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~141_q\);

-- Location: FF_X19_Y25_N11
\U_RAM|mem~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_in[7]~input_o\,
	sload => VCC,
	ena => \U_RAM|mem~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~45_q\);

-- Location: LCCOMB_X19_Y25_N0
\U_RAM|mem~668\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~668_combout\ = !\data_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[7]~input_o\,
	combout => \U_RAM|mem~668_combout\);

-- Location: FF_X19_Y25_N1
\U_RAM|mem~109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~668_combout\,
	ena => \U_RAM|mem~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~109_q\);

-- Location: LCCOMB_X19_Y25_N10
\U_RAM|mem~427\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~427_combout\ = (\address[2]~input_o\ & (\address[3]~input_o\)) # (!\address[2]~input_o\ & ((\address[3]~input_o\ & ((!\U_RAM|mem~109_q\))) # (!\address[3]~input_o\ & (\U_RAM|mem~45_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[3]~input_o\,
	datac => \U_RAM|mem~45_q\,
	datad => \U_RAM|mem~109_q\,
	combout => \U_RAM|mem~427_combout\);

-- Location: LCCOMB_X20_Y25_N30
\U_RAM|mem~428\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~428_combout\ = (\address[2]~input_o\ & ((\U_RAM|mem~427_combout\ & ((!\U_RAM|mem~141_q\))) # (!\U_RAM|mem~427_combout\ & (!\U_RAM|mem~77_q\)))) # (!\address[2]~input_o\ & (((\U_RAM|mem~427_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RAM|mem~77_q\,
	datab => \address[2]~input_o\,
	datac => \U_RAM|mem~141_q\,
	datad => \U_RAM|mem~427_combout\,
	combout => \U_RAM|mem~428_combout\);

-- Location: LCCOMB_X22_Y27_N4
\U_RAM|mem~662\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~662_combout\ = !\data_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[7]~input_o\,
	combout => \U_RAM|mem~662_combout\);

-- Location: FF_X22_Y25_N25
\U_RAM|mem~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~662_combout\,
	sload => VCC,
	ena => \U_RAM|mem~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~133_q\);

-- Location: LCCOMB_X22_Y30_N8
\U_RAM|mem~660\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~660_combout\ = !\data_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[7]~input_o\,
	combout => \U_RAM|mem~660_combout\);

-- Location: FF_X23_Y25_N23
\U_RAM|mem~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~660_combout\,
	sload => VCC,
	ena => \U_RAM|mem~466_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~101_q\);

-- Location: FF_X22_Y25_N23
\U_RAM|mem~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_in[7]~input_o\,
	sload => VCC,
	ena => \U_RAM|mem~468_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~37_q\);

-- Location: LCCOMB_X21_Y25_N30
\U_RAM|mem~661\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~661_combout\ = !\data_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[7]~input_o\,
	combout => \U_RAM|mem~661_combout\);

-- Location: FF_X21_Y25_N31
\U_RAM|mem~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~661_combout\,
	ena => \U_RAM|mem~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~69_q\);

-- Location: LCCOMB_X22_Y25_N22
\U_RAM|mem~420\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~420_combout\ = (\address[3]~input_o\ & (\address[2]~input_o\)) # (!\address[3]~input_o\ & ((\address[2]~input_o\ & ((!\U_RAM|mem~69_q\))) # (!\address[2]~input_o\ & (\U_RAM|mem~37_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \address[2]~input_o\,
	datac => \U_RAM|mem~37_q\,
	datad => \U_RAM|mem~69_q\,
	combout => \U_RAM|mem~420_combout\);

-- Location: LCCOMB_X23_Y25_N22
\U_RAM|mem~421\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~421_combout\ = (\address[3]~input_o\ & ((\U_RAM|mem~420_combout\ & (!\U_RAM|mem~133_q\)) # (!\U_RAM|mem~420_combout\ & ((!\U_RAM|mem~101_q\))))) # (!\address[3]~input_o\ & (((\U_RAM|mem~420_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \U_RAM|mem~133_q\,
	datac => \U_RAM|mem~101_q\,
	datad => \U_RAM|mem~420_combout\,
	combout => \U_RAM|mem~421_combout\);

-- Location: LCCOMB_X23_Y29_N20
\U_RAM|mem~61feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~61feeder_combout\ = \data_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[7]~input_o\,
	combout => \U_RAM|mem~61feeder_combout\);

-- Location: FF_X23_Y29_N21
\U_RAM|mem~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~61feeder_combout\,
	ena => \U_RAM|mem~462_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~61_q\);

-- Location: LCCOMB_X22_Y29_N22
\U_RAM|mem~664\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~664_combout\ = !\data_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[7]~input_o\,
	combout => \U_RAM|mem~664_combout\);

-- Location: FF_X22_Y29_N5
\U_RAM|mem~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~664_combout\,
	sload => VCC,
	ena => \U_RAM|mem~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~125_q\);

-- Location: FF_X22_Y29_N19
\U_RAM|mem~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_in[7]~input_o\,
	sload => VCC,
	ena => \U_RAM|mem~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~29_q\);

-- Location: LCCOMB_X21_Y29_N22
\U_RAM|mem~663\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~663_combout\ = !\data_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[7]~input_o\,
	combout => \U_RAM|mem~663_combout\);

-- Location: FF_X21_Y29_N23
\U_RAM|mem~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~663_combout\,
	ena => \U_RAM|mem~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~93_q\);

-- Location: LCCOMB_X22_Y29_N18
\U_RAM|mem~422\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~422_combout\ = (\address[2]~input_o\ & (\address[3]~input_o\)) # (!\address[2]~input_o\ & ((\address[3]~input_o\ & ((!\U_RAM|mem~93_q\))) # (!\address[3]~input_o\ & (\U_RAM|mem~29_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[3]~input_o\,
	datac => \U_RAM|mem~29_q\,
	datad => \U_RAM|mem~93_q\,
	combout => \U_RAM|mem~422_combout\);

-- Location: LCCOMB_X22_Y29_N4
\U_RAM|mem~423\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~423_combout\ = (\address[2]~input_o\ & ((\U_RAM|mem~422_combout\ & ((!\U_RAM|mem~125_q\))) # (!\U_RAM|mem~422_combout\ & (\U_RAM|mem~61_q\)))) # (!\address[2]~input_o\ & (((\U_RAM|mem~422_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RAM|mem~61_q\,
	datab => \address[2]~input_o\,
	datac => \U_RAM|mem~125_q\,
	datad => \U_RAM|mem~422_combout\,
	combout => \U_RAM|mem~423_combout\);

-- Location: LCCOMB_X22_Y28_N8
\U_RAM|mem~665\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~665_combout\ = !\data_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[7]~input_o\,
	combout => \U_RAM|mem~665_combout\);

-- Location: FF_X22_Y28_N9
\U_RAM|mem~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~665_combout\,
	ena => \U_RAM|mem~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~85_q\);

-- Location: LCCOMB_X23_Y28_N30
\U_RAM|mem~666\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~666_combout\ = !\data_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[7]~input_o\,
	combout => \U_RAM|mem~666_combout\);

-- Location: FF_X23_Y28_N21
\U_RAM|mem~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U_RAM|mem~666_combout\,
	sload => VCC,
	ena => \U_RAM|mem~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~117_q\);

-- Location: FF_X22_Y28_N15
\U_RAM|mem~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_in[7]~input_o\,
	sload => VCC,
	ena => \U_RAM|mem~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~21_q\);

-- Location: LCCOMB_X23_Y28_N18
\U_RAM|mem~53feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~53feeder_combout\ = \data_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[7]~input_o\,
	combout => \U_RAM|mem~53feeder_combout\);

-- Location: FF_X23_Y28_N19
\U_RAM|mem~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|mem~53feeder_combout\,
	ena => \U_RAM|mem~464_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|mem~53_q\);

-- Location: LCCOMB_X22_Y28_N14
\U_RAM|mem~424\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~424_combout\ = (\address[3]~input_o\ & (\address[2]~input_o\)) # (!\address[3]~input_o\ & ((\address[2]~input_o\ & ((\U_RAM|mem~53_q\))) # (!\address[2]~input_o\ & (\U_RAM|mem~21_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \address[2]~input_o\,
	datac => \U_RAM|mem~21_q\,
	datad => \U_RAM|mem~53_q\,
	combout => \U_RAM|mem~424_combout\);

-- Location: LCCOMB_X23_Y28_N20
\U_RAM|mem~425\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~425_combout\ = (\address[3]~input_o\ & ((\U_RAM|mem~424_combout\ & ((!\U_RAM|mem~117_q\))) # (!\U_RAM|mem~424_combout\ & (!\U_RAM|mem~85_q\)))) # (!\address[3]~input_o\ & (((\U_RAM|mem~424_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RAM|mem~85_q\,
	datab => \address[3]~input_o\,
	datac => \U_RAM|mem~117_q\,
	datad => \U_RAM|mem~424_combout\,
	combout => \U_RAM|mem~425_combout\);

-- Location: LCCOMB_X23_Y26_N20
\U_RAM|mem~426\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~426_combout\ = (\address[0]~input_o\ & ((\address[1]~input_o\) # ((\U_RAM|mem~423_combout\)))) # (!\address[0]~input_o\ & (!\address[1]~input_o\ & ((\U_RAM|mem~425_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \U_RAM|mem~423_combout\,
	datad => \U_RAM|mem~425_combout\,
	combout => \U_RAM|mem~426_combout\);

-- Location: LCCOMB_X23_Y26_N2
\U_RAM|mem~429\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|mem~429_combout\ = (\address[1]~input_o\ & ((\U_RAM|mem~426_combout\ & (\U_RAM|mem~428_combout\)) # (!\U_RAM|mem~426_combout\ & ((\U_RAM|mem~421_combout\))))) # (!\address[1]~input_o\ & (((\U_RAM|mem~426_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RAM|mem~428_combout\,
	datab => \address[1]~input_o\,
	datac => \U_RAM|mem~421_combout\,
	datad => \U_RAM|mem~426_combout\,
	combout => \U_RAM|mem~429_combout\);

-- Location: LCCOMB_X23_Y26_N30
\U_RAM|data_out~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_RAM|data_out~8_combout\ = (\U_RAM|data_out~0_combout\) # ((\address[4]~input_o\ & (\U_RAM|mem~419_combout\)) # (!\address[4]~input_o\ & ((\U_RAM|mem~429_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RAM|data_out~0_combout\,
	datab => \address[4]~input_o\,
	datac => \U_RAM|mem~419_combout\,
	datad => \U_RAM|mem~429_combout\,
	combout => \U_RAM|data_out~8_combout\);

-- Location: FF_X23_Y26_N31
\U_RAM|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_RAM|data_out~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RAM|data_out\(7));

-- Location: LCCOMB_X23_Y26_N0
\data_out~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_out~8_combout\ = (\data_out~0_combout\ & ((\U_RAM|data_out\(7)) # ((!\LessThan0~0_combout\ & \U_ROM|data_out\(2))))) # (!\data_out~0_combout\ & (!\LessThan0~0_combout\ & (\U_ROM|data_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out~0_combout\,
	datab => \LessThan0~0_combout\,
	datac => \U_ROM|data_out\(2),
	datad => \U_RAM|data_out\(7),
	combout => \data_out~8_combout\);

-- Location: IOIBUF_X12_Y31_N1
\rst~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

ww_data_out(0) <= \data_out[0]~output_o\;

ww_data_out(1) <= \data_out[1]~output_o\;

ww_data_out(2) <= \data_out[2]~output_o\;

ww_data_out(3) <= \data_out[3]~output_o\;

ww_data_out(4) <= \data_out[4]~output_o\;

ww_data_out(5) <= \data_out[5]~output_o\;

ww_data_out(6) <= \data_out[6]~output_o\;

ww_data_out(7) <= \data_out[7]~output_o\;
END structure;


