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

-- DATE "05/12/2026 12:26:45"

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

ENTITY 	RAM IS
    PORT (
	clock : IN std_logic;
	we : IN std_logic;
	address : IN std_logic_vector(5 DOWNTO 0);
	data_in : IN std_logic_vector(7 DOWNTO 0);
	data_out : OUT std_logic_vector(7 DOWNTO 0)
	);
END RAM;

-- Design Ports Information
-- data_out[0]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[1]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[2]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[3]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[4]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[5]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[6]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[7]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[5]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[1]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[2]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[3]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[4]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[0]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[0]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- we	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[1]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[2]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[3]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[4]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[5]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[6]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[7]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF RAM IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_we : std_logic;
SIGNAL ww_address : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_data_in : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_data_out : std_logic_vector(7 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \data_out[0]~output_o\ : std_logic;
SIGNAL \data_out[1]~output_o\ : std_logic;
SIGNAL \data_out[2]~output_o\ : std_logic;
SIGNAL \data_out[3]~output_o\ : std_logic;
SIGNAL \data_out[4]~output_o\ : std_logic;
SIGNAL \data_out[5]~output_o\ : std_logic;
SIGNAL \data_out[6]~output_o\ : std_logic;
SIGNAL \data_out[7]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \address[4]~input_o\ : std_logic;
SIGNAL \address[3]~input_o\ : std_logic;
SIGNAL \address[5]~input_o\ : std_logic;
SIGNAL \address[1]~input_o\ : std_logic;
SIGNAL \address[2]~input_o\ : std_logic;
SIGNAL \data_out~0_combout\ : std_logic;
SIGNAL \data_out~1_combout\ : std_logic;
SIGNAL \data_in[0]~input_o\ : std_logic;
SIGNAL \mem~489_combout\ : std_logic;
SIGNAL \we~input_o\ : std_logic;
SIGNAL \address[0]~input_o\ : std_logic;
SIGNAL \mem~454_combout\ : std_logic;
SIGNAL \mem~455_combout\ : std_logic;
SIGNAL \mem~230_q\ : std_logic;
SIGNAL \mem~460_combout\ : std_logic;
SIGNAL \mem~461_combout\ : std_logic;
SIGNAL \mem~262_q\ : std_logic;
SIGNAL \mem~491_combout\ : std_logic;
SIGNAL \mem~458_combout\ : std_logic;
SIGNAL \mem~459_combout\ : std_logic;
SIGNAL \mem~166_q\ : std_logic;
SIGNAL \mem~490_combout\ : std_logic;
SIGNAL \mem~456_combout\ : std_logic;
SIGNAL \mem~457_combout\ : std_logic;
SIGNAL \mem~198_q\ : std_logic;
SIGNAL \mem~277_combout\ : std_logic;
SIGNAL \mem~278_combout\ : std_logic;
SIGNAL \mem~485_combout\ : std_logic;
SIGNAL \mem~446_combout\ : std_logic;
SIGNAL \mem~447_combout\ : std_logic;
SIGNAL \mem~174_q\ : std_logic;
SIGNAL \mem~488_combout\ : std_logic;
SIGNAL \mem~452_combout\ : std_logic;
SIGNAL \mem~453_combout\ : std_logic;
SIGNAL \mem~238_q\ : std_logic;
SIGNAL \mem~487_combout\ : std_logic;
SIGNAL \mem~450_combout\ : std_logic;
SIGNAL \mem~451_combout\ : std_logic;
SIGNAL \mem~142_q\ : std_logic;
SIGNAL \mem~486_combout\ : std_logic;
SIGNAL \mem~448_combout\ : std_logic;
SIGNAL \mem~449_combout\ : std_logic;
SIGNAL \mem~206_q\ : std_logic;
SIGNAL \mem~274_combout\ : std_logic;
SIGNAL \mem~275_combout\ : std_logic;
SIGNAL \mem~481_combout\ : std_logic;
SIGNAL \mem~438_combout\ : std_logic;
SIGNAL \mem~439_combout\ : std_logic;
SIGNAL \mem~214_q\ : std_logic;
SIGNAL \mem~484_combout\ : std_logic;
SIGNAL \mem~444_combout\ : std_logic;
SIGNAL \mem~445_combout\ : std_logic;
SIGNAL \mem~246_q\ : std_logic;
SIGNAL \mem~483_combout\ : std_logic;
SIGNAL \mem~442_combout\ : std_logic;
SIGNAL \mem~443_combout\ : std_logic;
SIGNAL \mem~150_q\ : std_logic;
SIGNAL \mem~482_combout\ : std_logic;
SIGNAL \mem~440_combout\ : std_logic;
SIGNAL \mem~441_combout\ : std_logic;
SIGNAL \mem~182_q\ : std_logic;
SIGNAL \mem~272_combout\ : std_logic;
SIGNAL \mem~273_combout\ : std_logic;
SIGNAL \mem~276_combout\ : std_logic;
SIGNAL \mem~436_combout\ : std_logic;
SIGNAL \mem~437_combout\ : std_logic;
SIGNAL \mem~254_q\ : std_logic;
SIGNAL \mem~478_combout\ : std_logic;
SIGNAL \mem~430_combout\ : std_logic;
SIGNAL \mem~431_combout\ : std_logic;
SIGNAL \mem~190_q\ : std_logic;
SIGNAL \mem~480_combout\ : std_logic;
SIGNAL \mem~434_combout\ : std_logic;
SIGNAL \mem~435_combout\ : std_logic;
SIGNAL \mem~158_q\ : std_logic;
SIGNAL \mem~479_combout\ : std_logic;
SIGNAL \mem~432_combout\ : std_logic;
SIGNAL \mem~433_combout\ : std_logic;
SIGNAL \mem~222_q\ : std_logic;
SIGNAL \mem~270_combout\ : std_logic;
SIGNAL \mem~271_combout\ : std_logic;
SIGNAL \mem~279_combout\ : std_logic;
SIGNAL \mem~495_combout\ : std_logic;
SIGNAL \mem~465_combout\ : std_logic;
SIGNAL \mem~102_q\ : std_logic;
SIGNAL \mem~492_combout\ : std_logic;
SIGNAL \mem~462_combout\ : std_logic;
SIGNAL \mem~94_q\ : std_logic;
SIGNAL \mem~494_combout\ : std_logic;
SIGNAL \mem~464_combout\ : std_logic;
SIGNAL \mem~78_q\ : std_logic;
SIGNAL \mem~493_combout\ : std_logic;
SIGNAL \mem~463_combout\ : std_logic;
SIGNAL \mem~86_q\ : std_logic;
SIGNAL \mem~280_combout\ : std_logic;
SIGNAL \mem~281_combout\ : std_logic;
SIGNAL \mem~498_combout\ : std_logic;
SIGNAL \mem~474_combout\ : std_logic;
SIGNAL \mem~118_q\ : std_logic;
SIGNAL \mem~501_combout\ : std_logic;
SIGNAL \mem~477_combout\ : std_logic;
SIGNAL \mem~134_q\ : std_logic;
SIGNAL \mem~499_combout\ : std_logic;
SIGNAL \mem~475_combout\ : std_logic;
SIGNAL \mem~126_q\ : std_logic;
SIGNAL \mem~500_combout\ : std_logic;
SIGNAL \mem~476_combout\ : std_logic;
SIGNAL \mem~110_q\ : std_logic;
SIGNAL \mem~287_combout\ : std_logic;
SIGNAL \mem~288_combout\ : std_logic;
SIGNAL \mem~54feeder_combout\ : std_logic;
SIGNAL \mem~466_combout\ : std_logic;
SIGNAL \mem~54_q\ : std_logic;
SIGNAL \mem~497_combout\ : std_logic;
SIGNAL \mem~469_combout\ : std_logic;
SIGNAL \mem~70_q\ : std_logic;
SIGNAL \mem~468_combout\ : std_logic;
SIGNAL \mem~46_q\ : std_logic;
SIGNAL \mem~496_combout\ : std_logic;
SIGNAL \mem~467_combout\ : std_logic;
SIGNAL \mem~62_q\ : std_logic;
SIGNAL \mem~282_combout\ : std_logic;
SIGNAL \mem~283_combout\ : std_logic;
SIGNAL \mem~22feeder_combout\ : std_logic;
SIGNAL \mem~470_combout\ : std_logic;
SIGNAL \mem~22_q\ : std_logic;
SIGNAL \mem~473_combout\ : std_logic;
SIGNAL \mem~38_q\ : std_logic;
SIGNAL \mem~472_combout\ : std_logic;
SIGNAL \mem~14_q\ : std_logic;
SIGNAL \mem~30feeder_combout\ : std_logic;
SIGNAL \mem~471_combout\ : std_logic;
SIGNAL \mem~30_q\ : std_logic;
SIGNAL \mem~284_combout\ : std_logic;
SIGNAL \mem~285_combout\ : std_logic;
SIGNAL \mem~286_combout\ : std_logic;
SIGNAL \mem~289_combout\ : std_logic;
SIGNAL \data_out~2_combout\ : std_logic;
SIGNAL \data_out[0]~reg0_q\ : std_logic;
SIGNAL \data_in[1]~input_o\ : std_logic;
SIGNAL \mem~505_combout\ : std_logic;
SIGNAL \mem~247_q\ : std_logic;
SIGNAL \mem~502_combout\ : std_logic;
SIGNAL \mem~183_q\ : std_logic;
SIGNAL \mem~504_combout\ : std_logic;
SIGNAL \mem~151_q\ : std_logic;
SIGNAL \mem~503_combout\ : std_logic;
SIGNAL \mem~215_q\ : std_logic;
SIGNAL \mem~290_combout\ : std_logic;
SIGNAL \mem~291_combout\ : std_logic;
SIGNAL \mem~506_combout\ : std_logic;
SIGNAL \mem~223_q\ : std_logic;
SIGNAL \mem~255_q\ : std_logic;
SIGNAL \mem~508_combout\ : std_logic;
SIGNAL \mem~159_q\ : std_logic;
SIGNAL \mem~507_combout\ : std_logic;
SIGNAL \mem~191_q\ : std_logic;
SIGNAL \mem~292_combout\ : std_logic;
SIGNAL \mem~293_combout\ : std_logic;
SIGNAL \mem~509_combout\ : std_logic;
SIGNAL \mem~207_q\ : std_logic;
SIGNAL \mem~512_combout\ : std_logic;
SIGNAL \mem~239_q\ : std_logic;
SIGNAL \mem~511_combout\ : std_logic;
SIGNAL \mem~143_q\ : std_logic;
SIGNAL \mem~510_combout\ : std_logic;
SIGNAL \mem~175_q\ : std_logic;
SIGNAL \mem~294_combout\ : std_logic;
SIGNAL \mem~295_combout\ : std_logic;
SIGNAL \mem~296_combout\ : std_logic;
SIGNAL \mem~513_combout\ : std_logic;
SIGNAL \mem~199_q\ : std_logic;
SIGNAL \mem~263_q\ : std_logic;
SIGNAL \mem~515_combout\ : std_logic;
SIGNAL \mem~167_q\ : std_logic;
SIGNAL \mem~514_combout\ : std_logic;
SIGNAL \mem~231_q\ : std_logic;
SIGNAL \mem~297_combout\ : std_logic;
SIGNAL \mem~298_combout\ : std_logic;
SIGNAL \mem~299_combout\ : std_logic;
SIGNAL \mem~522_combout\ : std_logic;
SIGNAL \mem~127_q\ : std_logic;
SIGNAL \mem~525_combout\ : std_logic;
SIGNAL \mem~135_q\ : std_logic;
SIGNAL \mem~523_combout\ : std_logic;
SIGNAL \mem~119_q\ : std_logic;
SIGNAL \mem~524_combout\ : std_logic;
SIGNAL \mem~111_q\ : std_logic;
SIGNAL \mem~307_combout\ : std_logic;
SIGNAL \mem~308_combout\ : std_logic;
SIGNAL \mem~517_combout\ : std_logic;
SIGNAL \mem~71_q\ : std_logic;
SIGNAL \mem~516_combout\ : std_logic;
SIGNAL \mem~63_q\ : std_logic;
SIGNAL \mem~47_q\ : std_logic;
SIGNAL \mem~55_q\ : std_logic;
SIGNAL \mem~300_combout\ : std_logic;
SIGNAL \mem~301_combout\ : std_logic;
SIGNAL \mem~518_combout\ : std_logic;
SIGNAL \mem~87_q\ : std_logic;
SIGNAL \mem~521_combout\ : std_logic;
SIGNAL \mem~103_q\ : std_logic;
SIGNAL \mem~520_combout\ : std_logic;
SIGNAL \mem~79_q\ : std_logic;
SIGNAL \mem~519_combout\ : std_logic;
SIGNAL \mem~95_q\ : std_logic;
SIGNAL \mem~302_combout\ : std_logic;
SIGNAL \mem~303_combout\ : std_logic;
SIGNAL \mem~23feeder_combout\ : std_logic;
SIGNAL \mem~23_q\ : std_logic;
SIGNAL \mem~39_q\ : std_logic;
SIGNAL \mem~15_q\ : std_logic;
SIGNAL \mem~31_q\ : std_logic;
SIGNAL \mem~304_combout\ : std_logic;
SIGNAL \mem~305_combout\ : std_logic;
SIGNAL \mem~306_combout\ : std_logic;
SIGNAL \mem~309_combout\ : std_logic;
SIGNAL \data_out~3_combout\ : std_logic;
SIGNAL \data_out[1]~reg0_q\ : std_logic;
SIGNAL \data_in[2]~input_o\ : std_logic;
SIGNAL \mem~543_combout\ : std_logic;
SIGNAL \mem~104_q\ : std_logic;
SIGNAL \mem~540_combout\ : std_logic;
SIGNAL \mem~96_q\ : std_logic;
SIGNAL \mem~542_combout\ : std_logic;
SIGNAL \mem~80_q\ : std_logic;
SIGNAL \mem~541_combout\ : std_logic;
SIGNAL \mem~88_q\ : std_logic;
SIGNAL \mem~320_combout\ : std_logic;
SIGNAL \mem~321_combout\ : std_logic;
SIGNAL \mem~16_q\ : std_logic;
SIGNAL \mem~24feeder_combout\ : std_logic;
SIGNAL \mem~24_q\ : std_logic;
SIGNAL \mem~324_combout\ : std_logic;
SIGNAL \mem~40_q\ : std_logic;
SIGNAL \mem~32feeder_combout\ : std_logic;
SIGNAL \mem~32_q\ : std_logic;
SIGNAL \mem~325_combout\ : std_logic;
SIGNAL \mem~56_q\ : std_logic;
SIGNAL \mem~545_combout\ : std_logic;
SIGNAL \mem~72_q\ : std_logic;
SIGNAL \mem~48_q\ : std_logic;
SIGNAL \mem~544_combout\ : std_logic;
SIGNAL \mem~64_q\ : std_logic;
SIGNAL \mem~322_combout\ : std_logic;
SIGNAL \mem~323_combout\ : std_logic;
SIGNAL \mem~326_combout\ : std_logic;
SIGNAL \mem~546_combout\ : std_logic;
SIGNAL \mem~120_q\ : std_logic;
SIGNAL \mem~549_combout\ : std_logic;
SIGNAL \mem~136_q\ : std_logic;
SIGNAL \mem~548_combout\ : std_logic;
SIGNAL \mem~112_q\ : std_logic;
SIGNAL \mem~547_combout\ : std_logic;
SIGNAL \mem~128_q\ : std_logic;
SIGNAL \mem~327_combout\ : std_logic;
SIGNAL \mem~328_combout\ : std_logic;
SIGNAL \mem~329_combout\ : std_logic;
SIGNAL \mem~256feeder_combout\ : std_logic;
SIGNAL \mem~256_q\ : std_logic;
SIGNAL \mem~526_combout\ : std_logic;
SIGNAL \mem~192_q\ : std_logic;
SIGNAL \mem~528_combout\ : std_logic;
SIGNAL \mem~160_q\ : std_logic;
SIGNAL \mem~527_combout\ : std_logic;
SIGNAL \mem~224_q\ : std_logic;
SIGNAL \mem~310_combout\ : std_logic;
SIGNAL \mem~311_combout\ : std_logic;
SIGNAL \mem~537_combout\ : std_logic;
SIGNAL \mem~232_q\ : std_logic;
SIGNAL \mem~264_q\ : std_logic;
SIGNAL \mem~539_combout\ : std_logic;
SIGNAL \mem~168_q\ : std_logic;
SIGNAL \mem~538_combout\ : std_logic;
SIGNAL \mem~200_q\ : std_logic;
SIGNAL \mem~317_combout\ : std_logic;
SIGNAL \mem~318_combout\ : std_logic;
SIGNAL \mem~533_combout\ : std_logic;
SIGNAL \mem~176_q\ : std_logic;
SIGNAL \mem~536_combout\ : std_logic;
SIGNAL \mem~240_q\ : std_logic;
SIGNAL \mem~535_combout\ : std_logic;
SIGNAL \mem~144_q\ : std_logic;
SIGNAL \mem~534_combout\ : std_logic;
SIGNAL \mem~208_q\ : std_logic;
SIGNAL \mem~314_combout\ : std_logic;
SIGNAL \mem~315_combout\ : std_logic;
SIGNAL \mem~531_combout\ : std_logic;
SIGNAL \mem~152_q\ : std_logic;
SIGNAL \mem~530_combout\ : std_logic;
SIGNAL \mem~184_q\ : std_logic;
SIGNAL \mem~312_combout\ : std_logic;
SIGNAL \mem~532_combout\ : std_logic;
SIGNAL \mem~248_q\ : std_logic;
SIGNAL \mem~529_combout\ : std_logic;
SIGNAL \mem~216_q\ : std_logic;
SIGNAL \mem~313_combout\ : std_logic;
SIGNAL \mem~316_combout\ : std_logic;
SIGNAL \mem~319_combout\ : std_logic;
SIGNAL \data_out~4_combout\ : std_logic;
SIGNAL \data_out[2]~reg0_q\ : std_logic;
SIGNAL \data_in[3]~input_o\ : std_logic;
SIGNAL \mem~550_combout\ : std_logic;
SIGNAL \mem~185_q\ : std_logic;
SIGNAL \mem~553_combout\ : std_logic;
SIGNAL \mem~249_q\ : std_logic;
SIGNAL \mem~552_combout\ : std_logic;
SIGNAL \mem~153_q\ : std_logic;
SIGNAL \mem~551_combout\ : std_logic;
SIGNAL \mem~217_q\ : std_logic;
SIGNAL \mem~330_combout\ : std_logic;
SIGNAL \mem~331_combout\ : std_logic;
SIGNAL \mem~561_combout\ : std_logic;
SIGNAL \mem~201_q\ : std_logic;
SIGNAL \mem~265_q\ : std_logic;
SIGNAL \mem~563_combout\ : std_logic;
SIGNAL \mem~169_q\ : std_logic;
SIGNAL \mem~562_combout\ : std_logic;
SIGNAL \mem~233_q\ : std_logic;
SIGNAL \mem~337_combout\ : std_logic;
SIGNAL \mem~338_combout\ : std_logic;
SIGNAL \mem~557_combout\ : std_logic;
SIGNAL \mem~209_q\ : std_logic;
SIGNAL \mem~560_combout\ : std_logic;
SIGNAL \mem~241_q\ : std_logic;
SIGNAL \mem~559_combout\ : std_logic;
SIGNAL \mem~145_q\ : std_logic;
SIGNAL \mem~558_combout\ : std_logic;
SIGNAL \mem~177_q\ : std_logic;
SIGNAL \mem~334_combout\ : std_logic;
SIGNAL \mem~335_combout\ : std_logic;
SIGNAL \mem~554_combout\ : std_logic;
SIGNAL \mem~225_q\ : std_logic;
SIGNAL \mem~257_q\ : std_logic;
SIGNAL \mem~556_combout\ : std_logic;
SIGNAL \mem~161_q\ : std_logic;
SIGNAL \mem~555_combout\ : std_logic;
SIGNAL \mem~193_q\ : std_logic;
SIGNAL \mem~332_combout\ : std_logic;
SIGNAL \mem~333_combout\ : std_logic;
SIGNAL \mem~336_combout\ : std_logic;
SIGNAL \mem~339_combout\ : std_logic;
SIGNAL \mem~565_combout\ : std_logic;
SIGNAL \mem~73_q\ : std_logic;
SIGNAL \mem~564_combout\ : std_logic;
SIGNAL \mem~65_q\ : std_logic;
SIGNAL \mem~49_q\ : std_logic;
SIGNAL \mem~57feeder_combout\ : std_logic;
SIGNAL \mem~57_q\ : std_logic;
SIGNAL \mem~340_combout\ : std_logic;
SIGNAL \mem~341_combout\ : std_logic;
SIGNAL \mem~566_combout\ : std_logic;
SIGNAL \mem~89_q\ : std_logic;
SIGNAL \mem~569_combout\ : std_logic;
SIGNAL \mem~105_q\ : std_logic;
SIGNAL \mem~568_combout\ : std_logic;
SIGNAL \mem~81_q\ : std_logic;
SIGNAL \mem~567_combout\ : std_logic;
SIGNAL \mem~97_q\ : std_logic;
SIGNAL \mem~342_combout\ : std_logic;
SIGNAL \mem~343_combout\ : std_logic;
SIGNAL \mem~25_q\ : std_logic;
SIGNAL \mem~41_q\ : std_logic;
SIGNAL \mem~17_q\ : std_logic;
SIGNAL \mem~33feeder_combout\ : std_logic;
SIGNAL \mem~33_q\ : std_logic;
SIGNAL \mem~344_combout\ : std_logic;
SIGNAL \mem~345_combout\ : std_logic;
SIGNAL \mem~346_combout\ : std_logic;
SIGNAL \mem~570_combout\ : std_logic;
SIGNAL \mem~129_q\ : std_logic;
SIGNAL \mem~573_combout\ : std_logic;
SIGNAL \mem~137_q\ : std_logic;
SIGNAL \mem~572_combout\ : std_logic;
SIGNAL \mem~113_q\ : std_logic;
SIGNAL \mem~571_combout\ : std_logic;
SIGNAL \mem~121_q\ : std_logic;
SIGNAL \mem~347_combout\ : std_logic;
SIGNAL \mem~348_combout\ : std_logic;
SIGNAL \mem~349_combout\ : std_logic;
SIGNAL \data_out~5_combout\ : std_logic;
SIGNAL \data_out[3]~reg0_q\ : std_logic;
SIGNAL \data_in[4]~input_o\ : std_logic;
SIGNAL \mem~258_q\ : std_logic;
SIGNAL \mem~574_combout\ : std_logic;
SIGNAL \mem~194_q\ : std_logic;
SIGNAL \mem~576_combout\ : std_logic;
SIGNAL \mem~162_q\ : std_logic;
SIGNAL \mem~575_combout\ : std_logic;
SIGNAL \mem~226_q\ : std_logic;
SIGNAL \mem~350_combout\ : std_logic;
SIGNAL \mem~351_combout\ : std_logic;
SIGNAL \mem~585_combout\ : std_logic;
SIGNAL \mem~234_q\ : std_logic;
SIGNAL \mem~266_q\ : std_logic;
SIGNAL \mem~586_combout\ : std_logic;
SIGNAL \mem~202_q\ : std_logic;
SIGNAL \mem~587_combout\ : std_logic;
SIGNAL \mem~170_q\ : std_logic;
SIGNAL \mem~357_combout\ : std_logic;
SIGNAL \mem~358_combout\ : std_logic;
SIGNAL \mem~577_combout\ : std_logic;
SIGNAL \mem~218_q\ : std_logic;
SIGNAL \mem~580_combout\ : std_logic;
SIGNAL \mem~250_q\ : std_logic;
SIGNAL \mem~579_combout\ : std_logic;
SIGNAL \mem~154_q\ : std_logic;
SIGNAL \mem~578_combout\ : std_logic;
SIGNAL \mem~186_q\ : std_logic;
SIGNAL \mem~352_combout\ : std_logic;
SIGNAL \mem~353_combout\ : std_logic;
SIGNAL \mem~581_combout\ : std_logic;
SIGNAL \mem~178_q\ : std_logic;
SIGNAL \mem~584_combout\ : std_logic;
SIGNAL \mem~242_q\ : std_logic;
SIGNAL \mem~583_combout\ : std_logic;
SIGNAL \mem~146_q\ : std_logic;
SIGNAL \mem~582_combout\ : std_logic;
SIGNAL \mem~210_q\ : std_logic;
SIGNAL \mem~354_combout\ : std_logic;
SIGNAL \mem~355_combout\ : std_logic;
SIGNAL \mem~356_combout\ : std_logic;
SIGNAL \mem~359_combout\ : std_logic;
SIGNAL \mem~591_combout\ : std_logic;
SIGNAL \mem~106_q\ : std_logic;
SIGNAL \mem~588_combout\ : std_logic;
SIGNAL \mem~98_q\ : std_logic;
SIGNAL \mem~590_combout\ : std_logic;
SIGNAL \mem~82_q\ : std_logic;
SIGNAL \mem~589_combout\ : std_logic;
SIGNAL \mem~90_q\ : std_logic;
SIGNAL \mem~360_combout\ : std_logic;
SIGNAL \mem~361_combout\ : std_logic;
SIGNAL \mem~594_combout\ : std_logic;
SIGNAL \mem~122_q\ : std_logic;
SIGNAL \mem~597_combout\ : std_logic;
SIGNAL \mem~138_q\ : std_logic;
SIGNAL \mem~596_combout\ : std_logic;
SIGNAL \mem~114_q\ : std_logic;
SIGNAL \mem~595_combout\ : std_logic;
SIGNAL \mem~130_q\ : std_logic;
SIGNAL \mem~367_combout\ : std_logic;
SIGNAL \mem~368_combout\ : std_logic;
SIGNAL \mem~58_q\ : std_logic;
SIGNAL \mem~593_combout\ : std_logic;
SIGNAL \mem~74_q\ : std_logic;
SIGNAL \mem~50_q\ : std_logic;
SIGNAL \mem~592_combout\ : std_logic;
SIGNAL \mem~66_q\ : std_logic;
SIGNAL \mem~362_combout\ : std_logic;
SIGNAL \mem~363_combout\ : std_logic;
SIGNAL \mem~18_q\ : std_logic;
SIGNAL \mem~26_q\ : std_logic;
SIGNAL \mem~364_combout\ : std_logic;
SIGNAL \mem~42_q\ : std_logic;
SIGNAL \mem~34feeder_combout\ : std_logic;
SIGNAL \mem~34_q\ : std_logic;
SIGNAL \mem~365_combout\ : std_logic;
SIGNAL \mem~366_combout\ : std_logic;
SIGNAL \mem~369_combout\ : std_logic;
SIGNAL \data_out~6_combout\ : std_logic;
SIGNAL \data_out[4]~reg0_q\ : std_logic;
SIGNAL \data_in[5]~input_o\ : std_logic;
SIGNAL \mem~613_combout\ : std_logic;
SIGNAL \mem~75_q\ : std_logic;
SIGNAL \mem~612_combout\ : std_logic;
SIGNAL \mem~67_q\ : std_logic;
SIGNAL \mem~51_q\ : std_logic;
SIGNAL \mem~59feeder_combout\ : std_logic;
SIGNAL \mem~59_q\ : std_logic;
SIGNAL \mem~380_combout\ : std_logic;
SIGNAL \mem~381_combout\ : std_logic;
SIGNAL \mem~618_combout\ : std_logic;
SIGNAL \mem~131_q\ : std_logic;
SIGNAL \mem~621_combout\ : std_logic;
SIGNAL \mem~139_q\ : std_logic;
SIGNAL \mem~620_combout\ : std_logic;
SIGNAL \mem~115_q\ : std_logic;
SIGNAL \mem~619_combout\ : std_logic;
SIGNAL \mem~123_q\ : std_logic;
SIGNAL \mem~387_combout\ : std_logic;
SIGNAL \mem~388_combout\ : std_logic;
SIGNAL \mem~27feeder_combout\ : std_logic;
SIGNAL \mem~27_q\ : std_logic;
SIGNAL \mem~43_q\ : std_logic;
SIGNAL \mem~19_q\ : std_logic;
SIGNAL \mem~35_q\ : std_logic;
SIGNAL \mem~384_combout\ : std_logic;
SIGNAL \mem~385_combout\ : std_logic;
SIGNAL \mem~614_combout\ : std_logic;
SIGNAL \mem~91_q\ : std_logic;
SIGNAL \mem~617_combout\ : std_logic;
SIGNAL \mem~107_q\ : std_logic;
SIGNAL \mem~616_combout\ : std_logic;
SIGNAL \mem~83_q\ : std_logic;
SIGNAL \mem~615_combout\ : std_logic;
SIGNAL \mem~99_q\ : std_logic;
SIGNAL \mem~382_combout\ : std_logic;
SIGNAL \mem~383_combout\ : std_logic;
SIGNAL \mem~386_combout\ : std_logic;
SIGNAL \mem~389_combout\ : std_logic;
SIGNAL \mem~609_combout\ : std_logic;
SIGNAL \mem~203_q\ : std_logic;
SIGNAL \mem~267_q\ : std_logic;
SIGNAL \mem~611_combout\ : std_logic;
SIGNAL \mem~171_q\ : std_logic;
SIGNAL \mem~610_combout\ : std_logic;
SIGNAL \mem~235_q\ : std_logic;
SIGNAL \mem~377_combout\ : std_logic;
SIGNAL \mem~378_combout\ : std_logic;
SIGNAL \mem~601_combout\ : std_logic;
SIGNAL \mem~251_q\ : std_logic;
SIGNAL \mem~598_combout\ : std_logic;
SIGNAL \mem~187_q\ : std_logic;
SIGNAL \mem~600_combout\ : std_logic;
SIGNAL \mem~155_q\ : std_logic;
SIGNAL \mem~599_combout\ : std_logic;
SIGNAL \mem~219_q\ : std_logic;
SIGNAL \mem~370_combout\ : std_logic;
SIGNAL \mem~371_combout\ : std_logic;
SIGNAL \mem~605_combout\ : std_logic;
SIGNAL \mem~211_q\ : std_logic;
SIGNAL \mem~608_combout\ : std_logic;
SIGNAL \mem~243_q\ : std_logic;
SIGNAL \mem~607_combout\ : std_logic;
SIGNAL \mem~147_q\ : std_logic;
SIGNAL \mem~606_combout\ : std_logic;
SIGNAL \mem~179_q\ : std_logic;
SIGNAL \mem~374_combout\ : std_logic;
SIGNAL \mem~375_combout\ : std_logic;
SIGNAL \mem~602_combout\ : std_logic;
SIGNAL \mem~227_q\ : std_logic;
SIGNAL \mem~259_q\ : std_logic;
SIGNAL \mem~604_combout\ : std_logic;
SIGNAL \mem~163_q\ : std_logic;
SIGNAL \mem~603_combout\ : std_logic;
SIGNAL \mem~195_q\ : std_logic;
SIGNAL \mem~372_combout\ : std_logic;
SIGNAL \mem~373_combout\ : std_logic;
SIGNAL \mem~376_combout\ : std_logic;
SIGNAL \mem~379_combout\ : std_logic;
SIGNAL \data_out~7_combout\ : std_logic;
SIGNAL \data_out[5]~reg0_q\ : std_logic;
SIGNAL \data_in[6]~input_o\ : std_logic;
SIGNAL \mem~642_combout\ : std_logic;
SIGNAL \mem~124feeder_combout\ : std_logic;
SIGNAL \mem~124_q\ : std_logic;
SIGNAL \mem~645_combout\ : std_logic;
SIGNAL \mem~140_q\ : std_logic;
SIGNAL \mem~644_combout\ : std_logic;
SIGNAL \mem~116_q\ : std_logic;
SIGNAL \mem~643_combout\ : std_logic;
SIGNAL \mem~132_q\ : std_logic;
SIGNAL \mem~407_combout\ : std_logic;
SIGNAL \mem~408_combout\ : std_logic;
SIGNAL \mem~639_combout\ : std_logic;
SIGNAL \mem~108_q\ : std_logic;
SIGNAL \mem~636_combout\ : std_logic;
SIGNAL \mem~100_q\ : std_logic;
SIGNAL \mem~638_combout\ : std_logic;
SIGNAL \mem~84_q\ : std_logic;
SIGNAL \mem~637_combout\ : std_logic;
SIGNAL \mem~92_q\ : std_logic;
SIGNAL \mem~400_combout\ : std_logic;
SIGNAL \mem~401_combout\ : std_logic;
SIGNAL \mem~20_q\ : std_logic;
SIGNAL \mem~28feeder_combout\ : std_logic;
SIGNAL \mem~28_q\ : std_logic;
SIGNAL \mem~404_combout\ : std_logic;
SIGNAL \mem~44_q\ : std_logic;
SIGNAL \mem~36feeder_combout\ : std_logic;
SIGNAL \mem~36_q\ : std_logic;
SIGNAL \mem~405_combout\ : std_logic;
SIGNAL \mem~60feeder_combout\ : std_logic;
SIGNAL \mem~60_q\ : std_logic;
SIGNAL \mem~641_combout\ : std_logic;
SIGNAL \mem~76_q\ : std_logic;
SIGNAL \mem~52_q\ : std_logic;
SIGNAL \mem~640_combout\ : std_logic;
SIGNAL \mem~68_q\ : std_logic;
SIGNAL \mem~402_combout\ : std_logic;
SIGNAL \mem~403_combout\ : std_logic;
SIGNAL \mem~406_combout\ : std_logic;
SIGNAL \mem~409_combout\ : std_logic;
SIGNAL \mem~260feeder_combout\ : std_logic;
SIGNAL \mem~260_q\ : std_logic;
SIGNAL \mem~622_combout\ : std_logic;
SIGNAL \mem~196_q\ : std_logic;
SIGNAL \mem~624_combout\ : std_logic;
SIGNAL \mem~164_q\ : std_logic;
SIGNAL \mem~623_combout\ : std_logic;
SIGNAL \mem~228_q\ : std_logic;
SIGNAL \mem~390_combout\ : std_logic;
SIGNAL \mem~391_combout\ : std_logic;
SIGNAL \mem~633_combout\ : std_logic;
SIGNAL \mem~236_q\ : std_logic;
SIGNAL \mem~268_q\ : std_logic;
SIGNAL \mem~635_combout\ : std_logic;
SIGNAL \mem~172_q\ : std_logic;
SIGNAL \mem~634_combout\ : std_logic;
SIGNAL \mem~204_q\ : std_logic;
SIGNAL \mem~397_combout\ : std_logic;
SIGNAL \mem~398_combout\ : std_logic;
SIGNAL \mem~625_combout\ : std_logic;
SIGNAL \mem~220_q\ : std_logic;
SIGNAL \mem~628_combout\ : std_logic;
SIGNAL \mem~252_q\ : std_logic;
SIGNAL \mem~627_combout\ : std_logic;
SIGNAL \mem~156_q\ : std_logic;
SIGNAL \mem~626_combout\ : std_logic;
SIGNAL \mem~188_q\ : std_logic;
SIGNAL \mem~392_combout\ : std_logic;
SIGNAL \mem~393_combout\ : std_logic;
SIGNAL \mem~632_combout\ : std_logic;
SIGNAL \mem~244_q\ : std_logic;
SIGNAL \mem~629_combout\ : std_logic;
SIGNAL \mem~180_q\ : std_logic;
SIGNAL \mem~631_combout\ : std_logic;
SIGNAL \mem~148_q\ : std_logic;
SIGNAL \mem~630_combout\ : std_logic;
SIGNAL \mem~212_q\ : std_logic;
SIGNAL \mem~394_combout\ : std_logic;
SIGNAL \mem~395_combout\ : std_logic;
SIGNAL \mem~396_combout\ : std_logic;
SIGNAL \mem~399_combout\ : std_logic;
SIGNAL \data_out~8_combout\ : std_logic;
SIGNAL \data_out[6]~reg0_q\ : std_logic;
SIGNAL \data_in[7]~input_o\ : std_logic;
SIGNAL \mem~657_combout\ : std_logic;
SIGNAL \mem~205_q\ : std_logic;
SIGNAL \mem~269_q\ : std_logic;
SIGNAL \mem~659_combout\ : std_logic;
SIGNAL \mem~173_q\ : std_logic;
SIGNAL \mem~658_combout\ : std_logic;
SIGNAL \mem~237_q\ : std_logic;
SIGNAL \mem~417_combout\ : std_logic;
SIGNAL \mem~418_combout\ : std_logic;
SIGNAL \mem~649_combout\ : std_logic;
SIGNAL \mem~253_q\ : std_logic;
SIGNAL \mem~646_combout\ : std_logic;
SIGNAL \mem~189_q\ : std_logic;
SIGNAL \mem~647_combout\ : std_logic;
SIGNAL \mem~221_q\ : std_logic;
SIGNAL \mem~648_combout\ : std_logic;
SIGNAL \mem~157feeder_combout\ : std_logic;
SIGNAL \mem~157_q\ : std_logic;
SIGNAL \mem~410_combout\ : std_logic;
SIGNAL \mem~411_combout\ : std_logic;
SIGNAL \mem~650_combout\ : std_logic;
SIGNAL \mem~229_q\ : std_logic;
SIGNAL \mem~261_q\ : std_logic;
SIGNAL \mem~652_combout\ : std_logic;
SIGNAL \mem~165_q\ : std_logic;
SIGNAL \mem~651_combout\ : std_logic;
SIGNAL \mem~197_q\ : std_logic;
SIGNAL \mem~412_combout\ : std_logic;
SIGNAL \mem~413_combout\ : std_logic;
SIGNAL \mem~653_combout\ : std_logic;
SIGNAL \mem~213_q\ : std_logic;
SIGNAL \mem~656_combout\ : std_logic;
SIGNAL \mem~245_q\ : std_logic;
SIGNAL \mem~655_combout\ : std_logic;
SIGNAL \mem~149_q\ : std_logic;
SIGNAL \mem~654_combout\ : std_logic;
SIGNAL \mem~181_q\ : std_logic;
SIGNAL \mem~414_combout\ : std_logic;
SIGNAL \mem~415_combout\ : std_logic;
SIGNAL \mem~416_combout\ : std_logic;
SIGNAL \mem~419_combout\ : std_logic;
SIGNAL \mem~666_combout\ : std_logic;
SIGNAL \mem~133_q\ : std_logic;
SIGNAL \mem~669_combout\ : std_logic;
SIGNAL \mem~141_q\ : std_logic;
SIGNAL \mem~668_combout\ : std_logic;
SIGNAL \mem~117_q\ : std_logic;
SIGNAL \mem~667_combout\ : std_logic;
SIGNAL \mem~125_q\ : std_logic;
SIGNAL \mem~427_combout\ : std_logic;
SIGNAL \mem~428_combout\ : std_logic;
SIGNAL \mem~661_combout\ : std_logic;
SIGNAL \mem~77_q\ : std_logic;
SIGNAL \mem~660_combout\ : std_logic;
SIGNAL \mem~69_q\ : std_logic;
SIGNAL \mem~53_q\ : std_logic;
SIGNAL \mem~61_q\ : std_logic;
SIGNAL \mem~420_combout\ : std_logic;
SIGNAL \mem~421_combout\ : std_logic;
SIGNAL \mem~29feeder_combout\ : std_logic;
SIGNAL \mem~29_q\ : std_logic;
SIGNAL \mem~45_q\ : std_logic;
SIGNAL \mem~21_q\ : std_logic;
SIGNAL \mem~37_q\ : std_logic;
SIGNAL \mem~424_combout\ : std_logic;
SIGNAL \mem~425_combout\ : std_logic;
SIGNAL \mem~665_combout\ : std_logic;
SIGNAL \mem~109_q\ : std_logic;
SIGNAL \mem~662_combout\ : std_logic;
SIGNAL \mem~93_q\ : std_logic;
SIGNAL \mem~664_combout\ : std_logic;
SIGNAL \mem~85_q\ : std_logic;
SIGNAL \mem~663_combout\ : std_logic;
SIGNAL \mem~101_q\ : std_logic;
SIGNAL \mem~422_combout\ : std_logic;
SIGNAL \mem~423_combout\ : std_logic;
SIGNAL \mem~426_combout\ : std_logic;
SIGNAL \mem~429_combout\ : std_logic;
SIGNAL \data_out~9_combout\ : std_logic;
SIGNAL \data_out[7]~reg0_q\ : std_logic;

BEGIN

ww_clock <= clock;
ww_we <= we;
ww_address <= address;
ww_data_in <= data_in;
data_out <= ww_data_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

-- Location: IOOBUF_X22_Y0_N2
\data_out[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[0]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out[0]~output_o\);

-- Location: IOOBUF_X24_Y31_N2
\data_out[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[1]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out[1]~output_o\);

-- Location: IOOBUF_X33_Y22_N2
\data_out[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[2]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out[2]~output_o\);

-- Location: IOOBUF_X33_Y22_N9
\data_out[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[3]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out[3]~output_o\);

-- Location: IOOBUF_X33_Y10_N2
\data_out[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[4]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out[4]~output_o\);

-- Location: IOOBUF_X33_Y11_N2
\data_out[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[5]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out[5]~output_o\);

-- Location: IOOBUF_X33_Y24_N9
\data_out[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[6]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out[6]~output_o\);

-- Location: IOOBUF_X22_Y31_N2
\data_out[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[7]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out[7]~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\clock~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G17
\clock~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

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

-- Location: IOIBUF_X33_Y12_N8
\address[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(3),
	o => \address[3]~input_o\);

-- Location: IOIBUF_X24_Y0_N8
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

-- Location: LCCOMB_X25_Y14_N0
\data_out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_out~0_combout\ = (\address[1]~input_o\ & \address[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \address[1]~input_o\,
	datac => \address[2]~input_o\,
	combout => \data_out~0_combout\);

-- Location: LCCOMB_X24_Y13_N0
\data_out~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_out~1_combout\ = (\address[5]~input_o\) # ((\address[3]~input_o\ & (\address[4]~input_o\ & \data_out~0_combout\)) # (!\address[3]~input_o\ & (!\address[4]~input_o\ & !\data_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \address[4]~input_o\,
	datac => \address[5]~input_o\,
	datad => \data_out~0_combout\,
	combout => \data_out~1_combout\);

-- Location: IOIBUF_X33_Y15_N1
\data_in[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(0),
	o => \data_in[0]~input_o\);

-- Location: LCCOMB_X26_Y18_N12
\mem~489\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~489_combout\ = !\data_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[0]~input_o\,
	combout => \mem~489_combout\);

-- Location: IOIBUF_X33_Y11_N8
\we~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_we,
	o => \we~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\address[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(0),
	o => \address[0]~input_o\);

-- Location: LCCOMB_X25_Y17_N12
\mem~454\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~454_combout\ = (!\address[2]~input_o\ & (\address[3]~input_o\ & (\address[1]~input_o\ & \address[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[3]~input_o\,
	datac => \address[1]~input_o\,
	datad => \address[0]~input_o\,
	combout => \mem~454_combout\);

-- Location: LCCOMB_X25_Y17_N10
\mem~455\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~455_combout\ = (!\data_out~1_combout\ & (\address[4]~input_o\ & (\we~input_o\ & \mem~454_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out~1_combout\,
	datab => \address[4]~input_o\,
	datac => \we~input_o\,
	datad => \mem~454_combout\,
	combout => \mem~455_combout\);

-- Location: FF_X26_Y18_N13
\mem~230\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~489_combout\,
	ena => \mem~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~230_q\);

-- Location: LCCOMB_X24_Y17_N28
\mem~460\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~460_combout\ = (\address[3]~input_o\ & (\address[0]~input_o\ & (\address[2]~input_o\ & \address[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \address[0]~input_o\,
	datac => \address[2]~input_o\,
	datad => \address[1]~input_o\,
	combout => \mem~460_combout\);

-- Location: LCCOMB_X25_Y17_N22
\mem~461\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~461_combout\ = (!\data_out~1_combout\ & (\address[4]~input_o\ & (\we~input_o\ & \mem~460_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out~1_combout\,
	datab => \address[4]~input_o\,
	datac => \we~input_o\,
	datad => \mem~460_combout\,
	combout => \mem~461_combout\);

-- Location: FF_X25_Y18_N19
\mem~262\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[0]~input_o\,
	sload => VCC,
	ena => \mem~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~262_q\);

-- Location: LCCOMB_X24_Y18_N26
\mem~491\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~491_combout\ = !\data_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[0]~input_o\,
	combout => \mem~491_combout\);

-- Location: LCCOMB_X22_Y18_N0
\mem~458\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~458_combout\ = (!\address[3]~input_o\ & (\address[0]~input_o\ & (!\address[2]~input_o\ & \address[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \address[0]~input_o\,
	datac => \address[2]~input_o\,
	datad => \address[1]~input_o\,
	combout => \mem~458_combout\);

-- Location: LCCOMB_X22_Y18_N2
\mem~459\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~459_combout\ = (\we~input_o\ & (\mem~458_combout\ & (\address[4]~input_o\ & !\data_out~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \we~input_o\,
	datab => \mem~458_combout\,
	datac => \address[4]~input_o\,
	datad => \data_out~1_combout\,
	combout => \mem~459_combout\);

-- Location: FF_X25_Y18_N9
\mem~166\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~491_combout\,
	sload => VCC,
	ena => \mem~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~166_q\);

-- Location: LCCOMB_X24_Y18_N24
\mem~490\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~490_combout\ = !\data_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[0]~input_o\,
	combout => \mem~490_combout\);

-- Location: LCCOMB_X24_Y16_N30
\mem~456\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~456_combout\ = (\address[2]~input_o\ & (!\address[3]~input_o\ & (\address[0]~input_o\ & \address[1]~input_o\)))

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
	combout => \mem~456_combout\);

-- Location: LCCOMB_X25_Y17_N0
\mem~457\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~457_combout\ = (!\data_out~1_combout\ & (\address[4]~input_o\ & (\we~input_o\ & \mem~456_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out~1_combout\,
	datab => \address[4]~input_o\,
	datac => \we~input_o\,
	datad => \mem~456_combout\,
	combout => \mem~457_combout\);

-- Location: FF_X24_Y18_N25
\mem~198\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~490_combout\,
	ena => \mem~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~198_q\);

-- Location: LCCOMB_X25_Y18_N8
\mem~277\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~277_combout\ = (\address[2]~input_o\ & ((\address[3]~input_o\) # ((!\mem~198_q\)))) # (!\address[2]~input_o\ & (!\address[3]~input_o\ & (!\mem~166_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[3]~input_o\,
	datac => \mem~166_q\,
	datad => \mem~198_q\,
	combout => \mem~277_combout\);

-- Location: LCCOMB_X25_Y18_N18
\mem~278\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~278_combout\ = (\address[3]~input_o\ & ((\mem~277_combout\ & ((\mem~262_q\))) # (!\mem~277_combout\ & (!\mem~230_q\)))) # (!\address[3]~input_o\ & (((\mem~277_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \mem~230_q\,
	datac => \mem~262_q\,
	datad => \mem~277_combout\,
	combout => \mem~278_combout\);

-- Location: LCCOMB_X26_Y15_N20
\mem~485\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~485_combout\ = !\data_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[0]~input_o\,
	combout => \mem~485_combout\);

-- Location: LCCOMB_X24_Y16_N24
\mem~446\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~446_combout\ = (\address[2]~input_o\ & (!\address[3]~input_o\ & (!\address[0]~input_o\ & !\address[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[3]~input_o\,
	datac => \address[0]~input_o\,
	datad => \address[1]~input_o\,
	combout => \mem~446_combout\);

-- Location: LCCOMB_X24_Y17_N22
\mem~447\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~447_combout\ = (\we~input_o\ & (!\data_out~1_combout\ & (\address[4]~input_o\ & \mem~446_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \we~input_o\,
	datab => \data_out~1_combout\,
	datac => \address[4]~input_o\,
	datad => \mem~446_combout\,
	combout => \mem~447_combout\);

-- Location: FF_X26_Y15_N21
\mem~174\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~485_combout\,
	ena => \mem~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~174_q\);

-- Location: LCCOMB_X25_Y15_N22
\mem~488\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~488_combout\ = !\data_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[0]~input_o\,
	combout => \mem~488_combout\);

-- Location: LCCOMB_X22_Y15_N22
\mem~452\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~452_combout\ = (!\address[1]~input_o\ & (!\address[0]~input_o\ & (\address[3]~input_o\ & \address[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => \address[3]~input_o\,
	datad => \address[2]~input_o\,
	combout => \mem~452_combout\);

-- Location: LCCOMB_X22_Y15_N16
\mem~453\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~453_combout\ = (!\data_out~1_combout\ & (\address[4]~input_o\ & (\mem~452_combout\ & \we~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out~1_combout\,
	datab => \address[4]~input_o\,
	datac => \mem~452_combout\,
	datad => \we~input_o\,
	combout => \mem~453_combout\);

-- Location: FF_X25_Y15_N15
\mem~238\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~488_combout\,
	sload => VCC,
	ena => \mem~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~238_q\);

-- Location: LCCOMB_X25_Y15_N4
\mem~487\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~487_combout\ = !\data_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[0]~input_o\,
	combout => \mem~487_combout\);

-- Location: LCCOMB_X23_Y15_N12
\mem~450\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~450_combout\ = (!\address[1]~input_o\ & (!\address[3]~input_o\ & (!\address[0]~input_o\ & !\address[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[3]~input_o\,
	datac => \address[0]~input_o\,
	datad => \address[2]~input_o\,
	combout => \mem~450_combout\);

-- Location: LCCOMB_X22_Y15_N4
\mem~451\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~451_combout\ = (!\data_out~1_combout\ & (\address[4]~input_o\ & (\mem~450_combout\ & \we~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out~1_combout\,
	datab => \address[4]~input_o\,
	datac => \mem~450_combout\,
	datad => \we~input_o\,
	combout => \mem~451_combout\);

-- Location: FF_X25_Y15_N17
\mem~142\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~487_combout\,
	sload => VCC,
	ena => \mem~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~142_q\);

-- Location: LCCOMB_X26_Y15_N30
\mem~486\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~486_combout\ = !\data_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[0]~input_o\,
	combout => \mem~486_combout\);

-- Location: LCCOMB_X22_Y16_N20
\mem~448\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~448_combout\ = (!\address[0]~input_o\ & (\address[3]~input_o\ & (!\address[2]~input_o\ & !\address[1]~input_o\)))

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
	combout => \mem~448_combout\);

-- Location: LCCOMB_X22_Y15_N10
\mem~449\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~449_combout\ = (!\data_out~1_combout\ & (\address[4]~input_o\ & (\mem~448_combout\ & \we~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out~1_combout\,
	datab => \address[4]~input_o\,
	datac => \mem~448_combout\,
	datad => \we~input_o\,
	combout => \mem~449_combout\);

-- Location: FF_X26_Y15_N31
\mem~206\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~486_combout\,
	ena => \mem~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~206_q\);

-- Location: LCCOMB_X25_Y15_N16
\mem~274\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~274_combout\ = (\address[3]~input_o\ & ((\address[2]~input_o\) # ((!\mem~206_q\)))) # (!\address[3]~input_o\ & (!\address[2]~input_o\ & (!\mem~142_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \address[2]~input_o\,
	datac => \mem~142_q\,
	datad => \mem~206_q\,
	combout => \mem~274_combout\);

-- Location: LCCOMB_X25_Y15_N14
\mem~275\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~275_combout\ = (\address[2]~input_o\ & ((\mem~274_combout\ & ((!\mem~238_q\))) # (!\mem~274_combout\ & (!\mem~174_q\)))) # (!\address[2]~input_o\ & (((\mem~274_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~174_q\,
	datab => \address[2]~input_o\,
	datac => \mem~238_q\,
	datad => \mem~274_combout\,
	combout => \mem~275_combout\);

-- Location: LCCOMB_X22_Y14_N2
\mem~481\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~481_combout\ = !\data_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[0]~input_o\,
	combout => \mem~481_combout\);

-- Location: LCCOMB_X24_Y15_N0
\mem~438\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~438_combout\ = (!\address[2]~input_o\ & (\address[3]~input_o\ & (\address[0]~input_o\ & !\address[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[3]~input_o\,
	datac => \address[0]~input_o\,
	datad => \address[1]~input_o\,
	combout => \mem~438_combout\);

-- Location: LCCOMB_X22_Y15_N20
\mem~439\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~439_combout\ = (!\data_out~1_combout\ & (\address[4]~input_o\ & (\mem~438_combout\ & \we~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out~1_combout\,
	datab => \address[4]~input_o\,
	datac => \mem~438_combout\,
	datad => \we~input_o\,
	combout => \mem~439_combout\);

-- Location: FF_X22_Y14_N3
\mem~214\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~481_combout\,
	ena => \mem~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~214_q\);

-- Location: LCCOMB_X23_Y14_N22
\mem~484\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~484_combout\ = !\data_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[0]~input_o\,
	combout => \mem~484_combout\);

-- Location: LCCOMB_X22_Y15_N26
\mem~444\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~444_combout\ = (!\address[1]~input_o\ & (\address[0]~input_o\ & (\address[3]~input_o\ & \address[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => \address[3]~input_o\,
	datad => \address[2]~input_o\,
	combout => \mem~444_combout\);

-- Location: LCCOMB_X22_Y15_N24
\mem~445\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~445_combout\ = (!\data_out~1_combout\ & (\address[4]~input_o\ & (\mem~444_combout\ & \we~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out~1_combout\,
	datab => \address[4]~input_o\,
	datac => \mem~444_combout\,
	datad => \we~input_o\,
	combout => \mem~445_combout\);

-- Location: FF_X23_Y14_N3
\mem~246\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~484_combout\,
	sload => VCC,
	ena => \mem~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~246_q\);

-- Location: LCCOMB_X23_Y14_N4
\mem~483\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~483_combout\ = !\data_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[0]~input_o\,
	combout => \mem~483_combout\);

-- Location: LCCOMB_X24_Y15_N22
\mem~442\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~442_combout\ = (!\address[2]~input_o\ & (!\address[3]~input_o\ & (\address[0]~input_o\ & !\address[1]~input_o\)))

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
	combout => \mem~442_combout\);

-- Location: LCCOMB_X24_Y15_N8
\mem~443\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~443_combout\ = (\mem~442_combout\ & (!\data_out~1_combout\ & (\address[4]~input_o\ & \we~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~442_combout\,
	datab => \data_out~1_combout\,
	datac => \address[4]~input_o\,
	datad => \we~input_o\,
	combout => \mem~443_combout\);

-- Location: FF_X23_Y14_N17
\mem~150\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~483_combout\,
	sload => VCC,
	ena => \mem~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~150_q\);

-- Location: LCCOMB_X24_Y14_N18
\mem~482\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~482_combout\ = !\data_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[0]~input_o\,
	combout => \mem~482_combout\);

-- Location: LCCOMB_X24_Y16_N18
\mem~440\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~440_combout\ = (\address[2]~input_o\ & (!\address[3]~input_o\ & (\address[0]~input_o\ & !\address[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[3]~input_o\,
	datac => \address[0]~input_o\,
	datad => \address[1]~input_o\,
	combout => \mem~440_combout\);

-- Location: LCCOMB_X24_Y14_N22
\mem~441\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~441_combout\ = (\we~input_o\ & (\address[4]~input_o\ & (\mem~440_combout\ & !\data_out~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \we~input_o\,
	datab => \address[4]~input_o\,
	datac => \mem~440_combout\,
	datad => \data_out~1_combout\,
	combout => \mem~441_combout\);

-- Location: FF_X24_Y14_N19
\mem~182\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~482_combout\,
	ena => \mem~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~182_q\);

-- Location: LCCOMB_X23_Y14_N16
\mem~272\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~272_combout\ = (\address[3]~input_o\ & (\address[2]~input_o\)) # (!\address[3]~input_o\ & ((\address[2]~input_o\ & ((!\mem~182_q\))) # (!\address[2]~input_o\ & (!\mem~150_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \address[2]~input_o\,
	datac => \mem~150_q\,
	datad => \mem~182_q\,
	combout => \mem~272_combout\);

-- Location: LCCOMB_X23_Y14_N2
\mem~273\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~273_combout\ = (\address[3]~input_o\ & ((\mem~272_combout\ & ((!\mem~246_q\))) # (!\mem~272_combout\ & (!\mem~214_q\)))) # (!\address[3]~input_o\ & (((\mem~272_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~214_q\,
	datab => \address[3]~input_o\,
	datac => \mem~246_q\,
	datad => \mem~272_combout\,
	combout => \mem~273_combout\);

-- Location: LCCOMB_X24_Y15_N4
\mem~276\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~276_combout\ = (\address[0]~input_o\ & ((\address[1]~input_o\) # ((\mem~273_combout\)))) # (!\address[0]~input_o\ & (!\address[1]~input_o\ & (\mem~275_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \mem~275_combout\,
	datad => \mem~273_combout\,
	combout => \mem~276_combout\);

-- Location: LCCOMB_X26_Y18_N16
\mem~436\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~436_combout\ = (\address[2]~input_o\ & (\address[3]~input_o\ & (!\address[0]~input_o\ & \address[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[3]~input_o\,
	datac => \address[0]~input_o\,
	datad => \address[1]~input_o\,
	combout => \mem~436_combout\);

-- Location: LCCOMB_X25_Y17_N14
\mem~437\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~437_combout\ = (!\data_out~1_combout\ & (\address[4]~input_o\ & (\we~input_o\ & \mem~436_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out~1_combout\,
	datab => \address[4]~input_o\,
	datac => \we~input_o\,
	datad => \mem~436_combout\,
	combout => \mem~437_combout\);

-- Location: FF_X21_Y14_N23
\mem~254\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[0]~input_o\,
	sload => VCC,
	ena => \mem~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~254_q\);

-- Location: LCCOMB_X24_Y14_N16
\mem~478\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~478_combout\ = !\data_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[0]~input_o\,
	combout => \mem~478_combout\);

-- Location: LCCOMB_X22_Y18_N28
\mem~430\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~430_combout\ = (!\address[3]~input_o\ & (!\address[0]~input_o\ & (\address[2]~input_o\ & \address[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \address[0]~input_o\,
	datac => \address[2]~input_o\,
	datad => \address[1]~input_o\,
	combout => \mem~430_combout\);

-- Location: LCCOMB_X22_Y18_N14
\mem~431\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~431_combout\ = (\we~input_o\ & (\mem~430_combout\ & (\address[4]~input_o\ & !\data_out~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \we~input_o\,
	datab => \mem~430_combout\,
	datac => \address[4]~input_o\,
	datad => \data_out~1_combout\,
	combout => \mem~431_combout\);

-- Location: FF_X24_Y14_N1
\mem~190\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~478_combout\,
	sload => VCC,
	ena => \mem~431_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~190_q\);

-- Location: LCCOMB_X21_Y14_N22
\mem~480\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~480_combout\ = !\data_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[0]~input_o\,
	combout => \mem~480_combout\);

-- Location: LCCOMB_X22_Y18_N4
\mem~434\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~434_combout\ = (!\address[3]~input_o\ & (!\address[0]~input_o\ & (!\address[2]~input_o\ & \address[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \address[0]~input_o\,
	datac => \address[2]~input_o\,
	datad => \address[1]~input_o\,
	combout => \mem~434_combout\);

-- Location: LCCOMB_X22_Y18_N26
\mem~435\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~435_combout\ = (\address[4]~input_o\ & (!\data_out~1_combout\ & (\mem~434_combout\ & \we~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[4]~input_o\,
	datab => \data_out~1_combout\,
	datac => \mem~434_combout\,
	datad => \we~input_o\,
	combout => \mem~435_combout\);

-- Location: FF_X21_Y14_N17
\mem~158\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~480_combout\,
	sload => VCC,
	ena => \mem~435_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~158_q\);

-- Location: LCCOMB_X22_Y14_N4
\mem~479\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~479_combout\ = !\data_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[0]~input_o\,
	combout => \mem~479_combout\);

-- Location: LCCOMB_X22_Y18_N20
\mem~432\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~432_combout\ = (\address[3]~input_o\ & (!\address[0]~input_o\ & (!\address[2]~input_o\ & \address[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \address[0]~input_o\,
	datac => \address[2]~input_o\,
	datad => \address[1]~input_o\,
	combout => \mem~432_combout\);

-- Location: LCCOMB_X22_Y18_N30
\mem~433\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~433_combout\ = (\we~input_o\ & (\mem~432_combout\ & (\address[4]~input_o\ & !\data_out~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \we~input_o\,
	datab => \mem~432_combout\,
	datac => \address[4]~input_o\,
	datad => \data_out~1_combout\,
	combout => \mem~433_combout\);

-- Location: FF_X22_Y14_N5
\mem~222\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~479_combout\,
	ena => \mem~433_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~222_q\);

-- Location: LCCOMB_X21_Y14_N16
\mem~270\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~270_combout\ = (\address[2]~input_o\ & (\address[3]~input_o\)) # (!\address[2]~input_o\ & ((\address[3]~input_o\ & ((!\mem~222_q\))) # (!\address[3]~input_o\ & (!\mem~158_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[3]~input_o\,
	datac => \mem~158_q\,
	datad => \mem~222_q\,
	combout => \mem~270_combout\);

-- Location: LCCOMB_X24_Y14_N0
\mem~271\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~271_combout\ = (\address[2]~input_o\ & ((\mem~270_combout\ & (\mem~254_q\)) # (!\mem~270_combout\ & ((!\mem~190_q\))))) # (!\address[2]~input_o\ & (((\mem~270_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \mem~254_q\,
	datac => \mem~190_q\,
	datad => \mem~270_combout\,
	combout => \mem~271_combout\);

-- Location: LCCOMB_X24_Y15_N26
\mem~279\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~279_combout\ = (\address[1]~input_o\ & ((\mem~276_combout\ & (\mem~278_combout\)) # (!\mem~276_combout\ & ((\mem~271_combout\))))) # (!\address[1]~input_o\ & (((\mem~276_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~278_combout\,
	datab => \address[1]~input_o\,
	datac => \mem~276_combout\,
	datad => \mem~271_combout\,
	combout => \mem~279_combout\);

-- Location: LCCOMB_X22_Y17_N30
\mem~495\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~495_combout\ = !\data_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[0]~input_o\,
	combout => \mem~495_combout\);

-- Location: LCCOMB_X25_Y17_N28
\mem~465\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~465_combout\ = (!\data_out~1_combout\ & (!\address[4]~input_o\ & (\we~input_o\ & \mem~454_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out~1_combout\,
	datab => \address[4]~input_o\,
	datac => \we~input_o\,
	datad => \mem~454_combout\,
	combout => \mem~465_combout\);

-- Location: FF_X22_Y17_N31
\mem~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~495_combout\,
	ena => \mem~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~102_q\);

-- Location: LCCOMB_X23_Y17_N14
\mem~492\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~492_combout\ = !\data_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[0]~input_o\,
	combout => \mem~492_combout\);

-- Location: LCCOMB_X22_Y18_N8
\mem~462\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~462_combout\ = (\we~input_o\ & (\mem~432_combout\ & (!\address[4]~input_o\ & !\data_out~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \we~input_o\,
	datab => \mem~432_combout\,
	datac => \address[4]~input_o\,
	datad => \data_out~1_combout\,
	combout => \mem~462_combout\);

-- Location: FF_X23_Y17_N29
\mem~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~492_combout\,
	sload => VCC,
	ena => \mem~462_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~94_q\);

-- Location: LCCOMB_X22_Y17_N6
\mem~494\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~494_combout\ = !\data_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[0]~input_o\,
	combout => \mem~494_combout\);

-- Location: LCCOMB_X22_Y15_N0
\mem~464\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~464_combout\ = (!\data_out~1_combout\ & (!\address[4]~input_o\ & (\mem~448_combout\ & \we~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out~1_combout\,
	datab => \address[4]~input_o\,
	datac => \mem~448_combout\,
	datad => \we~input_o\,
	combout => \mem~464_combout\);

-- Location: FF_X22_Y17_N25
\mem~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~494_combout\,
	sload => VCC,
	ena => \mem~464_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~78_q\);

-- Location: LCCOMB_X21_Y17_N24
\mem~493\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~493_combout\ = !\data_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[0]~input_o\,
	combout => \mem~493_combout\);

-- Location: LCCOMB_X22_Y15_N2
\mem~463\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~463_combout\ = (!\data_out~1_combout\ & (!\address[4]~input_o\ & (\mem~438_combout\ & \we~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out~1_combout\,
	datab => \address[4]~input_o\,
	datac => \mem~438_combout\,
	datad => \we~input_o\,
	combout => \mem~463_combout\);

-- Location: FF_X21_Y17_N25
\mem~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~493_combout\,
	ena => \mem~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~86_q\);

-- Location: LCCOMB_X22_Y17_N24
\mem~280\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~280_combout\ = (\address[1]~input_o\ & (\address[0]~input_o\)) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & ((!\mem~86_q\))) # (!\address[0]~input_o\ & (!\mem~78_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => \mem~78_q\,
	datad => \mem~86_q\,
	combout => \mem~280_combout\);

-- Location: LCCOMB_X23_Y17_N28
\mem~281\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~281_combout\ = (\address[1]~input_o\ & ((\mem~280_combout\ & (!\mem~102_q\)) # (!\mem~280_combout\ & ((!\mem~94_q\))))) # (!\address[1]~input_o\ & (((\mem~280_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \mem~102_q\,
	datac => \mem~94_q\,
	datad => \mem~280_combout\,
	combout => \mem~281_combout\);

-- Location: LCCOMB_X26_Y18_N6
\mem~498\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~498_combout\ = !\data_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[0]~input_o\,
	combout => \mem~498_combout\);

-- Location: LCCOMB_X22_Y15_N30
\mem~474\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~474_combout\ = (!\data_out~1_combout\ & (!\address[4]~input_o\ & (\mem~444_combout\ & \we~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out~1_combout\,
	datab => \address[4]~input_o\,
	datac => \mem~444_combout\,
	datad => \we~input_o\,
	combout => \mem~474_combout\);

-- Location: FF_X26_Y18_N7
\mem~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~498_combout\,
	ena => \mem~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~118_q\);

-- Location: LCCOMB_X26_Y17_N10
\mem~501\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~501_combout\ = !\data_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[0]~input_o\,
	combout => \mem~501_combout\);

-- Location: LCCOMB_X25_Y17_N16
\mem~477\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~477_combout\ = (!\data_out~1_combout\ & (!\address[4]~input_o\ & (\we~input_o\ & \mem~460_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out~1_combout\,
	datab => \address[4]~input_o\,
	datac => \we~input_o\,
	datad => \mem~460_combout\,
	combout => \mem~477_combout\);

-- Location: FF_X26_Y17_N11
\mem~134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~501_combout\,
	ena => \mem~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~134_q\);

-- Location: LCCOMB_X27_Y17_N0
\mem~499\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~499_combout\ = !\data_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[0]~input_o\,
	combout => \mem~499_combout\);

-- Location: LCCOMB_X25_Y17_N8
\mem~475\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~475_combout\ = (!\data_out~1_combout\ & (!\address[4]~input_o\ & (\we~input_o\ & \mem~436_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out~1_combout\,
	datab => \address[4]~input_o\,
	datac => \we~input_o\,
	datad => \mem~436_combout\,
	combout => \mem~475_combout\);

-- Location: FF_X27_Y17_N1
\mem~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~499_combout\,
	ena => \mem~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~126_q\);

-- Location: LCCOMB_X26_Y17_N8
\mem~500\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~500_combout\ = !\data_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[0]~input_o\,
	combout => \mem~500_combout\);

-- Location: LCCOMB_X25_Y17_N18
\mem~476\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~476_combout\ = (!\data_out~1_combout\ & (!\address[4]~input_o\ & (\we~input_o\ & \mem~452_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out~1_combout\,
	datab => \address[4]~input_o\,
	datac => \we~input_o\,
	datad => \mem~452_combout\,
	combout => \mem~476_combout\);

-- Location: FF_X26_Y17_N25
\mem~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~500_combout\,
	sload => VCC,
	ena => \mem~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~110_q\);

-- Location: LCCOMB_X26_Y17_N24
\mem~287\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~287_combout\ = (\address[1]~input_o\ & (((\address[0]~input_o\)) # (!\mem~126_q\))) # (!\address[1]~input_o\ & (((!\mem~110_q\ & !\address[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \mem~126_q\,
	datac => \mem~110_q\,
	datad => \address[0]~input_o\,
	combout => \mem~287_combout\);

-- Location: LCCOMB_X25_Y17_N4
\mem~288\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~288_combout\ = (\address[0]~input_o\ & ((\mem~287_combout\ & ((!\mem~134_q\))) # (!\mem~287_combout\ & (!\mem~118_q\)))) # (!\address[0]~input_o\ & (((\mem~287_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \mem~118_q\,
	datac => \mem~134_q\,
	datad => \mem~287_combout\,
	combout => \mem~288_combout\);

-- Location: LCCOMB_X22_Y16_N16
\mem~54feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~54feeder_combout\ = \data_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[0]~input_o\,
	combout => \mem~54feeder_combout\);

-- Location: LCCOMB_X22_Y15_N18
\mem~466\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~466_combout\ = (\mem~440_combout\ & (\we~input_o\ & (!\address[4]~input_o\ & !\data_out~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~440_combout\,
	datab => \we~input_o\,
	datac => \address[4]~input_o\,
	datad => \data_out~1_combout\,
	combout => \mem~466_combout\);

-- Location: FF_X22_Y16_N17
\mem~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~54feeder_combout\,
	ena => \mem~466_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~54_q\);

-- Location: LCCOMB_X23_Y16_N0
\mem~497\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~497_combout\ = !\data_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[0]~input_o\,
	combout => \mem~497_combout\);

-- Location: LCCOMB_X25_Y17_N30
\mem~469\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~469_combout\ = (!\data_out~1_combout\ & (!\address[4]~input_o\ & (\we~input_o\ & \mem~456_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out~1_combout\,
	datab => \address[4]~input_o\,
	datac => \we~input_o\,
	datad => \mem~456_combout\,
	combout => \mem~469_combout\);

-- Location: FF_X23_Y16_N23
\mem~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~497_combout\,
	sload => VCC,
	ena => \mem~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~70_q\);

-- Location: LCCOMB_X24_Y17_N30
\mem~468\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~468_combout\ = (\we~input_o\ & (!\data_out~1_combout\ & (!\address[4]~input_o\ & \mem~446_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \we~input_o\,
	datab => \data_out~1_combout\,
	datac => \address[4]~input_o\,
	datad => \mem~446_combout\,
	combout => \mem~468_combout\);

-- Location: FF_X23_Y16_N13
\mem~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[0]~input_o\,
	sload => VCC,
	ena => \mem~468_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~46_q\);

-- Location: LCCOMB_X23_Y15_N16
\mem~496\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~496_combout\ = !\data_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[0]~input_o\,
	combout => \mem~496_combout\);

-- Location: LCCOMB_X22_Y18_N6
\mem~467\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~467_combout\ = (\we~input_o\ & (\mem~430_combout\ & (!\address[4]~input_o\ & !\data_out~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \we~input_o\,
	datab => \mem~430_combout\,
	datac => \address[4]~input_o\,
	datad => \data_out~1_combout\,
	combout => \mem~467_combout\);

-- Location: FF_X23_Y15_N17
\mem~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~496_combout\,
	ena => \mem~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~62_q\);

-- Location: LCCOMB_X23_Y16_N12
\mem~282\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~282_combout\ = (\address[1]~input_o\ & ((\address[0]~input_o\) # ((!\mem~62_q\)))) # (!\address[1]~input_o\ & (!\address[0]~input_o\ & (\mem~46_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => \mem~46_q\,
	datad => \mem~62_q\,
	combout => \mem~282_combout\);

-- Location: LCCOMB_X23_Y16_N22
\mem~283\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~283_combout\ = (\address[0]~input_o\ & ((\mem~282_combout\ & ((!\mem~70_q\))) # (!\mem~282_combout\ & (\mem~54_q\)))) # (!\address[0]~input_o\ & (((\mem~282_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~54_q\,
	datab => \address[0]~input_o\,
	datac => \mem~70_q\,
	datad => \mem~282_combout\,
	combout => \mem~283_combout\);

-- Location: LCCOMB_X25_Y16_N20
\mem~22feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~22feeder_combout\ = \data_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[0]~input_o\,
	combout => \mem~22feeder_combout\);

-- Location: LCCOMB_X24_Y15_N6
\mem~470\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~470_combout\ = (\mem~442_combout\ & (!\data_out~1_combout\ & (!\address[4]~input_o\ & \we~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~442_combout\,
	datab => \data_out~1_combout\,
	datac => \address[4]~input_o\,
	datad => \we~input_o\,
	combout => \mem~470_combout\);

-- Location: FF_X25_Y16_N21
\mem~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~22feeder_combout\,
	ena => \mem~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~22_q\);

-- Location: LCCOMB_X22_Y18_N10
\mem~473\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~473_combout\ = (\we~input_o\ & (\mem~458_combout\ & (!\address[4]~input_o\ & !\data_out~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \we~input_o\,
	datab => \mem~458_combout\,
	datac => \address[4]~input_o\,
	datad => \data_out~1_combout\,
	combout => \mem~473_combout\);

-- Location: FF_X24_Y15_N13
\mem~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[0]~input_o\,
	sload => VCC,
	ena => \mem~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~38_q\);

-- Location: LCCOMB_X22_Y15_N8
\mem~472\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~472_combout\ = (!\data_out~1_combout\ & (!\address[4]~input_o\ & (\mem~450_combout\ & \we~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out~1_combout\,
	datab => \address[4]~input_o\,
	datac => \mem~450_combout\,
	datad => \we~input_o\,
	combout => \mem~472_combout\);

-- Location: FF_X24_Y16_N29
\mem~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[0]~input_o\,
	sload => VCC,
	ena => \mem~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~14_q\);

-- Location: LCCOMB_X23_Y18_N8
\mem~30feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~30feeder_combout\ = \data_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[0]~input_o\,
	combout => \mem~30feeder_combout\);

-- Location: LCCOMB_X22_Y18_N16
\mem~471\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~471_combout\ = (!\address[4]~input_o\ & (!\data_out~1_combout\ & (\mem~434_combout\ & \we~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[4]~input_o\,
	datab => \data_out~1_combout\,
	datac => \mem~434_combout\,
	datad => \we~input_o\,
	combout => \mem~471_combout\);

-- Location: FF_X23_Y18_N9
\mem~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~30feeder_combout\,
	ena => \mem~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~30_q\);

-- Location: LCCOMB_X24_Y16_N28
\mem~284\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~284_combout\ = (\address[1]~input_o\ & ((\address[0]~input_o\) # ((\mem~30_q\)))) # (!\address[1]~input_o\ & (!\address[0]~input_o\ & (\mem~14_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => \mem~14_q\,
	datad => \mem~30_q\,
	combout => \mem~284_combout\);

-- Location: LCCOMB_X24_Y15_N12
\mem~285\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~285_combout\ = (\address[0]~input_o\ & ((\mem~284_combout\ & ((\mem~38_q\))) # (!\mem~284_combout\ & (\mem~22_q\)))) # (!\address[0]~input_o\ & (((\mem~284_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~22_q\,
	datab => \address[0]~input_o\,
	datac => \mem~38_q\,
	datad => \mem~284_combout\,
	combout => \mem~285_combout\);

-- Location: LCCOMB_X24_Y15_N2
\mem~286\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~286_combout\ = (\address[2]~input_o\ & ((\address[3]~input_o\) # ((\mem~283_combout\)))) # (!\address[2]~input_o\ & (!\address[3]~input_o\ & ((\mem~285_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[3]~input_o\,
	datac => \mem~283_combout\,
	datad => \mem~285_combout\,
	combout => \mem~286_combout\);

-- Location: LCCOMB_X24_Y15_N20
\mem~289\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~289_combout\ = (\address[3]~input_o\ & ((\mem~286_combout\ & ((\mem~288_combout\))) # (!\mem~286_combout\ & (\mem~281_combout\)))) # (!\address[3]~input_o\ & (((\mem~286_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~281_combout\,
	datab => \address[3]~input_o\,
	datac => \mem~288_combout\,
	datad => \mem~286_combout\,
	combout => \mem~289_combout\);

-- Location: LCCOMB_X24_Y15_N24
\data_out~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_out~2_combout\ = (\data_out~1_combout\) # ((\address[4]~input_o\ & (\mem~279_combout\)) # (!\address[4]~input_o\ & ((\mem~289_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[4]~input_o\,
	datab => \data_out~1_combout\,
	datac => \mem~279_combout\,
	datad => \mem~289_combout\,
	combout => \data_out~2_combout\);

-- Location: FF_X24_Y15_N25
\data_out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[0]~reg0_q\);

-- Location: IOIBUF_X20_Y31_N8
\data_in[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(1),
	o => \data_in[1]~input_o\);

-- Location: LCCOMB_X22_Y15_N6
\mem~505\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~505_combout\ = !\data_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[1]~input_o\,
	combout => \mem~505_combout\);

-- Location: FF_X22_Y15_N7
\mem~247\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~505_combout\,
	ena => \mem~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~247_q\);

-- Location: LCCOMB_X22_Y15_N12
\mem~502\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~502_combout\ = !\data_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[1]~input_o\,
	combout => \mem~502_combout\);

-- Location: FF_X22_Y15_N13
\mem~183\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~502_combout\,
	ena => \mem~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~183_q\);

-- Location: LCCOMB_X21_Y15_N26
\mem~504\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~504_combout\ = !\data_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[1]~input_o\,
	combout => \mem~504_combout\);

-- Location: FF_X21_Y15_N27
\mem~151\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~504_combout\,
	ena => \mem~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~151_q\);

-- Location: LCCOMB_X21_Y15_N20
\mem~503\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~503_combout\ = !\data_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[1]~input_o\,
	combout => \mem~503_combout\);

-- Location: FF_X21_Y15_N21
\mem~215\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~503_combout\,
	ena => \mem~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~215_q\);

-- Location: LCCOMB_X21_Y15_N0
\mem~290\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~290_combout\ = (\address[3]~input_o\ & ((\address[2]~input_o\) # ((!\mem~215_q\)))) # (!\address[3]~input_o\ & (!\address[2]~input_o\ & (!\mem~151_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \address[2]~input_o\,
	datac => \mem~151_q\,
	datad => \mem~215_q\,
	combout => \mem~290_combout\);

-- Location: LCCOMB_X21_Y15_N10
\mem~291\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~291_combout\ = (\address[2]~input_o\ & ((\mem~290_combout\ & (!\mem~247_q\)) # (!\mem~290_combout\ & ((!\mem~183_q\))))) # (!\address[2]~input_o\ & (((\mem~290_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~247_q\,
	datab => \address[2]~input_o\,
	datac => \mem~183_q\,
	datad => \mem~290_combout\,
	combout => \mem~291_combout\);

-- Location: LCCOMB_X22_Y14_N20
\mem~506\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~506_combout\ = !\data_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[1]~input_o\,
	combout => \mem~506_combout\);

-- Location: FF_X22_Y14_N21
\mem~223\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~506_combout\,
	ena => \mem~433_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~223_q\);

-- Location: FF_X21_Y14_N19
\mem~255\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[1]~input_o\,
	sload => VCC,
	ena => \mem~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~255_q\);

-- Location: LCCOMB_X21_Y14_N30
\mem~508\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~508_combout\ = !\data_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[1]~input_o\,
	combout => \mem~508_combout\);

-- Location: FF_X21_Y14_N1
\mem~159\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~508_combout\,
	sload => VCC,
	ena => \mem~435_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~159_q\);

-- Location: LCCOMB_X20_Y14_N24
\mem~507\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~507_combout\ = !\data_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[1]~input_o\,
	combout => \mem~507_combout\);

-- Location: FF_X20_Y14_N25
\mem~191\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~507_combout\,
	ena => \mem~431_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~191_q\);

-- Location: LCCOMB_X21_Y14_N0
\mem~292\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~292_combout\ = (\address[2]~input_o\ & ((\address[3]~input_o\) # ((!\mem~191_q\)))) # (!\address[2]~input_o\ & (!\address[3]~input_o\ & (!\mem~159_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[3]~input_o\,
	datac => \mem~159_q\,
	datad => \mem~191_q\,
	combout => \mem~292_combout\);

-- Location: LCCOMB_X21_Y14_N18
\mem~293\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~293_combout\ = (\address[3]~input_o\ & ((\mem~292_combout\ & ((\mem~255_q\))) # (!\mem~292_combout\ & (!\mem~223_q\)))) # (!\address[3]~input_o\ & (((\mem~292_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~223_q\,
	datab => \address[3]~input_o\,
	datac => \mem~255_q\,
	datad => \mem~292_combout\,
	combout => \mem~293_combout\);

-- Location: LCCOMB_X26_Y15_N24
\mem~509\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~509_combout\ = !\data_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[1]~input_o\,
	combout => \mem~509_combout\);

-- Location: FF_X26_Y15_N25
\mem~207\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~509_combout\,
	ena => \mem~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~207_q\);

-- Location: LCCOMB_X26_Y18_N8
\mem~512\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~512_combout\ = !\data_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[1]~input_o\,
	combout => \mem~512_combout\);

-- Location: FF_X25_Y15_N3
\mem~239\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~512_combout\,
	sload => VCC,
	ena => \mem~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~239_q\);

-- Location: LCCOMB_X26_Y18_N14
\mem~511\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~511_combout\ = !\data_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[1]~input_o\,
	combout => \mem~511_combout\);

-- Location: FF_X25_Y15_N1
\mem~143\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~511_combout\,
	sload => VCC,
	ena => \mem~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~143_q\);

-- Location: LCCOMB_X27_Y15_N0
\mem~510\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~510_combout\ = !\data_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[1]~input_o\,
	combout => \mem~510_combout\);

-- Location: FF_X26_Y15_N3
\mem~175\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~510_combout\,
	sload => VCC,
	ena => \mem~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~175_q\);

-- Location: LCCOMB_X25_Y15_N0
\mem~294\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~294_combout\ = (\address[3]~input_o\ & (\address[2]~input_o\)) # (!\address[3]~input_o\ & ((\address[2]~input_o\ & ((!\mem~175_q\))) # (!\address[2]~input_o\ & (!\mem~143_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \address[2]~input_o\,
	datac => \mem~143_q\,
	datad => \mem~175_q\,
	combout => \mem~294_combout\);

-- Location: LCCOMB_X25_Y15_N2
\mem~295\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~295_combout\ = (\address[3]~input_o\ & ((\mem~294_combout\ & ((!\mem~239_q\))) # (!\mem~294_combout\ & (!\mem~207_q\)))) # (!\address[3]~input_o\ & (((\mem~294_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \mem~207_q\,
	datac => \mem~239_q\,
	datad => \mem~294_combout\,
	combout => \mem~295_combout\);

-- Location: LCCOMB_X25_Y14_N14
\mem~296\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~296_combout\ = (\address[1]~input_o\ & ((\address[0]~input_o\) # ((\mem~293_combout\)))) # (!\address[1]~input_o\ & (!\address[0]~input_o\ & ((\mem~295_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => \mem~293_combout\,
	datad => \mem~295_combout\,
	combout => \mem~296_combout\);

-- Location: LCCOMB_X24_Y18_N30
\mem~513\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~513_combout\ = !\data_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[1]~input_o\,
	combout => \mem~513_combout\);

-- Location: FF_X24_Y18_N31
\mem~199\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~513_combout\,
	ena => \mem~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~199_q\);

-- Location: FF_X25_Y18_N7
\mem~263\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[1]~input_o\,
	sload => VCC,
	ena => \mem~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~263_q\);

-- Location: LCCOMB_X25_Y18_N4
\mem~515\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~515_combout\ = !\data_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[1]~input_o\,
	combout => \mem~515_combout\);

-- Location: FF_X25_Y18_N1
\mem~167\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~515_combout\,
	sload => VCC,
	ena => \mem~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~167_q\);

-- Location: LCCOMB_X26_Y18_N28
\mem~514\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~514_combout\ = !\data_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[1]~input_o\,
	combout => \mem~514_combout\);

-- Location: FF_X26_Y18_N29
\mem~231\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~514_combout\,
	ena => \mem~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~231_q\);

-- Location: LCCOMB_X25_Y18_N0
\mem~297\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~297_combout\ = (\address[2]~input_o\ & (\address[3]~input_o\)) # (!\address[2]~input_o\ & ((\address[3]~input_o\ & ((!\mem~231_q\))) # (!\address[3]~input_o\ & (!\mem~167_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[3]~input_o\,
	datac => \mem~167_q\,
	datad => \mem~231_q\,
	combout => \mem~297_combout\);

-- Location: LCCOMB_X25_Y18_N6
\mem~298\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~298_combout\ = (\address[2]~input_o\ & ((\mem~297_combout\ & ((\mem~263_q\))) # (!\mem~297_combout\ & (!\mem~199_q\)))) # (!\address[2]~input_o\ & (((\mem~297_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \mem~199_q\,
	datac => \mem~263_q\,
	datad => \mem~297_combout\,
	combout => \mem~298_combout\);

-- Location: LCCOMB_X25_Y14_N8
\mem~299\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~299_combout\ = (\address[0]~input_o\ & ((\mem~296_combout\ & ((\mem~298_combout\))) # (!\mem~296_combout\ & (\mem~291_combout\)))) # (!\address[0]~input_o\ & (((\mem~296_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~291_combout\,
	datab => \address[0]~input_o\,
	datac => \mem~296_combout\,
	datad => \mem~298_combout\,
	combout => \mem~299_combout\);

-- Location: LCCOMB_X27_Y17_N10
\mem~522\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~522_combout\ = !\data_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[1]~input_o\,
	combout => \mem~522_combout\);

-- Location: FF_X27_Y17_N11
\mem~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~522_combout\,
	ena => \mem~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~127_q\);

-- Location: LCCOMB_X27_Y17_N14
\mem~525\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~525_combout\ = !\data_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[1]~input_o\,
	combout => \mem~525_combout\);

-- Location: FF_X26_Y17_N19
\mem~135\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~525_combout\,
	sload => VCC,
	ena => \mem~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~135_q\);

-- Location: LCCOMB_X27_Y17_N8
\mem~523\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~523_combout\ = !\data_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[1]~input_o\,
	combout => \mem~523_combout\);

-- Location: FF_X27_Y17_N9
\mem~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~523_combout\,
	ena => \mem~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~119_q\);

-- Location: LCCOMB_X22_Y17_N4
\mem~524\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~524_combout\ = !\data_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[1]~input_o\,
	combout => \mem~524_combout\);

-- Location: FF_X26_Y17_N1
\mem~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~524_combout\,
	sload => VCC,
	ena => \mem~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~111_q\);

-- Location: LCCOMB_X26_Y17_N0
\mem~307\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~307_combout\ = (\address[0]~input_o\ & (((\address[1]~input_o\)) # (!\mem~119_q\))) # (!\address[0]~input_o\ & (((!\mem~111_q\ & !\address[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \mem~119_q\,
	datac => \mem~111_q\,
	datad => \address[1]~input_o\,
	combout => \mem~307_combout\);

-- Location: LCCOMB_X26_Y17_N18
\mem~308\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~308_combout\ = (\address[1]~input_o\ & ((\mem~307_combout\ & ((!\mem~135_q\))) # (!\mem~307_combout\ & (!\mem~127_q\)))) # (!\address[1]~input_o\ & (((\mem~307_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \mem~127_q\,
	datac => \mem~135_q\,
	datad => \mem~307_combout\,
	combout => \mem~308_combout\);

-- Location: LCCOMB_X23_Y16_N10
\mem~517\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~517_combout\ = !\data_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[1]~input_o\,
	combout => \mem~517_combout\);

-- Location: FF_X23_Y16_N11
\mem~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~517_combout\,
	ena => \mem~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~71_q\);

-- Location: LCCOMB_X23_Y17_N22
\mem~516\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~516_combout\ = !\data_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[1]~input_o\,
	combout => \mem~516_combout\);

-- Location: FF_X23_Y17_N23
\mem~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~516_combout\,
	ena => \mem~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~63_q\);

-- Location: FF_X23_Y16_N9
\mem~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[1]~input_o\,
	sload => VCC,
	ena => \mem~468_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~47_q\);

-- Location: FF_X22_Y16_N3
\mem~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[1]~input_o\,
	sload => VCC,
	ena => \mem~466_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~55_q\);

-- Location: LCCOMB_X23_Y16_N8
\mem~300\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~300_combout\ = (\address[1]~input_o\ & (\address[0]~input_o\)) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & ((\mem~55_q\))) # (!\address[0]~input_o\ & (\mem~47_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => \mem~47_q\,
	datad => \mem~55_q\,
	combout => \mem~300_combout\);

-- Location: LCCOMB_X24_Y16_N26
\mem~301\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~301_combout\ = (\address[1]~input_o\ & ((\mem~300_combout\ & (!\mem~71_q\)) # (!\mem~300_combout\ & ((!\mem~63_q\))))) # (!\address[1]~input_o\ & (((\mem~300_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~71_q\,
	datab => \address[1]~input_o\,
	datac => \mem~63_q\,
	datad => \mem~300_combout\,
	combout => \mem~301_combout\);

-- Location: LCCOMB_X21_Y17_N2
\mem~518\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~518_combout\ = !\data_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[1]~input_o\,
	combout => \mem~518_combout\);

-- Location: FF_X21_Y17_N3
\mem~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~518_combout\,
	ena => \mem~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~87_q\);

-- Location: LCCOMB_X22_Y17_N22
\mem~521\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~521_combout\ = !\data_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[1]~input_o\,
	combout => \mem~521_combout\);

-- Location: FF_X22_Y17_N27
\mem~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~521_combout\,
	sload => VCC,
	ena => \mem~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~103_q\);

-- Location: LCCOMB_X26_Y18_N30
\mem~520\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~520_combout\ = !\data_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[1]~input_o\,
	combout => \mem~520_combout\);

-- Location: FF_X22_Y17_N1
\mem~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~520_combout\,
	sload => VCC,
	ena => \mem~464_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~79_q\);

-- Location: LCCOMB_X23_Y17_N24
\mem~519\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~519_combout\ = !\data_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[1]~input_o\,
	combout => \mem~519_combout\);

-- Location: FF_X23_Y17_N25
\mem~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~519_combout\,
	ena => \mem~462_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~95_q\);

-- Location: LCCOMB_X22_Y17_N0
\mem~302\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~302_combout\ = (\address[1]~input_o\ & ((\address[0]~input_o\) # ((!\mem~95_q\)))) # (!\address[1]~input_o\ & (!\address[0]~input_o\ & (!\mem~79_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => \mem~79_q\,
	datad => \mem~95_q\,
	combout => \mem~302_combout\);

-- Location: LCCOMB_X22_Y17_N26
\mem~303\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~303_combout\ = (\address[0]~input_o\ & ((\mem~302_combout\ & ((!\mem~103_q\))) # (!\mem~302_combout\ & (!\mem~87_q\)))) # (!\address[0]~input_o\ & (((\mem~302_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~87_q\,
	datab => \address[0]~input_o\,
	datac => \mem~103_q\,
	datad => \mem~302_combout\,
	combout => \mem~303_combout\);

-- Location: LCCOMB_X25_Y16_N30
\mem~23feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~23feeder_combout\ = \data_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[1]~input_o\,
	combout => \mem~23feeder_combout\);

-- Location: FF_X25_Y16_N31
\mem~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~23feeder_combout\,
	ena => \mem~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~23_q\);

-- Location: FF_X24_Y16_N5
\mem~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[1]~input_o\,
	sload => VCC,
	ena => \mem~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~39_q\);

-- Location: FF_X23_Y18_N13
\mem~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[1]~input_o\,
	sload => VCC,
	ena => \mem~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~15_q\);

-- Location: FF_X23_Y18_N11
\mem~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[1]~input_o\,
	sload => VCC,
	ena => \mem~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~31_q\);

-- Location: LCCOMB_X23_Y18_N12
\mem~304\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~304_combout\ = (\address[0]~input_o\ & (\address[1]~input_o\)) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & ((\mem~31_q\))) # (!\address[1]~input_o\ & (\mem~15_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \mem~15_q\,
	datad => \mem~31_q\,
	combout => \mem~304_combout\);

-- Location: LCCOMB_X24_Y16_N4
\mem~305\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~305_combout\ = (\address[0]~input_o\ & ((\mem~304_combout\ & ((\mem~39_q\))) # (!\mem~304_combout\ & (\mem~23_q\)))) # (!\address[0]~input_o\ & (((\mem~304_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~23_q\,
	datab => \address[0]~input_o\,
	datac => \mem~39_q\,
	datad => \mem~304_combout\,
	combout => \mem~305_combout\);

-- Location: LCCOMB_X25_Y14_N10
\mem~306\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~306_combout\ = (\address[2]~input_o\ & (\address[3]~input_o\)) # (!\address[2]~input_o\ & ((\address[3]~input_o\ & (\mem~303_combout\)) # (!\address[3]~input_o\ & ((\mem~305_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[3]~input_o\,
	datac => \mem~303_combout\,
	datad => \mem~305_combout\,
	combout => \mem~306_combout\);

-- Location: LCCOMB_X25_Y14_N24
\mem~309\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~309_combout\ = (\address[2]~input_o\ & ((\mem~306_combout\ & (\mem~308_combout\)) # (!\mem~306_combout\ & ((\mem~301_combout\))))) # (!\address[2]~input_o\ & (((\mem~306_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \mem~308_combout\,
	datac => \mem~301_combout\,
	datad => \mem~306_combout\,
	combout => \mem~309_combout\);

-- Location: LCCOMB_X25_Y14_N16
\data_out~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_out~3_combout\ = (\data_out~1_combout\) # ((\address[4]~input_o\ & (\mem~299_combout\)) # (!\address[4]~input_o\ & ((\mem~309_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out~1_combout\,
	datab => \address[4]~input_o\,
	datac => \mem~299_combout\,
	datad => \mem~309_combout\,
	combout => \data_out~3_combout\);

-- Location: FF_X25_Y14_N17
\data_out[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data_out~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[1]~reg0_q\);

-- Location: IOIBUF_X33_Y12_N1
\data_in[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(2),
	o => \data_in[2]~input_o\);

-- Location: LCCOMB_X21_Y17_N6
\mem~543\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~543_combout\ = !\data_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[2]~input_o\,
	combout => \mem~543_combout\);

-- Location: FF_X22_Y17_N15
\mem~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~543_combout\,
	sload => VCC,
	ena => \mem~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~104_q\);

-- Location: LCCOMB_X23_Y17_N8
\mem~540\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~540_combout\ = !\data_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[2]~input_o\,
	combout => \mem~540_combout\);

-- Location: FF_X23_Y17_N31
\mem~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~540_combout\,
	sload => VCC,
	ena => \mem~462_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~96_q\);

