-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.0.0 Build 595 04/25/2017 SJ Lite Edition"

-- DATE "01/27/2023 20:14:32"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	pilot IS
    PORT (
	clk : IN std_logic;
	reset_n : IN std_logic;
	tx_enable : IN std_logic;
	tx_data_in : IN std_logic_vector(7 DOWNTO 0);
	rx_data_out : OUT std_logic_vector(7 DOWNTO 0);
	rx : IN std_logic;
	tx : OUT std_logic
	);
END pilot;

-- Design Ports Information
-- rx_data_out[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data_out[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data_out[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data_out[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data_out[4]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data_out[5]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data_out[6]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data_out[7]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_n	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data_in[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data_in[5]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data_in[4]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data_in[7]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data_in[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data_in[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data_in[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data_in[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_enable	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF pilot IS
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
SIGNAL ww_reset_n : std_logic;
SIGNAL ww_tx_enable : std_logic;
SIGNAL ww_tx_data_in : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_rx_data_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_rx : std_logic;
SIGNAL ww_tx : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \rx_data_out[0]~output_o\ : std_logic;
SIGNAL \rx_data_out[1]~output_o\ : std_logic;
SIGNAL \rx_data_out[2]~output_o\ : std_logic;
SIGNAL \rx_data_out[3]~output_o\ : std_logic;
SIGNAL \rx_data_out[4]~output_o\ : std_logic;
SIGNAL \rx_data_out[5]~output_o\ : std_logic;
SIGNAL \rx_data_out[6]~output_o\ : std_logic;
SIGNAL \rx_data_out[7]~output_o\ : std_logic;
SIGNAL \tx~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \reset_n~input_o\ : std_logic;
SIGNAL \rx~input_o\ : std_logic;
SIGNAL \UART_transceiver|rx_module|rx_etat~11_combout\ : std_logic;
SIGNAL \UART_transceiver|B_rate|countx16[0]~9_combout\ : std_logic;
SIGNAL \UART_transceiver|B_rate|countx16[0]~10\ : std_logic;
SIGNAL \UART_transceiver|B_rate|countx16[1]~11_combout\ : std_logic;
SIGNAL \UART_transceiver|B_rate|countx16[1]~12\ : std_logic;
SIGNAL \UART_transceiver|B_rate|countx16[2]~13_combout\ : std_logic;
SIGNAL \UART_transceiver|B_rate|countx16[2]~14\ : std_logic;
SIGNAL \UART_transceiver|B_rate|countx16[3]~15_combout\ : std_logic;
SIGNAL \UART_transceiver|B_rate|countx16[3]~16\ : std_logic;
SIGNAL \UART_transceiver|B_rate|countx16[4]~17_combout\ : std_logic;
SIGNAL \UART_transceiver|B_rate|countx16[4]~18\ : std_logic;
SIGNAL \UART_transceiver|B_rate|countx16[5]~19_combout\ : std_logic;
SIGNAL \UART_transceiver|B_rate|countx16[5]~20\ : std_logic;
SIGNAL \UART_transceiver|B_rate|countx16[6]~21_combout\ : std_logic;
SIGNAL \UART_transceiver|B_rate|countx16[6]~22\ : std_logic;
SIGNAL \UART_transceiver|B_rate|countx16[7]~23_combout\ : std_logic;
SIGNAL \UART_transceiver|B_rate|countx16[7]~24\ : std_logic;
SIGNAL \UART_transceiver|B_rate|countx16[8]~25_combout\ : std_logic;
SIGNAL \UART_transceiver|B_rate|LessThan1~0_combout\ : std_logic;
SIGNAL \UART_transceiver|B_rate|LessThan1~1_combout\ : std_logic;
SIGNAL \UART_transceiver|B_rate|LessThan1~2_combout\ : std_logic;
SIGNAL \UART_transceiver|B_rate|tickx16~feeder_combout\ : std_logic;
SIGNAL \UART_transceiver|B_rate|tickx16~q\ : std_logic;
SIGNAL \UART_transceiver|rx_module|rx_etat~17_combout\ : std_logic;
SIGNAL \UART_transceiver|rx_module|rx_etat.stop~q\ : std_logic;
SIGNAL \UART_transceiver|rx_module|rx_etat~21_combout\ : std_logic;
SIGNAL \UART_transceiver|rx_module|rx_etat~22_combout\ : std_logic;
SIGNAL \UART_transceiver|rx_module|rx_etat.Idle~q\ : std_logic;
SIGNAL \UART_transceiver|rx_module|rx_etat~15_combout\ : std_logic;
SIGNAL \UART_transceiver|rx_module|rx_etat~12_combout\ : std_logic;
SIGNAL \UART_transceiver|rx_module|machineAetat:bit_duration[2]~0_combout\ : std_logic;
SIGNAL \UART_transceiver|rx_module|machineAetat:bit_duration[2]~1_combout\ : std_logic;
SIGNAL \UART_transceiver|rx_module|Add0~0_combout\ : std_logic;
SIGNAL \UART_transceiver|rx_module|machineAetat:bit_duration[3]~2_combout\ : std_logic;
SIGNAL \UART_transceiver|rx_module|machineAetat:bit_duration[3]~q\ : std_logic;
SIGNAL \UART_transceiver|rx_module|Equal0~0_combout\ : std_logic;
SIGNAL \UART_transceiver|rx_module|machineAetat:bit_duration[3]~0_combout\ : std_logic;
SIGNAL \UART_transceiver|rx_module|machineAetat:bit_duration[3]~1_combout\ : std_logic;
SIGNAL \UART_transceiver|rx_module|machineAetat:bit_duration[0]~0_combout\ : std_logic;
SIGNAL \UART_transceiver|rx_module|machineAetat:bit_duration[0]~q\ : std_logic;
SIGNAL \UART_transceiver|rx_module|machineAetat:bit_duration[1]~0_combout\ : std_logic;
SIGNAL \UART_transceiver|rx_module|machineAetat:bit_duration[1]~q\ : std_logic;
SIGNAL \UART_transceiver|rx_module|Add0~1_combout\ : std_logic;
SIGNAL \UART_transceiver|rx_module|machineAetat:bit_duration[2]~2_combout\ : std_logic;
SIGNAL \UART_transceiver|rx_module|machineAetat:bit_duration[2]~q\ : std_logic;
SIGNAL \UART_transceiver|rx_module|Equal2~0_combout\ : std_logic;
SIGNAL \UART_transceiver|rx_module|rx_etat~13_combout\ : std_logic;
SIGNAL \UART_transceiver|rx_module|rx_etat~10_combout\ : std_logic;
SIGNAL \UART_transceiver|rx_module|bit_counter~0_combout\ : std_logic;
SIGNAL \UART_transceiver|rx_module|Selector14~0_combout\ : std_logic;
SIGNAL \UART_transceiver|rx_module|rx_out_temp[7]~0_combout\ : std_logic;
SIGNAL \UART_transceiver|rx_module|machineAetat:bit_counter[0]~q\ : std_logic;
SIGNAL \UART_transceiver|rx_module|Selector13~2_combout\ : std_logic;
SIGNAL \UART_transceiver|rx_module|Selector13~3_combout\ : std_logic;
SIGNAL \UART_transceiver|rx_module|machineAetat:bit_counter[1]~q\ : std_logic;
SIGNAL \UART_transceiver|rx_module|Selector12~0_combout\ : std_logic;
SIGNAL \UART_transceiver|rx_module|Selector12~1_combout\ : std_logic;
SIGNAL \UART_transceiver|rx_module|machineAetat:bit_counter[2]~q\ : std_logic;
SIGNAL \UART_transceiver|rx_module|rx_etat~14_combout\ : std_logic;
SIGNAL \UART_transceiver|rx_module|rx_etat~16_combout\ : std_logic;
SIGNAL \UART_transceiver|rx_module|rx_etat~18_combout\ : std_logic;
SIGNAL \UART_transceiver|rx_module|rx_etat.data~q\ : std_logic;
SIGNAL \UART_transceiver|rx_module|rx_etat~19_combout\ : std_logic;
SIGNAL \UART_transceiver|rx_module|rx_etat~20_combout\ : std_logic;
SIGNAL \UART_transceiver|rx_module|rx_etat.start~q\ : std_logic;
SIGNAL \UART_transceiver|rx_module|Decoder0~0_combout\ : std_logic;
SIGNAL \UART_transceiver|rx_module|Selector7~2_combout\ : std_logic;
SIGNAL \UART_transceiver|rx_module|Selector7~3_combout\ : std_logic;
SIGNAL \UART_transceiver|rx_module|rx_out~0_combout\ : std_logic;
SIGNAL \UART_transceiver|rx_module|rx_out[0]~1_combout\ : std_logic;
SIGNAL \UART_transceiver|rx_module|rx_out[0]~2_combout\ : std_logic;
SIGNAL \UART_transceiver|rx_module|Decoder0~1_combout\ : std_logic;
SIGNAL \UART_transceiver|rx_module|Selector6~2_combout\ : std_logic;
SIGNAL \UART_transceiver|rx_module|Selector6~3_combout\ : std_logic;
SIGNAL \UART_transceiver|rx_module|rx_out~3_combout\ : std_logic;
SIGNAL \UART_transceiver|rx_module|Decoder0~2_combout\ : std_logic;
SIGNAL \UART_transceiver|rx_module|Selector5~2_combout\ : std_logic;
SIGNAL \UART_transceiver|rx_module|Selector5~3_combout\ : std_logic;
SIGNAL \UART_transceiver|rx_module|rx_out~4_combout\ : std_logic;
SIGNAL \UART_transceiver|rx_module|Decoder0~3_combout\ : std_logic;
SIGNAL \UART_transceiver|rx_module|Selector4~2_combout\ : std_logic;
SIGNAL \UART_transceiver|rx_module|Selector4~3_combout\ : std_logic;
SIGNAL \UART_transceiver|rx_module|rx_out~5_combout\ : std_logic;
SIGNAL \UART_transceiver|rx_module|Selector3~2_combout\ : std_logic;
SIGNAL \UART_transceiver|rx_module|Selector3~3_combout\ : std_logic;
SIGNAL \UART_transceiver|rx_module|Selector3~4_combout\ : std_logic;
SIGNAL \UART_transceiver|rx_module|rx_out~6_combout\ : std_logic;
SIGNAL \UART_transceiver|rx_module|Decoder0~4_combout\ : std_logic;
SIGNAL \UART_transceiver|rx_module|Selector2~2_combout\ : std_logic;
SIGNAL \UART_transceiver|rx_module|Selector2~3_combout\ : std_logic;
SIGNAL \UART_transceiver|rx_module|rx_out~7_combout\ : std_logic;
SIGNAL \UART_transceiver|rx_module|Decoder0~5_combout\ : std_logic;
SIGNAL \UART_transceiver|rx_module|Selector1~2_combout\ : std_logic;
SIGNAL \UART_transceiver|rx_module|Selector1~3_combout\ : std_logic;
SIGNAL \UART_transceiver|rx_module|rx_out~8_combout\ : std_logic;
SIGNAL \UART_transceiver|rx_module|Decoder0~6_combout\ : std_logic;
SIGNAL \UART_transceiver|rx_module|Selector0~2_combout\ : std_logic;
SIGNAL \UART_transceiver|rx_module|Selector0~3_combout\ : std_logic;
SIGNAL \UART_transceiver|rx_module|rx_out~9_combout\ : std_logic;
SIGNAL \UART_transceiver|B_rate|countx1[0]~13_combout\ : std_logic;
SIGNAL \UART_transceiver|B_rate|countx1[0]~14\ : std_logic;
SIGNAL \UART_transceiver|B_rate|countx1[1]~15_combout\ : std_logic;
SIGNAL \UART_transceiver|B_rate|countx1[1]~16\ : std_logic;
SIGNAL \UART_transceiver|B_rate|countx1[2]~17_combout\ : std_logic;
SIGNAL \UART_transceiver|B_rate|countx1[2]~18\ : std_logic;
SIGNAL \UART_transceiver|B_rate|countx1[3]~19_combout\ : std_logic;
SIGNAL \UART_transceiver|B_rate|countx1[3]~20\ : std_logic;
SIGNAL \UART_transceiver|B_rate|countx1[4]~21_combout\ : std_logic;
SIGNAL \UART_transceiver|B_rate|countx1[4]~22\ : std_logic;
SIGNAL \UART_transceiver|B_rate|countx1[5]~23_combout\ : std_logic;
SIGNAL \UART_transceiver|B_rate|countx1[5]~24\ : std_logic;
SIGNAL \UART_transceiver|B_rate|countx1[6]~25_combout\ : std_logic;
SIGNAL \UART_transceiver|B_rate|countx1[6]~26\ : std_logic;
SIGNAL \UART_transceiver|B_rate|countx1[7]~27_combout\ : std_logic;
SIGNAL \UART_transceiver|B_rate|countx1[7]~28\ : std_logic;
SIGNAL \UART_transceiver|B_rate|countx1[8]~29_combout\ : std_logic;
SIGNAL \UART_transceiver|B_rate|countx1[8]~30\ : std_logic;
SIGNAL \UART_transceiver|B_rate|countx1[9]~31_combout\ : std_logic;
SIGNAL \UART_transceiver|B_rate|countx1[9]~32\ : std_logic;
SIGNAL \UART_transceiver|B_rate|countx1[10]~33_combout\ : std_logic;
SIGNAL \UART_transceiver|B_rate|countx1[10]~34\ : std_logic;
SIGNAL \UART_transceiver|B_rate|countx1[11]~35_combout\ : std_logic;
SIGNAL \UART_transceiver|B_rate|countx1[11]~36\ : std_logic;
SIGNAL \UART_transceiver|B_rate|countx1[12]~37_combout\ : std_logic;
SIGNAL \UART_transceiver|B_rate|LessThan0~0_combout\ : std_logic;
SIGNAL \UART_transceiver|B_rate|LessThan0~1_combout\ : std_logic;
SIGNAL \UART_transceiver|B_rate|LessThan0~2_combout\ : std_logic;
SIGNAL \UART_transceiver|B_rate|tick~q\ : std_logic;
SIGNAL \UART_transceiver|tx_module|bit_counter_rst~0_combout\ : std_logic;
SIGNAL \UART_transceiver|tx_module|Selector1~0_combout\ : std_logic;
SIGNAL \UART_transceiver|tx_module|start_rst~0_combout\ : std_logic;
SIGNAL \UART_transceiver|tx_module|start_rst~q\ : std_logic;
SIGNAL \tx_enable~input_o\ : std_logic;
SIGNAL \tx_button_controller|stabil_counter[0]~16_combout\ : std_logic;
SIGNAL \tx_button_controller|stabil_counter[4]~25\ : std_logic;
SIGNAL \tx_button_controller|stabil_counter[5]~26_combout\ : std_logic;
SIGNAL \tx_button_controller|stabil_counter[5]~27\ : std_logic;
SIGNAL \tx_button_controller|stabil_counter[6]~28_combout\ : std_logic;
SIGNAL \tx_button_controller|stabil_counter[6]~29\ : std_logic;
SIGNAL \tx_button_controller|stabil_counter[7]~30_combout\ : std_logic;
SIGNAL \tx_button_controller|stabil_counter[7]~31\ : std_logic;
SIGNAL \tx_button_controller|stabil_counter[8]~32_combout\ : std_logic;
SIGNAL \tx_button_controller|stabil_counter[8]~33\ : std_logic;
SIGNAL \tx_button_controller|stabil_counter[9]~34_combout\ : std_logic;
SIGNAL \tx_button_controller|stabil_counter[9]~35\ : std_logic;
SIGNAL \tx_button_controller|stabil_counter[10]~36_combout\ : std_logic;
SIGNAL \tx_button_controller|stabil_counter[10]~37\ : std_logic;
SIGNAL \tx_button_controller|stabil_counter[11]~38_combout\ : std_logic;
SIGNAL \tx_button_controller|stabil_counter[11]~39\ : std_logic;
SIGNAL \tx_button_controller|stabil_counter[12]~40_combout\ : std_logic;
SIGNAL \tx_button_controller|stabil_counter[12]~41\ : std_logic;
SIGNAL \tx_button_controller|stabil_counter[13]~42_combout\ : std_logic;
SIGNAL \tx_button_controller|stabil_counter[13]~43\ : std_logic;
SIGNAL \tx_button_controller|stabil_counter[14]~44_combout\ : std_logic;
SIGNAL \tx_button_controller|stabil_counter[14]~45\ : std_logic;
SIGNAL \tx_button_controller|stabil_counter[15]~46_combout\ : std_logic;
SIGNAL \tx_button_controller|p_Debounce~0_combout\ : std_logic;
SIGNAL \tx_button_controller|LessThan0~0_combout\ : std_logic;
SIGNAL \tx_button_controller|p_Debounce~1_combout\ : std_logic;
SIGNAL \tx_button_controller|p_Debounce~2_combout\ : std_logic;
SIGNAL \tx_button_controller|p_Debounce~3_combout\ : std_logic;
SIGNAL \tx_button_controller|stabil_counter[0]~17\ : std_logic;
SIGNAL \tx_button_controller|stabil_counter[1]~18_combout\ : std_logic;
SIGNAL \tx_button_controller|stabil_counter[1]~19\ : std_logic;
SIGNAL \tx_button_controller|stabil_counter[2]~20_combout\ : std_logic;
SIGNAL \tx_button_controller|stabil_counter[2]~21\ : std_logic;
SIGNAL \tx_button_controller|stabil_counter[3]~22_combout\ : std_logic;
SIGNAL \tx_button_controller|stabil_counter[3]~23\ : std_logic;
SIGNAL \tx_button_controller|stabil_counter[4]~24_combout\ : std_logic;
SIGNAL \tx_button_controller|etat_courant~1_combout\ : std_logic;
SIGNAL \tx_button_controller|etat_courant~0_combout\ : std_logic;
SIGNAL \tx_button_controller|etat_courant~2_combout\ : std_logic;
SIGNAL \tx_button_controller|etat_courant~3_combout\ : std_logic;
SIGNAL \tx_button_controller|etat_courant~4_combout\ : std_logic;
SIGNAL \tx_button_controller|etat_courant~q\ : std_logic;
SIGNAL \UART_transceiver|tx_module|t_launch_detected~0_combout\ : std_logic;
SIGNAL \UART_transceiver|tx_module|t_launch_detected~q\ : std_logic;
SIGNAL \UART_transceiver|tx_module|Selector4~0_combout\ : std_logic;
SIGNAL \UART_transceiver|tx_module|tx_etat.start~q\ : std_logic;
SIGNAL \UART_transceiver|tx_module|tx_etat~10_combout\ : std_logic;
SIGNAL \UART_transceiver|tx_module|tx_etat~11_combout\ : std_logic;
SIGNAL \UART_transceiver|tx_module|tx_etat~12_combout\ : std_logic;
SIGNAL \UART_transceiver|tx_module|tx_etat.data~q\ : std_logic;
SIGNAL \UART_transceiver|tx_module|bit_counter_rst~1_combout\ : std_logic;
SIGNAL \UART_transceiver|tx_module|bit_counter_rst~2_combout\ : std_logic;
SIGNAL \UART_transceiver|tx_module|bit_counter_rst~q\ : std_logic;
SIGNAL \UART_transceiver|tx_module|bit_counter~0_combout\ : std_logic;
SIGNAL \UART_transceiver|tx_module|bit_counter~4_combout\ : std_logic;
SIGNAL \UART_transceiver|tx_module|bit_counter[3]~2_combout\ : std_logic;
SIGNAL \UART_transceiver|tx_module|bit_counter~3_combout\ : std_logic;
SIGNAL \UART_transceiver|tx_module|bit_counter~1_combout\ : std_logic;
SIGNAL \UART_transceiver|tx_module|Selector6~0_combout\ : std_logic;
SIGNAL \UART_transceiver|tx_module|bit_counter[3]~5_combout\ : std_logic;
SIGNAL \UART_transceiver|tx_module|Selector6~1_combout\ : std_logic;
SIGNAL \UART_transceiver|tx_module|tx_etat.stop~feeder_combout\ : std_logic;
SIGNAL \UART_transceiver|tx_module|tx_etat.stop~q\ : std_logic;
SIGNAL \UART_transceiver|tx_module|tx_etat~13_combout\ : std_logic;
SIGNAL \UART_transceiver|tx_module|tx_etat.Idle~q\ : std_logic;
SIGNAL \tx_data_in[6]~input_o\ : std_logic;
SIGNAL \UART_transceiver|tx_module|tx_stored_data[6]~feeder_combout\ : std_logic;
SIGNAL \UART_transceiver|tx_module|tx_stored_data[7]~0_combout\ : std_logic;
SIGNAL \tx_data_in[7]~input_o\ : std_logic;
SIGNAL \tx_data_in[5]~input_o\ : std_logic;
SIGNAL \UART_transceiver|tx_module|tx_stored_data[5]~feeder_combout\ : std_logic;
SIGNAL \tx_data_in[4]~input_o\ : std_logic;
SIGNAL \UART_transceiver|tx_module|Mux0~0_combout\ : std_logic;
SIGNAL \UART_transceiver|tx_module|Mux0~1_combout\ : std_logic;
SIGNAL \tx_data_in[2]~input_o\ : std_logic;
SIGNAL \UART_transceiver|tx_module|tx_stored_data[2]~feeder_combout\ : std_logic;
SIGNAL \tx_data_in[3]~input_o\ : std_logic;
SIGNAL \tx_data_in[1]~input_o\ : std_logic;
SIGNAL \UART_transceiver|tx_module|tx_stored_data[1]~feeder_combout\ : std_logic;
SIGNAL \tx_data_in[0]~input_o\ : std_logic;
SIGNAL \UART_transceiver|tx_module|Mux0~2_combout\ : std_logic;
SIGNAL \UART_transceiver|tx_module|Mux0~3_combout\ : std_logic;
SIGNAL \UART_transceiver|tx_module|Selector2~0_combout\ : std_logic;
SIGNAL \UART_transceiver|tx_module|Selector2~1_combout\ : std_logic;
SIGNAL \UART_transceiver|tx_module|tx_out~feeder_combout\ : std_logic;
SIGNAL \UART_transceiver|tx_module|tx_out~q\ : std_logic;
SIGNAL \UART_transceiver|rx_module|rx_out_temp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \UART_transceiver|B_rate|countx16\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \UART_transceiver|B_rate|countx1\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \UART_transceiver|tx_module|bit_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \tx_button_controller|stabil_counter\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \UART_transceiver|rx_module|rx_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \UART_transceiver|tx_module|tx_stored_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_reset_n~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset_n <= reset_n;
ww_tx_enable <= tx_enable;
ww_tx_data_in <= tx_data_in;
rx_data_out <= ww_rx_data_out;
ww_rx <= rx;
tx <= ww_tx;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset_n~input_o\ <= NOT \reset_n~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N24
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X46_Y54_N2
\rx_data_out[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UART_transceiver|rx_module|rx_out\(0),
	devoe => ww_devoe,
	o => \rx_data_out[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\rx_data_out[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UART_transceiver|rx_module|rx_out\(1),
	devoe => ww_devoe,
	o => \rx_data_out[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\rx_data_out[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UART_transceiver|rx_module|rx_out\(2),
	devoe => ww_devoe,
	o => \rx_data_out[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\rx_data_out[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UART_transceiver|rx_module|rx_out\(3),
	devoe => ww_devoe,
	o => \rx_data_out[3]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\rx_data_out[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UART_transceiver|rx_module|rx_out\(4),
	devoe => ww_devoe,
	o => \rx_data_out[4]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\rx_data_out[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UART_transceiver|rx_module|rx_out\(5),
	devoe => ww_devoe,
	o => \rx_data_out[5]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\rx_data_out[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UART_transceiver|rx_module|rx_out\(6),
	devoe => ww_devoe,
	o => \rx_data_out[6]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\rx_data_out[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UART_transceiver|rx_module|rx_out\(7),
	devoe => ww_devoe,
	o => \rx_data_out[7]~output_o\);

-- Location: IOOBUF_X24_Y0_N30
\tx~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UART_transceiver|tx_module|tx_out~q\,
	devoe => ww_devoe,
	o => \tx~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G19
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
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

-- Location: IOIBUF_X46_Y54_N29
\reset_n~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_n,
	o => \reset_n~input_o\);

-- Location: IOIBUF_X31_Y0_N22
\rx~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rx,
	o => \rx~input_o\);

-- Location: LCCOMB_X49_Y51_N20
\UART_transceiver|rx_module|rx_etat~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|rx_module|rx_etat~11_combout\ = (!\rx~input_o\ & \UART_transceiver|rx_module|rx_etat.start~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rx~input_o\,
	datad => \UART_transceiver|rx_module|rx_etat.start~q\,
	combout => \UART_transceiver|rx_module|rx_etat~11_combout\);

-- Location: LCCOMB_X49_Y50_N10
\UART_transceiver|B_rate|countx16[0]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|B_rate|countx16[0]~9_combout\ = \UART_transceiver|B_rate|countx16\(0) $ (VCC)
-- \UART_transceiver|B_rate|countx16[0]~10\ = CARRY(\UART_transceiver|B_rate|countx16\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_transceiver|B_rate|countx16\(0),
	datad => VCC,
	combout => \UART_transceiver|B_rate|countx16[0]~9_combout\,
	cout => \UART_transceiver|B_rate|countx16[0]~10\);

-- Location: FF_X49_Y50_N11
\UART_transceiver|B_rate|countx16[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UART_transceiver|B_rate|countx16[0]~9_combout\,
	clrn => \reset_n~input_o\,
	sclr => \UART_transceiver|B_rate|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_transceiver|B_rate|countx16\(0));

-- Location: LCCOMB_X49_Y50_N12
\UART_transceiver|B_rate|countx16[1]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|B_rate|countx16[1]~11_combout\ = (\UART_transceiver|B_rate|countx16\(1) & (!\UART_transceiver|B_rate|countx16[0]~10\)) # (!\UART_transceiver|B_rate|countx16\(1) & ((\UART_transceiver|B_rate|countx16[0]~10\) # (GND)))
-- \UART_transceiver|B_rate|countx16[1]~12\ = CARRY((!\UART_transceiver|B_rate|countx16[0]~10\) # (!\UART_transceiver|B_rate|countx16\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UART_transceiver|B_rate|countx16\(1),
	datad => VCC,
	cin => \UART_transceiver|B_rate|countx16[0]~10\,
	combout => \UART_transceiver|B_rate|countx16[1]~11_combout\,
	cout => \UART_transceiver|B_rate|countx16[1]~12\);

-- Location: FF_X49_Y50_N13
\UART_transceiver|B_rate|countx16[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UART_transceiver|B_rate|countx16[1]~11_combout\,
	clrn => \reset_n~input_o\,
	sclr => \UART_transceiver|B_rate|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_transceiver|B_rate|countx16\(1));

-- Location: LCCOMB_X49_Y50_N14
\UART_transceiver|B_rate|countx16[2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|B_rate|countx16[2]~13_combout\ = (\UART_transceiver|B_rate|countx16\(2) & (\UART_transceiver|B_rate|countx16[1]~12\ $ (GND))) # (!\UART_transceiver|B_rate|countx16\(2) & (!\UART_transceiver|B_rate|countx16[1]~12\ & VCC))
-- \UART_transceiver|B_rate|countx16[2]~14\ = CARRY((\UART_transceiver|B_rate|countx16\(2) & !\UART_transceiver|B_rate|countx16[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_transceiver|B_rate|countx16\(2),
	datad => VCC,
	cin => \UART_transceiver|B_rate|countx16[1]~12\,
	combout => \UART_transceiver|B_rate|countx16[2]~13_combout\,
	cout => \UART_transceiver|B_rate|countx16[2]~14\);

-- Location: FF_X49_Y50_N15
\UART_transceiver|B_rate|countx16[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UART_transceiver|B_rate|countx16[2]~13_combout\,
	clrn => \reset_n~input_o\,
	sclr => \UART_transceiver|B_rate|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_transceiver|B_rate|countx16\(2));

-- Location: LCCOMB_X49_Y50_N16
\UART_transceiver|B_rate|countx16[3]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|B_rate|countx16[3]~15_combout\ = (\UART_transceiver|B_rate|countx16\(3) & (!\UART_transceiver|B_rate|countx16[2]~14\)) # (!\UART_transceiver|B_rate|countx16\(3) & ((\UART_transceiver|B_rate|countx16[2]~14\) # (GND)))
-- \UART_transceiver|B_rate|countx16[3]~16\ = CARRY((!\UART_transceiver|B_rate|countx16[2]~14\) # (!\UART_transceiver|B_rate|countx16\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_transceiver|B_rate|countx16\(3),
	datad => VCC,
	cin => \UART_transceiver|B_rate|countx16[2]~14\,
	combout => \UART_transceiver|B_rate|countx16[3]~15_combout\,
	cout => \UART_transceiver|B_rate|countx16[3]~16\);

-- Location: FF_X49_Y50_N17
\UART_transceiver|B_rate|countx16[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UART_transceiver|B_rate|countx16[3]~15_combout\,
	clrn => \reset_n~input_o\,
	sclr => \UART_transceiver|B_rate|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_transceiver|B_rate|countx16\(3));

-- Location: LCCOMB_X49_Y50_N18
\UART_transceiver|B_rate|countx16[4]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|B_rate|countx16[4]~17_combout\ = (\UART_transceiver|B_rate|countx16\(4) & (\UART_transceiver|B_rate|countx16[3]~16\ $ (GND))) # (!\UART_transceiver|B_rate|countx16\(4) & (!\UART_transceiver|B_rate|countx16[3]~16\ & VCC))
-- \UART_transceiver|B_rate|countx16[4]~18\ = CARRY((\UART_transceiver|B_rate|countx16\(4) & !\UART_transceiver|B_rate|countx16[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_transceiver|B_rate|countx16\(4),
	datad => VCC,
	cin => \UART_transceiver|B_rate|countx16[3]~16\,
	combout => \UART_transceiver|B_rate|countx16[4]~17_combout\,
	cout => \UART_transceiver|B_rate|countx16[4]~18\);

-- Location: FF_X49_Y50_N19
\UART_transceiver|B_rate|countx16[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UART_transceiver|B_rate|countx16[4]~17_combout\,
	clrn => \reset_n~input_o\,
	sclr => \UART_transceiver|B_rate|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_transceiver|B_rate|countx16\(4));

-- Location: LCCOMB_X49_Y50_N20
\UART_transceiver|B_rate|countx16[5]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|B_rate|countx16[5]~19_combout\ = (\UART_transceiver|B_rate|countx16\(5) & (!\UART_transceiver|B_rate|countx16[4]~18\)) # (!\UART_transceiver|B_rate|countx16\(5) & ((\UART_transceiver|B_rate|countx16[4]~18\) # (GND)))
-- \UART_transceiver|B_rate|countx16[5]~20\ = CARRY((!\UART_transceiver|B_rate|countx16[4]~18\) # (!\UART_transceiver|B_rate|countx16\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_transceiver|B_rate|countx16\(5),
	datad => VCC,
	cin => \UART_transceiver|B_rate|countx16[4]~18\,
	combout => \UART_transceiver|B_rate|countx16[5]~19_combout\,
	cout => \UART_transceiver|B_rate|countx16[5]~20\);

-- Location: FF_X49_Y50_N21
\UART_transceiver|B_rate|countx16[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UART_transceiver|B_rate|countx16[5]~19_combout\,
	clrn => \reset_n~input_o\,
	sclr => \UART_transceiver|B_rate|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_transceiver|B_rate|countx16\(5));

-- Location: LCCOMB_X49_Y50_N22
\UART_transceiver|B_rate|countx16[6]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|B_rate|countx16[6]~21_combout\ = (\UART_transceiver|B_rate|countx16\(6) & (\UART_transceiver|B_rate|countx16[5]~20\ $ (GND))) # (!\UART_transceiver|B_rate|countx16\(6) & (!\UART_transceiver|B_rate|countx16[5]~20\ & VCC))
-- \UART_transceiver|B_rate|countx16[6]~22\ = CARRY((\UART_transceiver|B_rate|countx16\(6) & !\UART_transceiver|B_rate|countx16[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UART_transceiver|B_rate|countx16\(6),
	datad => VCC,
	cin => \UART_transceiver|B_rate|countx16[5]~20\,
	combout => \UART_transceiver|B_rate|countx16[6]~21_combout\,
	cout => \UART_transceiver|B_rate|countx16[6]~22\);

-- Location: FF_X49_Y50_N23
\UART_transceiver|B_rate|countx16[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UART_transceiver|B_rate|countx16[6]~21_combout\,
	clrn => \reset_n~input_o\,
	sclr => \UART_transceiver|B_rate|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_transceiver|B_rate|countx16\(6));

-- Location: LCCOMB_X49_Y50_N24
\UART_transceiver|B_rate|countx16[7]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|B_rate|countx16[7]~23_combout\ = (\UART_transceiver|B_rate|countx16\(7) & (!\UART_transceiver|B_rate|countx16[6]~22\)) # (!\UART_transceiver|B_rate|countx16\(7) & ((\UART_transceiver|B_rate|countx16[6]~22\) # (GND)))
-- \UART_transceiver|B_rate|countx16[7]~24\ = CARRY((!\UART_transceiver|B_rate|countx16[6]~22\) # (!\UART_transceiver|B_rate|countx16\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_transceiver|B_rate|countx16\(7),
	datad => VCC,
	cin => \UART_transceiver|B_rate|countx16[6]~22\,
	combout => \UART_transceiver|B_rate|countx16[7]~23_combout\,
	cout => \UART_transceiver|B_rate|countx16[7]~24\);

-- Location: FF_X49_Y50_N25
\UART_transceiver|B_rate|countx16[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UART_transceiver|B_rate|countx16[7]~23_combout\,
	clrn => \reset_n~input_o\,
	sclr => \UART_transceiver|B_rate|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_transceiver|B_rate|countx16\(7));

-- Location: LCCOMB_X49_Y50_N26
\UART_transceiver|B_rate|countx16[8]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|B_rate|countx16[8]~25_combout\ = \UART_transceiver|B_rate|countx16\(8) $ (!\UART_transceiver|B_rate|countx16[7]~24\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UART_transceiver|B_rate|countx16\(8),
	cin => \UART_transceiver|B_rate|countx16[7]~24\,
	combout => \UART_transceiver|B_rate|countx16[8]~25_combout\);

-- Location: FF_X49_Y50_N27
\UART_transceiver|B_rate|countx16[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UART_transceiver|B_rate|countx16[8]~25_combout\,
	clrn => \reset_n~input_o\,
	sclr => \UART_transceiver|B_rate|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_transceiver|B_rate|countx16\(8));

-- Location: LCCOMB_X49_Y50_N30
\UART_transceiver|B_rate|LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|B_rate|LessThan1~0_combout\ = (!\UART_transceiver|B_rate|countx16\(3) & (((!\UART_transceiver|B_rate|countx16\(0) & !\UART_transceiver|B_rate|countx16\(1))) # (!\UART_transceiver|B_rate|countx16\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_transceiver|B_rate|countx16\(0),
	datab => \UART_transceiver|B_rate|countx16\(3),
	datac => \UART_transceiver|B_rate|countx16\(2),
	datad => \UART_transceiver|B_rate|countx16\(1),
	combout => \UART_transceiver|B_rate|LessThan1~0_combout\);

-- Location: LCCOMB_X49_Y50_N28
\UART_transceiver|B_rate|LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|B_rate|LessThan1~1_combout\ = (!\UART_transceiver|B_rate|countx16\(7) & (!\UART_transceiver|B_rate|countx16\(5) & (\UART_transceiver|B_rate|LessThan1~0_combout\ & !\UART_transceiver|B_rate|countx16\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_transceiver|B_rate|countx16\(7),
	datab => \UART_transceiver|B_rate|countx16\(5),
	datac => \UART_transceiver|B_rate|LessThan1~0_combout\,
	datad => \UART_transceiver|B_rate|countx16\(4),
	combout => \UART_transceiver|B_rate|LessThan1~1_combout\);

-- Location: LCCOMB_X49_Y50_N6
\UART_transceiver|B_rate|LessThan1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|B_rate|LessThan1~2_combout\ = (\UART_transceiver|B_rate|countx16\(8) & (!\UART_transceiver|B_rate|LessThan1~1_combout\ & ((\UART_transceiver|B_rate|countx16\(6)) # (\UART_transceiver|B_rate|countx16\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_transceiver|B_rate|countx16\(6),
	datab => \UART_transceiver|B_rate|countx16\(7),
	datac => \UART_transceiver|B_rate|countx16\(8),
	datad => \UART_transceiver|B_rate|LessThan1~1_combout\,
	combout => \UART_transceiver|B_rate|LessThan1~2_combout\);

-- Location: LCCOMB_X49_Y50_N8
\UART_transceiver|B_rate|tickx16~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|B_rate|tickx16~feeder_combout\ = \UART_transceiver|B_rate|LessThan1~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UART_transceiver|B_rate|LessThan1~2_combout\,
	combout => \UART_transceiver|B_rate|tickx16~feeder_combout\);

-- Location: FF_X49_Y50_N9
\UART_transceiver|B_rate|tickx16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UART_transceiver|B_rate|tickx16~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_transceiver|B_rate|tickx16~q\);

-- Location: LCCOMB_X49_Y51_N0
\UART_transceiver|rx_module|rx_etat~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|rx_module|rx_etat~17_combout\ = (\UART_transceiver|rx_module|rx_etat~16_combout\ & (((\UART_transceiver|rx_module|rx_etat.stop~q\)))) # (!\UART_transceiver|rx_module|rx_etat~16_combout\ & (\reset_n~input_o\ & 
-- (\UART_transceiver|rx_module|rx_etat.data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \UART_transceiver|rx_module|rx_etat.data~q\,
	datac => \UART_transceiver|rx_module|rx_etat.stop~q\,
	datad => \UART_transceiver|rx_module|rx_etat~16_combout\,
	combout => \UART_transceiver|rx_module|rx_etat~17_combout\);

-- Location: FF_X49_Y51_N1
\UART_transceiver|rx_module|rx_etat.stop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UART_transceiver|rx_module|rx_etat~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_transceiver|rx_module|rx_etat.stop~q\);

-- Location: LCCOMB_X49_Y51_N28
\UART_transceiver|rx_module|rx_etat~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|rx_module|rx_etat~21_combout\ = ((\UART_transceiver|rx_module|rx_etat.stop~q\) # ((\UART_transceiver|rx_module|rx_etat.start~q\ & \rx~input_o\))) # (!\reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_transceiver|rx_module|rx_etat.start~q\,
	datab => \reset_n~input_o\,
	datac => \rx~input_o\,
	datad => \UART_transceiver|rx_module|rx_etat.stop~q\,
	combout => \UART_transceiver|rx_module|rx_etat~21_combout\);

-- Location: LCCOMB_X49_Y51_N2
\UART_transceiver|rx_module|rx_etat~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|rx_module|rx_etat~22_combout\ = (\UART_transceiver|rx_module|rx_etat~16_combout\ & ((\UART_transceiver|rx_module|rx_etat.Idle~q\))) # (!\UART_transceiver|rx_module|rx_etat~16_combout\ & (!\UART_transceiver|rx_module|rx_etat~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_transceiver|rx_module|rx_etat~21_combout\,
	datac => \UART_transceiver|rx_module|rx_etat.Idle~q\,
	datad => \UART_transceiver|rx_module|rx_etat~16_combout\,
	combout => \UART_transceiver|rx_module|rx_etat~22_combout\);

-- Location: FF_X49_Y51_N3
\UART_transceiver|rx_module|rx_etat.Idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UART_transceiver|rx_module|rx_etat~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_transceiver|rx_module|rx_etat.Idle~q\);

-- Location: LCCOMB_X49_Y51_N26
\UART_transceiver|rx_module|rx_etat~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|rx_module|rx_etat~15_combout\ = ((\rx~input_o\ & !\UART_transceiver|rx_module|rx_etat.Idle~q\)) # (!\UART_transceiver|B_rate|tickx16~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx~input_o\,
	datac => \UART_transceiver|B_rate|tickx16~q\,
	datad => \UART_transceiver|rx_module|rx_etat.Idle~q\,
	combout => \UART_transceiver|rx_module|rx_etat~15_combout\);

-- Location: LCCOMB_X49_Y51_N30
\UART_transceiver|rx_module|rx_etat~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|rx_module|rx_etat~12_combout\ = (!\UART_transceiver|rx_module|rx_etat.data~q\ & !\UART_transceiver|rx_module|rx_etat.stop~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UART_transceiver|rx_module|rx_etat.data~q\,
	datad => \UART_transceiver|rx_module|rx_etat.stop~q\,
	combout => \UART_transceiver|rx_module|rx_etat~12_combout\);

-- Location: LCCOMB_X50_Y51_N2
\UART_transceiver|rx_module|machineAetat:bit_duration[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|rx_module|machineAetat:bit_duration[2]~0_combout\ = (\reset_n~input_o\ & (((\rx~input_o\ & \UART_transceiver|rx_module|rx_etat.start~q\)) # (!\UART_transceiver|B_rate|tickx16~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx~input_o\,
	datab => \reset_n~input_o\,
	datac => \UART_transceiver|B_rate|tickx16~q\,
	datad => \UART_transceiver|rx_module|rx_etat.start~q\,
	combout => \UART_transceiver|rx_module|machineAetat:bit_duration[2]~0_combout\);

-- Location: LCCOMB_X50_Y51_N24
\UART_transceiver|rx_module|machineAetat:bit_duration[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|rx_module|machineAetat:bit_duration[2]~1_combout\ = (\UART_transceiver|rx_module|machineAetat:bit_duration[2]~0_combout\) # ((\UART_transceiver|rx_module|Equal2~0_combout\ & (\reset_n~input_o\ & 
-- \UART_transceiver|rx_module|rx_etat.stop~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_transceiver|rx_module|Equal2~0_combout\,
	datab => \reset_n~input_o\,
	datac => \UART_transceiver|rx_module|rx_etat.stop~q\,
	datad => \UART_transceiver|rx_module|machineAetat:bit_duration[2]~0_combout\,
	combout => \UART_transceiver|rx_module|machineAetat:bit_duration[2]~1_combout\);

-- Location: LCCOMB_X50_Y51_N0
\UART_transceiver|rx_module|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|rx_module|Add0~0_combout\ = \UART_transceiver|rx_module|machineAetat:bit_duration[3]~q\ $ (((\UART_transceiver|rx_module|machineAetat:bit_duration[0]~q\ & (\UART_transceiver|rx_module|machineAetat:bit_duration[1]~q\ & 
-- \UART_transceiver|rx_module|machineAetat:bit_duration[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_transceiver|rx_module|machineAetat:bit_duration[0]~q\,
	datab => \UART_transceiver|rx_module|machineAetat:bit_duration[3]~q\,
	datac => \UART_transceiver|rx_module|machineAetat:bit_duration[1]~q\,
	datad => \UART_transceiver|rx_module|machineAetat:bit_duration[2]~q\,
	combout => \UART_transceiver|rx_module|Add0~0_combout\);

-- Location: LCCOMB_X50_Y51_N14
\UART_transceiver|rx_module|machineAetat:bit_duration[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|rx_module|machineAetat:bit_duration[3]~2_combout\ = (\UART_transceiver|rx_module|machineAetat:bit_duration[2]~1_combout\ & ((\UART_transceiver|rx_module|machineAetat:bit_duration[3]~q\) # ((\UART_transceiver|rx_module|Add0~0_combout\ & 
-- \UART_transceiver|rx_module|machineAetat:bit_duration[3]~1_combout\)))) # (!\UART_transceiver|rx_module|machineAetat:bit_duration[2]~1_combout\ & (\UART_transceiver|rx_module|Add0~0_combout\ & 
-- ((\UART_transceiver|rx_module|machineAetat:bit_duration[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_transceiver|rx_module|machineAetat:bit_duration[2]~1_combout\,
	datab => \UART_transceiver|rx_module|Add0~0_combout\,
	datac => \UART_transceiver|rx_module|machineAetat:bit_duration[3]~q\,
	datad => \UART_transceiver|rx_module|machineAetat:bit_duration[3]~1_combout\,
	combout => \UART_transceiver|rx_module|machineAetat:bit_duration[3]~2_combout\);

-- Location: FF_X50_Y51_N15
\UART_transceiver|rx_module|machineAetat:bit_duration[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UART_transceiver|rx_module|machineAetat:bit_duration[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_transceiver|rx_module|machineAetat:bit_duration[3]~q\);

-- Location: LCCOMB_X50_Y51_N10
\UART_transceiver|rx_module|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|rx_module|Equal0~0_combout\ = (!\UART_transceiver|rx_module|machineAetat:bit_duration[0]~q\ & (\UART_transceiver|rx_module|machineAetat:bit_duration[3]~q\ & (\UART_transceiver|rx_module|machineAetat:bit_duration[1]~q\ & 
-- !\UART_transceiver|rx_module|machineAetat:bit_duration[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_transceiver|rx_module|machineAetat:bit_duration[0]~q\,
	datab => \UART_transceiver|rx_module|machineAetat:bit_duration[3]~q\,
	datac => \UART_transceiver|rx_module|machineAetat:bit_duration[1]~q\,
	datad => \UART_transceiver|rx_module|machineAetat:bit_duration[2]~q\,
	combout => \UART_transceiver|rx_module|Equal0~0_combout\);

-- Location: LCCOMB_X50_Y51_N8
\UART_transceiver|rx_module|machineAetat:bit_duration[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|rx_module|machineAetat:bit_duration[3]~0_combout\ = (\UART_transceiver|rx_module|rx_etat.data~q\ & (((!\UART_transceiver|rx_module|Equal2~0_combout\)))) # (!\UART_transceiver|rx_module|rx_etat.data~q\ & 
-- (((!\UART_transceiver|rx_module|rx_etat.start~q\)) # (!\UART_transceiver|rx_module|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_transceiver|rx_module|Equal0~0_combout\,
	datab => \UART_transceiver|rx_module|rx_etat.start~q\,
	datac => \UART_transceiver|rx_module|Equal2~0_combout\,
	datad => \UART_transceiver|rx_module|rx_etat.data~q\,
	combout => \UART_transceiver|rx_module|machineAetat:bit_duration[3]~0_combout\);

-- Location: LCCOMB_X50_Y51_N18
\UART_transceiver|rx_module|machineAetat:bit_duration[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|rx_module|machineAetat:bit_duration[3]~1_combout\ = (\UART_transceiver|rx_module|rx_etat.Idle~q\ & (\reset_n~input_o\ & (\UART_transceiver|rx_module|machineAetat:bit_duration[3]~0_combout\ & 
-- !\UART_transceiver|rx_module|machineAetat:bit_duration[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_transceiver|rx_module|rx_etat.Idle~q\,
	datab => \reset_n~input_o\,
	datac => \UART_transceiver|rx_module|machineAetat:bit_duration[3]~0_combout\,
	datad => \UART_transceiver|rx_module|machineAetat:bit_duration[2]~1_combout\,
	combout => \UART_transceiver|rx_module|machineAetat:bit_duration[3]~1_combout\);

-- Location: LCCOMB_X50_Y51_N22
\UART_transceiver|rx_module|machineAetat:bit_duration[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|rx_module|machineAetat:bit_duration[0]~0_combout\ = (\UART_transceiver|rx_module|machineAetat:bit_duration[0]~q\ & (\UART_transceiver|rx_module|machineAetat:bit_duration[2]~1_combout\)) # 
-- (!\UART_transceiver|rx_module|machineAetat:bit_duration[0]~q\ & ((\UART_transceiver|rx_module|machineAetat:bit_duration[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_transceiver|rx_module|machineAetat:bit_duration[2]~1_combout\,
	datac => \UART_transceiver|rx_module|machineAetat:bit_duration[0]~q\,
	datad => \UART_transceiver|rx_module|machineAetat:bit_duration[3]~1_combout\,
	combout => \UART_transceiver|rx_module|machineAetat:bit_duration[0]~0_combout\);

-- Location: FF_X50_Y51_N23
\UART_transceiver|rx_module|machineAetat:bit_duration[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UART_transceiver|rx_module|machineAetat:bit_duration[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_transceiver|rx_module|machineAetat:bit_duration[0]~q\);

-- Location: LCCOMB_X50_Y51_N12
\UART_transceiver|rx_module|machineAetat:bit_duration[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|rx_module|machineAetat:bit_duration[1]~0_combout\ = (\UART_transceiver|rx_module|machineAetat:bit_duration[1]~q\ & ((\UART_transceiver|rx_module|machineAetat:bit_duration[2]~1_combout\) # 
-- ((!\UART_transceiver|rx_module|machineAetat:bit_duration[0]~q\ & \UART_transceiver|rx_module|machineAetat:bit_duration[3]~1_combout\)))) # (!\UART_transceiver|rx_module|machineAetat:bit_duration[1]~q\ & 
-- (((\UART_transceiver|rx_module|machineAetat:bit_duration[0]~q\ & \UART_transceiver|rx_module|machineAetat:bit_duration[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_transceiver|rx_module|machineAetat:bit_duration[2]~1_combout\,
	datab => \UART_transceiver|rx_module|machineAetat:bit_duration[0]~q\,
	datac => \UART_transceiver|rx_module|machineAetat:bit_duration[1]~q\,
	datad => \UART_transceiver|rx_module|machineAetat:bit_duration[3]~1_combout\,
	combout => \UART_transceiver|rx_module|machineAetat:bit_duration[1]~0_combout\);

-- Location: FF_X50_Y51_N13
\UART_transceiver|rx_module|machineAetat:bit_duration[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UART_transceiver|rx_module|machineAetat:bit_duration[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_transceiver|rx_module|machineAetat:bit_duration[1]~q\);

-- Location: LCCOMB_X50_Y51_N28
\UART_transceiver|rx_module|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|rx_module|Add0~1_combout\ = \UART_transceiver|rx_module|machineAetat:bit_duration[2]~q\ $ (((\UART_transceiver|rx_module|machineAetat:bit_duration[1]~q\ & \UART_transceiver|rx_module|machineAetat:bit_duration[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_transceiver|rx_module|machineAetat:bit_duration[1]~q\,
	datac => \UART_transceiver|rx_module|machineAetat:bit_duration[0]~q\,
	datad => \UART_transceiver|rx_module|machineAetat:bit_duration[2]~q\,
	combout => \UART_transceiver|rx_module|Add0~1_combout\);

-- Location: LCCOMB_X50_Y51_N4
\UART_transceiver|rx_module|machineAetat:bit_duration[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|rx_module|machineAetat:bit_duration[2]~2_combout\ = (\UART_transceiver|rx_module|machineAetat:bit_duration[2]~1_combout\ & ((\UART_transceiver|rx_module|machineAetat:bit_duration[2]~q\) # ((\UART_transceiver|rx_module|Add0~1_combout\ & 
-- \UART_transceiver|rx_module|machineAetat:bit_duration[3]~1_combout\)))) # (!\UART_transceiver|rx_module|machineAetat:bit_duration[2]~1_combout\ & (\UART_transceiver|rx_module|Add0~1_combout\ & 
-- ((\UART_transceiver|rx_module|machineAetat:bit_duration[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_transceiver|rx_module|machineAetat:bit_duration[2]~1_combout\,
	datab => \UART_transceiver|rx_module|Add0~1_combout\,
	datac => \UART_transceiver|rx_module|machineAetat:bit_duration[2]~q\,
	datad => \UART_transceiver|rx_module|machineAetat:bit_duration[3]~1_combout\,
	combout => \UART_transceiver|rx_module|machineAetat:bit_duration[2]~2_combout\);

-- Location: FF_X50_Y51_N5
\UART_transceiver|rx_module|machineAetat:bit_duration[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UART_transceiver|rx_module|machineAetat:bit_duration[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_transceiver|rx_module|machineAetat:bit_duration[2]~q\);

-- Location: LCCOMB_X50_Y51_N30
\UART_transceiver|rx_module|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|rx_module|Equal2~0_combout\ = (\UART_transceiver|rx_module|machineAetat:bit_duration[2]~q\ & (\UART_transceiver|rx_module|machineAetat:bit_duration[3]~q\ & (\UART_transceiver|rx_module|machineAetat:bit_duration[0]~q\ & 
-- \UART_transceiver|rx_module|machineAetat:bit_duration[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_transceiver|rx_module|machineAetat:bit_duration[2]~q\,
	datab => \UART_transceiver|rx_module|machineAetat:bit_duration[3]~q\,
	datac => \UART_transceiver|rx_module|machineAetat:bit_duration[0]~q\,
	datad => \UART_transceiver|rx_module|machineAetat:bit_duration[1]~q\,
	combout => \UART_transceiver|rx_module|Equal2~0_combout\);

-- Location: LCCOMB_X49_Y51_N8
\UART_transceiver|rx_module|rx_etat~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|rx_module|rx_etat~13_combout\ = (\UART_transceiver|rx_module|rx_etat~12_combout\ & (\UART_transceiver|rx_module|rx_etat~11_combout\ & ((!\UART_transceiver|rx_module|Equal0~0_combout\)))) # 
-- (!\UART_transceiver|rx_module|rx_etat~12_combout\ & (((\UART_transceiver|rx_module|rx_etat~11_combout\ & !\UART_transceiver|rx_module|Equal0~0_combout\)) # (!\UART_transceiver|rx_module|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_transceiver|rx_module|rx_etat~12_combout\,
	datab => \UART_transceiver|rx_module|rx_etat~11_combout\,
	datac => \UART_transceiver|rx_module|Equal2~0_combout\,
	datad => \UART_transceiver|rx_module|Equal0~0_combout\,
	combout => \UART_transceiver|rx_module|rx_etat~13_combout\);

-- Location: LCCOMB_X51_Y51_N22
\UART_transceiver|rx_module|rx_etat~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|rx_module|rx_etat~10_combout\ = (!\UART_transceiver|rx_module|rx_etat.start~q\ & !\UART_transceiver|rx_module|rx_etat.stop~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UART_transceiver|rx_module|rx_etat.start~q\,
	datad => \UART_transceiver|rx_module|rx_etat.stop~q\,
	combout => \UART_transceiver|rx_module|rx_etat~10_combout\);

-- Location: LCCOMB_X51_Y51_N10
\UART_transceiver|rx_module|bit_counter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|rx_module|bit_counter~0_combout\ = ((\UART_transceiver|rx_module|machineAetat:bit_counter[1]~q\ & (\UART_transceiver|rx_module|machineAetat:bit_counter[0]~q\ & \UART_transceiver|rx_module|machineAetat:bit_counter[2]~q\))) # 
-- (!\UART_transceiver|rx_module|Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_transceiver|rx_module|machineAetat:bit_counter[1]~q\,
	datab => \UART_transceiver|rx_module|machineAetat:bit_counter[0]~q\,
	datac => \UART_transceiver|rx_module|machineAetat:bit_counter[2]~q\,
	datad => \UART_transceiver|rx_module|Equal2~0_combout\,
	combout => \UART_transceiver|rx_module|bit_counter~0_combout\);

-- Location: LCCOMB_X51_Y51_N4
\UART_transceiver|rx_module|Selector14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|rx_module|Selector14~0_combout\ = (\UART_transceiver|rx_module|machineAetat:bit_counter[0]~q\ & (((\UART_transceiver|rx_module|rx_etat.data~q\ & \UART_transceiver|rx_module|bit_counter~0_combout\)) # 
-- (!\UART_transceiver|rx_module|rx_etat~10_combout\))) # (!\UART_transceiver|rx_module|machineAetat:bit_counter[0]~q\ & (((\UART_transceiver|rx_module|rx_etat.data~q\ & !\UART_transceiver|rx_module|bit_counter~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_transceiver|rx_module|rx_etat~10_combout\,
	datab => \UART_transceiver|rx_module|rx_etat.data~q\,
	datac => \UART_transceiver|rx_module|machineAetat:bit_counter[0]~q\,
	datad => \UART_transceiver|rx_module|bit_counter~0_combout\,
	combout => \UART_transceiver|rx_module|Selector14~0_combout\);

-- Location: LCCOMB_X50_Y50_N10
\UART_transceiver|rx_module|rx_out_temp[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|rx_module|rx_out_temp[7]~0_combout\ = (\UART_transceiver|B_rate|tickx16~q\) # (!\reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datad => \UART_transceiver|B_rate|tickx16~q\,
	combout => \UART_transceiver|rx_module|rx_out_temp[7]~0_combout\);

-- Location: FF_X51_Y51_N5
\UART_transceiver|rx_module|machineAetat:bit_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UART_transceiver|rx_module|Selector14~0_combout\,
	sclr => \ALT_INV_reset_n~input_o\,
	ena => \UART_transceiver|rx_module|rx_out_temp[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_transceiver|rx_module|machineAetat:bit_counter[0]~q\);

-- Location: LCCOMB_X51_Y51_N20
\UART_transceiver|rx_module|Selector13~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|rx_module|Selector13~2_combout\ = (\UART_transceiver|rx_module|rx_etat.data~q\ & (\UART_transceiver|rx_module|machineAetat:bit_counter[1]~q\ $ (((\UART_transceiver|rx_module|machineAetat:bit_counter[0]~q\ & 
-- !\UART_transceiver|rx_module|bit_counter~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_transceiver|rx_module|machineAetat:bit_counter[1]~q\,
	datab => \UART_transceiver|rx_module|machineAetat:bit_counter[0]~q\,
	datac => \UART_transceiver|rx_module|rx_etat.data~q\,
	datad => \UART_transceiver|rx_module|bit_counter~0_combout\,
	combout => \UART_transceiver|rx_module|Selector13~2_combout\);

-- Location: LCCOMB_X51_Y51_N30
\UART_transceiver|rx_module|Selector13~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|rx_module|Selector13~3_combout\ = (\UART_transceiver|rx_module|Selector13~2_combout\) # ((\UART_transceiver|rx_module|machineAetat:bit_counter[1]~q\ & ((\UART_transceiver|rx_module|rx_etat.stop~q\) # 
-- (\UART_transceiver|rx_module|rx_etat.start~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_transceiver|rx_module|rx_etat.stop~q\,
	datab => \UART_transceiver|rx_module|rx_etat.start~q\,
	datac => \UART_transceiver|rx_module|machineAetat:bit_counter[1]~q\,
	datad => \UART_transceiver|rx_module|Selector13~2_combout\,
	combout => \UART_transceiver|rx_module|Selector13~3_combout\);

-- Location: FF_X51_Y51_N31
\UART_transceiver|rx_module|machineAetat:bit_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UART_transceiver|rx_module|Selector13~3_combout\,
	sclr => \ALT_INV_reset_n~input_o\,
	ena => \UART_transceiver|rx_module|rx_out_temp[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_transceiver|rx_module|machineAetat:bit_counter[1]~q\);

-- Location: LCCOMB_X51_Y51_N26
\UART_transceiver|rx_module|Selector12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|rx_module|Selector12~0_combout\ = (\UART_transceiver|rx_module|machineAetat:bit_counter[1]~q\ & (\UART_transceiver|rx_module|machineAetat:bit_counter[0]~q\ & \UART_transceiver|rx_module|rx_etat.data~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_transceiver|rx_module|machineAetat:bit_counter[1]~q\,
	datab => \UART_transceiver|rx_module|machineAetat:bit_counter[0]~q\,
	datac => \UART_transceiver|rx_module|rx_etat.data~q\,
	combout => \UART_transceiver|rx_module|Selector12~0_combout\);

-- Location: LCCOMB_X51_Y51_N8
\UART_transceiver|rx_module|Selector12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|rx_module|Selector12~1_combout\ = (\UART_transceiver|rx_module|Selector12~0_combout\ & ((\UART_transceiver|rx_module|Equal2~0_combout\) # ((!\UART_transceiver|rx_module|rx_etat~19_combout\ & 
-- \UART_transceiver|rx_module|machineAetat:bit_counter[2]~q\)))) # (!\UART_transceiver|rx_module|Selector12~0_combout\ & (!\UART_transceiver|rx_module|rx_etat~19_combout\ & (\UART_transceiver|rx_module|machineAetat:bit_counter[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_transceiver|rx_module|Selector12~0_combout\,
	datab => \UART_transceiver|rx_module|rx_etat~19_combout\,
	datac => \UART_transceiver|rx_module|machineAetat:bit_counter[2]~q\,
	datad => \UART_transceiver|rx_module|Equal2~0_combout\,
	combout => \UART_transceiver|rx_module|Selector12~1_combout\);

-- Location: FF_X51_Y51_N9
\UART_transceiver|rx_module|machineAetat:bit_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UART_transceiver|rx_module|Selector12~1_combout\,
	sclr => \ALT_INV_reset_n~input_o\,
	ena => \UART_transceiver|rx_module|rx_out_temp[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_transceiver|rx_module|machineAetat:bit_counter[2]~q\);

-- Location: LCCOMB_X50_Y51_N26
\UART_transceiver|rx_module|rx_etat~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|rx_module|rx_etat~14_combout\ = (\UART_transceiver|rx_module|rx_etat.data~q\ & (((!\UART_transceiver|rx_module|machineAetat:bit_counter[0]~q\) # (!\UART_transceiver|rx_module|machineAetat:bit_counter[1]~q\)) # 
-- (!\UART_transceiver|rx_module|machineAetat:bit_counter[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_transceiver|rx_module|rx_etat.data~q\,
	datab => \UART_transceiver|rx_module|machineAetat:bit_counter[2]~q\,
	datac => \UART_transceiver|rx_module|machineAetat:bit_counter[1]~q\,
	datad => \UART_transceiver|rx_module|machineAetat:bit_counter[0]~q\,
	combout => \UART_transceiver|rx_module|rx_etat~14_combout\);

-- Location: LCCOMB_X49_Y51_N16
\UART_transceiver|rx_module|rx_etat~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|rx_module|rx_etat~16_combout\ = (\reset_n~input_o\ & ((\UART_transceiver|rx_module|rx_etat~15_combout\) # ((\UART_transceiver|rx_module|rx_etat~13_combout\) # (\UART_transceiver|rx_module|rx_etat~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_transceiver|rx_module|rx_etat~15_combout\,
	datab => \reset_n~input_o\,
	datac => \UART_transceiver|rx_module|rx_etat~13_combout\,
	datad => \UART_transceiver|rx_module|rx_etat~14_combout\,
	combout => \UART_transceiver|rx_module|rx_etat~16_combout\);

-- Location: LCCOMB_X49_Y51_N14
\UART_transceiver|rx_module|rx_etat~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|rx_module|rx_etat~18_combout\ = (\UART_transceiver|rx_module|rx_etat~16_combout\ & (((\UART_transceiver|rx_module|rx_etat.data~q\)))) # (!\UART_transceiver|rx_module|rx_etat~16_combout\ & (\reset_n~input_o\ & 
-- (\UART_transceiver|rx_module|rx_etat~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \UART_transceiver|rx_module|rx_etat~11_combout\,
	datac => \UART_transceiver|rx_module|rx_etat.data~q\,
	datad => \UART_transceiver|rx_module|rx_etat~16_combout\,
	combout => \UART_transceiver|rx_module|rx_etat~18_combout\);

-- Location: FF_X49_Y51_N15
\UART_transceiver|rx_module|rx_etat.data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UART_transceiver|rx_module|rx_etat~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_transceiver|rx_module|rx_etat.data~q\);

-- Location: LCCOMB_X49_Y51_N10
\UART_transceiver|rx_module|rx_etat~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|rx_module|rx_etat~19_combout\ = (!\UART_transceiver|rx_module|rx_etat.start~q\ & (!\UART_transceiver|rx_module|rx_etat.data~q\ & !\UART_transceiver|rx_module|rx_etat.stop~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_transceiver|rx_module|rx_etat.start~q\,
	datac => \UART_transceiver|rx_module|rx_etat.data~q\,
	datad => \UART_transceiver|rx_module|rx_etat.stop~q\,
	combout => \UART_transceiver|rx_module|rx_etat~19_combout\);

-- Location: LCCOMB_X49_Y51_N12
\UART_transceiver|rx_module|rx_etat~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|rx_module|rx_etat~20_combout\ = (\UART_transceiver|rx_module|rx_etat~16_combout\ & (((\UART_transceiver|rx_module|rx_etat.start~q\)))) # (!\UART_transceiver|rx_module|rx_etat~16_combout\ & (\UART_transceiver|rx_module|rx_etat~19_combout\ 
-- & (\reset_n~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_transceiver|rx_module|rx_etat~19_combout\,
	datab => \reset_n~input_o\,
	datac => \UART_transceiver|rx_module|rx_etat.start~q\,
	datad => \UART_transceiver|rx_module|rx_etat~16_combout\,
	combout => \UART_transceiver|rx_module|rx_etat~20_combout\);

-- Location: FF_X49_Y51_N13
\UART_transceiver|rx_module|rx_etat.start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UART_transceiver|rx_module|rx_etat~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_transceiver|rx_module|rx_etat.start~q\);

-- Location: LCCOMB_X50_Y51_N16
\UART_transceiver|rx_module|Decoder0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|rx_module|Decoder0~0_combout\ = (!\UART_transceiver|rx_module|machineAetat:bit_counter[1]~q\ & (!\UART_transceiver|rx_module|machineAetat:bit_counter[2]~q\ & (\UART_transceiver|rx_module|Equal2~0_combout\ & 
-- !\UART_transceiver|rx_module|machineAetat:bit_counter[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_transceiver|rx_module|machineAetat:bit_counter[1]~q\,
	datab => \UART_transceiver|rx_module|machineAetat:bit_counter[2]~q\,
	datac => \UART_transceiver|rx_module|Equal2~0_combout\,
	datad => \UART_transceiver|rx_module|machineAetat:bit_counter[0]~q\,
	combout => \UART_transceiver|rx_module|Decoder0~0_combout\);

-- Location: LCCOMB_X50_Y51_N6
\UART_transceiver|rx_module|Selector7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|rx_module|Selector7~2_combout\ = (\UART_transceiver|rx_module|rx_etat.data~q\ & ((\UART_transceiver|rx_module|Decoder0~0_combout\ & (\rx~input_o\)) # (!\UART_transceiver|rx_module|Decoder0~0_combout\ & 
-- ((\UART_transceiver|rx_module|rx_out_temp\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_transceiver|rx_module|rx_etat.data~q\,
	datab => \rx~input_o\,
	datac => \UART_transceiver|rx_module|rx_out_temp\(0),
	datad => \UART_transceiver|rx_module|Decoder0~0_combout\,
	combout => \UART_transceiver|rx_module|Selector7~2_combout\);

-- Location: LCCOMB_X50_Y51_N20
\UART_transceiver|rx_module|Selector7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|rx_module|Selector7~3_combout\ = (\UART_transceiver|rx_module|Selector7~2_combout\) # ((\UART_transceiver|rx_module|rx_out_temp\(0) & ((\UART_transceiver|rx_module|rx_etat.start~q\) # (\UART_transceiver|rx_module|rx_etat.stop~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_transceiver|rx_module|rx_etat.start~q\,
	datab => \UART_transceiver|rx_module|rx_etat.stop~q\,
	datac => \UART_transceiver|rx_module|rx_out_temp\(0),
	datad => \UART_transceiver|rx_module|Selector7~2_combout\,
	combout => \UART_transceiver|rx_module|Selector7~3_combout\);

-- Location: FF_X50_Y51_N21
\UART_transceiver|rx_module|rx_out_temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UART_transceiver|rx_module|Selector7~3_combout\,
	sclr => \ALT_INV_reset_n~input_o\,
	ena => \UART_transceiver|rx_module|rx_out_temp[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_transceiver|rx_module|rx_out_temp\(0));

-- Location: LCCOMB_X50_Y50_N26
\UART_transceiver|rx_module|rx_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|rx_module|rx_out~0_combout\ = (\reset_n~input_o\ & \UART_transceiver|rx_module|rx_out_temp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datac => \UART_transceiver|rx_module|rx_out_temp\(0),
	combout => \UART_transceiver|rx_module|rx_out~0_combout\);

-- Location: LCCOMB_X50_Y50_N18
\UART_transceiver|rx_module|rx_out[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|rx_module|rx_out[0]~1_combout\ = (!\UART_transceiver|B_rate|tickx16~q\) # (!\rx~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rx~input_o\,
	datad => \UART_transceiver|B_rate|tickx16~q\,
	combout => \UART_transceiver|rx_module|rx_out[0]~1_combout\);

-- Location: LCCOMB_X50_Y50_N16
\UART_transceiver|rx_module|rx_out[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|rx_module|rx_out[0]~2_combout\ = ((\UART_transceiver|rx_module|rx_etat.stop~q\ & (\UART_transceiver|rx_module|Equal2~0_combout\ & !\UART_transceiver|rx_module|rx_out[0]~1_combout\))) # (!\reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \UART_transceiver|rx_module|rx_etat.stop~q\,
	datac => \UART_transceiver|rx_module|Equal2~0_combout\,
	datad => \UART_transceiver|rx_module|rx_out[0]~1_combout\,
	combout => \UART_transceiver|rx_module|rx_out[0]~2_combout\);

-- Location: FF_X50_Y50_N27
\UART_transceiver|rx_module|rx_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UART_transceiver|rx_module|rx_out~0_combout\,
	ena => \UART_transceiver|rx_module|rx_out[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_transceiver|rx_module|rx_out\(0));

-- Location: LCCOMB_X51_Y50_N24
\UART_transceiver|rx_module|Decoder0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|rx_module|Decoder0~1_combout\ = (!\UART_transceiver|rx_module|machineAetat:bit_counter[2]~q\ & (\UART_transceiver|rx_module|machineAetat:bit_counter[0]~q\ & (!\UART_transceiver|rx_module|machineAetat:bit_counter[1]~q\ & 
-- \UART_transceiver|rx_module|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_transceiver|rx_module|machineAetat:bit_counter[2]~q\,
	datab => \UART_transceiver|rx_module|machineAetat:bit_counter[0]~q\,
	datac => \UART_transceiver|rx_module|machineAetat:bit_counter[1]~q\,
	datad => \UART_transceiver|rx_module|Equal2~0_combout\,
	combout => \UART_transceiver|rx_module|Decoder0~1_combout\);

-- Location: LCCOMB_X51_Y50_N6
\UART_transceiver|rx_module|Selector6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|rx_module|Selector6~2_combout\ = (\UART_transceiver|rx_module|rx_etat.data~q\ & ((\UART_transceiver|rx_module|Decoder0~1_combout\ & (\rx~input_o\)) # (!\UART_transceiver|rx_module|Decoder0~1_combout\ & 
-- ((\UART_transceiver|rx_module|rx_out_temp\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx~input_o\,
	datab => \UART_transceiver|rx_module|rx_out_temp\(1),
	datac => \UART_transceiver|rx_module|rx_etat.data~q\,
	datad => \UART_transceiver|rx_module|Decoder0~1_combout\,
	combout => \UART_transceiver|rx_module|Selector6~2_combout\);

-- Location: LCCOMB_X51_Y50_N28
\UART_transceiver|rx_module|Selector6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|rx_module|Selector6~3_combout\ = (\UART_transceiver|rx_module|Selector6~2_combout\) # ((\UART_transceiver|rx_module|rx_out_temp\(1) & ((\UART_transceiver|rx_module|rx_etat.start~q\) # (\UART_transceiver|rx_module|rx_etat.stop~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_transceiver|rx_module|rx_etat.start~q\,
	datab => \UART_transceiver|rx_module|rx_etat.stop~q\,
	datac => \UART_transceiver|rx_module|rx_out_temp\(1),
	datad => \UART_transceiver|rx_module|Selector6~2_combout\,
	combout => \UART_transceiver|rx_module|Selector6~3_combout\);

-- Location: FF_X51_Y50_N29
\UART_transceiver|rx_module|rx_out_temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UART_transceiver|rx_module|Selector6~3_combout\,
	sclr => \ALT_INV_reset_n~input_o\,
	ena => \UART_transceiver|rx_module|rx_out_temp[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_transceiver|rx_module|rx_out_temp\(1));

-- Location: LCCOMB_X50_Y50_N4
\UART_transceiver|rx_module|rx_out~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|rx_module|rx_out~3_combout\ = (\reset_n~input_o\ & \UART_transceiver|rx_module|rx_out_temp\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datad => \UART_transceiver|rx_module|rx_out_temp\(1),
	combout => \UART_transceiver|rx_module|rx_out~3_combout\);

-- Location: FF_X50_Y50_N5
\UART_transceiver|rx_module|rx_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UART_transceiver|rx_module|rx_out~3_combout\,
	ena => \UART_transceiver|rx_module|rx_out[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_transceiver|rx_module|rx_out\(1));

-- Location: LCCOMB_X51_Y51_N28
\UART_transceiver|rx_module|Decoder0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|rx_module|Decoder0~2_combout\ = (\UART_transceiver|rx_module|machineAetat:bit_counter[1]~q\ & (!\UART_transceiver|rx_module|machineAetat:bit_counter[0]~q\ & (!\UART_transceiver|rx_module|machineAetat:bit_counter[2]~q\ & 
-- \UART_transceiver|rx_module|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_transceiver|rx_module|machineAetat:bit_counter[1]~q\,
	datab => \UART_transceiver|rx_module|machineAetat:bit_counter[0]~q\,
	datac => \UART_transceiver|rx_module|machineAetat:bit_counter[2]~q\,
	datad => \UART_transceiver|rx_module|Equal2~0_combout\,
	combout => \UART_transceiver|rx_module|Decoder0~2_combout\);

-- Location: LCCOMB_X51_Y51_N2
\UART_transceiver|rx_module|Selector5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|rx_module|Selector5~2_combout\ = (\UART_transceiver|rx_module|rx_etat.data~q\ & ((\UART_transceiver|rx_module|Decoder0~2_combout\ & (\rx~input_o\)) # (!\UART_transceiver|rx_module|Decoder0~2_combout\ & 
-- ((\UART_transceiver|rx_module|rx_out_temp\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx~input_o\,
	datab => \UART_transceiver|rx_module|rx_out_temp\(2),
	datac => \UART_transceiver|rx_module|rx_etat.data~q\,
	datad => \UART_transceiver|rx_module|Decoder0~2_combout\,
	combout => \UART_transceiver|rx_module|Selector5~2_combout\);

-- Location: LCCOMB_X51_Y51_N24
\UART_transceiver|rx_module|Selector5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|rx_module|Selector5~3_combout\ = (\UART_transceiver|rx_module|Selector5~2_combout\) # ((\UART_transceiver|rx_module|rx_out_temp\(2) & ((\UART_transceiver|rx_module|rx_etat.stop~q\) # (\UART_transceiver|rx_module|rx_etat.start~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_transceiver|rx_module|rx_etat.stop~q\,
	datab => \UART_transceiver|rx_module|rx_etat.start~q\,
	datac => \UART_transceiver|rx_module|rx_out_temp\(2),
	datad => \UART_transceiver|rx_module|Selector5~2_combout\,
	combout => \UART_transceiver|rx_module|Selector5~3_combout\);

-- Location: FF_X51_Y51_N25
\UART_transceiver|rx_module|rx_out_temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UART_transceiver|rx_module|Selector5~3_combout\,
	sclr => \ALT_INV_reset_n~input_o\,
	ena => \UART_transceiver|rx_module|rx_out_temp[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_transceiver|rx_module|rx_out_temp\(2));

-- Location: LCCOMB_X50_Y50_N6
\UART_transceiver|rx_module|rx_out~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|rx_module|rx_out~4_combout\ = (\reset_n~input_o\ & \UART_transceiver|rx_module|rx_out_temp\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datac => \UART_transceiver|rx_module|rx_out_temp\(2),
	combout => \UART_transceiver|rx_module|rx_out~4_combout\);

-- Location: FF_X50_Y50_N7
\UART_transceiver|rx_module|rx_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UART_transceiver|rx_module|rx_out~4_combout\,
	ena => \UART_transceiver|rx_module|rx_out[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_transceiver|rx_module|rx_out\(2));

-- Location: LCCOMB_X51_Y50_N16
\UART_transceiver|rx_module|Decoder0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|rx_module|Decoder0~3_combout\ = (\UART_transceiver|rx_module|machineAetat:bit_counter[1]~q\ & (\UART_transceiver|rx_module|machineAetat:bit_counter[0]~q\ & (!\UART_transceiver|rx_module|machineAetat:bit_counter[2]~q\ & 
-- \UART_transceiver|rx_module|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_transceiver|rx_module|machineAetat:bit_counter[1]~q\,
	datab => \UART_transceiver|rx_module|machineAetat:bit_counter[0]~q\,
	datac => \UART_transceiver|rx_module|machineAetat:bit_counter[2]~q\,
	datad => \UART_transceiver|rx_module|Equal2~0_combout\,
	combout => \UART_transceiver|rx_module|Decoder0~3_combout\);

-- Location: LCCOMB_X51_Y50_N2
\UART_transceiver|rx_module|Selector4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|rx_module|Selector4~2_combout\ = (\UART_transceiver|rx_module|rx_etat.data~q\ & ((\UART_transceiver|rx_module|Decoder0~3_combout\ & (\rx~input_o\)) # (!\UART_transceiver|rx_module|Decoder0~3_combout\ & 
-- ((\UART_transceiver|rx_module|rx_out_temp\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_transceiver|rx_module|rx_etat.data~q\,
	datab => \rx~input_o\,
	datac => \UART_transceiver|rx_module|rx_out_temp\(3),
	datad => \UART_transceiver|rx_module|Decoder0~3_combout\,
	combout => \UART_transceiver|rx_module|Selector4~2_combout\);

-- Location: LCCOMB_X51_Y50_N26
\UART_transceiver|rx_module|Selector4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|rx_module|Selector4~3_combout\ = (\UART_transceiver|rx_module|Selector4~2_combout\) # ((\UART_transceiver|rx_module|rx_out_temp\(3) & ((\UART_transceiver|rx_module|rx_etat.start~q\) # (\UART_transceiver|rx_module|rx_etat.stop~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_transceiver|rx_module|rx_etat.start~q\,
	datab => \UART_transceiver|rx_module|rx_etat.stop~q\,
	datac => \UART_transceiver|rx_module|rx_out_temp\(3),
	datad => \UART_transceiver|rx_module|Selector4~2_combout\,
	combout => \UART_transceiver|rx_module|Selector4~3_combout\);

-- Location: FF_X51_Y50_N27
\UART_transceiver|rx_module|rx_out_temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UART_transceiver|rx_module|Selector4~3_combout\,
	sclr => \ALT_INV_reset_n~input_o\,
	ena => \UART_transceiver|rx_module|rx_out_temp[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_transceiver|rx_module|rx_out_temp\(3));

-- Location: LCCOMB_X50_Y50_N12
\UART_transceiver|rx_module|rx_out~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|rx_module|rx_out~5_combout\ = (\reset_n~input_o\ & \UART_transceiver|rx_module|rx_out_temp\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datad => \UART_transceiver|rx_module|rx_out_temp\(3),
	combout => \UART_transceiver|rx_module|rx_out~5_combout\);

-- Location: FF_X50_Y50_N13
\UART_transceiver|rx_module|rx_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UART_transceiver|rx_module|rx_out~5_combout\,
	ena => \UART_transceiver|rx_module|rx_out[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_transceiver|rx_module|rx_out\(3));

-- Location: LCCOMB_X51_Y51_N12
\UART_transceiver|rx_module|Selector3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|rx_module|Selector3~2_combout\ = (!\UART_transceiver|rx_module|machineAetat:bit_counter[1]~q\ & (!\UART_transceiver|rx_module|machineAetat:bit_counter[0]~q\ & (\UART_transceiver|rx_module|machineAetat:bit_counter[2]~q\ & 
-- \UART_transceiver|rx_module|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_transceiver|rx_module|machineAetat:bit_counter[1]~q\,
	datab => \UART_transceiver|rx_module|machineAetat:bit_counter[0]~q\,
	datac => \UART_transceiver|rx_module|machineAetat:bit_counter[2]~q\,
	datad => \UART_transceiver|rx_module|Equal2~0_combout\,
	combout => \UART_transceiver|rx_module|Selector3~2_combout\);

-- Location: LCCOMB_X50_Y50_N20
\UART_transceiver|rx_module|Selector3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|rx_module|Selector3~3_combout\ = (\UART_transceiver|rx_module|rx_etat.data~q\ & ((\UART_transceiver|rx_module|Selector3~2_combout\ & ((\rx~input_o\))) # (!\UART_transceiver|rx_module|Selector3~2_combout\ & 
-- (\UART_transceiver|rx_module|rx_out_temp\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_transceiver|rx_module|rx_etat.data~q\,
	datab => \UART_transceiver|rx_module|rx_out_temp\(4),
	datac => \rx~input_o\,
	datad => \UART_transceiver|rx_module|Selector3~2_combout\,
	combout => \UART_transceiver|rx_module|Selector3~3_combout\);

-- Location: LCCOMB_X50_Y50_N28
\UART_transceiver|rx_module|Selector3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|rx_module|Selector3~4_combout\ = (\UART_transceiver|rx_module|Selector3~3_combout\) # ((\UART_transceiver|rx_module|rx_out_temp\(4) & ((\UART_transceiver|rx_module|rx_etat.start~q\) # (\UART_transceiver|rx_module|rx_etat.stop~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_transceiver|rx_module|rx_etat.start~q\,
	datab => \UART_transceiver|rx_module|rx_etat.stop~q\,
	datac => \UART_transceiver|rx_module|rx_out_temp\(4),
	datad => \UART_transceiver|rx_module|Selector3~3_combout\,
	combout => \UART_transceiver|rx_module|Selector3~4_combout\);

-- Location: FF_X50_Y50_N29
\UART_transceiver|rx_module|rx_out_temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UART_transceiver|rx_module|Selector3~4_combout\,
	sclr => \ALT_INV_reset_n~input_o\,
	ena => \UART_transceiver|rx_module|rx_out_temp[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_transceiver|rx_module|rx_out_temp\(4));

-- Location: LCCOMB_X50_Y50_N22
\UART_transceiver|rx_module|rx_out~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|rx_module|rx_out~6_combout\ = (\reset_n~input_o\ & \UART_transceiver|rx_module|rx_out_temp\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datad => \UART_transceiver|rx_module|rx_out_temp\(4),
	combout => \UART_transceiver|rx_module|rx_out~6_combout\);

-- Location: FF_X50_Y50_N23
\UART_transceiver|rx_module|rx_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UART_transceiver|rx_module|rx_out~6_combout\,
	ena => \UART_transceiver|rx_module|rx_out[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_transceiver|rx_module|rx_out\(4));

-- Location: LCCOMB_X51_Y51_N6
\UART_transceiver|rx_module|Decoder0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|rx_module|Decoder0~4_combout\ = (!\UART_transceiver|rx_module|machineAetat:bit_counter[1]~q\ & (\UART_transceiver|rx_module|machineAetat:bit_counter[0]~q\ & (\UART_transceiver|rx_module|machineAetat:bit_counter[2]~q\ & 
-- \UART_transceiver|rx_module|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_transceiver|rx_module|machineAetat:bit_counter[1]~q\,
	datab => \UART_transceiver|rx_module|machineAetat:bit_counter[0]~q\,
	datac => \UART_transceiver|rx_module|machineAetat:bit_counter[2]~q\,
	datad => \UART_transceiver|rx_module|Equal2~0_combout\,
	combout => \UART_transceiver|rx_module|Decoder0~4_combout\);

-- Location: LCCOMB_X51_Y51_N16
\UART_transceiver|rx_module|Selector2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|rx_module|Selector2~2_combout\ = (\UART_transceiver|rx_module|rx_etat.data~q\ & ((\UART_transceiver|rx_module|Decoder0~4_combout\ & (\rx~input_o\)) # (!\UART_transceiver|rx_module|Decoder0~4_combout\ & 
-- ((\UART_transceiver|rx_module|rx_out_temp\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx~input_o\,
	datab => \UART_transceiver|rx_module|rx_out_temp\(5),
	datac => \UART_transceiver|rx_module|rx_etat.data~q\,
	datad => \UART_transceiver|rx_module|Decoder0~4_combout\,
	combout => \UART_transceiver|rx_module|Selector2~2_combout\);

-- Location: LCCOMB_X51_Y51_N18
\UART_transceiver|rx_module|Selector2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|rx_module|Selector2~3_combout\ = (\UART_transceiver|rx_module|Selector2~2_combout\) # ((\UART_transceiver|rx_module|rx_out_temp\(5) & ((\UART_transceiver|rx_module|rx_etat.stop~q\) # (\UART_transceiver|rx_module|rx_etat.start~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_transceiver|rx_module|rx_etat.stop~q\,
	datab => \UART_transceiver|rx_module|rx_etat.start~q\,
	datac => \UART_transceiver|rx_module|rx_out_temp\(5),
	datad => \UART_transceiver|rx_module|Selector2~2_combout\,
	combout => \UART_transceiver|rx_module|Selector2~3_combout\);

-- Location: FF_X51_Y51_N19
\UART_transceiver|rx_module|rx_out_temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UART_transceiver|rx_module|Selector2~3_combout\,
	sclr => \ALT_INV_reset_n~input_o\,
	ena => \UART_transceiver|rx_module|rx_out_temp[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_transceiver|rx_module|rx_out_temp\(5));

-- Location: LCCOMB_X50_Y50_N8
\UART_transceiver|rx_module|rx_out~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|rx_module|rx_out~7_combout\ = (\reset_n~input_o\ & \UART_transceiver|rx_module|rx_out_temp\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datac => \UART_transceiver|rx_module|rx_out_temp\(5),
	combout => \UART_transceiver|rx_module|rx_out~7_combout\);

-- Location: FF_X50_Y50_N9
\UART_transceiver|rx_module|rx_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UART_transceiver|rx_module|rx_out~7_combout\,
	ena => \UART_transceiver|rx_module|rx_out[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_transceiver|rx_module|rx_out\(5));

-- Location: LCCOMB_X51_Y50_N12
\UART_transceiver|rx_module|Decoder0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|rx_module|Decoder0~5_combout\ = (\UART_transceiver|rx_module|machineAetat:bit_counter[1]~q\ & (!\UART_transceiver|rx_module|machineAetat:bit_counter[0]~q\ & (\UART_transceiver|rx_module|machineAetat:bit_counter[2]~q\ & 
-- \UART_transceiver|rx_module|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_transceiver|rx_module|machineAetat:bit_counter[1]~q\,
	datab => \UART_transceiver|rx_module|machineAetat:bit_counter[0]~q\,
	datac => \UART_transceiver|rx_module|machineAetat:bit_counter[2]~q\,
	datad => \UART_transceiver|rx_module|Equal2~0_combout\,
	combout => \UART_transceiver|rx_module|Decoder0~5_combout\);

-- Location: LCCOMB_X51_Y50_N10
\UART_transceiver|rx_module|Selector1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|rx_module|Selector1~2_combout\ = (\UART_transceiver|rx_module|rx_etat.data~q\ & ((\UART_transceiver|rx_module|Decoder0~5_combout\ & (\rx~input_o\)) # (!\UART_transceiver|rx_module|Decoder0~5_combout\ & 
-- ((\UART_transceiver|rx_module|rx_out_temp\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx~input_o\,
	datab => \UART_transceiver|rx_module|rx_out_temp\(6),
	datac => \UART_transceiver|rx_module|rx_etat.data~q\,
	datad => \UART_transceiver|rx_module|Decoder0~5_combout\,
	combout => \UART_transceiver|rx_module|Selector1~2_combout\);

-- Location: LCCOMB_X51_Y50_N4
\UART_transceiver|rx_module|Selector1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|rx_module|Selector1~3_combout\ = (\UART_transceiver|rx_module|Selector1~2_combout\) # ((\UART_transceiver|rx_module|rx_out_temp\(6) & ((\UART_transceiver|rx_module|rx_etat.start~q\) # (\UART_transceiver|rx_module|rx_etat.stop~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_transceiver|rx_module|rx_etat.start~q\,
	datab => \UART_transceiver|rx_module|rx_etat.stop~q\,
	datac => \UART_transceiver|rx_module|rx_out_temp\(6),
	datad => \UART_transceiver|rx_module|Selector1~2_combout\,
	combout => \UART_transceiver|rx_module|Selector1~3_combout\);

-- Location: FF_X51_Y50_N5
\UART_transceiver|rx_module|rx_out_temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UART_transceiver|rx_module|Selector1~3_combout\,
	sclr => \ALT_INV_reset_n~input_o\,
	ena => \UART_transceiver|rx_module|rx_out_temp[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_transceiver|rx_module|rx_out_temp\(6));

-- Location: LCCOMB_X50_Y50_N14
\UART_transceiver|rx_module|rx_out~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|rx_module|rx_out~8_combout\ = (\reset_n~input_o\ & \UART_transceiver|rx_module|rx_out_temp\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datad => \UART_transceiver|rx_module|rx_out_temp\(6),
	combout => \UART_transceiver|rx_module|rx_out~8_combout\);

-- Location: FF_X50_Y50_N15
\UART_transceiver|rx_module|rx_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UART_transceiver|rx_module|rx_out~8_combout\,
	ena => \UART_transceiver|rx_module|rx_out[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_transceiver|rx_module|rx_out\(6));

-- Location: LCCOMB_X51_Y50_N20
\UART_transceiver|rx_module|Decoder0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|rx_module|Decoder0~6_combout\ = (\UART_transceiver|rx_module|machineAetat:bit_counter[1]~q\ & (\UART_transceiver|rx_module|machineAetat:bit_counter[0]~q\ & (\UART_transceiver|rx_module|machineAetat:bit_counter[2]~q\ & 
-- \UART_transceiver|rx_module|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_transceiver|rx_module|machineAetat:bit_counter[1]~q\,
	datab => \UART_transceiver|rx_module|machineAetat:bit_counter[0]~q\,
	datac => \UART_transceiver|rx_module|machineAetat:bit_counter[2]~q\,
	datad => \UART_transceiver|rx_module|Equal2~0_combout\,
	combout => \UART_transceiver|rx_module|Decoder0~6_combout\);

-- Location: LCCOMB_X51_Y50_N18
\UART_transceiver|rx_module|Selector0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|rx_module|Selector0~2_combout\ = (\UART_transceiver|rx_module|rx_etat.data~q\ & ((\UART_transceiver|rx_module|Decoder0~6_combout\ & (\rx~input_o\)) # (!\UART_transceiver|rx_module|Decoder0~6_combout\ & 
-- ((\UART_transceiver|rx_module|rx_out_temp\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_transceiver|rx_module|rx_etat.data~q\,
	datab => \rx~input_o\,
	datac => \UART_transceiver|rx_module|rx_out_temp\(7),
	datad => \UART_transceiver|rx_module|Decoder0~6_combout\,
	combout => \UART_transceiver|rx_module|Selector0~2_combout\);

-- Location: LCCOMB_X51_Y50_N22
\UART_transceiver|rx_module|Selector0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|rx_module|Selector0~3_combout\ = (\UART_transceiver|rx_module|Selector0~2_combout\) # ((\UART_transceiver|rx_module|rx_out_temp\(7) & ((\UART_transceiver|rx_module|rx_etat.start~q\) # (\UART_transceiver|rx_module|rx_etat.stop~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_transceiver|rx_module|rx_etat.start~q\,
	datab => \UART_transceiver|rx_module|rx_etat.stop~q\,
	datac => \UART_transceiver|rx_module|rx_out_temp\(7),
	datad => \UART_transceiver|rx_module|Selector0~2_combout\,
	combout => \UART_transceiver|rx_module|Selector0~3_combout\);

-- Location: FF_X51_Y50_N23
\UART_transceiver|rx_module|rx_out_temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UART_transceiver|rx_module|Selector0~3_combout\,
	sclr => \ALT_INV_reset_n~input_o\,
	ena => \UART_transceiver|rx_module|rx_out_temp[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_transceiver|rx_module|rx_out_temp\(7));

-- Location: LCCOMB_X50_Y50_N24
\UART_transceiver|rx_module|rx_out~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|rx_module|rx_out~9_combout\ = (\reset_n~input_o\ & \UART_transceiver|rx_module|rx_out_temp\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datad => \UART_transceiver|rx_module|rx_out_temp\(7),
	combout => \UART_transceiver|rx_module|rx_out~9_combout\);

-- Location: FF_X50_Y50_N25
\UART_transceiver|rx_module|rx_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UART_transceiver|rx_module|rx_out~9_combout\,
	ena => \UART_transceiver|rx_module|rx_out[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_transceiver|rx_module|rx_out\(7));

-- Location: LCCOMB_X49_Y53_N2
\UART_transceiver|B_rate|countx1[0]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|B_rate|countx1[0]~13_combout\ = \UART_transceiver|B_rate|countx1\(0) $ (VCC)
-- \UART_transceiver|B_rate|countx1[0]~14\ = CARRY(\UART_transceiver|B_rate|countx1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_transceiver|B_rate|countx1\(0),
	datad => VCC,
	combout => \UART_transceiver|B_rate|countx1[0]~13_combout\,
	cout => \UART_transceiver|B_rate|countx1[0]~14\);

-- Location: FF_X49_Y53_N3
\UART_transceiver|B_rate|countx1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UART_transceiver|B_rate|countx1[0]~13_combout\,
	clrn => \reset_n~input_o\,
	sclr => \UART_transceiver|B_rate|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_transceiver|B_rate|countx1\(0));

-- Location: LCCOMB_X49_Y53_N4
\UART_transceiver|B_rate|countx1[1]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|B_rate|countx1[1]~15_combout\ = (\UART_transceiver|B_rate|countx1\(1) & (!\UART_transceiver|B_rate|countx1[0]~14\)) # (!\UART_transceiver|B_rate|countx1\(1) & ((\UART_transceiver|B_rate|countx1[0]~14\) # (GND)))
-- \UART_transceiver|B_rate|countx1[1]~16\ = CARRY((!\UART_transceiver|B_rate|countx1[0]~14\) # (!\UART_transceiver|B_rate|countx1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_transceiver|B_rate|countx1\(1),
	datad => VCC,
	cin => \UART_transceiver|B_rate|countx1[0]~14\,
	combout => \UART_transceiver|B_rate|countx1[1]~15_combout\,
	cout => \UART_transceiver|B_rate|countx1[1]~16\);

-- Location: FF_X49_Y53_N5
\UART_transceiver|B_rate|countx1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UART_transceiver|B_rate|countx1[1]~15_combout\,
	clrn => \reset_n~input_o\,
	sclr => \UART_transceiver|B_rate|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_transceiver|B_rate|countx1\(1));

-- Location: LCCOMB_X49_Y53_N6
\UART_transceiver|B_rate|countx1[2]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|B_rate|countx1[2]~17_combout\ = (\UART_transceiver|B_rate|countx1\(2) & (\UART_transceiver|B_rate|countx1[1]~16\ $ (GND))) # (!\UART_transceiver|B_rate|countx1\(2) & (!\UART_transceiver|B_rate|countx1[1]~16\ & VCC))
-- \UART_transceiver|B_rate|countx1[2]~18\ = CARRY((\UART_transceiver|B_rate|countx1\(2) & !\UART_transceiver|B_rate|countx1[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UART_transceiver|B_rate|countx1\(2),
	datad => VCC,
	cin => \UART_transceiver|B_rate|countx1[1]~16\,
	combout => \UART_transceiver|B_rate|countx1[2]~17_combout\,
	cout => \UART_transceiver|B_rate|countx1[2]~18\);

-- Location: FF_X49_Y53_N7
\UART_transceiver|B_rate|countx1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UART_transceiver|B_rate|countx1[2]~17_combout\,
	clrn => \reset_n~input_o\,
	sclr => \UART_transceiver|B_rate|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_transceiver|B_rate|countx1\(2));

-- Location: LCCOMB_X49_Y53_N8
\UART_transceiver|B_rate|countx1[3]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|B_rate|countx1[3]~19_combout\ = (\UART_transceiver|B_rate|countx1\(3) & (!\UART_transceiver|B_rate|countx1[2]~18\)) # (!\UART_transceiver|B_rate|countx1\(3) & ((\UART_transceiver|B_rate|countx1[2]~18\) # (GND)))
-- \UART_transceiver|B_rate|countx1[3]~20\ = CARRY((!\UART_transceiver|B_rate|countx1[2]~18\) # (!\UART_transceiver|B_rate|countx1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_transceiver|B_rate|countx1\(3),
	datad => VCC,
	cin => \UART_transceiver|B_rate|countx1[2]~18\,
	combout => \UART_transceiver|B_rate|countx1[3]~19_combout\,
	cout => \UART_transceiver|B_rate|countx1[3]~20\);

-- Location: FF_X49_Y53_N9
\UART_transceiver|B_rate|countx1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UART_transceiver|B_rate|countx1[3]~19_combout\,
	clrn => \reset_n~input_o\,
	sclr => \UART_transceiver|B_rate|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_transceiver|B_rate|countx1\(3));

-- Location: LCCOMB_X49_Y53_N10
\UART_transceiver|B_rate|countx1[4]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|B_rate|countx1[4]~21_combout\ = (\UART_transceiver|B_rate|countx1\(4) & (\UART_transceiver|B_rate|countx1[3]~20\ $ (GND))) # (!\UART_transceiver|B_rate|countx1\(4) & (!\UART_transceiver|B_rate|countx1[3]~20\ & VCC))
-- \UART_transceiver|B_rate|countx1[4]~22\ = CARRY((\UART_transceiver|B_rate|countx1\(4) & !\UART_transceiver|B_rate|countx1[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UART_transceiver|B_rate|countx1\(4),
	datad => VCC,
	cin => \UART_transceiver|B_rate|countx1[3]~20\,
	combout => \UART_transceiver|B_rate|countx1[4]~21_combout\,
	cout => \UART_transceiver|B_rate|countx1[4]~22\);

-- Location: FF_X49_Y53_N11
\UART_transceiver|B_rate|countx1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UART_transceiver|B_rate|countx1[4]~21_combout\,
	clrn => \reset_n~input_o\,
	sclr => \UART_transceiver|B_rate|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_transceiver|B_rate|countx1\(4));

-- Location: LCCOMB_X49_Y53_N12
\UART_transceiver|B_rate|countx1[5]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|B_rate|countx1[5]~23_combout\ = (\UART_transceiver|B_rate|countx1\(5) & (!\UART_transceiver|B_rate|countx1[4]~22\)) # (!\UART_transceiver|B_rate|countx1\(5) & ((\UART_transceiver|B_rate|countx1[4]~22\) # (GND)))
-- \UART_transceiver|B_rate|countx1[5]~24\ = CARRY((!\UART_transceiver|B_rate|countx1[4]~22\) # (!\UART_transceiver|B_rate|countx1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UART_transceiver|B_rate|countx1\(5),
	datad => VCC,
	cin => \UART_transceiver|B_rate|countx1[4]~22\,
	combout => \UART_transceiver|B_rate|countx1[5]~23_combout\,
	cout => \UART_transceiver|B_rate|countx1[5]~24\);

-- Location: FF_X49_Y53_N13
\UART_transceiver|B_rate|countx1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UART_transceiver|B_rate|countx1[5]~23_combout\,
	clrn => \reset_n~input_o\,
	sclr => \UART_transceiver|B_rate|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_transceiver|B_rate|countx1\(5));

-- Location: LCCOMB_X49_Y53_N14
\UART_transceiver|B_rate|countx1[6]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|B_rate|countx1[6]~25_combout\ = (\UART_transceiver|B_rate|countx1\(6) & (\UART_transceiver|B_rate|countx1[5]~24\ $ (GND))) # (!\UART_transceiver|B_rate|countx1\(6) & (!\UART_transceiver|B_rate|countx1[5]~24\ & VCC))
-- \UART_transceiver|B_rate|countx1[6]~26\ = CARRY((\UART_transceiver|B_rate|countx1\(6) & !\UART_transceiver|B_rate|countx1[5]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_transceiver|B_rate|countx1\(6),
	datad => VCC,
	cin => \UART_transceiver|B_rate|countx1[5]~24\,
	combout => \UART_transceiver|B_rate|countx1[6]~25_combout\,
	cout => \UART_transceiver|B_rate|countx1[6]~26\);

-- Location: FF_X49_Y53_N15
\UART_transceiver|B_rate|countx1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UART_transceiver|B_rate|countx1[6]~25_combout\,
	clrn => \reset_n~input_o\,
	sclr => \UART_transceiver|B_rate|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_transceiver|B_rate|countx1\(6));

-- Location: LCCOMB_X49_Y53_N16
\UART_transceiver|B_rate|countx1[7]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|B_rate|countx1[7]~27_combout\ = (\UART_transceiver|B_rate|countx1\(7) & (!\UART_transceiver|B_rate|countx1[6]~26\)) # (!\UART_transceiver|B_rate|countx1\(7) & ((\UART_transceiver|B_rate|countx1[6]~26\) # (GND)))
-- \UART_transceiver|B_rate|countx1[7]~28\ = CARRY((!\UART_transceiver|B_rate|countx1[6]~26\) # (!\UART_transceiver|B_rate|countx1\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_transceiver|B_rate|countx1\(7),
	datad => VCC,
	cin => \UART_transceiver|B_rate|countx1[6]~26\,
	combout => \UART_transceiver|B_rate|countx1[7]~27_combout\,
	cout => \UART_transceiver|B_rate|countx1[7]~28\);

-- Location: FF_X49_Y53_N17
\UART_transceiver|B_rate|countx1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UART_transceiver|B_rate|countx1[7]~27_combout\,
	clrn => \reset_n~input_o\,
	sclr => \UART_transceiver|B_rate|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_transceiver|B_rate|countx1\(7));

-- Location: LCCOMB_X49_Y53_N18
\UART_transceiver|B_rate|countx1[8]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|B_rate|countx1[8]~29_combout\ = (\UART_transceiver|B_rate|countx1\(8) & (\UART_transceiver|B_rate|countx1[7]~28\ $ (GND))) # (!\UART_transceiver|B_rate|countx1\(8) & (!\UART_transceiver|B_rate|countx1[7]~28\ & VCC))
-- \UART_transceiver|B_rate|countx1[8]~30\ = CARRY((\UART_transceiver|B_rate|countx1\(8) & !\UART_transceiver|B_rate|countx1[7]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_transceiver|B_rate|countx1\(8),
	datad => VCC,
	cin => \UART_transceiver|B_rate|countx1[7]~28\,
	combout => \UART_transceiver|B_rate|countx1[8]~29_combout\,
	cout => \UART_transceiver|B_rate|countx1[8]~30\);

-- Location: FF_X49_Y53_N19
\UART_transceiver|B_rate|countx1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UART_transceiver|B_rate|countx1[8]~29_combout\,
	clrn => \reset_n~input_o\,
	sclr => \UART_transceiver|B_rate|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_transceiver|B_rate|countx1\(8));

-- Location: LCCOMB_X49_Y53_N20
\UART_transceiver|B_rate|countx1[9]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|B_rate|countx1[9]~31_combout\ = (\UART_transceiver|B_rate|countx1\(9) & (!\UART_transceiver|B_rate|countx1[8]~30\)) # (!\UART_transceiver|B_rate|countx1\(9) & ((\UART_transceiver|B_rate|countx1[8]~30\) # (GND)))
-- \UART_transceiver|B_rate|countx1[9]~32\ = CARRY((!\UART_transceiver|B_rate|countx1[8]~30\) # (!\UART_transceiver|B_rate|countx1\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_transceiver|B_rate|countx1\(9),
	datad => VCC,
	cin => \UART_transceiver|B_rate|countx1[8]~30\,
	combout => \UART_transceiver|B_rate|countx1[9]~31_combout\,
	cout => \UART_transceiver|B_rate|countx1[9]~32\);

-- Location: FF_X49_Y53_N21
\UART_transceiver|B_rate|countx1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UART_transceiver|B_rate|countx1[9]~31_combout\,
	clrn => \reset_n~input_o\,
	sclr => \UART_transceiver|B_rate|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_transceiver|B_rate|countx1\(9));

-- Location: LCCOMB_X49_Y53_N22
\UART_transceiver|B_rate|countx1[10]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|B_rate|countx1[10]~33_combout\ = (\UART_transceiver|B_rate|countx1\(10) & (\UART_transceiver|B_rate|countx1[9]~32\ $ (GND))) # (!\UART_transceiver|B_rate|countx1\(10) & (!\UART_transceiver|B_rate|countx1[9]~32\ & VCC))
-- \UART_transceiver|B_rate|countx1[10]~34\ = CARRY((\UART_transceiver|B_rate|countx1\(10) & !\UART_transceiver|B_rate|countx1[9]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UART_transceiver|B_rate|countx1\(10),
	datad => VCC,
	cin => \UART_transceiver|B_rate|countx1[9]~32\,
	combout => \UART_transceiver|B_rate|countx1[10]~33_combout\,
	cout => \UART_transceiver|B_rate|countx1[10]~34\);

-- Location: FF_X49_Y53_N23
\UART_transceiver|B_rate|countx1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UART_transceiver|B_rate|countx1[10]~33_combout\,
	clrn => \reset_n~input_o\,
	sclr => \UART_transceiver|B_rate|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_transceiver|B_rate|countx1\(10));

-- Location: LCCOMB_X49_Y53_N24
\UART_transceiver|B_rate|countx1[11]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|B_rate|countx1[11]~35_combout\ = (\UART_transceiver|B_rate|countx1\(11) & (!\UART_transceiver|B_rate|countx1[10]~34\)) # (!\UART_transceiver|B_rate|countx1\(11) & ((\UART_transceiver|B_rate|countx1[10]~34\) # (GND)))
-- \UART_transceiver|B_rate|countx1[11]~36\ = CARRY((!\UART_transceiver|B_rate|countx1[10]~34\) # (!\UART_transceiver|B_rate|countx1\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_transceiver|B_rate|countx1\(11),
	datad => VCC,
	cin => \UART_transceiver|B_rate|countx1[10]~34\,
	combout => \UART_transceiver|B_rate|countx1[11]~35_combout\,
	cout => \UART_transceiver|B_rate|countx1[11]~36\);

-- Location: FF_X49_Y53_N25
\UART_transceiver|B_rate|countx1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UART_transceiver|B_rate|countx1[11]~35_combout\,
	clrn => \reset_n~input_o\,
	sclr => \UART_transceiver|B_rate|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_transceiver|B_rate|countx1\(11));

-- Location: LCCOMB_X49_Y53_N26
\UART_transceiver|B_rate|countx1[12]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|B_rate|countx1[12]~37_combout\ = \UART_transceiver|B_rate|countx1\(12) $ (!\UART_transceiver|B_rate|countx1[11]~36\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UART_transceiver|B_rate|countx1\(12),
	cin => \UART_transceiver|B_rate|countx1[11]~36\,
	combout => \UART_transceiver|B_rate|countx1[12]~37_combout\);

-- Location: FF_X49_Y53_N27
\UART_transceiver|B_rate|countx1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UART_transceiver|B_rate|countx1[12]~37_combout\,
	clrn => \reset_n~input_o\,
	sclr => \UART_transceiver|B_rate|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_transceiver|B_rate|countx1\(12));

-- Location: LCCOMB_X49_Y53_N0
\UART_transceiver|B_rate|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|B_rate|LessThan0~0_combout\ = ((!\UART_transceiver|B_rate|countx1\(5) & ((!\UART_transceiver|B_rate|countx1\(3)) # (!\UART_transceiver|B_rate|countx1\(4))))) # (!\UART_transceiver|B_rate|countx1\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_transceiver|B_rate|countx1\(4),
	datab => \UART_transceiver|B_rate|countx1\(6),
	datac => \UART_transceiver|B_rate|countx1\(3),
	datad => \UART_transceiver|B_rate|countx1\(5),
	combout => \UART_transceiver|B_rate|LessThan0~0_combout\);

-- Location: LCCOMB_X49_Y53_N30
\UART_transceiver|B_rate|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|B_rate|LessThan0~1_combout\ = (!\UART_transceiver|B_rate|countx1\(7) & (!\UART_transceiver|B_rate|countx1\(8) & (!\UART_transceiver|B_rate|countx1\(9) & \UART_transceiver|B_rate|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_transceiver|B_rate|countx1\(7),
	datab => \UART_transceiver|B_rate|countx1\(8),
	datac => \UART_transceiver|B_rate|countx1\(9),
	datad => \UART_transceiver|B_rate|LessThan0~0_combout\,
	combout => \UART_transceiver|B_rate|LessThan0~1_combout\);

-- Location: LCCOMB_X49_Y53_N28
\UART_transceiver|B_rate|LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|B_rate|LessThan0~2_combout\ = (\UART_transceiver|B_rate|countx1\(12) & ((\UART_transceiver|B_rate|countx1\(11)) # ((\UART_transceiver|B_rate|countx1\(10) & !\UART_transceiver|B_rate|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_transceiver|B_rate|countx1\(10),
	datab => \UART_transceiver|B_rate|countx1\(11),
	datac => \UART_transceiver|B_rate|countx1\(12),
	datad => \UART_transceiver|B_rate|LessThan0~1_combout\,
	combout => \UART_transceiver|B_rate|LessThan0~2_combout\);

-- Location: FF_X49_Y53_N29
\UART_transceiver|B_rate|tick\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UART_transceiver|B_rate|LessThan0~2_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_transceiver|B_rate|tick~q\);

-- Location: LCCOMB_X51_Y53_N20
\UART_transceiver|tx_module|bit_counter_rst~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|tx_module|bit_counter_rst~0_combout\ = ((!\UART_transceiver|tx_module|tx_etat.Idle~q\ & \UART_transceiver|B_rate|tick~q\)) # (!\reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_transceiver|tx_module|tx_etat.Idle~q\,
	datab => \reset_n~input_o\,
	datac => \UART_transceiver|B_rate|tick~q\,
	combout => \UART_transceiver|tx_module|bit_counter_rst~0_combout\);

-- Location: LCCOMB_X51_Y53_N6
\UART_transceiver|tx_module|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|tx_module|Selector1~0_combout\ = (\UART_transceiver|tx_module|tx_etat.stop~q\) # ((\UART_transceiver|tx_module|start_rst~q\ & ((\UART_transceiver|tx_module|tx_etat.data~q\) # (\UART_transceiver|tx_module|tx_etat.start~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_transceiver|tx_module|tx_etat.stop~q\,
	datab => \UART_transceiver|tx_module|tx_etat.data~q\,
	datac => \UART_transceiver|tx_module|start_rst~q\,
	datad => \UART_transceiver|tx_module|tx_etat.start~q\,
	combout => \UART_transceiver|tx_module|Selector1~0_combout\);

-- Location: LCCOMB_X51_Y53_N30
\UART_transceiver|tx_module|start_rst~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|tx_module|start_rst~0_combout\ = (\UART_transceiver|B_rate|tick~q\) # (!\reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_transceiver|B_rate|tick~q\,
	datac => \reset_n~input_o\,
	combout => \UART_transceiver|tx_module|start_rst~0_combout\);

-- Location: FF_X51_Y53_N7
\UART_transceiver|tx_module|start_rst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UART_transceiver|tx_module|Selector1~0_combout\,
	asdata => VCC,
	sload => \ALT_INV_reset_n~input_o\,
	ena => \UART_transceiver|tx_module|start_rst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_transceiver|tx_module|start_rst~q\);

-- Location: IOIBUF_X49_Y54_N29
\tx_enable~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_enable,
	o => \tx_enable~input_o\);

-- Location: LCCOMB_X55_Y53_N0
\tx_button_controller|stabil_counter[0]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_button_controller|stabil_counter[0]~16_combout\ = \tx_button_controller|stabil_counter\(0) $ (VCC)
-- \tx_button_controller|stabil_counter[0]~17\ = CARRY(\tx_button_controller|stabil_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx_button_controller|stabil_counter\(0),
	datad => VCC,
	combout => \tx_button_controller|stabil_counter[0]~16_combout\,
	cout => \tx_button_controller|stabil_counter[0]~17\);

-- Location: LCCOMB_X55_Y53_N8
\tx_button_controller|stabil_counter[4]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_button_controller|stabil_counter[4]~24_combout\ = (\tx_button_controller|stabil_counter\(4) & (\tx_button_controller|stabil_counter[3]~23\ $ (GND))) # (!\tx_button_controller|stabil_counter\(4) & (!\tx_button_controller|stabil_counter[3]~23\ & VCC))
-- \tx_button_controller|stabil_counter[4]~25\ = CARRY((\tx_button_controller|stabil_counter\(4) & !\tx_button_controller|stabil_counter[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tx_button_controller|stabil_counter\(4),
	datad => VCC,
	cin => \tx_button_controller|stabil_counter[3]~23\,
	combout => \tx_button_controller|stabil_counter[4]~24_combout\,
	cout => \tx_button_controller|stabil_counter[4]~25\);

-- Location: LCCOMB_X55_Y53_N10
\tx_button_controller|stabil_counter[5]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_button_controller|stabil_counter[5]~26_combout\ = (\tx_button_controller|stabil_counter\(5) & (!\tx_button_controller|stabil_counter[4]~25\)) # (!\tx_button_controller|stabil_counter\(5) & ((\tx_button_controller|stabil_counter[4]~25\) # (GND)))
-- \tx_button_controller|stabil_counter[5]~27\ = CARRY((!\tx_button_controller|stabil_counter[4]~25\) # (!\tx_button_controller|stabil_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tx_button_controller|stabil_counter\(5),
	datad => VCC,
	cin => \tx_button_controller|stabil_counter[4]~25\,
	combout => \tx_button_controller|stabil_counter[5]~26_combout\,
	cout => \tx_button_controller|stabil_counter[5]~27\);

-- Location: FF_X54_Y53_N31
\tx_button_controller|stabil_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \tx_button_controller|stabil_counter[5]~26_combout\,
	sclr => \tx_button_controller|p_Debounce~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_button_controller|stabil_counter\(5));

-- Location: LCCOMB_X55_Y53_N12
\tx_button_controller|stabil_counter[6]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_button_controller|stabil_counter[6]~28_combout\ = (\tx_button_controller|stabil_counter\(6) & (\tx_button_controller|stabil_counter[5]~27\ $ (GND))) # (!\tx_button_controller|stabil_counter\(6) & (!\tx_button_controller|stabil_counter[5]~27\ & VCC))
-- \tx_button_controller|stabil_counter[6]~29\ = CARRY((\tx_button_controller|stabil_counter\(6) & !\tx_button_controller|stabil_counter[5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tx_button_controller|stabil_counter\(6),
	datad => VCC,
	cin => \tx_button_controller|stabil_counter[5]~27\,
	combout => \tx_button_controller|stabil_counter[6]~28_combout\,
	cout => \tx_button_controller|stabil_counter[6]~29\);

-- Location: FF_X54_Y53_N21
\tx_button_controller|stabil_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \tx_button_controller|stabil_counter[6]~28_combout\,
	sclr => \tx_button_controller|p_Debounce~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_button_controller|stabil_counter\(6));

-- Location: LCCOMB_X55_Y53_N14
\tx_button_controller|stabil_counter[7]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_button_controller|stabil_counter[7]~30_combout\ = (\tx_button_controller|stabil_counter\(7) & (!\tx_button_controller|stabil_counter[6]~29\)) # (!\tx_button_controller|stabil_counter\(7) & ((\tx_button_controller|stabil_counter[6]~29\) # (GND)))
-- \tx_button_controller|stabil_counter[7]~31\ = CARRY((!\tx_button_controller|stabil_counter[6]~29\) # (!\tx_button_controller|stabil_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tx_button_controller|stabil_counter\(7),
	datad => VCC,
	cin => \tx_button_controller|stabil_counter[6]~29\,
	combout => \tx_button_controller|stabil_counter[7]~30_combout\,
	cout => \tx_button_controller|stabil_counter[7]~31\);

-- Location: FF_X55_Y53_N15
\tx_button_controller|stabil_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_button_controller|stabil_counter[7]~30_combout\,
	sclr => \tx_button_controller|p_Debounce~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_button_controller|stabil_counter\(7));

-- Location: LCCOMB_X55_Y53_N16
\tx_button_controller|stabil_counter[8]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_button_controller|stabil_counter[8]~32_combout\ = (\tx_button_controller|stabil_counter\(8) & (\tx_button_controller|stabil_counter[7]~31\ $ (GND))) # (!\tx_button_controller|stabil_counter\(8) & (!\tx_button_controller|stabil_counter[7]~31\ & VCC))
-- \tx_button_controller|stabil_counter[8]~33\ = CARRY((\tx_button_controller|stabil_counter\(8) & !\tx_button_controller|stabil_counter[7]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tx_button_controller|stabil_counter\(8),
	datad => VCC,
	cin => \tx_button_controller|stabil_counter[7]~31\,
	combout => \tx_button_controller|stabil_counter[8]~32_combout\,
	cout => \tx_button_controller|stabil_counter[8]~33\);

-- Location: FF_X55_Y53_N17
\tx_button_controller|stabil_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_button_controller|stabil_counter[8]~32_combout\,
	sclr => \tx_button_controller|p_Debounce~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_button_controller|stabil_counter\(8));

-- Location: LCCOMB_X55_Y53_N18
\tx_button_controller|stabil_counter[9]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_button_controller|stabil_counter[9]~34_combout\ = (\tx_button_controller|stabil_counter\(9) & (!\tx_button_controller|stabil_counter[8]~33\)) # (!\tx_button_controller|stabil_counter\(9) & ((\tx_button_controller|stabil_counter[8]~33\) # (GND)))
-- \tx_button_controller|stabil_counter[9]~35\ = CARRY((!\tx_button_controller|stabil_counter[8]~33\) # (!\tx_button_controller|stabil_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tx_button_controller|stabil_counter\(9),
	datad => VCC,
	cin => \tx_button_controller|stabil_counter[8]~33\,
	combout => \tx_button_controller|stabil_counter[9]~34_combout\,
	cout => \tx_button_controller|stabil_counter[9]~35\);

-- Location: FF_X54_Y53_N1
\tx_button_controller|stabil_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \tx_button_controller|stabil_counter[9]~34_combout\,
	sclr => \tx_button_controller|p_Debounce~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_button_controller|stabil_counter\(9));

-- Location: LCCOMB_X55_Y53_N20
\tx_button_controller|stabil_counter[10]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_button_controller|stabil_counter[10]~36_combout\ = (\tx_button_controller|stabil_counter\(10) & (\tx_button_controller|stabil_counter[9]~35\ $ (GND))) # (!\tx_button_controller|stabil_counter\(10) & (!\tx_button_controller|stabil_counter[9]~35\ & 
-- VCC))
-- \tx_button_controller|stabil_counter[10]~37\ = CARRY((\tx_button_controller|stabil_counter\(10) & !\tx_button_controller|stabil_counter[9]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tx_button_controller|stabil_counter\(10),
	datad => VCC,
	cin => \tx_button_controller|stabil_counter[9]~35\,
	combout => \tx_button_controller|stabil_counter[10]~36_combout\,
	cout => \tx_button_controller|stabil_counter[10]~37\);

-- Location: FF_X54_Y53_N17
\tx_button_controller|stabil_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \tx_button_controller|stabil_counter[10]~36_combout\,
	sclr => \tx_button_controller|p_Debounce~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_button_controller|stabil_counter\(10));

-- Location: LCCOMB_X55_Y53_N22
\tx_button_controller|stabil_counter[11]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_button_controller|stabil_counter[11]~38_combout\ = (\tx_button_controller|stabil_counter\(11) & (!\tx_button_controller|stabil_counter[10]~37\)) # (!\tx_button_controller|stabil_counter\(11) & ((\tx_button_controller|stabil_counter[10]~37\) # (GND)))
-- \tx_button_controller|stabil_counter[11]~39\ = CARRY((!\tx_button_controller|stabil_counter[10]~37\) # (!\tx_button_controller|stabil_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tx_button_controller|stabil_counter\(11),
	datad => VCC,
	cin => \tx_button_controller|stabil_counter[10]~37\,
	combout => \tx_button_controller|stabil_counter[11]~38_combout\,
	cout => \tx_button_controller|stabil_counter[11]~39\);

-- Location: FF_X54_Y53_N27
\tx_button_controller|stabil_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \tx_button_controller|stabil_counter[11]~38_combout\,
	sclr => \tx_button_controller|p_Debounce~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_button_controller|stabil_counter\(11));

-- Location: LCCOMB_X55_Y53_N24
\tx_button_controller|stabil_counter[12]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_button_controller|stabil_counter[12]~40_combout\ = (\tx_button_controller|stabil_counter\(12) & (\tx_button_controller|stabil_counter[11]~39\ $ (GND))) # (!\tx_button_controller|stabil_counter\(12) & (!\tx_button_controller|stabil_counter[11]~39\ & 
-- VCC))
-- \tx_button_controller|stabil_counter[12]~41\ = CARRY((\tx_button_controller|stabil_counter\(12) & !\tx_button_controller|stabil_counter[11]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tx_button_controller|stabil_counter\(12),
	datad => VCC,
	cin => \tx_button_controller|stabil_counter[11]~39\,
	combout => \tx_button_controller|stabil_counter[12]~40_combout\,
	cout => \tx_button_controller|stabil_counter[12]~41\);

-- Location: FF_X55_Y53_N25
\tx_button_controller|stabil_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_button_controller|stabil_counter[12]~40_combout\,
	sclr => \tx_button_controller|p_Debounce~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_button_controller|stabil_counter\(12));

-- Location: LCCOMB_X55_Y53_N26
\tx_button_controller|stabil_counter[13]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_button_controller|stabil_counter[13]~42_combout\ = (\tx_button_controller|stabil_counter\(13) & (!\tx_button_controller|stabil_counter[12]~41\)) # (!\tx_button_controller|stabil_counter\(13) & ((\tx_button_controller|stabil_counter[12]~41\) # (GND)))
-- \tx_button_controller|stabil_counter[13]~43\ = CARRY((!\tx_button_controller|stabil_counter[12]~41\) # (!\tx_button_controller|stabil_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tx_button_controller|stabil_counter\(13),
	datad => VCC,
	cin => \tx_button_controller|stabil_counter[12]~41\,
	combout => \tx_button_controller|stabil_counter[13]~42_combout\,
	cout => \tx_button_controller|stabil_counter[13]~43\);

-- Location: FF_X55_Y53_N27
\tx_button_controller|stabil_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_button_controller|stabil_counter[13]~42_combout\,
	sclr => \tx_button_controller|p_Debounce~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_button_controller|stabil_counter\(13));

-- Location: LCCOMB_X55_Y53_N28
\tx_button_controller|stabil_counter[14]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_button_controller|stabil_counter[14]~44_combout\ = (\tx_button_controller|stabil_counter\(14) & (\tx_button_controller|stabil_counter[13]~43\ $ (GND))) # (!\tx_button_controller|stabil_counter\(14) & (!\tx_button_controller|stabil_counter[13]~43\ & 
-- VCC))
-- \tx_button_controller|stabil_counter[14]~45\ = CARRY((\tx_button_controller|stabil_counter\(14) & !\tx_button_controller|stabil_counter[13]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tx_button_controller|stabil_counter\(14),
	datad => VCC,
	cin => \tx_button_controller|stabil_counter[13]~43\,
	combout => \tx_button_controller|stabil_counter[14]~44_combout\,
	cout => \tx_button_controller|stabil_counter[14]~45\);

-- Location: FF_X55_Y53_N29
\tx_button_controller|stabil_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_button_controller|stabil_counter[14]~44_combout\,
	sclr => \tx_button_controller|p_Debounce~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_button_controller|stabil_counter\(14));

-- Location: LCCOMB_X55_Y53_N30
\tx_button_controller|stabil_counter[15]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_button_controller|stabil_counter[15]~46_combout\ = \tx_button_controller|stabil_counter\(15) $ (\tx_button_controller|stabil_counter[14]~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tx_button_controller|stabil_counter\(15),
	cin => \tx_button_controller|stabil_counter[14]~45\,
	combout => \tx_button_controller|stabil_counter[15]~46_combout\);

-- Location: FF_X55_Y53_N31
\tx_button_controller|stabil_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_button_controller|stabil_counter[15]~46_combout\,
	sclr => \tx_button_controller|p_Debounce~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_button_controller|stabil_counter\(15));

-- Location: LCCOMB_X54_Y53_N8
\tx_button_controller|p_Debounce~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_button_controller|p_Debounce~0_combout\ = (!\tx_button_controller|stabil_counter\(11) & (!\tx_button_controller|stabil_counter\(10) & (!\tx_button_controller|stabil_counter\(13) & !\tx_button_controller|stabil_counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_button_controller|stabil_counter\(11),
	datab => \tx_button_controller|stabil_counter\(10),
	datac => \tx_button_controller|stabil_counter\(13),
	datad => \tx_button_controller|stabil_counter\(12),
	combout => \tx_button_controller|p_Debounce~0_combout\);

-- Location: LCCOMB_X54_Y53_N12
\tx_button_controller|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_button_controller|LessThan0~0_combout\ = (!\tx_button_controller|stabil_counter\(7) & (((!\tx_button_controller|stabil_counter\(5) & !\tx_button_controller|stabil_counter\(4))) # (!\tx_button_controller|stabil_counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_button_controller|stabil_counter\(5),
	datab => \tx_button_controller|stabil_counter\(6),
	datac => \tx_button_controller|stabil_counter\(7),
	datad => \tx_button_controller|stabil_counter\(4),
	combout => \tx_button_controller|LessThan0~0_combout\);

-- Location: LCCOMB_X54_Y53_N2
\tx_button_controller|p_Debounce~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_button_controller|p_Debounce~1_combout\ = (\tx_button_controller|stabil_counter\(8) & (\tx_button_controller|stabil_counter\(9) & !\tx_button_controller|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx_button_controller|stabil_counter\(8),
	datac => \tx_button_controller|stabil_counter\(9),
	datad => \tx_button_controller|LessThan0~0_combout\,
	combout => \tx_button_controller|p_Debounce~1_combout\);

-- Location: LCCOMB_X54_Y53_N24
\tx_button_controller|p_Debounce~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_button_controller|p_Debounce~2_combout\ = (\tx_button_controller|stabil_counter\(15) & ((\tx_button_controller|p_Debounce~1_combout\) # (!\tx_button_controller|p_Debounce~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_button_controller|stabil_counter\(15),
	datac => \tx_button_controller|p_Debounce~0_combout\,
	datad => \tx_button_controller|p_Debounce~1_combout\,
	combout => \tx_button_controller|p_Debounce~2_combout\);

-- Location: LCCOMB_X54_Y53_N6
\tx_button_controller|p_Debounce~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_button_controller|p_Debounce~3_combout\ = (\tx_button_controller|stabil_counter\(14) & ((\tx_button_controller|p_Debounce~2_combout\) # (\tx_enable~input_o\ $ (!\tx_button_controller|etat_courant~q\)))) # (!\tx_button_controller|stabil_counter\(14) & 
-- (\tx_enable~input_o\ $ ((!\tx_button_controller|etat_courant~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_enable~input_o\,
	datab => \tx_button_controller|stabil_counter\(14),
	datac => \tx_button_controller|etat_courant~q\,
	datad => \tx_button_controller|p_Debounce~2_combout\,
	combout => \tx_button_controller|p_Debounce~3_combout\);

-- Location: FF_X55_Y53_N1
\tx_button_controller|stabil_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_button_controller|stabil_counter[0]~16_combout\,
	sclr => \tx_button_controller|p_Debounce~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_button_controller|stabil_counter\(0));

-- Location: LCCOMB_X55_Y53_N2
\tx_button_controller|stabil_counter[1]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_button_controller|stabil_counter[1]~18_combout\ = (\tx_button_controller|stabil_counter\(1) & (!\tx_button_controller|stabil_counter[0]~17\)) # (!\tx_button_controller|stabil_counter\(1) & ((\tx_button_controller|stabil_counter[0]~17\) # (GND)))
-- \tx_button_controller|stabil_counter[1]~19\ = CARRY((!\tx_button_controller|stabil_counter[0]~17\) # (!\tx_button_controller|stabil_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tx_button_controller|stabil_counter\(1),
	datad => VCC,
	cin => \tx_button_controller|stabil_counter[0]~17\,
	combout => \tx_button_controller|stabil_counter[1]~18_combout\,
	cout => \tx_button_controller|stabil_counter[1]~19\);

-- Location: FF_X55_Y53_N3
\tx_button_controller|stabil_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_button_controller|stabil_counter[1]~18_combout\,
	sclr => \tx_button_controller|p_Debounce~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_button_controller|stabil_counter\(1));

-- Location: LCCOMB_X55_Y53_N4
\tx_button_controller|stabil_counter[2]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_button_controller|stabil_counter[2]~20_combout\ = (\tx_button_controller|stabil_counter\(2) & (\tx_button_controller|stabil_counter[1]~19\ $ (GND))) # (!\tx_button_controller|stabil_counter\(2) & (!\tx_button_controller|stabil_counter[1]~19\ & VCC))
-- \tx_button_controller|stabil_counter[2]~21\ = CARRY((\tx_button_controller|stabil_counter\(2) & !\tx_button_controller|stabil_counter[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tx_button_controller|stabil_counter\(2),
	datad => VCC,
	cin => \tx_button_controller|stabil_counter[1]~19\,
	combout => \tx_button_controller|stabil_counter[2]~20_combout\,
	cout => \tx_button_controller|stabil_counter[2]~21\);

-- Location: FF_X55_Y53_N5
\tx_button_controller|stabil_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_button_controller|stabil_counter[2]~20_combout\,
	sclr => \tx_button_controller|p_Debounce~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_button_controller|stabil_counter\(2));

-- Location: LCCOMB_X55_Y53_N6
\tx_button_controller|stabil_counter[3]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_button_controller|stabil_counter[3]~22_combout\ = (\tx_button_controller|stabil_counter\(3) & (!\tx_button_controller|stabil_counter[2]~21\)) # (!\tx_button_controller|stabil_counter\(3) & ((\tx_button_controller|stabil_counter[2]~21\) # (GND)))
-- \tx_button_controller|stabil_counter[3]~23\ = CARRY((!\tx_button_controller|stabil_counter[2]~21\) # (!\tx_button_controller|stabil_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tx_button_controller|stabil_counter\(3),
	datad => VCC,
	cin => \tx_button_controller|stabil_counter[2]~21\,
	combout => \tx_button_controller|stabil_counter[3]~22_combout\,
	cout => \tx_button_controller|stabil_counter[3]~23\);

-- Location: FF_X55_Y53_N7
\tx_button_controller|stabil_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_button_controller|stabil_counter[3]~22_combout\,
	sclr => \tx_button_controller|p_Debounce~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_button_controller|stabil_counter\(3));

-- Location: FF_X55_Y53_N9
\tx_button_controller|stabil_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_button_controller|stabil_counter[4]~24_combout\,
	sclr => \tx_button_controller|p_Debounce~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_button_controller|stabil_counter\(4));

-- Location: LCCOMB_X54_Y53_N18
\tx_button_controller|etat_courant~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_button_controller|etat_courant~1_combout\ = (\tx_button_controller|stabil_counter\(4) & (\tx_button_controller|stabil_counter\(6) & (\tx_button_controller|stabil_counter\(15) & \tx_button_controller|stabil_counter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_button_controller|stabil_counter\(4),
	datab => \tx_button_controller|stabil_counter\(6),
	datac => \tx_button_controller|stabil_counter\(15),
	datad => \tx_button_controller|stabil_counter\(14),
	combout => \tx_button_controller|etat_courant~1_combout\);

-- Location: LCCOMB_X54_Y53_N30
\tx_button_controller|etat_courant~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_button_controller|etat_courant~0_combout\ = (\tx_button_controller|stabil_counter\(9) & (!\tx_button_controller|stabil_counter\(7) & (!\tx_button_controller|stabil_counter\(5) & \tx_button_controller|stabil_counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_button_controller|stabil_counter\(9),
	datab => \tx_button_controller|stabil_counter\(7),
	datac => \tx_button_controller|stabil_counter\(5),
	datad => \tx_button_controller|stabil_counter\(8),
	combout => \tx_button_controller|etat_courant~0_combout\);

-- Location: LCCOMB_X54_Y53_N28
\tx_button_controller|etat_courant~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_button_controller|etat_courant~2_combout\ = (!\tx_button_controller|stabil_counter\(3) & (!\tx_button_controller|stabil_counter\(1) & (!\tx_button_controller|stabil_counter\(0) & !\tx_button_controller|stabil_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_button_controller|stabil_counter\(3),
	datab => \tx_button_controller|stabil_counter\(1),
	datac => \tx_button_controller|stabil_counter\(0),
	datad => \tx_button_controller|stabil_counter\(2),
	combout => \tx_button_controller|etat_courant~2_combout\);

-- Location: LCCOMB_X54_Y53_N10
\tx_button_controller|etat_courant~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_button_controller|etat_courant~3_combout\ = (\tx_button_controller|etat_courant~1_combout\ & (\tx_button_controller|etat_courant~0_combout\ & (\tx_button_controller|p_Debounce~0_combout\ & \tx_button_controller|etat_courant~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_button_controller|etat_courant~1_combout\,
	datab => \tx_button_controller|etat_courant~0_combout\,
	datac => \tx_button_controller|p_Debounce~0_combout\,
	datad => \tx_button_controller|etat_courant~2_combout\,
	combout => \tx_button_controller|etat_courant~3_combout\);

-- Location: LCCOMB_X54_Y53_N22
\tx_button_controller|etat_courant~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_button_controller|etat_courant~4_combout\ = (\tx_button_controller|etat_courant~3_combout\ & (\tx_enable~input_o\)) # (!\tx_button_controller|etat_courant~3_combout\ & ((\tx_button_controller|etat_courant~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_enable~input_o\,
	datac => \tx_button_controller|etat_courant~q\,
	datad => \tx_button_controller|etat_courant~3_combout\,
	combout => \tx_button_controller|etat_courant~4_combout\);

-- Location: FF_X54_Y53_N23
\tx_button_controller|etat_courant\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_button_controller|etat_courant~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_button_controller|etat_courant~q\);

-- Location: LCCOMB_X51_Y53_N28
\UART_transceiver|tx_module|t_launch_detected~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|tx_module|t_launch_detected~0_combout\ = (!\UART_transceiver|tx_module|start_rst~q\ & (\reset_n~input_o\ & ((\UART_transceiver|tx_module|t_launch_detected~q\) # (\tx_button_controller|etat_courant~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_transceiver|tx_module|start_rst~q\,
	datab => \reset_n~input_o\,
	datac => \UART_transceiver|tx_module|t_launch_detected~q\,
	datad => \tx_button_controller|etat_courant~q\,
	combout => \UART_transceiver|tx_module|t_launch_detected~0_combout\);

-- Location: FF_X51_Y53_N29
\UART_transceiver|tx_module|t_launch_detected\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UART_transceiver|tx_module|t_launch_detected~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_transceiver|tx_module|t_launch_detected~q\);

-- Location: LCCOMB_X50_Y53_N14
\UART_transceiver|tx_module|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|tx_module|Selector4~0_combout\ = (!\UART_transceiver|tx_module|tx_etat.Idle~q\ & \UART_transceiver|tx_module|t_launch_detected~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_transceiver|tx_module|tx_etat.Idle~q\,
	datad => \UART_transceiver|tx_module|t_launch_detected~q\,
	combout => \UART_transceiver|tx_module|Selector4~0_combout\);

-- Location: FF_X50_Y53_N15
\UART_transceiver|tx_module|tx_etat.start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UART_transceiver|tx_module|Selector4~0_combout\,
	sclr => \ALT_INV_reset_n~input_o\,
	ena => \UART_transceiver|tx_module|start_rst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_transceiver|tx_module|tx_etat.start~q\);

-- Location: LCCOMB_X51_Y53_N10
\UART_transceiver|tx_module|tx_etat~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|tx_module|tx_etat~10_combout\ = (\reset_n~input_o\ & ((\UART_transceiver|tx_module|tx_etat.data~q\) # ((!\UART_transceiver|tx_module|tx_etat.Idle~q\ & !\UART_transceiver|tx_module|t_launch_detected~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_transceiver|tx_module|tx_etat.Idle~q\,
	datab => \UART_transceiver|tx_module|tx_etat.data~q\,
	datac => \reset_n~input_o\,
	datad => \UART_transceiver|tx_module|t_launch_detected~q\,
	combout => \UART_transceiver|tx_module|tx_etat~10_combout\);

-- Location: LCCOMB_X51_Y53_N0
\UART_transceiver|tx_module|tx_etat~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|tx_module|tx_etat~11_combout\ = (\UART_transceiver|tx_module|tx_etat~10_combout\ & (((\reset_n~input_o\ & !\UART_transceiver|B_rate|tick~q\)) # (!\UART_transceiver|tx_module|Selector6~1_combout\))) # 
-- (!\UART_transceiver|tx_module|tx_etat~10_combout\ & (\reset_n~input_o\ & (!\UART_transceiver|B_rate|tick~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_transceiver|tx_module|tx_etat~10_combout\,
	datab => \reset_n~input_o\,
	datac => \UART_transceiver|B_rate|tick~q\,
	datad => \UART_transceiver|tx_module|Selector6~1_combout\,
	combout => \UART_transceiver|tx_module|tx_etat~11_combout\);

-- Location: LCCOMB_X51_Y53_N8
\UART_transceiver|tx_module|tx_etat~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|tx_module|tx_etat~12_combout\ = (\UART_transceiver|tx_module|tx_etat~11_combout\ & (((\UART_transceiver|tx_module|tx_etat.data~q\)))) # (!\UART_transceiver|tx_module|tx_etat~11_combout\ & (\UART_transceiver|tx_module|tx_etat.start~q\ & 
-- (\reset_n~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_transceiver|tx_module|tx_etat.start~q\,
	datab => \reset_n~input_o\,
	datac => \UART_transceiver|tx_module|tx_etat.data~q\,
	datad => \UART_transceiver|tx_module|tx_etat~11_combout\,
	combout => \UART_transceiver|tx_module|tx_etat~12_combout\);

-- Location: FF_X51_Y53_N9
\UART_transceiver|tx_module|tx_etat.data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UART_transceiver|tx_module|tx_etat~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_transceiver|tx_module|tx_etat.data~q\);

-- Location: LCCOMB_X51_Y53_N22
\UART_transceiver|tx_module|bit_counter_rst~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|tx_module|bit_counter_rst~1_combout\ = (!\UART_transceiver|tx_module|bit_counter_rst~q\ & ((\UART_transceiver|tx_module|tx_etat.stop~q\) # ((\UART_transceiver|tx_module|tx_etat.data~q\) # (!\UART_transceiver|B_rate|tick~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_transceiver|tx_module|tx_etat.stop~q\,
	datab => \UART_transceiver|tx_module|bit_counter_rst~q\,
	datac => \UART_transceiver|tx_module|tx_etat.data~q\,
	datad => \UART_transceiver|B_rate|tick~q\,
	combout => \UART_transceiver|tx_module|bit_counter_rst~1_combout\);

-- Location: LCCOMB_X51_Y53_N14
\UART_transceiver|tx_module|bit_counter_rst~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|tx_module|bit_counter_rst~2_combout\ = (!\UART_transceiver|tx_module|bit_counter_rst~0_combout\ & (!\UART_transceiver|tx_module|bit_counter_rst~1_combout\ & ((!\UART_transceiver|tx_module|Selector6~1_combout\) # 
-- (!\UART_transceiver|B_rate|tick~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_transceiver|B_rate|tick~q\,
	datab => \UART_transceiver|tx_module|bit_counter_rst~0_combout\,
	datac => \UART_transceiver|tx_module|bit_counter_rst~1_combout\,
	datad => \UART_transceiver|tx_module|Selector6~1_combout\,
	combout => \UART_transceiver|tx_module|bit_counter_rst~2_combout\);

-- Location: FF_X51_Y53_N15
\UART_transceiver|tx_module|bit_counter_rst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UART_transceiver|tx_module|bit_counter_rst~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_transceiver|tx_module|bit_counter_rst~q\);

-- Location: LCCOMB_X51_Y53_N16
\UART_transceiver|tx_module|bit_counter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|tx_module|bit_counter~0_combout\ = (\UART_transceiver|tx_module|bit_counter_rst~q\ & \reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_transceiver|tx_module|bit_counter_rst~q\,
	datac => \reset_n~input_o\,
	combout => \UART_transceiver|tx_module|bit_counter~0_combout\);

-- Location: LCCOMB_X52_Y53_N20
\UART_transceiver|tx_module|bit_counter~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|tx_module|bit_counter~4_combout\ = (\reset_n~input_o\ & (!\UART_transceiver|tx_module|bit_counter\(0) & \UART_transceiver|tx_module|bit_counter_rst~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset_n~input_o\,
	datac => \UART_transceiver|tx_module|bit_counter\(0),
	datad => \UART_transceiver|tx_module|bit_counter_rst~q\,
	combout => \UART_transceiver|tx_module|bit_counter~4_combout\);

-- Location: LCCOMB_X52_Y53_N26
\UART_transceiver|tx_module|bit_counter[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|tx_module|bit_counter[3]~2_combout\ = (((\UART_transceiver|B_rate|tick~q\ & !\UART_transceiver|tx_module|bit_counter\(3))) # (!\reset_n~input_o\)) # (!\UART_transceiver|tx_module|bit_counter_rst~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_transceiver|tx_module|bit_counter_rst~q\,
	datab => \reset_n~input_o\,
	datac => \UART_transceiver|B_rate|tick~q\,
	datad => \UART_transceiver|tx_module|bit_counter\(3),
	combout => \UART_transceiver|tx_module|bit_counter[3]~2_combout\);

-- Location: FF_X52_Y53_N21
\UART_transceiver|tx_module|bit_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UART_transceiver|tx_module|bit_counter~4_combout\,
	ena => \UART_transceiver|tx_module|bit_counter[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_transceiver|tx_module|bit_counter\(0));

-- Location: LCCOMB_X52_Y53_N12
\UART_transceiver|tx_module|bit_counter~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|tx_module|bit_counter~3_combout\ = (\UART_transceiver|tx_module|bit_counter_rst~q\ & (\reset_n~input_o\ & (\UART_transceiver|tx_module|bit_counter\(1) $ (\UART_transceiver|tx_module|bit_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_transceiver|tx_module|bit_counter_rst~q\,
	datab => \reset_n~input_o\,
	datac => \UART_transceiver|tx_module|bit_counter\(1),
	datad => \UART_transceiver|tx_module|bit_counter\(0),
	combout => \UART_transceiver|tx_module|bit_counter~3_combout\);

-- Location: FF_X52_Y53_N13
\UART_transceiver|tx_module|bit_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UART_transceiver|tx_module|bit_counter~3_combout\,
	ena => \UART_transceiver|tx_module|bit_counter[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_transceiver|tx_module|bit_counter\(1));

-- Location: LCCOMB_X52_Y53_N8
\UART_transceiver|tx_module|bit_counter~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|tx_module|bit_counter~1_combout\ = (\UART_transceiver|tx_module|bit_counter~0_combout\ & (\UART_transceiver|tx_module|bit_counter\(2) $ (((\UART_transceiver|tx_module|bit_counter\(0) & \UART_transceiver|tx_module|bit_counter\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_transceiver|tx_module|bit_counter~0_combout\,
	datab => \UART_transceiver|tx_module|bit_counter\(0),
	datac => \UART_transceiver|tx_module|bit_counter\(2),
	datad => \UART_transceiver|tx_module|bit_counter\(1),
	combout => \UART_transceiver|tx_module|bit_counter~1_combout\);

-- Location: FF_X52_Y53_N9
\UART_transceiver|tx_module|bit_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UART_transceiver|tx_module|bit_counter~1_combout\,
	ena => \UART_transceiver|tx_module|bit_counter[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_transceiver|tx_module|bit_counter\(2));

-- Location: LCCOMB_X52_Y53_N28
\UART_transceiver|tx_module|Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|tx_module|Selector6~0_combout\ = (\UART_transceiver|tx_module|bit_counter\(1) & (\UART_transceiver|tx_module|bit_counter\(2) & \UART_transceiver|tx_module|bit_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_transceiver|tx_module|bit_counter\(1),
	datac => \UART_transceiver|tx_module|bit_counter\(2),
	datad => \UART_transceiver|tx_module|bit_counter\(0),
	combout => \UART_transceiver|tx_module|Selector6~0_combout\);

-- Location: LCCOMB_X51_Y53_N12
\UART_transceiver|tx_module|bit_counter[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|tx_module|bit_counter[3]~5_combout\ = (\UART_transceiver|tx_module|bit_counter~0_combout\ & ((\UART_transceiver|tx_module|bit_counter\(3)) # ((\UART_transceiver|B_rate|tick~q\ & \UART_transceiver|tx_module|Selector6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_transceiver|B_rate|tick~q\,
	datab => \UART_transceiver|tx_module|bit_counter~0_combout\,
	datac => \UART_transceiver|tx_module|bit_counter\(3),
	datad => \UART_transceiver|tx_module|Selector6~0_combout\,
	combout => \UART_transceiver|tx_module|bit_counter[3]~5_combout\);

-- Location: FF_X51_Y53_N13
\UART_transceiver|tx_module|bit_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UART_transceiver|tx_module|bit_counter[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_transceiver|tx_module|bit_counter\(3));

-- Location: LCCOMB_X51_Y53_N18
\UART_transceiver|tx_module|Selector6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|tx_module|Selector6~1_combout\ = (!\UART_transceiver|tx_module|bit_counter\(3) & (\UART_transceiver|tx_module|tx_etat.data~q\ & \UART_transceiver|tx_module|Selector6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_transceiver|tx_module|bit_counter\(3),
	datac => \UART_transceiver|tx_module|tx_etat.data~q\,
	datad => \UART_transceiver|tx_module|Selector6~0_combout\,
	combout => \UART_transceiver|tx_module|Selector6~1_combout\);

-- Location: LCCOMB_X50_Y53_N16
\UART_transceiver|tx_module|tx_etat.stop~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|tx_module|tx_etat.stop~feeder_combout\ = \UART_transceiver|tx_module|Selector6~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UART_transceiver|tx_module|Selector6~1_combout\,
	combout => \UART_transceiver|tx_module|tx_etat.stop~feeder_combout\);

-- Location: FF_X50_Y53_N17
\UART_transceiver|tx_module|tx_etat.stop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UART_transceiver|tx_module|tx_etat.stop~feeder_combout\,
	sclr => \ALT_INV_reset_n~input_o\,
	ena => \UART_transceiver|tx_module|start_rst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_transceiver|tx_module|tx_etat.stop~q\);

-- Location: LCCOMB_X51_Y53_N26
\UART_transceiver|tx_module|tx_etat~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|tx_module|tx_etat~13_combout\ = (\UART_transceiver|tx_module|tx_etat~11_combout\ & (((\UART_transceiver|tx_module|tx_etat.Idle~q\)))) # (!\UART_transceiver|tx_module|tx_etat~11_combout\ & (!\UART_transceiver|tx_module|tx_etat.stop~q\ & 
-- (\reset_n~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_transceiver|tx_module|tx_etat.stop~q\,
	datab => \reset_n~input_o\,
	datac => \UART_transceiver|tx_module|tx_etat.Idle~q\,
	datad => \UART_transceiver|tx_module|tx_etat~11_combout\,
	combout => \UART_transceiver|tx_module|tx_etat~13_combout\);

-- Location: FF_X51_Y53_N27
\UART_transceiver|tx_module|tx_etat.Idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UART_transceiver|tx_module|tx_etat~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_transceiver|tx_module|tx_etat.Idle~q\);

-- Location: IOIBUF_X54_Y54_N15
\tx_data_in[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data_in(6),
	o => \tx_data_in[6]~input_o\);

-- Location: LCCOMB_X52_Y53_N2
\UART_transceiver|tx_module|tx_stored_data[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|tx_module|tx_stored_data[6]~feeder_combout\ = \tx_data_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tx_data_in[6]~input_o\,
	combout => \UART_transceiver|tx_module|tx_stored_data[6]~feeder_combout\);

-- Location: LCCOMB_X51_Y53_N2
\UART_transceiver|tx_module|tx_stored_data[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|tx_module|tx_stored_data[7]~0_combout\ = (!\UART_transceiver|tx_module|start_rst~q\ & (!\UART_transceiver|tx_module|t_launch_detected~q\ & (\reset_n~input_o\ & \tx_button_controller|etat_courant~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_transceiver|tx_module|start_rst~q\,
	datab => \UART_transceiver|tx_module|t_launch_detected~q\,
	datac => \reset_n~input_o\,
	datad => \tx_button_controller|etat_courant~q\,
	combout => \UART_transceiver|tx_module|tx_stored_data[7]~0_combout\);

-- Location: FF_X52_Y53_N3
\UART_transceiver|tx_module|tx_stored_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UART_transceiver|tx_module|tx_stored_data[6]~feeder_combout\,
	ena => \UART_transceiver|tx_module|tx_stored_data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_transceiver|tx_module|tx_stored_data\(6));

-- Location: IOIBUF_X58_Y54_N29
\tx_data_in[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data_in(7),
	o => \tx_data_in[7]~input_o\);

-- Location: FF_X52_Y53_N5
\UART_transceiver|tx_module|tx_stored_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \tx_data_in[7]~input_o\,
	sload => VCC,
	ena => \UART_transceiver|tx_module|tx_stored_data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_transceiver|tx_module|tx_stored_data\(7));

-- Location: IOIBUF_X49_Y54_N1
\tx_data_in[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data_in(5),
	o => \tx_data_in[5]~input_o\);

-- Location: LCCOMB_X52_Y53_N14
\UART_transceiver|tx_module|tx_stored_data[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|tx_module|tx_stored_data[5]~feeder_combout\ = \tx_data_in[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tx_data_in[5]~input_o\,
	combout => \UART_transceiver|tx_module|tx_stored_data[5]~feeder_combout\);

-- Location: FF_X52_Y53_N15
\UART_transceiver|tx_module|tx_stored_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UART_transceiver|tx_module|tx_stored_data[5]~feeder_combout\,
	ena => \UART_transceiver|tx_module|tx_stored_data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_transceiver|tx_module|tx_stored_data\(5));

-- Location: IOIBUF_X54_Y54_N22
\tx_data_in[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data_in(4),
	o => \tx_data_in[4]~input_o\);

-- Location: FF_X52_Y53_N19
\UART_transceiver|tx_module|tx_stored_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \tx_data_in[4]~input_o\,
	sload => VCC,
	ena => \UART_transceiver|tx_module|tx_stored_data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_transceiver|tx_module|tx_stored_data\(4));

-- Location: LCCOMB_X52_Y53_N18
\UART_transceiver|tx_module|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|tx_module|Mux0~0_combout\ = (\UART_transceiver|tx_module|bit_counter\(1) & (((\UART_transceiver|tx_module|bit_counter\(0))))) # (!\UART_transceiver|tx_module|bit_counter\(1) & ((\UART_transceiver|tx_module|bit_counter\(0) & 
-- (\UART_transceiver|tx_module|tx_stored_data\(5))) # (!\UART_transceiver|tx_module|bit_counter\(0) & ((\UART_transceiver|tx_module|tx_stored_data\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_transceiver|tx_module|bit_counter\(1),
	datab => \UART_transceiver|tx_module|tx_stored_data\(5),
	datac => \UART_transceiver|tx_module|tx_stored_data\(4),
	datad => \UART_transceiver|tx_module|bit_counter\(0),
	combout => \UART_transceiver|tx_module|Mux0~0_combout\);

-- Location: LCCOMB_X52_Y53_N4
\UART_transceiver|tx_module|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|tx_module|Mux0~1_combout\ = (\UART_transceiver|tx_module|bit_counter\(1) & ((\UART_transceiver|tx_module|Mux0~0_combout\ & ((\UART_transceiver|tx_module|tx_stored_data\(7)))) # (!\UART_transceiver|tx_module|Mux0~0_combout\ & 
-- (\UART_transceiver|tx_module|tx_stored_data\(6))))) # (!\UART_transceiver|tx_module|bit_counter\(1) & (((\UART_transceiver|tx_module|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_transceiver|tx_module|bit_counter\(1),
	datab => \UART_transceiver|tx_module|tx_stored_data\(6),
	datac => \UART_transceiver|tx_module|tx_stored_data\(7),
	datad => \UART_transceiver|tx_module|Mux0~0_combout\,
	combout => \UART_transceiver|tx_module|Mux0~1_combout\);

-- Location: IOIBUF_X51_Y54_N1
\tx_data_in[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data_in(2),
	o => \tx_data_in[2]~input_o\);

-- Location: LCCOMB_X52_Y53_N22
\UART_transceiver|tx_module|tx_stored_data[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|tx_module|tx_stored_data[2]~feeder_combout\ = \tx_data_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tx_data_in[2]~input_o\,
	combout => \UART_transceiver|tx_module|tx_stored_data[2]~feeder_combout\);

-- Location: FF_X52_Y53_N23
\UART_transceiver|tx_module|tx_stored_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UART_transceiver|tx_module|tx_stored_data[2]~feeder_combout\,
	ena => \UART_transceiver|tx_module|tx_stored_data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_transceiver|tx_module|tx_stored_data\(2));

-- Location: IOIBUF_X54_Y54_N29
\tx_data_in[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data_in(3),
	o => \tx_data_in[3]~input_o\);

-- Location: FF_X52_Y53_N17
\UART_transceiver|tx_module|tx_stored_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \tx_data_in[3]~input_o\,
	sload => VCC,
	ena => \UART_transceiver|tx_module|tx_stored_data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_transceiver|tx_module|tx_stored_data\(3));

-- Location: IOIBUF_X51_Y54_N22
\tx_data_in[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data_in(1),
	o => \tx_data_in[1]~input_o\);

-- Location: LCCOMB_X52_Y53_N24
\UART_transceiver|tx_module|tx_stored_data[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|tx_module|tx_stored_data[1]~feeder_combout\ = \tx_data_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tx_data_in[1]~input_o\,
	combout => \UART_transceiver|tx_module|tx_stored_data[1]~feeder_combout\);

-- Location: FF_X52_Y53_N25
\UART_transceiver|tx_module|tx_stored_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UART_transceiver|tx_module|tx_stored_data[1]~feeder_combout\,
	ena => \UART_transceiver|tx_module|tx_stored_data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_transceiver|tx_module|tx_stored_data\(1));

-- Location: IOIBUF_X51_Y54_N29
\tx_data_in[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data_in(0),
	o => \tx_data_in[0]~input_o\);

-- Location: FF_X52_Y53_N11
\UART_transceiver|tx_module|tx_stored_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \tx_data_in[0]~input_o\,
	sload => VCC,
	ena => \UART_transceiver|tx_module|tx_stored_data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_transceiver|tx_module|tx_stored_data\(0));

-- Location: LCCOMB_X52_Y53_N10
\UART_transceiver|tx_module|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|tx_module|Mux0~2_combout\ = (\UART_transceiver|tx_module|bit_counter\(1) & (((\UART_transceiver|tx_module|bit_counter\(0))))) # (!\UART_transceiver|tx_module|bit_counter\(1) & ((\UART_transceiver|tx_module|bit_counter\(0) & 
-- (\UART_transceiver|tx_module|tx_stored_data\(1))) # (!\UART_transceiver|tx_module|bit_counter\(0) & ((\UART_transceiver|tx_module|tx_stored_data\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_transceiver|tx_module|bit_counter\(1),
	datab => \UART_transceiver|tx_module|tx_stored_data\(1),
	datac => \UART_transceiver|tx_module|tx_stored_data\(0),
	datad => \UART_transceiver|tx_module|bit_counter\(0),
	combout => \UART_transceiver|tx_module|Mux0~2_combout\);

-- Location: LCCOMB_X52_Y53_N16
\UART_transceiver|tx_module|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|tx_module|Mux0~3_combout\ = (\UART_transceiver|tx_module|bit_counter\(1) & ((\UART_transceiver|tx_module|Mux0~2_combout\ & ((\UART_transceiver|tx_module|tx_stored_data\(3)))) # (!\UART_transceiver|tx_module|Mux0~2_combout\ & 
-- (\UART_transceiver|tx_module|tx_stored_data\(2))))) # (!\UART_transceiver|tx_module|bit_counter\(1) & (((\UART_transceiver|tx_module|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_transceiver|tx_module|bit_counter\(1),
	datab => \UART_transceiver|tx_module|tx_stored_data\(2),
	datac => \UART_transceiver|tx_module|tx_stored_data\(3),
	datad => \UART_transceiver|tx_module|Mux0~2_combout\,
	combout => \UART_transceiver|tx_module|Mux0~3_combout\);

-- Location: LCCOMB_X52_Y53_N6
\UART_transceiver|tx_module|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|tx_module|Selector2~0_combout\ = (\UART_transceiver|tx_module|bit_counter\(2) & (\UART_transceiver|tx_module|Mux0~1_combout\)) # (!\UART_transceiver|tx_module|bit_counter\(2) & ((\UART_transceiver|tx_module|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_transceiver|tx_module|bit_counter\(2),
	datac => \UART_transceiver|tx_module|Mux0~1_combout\,
	datad => \UART_transceiver|tx_module|Mux0~3_combout\,
	combout => \UART_transceiver|tx_module|Selector2~0_combout\);

-- Location: LCCOMB_X51_Y53_N24
\UART_transceiver|tx_module|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|tx_module|Selector2~1_combout\ = ((\UART_transceiver|tx_module|tx_etat.stop~q\) # ((\UART_transceiver|tx_module|tx_etat.data~q\ & \UART_transceiver|tx_module|Selector2~0_combout\))) # (!\UART_transceiver|tx_module|tx_etat.Idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_transceiver|tx_module|tx_etat.Idle~q\,
	datab => \UART_transceiver|tx_module|tx_etat.data~q\,
	datac => \UART_transceiver|tx_module|tx_etat.stop~q\,
	datad => \UART_transceiver|tx_module|Selector2~0_combout\,
	combout => \UART_transceiver|tx_module|Selector2~1_combout\);

-- Location: LCCOMB_X51_Y53_N4
\UART_transceiver|tx_module|tx_out~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UART_transceiver|tx_module|tx_out~feeder_combout\ = \UART_transceiver|tx_module|Selector2~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UART_transceiver|tx_module|Selector2~1_combout\,
	combout => \UART_transceiver|tx_module|tx_out~feeder_combout\);

-- Location: FF_X51_Y53_N5
\UART_transceiver|tx_module|tx_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UART_transceiver|tx_module|tx_out~feeder_combout\,
	asdata => VCC,
	sload => \ALT_INV_reset_n~input_o\,
	ena => \UART_transceiver|tx_module|start_rst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_transceiver|tx_module|tx_out~q\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_rx_data_out(0) <= \rx_data_out[0]~output_o\;

ww_rx_data_out(1) <= \rx_data_out[1]~output_o\;

ww_rx_data_out(2) <= \rx_data_out[2]~output_o\;

ww_rx_data_out(3) <= \rx_data_out[3]~output_o\;

ww_rx_data_out(4) <= \rx_data_out[4]~output_o\;

ww_rx_data_out(5) <= \rx_data_out[5]~output_o\;

ww_rx_data_out(6) <= \rx_data_out[6]~output_o\;

ww_rx_data_out(7) <= \rx_data_out[7]~output_o\;

ww_tx <= \tx~output_o\;
END structure;