-- Location: LCCOMB_X21_Y17_N4
\mem~542\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~542_combout\ = !\data_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[2]~input_o\,
	combout => \mem~542_combout\);

-- Location: FF_X22_Y17_N29
\mem~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~542_combout\,
	sload => VCC,
	ena => \mem~464_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~80_q\);

-- Location: LCCOMB_X21_Y17_N12
\mem~541\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~541_combout\ = !\data_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[2]~input_o\,
	combout => \mem~541_combout\);

-- Location: FF_X21_Y17_N13
\mem~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~541_combout\,
	ena => \mem~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~88_q\);

-- Location: LCCOMB_X22_Y17_N28
\mem~320\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~320_combout\ = (\address[1]~input_o\ & (\address[0]~input_o\)) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & ((!\mem~88_q\))) # (!\address[0]~input_o\ & (!\mem~80_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => \mem~80_q\,
	datad => \mem~88_q\,
	combout => \mem~320_combout\);

-- Location: LCCOMB_X23_Y17_N30
\mem~321\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~321_combout\ = (\address[1]~input_o\ & ((\mem~320_combout\ & (!\mem~104_q\)) # (!\mem~320_combout\ & ((!\mem~96_q\))))) # (!\address[1]~input_o\ & (((\mem~320_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~104_q\,
	datab => \address[1]~input_o\,
	datac => \mem~96_q\,
	datad => \mem~320_combout\,
	combout => \mem~321_combout\);

-- Location: FF_X24_Y16_N15
\mem~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[2]~input_o\,
	sload => VCC,
	ena => \mem~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~16_q\);

-- Location: LCCOMB_X25_Y16_N22
\mem~24feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~24feeder_combout\ = \data_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[2]~input_o\,
	combout => \mem~24feeder_combout\);

-- Location: FF_X25_Y16_N23
\mem~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~24feeder_combout\,
	ena => \mem~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~24_q\);

-- Location: LCCOMB_X24_Y16_N14
\mem~324\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~324_combout\ = (\address[1]~input_o\ & (\address[0]~input_o\)) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & ((\mem~24_q\))) # (!\address[0]~input_o\ & (\mem~16_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => \mem~16_q\,
	datad => \mem~24_q\,
	combout => \mem~324_combout\);

-- Location: FF_X24_Y16_N9
\mem~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[2]~input_o\,
	sload => VCC,
	ena => \mem~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~40_q\);

-- Location: LCCOMB_X23_Y18_N18
\mem~32feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~32feeder_combout\ = \data_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[2]~input_o\,
	combout => \mem~32feeder_combout\);

-- Location: FF_X23_Y18_N19
\mem~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~32feeder_combout\,
	ena => \mem~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~32_q\);

-- Location: LCCOMB_X24_Y16_N8
\mem~325\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~325_combout\ = (\address[1]~input_o\ & ((\mem~324_combout\ & (\mem~40_q\)) # (!\mem~324_combout\ & ((\mem~32_q\))))) # (!\address[1]~input_o\ & (\mem~324_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \mem~324_combout\,
	datac => \mem~40_q\,
	datad => \mem~32_q\,
	combout => \mem~325_combout\);

-- Location: FF_X22_Y16_N15
\mem~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[2]~input_o\,
	sload => VCC,
	ena => \mem~466_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~56_q\);

-- Location: LCCOMB_X23_Y16_N30
\mem~545\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~545_combout\ = !\data_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[2]~input_o\,
	combout => \mem~545_combout\);

-- Location: FF_X23_Y16_N15
\mem~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~545_combout\,
	sload => VCC,
	ena => \mem~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~72_q\);

-- Location: FF_X23_Y16_N21
\mem~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[2]~input_o\,
	sload => VCC,
	ena => \mem~468_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~48_q\);

-- Location: LCCOMB_X23_Y15_N18
\mem~544\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~544_combout\ = !\data_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[2]~input_o\,
	combout => \mem~544_combout\);

-- Location: FF_X23_Y15_N19
\mem~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~544_combout\,
	ena => \mem~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~64_q\);

-- Location: LCCOMB_X23_Y16_N20
\mem~322\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~322_combout\ = (\address[1]~input_o\ & ((\address[0]~input_o\) # ((!\mem~64_q\)))) # (!\address[1]~input_o\ & (!\address[0]~input_o\ & (\mem~48_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => \mem~48_q\,
	datad => \mem~64_q\,
	combout => \mem~322_combout\);

-- Location: LCCOMB_X23_Y16_N14
\mem~323\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~323_combout\ = (\address[0]~input_o\ & ((\mem~322_combout\ & ((!\mem~72_q\))) # (!\mem~322_combout\ & (\mem~56_q\)))) # (!\address[0]~input_o\ & (((\mem~322_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~56_q\,
	datab => \address[0]~input_o\,
	datac => \mem~72_q\,
	datad => \mem~322_combout\,
	combout => \mem~323_combout\);

-- Location: LCCOMB_X24_Y16_N22
\mem~326\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~326_combout\ = (\address[2]~input_o\ & ((\address[3]~input_o\) # ((\mem~323_combout\)))) # (!\address[2]~input_o\ & (!\address[3]~input_o\ & (\mem~325_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[3]~input_o\,
	datac => \mem~325_combout\,
	datad => \mem~323_combout\,
	combout => \mem~326_combout\);

-- Location: LCCOMB_X27_Y17_N6
\mem~546\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~546_combout\ = !\data_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[2]~input_o\,
	combout => \mem~546_combout\);

-- Location: FF_X27_Y17_N7
\mem~120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~546_combout\,
	ena => \mem~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~120_q\);

-- Location: LCCOMB_X26_Y18_N20
\mem~549\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~549_combout\ = !\data_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[2]~input_o\,
	combout => \mem~549_combout\);

-- Location: FF_X26_Y17_N23
\mem~136\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~549_combout\,
	sload => VCC,
	ena => \mem~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~136_q\);

-- Location: LCCOMB_X21_Y17_N16
\mem~548\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~548_combout\ = !\data_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[2]~input_o\,
	combout => \mem~548_combout\);

-- Location: FF_X26_Y17_N21
\mem~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~548_combout\,
	sload => VCC,
	ena => \mem~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~112_q\);

-- Location: LCCOMB_X27_Y17_N28
\mem~547\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~547_combout\ = !\data_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[2]~input_o\,
	combout => \mem~547_combout\);

-- Location: FF_X27_Y17_N29
\mem~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~547_combout\,
	ena => \mem~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~128_q\);

-- Location: LCCOMB_X26_Y17_N20
\mem~327\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~327_combout\ = (\address[1]~input_o\ & ((\address[0]~input_o\) # ((!\mem~128_q\)))) # (!\address[1]~input_o\ & (!\address[0]~input_o\ & (!\mem~112_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => \mem~112_q\,
	datad => \mem~128_q\,
	combout => \mem~327_combout\);

-- Location: LCCOMB_X26_Y17_N22
\mem~328\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~328_combout\ = (\address[0]~input_o\ & ((\mem~327_combout\ & ((!\mem~136_q\))) # (!\mem~327_combout\ & (!\mem~120_q\)))) # (!\address[0]~input_o\ & (((\mem~327_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~120_q\,
	datab => \address[0]~input_o\,
	datac => \mem~136_q\,
	datad => \mem~327_combout\,
	combout => \mem~328_combout\);

-- Location: LCCOMB_X24_Y16_N16
\mem~329\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~329_combout\ = (\address[3]~input_o\ & ((\mem~326_combout\ & ((\mem~328_combout\))) # (!\mem~326_combout\ & (\mem~321_combout\)))) # (!\address[3]~input_o\ & (((\mem~326_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \mem~321_combout\,
	datac => \mem~326_combout\,
	datad => \mem~328_combout\,
	combout => \mem~329_combout\);

-- Location: LCCOMB_X25_Y16_N12
\mem~256feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~256feeder_combout\ = \data_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[2]~input_o\,
	combout => \mem~256feeder_combout\);

-- Location: FF_X25_Y16_N13
\mem~256\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~256feeder_combout\,
	ena => \mem~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~256_q\);

-- Location: LCCOMB_X24_Y14_N14
\mem~526\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~526_combout\ = !\data_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[2]~input_o\,
	combout => \mem~526_combout\);

-- Location: FF_X24_Y14_N5
\mem~192\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~526_combout\,
	sload => VCC,
	ena => \mem~431_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~192_q\);

-- Location: LCCOMB_X21_Y16_N22
\mem~528\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~528_combout\ = !\data_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[2]~input_o\,
	combout => \mem~528_combout\);

-- Location: FF_X21_Y14_N21
\mem~160\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~528_combout\,
	sload => VCC,
	ena => \mem~435_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~160_q\);

-- Location: LCCOMB_X22_Y14_N18
\mem~527\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~527_combout\ = !\data_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[2]~input_o\,
	combout => \mem~527_combout\);

-- Location: FF_X22_Y14_N19
\mem~224\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~527_combout\,
	ena => \mem~433_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~224_q\);

-- Location: LCCOMB_X21_Y14_N20
\mem~310\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~310_combout\ = (\address[2]~input_o\ & (\address[3]~input_o\)) # (!\address[2]~input_o\ & ((\address[3]~input_o\ & ((!\mem~224_q\))) # (!\address[3]~input_o\ & (!\mem~160_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[3]~input_o\,
	datac => \mem~160_q\,
	datad => \mem~224_q\,
	combout => \mem~310_combout\);

-- Location: LCCOMB_X24_Y14_N4
\mem~311\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~311_combout\ = (\address[2]~input_o\ & ((\mem~310_combout\ & (\mem~256_q\)) # (!\mem~310_combout\ & ((!\mem~192_q\))))) # (!\address[2]~input_o\ & (((\mem~310_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \mem~256_q\,
	datac => \mem~192_q\,
	datad => \mem~310_combout\,
	combout => \mem~311_combout\);

-- Location: LCCOMB_X26_Y18_N18
\mem~537\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~537_combout\ = !\data_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[2]~input_o\,
	combout => \mem~537_combout\);

-- Location: FF_X26_Y18_N19
\mem~232\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~537_combout\,
	ena => \mem~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~232_q\);

-- Location: FF_X25_Y18_N11
\mem~264\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[2]~input_o\,
	sload => VCC,
	ena => \mem~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~264_q\);

-- Location: LCCOMB_X25_Y16_N10
\mem~539\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~539_combout\ = !\data_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[2]~input_o\,
	combout => \mem~539_combout\);

-- Location: FF_X25_Y18_N17
\mem~168\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~539_combout\,
	sload => VCC,
	ena => \mem~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~168_q\);

-- Location: LCCOMB_X24_Y18_N12
\mem~538\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~538_combout\ = !\data_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[2]~input_o\,
	combout => \mem~538_combout\);

-- Location: FF_X24_Y18_N13
\mem~200\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~538_combout\,
	ena => \mem~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~200_q\);

-- Location: LCCOMB_X25_Y18_N16
\mem~317\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~317_combout\ = (\address[2]~input_o\ & ((\address[3]~input_o\) # ((!\mem~200_q\)))) # (!\address[2]~input_o\ & (!\address[3]~input_o\ & (!\mem~168_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[3]~input_o\,
	datac => \mem~168_q\,
	datad => \mem~200_q\,
	combout => \mem~317_combout\);

-- Location: LCCOMB_X25_Y18_N10
\mem~318\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~318_combout\ = (\address[3]~input_o\ & ((\mem~317_combout\ & ((\mem~264_q\))) # (!\mem~317_combout\ & (!\mem~232_q\)))) # (!\address[3]~input_o\ & (((\mem~317_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \mem~232_q\,
	datac => \mem~264_q\,
	datad => \mem~317_combout\,
	combout => \mem~318_combout\);

-- Location: LCCOMB_X26_Y15_N4
\mem~533\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~533_combout\ = !\data_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[2]~input_o\,
	combout => \mem~533_combout\);

-- Location: FF_X26_Y15_N5
\mem~176\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~533_combout\,
	ena => \mem~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~176_q\);

-- Location: LCCOMB_X25_Y15_N8
\mem~536\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~536_combout\ = !\data_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[2]~input_o\,
	combout => \mem~536_combout\);

-- Location: FF_X25_Y15_N31
\mem~240\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~536_combout\,
	sload => VCC,
	ena => \mem~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~240_q\);

-- Location: LCCOMB_X24_Y18_N8
\mem~535\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~535_combout\ = !\data_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[2]~input_o\,
	combout => \mem~535_combout\);

-- Location: FF_X25_Y15_N21
\mem~144\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~535_combout\,
	sload => VCC,
	ena => \mem~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~144_q\);

-- Location: LCCOMB_X26_Y15_N22
\mem~534\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~534_combout\ = !\data_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[2]~input_o\,
	combout => \mem~534_combout\);

-- Location: FF_X26_Y15_N23
\mem~208\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~534_combout\,
	ena => \mem~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~208_q\);

-- Location: LCCOMB_X25_Y15_N20
\mem~314\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~314_combout\ = (\address[3]~input_o\ & ((\address[2]~input_o\) # ((!\mem~208_q\)))) # (!\address[3]~input_o\ & (!\address[2]~input_o\ & (!\mem~144_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \address[2]~input_o\,
	datac => \mem~144_q\,
	datad => \mem~208_q\,
	combout => \mem~314_combout\);

-- Location: LCCOMB_X25_Y15_N30
\mem~315\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~315_combout\ = (\address[2]~input_o\ & ((\mem~314_combout\ & ((!\mem~240_q\))) # (!\mem~314_combout\ & (!\mem~176_q\)))) # (!\address[2]~input_o\ & (((\mem~314_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~176_q\,
	datab => \address[2]~input_o\,
	datac => \mem~240_q\,
	datad => \mem~314_combout\,
	combout => \mem~315_combout\);

-- Location: LCCOMB_X21_Y16_N4
\mem~531\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~531_combout\ = !\data_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[2]~input_o\,
	combout => \mem~531_combout\);

-- Location: FF_X21_Y16_N1
\mem~152\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~531_combout\,
	sload => VCC,
	ena => \mem~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~152_q\);

-- Location: LCCOMB_X22_Y16_N24
\mem~530\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~530_combout\ = !\data_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[2]~input_o\,
	combout => \mem~530_combout\);

-- Location: FF_X22_Y16_N25
\mem~184\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~530_combout\,
	ena => \mem~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~184_q\);

-- Location: LCCOMB_X21_Y16_N0
\mem~312\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~312_combout\ = (\address[2]~input_o\ & ((\address[3]~input_o\) # ((!\mem~184_q\)))) # (!\address[2]~input_o\ & (!\address[3]~input_o\ & (!\mem~152_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[3]~input_o\,
	datac => \mem~152_q\,
	datad => \mem~184_q\,
	combout => \mem~312_combout\);

-- Location: LCCOMB_X21_Y16_N26
\mem~532\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~532_combout\ = !\data_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[2]~input_o\,
	combout => \mem~532_combout\);

-- Location: FF_X21_Y16_N11
\mem~248\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~532_combout\,
	sload => VCC,
	ena => \mem~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~248_q\);

-- Location: LCCOMB_X21_Y15_N16
\mem~529\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~529_combout\ = !\data_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[2]~input_o\,
	combout => \mem~529_combout\);

-- Location: FF_X21_Y15_N17
\mem~216\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~529_combout\,
	ena => \mem~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~216_q\);

-- Location: LCCOMB_X21_Y16_N10
\mem~313\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~313_combout\ = (\address[3]~input_o\ & ((\mem~312_combout\ & (!\mem~248_q\)) # (!\mem~312_combout\ & ((!\mem~216_q\))))) # (!\address[3]~input_o\ & (\mem~312_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \mem~312_combout\,
	datac => \mem~248_q\,
	datad => \mem~216_q\,
	combout => \mem~313_combout\);

-- Location: LCCOMB_X24_Y14_N10
\mem~316\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~316_combout\ = (\address[1]~input_o\ & (\address[0]~input_o\)) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & ((\mem~313_combout\))) # (!\address[0]~input_o\ & (\mem~315_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => \mem~315_combout\,
	datad => \mem~313_combout\,
	combout => \mem~316_combout\);

-- Location: LCCOMB_X24_Y14_N8
\mem~319\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~319_combout\ = (\address[1]~input_o\ & ((\mem~316_combout\ & ((\mem~318_combout\))) # (!\mem~316_combout\ & (\mem~311_combout\)))) # (!\address[1]~input_o\ & (((\mem~316_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \mem~311_combout\,
	datac => \mem~318_combout\,
	datad => \mem~316_combout\,
	combout => \mem~319_combout\);

-- Location: LCCOMB_X25_Y14_N30
\data_out~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_out~4_combout\ = (\data_out~1_combout\) # ((\address[4]~input_o\ & ((\mem~319_combout\))) # (!\address[4]~input_o\ & (\mem~329_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out~1_combout\,
	datab => \address[4]~input_o\,
	datac => \mem~329_combout\,
	datad => \mem~319_combout\,
	combout => \data_out~4_combout\);

-- Location: FF_X25_Y14_N31
\data_out[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data_out~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[2]~reg0_q\);

-- Location: IOIBUF_X33_Y14_N1
\data_in[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(3),
	o => \data_in[3]~input_o\);

-- Location: LCCOMB_X24_Y14_N6
\mem~550\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~550_combout\ = !\data_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[3]~input_o\,
	combout => \mem~550_combout\);

-- Location: FF_X24_Y14_N7
\mem~185\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~550_combout\,
	ena => \mem~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~185_q\);

-- Location: LCCOMB_X23_Y14_N30
\mem~553\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~553_combout\ = !\data_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[3]~input_o\,
	combout => \mem~553_combout\);

-- Location: FF_X23_Y14_N31
\mem~249\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~553_combout\,
	ena => \mem~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~249_q\);

-- Location: LCCOMB_X24_Y18_N14
\mem~552\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~552_combout\ = !\data_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[3]~input_o\,
	combout => \mem~552_combout\);

-- Location: FF_X23_Y14_N21
\mem~153\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~552_combout\,
	sload => VCC,
	ena => \mem~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~153_q\);

-- Location: LCCOMB_X22_Y14_N12
\mem~551\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~551_combout\ = !\data_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[3]~input_o\,
	combout => \mem~551_combout\);

-- Location: FF_X22_Y14_N13
\mem~217\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~551_combout\,
	ena => \mem~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~217_q\);

-- Location: LCCOMB_X23_Y14_N20
\mem~330\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~330_combout\ = (\address[3]~input_o\ & ((\address[2]~input_o\) # ((!\mem~217_q\)))) # (!\address[3]~input_o\ & (!\address[2]~input_o\ & (!\mem~153_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \address[2]~input_o\,
	datac => \mem~153_q\,
	datad => \mem~217_q\,
	combout => \mem~330_combout\);

-- Location: LCCOMB_X23_Y14_N24
\mem~331\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~331_combout\ = (\address[2]~input_o\ & ((\mem~330_combout\ & ((!\mem~249_q\))) # (!\mem~330_combout\ & (!\mem~185_q\)))) # (!\address[2]~input_o\ & (((\mem~330_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~185_q\,
	datab => \address[2]~input_o\,
	datac => \mem~249_q\,
	datad => \mem~330_combout\,
	combout => \mem~331_combout\);

-- Location: LCCOMB_X24_Y18_N18
\mem~561\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~561_combout\ = !\data_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[3]~input_o\,
	combout => \mem~561_combout\);

-- Location: FF_X24_Y18_N19
\mem~201\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~561_combout\,
	ena => \mem~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~201_q\);

-- Location: FF_X25_Y18_N31
\mem~265\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[3]~input_o\,
	sload => VCC,
	ena => \mem~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~265_q\);

-- Location: LCCOMB_X24_Y14_N24
\mem~563\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~563_combout\ = !\data_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[3]~input_o\,
	combout => \mem~563_combout\);

-- Location: FF_X25_Y18_N29
\mem~169\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~563_combout\,
	sload => VCC,
	ena => \mem~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~169_q\);

-- Location: LCCOMB_X26_Y18_N24
\mem~562\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~562_combout\ = !\data_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[3]~input_o\,
	combout => \mem~562_combout\);

-- Location: FF_X26_Y18_N25
\mem~233\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~562_combout\,
	ena => \mem~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~233_q\);

-- Location: LCCOMB_X25_Y18_N28
\mem~337\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~337_combout\ = (\address[2]~input_o\ & (\address[3]~input_o\)) # (!\address[2]~input_o\ & ((\address[3]~input_o\ & ((!\mem~233_q\))) # (!\address[3]~input_o\ & (!\mem~169_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[3]~input_o\,
	datac => \mem~169_q\,
	datad => \mem~233_q\,
	combout => \mem~337_combout\);

-- Location: LCCOMB_X25_Y18_N30
\mem~338\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~338_combout\ = (\address[2]~input_o\ & ((\mem~337_combout\ & ((\mem~265_q\))) # (!\mem~337_combout\ & (!\mem~201_q\)))) # (!\address[2]~input_o\ & (((\mem~337_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \mem~201_q\,
	datac => \mem~265_q\,
	datad => \mem~337_combout\,
	combout => \mem~338_combout\);

-- Location: LCCOMB_X26_Y15_N0
\mem~557\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~557_combout\ = !\data_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[3]~input_o\,
	combout => \mem~557_combout\);

-- Location: FF_X26_Y15_N1
\mem~209\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~557_combout\,
	ena => \mem~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~209_q\);

-- Location: LCCOMB_X26_Y15_N2
\mem~560\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~560_combout\ = !\data_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[3]~input_o\,
	combout => \mem~560_combout\);

-- Location: FF_X25_Y15_N7
\mem~241\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~560_combout\,
	sload => VCC,
	ena => \mem~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~241_q\);

-- Location: LCCOMB_X25_Y15_N26
\mem~559\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~559_combout\ = !\data_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[3]~input_o\,
	combout => \mem~559_combout\);

-- Location: FF_X25_Y15_N13
\mem~145\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~559_combout\,
	sload => VCC,
	ena => \mem~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~145_q\);

-- Location: LCCOMB_X26_Y15_N6
\mem~558\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~558_combout\ = !\data_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[3]~input_o\,
	combout => \mem~558_combout\);

-- Location: FF_X26_Y15_N7
\mem~177\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~558_combout\,
	ena => \mem~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~177_q\);

-- Location: LCCOMB_X25_Y15_N12
\mem~334\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~334_combout\ = (\address[3]~input_o\ & (\address[2]~input_o\)) # (!\address[3]~input_o\ & ((\address[2]~input_o\ & ((!\mem~177_q\))) # (!\address[2]~input_o\ & (!\mem~145_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \address[2]~input_o\,
	datac => \mem~145_q\,
	datad => \mem~177_q\,
	combout => \mem~334_combout\);

-- Location: LCCOMB_X25_Y15_N6
\mem~335\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~335_combout\ = (\address[3]~input_o\ & ((\mem~334_combout\ & ((!\mem~241_q\))) # (!\mem~334_combout\ & (!\mem~209_q\)))) # (!\address[3]~input_o\ & (((\mem~334_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \mem~209_q\,
	datac => \mem~241_q\,
	datad => \mem~334_combout\,
	combout => \mem~335_combout\);

-- Location: LCCOMB_X22_Y14_N6
\mem~554\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~554_combout\ = !\data_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[3]~input_o\,
	combout => \mem~554_combout\);

-- Location: FF_X22_Y14_N7
\mem~225\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~554_combout\,
	ena => \mem~433_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~225_q\);

-- Location: FF_X21_Y14_N9
\mem~257\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[3]~input_o\,
	sload => VCC,
	ena => \mem~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~257_q\);

-- Location: LCCOMB_X21_Y15_N30
\mem~556\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~556_combout\ = !\data_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[3]~input_o\,
	combout => \mem~556_combout\);

-- Location: FF_X21_Y14_N11
\mem~161\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~556_combout\,
	sload => VCC,
	ena => \mem~435_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~161_q\);

-- Location: LCCOMB_X20_Y14_N14
\mem~555\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~555_combout\ = !\data_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[3]~input_o\,
	combout => \mem~555_combout\);

-- Location: FF_X20_Y14_N15
\mem~193\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~555_combout\,
	ena => \mem~431_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~193_q\);

-- Location: LCCOMB_X21_Y14_N10
\mem~332\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~332_combout\ = (\address[2]~input_o\ & ((\address[3]~input_o\) # ((!\mem~193_q\)))) # (!\address[2]~input_o\ & (!\address[3]~input_o\ & (!\mem~161_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[3]~input_o\,
	datac => \mem~161_q\,
	datad => \mem~193_q\,
	combout => \mem~332_combout\);

-- Location: LCCOMB_X21_Y14_N8
\mem~333\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~333_combout\ = (\address[3]~input_o\ & ((\mem~332_combout\ & ((\mem~257_q\))) # (!\mem~332_combout\ & (!\mem~225_q\)))) # (!\address[3]~input_o\ & (((\mem~332_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~225_q\,
	datab => \address[3]~input_o\,
	datac => \mem~257_q\,
	datad => \mem~332_combout\,
	combout => \mem~333_combout\);

-- Location: LCCOMB_X24_Y17_N16
\mem~336\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~336_combout\ = (\address[1]~input_o\ & ((\address[0]~input_o\) # ((\mem~333_combout\)))) # (!\address[1]~input_o\ & (!\address[0]~input_o\ & (\mem~335_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => \mem~335_combout\,
	datad => \mem~333_combout\,
	combout => \mem~336_combout\);

-- Location: LCCOMB_X24_Y17_N26
\mem~339\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~339_combout\ = (\address[0]~input_o\ & ((\mem~336_combout\ & ((\mem~338_combout\))) # (!\mem~336_combout\ & (\mem~331_combout\)))) # (!\address[0]~input_o\ & (((\mem~336_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~331_combout\,
	datab => \address[0]~input_o\,
	datac => \mem~338_combout\,
	datad => \mem~336_combout\,
	combout => \mem~339_combout\);

-- Location: LCCOMB_X23_Y16_N2
\mem~565\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~565_combout\ = !\data_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[3]~input_o\,
	combout => \mem~565_combout\);

-- Location: FF_X23_Y16_N3
\mem~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~565_combout\,
	ena => \mem~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~73_q\);

-- Location: LCCOMB_X23_Y17_N0
\mem~564\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~564_combout\ = !\data_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[3]~input_o\,
	combout => \mem~564_combout\);

-- Location: FF_X23_Y17_N1
\mem~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~564_combout\,
	ena => \mem~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~65_q\);

-- Location: FF_X23_Y16_N25
\mem~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[3]~input_o\,
	sload => VCC,
	ena => \mem~468_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~49_q\);

-- Location: LCCOMB_X22_Y16_N12
\mem~57feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~57feeder_combout\ = \data_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[3]~input_o\,
	combout => \mem~57feeder_combout\);

-- Location: FF_X22_Y16_N13
\mem~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~57feeder_combout\,
	ena => \mem~466_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~57_q\);

-- Location: LCCOMB_X23_Y16_N24
\mem~340\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~340_combout\ = (\address[1]~input_o\ & (\address[0]~input_o\)) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & ((\mem~57_q\))) # (!\address[0]~input_o\ & (\mem~49_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => \mem~49_q\,
	datad => \mem~57_q\,
	combout => \mem~340_combout\);

-- Location: LCCOMB_X24_Y17_N20
\mem~341\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~341_combout\ = (\address[1]~input_o\ & ((\mem~340_combout\ & (!\mem~73_q\)) # (!\mem~340_combout\ & ((!\mem~65_q\))))) # (!\address[1]~input_o\ & (((\mem~340_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \mem~73_q\,
	datac => \mem~65_q\,
	datad => \mem~340_combout\,
	combout => \mem~341_combout\);

-- Location: LCCOMB_X21_Y17_N14
\mem~566\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~566_combout\ = !\data_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[3]~input_o\,
	combout => \mem~566_combout\);

-- Location: FF_X21_Y17_N15
\mem~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~566_combout\,
	ena => \mem~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~89_q\);

-- Location: LCCOMB_X21_Y17_N26
\mem~569\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~569_combout\ = !\data_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[3]~input_o\,
	combout => \mem~569_combout\);

-- Location: FF_X22_Y17_N19
\mem~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~569_combout\,
	sload => VCC,
	ena => \mem~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~105_q\);

-- Location: LCCOMB_X22_Y17_N14
\mem~568\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~568_combout\ = !\data_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[3]~input_o\,
	combout => \mem~568_combout\);

-- Location: FF_X22_Y17_N17
\mem~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~568_combout\,
	sload => VCC,
	ena => \mem~464_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~81_q\);

-- Location: LCCOMB_X23_Y17_N2
\mem~567\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~567_combout\ = !\data_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[3]~input_o\,
	combout => \mem~567_combout\);

-- Location: FF_X23_Y17_N3
\mem~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~567_combout\,
	ena => \mem~462_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~97_q\);

-- Location: LCCOMB_X22_Y17_N16
\mem~342\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~342_combout\ = (\address[1]~input_o\ & ((\address[0]~input_o\) # ((!\mem~97_q\)))) # (!\address[1]~input_o\ & (!\address[0]~input_o\ & (!\mem~81_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => \mem~81_q\,
	datad => \mem~97_q\,
	combout => \mem~342_combout\);

-- Location: LCCOMB_X22_Y17_N18
\mem~343\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~343_combout\ = (\address[0]~input_o\ & ((\mem~342_combout\ & ((!\mem~105_q\))) # (!\mem~342_combout\ & (!\mem~89_q\)))) # (!\address[0]~input_o\ & (((\mem~342_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~89_q\,
	datab => \address[0]~input_o\,
	datac => \mem~105_q\,
	datad => \mem~342_combout\,
	combout => \mem~343_combout\);

-- Location: FF_X24_Y18_N5
\mem~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[3]~input_o\,
	sload => VCC,
	ena => \mem~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~25_q\);

-- Location: FF_X24_Y17_N11
\mem~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[3]~input_o\,
	sload => VCC,
	ena => \mem~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~41_q\);

-- Location: FF_X23_Y18_N7
\mem~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[3]~input_o\,
	sload => VCC,
	ena => \mem~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~17_q\);

-- Location: LCCOMB_X23_Y18_N20
\mem~33feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~33feeder_combout\ = \data_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[3]~input_o\,
	combout => \mem~33feeder_combout\);

-- Location: FF_X23_Y18_N21
\mem~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~33feeder_combout\,
	ena => \mem~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~33_q\);

-- Location: LCCOMB_X23_Y18_N6
\mem~344\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~344_combout\ = (\address[0]~input_o\ & (\address[1]~input_o\)) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & ((\mem~33_q\))) # (!\address[1]~input_o\ & (\mem~17_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \mem~17_q\,
	datad => \mem~33_q\,
	combout => \mem~344_combout\);

-- Location: LCCOMB_X24_Y17_N10
\mem~345\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~345_combout\ = (\address[0]~input_o\ & ((\mem~344_combout\ & ((\mem~41_q\))) # (!\mem~344_combout\ & (\mem~25_q\)))) # (!\address[0]~input_o\ & (((\mem~344_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~25_q\,
	datab => \address[0]~input_o\,
	datac => \mem~41_q\,
	datad => \mem~344_combout\,
	combout => \mem~345_combout\);

-- Location: LCCOMB_X24_Y17_N4
\mem~346\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~346_combout\ = (\address[3]~input_o\ & ((\address[2]~input_o\) # ((\mem~343_combout\)))) # (!\address[3]~input_o\ & (!\address[2]~input_o\ & ((\mem~345_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \address[2]~input_o\,
	datac => \mem~343_combout\,
	datad => \mem~345_combout\,
	combout => \mem~346_combout\);

-- Location: LCCOMB_X27_Y17_N18
\mem~570\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~570_combout\ = !\data_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[3]~input_o\,
	combout => \mem~570_combout\);

-- Location: FF_X27_Y17_N19
\mem~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~570_combout\,
	ena => \mem~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~129_q\);

-- Location: LCCOMB_X26_Y17_N26
\mem~573\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~573_combout\ = !\data_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[3]~input_o\,
	combout => \mem~573_combout\);

-- Location: FF_X26_Y17_N15
\mem~137\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~573_combout\,
	sload => VCC,
	ena => \mem~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~137_q\);

-- Location: LCCOMB_X27_Y17_N12
\mem~572\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~572_combout\ = !\data_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[3]~input_o\,
	combout => \mem~572_combout\);

-- Location: FF_X26_Y17_N17
\mem~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~572_combout\,
	sload => VCC,
	ena => \mem~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~113_q\);

-- Location: LCCOMB_X27_Y17_N16
\mem~571\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~571_combout\ = !\data_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[3]~input_o\,
	combout => \mem~571_combout\);

-- Location: FF_X27_Y17_N17
\mem~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~571_combout\,
	ena => \mem~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~121_q\);

-- Location: LCCOMB_X26_Y17_N16
\mem~347\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~347_combout\ = (\address[0]~input_o\ & ((\address[1]~input_o\) # ((!\mem~121_q\)))) # (!\address[0]~input_o\ & (!\address[1]~input_o\ & (!\mem~113_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \mem~113_q\,
	datad => \mem~121_q\,
	combout => \mem~347_combout\);

-- Location: LCCOMB_X26_Y17_N14
\mem~348\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~348_combout\ = (\address[1]~input_o\ & ((\mem~347_combout\ & ((!\mem~137_q\))) # (!\mem~347_combout\ & (!\mem~129_q\)))) # (!\address[1]~input_o\ & (((\mem~347_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \mem~129_q\,
	datac => \mem~137_q\,
	datad => \mem~347_combout\,
	combout => \mem~348_combout\);

-- Location: LCCOMB_X24_Y17_N6
\mem~349\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~349_combout\ = (\address[2]~input_o\ & ((\mem~346_combout\ & ((\mem~348_combout\))) # (!\mem~346_combout\ & (\mem~341_combout\)))) # (!\address[2]~input_o\ & (((\mem~346_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \mem~341_combout\,
	datac => \mem~346_combout\,
	datad => \mem~348_combout\,
	combout => \mem~349_combout\);

-- Location: LCCOMB_X24_Y17_N24
\data_out~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_out~5_combout\ = (\data_out~1_combout\) # ((\address[4]~input_o\ & (\mem~339_combout\)) # (!\address[4]~input_o\ & ((\mem~349_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[4]~input_o\,
	datab => \data_out~1_combout\,
	datac => \mem~339_combout\,
	datad => \mem~349_combout\,
	combout => \data_out~5_combout\);

-- Location: FF_X24_Y17_N25
\data_out[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data_out~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[3]~reg0_q\);

-- Location: IOIBUF_X24_Y31_N8
\data_in[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(4),
	o => \data_in[4]~input_o\);

-- Location: FF_X25_Y16_N25
\mem~258\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[4]~input_o\,
	sload => VCC,
	ena => \mem~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~258_q\);

-- Location: LCCOMB_X24_Y14_N30
\mem~574\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~574_combout\ = !\data_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[4]~input_o\,
	combout => \mem~574_combout\);

-- Location: FF_X24_Y14_N13
\mem~194\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~574_combout\,
	sload => VCC,
	ena => \mem~431_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~194_q\);

-- Location: LCCOMB_X22_Y16_N26
\mem~576\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~576_combout\ = !\data_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[4]~input_o\,
	combout => \mem~576_combout\);

-- Location: FF_X21_Y14_N7
\mem~162\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~576_combout\,
	sload => VCC,
	ena => \mem~435_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~162_q\);

-- Location: LCCOMB_X22_Y14_N28
\mem~575\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~575_combout\ = !\data_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[4]~input_o\,
	combout => \mem~575_combout\);

-- Location: FF_X22_Y14_N29
\mem~226\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~575_combout\,
	ena => \mem~433_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~226_q\);

-- Location: LCCOMB_X21_Y14_N6
\mem~350\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~350_combout\ = (\address[2]~input_o\ & (\address[3]~input_o\)) # (!\address[2]~input_o\ & ((\address[3]~input_o\ & ((!\mem~226_q\))) # (!\address[3]~input_o\ & (!\mem~162_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[3]~input_o\,
	datac => \mem~162_q\,
	datad => \mem~226_q\,
	combout => \mem~350_combout\);

-- Location: LCCOMB_X24_Y14_N12
\mem~351\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~351_combout\ = (\address[2]~input_o\ & ((\mem~350_combout\ & (\mem~258_q\)) # (!\mem~350_combout\ & ((!\mem~194_q\))))) # (!\address[2]~input_o\ & (((\mem~350_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \mem~258_q\,
	datac => \mem~194_q\,
	datad => \mem~350_combout\,
	combout => \mem~351_combout\);

-- Location: LCCOMB_X26_Y18_N2
\mem~585\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~585_combout\ = !\data_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[4]~input_o\,
	combout => \mem~585_combout\);

-- Location: FF_X26_Y18_N3
\mem~234\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~585_combout\,
	ena => \mem~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~234_q\);

-- Location: FF_X25_Y18_N15
\mem~266\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[4]~input_o\,
	sload => VCC,
	ena => \mem~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~266_q\);

-- Location: LCCOMB_X24_Y18_N22
\mem~586\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~586_combout\ = !\data_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[4]~input_o\,
	combout => \mem~586_combout\);

-- Location: FF_X24_Y18_N23
\mem~202\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~586_combout\,
	ena => \mem~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~202_q\);

-- Location: LCCOMB_X25_Y18_N22
\mem~587\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~587_combout\ = !\data_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[4]~input_o\,
	combout => \mem~587_combout\);

-- Location: FF_X25_Y18_N25
\mem~170\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~587_combout\,
	sload => VCC,
	ena => \mem~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~170_q\);

-- Location: LCCOMB_X25_Y18_N24
\mem~357\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~357_combout\ = (\address[3]~input_o\ & (((\address[2]~input_o\)))) # (!\address[3]~input_o\ & ((\address[2]~input_o\ & (!\mem~202_q\)) # (!\address[2]~input_o\ & ((!\mem~170_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \mem~202_q\,
	datac => \mem~170_q\,
	datad => \address[2]~input_o\,
	combout => \mem~357_combout\);

-- Location: LCCOMB_X25_Y18_N14
\mem~358\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~358_combout\ = (\address[3]~input_o\ & ((\mem~357_combout\ & ((\mem~266_q\))) # (!\mem~357_combout\ & (!\mem~234_q\)))) # (!\address[3]~input_o\ & (((\mem~357_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~234_q\,
	datab => \address[3]~input_o\,
	datac => \mem~266_q\,
	datad => \mem~357_combout\,
	combout => \mem~358_combout\);

-- Location: LCCOMB_X22_Y14_N14
\mem~577\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~577_combout\ = !\data_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[4]~input_o\,
	combout => \mem~577_combout\);

-- Location: FF_X22_Y14_N15
\mem~218\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~577_combout\,
	ena => \mem~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~218_q\);

-- Location: LCCOMB_X23_Y14_N8
\mem~580\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~580_combout\ = !\data_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[4]~input_o\,
	combout => \mem~580_combout\);

-- Location: FF_X23_Y14_N1
\mem~250\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~580_combout\,
	sload => VCC,
	ena => \mem~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~250_q\);

-- Location: LCCOMB_X26_Y14_N4
\mem~579\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~579_combout\ = !\data_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[4]~input_o\,
	combout => \mem~579_combout\);

-- Location: FF_X23_Y14_N19
\mem~154\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~579_combout\,
	sload => VCC,
	ena => \mem~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~154_q\);

-- Location: LCCOMB_X24_Y14_N2
\mem~578\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~578_combout\ = !\data_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[4]~input_o\,
	combout => \mem~578_combout\);

-- Location: FF_X24_Y14_N3
\mem~186\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~578_combout\,
	ena => \mem~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~186_q\);

-- Location: LCCOMB_X23_Y14_N18
\mem~352\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~352_combout\ = (\address[3]~input_o\ & (\address[2]~input_o\)) # (!\address[3]~input_o\ & ((\address[2]~input_o\ & ((!\mem~186_q\))) # (!\address[2]~input_o\ & (!\mem~154_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \address[2]~input_o\,
	datac => \mem~154_q\,
	datad => \mem~186_q\,
	combout => \mem~352_combout\);

-- Location: LCCOMB_X23_Y14_N0
\mem~353\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~353_combout\ = (\address[3]~input_o\ & ((\mem~352_combout\ & ((!\mem~250_q\))) # (!\mem~352_combout\ & (!\mem~218_q\)))) # (!\address[3]~input_o\ & (((\mem~352_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~218_q\,
	datab => \address[3]~input_o\,
	datac => \mem~250_q\,
	datad => \mem~352_combout\,
	combout => \mem~353_combout\);

-- Location: LCCOMB_X26_Y15_N12
\mem~581\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~581_combout\ = !\data_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[4]~input_o\,
	combout => \mem~581_combout\);

-- Location: FF_X26_Y15_N13
\mem~178\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~581_combout\,
	ena => \mem~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~178_q\);

-- Location: LCCOMB_X25_Y16_N4
\mem~584\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~584_combout\ = !\data_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[4]~input_o\,
	combout => \mem~584_combout\);

-- Location: FF_X25_Y15_N19
\mem~242\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~584_combout\,
	sload => VCC,
	ena => \mem~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~242_q\);

-- Location: LCCOMB_X22_Y16_N8
\mem~583\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~583_combout\ = !\data_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[4]~input_o\,
	combout => \mem~583_combout\);

-- Location: FF_X25_Y15_N25
\mem~146\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~583_combout\,
	sload => VCC,
	ena => \mem~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~146_q\);

-- Location: LCCOMB_X26_Y15_N18
\mem~582\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~582_combout\ = !\data_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[4]~input_o\,
	combout => \mem~582_combout\);

-- Location: FF_X26_Y15_N19
\mem~210\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~582_combout\,
	ena => \mem~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~210_q\);

-- Location: LCCOMB_X25_Y15_N24
\mem~354\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~354_combout\ = (\address[3]~input_o\ & ((\address[2]~input_o\) # ((!\mem~210_q\)))) # (!\address[3]~input_o\ & (!\address[2]~input_o\ & (!\mem~146_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \address[2]~input_o\,
	datac => \mem~146_q\,
	datad => \mem~210_q\,
	combout => \mem~354_combout\);

-- Location: LCCOMB_X25_Y15_N18
\mem~355\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~355_combout\ = (\address[2]~input_o\ & ((\mem~354_combout\ & ((!\mem~242_q\))) # (!\mem~354_combout\ & (!\mem~178_q\)))) # (!\address[2]~input_o\ & (((\mem~354_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \mem~178_q\,
	datac => \mem~242_q\,
	datad => \mem~354_combout\,
	combout => \mem~355_combout\);

-- Location: LCCOMB_X25_Y14_N2
\mem~356\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~356_combout\ = (\address[1]~input_o\ & (\address[0]~input_o\)) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & (\mem~353_combout\)) # (!\address[0]~input_o\ & ((\mem~355_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => \mem~353_combout\,
	datad => \mem~355_combout\,
	combout => \mem~356_combout\);

-- Location: LCCOMB_X25_Y14_N4
\mem~359\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~359_combout\ = (\address[1]~input_o\ & ((\mem~356_combout\ & ((\mem~358_combout\))) # (!\mem~356_combout\ & (\mem~351_combout\)))) # (!\address[1]~input_o\ & (((\mem~356_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~351_combout\,
	datab => \address[1]~input_o\,
	datac => \mem~358_combout\,
	datad => \mem~356_combout\,
	combout => \mem~359_combout\);

-- Location: LCCOMB_X23_Y17_N12
\mem~591\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~591_combout\ = !\data_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[4]~input_o\,
	combout => \mem~591_combout\);

-- Location: FF_X22_Y17_N7
\mem~106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~591_combout\,
	sload => VCC,
	ena => \mem~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~106_q\);

-- Location: LCCOMB_X23_Y17_N6
\mem~588\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~588_combout\ = !\data_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[4]~input_o\,
	combout => \mem~588_combout\);

-- Location: FF_X23_Y17_N21
\mem~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~588_combout\,
	sload => VCC,
	ena => \mem~462_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~98_q\);

-- Location: LCCOMB_X22_Y14_N10
\mem~590\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~590_combout\ = !\data_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[4]~input_o\,
	combout => \mem~590_combout\);

-- Location: FF_X22_Y17_N21
\mem~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~590_combout\,
	sload => VCC,
	ena => \mem~464_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~82_q\);

-- Location: LCCOMB_X21_Y17_N28
\mem~589\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~589_combout\ = !\data_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[4]~input_o\,
	combout => \mem~589_combout\);

-- Location: FF_X21_Y17_N29
\mem~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~589_combout\,
	ena => \mem~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~90_q\);

-- Location: LCCOMB_X22_Y17_N20
\mem~360\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~360_combout\ = (\address[1]~input_o\ & (\address[0]~input_o\)) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & ((!\mem~90_q\))) # (!\address[0]~input_o\ & (!\mem~82_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => \mem~82_q\,
	datad => \mem~90_q\,
	combout => \mem~360_combout\);

-- Location: LCCOMB_X23_Y17_N20
\mem~361\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~361_combout\ = (\address[1]~input_o\ & ((\mem~360_combout\ & (!\mem~106_q\)) # (!\mem~360_combout\ & ((!\mem~98_q\))))) # (!\address[1]~input_o\ & (((\mem~360_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \mem~106_q\,
	datac => \mem~98_q\,
	datad => \mem~360_combout\,
	combout => \mem~361_combout\);

-- Location: LCCOMB_X27_Y17_N2
\mem~594\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~594_combout\ = !\data_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[4]~input_o\,
	combout => \mem~594_combout\);

-- Location: FF_X27_Y17_N3
\mem~122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~594_combout\,
	ena => \mem~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~122_q\);

-- Location: LCCOMB_X26_Y17_N2
\mem~597\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~597_combout\ = !\data_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[4]~input_o\,
	combout => \mem~597_combout\);

-- Location: FF_X26_Y17_N31
\mem~138\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~597_combout\,
	sload => VCC,
	ena => \mem~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~138_q\);

-- Location: LCCOMB_X26_Y17_N4
\mem~596\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~596_combout\ = !\data_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[4]~input_o\,
	combout => \mem~596_combout\);

-- Location: FF_X26_Y17_N13
\mem~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~596_combout\,
	sload => VCC,
	ena => \mem~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~114_q\);

-- Location: LCCOMB_X26_Y18_N26
\mem~595\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~595_combout\ = !\data_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[4]~input_o\,
	combout => \mem~595_combout\);

-- Location: FF_X27_Y17_N5
\mem~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~595_combout\,
	sload => VCC,
	ena => \mem~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~130_q\);

-- Location: LCCOMB_X26_Y17_N12
\mem~367\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~367_combout\ = (\address[1]~input_o\ & ((\address[0]~input_o\) # ((!\mem~130_q\)))) # (!\address[1]~input_o\ & (!\address[0]~input_o\ & (!\mem~114_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => \mem~114_q\,
	datad => \mem~130_q\,
	combout => \mem~367_combout\);

-- Location: LCCOMB_X26_Y17_N30
\mem~368\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~368_combout\ = (\address[0]~input_o\ & ((\mem~367_combout\ & ((!\mem~138_q\))) # (!\mem~367_combout\ & (!\mem~122_q\)))) # (!\address[0]~input_o\ & (((\mem~367_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~122_q\,
	datab => \address[0]~input_o\,
	datac => \mem~138_q\,
	datad => \mem~367_combout\,
	combout => \mem~368_combout\);

-- Location: FF_X22_Y16_N31
\mem~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[4]~input_o\,
	sload => VCC,
	ena => \mem~466_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~58_q\);

-- Location: LCCOMB_X24_Y14_N20
\mem~593\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~593_combout\ = !\data_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[4]~input_o\,
	combout => \mem~593_combout\);

-- Location: FF_X23_Y16_N27
\mem~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~593_combout\,
	sload => VCC,
	ena => \mem~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~74_q\);

-- Location: FF_X23_Y16_N17
\mem~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[4]~input_o\,
	sload => VCC,
	ena => \mem~468_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~50_q\);

-- Location: LCCOMB_X23_Y17_N18
\mem~592\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~592_combout\ = !\data_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[4]~input_o\,
	combout => \mem~592_combout\);

-- Location: FF_X23_Y17_N19
\mem~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~592_combout\,
	ena => \mem~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~66_q\);

-- Location: LCCOMB_X23_Y16_N16
\mem~362\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~362_combout\ = (\address[1]~input_o\ & ((\address[0]~input_o\) # ((!\mem~66_q\)))) # (!\address[1]~input_o\ & (!\address[0]~input_o\ & (\mem~50_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => \mem~50_q\,
	datad => \mem~66_q\,
	combout => \mem~362_combout\);

-- Location: LCCOMB_X23_Y16_N26
\mem~363\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~363_combout\ = (\address[0]~input_o\ & ((\mem~362_combout\ & ((!\mem~74_q\))) # (!\mem~362_combout\ & (\mem~58_q\)))) # (!\address[0]~input_o\ & (((\mem~362_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \mem~58_q\,
	datac => \mem~74_q\,
	datad => \mem~362_combout\,
	combout => \mem~363_combout\);

-- Location: FF_X24_Y16_N7
\mem~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[4]~input_o\,
	sload => VCC,
	ena => \mem~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~18_q\);

-- Location: FF_X25_Y16_N27
\mem~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[4]~input_o\,
	sload => VCC,
	ena => \mem~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~26_q\);

-- Location: LCCOMB_X24_Y16_N6
\mem~364\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~364_combout\ = (\address[1]~input_o\ & (\address[0]~input_o\)) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & ((\mem~26_q\))) # (!\address[0]~input_o\ & (\mem~18_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => \mem~18_q\,
	datad => \mem~26_q\,
	combout => \mem~364_combout\);

-- Location: FF_X24_Y16_N1
\mem~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[4]~input_o\,
	sload => VCC,
	ena => \mem~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~42_q\);

-- Location: LCCOMB_X23_Y18_N28
\mem~34feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~34feeder_combout\ = \data_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[4]~input_o\,
	combout => \mem~34feeder_combout\);

-- Location: FF_X23_Y18_N29
\mem~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~34feeder_combout\,
	ena => \mem~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~34_q\);

-- Location: LCCOMB_X24_Y16_N0
\mem~365\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~365_combout\ = (\mem~364_combout\ & (((\mem~42_q\)) # (!\address[1]~input_o\))) # (!\mem~364_combout\ & (\address[1]~input_o\ & ((\mem~34_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~364_combout\,
	datab => \address[1]~input_o\,
	datac => \mem~42_q\,
	datad => \mem~34_q\,
	combout => \mem~365_combout\);

-- Location: LCCOMB_X24_Y16_N2
\mem~366\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~366_combout\ = (\address[2]~input_o\ & ((\address[3]~input_o\) # ((\mem~363_combout\)))) # (!\address[2]~input_o\ & (!\address[3]~input_o\ & ((\mem~365_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[3]~input_o\,
	datac => \mem~363_combout\,
	datad => \mem~365_combout\,
	combout => \mem~366_combout\);

-- Location: LCCOMB_X24_Y16_N20
\mem~369\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~369_combout\ = (\address[3]~input_o\ & ((\mem~366_combout\ & ((\mem~368_combout\))) # (!\mem~366_combout\ & (\mem~361_combout\)))) # (!\address[3]~input_o\ & (((\mem~366_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~361_combout\,
	datab => \address[3]~input_o\,
	datac => \mem~368_combout\,
	datad => \mem~366_combout\,
	combout => \mem~369_combout\);

-- Location: LCCOMB_X25_Y14_N12
\data_out~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_out~6_combout\ = (\data_out~1_combout\) # ((\address[4]~input_o\ & (\mem~359_combout\)) # (!\address[4]~input_o\ & ((\mem~369_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out~1_combout\,
	datab => \address[4]~input_o\,
	datac => \mem~359_combout\,
	datad => \mem~369_combout\,
	combout => \data_out~6_combout\);

-- Location: FF_X25_Y14_N13
\data_out[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data_out~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[4]~reg0_q\);

-- Location: IOIBUF_X22_Y31_N8
\data_in[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(5),
	o => \data_in[5]~input_o\);

-- Location: LCCOMB_X23_Y16_N28
\mem~613\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~613_combout\ = !\data_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[5]~input_o\,
	combout => \mem~613_combout\);

-- Location: FF_X23_Y16_N29
\mem~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~613_combout\,
	ena => \mem~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~75_q\);

-- Location: LCCOMB_X23_Y15_N4
\mem~612\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~612_combout\ = !\data_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[5]~input_o\,
	combout => \mem~612_combout\);

-- Location: FF_X23_Y15_N7
\mem~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~612_combout\,
	sload => VCC,
	ena => \mem~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~67_q\);

-- Location: FF_X23_Y15_N25
\mem~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[5]~input_o\,
	sload => VCC,
	ena => \mem~468_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~51_q\);

-- Location: LCCOMB_X22_Y16_N4
\mem~59feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~59feeder_combout\ = \data_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[5]~input_o\,
	combout => \mem~59feeder_combout\);

-- Location: FF_X22_Y16_N5
\mem~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~59feeder_combout\,
	ena => \mem~466_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~59_q\);

-- Location: LCCOMB_X23_Y15_N24
\mem~380\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~380_combout\ = (\address[1]~input_o\ & (\address[0]~input_o\)) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & ((\mem~59_q\))) # (!\address[0]~input_o\ & (\mem~51_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => \mem~51_q\,
	datad => \mem~59_q\,
	combout => \mem~380_combout\);

-- Location: LCCOMB_X23_Y15_N6
\mem~381\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~381_combout\ = (\address[1]~input_o\ & ((\mem~380_combout\ & (!\mem~75_q\)) # (!\mem~380_combout\ & ((!\mem~67_q\))))) # (!\address[1]~input_o\ & (((\mem~380_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \mem~75_q\,
	datac => \mem~67_q\,
	datad => \mem~380_combout\,
	combout => \mem~381_combout\);

-- Location: LCCOMB_X27_Y17_N22
\mem~618\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~618_combout\ = !\data_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[5]~input_o\,
	combout => \mem~618_combout\);

-- Location: FF_X27_Y17_N23
\mem~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~618_combout\,
	ena => \mem~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~131_q\);

-- Location: LCCOMB_X25_Y16_N18
\mem~621\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~621_combout\ = !\data_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[5]~input_o\,
	combout => \mem~621_combout\);

-- Location: FF_X26_Y17_N7
\mem~139\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~621_combout\,
	sload => VCC,
	ena => \mem~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~139_q\);

-- Location: LCCOMB_X26_Y19_N8
\mem~620\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~620_combout\ = !\data_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[5]~input_o\,
	combout => \mem~620_combout\);

-- Location: FF_X26_Y17_N29
\mem~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~620_combout\,
	sload => VCC,
	ena => \mem~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~115_q\);

-- Location: LCCOMB_X27_Y17_N24
\mem~619\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~619_combout\ = !\data_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[5]~input_o\,
	combout => \mem~619_combout\);

-- Location: FF_X27_Y17_N25
\mem~123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~619_combout\,
	ena => \mem~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~123_q\);

-- Location: LCCOMB_X26_Y17_N28
\mem~387\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~387_combout\ = (\address[1]~input_o\ & (\address[0]~input_o\)) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & ((!\mem~123_q\))) # (!\address[0]~input_o\ & (!\mem~115_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => \mem~115_q\,
	datad => \mem~123_q\,
	combout => \mem~387_combout\);

-- Location: LCCOMB_X26_Y17_N6
\mem~388\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~388_combout\ = (\address[1]~input_o\ & ((\mem~387_combout\ & ((!\mem~139_q\))) # (!\mem~387_combout\ & (!\mem~131_q\)))) # (!\address[1]~input_o\ & (((\mem~387_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \mem~131_q\,
	datac => \mem~139_q\,
	datad => \mem~387_combout\,
	combout => \mem~388_combout\);

-- Location: LCCOMB_X25_Y16_N8
\mem~27feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~27feeder_combout\ = \data_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[5]~input_o\,
	combout => \mem~27feeder_combout\);

-- Location: FF_X25_Y16_N9
\mem~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~27feeder_combout\,
	ena => \mem~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~27_q\);

-- Location: FF_X24_Y15_N15
\mem~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[5]~input_o\,
	sload => VCC,
	ena => \mem~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~43_q\);

-- Location: FF_X23_Y18_N1
\mem~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[5]~input_o\,
	sload => VCC,
	ena => \mem~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~19_q\);

-- Location: FF_X23_Y18_N3
\mem~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[5]~input_o\,
	sload => VCC,
	ena => \mem~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~35_q\);

-- Location: LCCOMB_X23_Y18_N0
\mem~384\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~384_combout\ = (\address[0]~input_o\ & (\address[1]~input_o\)) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & ((\mem~35_q\))) # (!\address[1]~input_o\ & (\mem~19_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \mem~19_q\,
	datad => \mem~35_q\,
	combout => \mem~384_combout\);

-- Location: LCCOMB_X24_Y15_N14
\mem~385\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~385_combout\ = (\address[0]~input_o\ & ((\mem~384_combout\ & ((\mem~43_q\))) # (!\mem~384_combout\ & (\mem~27_q\)))) # (!\address[0]~input_o\ & (((\mem~384_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \mem~27_q\,
	datac => \mem~43_q\,
	datad => \mem~384_combout\,
	combout => \mem~385_combout\);

-- Location: LCCOMB_X21_Y17_N30
\mem~614\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~614_combout\ = !\data_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[5]~input_o\,
	combout => \mem~614_combout\);

-- Location: FF_X21_Y17_N31
\mem~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~614_combout\,
	ena => \mem~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~91_q\);

-- Location: LCCOMB_X23_Y17_N26
\mem~617\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~617_combout\ = !\data_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[5]~input_o\,
	combout => \mem~617_combout\);

-- Location: FF_X22_Y17_N11
\mem~107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~617_combout\,
	sload => VCC,
	ena => \mem~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~107_q\);

-- Location: LCCOMB_X22_Y17_N2
\mem~616\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~616_combout\ = !\data_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[5]~input_o\,
	combout => \mem~616_combout\);

-- Location: FF_X22_Y17_N13
\mem~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~616_combout\,
	sload => VCC,
	ena => \mem~464_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~83_q\);

-- Location: LCCOMB_X23_Y17_N4
\mem~615\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~615_combout\ = !\data_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[5]~input_o\,
	combout => \mem~615_combout\);

-- Location: FF_X23_Y17_N5
\mem~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~615_combout\,
	ena => \mem~462_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~99_q\);

-- Location: LCCOMB_X22_Y17_N12
\mem~382\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~382_combout\ = (\address[1]~input_o\ & ((\address[0]~input_o\) # ((!\mem~99_q\)))) # (!\address[1]~input_o\ & (!\address[0]~input_o\ & (!\mem~83_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => \mem~83_q\,
	datad => \mem~99_q\,
	combout => \mem~382_combout\);

-- Location: LCCOMB_X22_Y17_N10
\mem~383\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~383_combout\ = (\address[0]~input_o\ & ((\mem~382_combout\ & ((!\mem~107_q\))) # (!\mem~382_combout\ & (!\mem~91_q\)))) # (!\address[0]~input_o\ & (((\mem~382_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \mem~91_q\,
	datac => \mem~107_q\,
	datad => \mem~382_combout\,
	combout => \mem~383_combout\);

-- Location: LCCOMB_X24_Y15_N28
\mem~386\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~386_combout\ = (\address[2]~input_o\ & (\address[3]~input_o\)) # (!\address[2]~input_o\ & ((\address[3]~input_o\ & ((\mem~383_combout\))) # (!\address[3]~input_o\ & (\mem~385_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[3]~input_o\,
	datac => \mem~385_combout\,
	datad => \mem~383_combout\,
	combout => \mem~386_combout\);

-- Location: LCCOMB_X24_Y15_N30
\mem~389\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~389_combout\ = (\address[2]~input_o\ & ((\mem~386_combout\ & ((\mem~388_combout\))) # (!\mem~386_combout\ & (\mem~381_combout\)))) # (!\address[2]~input_o\ & (((\mem~386_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \mem~381_combout\,
	datac => \mem~388_combout\,
	datad => \mem~386_combout\,
	combout => \mem~389_combout\);

-- Location: LCCOMB_X24_Y18_N28
\mem~609\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~609_combout\ = !\data_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[5]~input_o\,
	combout => \mem~609_combout\);

-- Location: FF_X24_Y18_N29
\mem~203\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~609_combout\,
	ena => \mem~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~203_q\);

-- Location: FF_X25_Y18_N3
\mem~267\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[5]~input_o\,
	sload => VCC,
	ena => \mem~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~267_q\);

-- Location: LCCOMB_X24_Y18_N0
\mem~611\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~611_combout\ = !\data_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[5]~input_o\,
	combout => \mem~611_combout\);

-- Location: FF_X25_Y18_N21
\mem~171\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~611_combout\,
	sload => VCC,
	ena => \mem~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~171_q\);

-- Location: LCCOMB_X26_Y18_N4
\mem~610\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~610_combout\ = !\data_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[5]~input_o\,
	combout => \mem~610_combout\);

-- Location: FF_X26_Y18_N5
\mem~235\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~610_combout\,
	ena => \mem~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~235_q\);

-- Location: LCCOMB_X25_Y18_N20
\mem~377\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~377_combout\ = (\address[2]~input_o\ & (\address[3]~input_o\)) # (!\address[2]~input_o\ & ((\address[3]~input_o\ & ((!\mem~235_q\))) # (!\address[3]~input_o\ & (!\mem~171_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[3]~input_o\,
	datac => \mem~171_q\,
	datad => \mem~235_q\,
	combout => \mem~377_combout\);

-- Location: LCCOMB_X25_Y18_N2
\mem~378\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~378_combout\ = (\address[2]~input_o\ & ((\mem~377_combout\ & ((\mem~267_q\))) # (!\mem~377_combout\ & (!\mem~203_q\)))) # (!\address[2]~input_o\ & (((\mem~377_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \mem~203_q\,
	datac => \mem~267_q\,
	datad => \mem~377_combout\,
	combout => \mem~378_combout\);

-- Location: LCCOMB_X22_Y15_N14
\mem~601\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~601_combout\ = !\data_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[5]~input_o\,
	combout => \mem~601_combout\);

-- Location: FF_X22_Y15_N15
\mem~251\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~601_combout\,
	ena => \mem~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~251_q\);

-- Location: LCCOMB_X22_Y15_N28
\mem~598\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~598_combout\ = !\data_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[5]~input_o\,
	combout => \mem~598_combout\);

-- Location: FF_X22_Y15_N29
\mem~187\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~598_combout\,
	ena => \mem~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~187_q\);

-- Location: LCCOMB_X23_Y14_N26
\mem~600\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~600_combout\ = !\data_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[5]~input_o\,
	combout => \mem~600_combout\);

-- Location: FF_X23_Y14_N7
\mem~155\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~600_combout\,
	sload => VCC,
	ena => \mem~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~155_q\);

-- Location: LCCOMB_X22_Y14_N8
\mem~599\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~599_combout\ = !\data_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[5]~input_o\,
	combout => \mem~599_combout\);

-- Location: FF_X22_Y14_N9
\mem~219\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~599_combout\,
	ena => \mem~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~219_q\);

-- Location: LCCOMB_X23_Y14_N6
\mem~370\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~370_combout\ = (\address[3]~input_o\ & ((\address[2]~input_o\) # ((!\mem~219_q\)))) # (!\address[3]~input_o\ & (!\address[2]~input_o\ & (!\mem~155_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \address[2]~input_o\,
	datac => \mem~155_q\,
	datad => \mem~219_q\,
	combout => \mem~370_combout\);

-- Location: LCCOMB_X23_Y15_N0
\mem~371\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~371_combout\ = (\address[2]~input_o\ & ((\mem~370_combout\ & (!\mem~251_q\)) # (!\mem~370_combout\ & ((!\mem~187_q\))))) # (!\address[2]~input_o\ & (((\mem~370_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~251_q\,
	datab => \mem~187_q\,
	datac => \address[2]~input_o\,
	datad => \mem~370_combout\,
	combout => \mem~371_combout\);

-- Location: LCCOMB_X26_Y15_N28
\mem~605\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~605_combout\ = !\data_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[5]~input_o\,
	combout => \mem~605_combout\);

-- Location: FF_X26_Y15_N29
\mem~211\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~605_combout\,
	ena => \mem~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~211_q\);

-- Location: LCCOMB_X23_Y15_N30
\mem~608\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~608_combout\ = !\data_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[5]~input_o\,
	combout => \mem~608_combout\);

-- Location: FF_X25_Y15_N11
\mem~243\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~608_combout\,
	sload => VCC,
	ena => \mem~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~243_q\);

-- Location: LCCOMB_X26_Y14_N2
\mem~607\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~607_combout\ = !\data_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[5]~input_o\,
	combout => \mem~607_combout\);

-- Location: FF_X25_Y15_N29
\mem~147\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~607_combout\,
	sload => VCC,
	ena => \mem~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~147_q\);

-- Location: LCCOMB_X26_Y15_N26
\mem~606\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~606_combout\ = !\data_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[5]~input_o\,
	combout => \mem~606_combout\);

-- Location: FF_X26_Y15_N27
\mem~179\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~606_combout\,
	ena => \mem~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~179_q\);

-- Location: LCCOMB_X25_Y15_N28
\mem~374\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~374_combout\ = (\address[3]~input_o\ & (\address[2]~input_o\)) # (!\address[3]~input_o\ & ((\address[2]~input_o\ & ((!\mem~179_q\))) # (!\address[2]~input_o\ & (!\mem~147_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \address[2]~input_o\,
	datac => \mem~147_q\,
	datad => \mem~179_q\,
	combout => \mem~374_combout\);

-- Location: LCCOMB_X25_Y15_N10
\mem~375\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~375_combout\ = (\address[3]~input_o\ & ((\mem~374_combout\ & ((!\mem~243_q\))) # (!\mem~374_combout\ & (!\mem~211_q\)))) # (!\address[3]~input_o\ & (((\mem~374_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \mem~211_q\,
	datac => \mem~243_q\,
	datad => \mem~374_combout\,
	combout => \mem~375_combout\);

-- Location: LCCOMB_X22_Y14_N22
\mem~602\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~602_combout\ = !\data_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[5]~input_o\,
	combout => \mem~602_combout\);

-- Location: FF_X22_Y14_N23
\mem~227\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~602_combout\,
	ena => \mem~433_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~227_q\);

-- Location: FF_X21_Y14_N15
\mem~259\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[5]~input_o\,
	sload => VCC,
	ena => \mem~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~259_q\);

-- Location: LCCOMB_X21_Y14_N4
\mem~604\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~604_combout\ = !\data_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[5]~input_o\,
	combout => \mem~604_combout\);

-- Location: FF_X21_Y14_N29
\mem~163\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~604_combout\,
	sload => VCC,
	ena => \mem~435_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~163_q\);

-- Location: LCCOMB_X20_Y14_N28
\mem~603\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~603_combout\ = !\data_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[5]~input_o\,
	combout => \mem~603_combout\);

-- Location: FF_X20_Y14_N29
\mem~195\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~603_combout\,
	ena => \mem~431_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~195_q\);

-- Location: LCCOMB_X21_Y14_N28
\mem~372\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~372_combout\ = (\address[2]~input_o\ & ((\address[3]~input_o\) # ((!\mem~195_q\)))) # (!\address[2]~input_o\ & (!\address[3]~input_o\ & (!\mem~163_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[3]~input_o\,
	datac => \mem~163_q\,
	datad => \mem~195_q\,
	combout => \mem~372_combout\);

-- Location: LCCOMB_X21_Y14_N14
\mem~373\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~373_combout\ = (\address[3]~input_o\ & ((\mem~372_combout\ & ((\mem~259_q\))) # (!\mem~372_combout\ & (!\mem~227_q\)))) # (!\address[3]~input_o\ & (((\mem~372_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \mem~227_q\,
	datac => \mem~259_q\,
	datad => \mem~372_combout\,
	combout => \mem~373_combout\);

-- Location: LCCOMB_X24_Y15_N18
\mem~376\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~376_combout\ = (\address[0]~input_o\ & (\address[1]~input_o\)) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & ((\mem~373_combout\))) # (!\address[1]~input_o\ & (\mem~375_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \mem~375_combout\,
	datad => \mem~373_combout\,
	combout => \mem~376_combout\);

-- Location: LCCOMB_X24_Y15_N16
\mem~379\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~379_combout\ = (\address[0]~input_o\ & ((\mem~376_combout\ & (\mem~378_combout\)) # (!\mem~376_combout\ & ((\mem~371_combout\))))) # (!\address[0]~input_o\ & (((\mem~376_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~378_combout\,
	datab => \address[0]~input_o\,
	datac => \mem~371_combout\,
	datad => \mem~376_combout\,
	combout => \mem~379_combout\);

-- Location: LCCOMB_X24_Y15_N10
\data_out~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_out~7_combout\ = (\data_out~1_combout\) # ((\address[4]~input_o\ & ((\mem~379_combout\))) # (!\address[4]~input_o\ & (\mem~389_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[4]~input_o\,
	datab => \data_out~1_combout\,
	datac => \mem~389_combout\,
	datad => \mem~379_combout\,
	combout => \data_out~7_combout\);

-- Location: FF_X24_Y15_N11
\data_out[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data_out~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[5]~reg0_q\);

-- Location: IOIBUF_X33_Y15_N8
\data_in[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(6),
	o => \data_in[6]~input_o\);

-- Location: LCCOMB_X27_Y18_N4
\mem~642\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~642_combout\ = !\data_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[6]~input_o\,
	combout => \mem~642_combout\);

-- Location: LCCOMB_X26_Y18_N0
\mem~124feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~124feeder_combout\ = \mem~642_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem~642_combout\,
	combout => \mem~124feeder_combout\);

-- Location: FF_X26_Y18_N1
\mem~124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~124feeder_combout\,
	ena => \mem~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~124_q\);

-- Location: LCCOMB_X26_Y16_N22
\mem~645\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~645_combout\ = !\data_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[6]~input_o\,
	combout => \mem~645_combout\);

-- Location: FF_X26_Y16_N29
\mem~140\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~645_combout\,
	sload => VCC,
	ena => \mem~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~140_q\);

-- Location: LCCOMB_X25_Y16_N0
\mem~644\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~644_combout\ = !\data_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[6]~input_o\,
	combout => \mem~644_combout\);

-- Location: FF_X26_Y16_N3
\mem~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~644_combout\,
	sload => VCC,
	ena => \mem~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~116_q\);

-- Location: LCCOMB_X27_Y17_N26
\mem~643\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~643_combout\ = !\data_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[6]~input_o\,
	combout => \mem~643_combout\);

-- Location: FF_X27_Y17_N27
\mem~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~643_combout\,
	ena => \mem~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~132_q\);

-- Location: LCCOMB_X26_Y16_N2
\mem~407\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~407_combout\ = (\address[1]~input_o\ & ((\address[0]~input_o\) # ((!\mem~132_q\)))) # (!\address[1]~input_o\ & (!\address[0]~input_o\ & (!\mem~116_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => \mem~116_q\,
	datad => \mem~132_q\,
	combout => \mem~407_combout\);

-- Location: LCCOMB_X26_Y16_N28
\mem~408\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~408_combout\ = (\address[0]~input_o\ & ((\mem~407_combout\ & ((!\mem~140_q\))) # (!\mem~407_combout\ & (!\mem~124_q\)))) # (!\address[0]~input_o\ & (((\mem~407_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~124_q\,
	datab => \address[0]~input_o\,
	datac => \mem~140_q\,
	datad => \mem~407_combout\,
	combout => \mem~408_combout\);

-- Location: LCCOMB_X25_Y17_N2
\mem~639\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~639_combout\ = !\data_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[6]~input_o\,
	combout => \mem~639_combout\);

-- Location: FF_X25_Y17_N3
\mem~108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~639_combout\,
	ena => \mem~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~108_q\);

-- Location: LCCOMB_X27_Y18_N30
\mem~636\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~636_combout\ = !\data_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[6]~input_o\,
	combout => \mem~636_combout\);

-- Location: FF_X23_Y17_N11
\mem~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~636_combout\,
	sload => VCC,
	ena => \mem~462_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~100_q\);

-- Location: LCCOMB_X22_Y18_N12
\mem~638\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~638_combout\ = !\data_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[6]~input_o\,
	combout => \mem~638_combout\);

-- Location: FF_X22_Y17_N9
\mem~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~638_combout\,
	sload => VCC,
	ena => \mem~464_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~84_q\);

-- Location: LCCOMB_X21_Y17_N20
\mem~637\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~637_combout\ = !\data_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[6]~input_o\,
	combout => \mem~637_combout\);

-- Location: FF_X21_Y17_N21
\mem~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~637_combout\,
	ena => \mem~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~92_q\);

-- Location: LCCOMB_X22_Y17_N8
\mem~400\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~400_combout\ = (\address[1]~input_o\ & (\address[0]~input_o\)) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & ((!\mem~92_q\))) # (!\address[0]~input_o\ & (!\mem~84_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => \mem~84_q\,
	datad => \mem~92_q\,
	combout => \mem~400_combout\);

-- Location: LCCOMB_X23_Y17_N10
\mem~401\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~401_combout\ = (\address[1]~input_o\ & ((\mem~400_combout\ & (!\mem~108_q\)) # (!\mem~400_combout\ & ((!\mem~100_q\))))) # (!\address[1]~input_o\ & (((\mem~400_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~108_q\,
	datab => \address[1]~input_o\,
	datac => \mem~100_q\,
	datad => \mem~400_combout\,
	combout => \mem~401_combout\);

-- Location: FF_X24_Y16_N11
\mem~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[6]~input_o\,
	sload => VCC,
	ena => \mem~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~20_q\);

-- Location: LCCOMB_X25_Y16_N28
\mem~28feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~28feeder_combout\ = \data_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[6]~input_o\,
	combout => \mem~28feeder_combout\);

-- Location: FF_X25_Y16_N29
\mem~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~28feeder_combout\,
	ena => \mem~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~28_q\);

-- Location: LCCOMB_X24_Y16_N10
\mem~404\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~404_combout\ = (\address[1]~input_o\ & (\address[0]~input_o\)) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & ((\mem~28_q\))) # (!\address[0]~input_o\ & (\mem~20_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => \mem~20_q\,
	datad => \mem~28_q\,
	combout => \mem~404_combout\);

-- Location: FF_X24_Y16_N13
\mem~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[6]~input_o\,
	sload => VCC,
	ena => \mem~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~44_q\);

-- Location: LCCOMB_X23_Y18_N14
\mem~36feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~36feeder_combout\ = \data_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[6]~input_o\,
	combout => \mem~36feeder_combout\);

-- Location: FF_X23_Y18_N15
\mem~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~36feeder_combout\,
	ena => \mem~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~36_q\);

-- Location: LCCOMB_X24_Y16_N12
\mem~405\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~405_combout\ = (\mem~404_combout\ & (((\mem~44_q\)) # (!\address[1]~input_o\))) # (!\mem~404_combout\ & (\address[1]~input_o\ & ((\mem~36_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~404_combout\,
	datab => \address[1]~input_o\,
	datac => \mem~44_q\,
	datad => \mem~36_q\,
	combout => \mem~405_combout\);

-- Location: LCCOMB_X22_Y16_N18
\mem~60feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~60feeder_combout\ = \data_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[6]~input_o\,
	combout => \mem~60feeder_combout\);

-- Location: FF_X22_Y16_N19
\mem~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~60feeder_combout\,
	ena => \mem~466_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~60_q\);

-- Location: LCCOMB_X25_Y16_N26
\mem~641\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~641_combout\ = !\data_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[6]~input_o\,
	combout => \mem~641_combout\);

-- Location: FF_X23_Y16_N5
\mem~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~641_combout\,
	sload => VCC,
	ena => \mem~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~76_q\);

-- Location: FF_X23_Y16_N7
\mem~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[6]~input_o\,
	sload => VCC,
	ena => \mem~468_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~52_q\);

-- Location: LCCOMB_X23_Y15_N10
\mem~640\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~640_combout\ = !\data_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[6]~input_o\,
	combout => \mem~640_combout\);

-- Location: FF_X23_Y15_N11
\mem~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~640_combout\,
	ena => \mem~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~68_q\);

-- Location: LCCOMB_X23_Y16_N6
\mem~402\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~402_combout\ = (\address[1]~input_o\ & ((\address[0]~input_o\) # ((!\mem~68_q\)))) # (!\address[1]~input_o\ & (!\address[0]~input_o\ & (\mem~52_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => \mem~52_q\,
	datad => \mem~68_q\,
	combout => \mem~402_combout\);

-- Location: LCCOMB_X23_Y16_N4
\mem~403\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~403_combout\ = (\address[0]~input_o\ & ((\mem~402_combout\ & ((!\mem~76_q\))) # (!\mem~402_combout\ & (\mem~60_q\)))) # (!\address[0]~input_o\ & (((\mem~402_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \mem~60_q\,
	datac => \mem~76_q\,
	datad => \mem~402_combout\,
	combout => \mem~403_combout\);

-- Location: LCCOMB_X25_Y14_N20
\mem~406\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~406_combout\ = (\address[2]~input_o\ & ((\address[3]~input_o\) # ((\mem~403_combout\)))) # (!\address[2]~input_o\ & (!\address[3]~input_o\ & (\mem~405_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[3]~input_o\,
	datac => \mem~405_combout\,
	datad => \mem~403_combout\,
	combout => \mem~406_combout\);

-- Location: LCCOMB_X25_Y14_N26
\mem~409\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~409_combout\ = (\address[3]~input_o\ & ((\mem~406_combout\ & (\mem~408_combout\)) # (!\mem~406_combout\ & ((\mem~401_combout\))))) # (!\address[3]~input_o\ & (((\mem~406_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \mem~408_combout\,
	datac => \mem~401_combout\,
	datad => \mem~406_combout\,
	combout => \mem~409_combout\);

-- Location: LCCOMB_X25_Y16_N14
\mem~260feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~260feeder_combout\ = \data_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[6]~input_o\,
	combout => \mem~260feeder_combout\);

-- Location: FF_X25_Y16_N15
\mem~260\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~260feeder_combout\,
	ena => \mem~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~260_q\);

-- Location: LCCOMB_X26_Y14_N20
\mem~622\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~622_combout\ = !\data_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[6]~input_o\,
	combout => \mem~622_combout\);

-- Location: FF_X25_Y14_N19
\mem~196\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~622_combout\,
	sload => VCC,
	ena => \mem~431_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~196_q\);

-- Location: LCCOMB_X21_Y17_N8
\mem~624\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~624_combout\ = !\data_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[6]~input_o\,
	combout => \mem~624_combout\);

-- Location: FF_X21_Y14_N13
\mem~164\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~624_combout\,
	sload => VCC,
	ena => \mem~435_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~164_q\);

-- Location: LCCOMB_X22_Y14_N24
\mem~623\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~623_combout\ = !\data_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[6]~input_o\,
	combout => \mem~623_combout\);

-- Location: FF_X22_Y14_N25
\mem~228\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~623_combout\,
	ena => \mem~433_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~228_q\);

-- Location: LCCOMB_X21_Y14_N12
\mem~390\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~390_combout\ = (\address[2]~input_o\ & (\address[3]~input_o\)) # (!\address[2]~input_o\ & ((\address[3]~input_o\ & ((!\mem~228_q\))) # (!\address[3]~input_o\ & (!\mem~164_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[3]~input_o\,
	datac => \mem~164_q\,
	datad => \mem~228_q\,
	combout => \mem~390_combout\);

-- Location: LCCOMB_X25_Y14_N18
\mem~391\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~391_combout\ = (\address[2]~input_o\ & ((\mem~390_combout\ & (\mem~260_q\)) # (!\mem~390_combout\ & ((!\mem~196_q\))))) # (!\address[2]~input_o\ & (((\mem~390_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \mem~260_q\,
	datac => \mem~196_q\,
	datad => \mem~390_combout\,
	combout => \mem~391_combout\);

-- Location: LCCOMB_X26_Y18_N22
\mem~633\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~633_combout\ = !\data_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[6]~input_o\,
	combout => \mem~633_combout\);

-- Location: FF_X26_Y18_N23
\mem~236\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~633_combout\,
	ena => \mem~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~236_q\);

-- Location: FF_X25_Y18_N27
\mem~268\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[6]~input_o\,
	sload => VCC,
	ena => \mem~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~268_q\);

-- Location: LCCOMB_X27_Y18_N8
\mem~635\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~635_combout\ = !\data_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[6]~input_o\,
	combout => \mem~635_combout\);

-- Location: FF_X25_Y18_N13
\mem~172\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~635_combout\,
	sload => VCC,
	ena => \mem~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~172_q\);

-- Location: LCCOMB_X24_Y18_N10
\mem~634\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~634_combout\ = !\data_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[6]~input_o\,
	combout => \mem~634_combout\);

-- Location: FF_X24_Y18_N11
\mem~204\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~634_combout\,
	ena => \mem~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~204_q\);

-- Location: LCCOMB_X25_Y18_N12
\mem~397\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~397_combout\ = (\address[2]~input_o\ & ((\address[3]~input_o\) # ((!\mem~204_q\)))) # (!\address[2]~input_o\ & (!\address[3]~input_o\ & (!\mem~172_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[3]~input_o\,
	datac => \mem~172_q\,
	datad => \mem~204_q\,
	combout => \mem~397_combout\);

-- Location: LCCOMB_X25_Y18_N26
\mem~398\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~398_combout\ = (\address[3]~input_o\ & ((\mem~397_combout\ & ((\mem~268_q\))) # (!\mem~397_combout\ & (!\mem~236_q\)))) # (!\address[3]~input_o\ & (((\mem~397_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \mem~236_q\,
	datac => \mem~268_q\,
	datad => \mem~397_combout\,
	combout => \mem~398_combout\);

-- Location: LCCOMB_X22_Y14_N26
\mem~625\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~625_combout\ = !\data_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[6]~input_o\,
	combout => \mem~625_combout\);

-- Location: FF_X22_Y14_N27
\mem~220\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~625_combout\,
	ena => \mem~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~220_q\);

-- Location: LCCOMB_X23_Y14_N14
\mem~628\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~628_combout\ = !\data_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[6]~input_o\,
	combout => \mem~628_combout\);

-- Location: FF_X23_Y14_N11
\mem~252\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~628_combout\,
	sload => VCC,
	ena => \mem~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~252_q\);

-- Location: LCCOMB_X23_Y14_N12
\mem~627\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~627_combout\ = !\data_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[6]~input_o\,
	combout => \mem~627_combout\);

-- Location: FF_X23_Y14_N29
\mem~156\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~627_combout\,
	sload => VCC,
	ena => \mem~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~156_q\);

-- Location: LCCOMB_X24_Y14_N28
\mem~626\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~626_combout\ = !\data_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[6]~input_o\,
	combout => \mem~626_combout\);

-- Location: FF_X24_Y14_N29
\mem~188\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~626_combout\,
	ena => \mem~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~188_q\);

-- Location: LCCOMB_X23_Y14_N28
\mem~392\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~392_combout\ = (\address[3]~input_o\ & (\address[2]~input_o\)) # (!\address[3]~input_o\ & ((\address[2]~input_o\ & ((!\mem~188_q\))) # (!\address[2]~input_o\ & (!\mem~156_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \address[2]~input_o\,
	datac => \mem~156_q\,
	datad => \mem~188_q\,
	combout => \mem~392_combout\);

-- Location: LCCOMB_X23_Y14_N10
\mem~393\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~393_combout\ = (\address[3]~input_o\ & ((\mem~392_combout\ & ((!\mem~252_q\))) # (!\mem~392_combout\ & (!\mem~220_q\)))) # (!\address[3]~input_o\ & (((\mem~392_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~220_q\,
	datab => \address[3]~input_o\,
	datac => \mem~252_q\,
	datad => \mem~392_combout\,
	combout => \mem~393_combout\);

-- Location: LCCOMB_X27_Y17_N30
\mem~632\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~632_combout\ = !\data_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[6]~input_o\,
	combout => \mem~632_combout\);

-- Location: FF_X27_Y16_N31
\mem~244\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~632_combout\,
	sload => VCC,
	ena => \mem~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~244_q\);

-- Location: LCCOMB_X26_Y15_N8
\mem~629\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~629_combout\ = !\data_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[6]~input_o\,
	combout => \mem~629_combout\);

-- Location: FF_X26_Y15_N9
\mem~180\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~629_combout\,
	ena => \mem~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~180_q\);

-- Location: LCCOMB_X27_Y16_N4
\mem~631\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~631_combout\ = !\data_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[6]~input_o\,
	combout => \mem~631_combout\);

-- Location: FF_X27_Y16_N25
\mem~148\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~631_combout\,
	sload => VCC,
	ena => \mem~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~148_q\);

-- Location: LCCOMB_X26_Y15_N10
\mem~630\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~630_combout\ = !\data_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[6]~input_o\,
	combout => \mem~630_combout\);

-- Location: FF_X26_Y15_N11
\mem~212\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~630_combout\,
	ena => \mem~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~212_q\);

-- Location: LCCOMB_X27_Y16_N24
\mem~394\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~394_combout\ = (\address[3]~input_o\ & ((\address[2]~input_o\) # ((!\mem~212_q\)))) # (!\address[3]~input_o\ & (!\address[2]~input_o\ & (!\mem~148_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \address[2]~input_o\,
	datac => \mem~148_q\,
	datad => \mem~212_q\,
	combout => \mem~394_combout\);

-- Location: LCCOMB_X26_Y16_N16
\mem~395\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~395_combout\ = (\address[2]~input_o\ & ((\mem~394_combout\ & (!\mem~244_q\)) # (!\mem~394_combout\ & ((!\mem~180_q\))))) # (!\address[2]~input_o\ & (((\mem~394_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~244_q\,
	datab => \address[2]~input_o\,
	datac => \mem~180_q\,
	datad => \mem~394_combout\,
	combout => \mem~395_combout\);

-- Location: LCCOMB_X25_Y14_N28
\mem~396\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~396_combout\ = (\address[0]~input_o\ & ((\mem~393_combout\) # ((\address[1]~input_o\)))) # (!\address[0]~input_o\ & (((!\address[1]~input_o\ & \mem~395_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~393_combout\,
	datab => \address[0]~input_o\,
	datac => \address[1]~input_o\,
	datad => \mem~395_combout\,
	combout => \mem~396_combout\);

-- Location: LCCOMB_X25_Y14_N6
\mem~399\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~399_combout\ = (\address[1]~input_o\ & ((\mem~396_combout\ & ((\mem~398_combout\))) # (!\mem~396_combout\ & (\mem~391_combout\)))) # (!\address[1]~input_o\ & (((\mem~396_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \mem~391_combout\,
	datac => \mem~398_combout\,
	datad => \mem~396_combout\,
	combout => \mem~399_combout\);

-- Location: LCCOMB_X25_Y14_N22
\data_out~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_out~8_combout\ = (\data_out~1_combout\) # ((\address[4]~input_o\ & ((\mem~399_combout\))) # (!\address[4]~input_o\ & (\mem~409_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out~1_combout\,
	datab => \address[4]~input_o\,
	datac => \mem~409_combout\,
	datad => \mem~399_combout\,
	combout => \data_out~8_combout\);

-- Location: FF_X25_Y14_N23
\data_out[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data_out~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[6]~reg0_q\);

-- Location: IOIBUF_X33_Y14_N8
\data_in[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(7),
	o => \data_in[7]~input_o\);

-- Location: LCCOMB_X21_Y18_N0
\mem~657\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~657_combout\ = !\data_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[7]~input_o\,
	combout => \mem~657_combout\);

-- Location: FF_X21_Y18_N1
\mem~205\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~657_combout\,
	ena => \mem~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~205_q\);

-- Location: FF_X21_Y18_N31
\mem~269\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[7]~input_o\,
	sload => VCC,
	ena => \mem~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~269_q\);

-- Location: LCCOMB_X22_Y18_N22
\mem~659\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~659_combout\ = !\data_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[7]~input_o\,
	combout => \mem~659_combout\);

-- Location: FF_X22_Y18_N19
\mem~173\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~659_combout\,
	sload => VCC,
	ena => \mem~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~173_q\);

-- Location: LCCOMB_X22_Y18_N24
\mem~658\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~658_combout\ = !\data_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[7]~input_o\,
	combout => \mem~658_combout\);

-- Location: FF_X22_Y18_N25
\mem~237\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~658_combout\,
	ena => \mem~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~237_q\);

-- Location: LCCOMB_X22_Y18_N18
\mem~417\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~417_combout\ = (\address[3]~input_o\ & ((\address[2]~input_o\) # ((!\mem~237_q\)))) # (!\address[3]~input_o\ & (!\address[2]~input_o\ & (!\mem~173_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \address[2]~input_o\,
	datac => \mem~173_q\,
	datad => \mem~237_q\,
	combout => \mem~417_combout\);

-- Location: LCCOMB_X21_Y18_N30
\mem~418\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~418_combout\ = (\address[2]~input_o\ & ((\mem~417_combout\ & ((\mem~269_q\))) # (!\mem~417_combout\ & (!\mem~205_q\)))) # (!\address[2]~input_o\ & (((\mem~417_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \mem~205_q\,
	datac => \mem~269_q\,
	datad => \mem~417_combout\,
	combout => \mem~418_combout\);

-- Location: LCCOMB_X21_Y16_N20
\mem~649\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~649_combout\ = !\data_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[7]~input_o\,
	combout => \mem~649_combout\);

-- Location: FF_X21_Y16_N21
\mem~253\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~649_combout\,
	ena => \mem~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~253_q\);

-- Location: LCCOMB_X22_Y16_N22
\mem~646\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~646_combout\ = !\data_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[7]~input_o\,
	combout => \mem~646_combout\);

-- Location: FF_X22_Y16_N1
\mem~189\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~646_combout\,
	sload => VCC,
	ena => \mem~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~189_q\);

-- Location: LCCOMB_X22_Y14_N0
\mem~647\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~647_combout\ = !\data_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[7]~input_o\,
	combout => \mem~647_combout\);

-- Location: FF_X21_Y15_N7
\mem~221\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~647_combout\,
	sload => VCC,
	ena => \mem~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~221_q\);

-- Location: LCCOMB_X24_Y14_N26
\mem~648\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~648_combout\ = !\data_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[7]~input_o\,
	combout => \mem~648_combout\);

-- Location: LCCOMB_X21_Y15_N12
\mem~157feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~157feeder_combout\ = \mem~648_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem~648_combout\,
	combout => \mem~157feeder_combout\);

-- Location: FF_X21_Y15_N13
\mem~157\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~157feeder_combout\,
	ena => \mem~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~157_q\);

-- Location: LCCOMB_X21_Y15_N6
\mem~410\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~410_combout\ = (\address[3]~input_o\ & ((\address[2]~input_o\) # ((!\mem~221_q\)))) # (!\address[3]~input_o\ & (!\address[2]~input_o\ & ((!\mem~157_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \address[2]~input_o\,
	datac => \mem~221_q\,
	datad => \mem~157_q\,
	combout => \mem~410_combout\);

-- Location: LCCOMB_X22_Y16_N0
\mem~411\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~411_combout\ = (\address[2]~input_o\ & ((\mem~410_combout\ & (!\mem~253_q\)) # (!\mem~410_combout\ & ((!\mem~189_q\))))) # (!\address[2]~input_o\ & (((\mem~410_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \mem~253_q\,
	datac => \mem~189_q\,
	datad => \mem~410_combout\,
	combout => \mem~411_combout\);

-- Location: LCCOMB_X22_Y14_N16
\mem~650\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~650_combout\ = !\data_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[7]~input_o\,
	combout => \mem~650_combout\);

-- Location: FF_X22_Y14_N17
\mem~229\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~650_combout\,
	ena => \mem~433_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~229_q\);

-- Location: FF_X21_Y14_N25
\mem~261\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[7]~input_o\,
	sload => VCC,
	ena => \mem~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~261_q\);

-- Location: LCCOMB_X21_Y14_N26
\mem~652\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~652_combout\ = !\data_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[7]~input_o\,
	combout => \mem~652_combout\);

-- Location: FF_X21_Y14_N3
\mem~165\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~652_combout\,
	sload => VCC,
	ena => \mem~435_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~165_q\);

-- Location: LCCOMB_X20_Y14_N10
\mem~651\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~651_combout\ = !\data_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[7]~input_o\,
	combout => \mem~651_combout\);

-- Location: FF_X20_Y14_N11
\mem~197\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~651_combout\,
	ena => \mem~431_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~197_q\);

-- Location: LCCOMB_X21_Y14_N2
\mem~412\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~412_combout\ = (\address[2]~input_o\ & ((\address[3]~input_o\) # ((!\mem~197_q\)))) # (!\address[2]~input_o\ & (!\address[3]~input_o\ & (!\mem~165_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[3]~input_o\,
	datac => \mem~165_q\,
	datad => \mem~197_q\,
	combout => \mem~412_combout\);

-- Location: LCCOMB_X21_Y14_N24
\mem~413\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~413_combout\ = (\address[3]~input_o\ & ((\mem~412_combout\ & ((\mem~261_q\))) # (!\mem~412_combout\ & (!\mem~229_q\)))) # (!\address[3]~input_o\ & (((\mem~412_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \mem~229_q\,
	datac => \mem~261_q\,
	datad => \mem~412_combout\,
	combout => \mem~413_combout\);

-- Location: LCCOMB_X26_Y15_N16
\mem~653\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~653_combout\ = !\data_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[7]~input_o\,
	combout => \mem~653_combout\);

-- Location: FF_X26_Y15_N17
\mem~213\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~653_combout\,
	ena => \mem~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~213_q\);

-- Location: LCCOMB_X27_Y15_N4
\mem~656\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~656_combout\ = !\data_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[7]~input_o\,
	combout => \mem~656_combout\);

-- Location: FF_X27_Y15_N3
\mem~245\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~656_combout\,
	sload => VCC,
	ena => \mem~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~245_q\);

-- Location: LCCOMB_X27_Y15_N22
\mem~655\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~655_combout\ = !\data_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[7]~input_o\,
	combout => \mem~655_combout\);

-- Location: FF_X27_Y15_N13
\mem~149\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~655_combout\,
	sload => VCC,
	ena => \mem~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~149_q\);

-- Location: LCCOMB_X26_Y15_N14
\mem~654\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~654_combout\ = !\data_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[7]~input_o\,
	combout => \mem~654_combout\);

-- Location: FF_X26_Y15_N15
\mem~181\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~654_combout\,
	ena => \mem~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~181_q\);

-- Location: LCCOMB_X27_Y15_N12
\mem~414\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~414_combout\ = (\address[2]~input_o\ & ((\address[3]~input_o\) # ((!\mem~181_q\)))) # (!\address[2]~input_o\ & (!\address[3]~input_o\ & (!\mem~149_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[3]~input_o\,
	datac => \mem~149_q\,
	datad => \mem~181_q\,
	combout => \mem~414_combout\);

-- Location: LCCOMB_X27_Y15_N2
\mem~415\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~415_combout\ = (\address[3]~input_o\ & ((\mem~414_combout\ & ((!\mem~245_q\))) # (!\mem~414_combout\ & (!\mem~213_q\)))) # (!\address[3]~input_o\ & (((\mem~414_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~213_q\,
	datab => \address[3]~input_o\,
	datac => \mem~245_q\,
	datad => \mem~414_combout\,
	combout => \mem~415_combout\);

-- Location: LCCOMB_X24_Y17_N12
\mem~416\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~416_combout\ = (\address[1]~input_o\ & ((\address[0]~input_o\) # ((\mem~413_combout\)))) # (!\address[1]~input_o\ & (!\address[0]~input_o\ & ((\mem~415_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => \mem~413_combout\,
	datad => \mem~415_combout\,
	combout => \mem~416_combout\);

-- Location: LCCOMB_X24_Y17_N14
\mem~419\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~419_combout\ = (\address[0]~input_o\ & ((\mem~416_combout\ & (\mem~418_combout\)) # (!\mem~416_combout\ & ((\mem~411_combout\))))) # (!\address[0]~input_o\ & (((\mem~416_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \mem~418_combout\,
	datac => \mem~411_combout\,
	datad => \mem~416_combout\,
	combout => \mem~419_combout\);

-- Location: LCCOMB_X27_Y17_N20
\mem~666\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~666_combout\ = !\data_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[7]~input_o\,
	combout => \mem~666_combout\);

-- Location: FF_X27_Y17_N21
\mem~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~666_combout\,
	ena => \mem~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~133_q\);

-- Location: LCCOMB_X26_Y16_N8
\mem~669\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~669_combout\ = !\data_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[7]~input_o\,
	combout => \mem~669_combout\);

-- Location: FF_X26_Y16_N1
\mem~141\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~669_combout\,
	sload => VCC,
	ena => \mem~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~141_q\);

-- Location: LCCOMB_X27_Y18_N18
\mem~668\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~668_combout\ = !\data_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[7]~input_o\,
	combout => \mem~668_combout\);

-- Location: FF_X26_Y16_N19
\mem~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~668_combout\,
	sload => VCC,
	ena => \mem~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~117_q\);

-- Location: LCCOMB_X26_Y18_N10
\mem~667\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~667_combout\ = !\data_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[7]~input_o\,
	combout => \mem~667_combout\);

-- Location: FF_X26_Y18_N11
\mem~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~667_combout\,
	ena => \mem~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~125_q\);

-- Location: LCCOMB_X26_Y16_N18
\mem~427\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~427_combout\ = (\address[1]~input_o\ & (\address[0]~input_o\)) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & ((!\mem~125_q\))) # (!\address[0]~input_o\ & (!\mem~117_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => \mem~117_q\,
	datad => \mem~125_q\,
	combout => \mem~427_combout\);

-- Location: LCCOMB_X26_Y16_N0
\mem~428\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~428_combout\ = (\address[1]~input_o\ & ((\mem~427_combout\ & ((!\mem~141_q\))) # (!\mem~427_combout\ & (!\mem~133_q\)))) # (!\address[1]~input_o\ & (((\mem~427_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \mem~133_q\,
	datac => \mem~141_q\,
	datad => \mem~427_combout\,
	combout => \mem~428_combout\);

-- Location: LCCOMB_X23_Y16_N18
\mem~661\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~661_combout\ = !\data_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[7]~input_o\,
	combout => \mem~661_combout\);

-- Location: FF_X23_Y16_N19
\mem~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~661_combout\,
	ena => \mem~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~77_q\);

-- Location: LCCOMB_X23_Y15_N22
\mem~660\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~660_combout\ = !\data_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[7]~input_o\,
	combout => \mem~660_combout\);

-- Location: FF_X23_Y15_N29
\mem~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~660_combout\,
	sload => VCC,
	ena => \mem~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~69_q\);

-- Location: FF_X23_Y15_N3
\mem~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[7]~input_o\,
	sload => VCC,
	ena => \mem~468_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~53_q\);

-- Location: FF_X22_Y16_N7
\mem~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[7]~input_o\,
	sload => VCC,
	ena => \mem~466_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~61_q\);

-- Location: LCCOMB_X23_Y15_N2
\mem~420\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~420_combout\ = (\address[1]~input_o\ & (\address[0]~input_o\)) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & ((\mem~61_q\))) # (!\address[0]~input_o\ & (\mem~53_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[0]~input_o\,
	datac => \mem~53_q\,
	datad => \mem~61_q\,
	combout => \mem~420_combout\);

-- Location: LCCOMB_X23_Y15_N28
\mem~421\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~421_combout\ = (\address[1]~input_o\ & ((\mem~420_combout\ & (!\mem~77_q\)) # (!\mem~420_combout\ & ((!\mem~69_q\))))) # (!\address[1]~input_o\ & (((\mem~420_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \mem~77_q\,
	datac => \mem~69_q\,
	datad => \mem~420_combout\,
	combout => \mem~421_combout\);

-- Location: LCCOMB_X24_Y18_N20
\mem~29feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~29feeder_combout\ = \data_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[7]~input_o\,
	combout => \mem~29feeder_combout\);

-- Location: FF_X24_Y18_N21
\mem~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~29feeder_combout\,
	ena => \mem~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~29_q\);

-- Location: FF_X24_Y17_N9
\mem~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[7]~input_o\,
	sload => VCC,
	ena => \mem~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~45_q\);

-- Location: FF_X23_Y18_N27
\mem~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[7]~input_o\,
	sload => VCC,
	ena => \mem~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~21_q\);

-- Location: FF_X23_Y18_N25
\mem~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \data_in[7]~input_o\,
	sload => VCC,
	ena => \mem~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~37_q\);

-- Location: LCCOMB_X23_Y18_N26
\mem~424\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~424_combout\ = (\address[0]~input_o\ & (\address[1]~input_o\)) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & ((\mem~37_q\))) # (!\address[1]~input_o\ & (\mem~21_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \mem~21_q\,
	datad => \mem~37_q\,
	combout => \mem~424_combout\);

-- Location: LCCOMB_X24_Y17_N8
\mem~425\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~425_combout\ = (\address[0]~input_o\ & ((\mem~424_combout\ & ((\mem~45_q\))) # (!\mem~424_combout\ & (\mem~29_q\)))) # (!\address[0]~input_o\ & (((\mem~424_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~29_q\,
	datab => \address[0]~input_o\,
	datac => \mem~45_q\,
	datad => \mem~424_combout\,
	combout => \mem~425_combout\);

-- Location: LCCOMB_X25_Y17_N6
\mem~665\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~665_combout\ = !\data_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[7]~input_o\,
	combout => \mem~665_combout\);

-- Location: FF_X25_Y17_N7
\mem~109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~665_combout\,
	ena => \mem~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~109_q\);

-- Location: LCCOMB_X21_Y17_N10
\mem~662\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~662_combout\ = !\data_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[7]~input_o\,
	combout => \mem~662_combout\);

-- Location: FF_X21_Y17_N11
\mem~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~662_combout\,
	ena => \mem~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~93_q\);

-- Location: LCCOMB_X25_Y17_N26
\mem~664\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~664_combout\ = !\data_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[7]~input_o\,
	combout => \mem~664_combout\);

-- Location: FF_X25_Y17_N21
\mem~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem~664_combout\,
	sload => VCC,
	ena => \mem~464_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~85_q\);

-- Location: LCCOMB_X23_Y17_N16
\mem~663\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~663_combout\ = !\data_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_in[7]~input_o\,
	combout => \mem~663_combout\);

-- Location: FF_X23_Y17_N17
\mem~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~663_combout\,
	ena => \mem~462_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~101_q\);

-- Location: LCCOMB_X25_Y17_N20
\mem~422\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~422_combout\ = (\address[0]~input_o\ & (\address[1]~input_o\)) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & ((!\mem~101_q\))) # (!\address[1]~input_o\ & (!\mem~85_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \mem~85_q\,
	datad => \mem~101_q\,
	combout => \mem~422_combout\);

-- Location: LCCOMB_X25_Y17_N24
\mem~423\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~423_combout\ = (\address[0]~input_o\ & ((\mem~422_combout\ & (!\mem~109_q\)) # (!\mem~422_combout\ & ((!\mem~93_q\))))) # (!\address[0]~input_o\ & (((\mem~422_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~109_q\,
	datab => \address[0]~input_o\,
	datac => \mem~93_q\,
	datad => \mem~422_combout\,
	combout => \mem~423_combout\);

-- Location: LCCOMB_X24_Y17_N18
\mem~426\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~426_combout\ = (\address[3]~input_o\ & ((\address[2]~input_o\) # ((\mem~423_combout\)))) # (!\address[3]~input_o\ & (!\address[2]~input_o\ & (\mem~425_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \address[2]~input_o\,
	datac => \mem~425_combout\,
	datad => \mem~423_combout\,
	combout => \mem~426_combout\);

-- Location: LCCOMB_X24_Y17_N0
\mem~429\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~429_combout\ = (\address[2]~input_o\ & ((\mem~426_combout\ & (\mem~428_combout\)) # (!\mem~426_combout\ & ((\mem~421_combout\))))) # (!\address[2]~input_o\ & (((\mem~426_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \mem~428_combout\,
	datac => \mem~421_combout\,
	datad => \mem~426_combout\,
	combout => \mem~429_combout\);

-- Location: LCCOMB_X24_Y17_N2
\data_out~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_out~9_combout\ = (\data_out~1_combout\) # ((\address[4]~input_o\ & (\mem~419_combout\)) # (!\address[4]~input_o\ & ((\mem~429_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[4]~input_o\,
	datab => \data_out~1_combout\,
	datac => \mem~419_combout\,
	datad => \mem~429_combout\,
	combout => \data_out~9_combout\);

-- Location: FF_X24_Y17_N3
\data_out[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data_out~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[7]~reg0_q\);

ww_data_out(0) <= \data_out[0]~output_o\;

ww_data_out(1) <= \data_out[1]~output_o\;

ww_data_out(2) <= \data_out[2]~output_o\;

ww_data_out(3) <= \data_out[3]~output_o\;

ww_data_out(4) <= \data_out[4]~output_o\;

ww_data_out(5) <= \data_out[5]~output_o\;

ww_data_out(6) <= \data_out[6]~output_o\;

ww_data_out(7) <= \data_out[7]~output_o\;
END structure;


