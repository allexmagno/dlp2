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
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

-- DATE "10/18/2019 17:58:39"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top_timer_de2_115 IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(0 DOWNTO 0);
	button : IN std_logic;
	load : IN std_logic;
	enable : IN std_logic;
	buzzer : OUT std_logic;
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	hra_d_load : IN std_logic_vector(3 DOWNTO 0);
	hra_u_load : IN std_logic_vector(3 DOWNTO 0);
	min_d_load : IN std_logic_vector(3 DOWNTO 0);
	min_u_load : IN std_logic_vector(3 DOWNTO 0)
	);
END top_timer_de2_115;

-- Design Ports Information
-- buzzer	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hra_d_load[1]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hra_d_load[0]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hra_d_load[3]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hra_d_load[2]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hra_u_load[1]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hra_u_load[0]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hra_u_load[3]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hra_u_load[2]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_d_load[1]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_d_load[2]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_d_load[3]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_d_load[0]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_u_load[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_u_load[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_u_load[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_u_load[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top_timer_de2_115 IS
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
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_button : std_logic;
SIGNAL ww_load : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_buzzer : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hra_d_load : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_hra_u_load : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_min_d_load : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_min_u_load : std_logic_vector(3 DOWNTO 0);
SIGNAL \pll0|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \pll0|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pll0|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \t0|Add0~4_combout\ : std_logic;
SIGNAL \t0|Add1~13\ : std_logic;
SIGNAL \t0|Add1~14_combout\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \display|Mux3~0_combout\ : std_logic;
SIGNAL \display|Mux0~0_combout\ : std_logic;
SIGNAL \display|Mux0~1_combout\ : std_logic;
SIGNAL \display|Mux0~2_combout\ : std_logic;
SIGNAL \display|Mux0~3_combout\ : std_logic;
SIGNAL \fsm|state_reg.alarm~q\ : std_logic;
SIGNAL \fsm|Selector3~0_combout\ : std_logic;
SIGNAL \fsm|state_reg.load_time~q\ : std_logic;
SIGNAL \fsm|state_reg.idle~q\ : std_logic;
SIGNAL \fsm|state_next.load_time~0_combout\ : std_logic;
SIGNAL \fsm|process_0~0_combout\ : std_logic;
SIGNAL \fsm|process_0~1_combout\ : std_logic;
SIGNAL \fsm|Equal0~2_combout\ : std_logic;
SIGNAL \fsm|process_0~2_combout\ : std_logic;
SIGNAL \fsm|Equal1~2_combout\ : std_logic;
SIGNAL \fsm|Equal1~3_combout\ : std_logic;
SIGNAL \fsm|process_0~3_combout\ : std_logic;
SIGNAL \fsm|Equal1~4_combout\ : std_logic;
SIGNAL \fsm|Equal1~5_combout\ : std_logic;
SIGNAL \fsm|process_0~4_combout\ : std_logic;
SIGNAL \fsm|process_0~5_combout\ : std_logic;
SIGNAL \fsm|Equal4~0_combout\ : std_logic;
SIGNAL \fsm|Equal4~1_combout\ : std_logic;
SIGNAL \fsm|state_reg.sleep~q\ : std_logic;
SIGNAL \fsm|Selector3~1_combout\ : std_logic;
SIGNAL \fsm|state_reg.on_alarm~q\ : std_logic;
SIGNAL \fsm|Selector3~2_combout\ : std_logic;
SIGNAL \fsm|Selector3~3_combout\ : std_logic;
SIGNAL \fsm|Selector3~4_combout\ : std_logic;
SIGNAL \fsm|Selector3~5_combout\ : std_logic;
SIGNAL \fsm|Selector3~6_combout\ : std_logic;
SIGNAL \fsm|Equal3~1_combout\ : std_logic;
SIGNAL \fsm|Equal3~2_combout\ : std_logic;
SIGNAL \fsm|Selector3~7_combout\ : std_logic;
SIGNAL \fsm|Equal3~3_combout\ : std_logic;
SIGNAL \fsm|Equal3~4_combout\ : std_logic;
SIGNAL \fsm|Selector3~8_combout\ : std_logic;
SIGNAL \fsm|Selector3~9_combout\ : std_logic;
SIGNAL \fsm|Selector3~10_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \t0|src2[1]~0_combout\ : std_logic;
SIGNAL \fsm|Selector0~0_combout\ : std_logic;
SIGNAL \fsm|state_reg.wait_button2~q\ : std_logic;
SIGNAL \fsm|state_reg.wait_button3~q\ : std_logic;
SIGNAL \fsm|Selector0~1_combout\ : std_logic;
SIGNAL \fsm|Selector0~2_combout\ : std_logic;
SIGNAL \fsm|min_u_loadd[1]~0_combout\ : std_logic;
SIGNAL \fsm|state_reg.wait_button1~q\ : std_logic;
SIGNAL \fsm|state_next.inc_sleep~0_combout\ : std_logic;
SIGNAL \fsm|Mux2~0_combout\ : std_logic;
SIGNAL \fsm|Mux3~0_combout\ : std_logic;
SIGNAL \fsm|Add0~0_combout\ : std_logic;
SIGNAL \fsm|Mux0~0_combout\ : std_logic;
SIGNAL \fsm|Add0~1_combout\ : std_logic;
SIGNAL \fsm|Mux1~0_combout\ : std_logic;
SIGNAL \fsm|state_reg.inc_sleep~q\ : std_logic;
SIGNAL \fsm|process_0~6_combout\ : std_logic;
SIGNAL \fsm|process_0~7_combout\ : std_logic;
SIGNAL \fsm|Selector2~0_combout\ : std_logic;
SIGNAL \fsm|Selector2~1_combout\ : std_logic;
SIGNAL \fsm|Selector1~0_combout\ : std_logic;
SIGNAL \fsm|Selector1~1_combout\ : std_logic;
SIGNAL \fsm|Selector1~2_combout\ : std_logic;
SIGNAL \r_next[9]~0_combout\ : std_logic;
SIGNAL \r_next[13]~3_combout\ : std_logic;
SIGNAL \fsm|Selector5~0_combout\ : std_logic;
SIGNAL \fsm|Selector6~0_combout\ : std_logic;
SIGNAL \fsm|Selector4~0_combout\ : std_logic;
SIGNAL \fsm|min_u_sleep_reg[1]~4_combout\ : std_logic;
SIGNAL \button~input_o\ : std_logic;
SIGNAL \load~input_o\ : std_logic;
SIGNAL \hra_d_load[1]~input_o\ : std_logic;
SIGNAL \hra_d_load[0]~input_o\ : std_logic;
SIGNAL \hra_d_load[3]~input_o\ : std_logic;
SIGNAL \hra_d_load[2]~input_o\ : std_logic;
SIGNAL \hra_u_load[1]~input_o\ : std_logic;
SIGNAL \hra_u_load[0]~input_o\ : std_logic;
SIGNAL \hra_u_load[3]~input_o\ : std_logic;
SIGNAL \hra_u_load[2]~input_o\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \min_d_load[1]~input_o\ : std_logic;
SIGNAL \min_d_load[2]~input_o\ : std_logic;
SIGNAL \min_d_load[3]~input_o\ : std_logic;
SIGNAL \min_d_load[0]~input_o\ : std_logic;
SIGNAL \min_u_load[1]~input_o\ : std_logic;
SIGNAL \min_u_load[0]~input_o\ : std_logic;
SIGNAL \min_u_load[3]~input_o\ : std_logic;
SIGNAL \min_u_load[2]~input_o\ : std_logic;
SIGNAL \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \fsm|buzzer_buf_reg~feeder_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \fsm|buzzer_buf_reg~q\ : std_logic;
SIGNAL \counter0|sel_reg[0]~0_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \next_360[4]~3_combout\ : std_logic;
SIGNAL \next_360[3]~0_combout\ : std_logic;
SIGNAL \next_360[2]~1_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \next_360[0]~2_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \counter0|sel_next[2]~1_combout\ : std_logic;
SIGNAL \counter0|sel_next[1]~0_combout\ : std_logic;
SIGNAL \t0|Add0~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \r_next[10]~4_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \r_next[8]~1_combout\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \r_next[4]~2_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \t0|Add0~1\ : std_logic;
SIGNAL \t0|Add0~2_combout\ : std_logic;
SIGNAL \t0|Equal0~0_combout\ : std_logic;
SIGNAL \t0|Add0~3\ : std_logic;
SIGNAL \t0|Add0~5\ : std_logic;
SIGNAL \t0|Add0~6_combout\ : std_logic;
SIGNAL \t0|Add0~7\ : std_logic;
SIGNAL \t0|Add0~8_combout\ : std_logic;
SIGNAL \t0|Add0~9\ : std_logic;
SIGNAL \t0|Add0~10_combout\ : std_logic;
SIGNAL \t0|sec_next[5]~4_combout\ : std_logic;
SIGNAL \t0|Add0~11\ : std_logic;
SIGNAL \t0|Add0~12_combout\ : std_logic;
SIGNAL \t0|sec_next[6]~5_combout\ : std_logic;
SIGNAL \t0|Add0~13\ : std_logic;
SIGNAL \t0|Add0~14_combout\ : std_logic;
SIGNAL \t0|Equal3~0_combout\ : std_logic;
SIGNAL \t0|Equal3~1_combout\ : std_logic;
SIGNAL \t0|Add1~1\ : std_logic;
SIGNAL \t0|Add1~2_combout\ : std_logic;
SIGNAL \t0|Add1~3\ : std_logic;
SIGNAL \t0|Add1~4_combout\ : std_logic;
SIGNAL \t0|Add1~5\ : std_logic;
SIGNAL \t0|Add1~6_combout\ : std_logic;
SIGNAL \t0|Add1~7\ : std_logic;
SIGNAL \t0|Add1~8_combout\ : std_logic;
SIGNAL \t0|Add1~9\ : std_logic;
SIGNAL \t0|Add1~10_combout\ : std_logic;
SIGNAL \t0|min_next[5]~1_combout\ : std_logic;
SIGNAL \t0|Equal4~0_combout\ : std_logic;
SIGNAL \t0|Add1~0_combout\ : std_logic;
SIGNAL \t0|src1[1]~0_combout\ : std_logic;
SIGNAL \t0|min_next~0_combout\ : std_logic;
SIGNAL \t0|Add2~0_combout\ : std_logic;
SIGNAL \display|Mux3~2_combout\ : std_logic;
SIGNAL \display|Mux3~1_combout\ : std_logic;
SIGNAL \display|Mux3~3_combout\ : std_logic;
SIGNAL \t0|Add2~11\ : std_logic;
SIGNAL \t0|Add2~13\ : std_logic;
SIGNAL \t0|Add2~14_combout\ : std_logic;
SIGNAL \t0|Add2~12_combout\ : std_logic;
SIGNAL \t0|hour_next~4_combout\ : std_logic;
SIGNAL \t0|hour_next~5_combout\ : std_logic;
SIGNAL \t0|Add2~1\ : std_logic;
SIGNAL \t0|Add2~2_combout\ : std_logic;
SIGNAL \t0|Add2~3\ : std_logic;
SIGNAL \t0|Add2~4_combout\ : std_logic;
SIGNAL \t0|hour_next[2]~7_combout\ : std_logic;
SIGNAL \t0|Add2~5\ : std_logic;
SIGNAL \t0|Add2~6_combout\ : std_logic;
SIGNAL \t0|Add2~7\ : std_logic;
SIGNAL \t0|Add2~8_combout\ : std_logic;
SIGNAL \t0|Add2~9\ : std_logic;
SIGNAL \t0|Add2~10_combout\ : std_logic;
SIGNAL \t0|hour_next[5]~6_combout\ : std_logic;
SIGNAL \display|Mux2~2_combout\ : std_logic;
SIGNAL \display|Mux2~0_combout\ : std_logic;
SIGNAL \display|Mux2~1_combout\ : std_logic;
SIGNAL \display|Mux2~3_combout\ : std_logic;
SIGNAL \display|Mux1~0_combout\ : std_logic;
SIGNAL \t0|Add1~11\ : std_logic;
SIGNAL \t0|Add1~12_combout\ : std_logic;
SIGNAL \t0|min_next[6]~2_combout\ : std_logic;
SIGNAL \display|Mux1~1_combout\ : std_logic;
SIGNAL \display|Mux1~2_combout\ : std_logic;
SIGNAL \display|Mux1~3_combout\ : std_logic;
SIGNAL \display|bcd0|Mux6~0_combout\ : std_logic;
SIGNAL \display|SSD_secU[0]~0_combout\ : std_logic;
SIGNAL \display|bcd0|Mux5~0_combout\ : std_logic;
SIGNAL \display|SSD_secU[1]~1_combout\ : std_logic;
SIGNAL \display|bcd0|Mux4~0_combout\ : std_logic;
SIGNAL \display|SSD_secU[2]~2_combout\ : std_logic;
SIGNAL \display|bcd0|Mux3~0_combout\ : std_logic;
SIGNAL \display|SSD_secU[3]~3_combout\ : std_logic;
SIGNAL \display|bcd0|Mux2~0_combout\ : std_logic;
SIGNAL \display|SSD_secU[4]~4_combout\ : std_logic;
SIGNAL \display|bcd0|Mux1~0_combout\ : std_logic;
SIGNAL \display|SSD_secU[5]~5_combout\ : std_logic;
SIGNAL \display|bcd0|Mux0~0_combout\ : std_logic;
SIGNAL \display|SSD_secU[6]~6_combout\ : std_logic;
SIGNAL \display|SSD_secD[0]~0_combout\ : std_logic;
SIGNAL \display|SSD_secD[1]~1_combout\ : std_logic;
SIGNAL \display|SSD_secD[2]~2_combout\ : std_logic;
SIGNAL \display|SSD_secD[3]~3_combout\ : std_logic;
SIGNAL \display|SSD_secD[4]~4_combout\ : std_logic;
SIGNAL \display|SSD_secD[5]~5_combout\ : std_logic;
SIGNAL \display|SSD_secD[6]~6_combout\ : std_logic;
SIGNAL \display|SSD_minU[0]~0_combout\ : std_logic;
SIGNAL \display|SSD_minU[1]~1_combout\ : std_logic;
SIGNAL \display|SSD_minU[2]~2_combout\ : std_logic;
SIGNAL \display|SSD_minU[3]~3_combout\ : std_logic;
SIGNAL \display|SSD_minU[4]~4_combout\ : std_logic;
SIGNAL \display|SSD_minU[5]~5_combout\ : std_logic;
SIGNAL \display|SSD_minU[6]~6_combout\ : std_logic;
SIGNAL \display|SSD_minD[0]~0_combout\ : std_logic;
SIGNAL \display|SSD_minD[1]~1_combout\ : std_logic;
SIGNAL \display|SSD_minD[2]~2_combout\ : std_logic;
SIGNAL \display|SSD_minD[3]~3_combout\ : std_logic;
SIGNAL \display|SSD_minD[4]~4_combout\ : std_logic;
SIGNAL \display|SSD_minD[5]~5_combout\ : std_logic;
SIGNAL \display|SSD_minD[6]~6_combout\ : std_logic;
SIGNAL \display|SSD_horU[0]~0_combout\ : std_logic;
SIGNAL \display|SSD_horU[1]~1_combout\ : std_logic;
SIGNAL \display|SSD_horU[2]~2_combout\ : std_logic;
SIGNAL \display|SSD_horU[3]~3_combout\ : std_logic;
SIGNAL \display|SSD_horU[4]~4_combout\ : std_logic;
SIGNAL \display|SSD_horU[5]~5_combout\ : std_logic;
SIGNAL \display|SSD_horU[6]~6_combout\ : std_logic;
SIGNAL \display|SSD_horD[0]~0_combout\ : std_logic;
SIGNAL \display|SSD_horD[1]~1_combout\ : std_logic;
SIGNAL \display|SSD_horD[2]~2_combout\ : std_logic;
SIGNAL \display|SSD_horD[3]~3_combout\ : std_logic;
SIGNAL \display|SSD_horD[4]~4_combout\ : std_logic;
SIGNAL \display|SSD_horD[5]~5_combout\ : std_logic;
SIGNAL \display|SSD_horD[6]~6_combout\ : std_logic;
SIGNAL reg_360 : std_logic_vector(13 DOWNTO 0);
SIGNAL r_reg : std_logic_vector(13 DOWNTO 0);
SIGNAL \pll0|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \t0|src2\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \t0|src1\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \t0|sec_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \t0|min_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \t0|hour_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \counter0|sel_reg\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \fsm|min_u_sleep_reg\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_button <= button;
ww_load <= load;
ww_enable <= enable;
buzzer <= ww_buzzer;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ww_hra_d_load <= hra_d_load;
ww_hra_u_load <= hra_u_load;
ww_min_d_load <= min_d_load;
ww_min_u_load <= min_u_load;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\pll0|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \CLOCK_50~input_o\);

\pll0|altpll_component|auto_generated|wire_pll1_clk\(0) <= \pll0|altpll_component|auto_generated|pll1_CLK_bus\(0);
\pll0|altpll_component|auto_generated|wire_pll1_clk\(1) <= \pll0|altpll_component|auto_generated|pll1_CLK_bus\(1);
\pll0|altpll_component|auto_generated|wire_pll1_clk\(2) <= \pll0|altpll_component|auto_generated|pll1_CLK_bus\(2);
\pll0|altpll_component|auto_generated|wire_pll1_clk\(3) <= \pll0|altpll_component|auto_generated|pll1_CLK_bus\(3);
\pll0|altpll_component|auto_generated|wire_pll1_clk\(4) <= \pll0|altpll_component|auto_generated|pll1_CLK_bus\(4);

\pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \pll0|altpll_component|auto_generated|wire_pll1_clk\(0));

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

-- Location: PLL_1
\pll0|altpll_component|auto_generated|pll1\ : cycloneive_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 60,
	c0_initial => 1,
	c0_low => 60,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 250,
	c1_initial => 1,
	c1_low => 250,
	c1_mode => "even",
	c1_ph => 0,
	c1_use_casc_in => "on",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c1",
	clk0_divide_by => 5000,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 1,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 12,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	pll_compensation_delay => 7101,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 208,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	fbin => \pll0|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \pll0|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \pll0|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \pll0|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: LCCOMB_X110_Y14_N12
\t0|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~4_combout\ = ((\t0|sec_reg\(2) $ (\t0|Equal0~0_combout\ $ (!\t0|Add0~3\)))) # (GND)
-- \t0|Add0~5\ = CARRY((\t0|sec_reg\(2) & ((\t0|Equal0~0_combout\) # (!\t0|Add0~3\))) # (!\t0|sec_reg\(2) & (\t0|Equal0~0_combout\ & !\t0|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t0|sec_reg\(2),
	datab => \t0|Equal0~0_combout\,
	datad => VCC,
	cin => \t0|Add0~3\,
	combout => \t0|Add0~4_combout\,
	cout => \t0|Add0~5\);

-- Location: LCCOMB_X111_Y14_N20
\t0|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add1~12_combout\ = (\t0|min_reg\(6) & (\t0|Add1~11\ $ (GND))) # (!\t0|min_reg\(6) & (!\t0|Add1~11\ & VCC))
-- \t0|Add1~13\ = CARRY((\t0|min_reg\(6) & !\t0|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t0|min_reg\(6),
	datad => VCC,
	cin => \t0|Add1~11\,
	combout => \t0|Add1~12_combout\,
	cout => \t0|Add1~13\);

-- Location: LCCOMB_X111_Y14_N22
\t0|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add1~14_combout\ = \t0|min_reg\(7) $ (\t0|Add1~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t0|min_reg\(7),
	cin => \t0|Add1~13\,
	combout => \t0|Add1~14_combout\);

-- Location: LCCOMB_X110_Y13_N8
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (reg_360(2) & (\Add1~3\ $ (GND))) # (!reg_360(2) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((reg_360(2) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_360(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X110_Y13_N10
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (reg_360(3) & (!\Add1~5\)) # (!reg_360(3) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!reg_360(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_360(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X110_Y13_N12
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (reg_360(4) & (\Add1~7\ $ (GND))) # (!reg_360(4) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((reg_360(4) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_360(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X110_Y13_N22
\Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (reg_360(9) & (!\Add1~17\)) # (!reg_360(9) & ((\Add1~17\) # (GND)))
-- \Add1~19\ = CARRY((!\Add1~17\) # (!reg_360(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_360(9),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X110_Y13_N28
\Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (reg_360(12) & (\Add1~23\ $ (GND))) # (!reg_360(12) & (!\Add1~23\ & VCC))
-- \Add1~25\ = CARRY((reg_360(12) & !\Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_360(12),
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X110_Y13_N30
\Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = reg_360(13) $ (\Add1~25\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_360(13),
	cin => \Add1~25\,
	combout => \Add1~26_combout\);

-- Location: LCCOMB_X112_Y13_N10
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (r_reg(5) & (!\Add0~9\)) # (!r_reg(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!r_reg(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_reg(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X112_Y13_N18
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (r_reg(9) & (!\Add0~17\)) # (!r_reg(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!r_reg(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_reg(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X112_Y13_N24
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (r_reg(12) & (\Add0~23\ $ (GND))) # (!r_reg(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((r_reg(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_reg(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X112_Y13_N26
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = \Add0~25\ $ (r_reg(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => r_reg(13),
	cin => \Add0~25\,
	combout => \Add0~26_combout\);

-- Location: LCCOMB_X110_Y14_N0
\display|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Mux3~0_combout\ = (\counter0|sel_reg\(0) & (((\counter0|sel_reg\(1)) # (\t0|sec_reg\(4))))) # (!\counter0|sel_reg\(0) & (\t0|sec_reg\(0) & (!\counter0|sel_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|sel_reg\(0),
	datab => \t0|sec_reg\(0),
	datac => \counter0|sel_reg\(1),
	datad => \t0|sec_reg\(4),
	combout => \display|Mux3~0_combout\);

-- Location: FF_X110_Y14_N13
\t0|sec_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \t0|Add0~4_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|sec_reg\(2));

-- Location: LCCOMB_X110_Y14_N24
\display|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Mux0~0_combout\ = (\counter0|sel_reg\(0) & (((\counter0|sel_reg\(1)) # (\t0|sec_reg\(7))))) # (!\counter0|sel_reg\(0) & (\t0|sec_reg\(3) & (!\counter0|sel_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|sel_reg\(0),
	datab => \t0|sec_reg\(3),
	datac => \counter0|sel_reg\(1),
	datad => \t0|sec_reg\(7),
	combout => \display|Mux0~0_combout\);

-- Location: FF_X111_Y14_N23
\t0|min_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \t0|Add1~14_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|min_reg\(7));

-- Location: LCCOMB_X111_Y14_N2
\display|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Mux0~1_combout\ = (\counter0|sel_reg\(1) & ((\display|Mux0~0_combout\ & (\t0|min_reg\(7))) # (!\display|Mux0~0_combout\ & ((\t0|min_reg\(3)))))) # (!\counter0|sel_reg\(1) & (((\display|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|min_reg\(7),
	datab => \counter0|sel_reg\(1),
	datac => \t0|min_reg\(3),
	datad => \display|Mux0~0_combout\,
	combout => \display|Mux0~1_combout\);

-- Location: LCCOMB_X114_Y13_N22
\display|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Mux0~2_combout\ = (\counter0|sel_reg\(0) & (\t0|hour_reg\(7))) # (!\counter0|sel_reg\(0) & ((\t0|hour_reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|sel_reg\(0),
	datab => \t0|hour_reg\(7),
	datad => \t0|hour_reg\(3),
	combout => \display|Mux0~2_combout\);

-- Location: LCCOMB_X111_Y16_N6
\display|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Mux0~3_combout\ = (\counter0|sel_reg\(2) & (((!\counter0|sel_reg\(1) & \display|Mux0~2_combout\)))) # (!\counter0|sel_reg\(2) & (\display|Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|sel_reg\(2),
	datab => \display|Mux0~1_combout\,
	datac => \counter0|sel_reg\(1),
	datad => \display|Mux0~2_combout\,
	combout => \display|Mux0~3_combout\);

-- Location: FF_X113_Y14_N19
\fsm|state_reg.alarm\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fsm|Selector3~10_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|state_reg.alarm~q\);

-- Location: LCCOMB_X113_Y14_N12
\fsm|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector3~0_combout\ = (\fsm|state_reg.alarm~q\ & \button~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm|state_reg.alarm~q\,
	datac => \button~input_o\,
	combout => \fsm|Selector3~0_combout\);

-- Location: FF_X114_Y14_N25
\fsm|state_reg.load_time\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fsm|state_next.load_time~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|state_reg.load_time~q\);

-- Location: FF_X114_Y14_N11
\fsm|state_reg.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fsm|Selector0~2_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|state_reg.idle~q\);

-- Location: LCCOMB_X114_Y14_N24
\fsm|state_next.load_time~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|state_next.load_time~0_combout\ = (\load~input_o\ & ((\fsm|state_reg.load_time~q\) # (!\fsm|state_reg.idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datac => \fsm|state_reg.load_time~q\,
	datad => \fsm|state_reg.idle~q\,
	combout => \fsm|state_next.load_time~0_combout\);

-- Location: LCCOMB_X114_Y13_N16
\fsm|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|process_0~0_combout\ = (\t0|hour_reg\(4) & (\hra_d_load[0]~input_o\ & (\t0|hour_reg\(5) $ (!\hra_d_load[1]~input_o\)))) # (!\t0|hour_reg\(4) & (!\hra_d_load[0]~input_o\ & (\t0|hour_reg\(5) $ (!\hra_d_load[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|hour_reg\(4),
	datab => \hra_d_load[0]~input_o\,
	datac => \t0|hour_reg\(5),
	datad => \hra_d_load[1]~input_o\,
	combout => \fsm|process_0~0_combout\);

-- Location: LCCOMB_X114_Y13_N10
\fsm|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|process_0~1_combout\ = (\fsm|state_next.load_time~0_combout\ & (((\fsm|process_0~0_combout\)))) # (!\fsm|state_next.load_time~0_combout\ & (!\t0|hour_reg\(4) & (!\t0|hour_reg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|hour_reg\(4),
	datab => \t0|hour_reg\(5),
	datac => \fsm|state_next.load_time~0_combout\,
	datad => \fsm|process_0~0_combout\,
	combout => \fsm|process_0~1_combout\);

-- Location: LCCOMB_X114_Y13_N20
\fsm|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Equal0~2_combout\ = \t0|hour_reg\(6) $ (((\fsm|state_next.load_time~0_combout\ & \hra_d_load[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t0|hour_reg\(6),
	datac => \fsm|state_next.load_time~0_combout\,
	datad => \hra_d_load[2]~input_o\,
	combout => \fsm|Equal0~2_combout\);

-- Location: LCCOMB_X114_Y13_N30
\fsm|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|process_0~2_combout\ = (!\fsm|Equal0~2_combout\ & (\t0|hour_reg\(7) $ (((!\hra_d_load[3]~input_o\) # (!\fsm|state_next.load_time~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|Equal0~2_combout\,
	datab => \t0|hour_reg\(7),
	datac => \fsm|state_next.load_time~0_combout\,
	datad => \hra_d_load[3]~input_o\,
	combout => \fsm|process_0~2_combout\);

-- Location: LCCOMB_X114_Y14_N20
\fsm|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Equal1~2_combout\ = (!\hra_u_load[0]~input_o\) # (!\load~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datac => \hra_u_load[0]~input_o\,
	combout => \fsm|Equal1~2_combout\);

-- Location: LCCOMB_X114_Y14_N30
\fsm|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Equal1~3_combout\ = \t0|hour_reg\(0) $ (((!\fsm|Equal1~2_combout\ & ((\fsm|state_reg.load_time~q\) # (!\fsm|state_reg.idle~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|state_reg.idle~q\,
	datab => \fsm|Equal1~2_combout\,
	datac => \t0|hour_reg\(0),
	datad => \fsm|state_reg.load_time~q\,
	combout => \fsm|Equal1~3_combout\);

-- Location: LCCOMB_X114_Y13_N0
\fsm|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|process_0~3_combout\ = (!\fsm|Equal1~3_combout\ & (\t0|hour_reg\(1) $ (((!\hra_u_load[1]~input_o\) # (!\fsm|state_next.load_time~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|hour_reg\(1),
	datab => \fsm|state_next.load_time~0_combout\,
	datac => \fsm|Equal1~3_combout\,
	datad => \hra_u_load[1]~input_o\,
	combout => \fsm|process_0~3_combout\);

-- Location: LCCOMB_X114_Y14_N8
\fsm|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Equal1~4_combout\ = (!\hra_u_load[2]~input_o\) # (!\load~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datac => \hra_u_load[2]~input_o\,
	combout => \fsm|Equal1~4_combout\);

-- Location: LCCOMB_X114_Y14_N18
\fsm|Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Equal1~5_combout\ = \t0|hour_reg\(2) $ (((!\fsm|Equal1~4_combout\ & ((\fsm|state_reg.load_time~q\) # (!\fsm|state_reg.idle~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|hour_reg\(2),
	datab => \fsm|state_reg.load_time~q\,
	datac => \fsm|Equal1~4_combout\,
	datad => \fsm|state_reg.idle~q\,
	combout => \fsm|Equal1~5_combout\);

-- Location: LCCOMB_X114_Y13_N26
\fsm|process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|process_0~4_combout\ = (!\fsm|Equal1~5_combout\ & (\t0|hour_reg\(3) $ (((!\fsm|state_next.load_time~0_combout\) # (!\hra_u_load[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|hour_reg\(3),
	datab => \hra_u_load[3]~input_o\,
	datac => \fsm|state_next.load_time~0_combout\,
	datad => \fsm|Equal1~5_combout\,
	combout => \fsm|process_0~4_combout\);

-- Location: LCCOMB_X114_Y13_N28
\fsm|process_0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|process_0~5_combout\ = (\fsm|process_0~4_combout\ & (\fsm|process_0~3_combout\ & (\fsm|process_0~2_combout\ & \fsm|process_0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|process_0~4_combout\,
	datab => \fsm|process_0~3_combout\,
	datac => \fsm|process_0~2_combout\,
	datad => \fsm|process_0~1_combout\,
	combout => \fsm|process_0~5_combout\);

-- Location: FF_X112_Y14_N17
\fsm|min_u_sleep_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fsm|Mux2~0_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \fsm|min_u_sleep_reg[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|min_u_sleep_reg\(1));

-- Location: FF_X112_Y14_N11
\fsm|min_u_sleep_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fsm|Mux3~0_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \fsm|min_u_sleep_reg[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|min_u_sleep_reg\(0));

-- Location: LCCOMB_X112_Y14_N28
\fsm|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Equal4~0_combout\ = (\t0|min_reg\(0) & (\fsm|min_u_sleep_reg\(0) & (\fsm|min_u_sleep_reg\(1) $ (!\t0|min_reg\(1))))) # (!\t0|min_reg\(0) & (!\fsm|min_u_sleep_reg\(0) & (\fsm|min_u_sleep_reg\(1) $ (!\t0|min_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|min_reg\(0),
	datab => \fsm|min_u_sleep_reg\(1),
	datac => \t0|min_reg\(1),
	datad => \fsm|min_u_sleep_reg\(0),
	combout => \fsm|Equal4~0_combout\);

-- Location: FF_X112_Y14_N15
\fsm|min_u_sleep_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fsm|Mux0~0_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \fsm|min_u_sleep_reg[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|min_u_sleep_reg\(3));

-- Location: FF_X112_Y14_N1
\fsm|min_u_sleep_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fsm|Mux1~0_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \fsm|min_u_sleep_reg[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|min_u_sleep_reg\(2));

-- Location: LCCOMB_X112_Y14_N18
\fsm|Equal4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Equal4~1_combout\ = (\t0|min_reg\(3) & (\fsm|min_u_sleep_reg\(3) & (\t0|min_reg\(2) $ (!\fsm|min_u_sleep_reg\(2))))) # (!\t0|min_reg\(3) & (!\fsm|min_u_sleep_reg\(3) & (\t0|min_reg\(2) $ (!\fsm|min_u_sleep_reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|min_reg\(3),
	datab => \fsm|min_u_sleep_reg\(3),
	datac => \t0|min_reg\(2),
	datad => \fsm|min_u_sleep_reg\(2),
	combout => \fsm|Equal4~1_combout\);

-- Location: FF_X113_Y14_N31
\fsm|state_reg.sleep\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \fsm|Selector2~1_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|state_reg.sleep~q\);

-- Location: LCCOMB_X113_Y14_N30
\fsm|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector3~1_combout\ = (\button~input_o\ & (\fsm|Equal4~0_combout\ & (\fsm|state_reg.sleep~q\ & \fsm|Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button~input_o\,
	datab => \fsm|Equal4~0_combout\,
	datac => \fsm|state_reg.sleep~q\,
	datad => \fsm|Equal4~1_combout\,
	combout => \fsm|Selector3~1_combout\);

-- Location: FF_X114_Y14_N5
\fsm|state_reg.on_alarm\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \fsm|Selector1~2_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|state_reg.on_alarm~q\);

-- Location: LCCOMB_X114_Y14_N4
\fsm|Selector3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector3~2_combout\ = (\fsm|state_reg.on_alarm~q\ & \enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fsm|state_reg.on_alarm~q\,
	datad => \enable~input_o\,
	combout => \fsm|Selector3~2_combout\);

-- Location: LCCOMB_X112_Y14_N4
\fsm|Selector3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector3~3_combout\ = (\t0|min_reg\(6) & (\min_d_load[2]~input_o\ & (\min_d_load[1]~input_o\ $ (!\t0|min_reg\(5))))) # (!\t0|min_reg\(6) & (!\min_d_load[2]~input_o\ & (\min_d_load[1]~input_o\ $ (!\t0|min_reg\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|min_reg\(6),
	datab => \min_d_load[2]~input_o\,
	datac => \min_d_load[1]~input_o\,
	datad => \t0|min_reg\(5),
	combout => \fsm|Selector3~3_combout\);

-- Location: LCCOMB_X112_Y14_N22
\fsm|Selector3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector3~4_combout\ = (\t0|min_reg\(4) & (\min_d_load[0]~input_o\ & (\min_d_load[3]~input_o\ $ (!\t0|min_reg\(7))))) # (!\t0|min_reg\(4) & (!\min_d_load[0]~input_o\ & (\min_d_load[3]~input_o\ $ (!\t0|min_reg\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|min_reg\(4),
	datab => \min_d_load[3]~input_o\,
	datac => \t0|min_reg\(7),
	datad => \min_d_load[0]~input_o\,
	combout => \fsm|Selector3~4_combout\);

-- Location: LCCOMB_X112_Y14_N8
\fsm|Selector3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector3~5_combout\ = (!\t0|min_reg\(7) & (!\t0|min_reg\(4) & (!\t0|min_reg\(6) & !\t0|min_reg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|min_reg\(7),
	datab => \t0|min_reg\(4),
	datac => \t0|min_reg\(6),
	datad => \t0|min_reg\(5),
	combout => \fsm|Selector3~5_combout\);

-- Location: LCCOMB_X112_Y14_N2
\fsm|Selector3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector3~6_combout\ = (\fsm|state_next.load_time~0_combout\ & (((\fsm|Selector3~3_combout\ & \fsm|Selector3~4_combout\)))) # (!\fsm|state_next.load_time~0_combout\ & (\fsm|Selector3~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|Selector3~5_combout\,
	datab => \fsm|Selector3~3_combout\,
	datac => \fsm|Selector3~4_combout\,
	datad => \fsm|state_next.load_time~0_combout\,
	combout => \fsm|Selector3~6_combout\);

-- Location: LCCOMB_X114_Y14_N14
\fsm|Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Equal3~1_combout\ = (!\min_u_load[0]~input_o\) # (!\load~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \load~input_o\,
	datad => \min_u_load[0]~input_o\,
	combout => \fsm|Equal3~1_combout\);

-- Location: LCCOMB_X114_Y14_N16
\fsm|Equal3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Equal3~2_combout\ = \t0|min_reg\(0) $ (((!\fsm|Equal3~1_combout\ & ((\fsm|state_reg.load_time~q\) # (!\fsm|state_reg.idle~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|state_reg.idle~q\,
	datab => \t0|min_reg\(0),
	datac => \fsm|Equal3~1_combout\,
	datad => \fsm|state_reg.load_time~q\,
	combout => \fsm|Equal3~2_combout\);

-- Location: LCCOMB_X114_Y14_N26
\fsm|Selector3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector3~7_combout\ = (!\fsm|Equal3~2_combout\ & (\t0|min_reg\(1) $ (((!\fsm|state_next.load_time~0_combout\) # (!\min_u_load[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|min_reg\(1),
	datab => \fsm|Equal3~2_combout\,
	datac => \min_u_load[1]~input_o\,
	datad => \fsm|state_next.load_time~0_combout\,
	combout => \fsm|Selector3~7_combout\);

-- Location: LCCOMB_X114_Y14_N12
\fsm|Equal3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Equal3~3_combout\ = (!\min_u_load[2]~input_o\) # (!\load~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \load~input_o\,
	datad => \min_u_load[2]~input_o\,
	combout => \fsm|Equal3~3_combout\);

-- Location: LCCOMB_X114_Y14_N6
\fsm|Equal3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Equal3~4_combout\ = \t0|min_reg\(2) $ (((!\fsm|Equal3~3_combout\ & ((\fsm|state_reg.load_time~q\) # (!\fsm|state_reg.idle~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|state_reg.idle~q\,
	datab => \fsm|state_reg.load_time~q\,
	datac => \t0|min_reg\(2),
	datad => \fsm|Equal3~3_combout\,
	combout => \fsm|Equal3~4_combout\);

-- Location: LCCOMB_X113_Y14_N24
\fsm|Selector3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector3~8_combout\ = (!\fsm|Equal3~4_combout\ & (\t0|min_reg\(3) $ (((!\min_u_load[3]~input_o\) # (!\fsm|state_next.load_time~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|Equal3~4_combout\,
	datab => \fsm|state_next.load_time~0_combout\,
	datac => \t0|min_reg\(3),
	datad => \min_u_load[3]~input_o\,
	combout => \fsm|Selector3~8_combout\);

-- Location: LCCOMB_X113_Y14_N26
\fsm|Selector3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector3~9_combout\ = (\fsm|Selector3~7_combout\ & (\fsm|Selector3~8_combout\ & (\fsm|Selector3~6_combout\ & \fsm|Selector3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|Selector3~7_combout\,
	datab => \fsm|Selector3~8_combout\,
	datac => \fsm|Selector3~6_combout\,
	datad => \fsm|Selector3~2_combout\,
	combout => \fsm|Selector3~9_combout\);

-- Location: LCCOMB_X113_Y14_N18
\fsm|Selector3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector3~10_combout\ = (\fsm|Selector3~0_combout\) # ((\fsm|process_0~5_combout\ & ((\fsm|Selector3~1_combout\) # (\fsm|Selector3~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|Selector3~0_combout\,
	datab => \fsm|process_0~5_combout\,
	datac => \fsm|Selector3~1_combout\,
	datad => \fsm|Selector3~9_combout\,
	combout => \fsm|Selector3~10_combout\);

-- Location: FF_X110_Y13_N31
\reg_360[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add1~26_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_360(13));

-- Location: FF_X110_Y13_N23
\reg_360[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add1~18_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_360(9));

-- Location: LCCOMB_X110_Y13_N2
\Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (!reg_360(8) & (!reg_360(6) & (!reg_360(9) & !reg_360(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_360(8),
	datab => reg_360(6),
	datac => reg_360(9),
	datad => reg_360(7),
	combout => \Equal2~1_combout\);

-- Location: FF_X111_Y13_N9
\r_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \r_next[9]~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_reg(9));

-- Location: FF_X112_Y13_N11
\r_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add0~10_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_reg(5));

-- Location: FF_X111_Y13_N23
\r_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \r_next[13]~3_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_reg(13));

-- Location: LCCOMB_X113_Y13_N30
\Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!r_reg(0) & (!r_reg(2) & !r_reg(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_reg(0),
	datac => r_reg(2),
	datad => r_reg(1),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X111_Y14_N30
\t0|src1[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|src1\(1) = (\t0|src1[1]~0_combout\ & (!\t0|min_reg\(1) & !\t0|min_reg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t0|src1[1]~0_combout\,
	datac => \t0|min_reg\(1),
	datad => \t0|min_reg\(2),
	combout => \t0|src1\(1));

-- Location: LCCOMB_X113_Y13_N2
\t0|src2[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|src2[1]~0_combout\ = (\t0|hour_reg\(3) & (!\t0|hour_reg\(2) & !\t0|hour_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t0|hour_reg\(3),
	datac => \t0|hour_reg\(2),
	datad => \t0|hour_reg\(1),
	combout => \t0|src2[1]~0_combout\);

-- Location: LCCOMB_X113_Y13_N28
\t0|src2[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|src2\(1) = (\t0|src2[1]~0_combout\ & (\t0|min_next~0_combout\ & \t0|hour_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t0|src2[1]~0_combout\,
	datac => \t0|min_next~0_combout\,
	datad => \t0|hour_reg\(0),
	combout => \t0|src2\(1));

-- Location: LCCOMB_X114_Y14_N0
\fsm|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector0~0_combout\ = (!\enable~input_o\ & ((\fsm|state_reg.on_alarm~q\) # ((!\fsm|state_reg.idle~q\ & !\load~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|state_reg.idle~q\,
	datab => \fsm|state_reg.on_alarm~q\,
	datac => \load~input_o\,
	datad => \enable~input_o\,
	combout => \fsm|Selector0~0_combout\);

-- Location: FF_X113_Y14_N21
\fsm|state_reg.wait_button2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fsm|Selector5~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|state_reg.wait_button2~q\);

-- Location: FF_X113_Y14_N15
\fsm|state_reg.wait_button3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fsm|Selector6~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|state_reg.wait_button3~q\);

-- Location: LCCOMB_X113_Y14_N16
\fsm|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector0~1_combout\ = (\button~input_o\ & ((\fsm|state_reg.wait_button2~q\) # (\fsm|state_reg.wait_button3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button~input_o\,
	datab => \fsm|state_reg.wait_button2~q\,
	datac => \fsm|state_reg.wait_button3~q\,
	combout => \fsm|Selector0~1_combout\);

-- Location: LCCOMB_X114_Y14_N10
\fsm|Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector0~2_combout\ = (!\fsm|Selector0~1_combout\ & (!\fsm|Selector0~0_combout\ & ((\load~input_o\) # (!\fsm|state_reg.load_time~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|Selector0~1_combout\,
	datab => \fsm|state_reg.load_time~q\,
	datac => \load~input_o\,
	datad => \fsm|Selector0~0_combout\,
	combout => \fsm|Selector0~2_combout\);

-- Location: LCCOMB_X114_Y14_N2
\fsm|min_u_loadd[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|min_u_loadd[1]~0_combout\ = (\load~input_o\ & (\min_u_load[1]~input_o\ & ((\fsm|state_reg.load_time~q\) # (!\fsm|state_reg.idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datab => \fsm|state_reg.load_time~q\,
	datac => \min_u_load[1]~input_o\,
	datad => \fsm|state_reg.idle~q\,
	combout => \fsm|min_u_loadd[1]~0_combout\);

-- Location: FF_X113_Y14_N11
\fsm|state_reg.wait_button1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fsm|Selector4~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|state_reg.wait_button1~q\);

-- Location: LCCOMB_X113_Y14_N28
\fsm|state_next.inc_sleep~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|state_next.inc_sleep~0_combout\ = (\button~input_o\ & \fsm|state_reg.wait_button1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button~input_o\,
	datad => \fsm|state_reg.wait_button1~q\,
	combout => \fsm|state_next.inc_sleep~0_combout\);

-- Location: LCCOMB_X112_Y14_N16
\fsm|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Mux2~0_combout\ = (\fsm|state_next.inc_sleep~0_combout\ & (\fsm|min_u_sleep_reg\(0) $ ((\fsm|min_u_sleep_reg\(1))))) # (!\fsm|state_next.inc_sleep~0_combout\ & (((\fsm|min_u_loadd[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|min_u_sleep_reg\(0),
	datab => \fsm|state_next.inc_sleep~0_combout\,
	datac => \fsm|min_u_sleep_reg\(1),
	datad => \fsm|min_u_loadd[1]~0_combout\,
	combout => \fsm|Mux2~0_combout\);

-- Location: LCCOMB_X112_Y14_N10
\fsm|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Mux3~0_combout\ = (\fsm|state_next.inc_sleep~0_combout\ & (((!\fsm|min_u_sleep_reg\(0))))) # (!\fsm|state_next.inc_sleep~0_combout\ & (\min_u_load[0]~input_o\ & ((\fsm|state_next.load_time~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_u_load[0]~input_o\,
	datab => \fsm|state_next.inc_sleep~0_combout\,
	datac => \fsm|min_u_sleep_reg\(0),
	datad => \fsm|state_next.load_time~0_combout\,
	combout => \fsm|Mux3~0_combout\);

-- Location: LCCOMB_X112_Y14_N12
\fsm|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Add0~0_combout\ = \fsm|min_u_sleep_reg\(3) $ (((\fsm|min_u_sleep_reg\(2)) # ((\fsm|min_u_sleep_reg\(0) & \fsm|min_u_sleep_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|min_u_sleep_reg\(0),
	datab => \fsm|min_u_sleep_reg\(1),
	datac => \fsm|min_u_sleep_reg\(3),
	datad => \fsm|min_u_sleep_reg\(2),
	combout => \fsm|Add0~0_combout\);

-- Location: LCCOMB_X112_Y14_N14
\fsm|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Mux0~0_combout\ = (\fsm|state_next.inc_sleep~0_combout\ & (\fsm|Add0~0_combout\)) # (!\fsm|state_next.inc_sleep~0_combout\ & (((\min_u_load[3]~input_o\ & \fsm|state_next.load_time~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|Add0~0_combout\,
	datab => \fsm|state_next.inc_sleep~0_combout\,
	datac => \min_u_load[3]~input_o\,
	datad => \fsm|state_next.load_time~0_combout\,
	combout => \fsm|Mux0~0_combout\);

-- Location: LCCOMB_X112_Y14_N30
\fsm|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Add0~1_combout\ = \fsm|min_u_sleep_reg\(2) $ (((\fsm|min_u_sleep_reg\(0) & \fsm|min_u_sleep_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|min_u_sleep_reg\(0),
	datab => \fsm|min_u_sleep_reg\(1),
	datad => \fsm|min_u_sleep_reg\(2),
	combout => \fsm|Add0~1_combout\);

-- Location: LCCOMB_X112_Y14_N0
\fsm|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Mux1~0_combout\ = (\fsm|state_next.inc_sleep~0_combout\ & (((!\fsm|Add0~1_combout\)))) # (!\fsm|state_next.inc_sleep~0_combout\ & (\min_u_load[2]~input_o\ & ((\fsm|state_next.load_time~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_u_load[2]~input_o\,
	datab => \fsm|state_next.inc_sleep~0_combout\,
	datac => \fsm|Add0~1_combout\,
	datad => \fsm|state_next.load_time~0_combout\,
	combout => \fsm|Mux1~0_combout\);

-- Location: FF_X113_Y14_N29
\fsm|state_reg.inc_sleep\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fsm|state_next.inc_sleep~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|state_reg.inc_sleep~q\);

-- Location: LCCOMB_X114_Y13_N18
\fsm|process_0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|process_0~6_combout\ = (!\t0|hour_reg\(1) & (!\t0|hour_reg\(5) & !\t0|hour_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|hour_reg\(1),
	datac => \t0|hour_reg\(5),
	datad => \t0|hour_reg\(0),
	combout => \fsm|process_0~6_combout\);

-- Location: LCCOMB_X114_Y13_N12
\fsm|process_0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|process_0~7_combout\ = (\t0|hour_next~4_combout\ & (!\t0|hour_reg\(2) & \fsm|process_0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|hour_next~4_combout\,
	datac => \t0|hour_reg\(2),
	datad => \fsm|process_0~6_combout\,
	combout => \fsm|process_0~7_combout\);

-- Location: LCCOMB_X113_Y14_N22
\fsm|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector2~0_combout\ = (\fsm|state_reg.sleep~q\ & (((!\fsm|process_0~7_combout\) # (!\fsm|Equal4~1_combout\)) # (!\fsm|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|state_reg.sleep~q\,
	datab => \fsm|Equal4~0_combout\,
	datac => \fsm|Equal4~1_combout\,
	datad => \fsm|process_0~7_combout\,
	combout => \fsm|Selector2~0_combout\);

-- Location: LCCOMB_X113_Y14_N8
\fsm|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector2~1_combout\ = (\button~input_o\ & ((\fsm|state_reg.inc_sleep~q\) # (\fsm|Selector2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button~input_o\,
	datab => \fsm|state_reg.inc_sleep~q\,
	datac => \fsm|Selector2~0_combout\,
	combout => \fsm|Selector2~1_combout\);

-- Location: LCCOMB_X111_Y14_N4
\fsm|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector1~0_combout\ = (\t0|min_reg\(4)) # ((\t0|min_reg\(3)) # ((\t0|min_reg\(0)) # (\t0|min_reg\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|min_reg\(4),
	datab => \t0|min_reg\(3),
	datac => \t0|min_reg\(0),
	datad => \t0|min_reg\(6),
	combout => \fsm|Selector1~0_combout\);

-- Location: LCCOMB_X111_Y14_N6
\fsm|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector1~1_combout\ = (\fsm|state_reg.on_alarm~q\ & ((\fsm|Selector1~0_combout\) # ((!\t0|Equal4~0_combout\) # (!\fsm|process_0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|state_reg.on_alarm~q\,
	datab => \fsm|Selector1~0_combout\,
	datac => \fsm|process_0~7_combout\,
	datad => \t0|Equal4~0_combout\,
	combout => \fsm|Selector1~1_combout\);

-- Location: LCCOMB_X114_Y14_N28
\fsm|Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector1~2_combout\ = (\enable~input_o\ & ((\fsm|Selector1~1_combout\) # ((!\fsm|state_reg.idle~q\ & !\load~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|state_reg.idle~q\,
	datab => \fsm|Selector1~1_combout\,
	datac => \load~input_o\,
	datad => \enable~input_o\,
	combout => \fsm|Selector1~2_combout\);

-- Location: LCCOMB_X111_Y13_N8
\r_next[9]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_next[9]~0_combout\ = (\Add0~18_combout\ & (((!\Equal0~2_combout\) # (!\Equal0~1_combout\)) # (!\Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Add0~18_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~2_combout\,
	combout => \r_next[9]~0_combout\);

-- Location: LCCOMB_X111_Y13_N22
\r_next[13]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_next[13]~3_combout\ = (\Add0~26_combout\ & (((!\Equal0~3_combout\) # (!\Equal0~1_combout\)) # (!\Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~26_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~3_combout\,
	combout => \r_next[13]~3_combout\);

-- Location: LCCOMB_X113_Y14_N20
\fsm|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector5~0_combout\ = (!\button~input_o\ & ((\fsm|state_reg.inc_sleep~q\) # (\fsm|state_reg.wait_button2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button~input_o\,
	datab => \fsm|state_reg.inc_sleep~q\,
	datac => \fsm|state_reg.wait_button2~q\,
	combout => \fsm|Selector5~0_combout\);

-- Location: LCCOMB_X113_Y14_N14
\fsm|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector6~0_combout\ = (!\button~input_o\ & ((\fsm|state_reg.wait_button3~q\) # (\fsm|state_reg.sleep~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button~input_o\,
	datac => \fsm|state_reg.wait_button3~q\,
	datad => \fsm|state_reg.sleep~q\,
	combout => \fsm|Selector6~0_combout\);

-- Location: LCCOMB_X113_Y14_N10
\fsm|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector4~0_combout\ = (!\button~input_o\ & ((\fsm|state_reg.alarm~q\) # (\fsm|state_reg.wait_button1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button~input_o\,
	datab => \fsm|state_reg.alarm~q\,
	datac => \fsm|state_reg.wait_button1~q\,
	combout => \fsm|Selector4~0_combout\);

-- Location: LCCOMB_X114_Y14_N22
\fsm|min_u_sleep_reg[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|min_u_sleep_reg[1]~4_combout\ = (\fsm|state_next.inc_sleep~0_combout\) # ((\load~input_o\ & ((\fsm|state_reg.load_time~q\) # (!\fsm|state_reg.idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|state_reg.idle~q\,
	datab => \fsm|state_next.inc_sleep~0_combout\,
	datac => \load~input_o\,
	datad => \fsm|state_reg.load_time~q\,
	combout => \fsm|min_u_sleep_reg[1]~4_combout\);

-- Location: IOIBUF_X115_Y35_N22
\button~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button,
	o => \button~input_o\);

-- Location: IOIBUF_X115_Y13_N1
\load~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load,
	o => \load~input_o\);

-- Location: IOIBUF_X115_Y9_N22
\hra_d_load[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hra_d_load(1),
	o => \hra_d_load[1]~input_o\);

-- Location: IOIBUF_X115_Y7_N15
\hra_d_load[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hra_d_load(0),
	o => \hra_d_load[0]~input_o\);

-- Location: IOIBUF_X115_Y6_N15
\hra_d_load[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hra_d_load(3),
	o => \hra_d_load[3]~input_o\);

-- Location: IOIBUF_X115_Y10_N8
\hra_d_load[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hra_d_load(2),
	o => \hra_d_load[2]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\hra_u_load[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hra_u_load(1),
	o => \hra_u_load[1]~input_o\);

-- Location: IOIBUF_X115_Y4_N22
\hra_u_load[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hra_u_load(0),
	o => \hra_u_load[0]~input_o\);

-- Location: IOIBUF_X115_Y5_N15
\hra_u_load[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hra_u_load(3),
	o => \hra_u_load[3]~input_o\);

-- Location: IOIBUF_X115_Y4_N15
\hra_u_load[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hra_u_load(2),
	o => \hra_u_load[2]~input_o\);

-- Location: IOIBUF_X115_Y14_N8
\enable~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: IOIBUF_X115_Y11_N8
\min_d_load[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_min_d_load(1),
	o => \min_d_load[1]~input_o\);

-- Location: IOIBUF_X115_Y10_N1
\min_d_load[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_min_d_load(2),
	o => \min_d_load[2]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\min_d_load[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_min_d_load(3),
	o => \min_d_load[3]~input_o\);

-- Location: IOIBUF_X115_Y18_N8
\min_d_load[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_min_d_load(0),
	o => \min_d_load[0]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\min_u_load[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_min_u_load(1),
	o => \min_u_load[1]~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\min_u_load[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_min_u_load(0),
	o => \min_u_load[0]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\min_u_load[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_min_u_load(3),
	o => \min_u_load[3]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\min_u_load[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_min_u_load(2),
	o => \min_u_load[2]~input_o\);

-- Location: CLKCTRL_G4
\pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: IOOBUF_X60_Y73_N16
\buzzer~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm|buzzer_buf_reg~q\,
	devoe => ww_devoe,
	o => ww_buzzer);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|SSD_secU[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|SSD_secU[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|SSD_secU[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|SSD_secU[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|SSD_secU[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|SSD_secU[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|SSD_secU[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|SSD_secD[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|SSD_secD[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|SSD_secD[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|SSD_secD[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|SSD_secD[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|SSD_secD[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|SSD_secD[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|SSD_minU[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|SSD_minU[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|SSD_minU[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|SSD_minU[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|SSD_minU[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|SSD_minU[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|SSD_minU[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X115_Y25_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|SSD_minD[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(0));

-- Location: IOOBUF_X115_Y29_N2
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|SSD_minD[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(1));

-- Location: IOOBUF_X100_Y0_N2
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|SSD_minD[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(2));

-- Location: IOOBUF_X111_Y0_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|SSD_minD[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(3));

-- Location: IOOBUF_X105_Y0_N23
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|SSD_minD[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(4));

-- Location: IOOBUF_X105_Y0_N9
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|SSD_minD[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(5));

-- Location: IOOBUF_X105_Y0_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|SSD_minD[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|SSD_horU[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(0));

-- Location: IOOBUF_X107_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|SSD_horU[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(1));

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|SSD_horU[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(2));

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|SSD_horU[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(3));

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|SSD_horU[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(4));

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|SSD_horU[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(5));

-- Location: IOOBUF_X79_Y0_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|SSD_horU[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(6));

-- Location: IOOBUF_X85_Y0_N9
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|SSD_horD[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(0));

-- Location: IOOBUF_X87_Y0_N16
\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|SSD_horD[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(1));

-- Location: IOOBUF_X98_Y0_N16
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|SSD_horD[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(2));

-- Location: IOOBUF_X72_Y0_N2
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|SSD_horD[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(3));

-- Location: IOOBUF_X72_Y0_N9
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|SSD_horD[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(4));

-- Location: IOOBUF_X79_Y0_N16
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|SSD_horD[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(5));

-- Location: IOOBUF_X69_Y0_N2
\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|SSD_horD[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(6));

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G3
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
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

-- Location: LCCOMB_X113_Y14_N0
\fsm|buzzer_buf_reg~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|buzzer_buf_reg~feeder_combout\ = \fsm|Selector3~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|Selector3~10_combout\,
	combout => \fsm|buzzer_buf_reg~feeder_combout\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: FF_X113_Y14_N1
\fsm|buzzer_buf_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fsm|buzzer_buf_reg~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|buzzer_buf_reg~q\);

-- Location: LCCOMB_X111_Y13_N24
\counter0|sel_reg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0|sel_reg[0]~0_combout\ = !\counter0|sel_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter0|sel_reg\(0),
	combout => \counter0|sel_reg[0]~0_combout\);

-- Location: LCCOMB_X110_Y13_N4
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = reg_360(0) $ (VCC)
-- \Add1~1\ = CARRY(reg_360(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_360(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X110_Y13_N6
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (reg_360(1) & (!\Add1~1\)) # (!reg_360(1) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!reg_360(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_360(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X110_Y13_N14
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (reg_360(5) & (!\Add1~9\)) # (!reg_360(5) & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!reg_360(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_360(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: FF_X110_Y13_N15
\reg_360[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add1~10_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_360(5));

-- Location: LCCOMB_X110_Y13_N16
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (reg_360(6) & (\Add1~11\ $ (GND))) # (!reg_360(6) & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((reg_360(6) & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_360(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: FF_X110_Y13_N17
\reg_360[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add1~12_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_360(6));

-- Location: LCCOMB_X110_Y13_N18
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (reg_360(7) & (!\Add1~13\)) # (!reg_360(7) & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!reg_360(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_360(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: FF_X110_Y13_N19
\reg_360[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add1~14_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_360(7));

-- Location: LCCOMB_X110_Y13_N20
\Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (reg_360(8) & (\Add1~15\ $ (GND))) # (!reg_360(8) & (!\Add1~15\ & VCC))
-- \Add1~17\ = CARRY((reg_360(8) & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_360(8),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: FF_X110_Y13_N21
\reg_360[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add1~16_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_360(8));

-- Location: LCCOMB_X110_Y13_N24
\Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (reg_360(10) & (\Add1~19\ $ (GND))) # (!reg_360(10) & (!\Add1~19\ & VCC))
-- \Add1~21\ = CARRY((reg_360(10) & !\Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_360(10),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: FF_X110_Y13_N25
\reg_360[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add1~20_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_360(10));

-- Location: LCCOMB_X110_Y13_N26
\Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (reg_360(11) & (!\Add1~21\)) # (!reg_360(11) & ((\Add1~21\) # (GND)))
-- \Add1~23\ = CARRY((!\Add1~21\) # (!reg_360(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_360(11),
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: FF_X110_Y13_N27
\reg_360[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add1~22_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_360(11));

-- Location: FF_X110_Y13_N29
\reg_360[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add1~24_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_360(12));

-- Location: LCCOMB_X110_Y13_N0
\Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!reg_360(13) & (!reg_360(10) & (!reg_360(11) & !reg_360(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_360(13),
	datab => reg_360(10),
	datac => reg_360(11),
	datad => reg_360(12),
	combout => \Equal2~0_combout\);

-- Location: FF_X110_Y13_N7
\reg_360[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add1~2_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_360(1));

-- Location: LCCOMB_X111_Y13_N20
\next_360[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_360[4]~3_combout\ = (\Add1~8_combout\ & ((reg_360(1)) # ((!\Equal2~3_combout\) # (!reg_360(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~8_combout\,
	datab => reg_360(1),
	datac => reg_360(4),
	datad => \Equal2~3_combout\,
	combout => \next_360[4]~3_combout\);

-- Location: FF_X111_Y13_N21
\reg_360[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \next_360[4]~3_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_360(4));

-- Location: LCCOMB_X111_Y13_N2
\next_360[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_360[3]~0_combout\ = (\Add1~6_combout\ & (((reg_360(1)) # (!reg_360(4))) # (!\Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datab => \Equal2~3_combout\,
	datac => reg_360(1),
	datad => reg_360(4),
	combout => \next_360[3]~0_combout\);

-- Location: FF_X111_Y13_N3
\reg_360[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \next_360[3]~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_360(3));

-- Location: LCCOMB_X111_Y13_N4
\next_360[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_360[2]~1_combout\ = (\Add1~4_combout\ & (((reg_360(1)) # (!reg_360(4))) # (!\Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datab => \Equal2~3_combout\,
	datac => reg_360(1),
	datad => reg_360(4),
	combout => \next_360[2]~1_combout\);

-- Location: FF_X111_Y13_N5
\reg_360[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \next_360[2]~1_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_360(2));

-- Location: LCCOMB_X111_Y13_N6
\next_360[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_360[0]~2_combout\ = (\Add1~0_combout\ & ((reg_360(1)) # ((!reg_360(4)) # (!\Equal2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_360(1),
	datab => \Equal2~3_combout\,
	datac => \Add1~0_combout\,
	datad => reg_360(4),
	combout => \next_360[0]~2_combout\);

-- Location: FF_X111_Y13_N7
\reg_360[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \next_360[0]~2_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_360(0));

-- Location: LCCOMB_X111_Y13_N0
\Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = (!reg_360(5) & (reg_360(3) & (reg_360(2) & !reg_360(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_360(5),
	datab => reg_360(3),
	datac => reg_360(2),
	datad => reg_360(0),
	combout => \Equal2~2_combout\);

-- Location: LCCOMB_X111_Y13_N18
\Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = (\Equal2~1_combout\ & (\Equal2~0_combout\ & \Equal2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~1_combout\,
	datac => \Equal2~0_combout\,
	datad => \Equal2~2_combout\,
	combout => \Equal2~3_combout\);

-- Location: LCCOMB_X111_Y13_N14
\Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (\Equal2~3_combout\ & (reg_360(1) & !reg_360(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~3_combout\,
	datac => reg_360(1),
	datad => reg_360(4),
	combout => \Equal3~0_combout\);

-- Location: FF_X111_Y13_N25
\counter0|sel_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter0|sel_reg[0]~0_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter0|sel_reg\(0));

-- Location: LCCOMB_X110_Y16_N10
\counter0|sel_next[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0|sel_next[2]~1_combout\ = (\counter0|sel_reg\(0) & (\counter0|sel_reg\(1) & !\counter0|sel_reg\(2))) # (!\counter0|sel_reg\(0) & ((\counter0|sel_reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|sel_reg\(0),
	datab => \counter0|sel_reg\(1),
	datac => \counter0|sel_reg\(2),
	combout => \counter0|sel_next[2]~1_combout\);

-- Location: FF_X110_Y16_N11
\counter0|sel_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter0|sel_next[2]~1_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter0|sel_reg\(2));

-- Location: LCCOMB_X110_Y16_N16
\counter0|sel_next[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0|sel_next[1]~0_combout\ = (\counter0|sel_reg\(0) & (!\counter0|sel_reg\(1) & !\counter0|sel_reg\(2))) # (!\counter0|sel_reg\(0) & (\counter0|sel_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|sel_reg\(0),
	datac => \counter0|sel_reg\(1),
	datad => \counter0|sel_reg\(2),
	combout => \counter0|sel_next[1]~0_combout\);

-- Location: FF_X110_Y16_N17
\counter0|sel_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter0|sel_next[1]~0_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter0|sel_reg\(1));

-- Location: LCCOMB_X110_Y14_N8
\t0|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~0_combout\ = \t0|sec_reg\(0) $ (VCC)
-- \t0|Add0~1\ = CARRY(\t0|sec_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t0|sec_reg\(0),
	datad => VCC,
	combout => \t0|Add0~0_combout\,
	cout => \t0|Add0~1\);

-- Location: LCCOMB_X112_Y13_N0
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = r_reg(0) $ (VCC)
-- \Add0~1\ = CARRY(r_reg(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_reg(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: FF_X112_Y13_N1
\r_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add0~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_reg(0));

-- Location: LCCOMB_X112_Y13_N2
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (r_reg(1) & (!\Add0~1\)) # (!r_reg(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!r_reg(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_reg(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: FF_X112_Y13_N3
\r_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add0~2_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_reg(1));

-- Location: LCCOMB_X112_Y13_N4
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (r_reg(2) & (\Add0~3\ $ (GND))) # (!r_reg(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((r_reg(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_reg(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X112_Y13_N5
\r_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add0~4_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_reg(2));

-- Location: LCCOMB_X112_Y13_N6
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (r_reg(3) & (!\Add0~5\)) # (!r_reg(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!r_reg(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_reg(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X112_Y13_N8
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (r_reg(4) & (\Add0~7\ $ (GND))) # (!r_reg(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((r_reg(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_reg(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X112_Y13_N12
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (r_reg(6) & (\Add0~11\ $ (GND))) # (!r_reg(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((r_reg(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_reg(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X112_Y13_N14
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (r_reg(7) & (!\Add0~13\)) # (!r_reg(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!r_reg(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_reg(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: FF_X112_Y13_N15
\r_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add0~14_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_reg(7));

-- Location: LCCOMB_X112_Y13_N16
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (r_reg(8) & (\Add0~15\ $ (GND))) # (!r_reg(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((r_reg(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_reg(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X112_Y13_N20
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (r_reg(10) & (\Add0~19\ $ (GND))) # (!r_reg(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((r_reg(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_reg(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X112_Y13_N22
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (r_reg(11) & (!\Add0~21\)) # (!r_reg(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!r_reg(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_reg(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: FF_X112_Y13_N25
\r_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add0~24_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_reg(12));

-- Location: LCCOMB_X111_Y13_N28
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (r_reg(13) & (r_reg(10) & (!r_reg(7) & !r_reg(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_reg(13),
	datab => r_reg(10),
	datac => r_reg(7),
	datad => r_reg(12),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X113_Y13_N6
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (r_reg(0) & (r_reg(2) & r_reg(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_reg(0),
	datac => r_reg(2),
	datad => r_reg(1),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X111_Y13_N16
\r_next[10]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_next[10]~4_combout\ = (\Add0~20_combout\ & (((!\Equal0~3_combout\) # (!\Equal0~2_combout\)) # (!\Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~2_combout\,
	datac => \Add0~20_combout\,
	datad => \Equal0~3_combout\,
	combout => \r_next[10]~4_combout\);

-- Location: FF_X111_Y13_N17
\r_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \r_next[10]~4_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_reg(10));

-- Location: LCCOMB_X111_Y13_N26
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!r_reg(13) & (!r_reg(10) & (r_reg(7) & r_reg(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_reg(13),
	datab => r_reg(10),
	datac => r_reg(7),
	datad => r_reg(12),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X111_Y13_N10
\r_next[8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_next[8]~1_combout\ = (\Add0~16_combout\ & (((!\Equal0~2_combout\) # (!\Equal0~1_combout\)) # (!\Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Add0~16_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~2_combout\,
	combout => \r_next[8]~1_combout\);

-- Location: FF_X111_Y13_N11
\r_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \r_next[8]~1_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_reg(8));

-- Location: FF_X112_Y13_N23
\r_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add0~22_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_reg(11));

-- Location: FF_X112_Y13_N13
\r_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add0~12_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_reg(6));

-- Location: LCCOMB_X112_Y13_N28
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (r_reg(9) & (r_reg(8) & (!r_reg(11) & !r_reg(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_reg(9),
	datab => r_reg(8),
	datac => r_reg(11),
	datad => r_reg(6),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X111_Y13_N12
\r_next[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_next[4]~2_combout\ = (\Add0~8_combout\ & (((!\Equal0~3_combout\) # (!\Equal0~2_combout\)) # (!\Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~2_combout\,
	datac => \Add0~8_combout\,
	datad => \Equal0~3_combout\,
	combout => \r_next[4]~2_combout\);

-- Location: FF_X111_Y13_N13
\r_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \r_next[4]~2_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_reg(4));

-- Location: FF_X112_Y13_N7
\r_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add0~6_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_reg(3));

-- Location: LCCOMB_X112_Y13_N30
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!r_reg(5) & (\Equal0~0_combout\ & (!r_reg(4) & r_reg(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_reg(5),
	datab => \Equal0~0_combout\,
	datac => r_reg(4),
	datad => r_reg(3),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X113_Y13_N0
\Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (\Equal1~1_combout\ & (\Equal1~0_combout\ & \Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~1_combout\,
	datab => \Equal1~0_combout\,
	datac => \Equal0~1_combout\,
	combout => \Equal1~2_combout\);

-- Location: FF_X110_Y14_N9
\t0|sec_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \t0|Add0~0_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|sec_reg\(0));

-- Location: LCCOMB_X110_Y14_N10
\t0|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~2_combout\ = (\t0|Equal0~0_combout\ & ((\t0|sec_reg\(1) & (\t0|Add0~1\ & VCC)) # (!\t0|sec_reg\(1) & (!\t0|Add0~1\)))) # (!\t0|Equal0~0_combout\ & ((\t0|sec_reg\(1) & (!\t0|Add0~1\)) # (!\t0|sec_reg\(1) & ((\t0|Add0~1\) # (GND)))))
-- \t0|Add0~3\ = CARRY((\t0|Equal0~0_combout\ & (!\t0|sec_reg\(1) & !\t0|Add0~1\)) # (!\t0|Equal0~0_combout\ & ((!\t0|Add0~1\) # (!\t0|sec_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t0|Equal0~0_combout\,
	datab => \t0|sec_reg\(1),
	datad => VCC,
	cin => \t0|Add0~1\,
	combout => \t0|Add0~2_combout\,
	cout => \t0|Add0~3\);

-- Location: FF_X110_Y14_N11
\t0|sec_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \t0|Add0~2_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|sec_reg\(1));

-- Location: LCCOMB_X110_Y14_N26
\t0|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Equal0~0_combout\ = (!\t0|sec_reg\(2) & (\t0|sec_reg\(0) & (\t0|sec_reg\(3) & !\t0|sec_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|sec_reg\(2),
	datab => \t0|sec_reg\(0),
	datac => \t0|sec_reg\(3),
	datad => \t0|sec_reg\(1),
	combout => \t0|Equal0~0_combout\);

-- Location: LCCOMB_X110_Y14_N14
\t0|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~6_combout\ = (\t0|sec_reg\(3) & (!\t0|Add0~5\)) # (!\t0|sec_reg\(3) & ((\t0|Add0~5\) # (GND)))
-- \t0|Add0~7\ = CARRY((!\t0|Add0~5\) # (!\t0|sec_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t0|sec_reg\(3),
	datad => VCC,
	cin => \t0|Add0~5\,
	combout => \t0|Add0~6_combout\,
	cout => \t0|Add0~7\);

-- Location: FF_X110_Y14_N15
\t0|sec_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \t0|Add0~6_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|sec_reg\(3));

-- Location: LCCOMB_X110_Y14_N16
\t0|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~8_combout\ = (\t0|sec_reg\(4) & (\t0|Add0~7\ $ (GND))) # (!\t0|sec_reg\(4) & (!\t0|Add0~7\ & VCC))
-- \t0|Add0~9\ = CARRY((\t0|sec_reg\(4) & !\t0|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t0|sec_reg\(4),
	datad => VCC,
	cin => \t0|Add0~7\,
	combout => \t0|Add0~8_combout\,
	cout => \t0|Add0~9\);

-- Location: FF_X110_Y14_N17
\t0|sec_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \t0|Add0~8_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|sec_reg\(4));

-- Location: LCCOMB_X110_Y14_N18
\t0|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~10_combout\ = (\t0|sec_reg\(5) & (!\t0|Add0~9\)) # (!\t0|sec_reg\(5) & ((\t0|Add0~9\) # (GND)))
-- \t0|Add0~11\ = CARRY((!\t0|Add0~9\) # (!\t0|sec_reg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t0|sec_reg\(5),
	datad => VCC,
	cin => \t0|Add0~9\,
	combout => \t0|Add0~10_combout\,
	cout => \t0|Add0~11\);

-- Location: LCCOMB_X110_Y14_N2
\t0|sec_next[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|sec_next[5]~4_combout\ = (\t0|Add0~10_combout\ & ((!\t0|Equal3~0_combout\) # (!\t0|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|Equal0~0_combout\,
	datab => \t0|Add0~10_combout\,
	datac => \t0|Equal3~0_combout\,
	combout => \t0|sec_next[5]~4_combout\);

-- Location: FF_X110_Y14_N3
\t0|sec_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \t0|sec_next[5]~4_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|sec_reg\(5));

-- Location: LCCOMB_X110_Y14_N20
\t0|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~12_combout\ = (\t0|sec_reg\(6) & (\t0|Add0~11\ $ (GND))) # (!\t0|sec_reg\(6) & (!\t0|Add0~11\ & VCC))
-- \t0|Add0~13\ = CARRY((\t0|sec_reg\(6) & !\t0|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t0|sec_reg\(6),
	datad => VCC,
	cin => \t0|Add0~11\,
	combout => \t0|Add0~12_combout\,
	cout => \t0|Add0~13\);

-- Location: LCCOMB_X110_Y14_N28
\t0|sec_next[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|sec_next[6]~5_combout\ = (\t0|Add0~12_combout\ & ((!\t0|Equal3~0_combout\) # (!\t0|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|Equal0~0_combout\,
	datab => \t0|Add0~12_combout\,
	datac => \t0|Equal3~0_combout\,
	combout => \t0|sec_next[6]~5_combout\);

-- Location: FF_X110_Y14_N29
\t0|sec_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \t0|sec_next[6]~5_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|sec_reg\(6));

-- Location: LCCOMB_X110_Y14_N22
\t0|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add0~14_combout\ = \t0|sec_reg\(7) $ (\t0|Add0~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t0|sec_reg\(7),
	cin => \t0|Add0~13\,
	combout => \t0|Add0~14_combout\);

-- Location: FF_X110_Y14_N23
\t0|sec_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \t0|Add0~14_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|sec_reg\(7));

-- Location: LCCOMB_X110_Y14_N4
\t0|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Equal3~0_combout\ = (\t0|sec_reg\(6) & (\t0|sec_reg\(4) & (!\t0|sec_reg\(7) & !\t0|sec_reg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|sec_reg\(6),
	datab => \t0|sec_reg\(4),
	datac => \t0|sec_reg\(7),
	datad => \t0|sec_reg\(5),
	combout => \t0|Equal3~0_combout\);

-- Location: LCCOMB_X110_Y14_N30
\t0|Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Equal3~1_combout\ = (\t0|Equal0~0_combout\ & \t0|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|Equal0~0_combout\,
	datac => \t0|Equal3~0_combout\,
	combout => \t0|Equal3~1_combout\);

-- Location: LCCOMB_X111_Y14_N8
\t0|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add1~0_combout\ = (\t0|min_reg\(0) & (\t0|Equal3~1_combout\ $ (VCC))) # (!\t0|min_reg\(0) & (\t0|Equal3~1_combout\ & VCC))
-- \t0|Add1~1\ = CARRY((\t0|min_reg\(0) & \t0|Equal3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|min_reg\(0),
	datab => \t0|Equal3~1_combout\,
	datad => VCC,
	combout => \t0|Add1~0_combout\,
	cout => \t0|Add1~1\);

-- Location: LCCOMB_X111_Y14_N10
\t0|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add1~2_combout\ = (\t0|src1\(1) & ((\t0|min_reg\(1) & (\t0|Add1~1\ & VCC)) # (!\t0|min_reg\(1) & (!\t0|Add1~1\)))) # (!\t0|src1\(1) & ((\t0|min_reg\(1) & (!\t0|Add1~1\)) # (!\t0|min_reg\(1) & ((\t0|Add1~1\) # (GND)))))
-- \t0|Add1~3\ = CARRY((\t0|src1\(1) & (!\t0|min_reg\(1) & !\t0|Add1~1\)) # (!\t0|src1\(1) & ((!\t0|Add1~1\) # (!\t0|min_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t0|src1\(1),
	datab => \t0|min_reg\(1),
	datad => VCC,
	cin => \t0|Add1~1\,
	combout => \t0|Add1~2_combout\,
	cout => \t0|Add1~3\);

-- Location: FF_X111_Y14_N11
\t0|min_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \t0|Add1~2_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|min_reg\(1));

-- Location: LCCOMB_X111_Y14_N12
\t0|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add1~4_combout\ = ((\t0|src1\(1) $ (\t0|min_reg\(2) $ (!\t0|Add1~3\)))) # (GND)
-- \t0|Add1~5\ = CARRY((\t0|src1\(1) & ((\t0|min_reg\(2)) # (!\t0|Add1~3\))) # (!\t0|src1\(1) & (\t0|min_reg\(2) & !\t0|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t0|src1\(1),
	datab => \t0|min_reg\(2),
	datad => VCC,
	cin => \t0|Add1~3\,
	combout => \t0|Add1~4_combout\,
	cout => \t0|Add1~5\);

-- Location: FF_X111_Y14_N13
\t0|min_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \t0|Add1~4_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|min_reg\(2));

-- Location: LCCOMB_X111_Y14_N14
\t0|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add1~6_combout\ = (\t0|min_reg\(3) & (!\t0|Add1~5\)) # (!\t0|min_reg\(3) & ((\t0|Add1~5\) # (GND)))
-- \t0|Add1~7\ = CARRY((!\t0|Add1~5\) # (!\t0|min_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t0|min_reg\(3),
	datad => VCC,
	cin => \t0|Add1~5\,
	combout => \t0|Add1~6_combout\,
	cout => \t0|Add1~7\);

-- Location: FF_X111_Y14_N15
\t0|min_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \t0|Add1~6_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|min_reg\(3));

-- Location: LCCOMB_X111_Y14_N16
\t0|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add1~8_combout\ = (\t0|min_reg\(4) & (\t0|Add1~7\ $ (GND))) # (!\t0|min_reg\(4) & (!\t0|Add1~7\ & VCC))
-- \t0|Add1~9\ = CARRY((\t0|min_reg\(4) & !\t0|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t0|min_reg\(4),
	datad => VCC,
	cin => \t0|Add1~7\,
	combout => \t0|Add1~8_combout\,
	cout => \t0|Add1~9\);

-- Location: FF_X111_Y14_N17
\t0|min_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \t0|Add1~8_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|min_reg\(4));

-- Location: LCCOMB_X111_Y14_N18
\t0|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add1~10_combout\ = (\t0|min_reg\(5) & (!\t0|Add1~9\)) # (!\t0|min_reg\(5) & ((\t0|Add1~9\) # (GND)))
-- \t0|Add1~11\ = CARRY((!\t0|Add1~9\) # (!\t0|min_reg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t0|min_reg\(5),
	datad => VCC,
	cin => \t0|Add1~9\,
	combout => \t0|Add1~10_combout\,
	cout => \t0|Add1~11\);

-- Location: LCCOMB_X112_Y14_N26
\t0|min_next[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|min_next[5]~1_combout\ = (!\t0|min_next~0_combout\ & \t0|Add1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|min_next~0_combout\,
	datac => \t0|Add1~10_combout\,
	combout => \t0|min_next[5]~1_combout\);

-- Location: FF_X112_Y14_N27
\t0|min_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \t0|min_next[5]~1_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|min_reg\(5));

-- Location: LCCOMB_X111_Y14_N24
\t0|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Equal4~0_combout\ = (!\t0|min_reg\(7) & (!\t0|min_reg\(2) & (!\t0|min_reg\(1) & !\t0|min_reg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|min_reg\(7),
	datab => \t0|min_reg\(2),
	datac => \t0|min_reg\(1),
	datad => \t0|min_reg\(5),
	combout => \t0|Equal4~0_combout\);

-- Location: FF_X111_Y14_N9
\t0|min_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \t0|Add1~0_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|min_reg\(0));

-- Location: LCCOMB_X111_Y14_N28
\t0|src1[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|src1[1]~0_combout\ = (\t0|Equal0~0_combout\ & (\t0|min_reg\(0) & (\t0|Equal3~0_combout\ & \t0|min_reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|Equal0~0_combout\,
	datab => \t0|min_reg\(0),
	datac => \t0|Equal3~0_combout\,
	datad => \t0|min_reg\(3),
	combout => \t0|src1[1]~0_combout\);

-- Location: LCCOMB_X111_Y14_N26
\t0|min_next~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|min_next~0_combout\ = (\t0|min_reg\(6) & (\t0|Equal4~0_combout\ & (\t0|min_reg\(4) & \t0|src1[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|min_reg\(6),
	datab => \t0|Equal4~0_combout\,
	datac => \t0|min_reg\(4),
	datad => \t0|src1[1]~0_combout\,
	combout => \t0|min_next~0_combout\);

-- Location: LCCOMB_X113_Y13_N10
\t0|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add2~0_combout\ = (\t0|hour_reg\(0) & (\t0|min_next~0_combout\ $ (VCC))) # (!\t0|hour_reg\(0) & (\t0|min_next~0_combout\ & VCC))
-- \t0|Add2~1\ = CARRY((\t0|hour_reg\(0) & \t0|min_next~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|hour_reg\(0),
	datab => \t0|min_next~0_combout\,
	datad => VCC,
	combout => \t0|Add2~0_combout\,
	cout => \t0|Add2~1\);

-- Location: FF_X113_Y13_N11
\t0|hour_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \t0|Add2~0_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|hour_reg\(0));

-- Location: LCCOMB_X114_Y13_N8
\display|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Mux3~2_combout\ = (\counter0|sel_reg\(0) & (\t0|hour_reg\(4))) # (!\counter0|sel_reg\(0) & ((\t0|hour_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|hour_reg\(4),
	datac => \counter0|sel_reg\(0),
	datad => \t0|hour_reg\(0),
	combout => \display|Mux3~2_combout\);

-- Location: LCCOMB_X111_Y14_N0
\display|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Mux3~1_combout\ = (\display|Mux3~0_combout\ & (((\t0|min_reg\(4))) # (!\counter0|sel_reg\(1)))) # (!\display|Mux3~0_combout\ & (\counter0|sel_reg\(1) & (\t0|min_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|Mux3~0_combout\,
	datab => \counter0|sel_reg\(1),
	datac => \t0|min_reg\(0),
	datad => \t0|min_reg\(4),
	combout => \display|Mux3~1_combout\);

-- Location: LCCOMB_X111_Y16_N0
\display|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Mux3~3_combout\ = (\counter0|sel_reg\(2) & (!\counter0|sel_reg\(1) & (\display|Mux3~2_combout\))) # (!\counter0|sel_reg\(2) & (((\display|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|sel_reg\(1),
	datab => \display|Mux3~2_combout\,
	datac => \display|Mux3~1_combout\,
	datad => \counter0|sel_reg\(2),
	combout => \display|Mux3~3_combout\);

-- Location: LCCOMB_X113_Y13_N20
\t0|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add2~10_combout\ = (\t0|hour_reg\(5) & (!\t0|Add2~9\)) # (!\t0|hour_reg\(5) & ((\t0|Add2~9\) # (GND)))
-- \t0|Add2~11\ = CARRY((!\t0|Add2~9\) # (!\t0|hour_reg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t0|hour_reg\(5),
	datad => VCC,
	cin => \t0|Add2~9\,
	combout => \t0|Add2~10_combout\,
	cout => \t0|Add2~11\);

-- Location: LCCOMB_X113_Y13_N22
\t0|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add2~12_combout\ = (\t0|hour_reg\(6) & (\t0|Add2~11\ $ (GND))) # (!\t0|hour_reg\(6) & (!\t0|Add2~11\ & VCC))
-- \t0|Add2~13\ = CARRY((\t0|hour_reg\(6) & !\t0|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t0|hour_reg\(6),
	datad => VCC,
	cin => \t0|Add2~11\,
	combout => \t0|Add2~12_combout\,
	cout => \t0|Add2~13\);

-- Location: LCCOMB_X113_Y13_N24
\t0|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add2~14_combout\ = \t0|Add2~13\ $ (\t0|hour_reg\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \t0|hour_reg\(7),
	cin => \t0|Add2~13\,
	combout => \t0|Add2~14_combout\);

-- Location: FF_X113_Y13_N25
\t0|hour_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \t0|Add2~14_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|hour_reg\(7));

-- Location: FF_X113_Y13_N23
\t0|hour_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \t0|Add2~12_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|hour_reg\(6));

-- Location: LCCOMB_X114_Y13_N6
\t0|hour_next~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|hour_next~4_combout\ = (!\t0|hour_reg\(3) & (!\t0|hour_reg\(7) & (!\t0|hour_reg\(6) & !\t0|hour_reg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|hour_reg\(3),
	datab => \t0|hour_reg\(7),
	datac => \t0|hour_reg\(6),
	datad => \t0|hour_reg\(4),
	combout => \t0|hour_next~4_combout\);

-- Location: LCCOMB_X114_Y13_N24
\t0|hour_next~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|hour_next~5_combout\ = (\t0|hour_reg\(1) & (!\t0|hour_reg\(2) & (\t0|hour_reg\(5) & \t0|hour_next~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|hour_reg\(1),
	datab => \t0|hour_reg\(2),
	datac => \t0|hour_reg\(5),
	datad => \t0|hour_next~4_combout\,
	combout => \t0|hour_next~5_combout\);

-- Location: LCCOMB_X113_Y13_N12
\t0|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add2~2_combout\ = (\t0|src2\(1) & ((\t0|hour_reg\(1) & (\t0|Add2~1\ & VCC)) # (!\t0|hour_reg\(1) & (!\t0|Add2~1\)))) # (!\t0|src2\(1) & ((\t0|hour_reg\(1) & (!\t0|Add2~1\)) # (!\t0|hour_reg\(1) & ((\t0|Add2~1\) # (GND)))))
-- \t0|Add2~3\ = CARRY((\t0|src2\(1) & (!\t0|hour_reg\(1) & !\t0|Add2~1\)) # (!\t0|src2\(1) & ((!\t0|Add2~1\) # (!\t0|hour_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t0|src2\(1),
	datab => \t0|hour_reg\(1),
	datad => VCC,
	cin => \t0|Add2~1\,
	combout => \t0|Add2~2_combout\,
	cout => \t0|Add2~3\);

-- Location: FF_X113_Y13_N13
\t0|hour_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \t0|Add2~2_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|hour_reg\(1));

-- Location: LCCOMB_X113_Y13_N14
\t0|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add2~4_combout\ = ((\t0|src2\(1) $ (\t0|hour_reg\(2) $ (!\t0|Add2~3\)))) # (GND)
-- \t0|Add2~5\ = CARRY((\t0|src2\(1) & ((\t0|hour_reg\(2)) # (!\t0|Add2~3\))) # (!\t0|src2\(1) & (\t0|hour_reg\(2) & !\t0|Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t0|src2\(1),
	datab => \t0|hour_reg\(2),
	datad => VCC,
	cin => \t0|Add2~3\,
	combout => \t0|Add2~4_combout\,
	cout => \t0|Add2~5\);

-- Location: LCCOMB_X113_Y13_N4
\t0|hour_next[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|hour_next[2]~7_combout\ = (\t0|Add2~4_combout\ & (((!\t0|hour_reg\(0)) # (!\t0|hour_next~5_combout\)) # (!\t0|min_next~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|min_next~0_combout\,
	datab => \t0|hour_next~5_combout\,
	datac => \t0|Add2~4_combout\,
	datad => \t0|hour_reg\(0),
	combout => \t0|hour_next[2]~7_combout\);

-- Location: FF_X113_Y13_N5
\t0|hour_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \t0|hour_next[2]~7_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|hour_reg\(2));

-- Location: LCCOMB_X113_Y13_N16
\t0|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add2~6_combout\ = (\t0|hour_reg\(3) & (!\t0|Add2~5\)) # (!\t0|hour_reg\(3) & ((\t0|Add2~5\) # (GND)))
-- \t0|Add2~7\ = CARRY((!\t0|Add2~5\) # (!\t0|hour_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t0|hour_reg\(3),
	datad => VCC,
	cin => \t0|Add2~5\,
	combout => \t0|Add2~6_combout\,
	cout => \t0|Add2~7\);

-- Location: FF_X113_Y13_N17
\t0|hour_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \t0|Add2~6_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|hour_reg\(3));

-- Location: LCCOMB_X113_Y13_N18
\t0|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|Add2~8_combout\ = (\t0|hour_reg\(4) & (\t0|Add2~7\ $ (GND))) # (!\t0|hour_reg\(4) & (!\t0|Add2~7\ & VCC))
-- \t0|Add2~9\ = CARRY((\t0|hour_reg\(4) & !\t0|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t0|hour_reg\(4),
	datad => VCC,
	cin => \t0|Add2~7\,
	combout => \t0|Add2~8_combout\,
	cout => \t0|Add2~9\);

-- Location: FF_X113_Y13_N19
\t0|hour_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \t0|Add2~8_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|hour_reg\(4));

-- Location: LCCOMB_X113_Y13_N8
\t0|hour_next[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|hour_next[5]~6_combout\ = (\t0|Add2~10_combout\ & (((!\t0|hour_next~5_combout\) # (!\t0|min_next~0_combout\)) # (!\t0|hour_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|hour_reg\(0),
	datab => \t0|Add2~10_combout\,
	datac => \t0|min_next~0_combout\,
	datad => \t0|hour_next~5_combout\,
	combout => \t0|hour_next[5]~6_combout\);

-- Location: FF_X113_Y13_N9
\t0|hour_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \t0|hour_next[5]~6_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|hour_reg\(5));

-- Location: LCCOMB_X114_Y13_N2
\display|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Mux2~2_combout\ = (\counter0|sel_reg\(0) & (\t0|hour_reg\(5))) # (!\counter0|sel_reg\(0) & ((\t0|hour_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t0|hour_reg\(5),
	datac => \counter0|sel_reg\(0),
	datad => \t0|hour_reg\(1),
	combout => \display|Mux2~2_combout\);

-- Location: LCCOMB_X112_Y14_N24
\display|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Mux2~0_combout\ = (\counter0|sel_reg\(1) & (((\t0|min_reg\(1)) # (\counter0|sel_reg\(0))))) # (!\counter0|sel_reg\(1) & (\t0|sec_reg\(1) & ((!\counter0|sel_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|sel_reg\(1),
	datab => \t0|sec_reg\(1),
	datac => \t0|min_reg\(1),
	datad => \counter0|sel_reg\(0),
	combout => \display|Mux2~0_combout\);

-- Location: LCCOMB_X112_Y14_N20
\display|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Mux2~1_combout\ = (\counter0|sel_reg\(0) & ((\display|Mux2~0_combout\ & (\t0|min_reg\(5))) # (!\display|Mux2~0_combout\ & ((\t0|sec_reg\(5)))))) # (!\counter0|sel_reg\(0) & (((\display|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|min_reg\(5),
	datab => \counter0|sel_reg\(0),
	datac => \t0|sec_reg\(5),
	datad => \display|Mux2~0_combout\,
	combout => \display|Mux2~1_combout\);

-- Location: LCCOMB_X111_Y16_N26
\display|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Mux2~3_combout\ = (\counter0|sel_reg\(2) & (\display|Mux2~2_combout\ & (!\counter0|sel_reg\(1)))) # (!\counter0|sel_reg\(2) & (((\display|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|sel_reg\(2),
	datab => \display|Mux2~2_combout\,
	datac => \counter0|sel_reg\(1),
	datad => \display|Mux2~1_combout\,
	combout => \display|Mux2~3_combout\);

-- Location: LCCOMB_X110_Y14_N6
\display|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Mux1~0_combout\ = (\counter0|sel_reg\(1) & (((\counter0|sel_reg\(0))))) # (!\counter0|sel_reg\(1) & ((\counter0|sel_reg\(0) & ((\t0|sec_reg\(6)))) # (!\counter0|sel_reg\(0) & (\t0|sec_reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|sec_reg\(2),
	datab => \counter0|sel_reg\(1),
	datac => \counter0|sel_reg\(0),
	datad => \t0|sec_reg\(6),
	combout => \display|Mux1~0_combout\);

-- Location: LCCOMB_X113_Y13_N26
\t0|min_next[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t0|min_next[6]~2_combout\ = (!\t0|min_next~0_combout\ & \t0|Add1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t0|min_next~0_combout\,
	datad => \t0|Add1~12_combout\,
	combout => \t0|min_next[6]~2_combout\);

-- Location: FF_X113_Y13_N27
\t0|min_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \t0|min_next[6]~2_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t0|min_reg\(6));

-- Location: LCCOMB_X112_Y14_N6
\display|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Mux1~1_combout\ = (\display|Mux1~0_combout\ & (((\t0|min_reg\(6)) # (!\counter0|sel_reg\(1))))) # (!\display|Mux1~0_combout\ & (\t0|min_reg\(2) & ((\counter0|sel_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t0|min_reg\(2),
	datab => \display|Mux1~0_combout\,
	datac => \t0|min_reg\(6),
	datad => \counter0|sel_reg\(1),
	combout => \display|Mux1~1_combout\);

-- Location: LCCOMB_X114_Y13_N4
\display|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Mux1~2_combout\ = (\counter0|sel_reg\(0) & (\t0|hour_reg\(6))) # (!\counter0|sel_reg\(0) & ((\t0|hour_reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|sel_reg\(0),
	datab => \t0|hour_reg\(6),
	datac => \t0|hour_reg\(2),
	combout => \display|Mux1~2_combout\);

-- Location: LCCOMB_X111_Y16_N12
\display|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Mux1~3_combout\ = (\counter0|sel_reg\(2) & (((!\counter0|sel_reg\(1) & \display|Mux1~2_combout\)))) # (!\counter0|sel_reg\(2) & (\display|Mux1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|sel_reg\(2),
	datab => \display|Mux1~1_combout\,
	datac => \counter0|sel_reg\(1),
	datad => \display|Mux1~2_combout\,
	combout => \display|Mux1~3_combout\);

-- Location: LCCOMB_X111_Y16_N16
\display|bcd0|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|bcd0|Mux6~0_combout\ = (\display|Mux0~3_combout\ & (((\display|Mux2~3_combout\) # (\display|Mux1~3_combout\)))) # (!\display|Mux0~3_combout\ & ((\display|Mux3~3_combout\ & (!\display|Mux2~3_combout\ & !\display|Mux1~3_combout\)) # 
-- (!\display|Mux3~3_combout\ & ((\display|Mux1~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|Mux0~3_combout\,
	datab => \display|Mux3~3_combout\,
	datac => \display|Mux2~3_combout\,
	datad => \display|Mux1~3_combout\,
	combout => \display|bcd0|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y16_N8
\display|SSD_secU[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|SSD_secU[0]~0_combout\ = (\counter0|sel_reg\(0)) # ((\counter0|sel_reg\(1)) # ((\display|bcd0|Mux6~0_combout\) # (\counter0|sel_reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|sel_reg\(0),
	datab => \counter0|sel_reg\(1),
	datac => \display|bcd0|Mux6~0_combout\,
	datad => \counter0|sel_reg\(2),
	combout => \display|SSD_secU[0]~0_combout\);

-- Location: LCCOMB_X111_Y16_N10
\display|bcd0|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|bcd0|Mux5~0_combout\ = (\display|Mux0~3_combout\ & (((\display|Mux2~3_combout\) # (\display|Mux1~3_combout\)))) # (!\display|Mux0~3_combout\ & (\display|Mux1~3_combout\ & (\display|Mux3~3_combout\ $ (\display|Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|Mux0~3_combout\,
	datab => \display|Mux3~3_combout\,
	datac => \display|Mux2~3_combout\,
	datad => \display|Mux1~3_combout\,
	combout => \display|bcd0|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y16_N26
\display|SSD_secU[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|SSD_secU[1]~1_combout\ = (\counter0|sel_reg\(2)) # ((\counter0|sel_reg\(1)) # ((\counter0|sel_reg\(0)) # (\display|bcd0|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|sel_reg\(2),
	datab => \counter0|sel_reg\(1),
	datac => \counter0|sel_reg\(0),
	datad => \display|bcd0|Mux5~0_combout\,
	combout => \display|SSD_secU[1]~1_combout\);

-- Location: LCCOMB_X111_Y16_N20
\display|bcd0|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|bcd0|Mux4~0_combout\ = (\display|Mux1~3_combout\ & (\display|Mux0~3_combout\)) # (!\display|Mux1~3_combout\ & (\display|Mux2~3_combout\ & ((\display|Mux0~3_combout\) # (!\display|Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|Mux0~3_combout\,
	datab => \display|Mux3~3_combout\,
	datac => \display|Mux2~3_combout\,
	datad => \display|Mux1~3_combout\,
	combout => \display|bcd0|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y16_N4
\display|SSD_secU[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|SSD_secU[2]~2_combout\ = (\counter0|sel_reg\(2)) # ((\counter0|sel_reg\(1)) # ((\counter0|sel_reg\(0)) # (\display|bcd0|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|sel_reg\(2),
	datab => \counter0|sel_reg\(1),
	datac => \counter0|sel_reg\(0),
	datad => \display|bcd0|Mux4~0_combout\,
	combout => \display|SSD_secU[2]~2_combout\);

-- Location: LCCOMB_X111_Y16_N14
\display|bcd0|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|bcd0|Mux3~0_combout\ = (\display|Mux3~3_combout\ & ((\display|Mux0~3_combout\) # (\display|Mux2~3_combout\ $ (!\display|Mux1~3_combout\)))) # (!\display|Mux3~3_combout\ & ((\display|Mux2~3_combout\ & (\display|Mux0~3_combout\)) # 
-- (!\display|Mux2~3_combout\ & ((\display|Mux1~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|Mux0~3_combout\,
	datab => \display|Mux3~3_combout\,
	datac => \display|Mux2~3_combout\,
	datad => \display|Mux1~3_combout\,
	combout => \display|bcd0|Mux3~0_combout\);

-- Location: LCCOMB_X112_Y16_N0
\display|SSD_secU[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|SSD_secU[3]~3_combout\ = (\counter0|sel_reg\(1)) # ((\counter0|sel_reg\(0)) # ((\counter0|sel_reg\(2)) # (\display|bcd0|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|sel_reg\(1),
	datab => \counter0|sel_reg\(0),
	datac => \counter0|sel_reg\(2),
	datad => \display|bcd0|Mux3~0_combout\,
	combout => \display|SSD_secU[3]~3_combout\);

-- Location: LCCOMB_X111_Y16_N8
\display|bcd0|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|bcd0|Mux2~0_combout\ = (\display|Mux3~3_combout\) # ((\display|Mux2~3_combout\ & (\display|Mux0~3_combout\)) # (!\display|Mux2~3_combout\ & ((\display|Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|Mux0~3_combout\,
	datab => \display|Mux3~3_combout\,
	datac => \display|Mux2~3_combout\,
	datad => \display|Mux1~3_combout\,
	combout => \display|bcd0|Mux2~0_combout\);

-- Location: LCCOMB_X112_Y16_N26
\display|SSD_secU[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|SSD_secU[4]~4_combout\ = (\counter0|sel_reg\(1)) # ((\counter0|sel_reg\(0)) # ((\counter0|sel_reg\(2)) # (\display|bcd0|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|sel_reg\(1),
	datab => \counter0|sel_reg\(0),
	datac => \counter0|sel_reg\(2),
	datad => \display|bcd0|Mux2~0_combout\,
	combout => \display|SSD_secU[4]~4_combout\);

-- Location: LCCOMB_X111_Y16_N2
\display|bcd0|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|bcd0|Mux1~0_combout\ = (\display|Mux3~3_combout\ & ((\display|Mux2~3_combout\) # (\display|Mux0~3_combout\ $ (!\display|Mux1~3_combout\)))) # (!\display|Mux3~3_combout\ & ((\display|Mux1~3_combout\ & (\display|Mux0~3_combout\)) # 
-- (!\display|Mux1~3_combout\ & ((\display|Mux2~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|Mux0~3_combout\,
	datab => \display|Mux3~3_combout\,
	datac => \display|Mux2~3_combout\,
	datad => \display|Mux1~3_combout\,
	combout => \display|bcd0|Mux1~0_combout\);

-- Location: LCCOMB_X112_Y16_N28
\display|SSD_secU[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|SSD_secU[5]~5_combout\ = (\counter0|sel_reg\(1)) # ((\counter0|sel_reg\(0)) # ((\counter0|sel_reg\(2)) # (\display|bcd0|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|sel_reg\(1),
	datab => \counter0|sel_reg\(0),
	datac => \counter0|sel_reg\(2),
	datad => \display|bcd0|Mux1~0_combout\,
	combout => \display|SSD_secU[5]~5_combout\);

-- Location: LCCOMB_X111_Y16_N4
\display|bcd0|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|bcd0|Mux0~0_combout\ = (\display|Mux0~3_combout\) # ((\display|Mux2~3_combout\ & ((!\display|Mux1~3_combout\) # (!\display|Mux3~3_combout\))) # (!\display|Mux2~3_combout\ & ((\display|Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|Mux0~3_combout\,
	datab => \display|Mux3~3_combout\,
	datac => \display|Mux2~3_combout\,
	datad => \display|Mux1~3_combout\,
	combout => \display|bcd0|Mux0~0_combout\);

-- Location: LCCOMB_X110_Y16_N4
\display|SSD_secU[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|SSD_secU[6]~6_combout\ = (\counter0|sel_reg\(2)) # ((\counter0|sel_reg\(1)) # ((\counter0|sel_reg\(0)) # (!\display|bcd0|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|sel_reg\(2),
	datab => \counter0|sel_reg\(1),
	datac => \counter0|sel_reg\(0),
	datad => \display|bcd0|Mux0~0_combout\,
	combout => \display|SSD_secU[6]~6_combout\);

-- Location: LCCOMB_X114_Y16_N14
\display|SSD_secD[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|SSD_secD[0]~0_combout\ = ((\counter0|sel_reg\(1)) # ((\display|bcd0|Mux6~0_combout\) # (\counter0|sel_reg\(2)))) # (!\counter0|sel_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|sel_reg\(0),
	datab => \counter0|sel_reg\(1),
	datac => \display|bcd0|Mux6~0_combout\,
	datad => \counter0|sel_reg\(2),
	combout => \display|SSD_secD[0]~0_combout\);

-- Location: LCCOMB_X114_Y16_N16
\display|SSD_secD[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|SSD_secD[1]~1_combout\ = (\counter0|sel_reg\(2)) # ((\counter0|sel_reg\(1)) # ((\display|bcd0|Mux5~0_combout\) # (!\counter0|sel_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|sel_reg\(2),
	datab => \counter0|sel_reg\(1),
	datac => \counter0|sel_reg\(0),
	datad => \display|bcd0|Mux5~0_combout\,
	combout => \display|SSD_secD[1]~1_combout\);

-- Location: LCCOMB_X114_Y16_N18
\display|SSD_secD[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|SSD_secD[2]~2_combout\ = (\counter0|sel_reg\(2)) # ((\counter0|sel_reg\(1)) # ((\display|bcd0|Mux4~0_combout\) # (!\counter0|sel_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|sel_reg\(2),
	datab => \counter0|sel_reg\(1),
	datac => \counter0|sel_reg\(0),
	datad => \display|bcd0|Mux4~0_combout\,
	combout => \display|SSD_secD[2]~2_combout\);

-- Location: LCCOMB_X112_Y16_N14
\display|SSD_secD[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|SSD_secD[3]~3_combout\ = (\counter0|sel_reg\(1)) # (((\counter0|sel_reg\(2)) # (\display|bcd0|Mux3~0_combout\)) # (!\counter0|sel_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|sel_reg\(1),
	datab => \counter0|sel_reg\(0),
	datac => \counter0|sel_reg\(2),
	datad => \display|bcd0|Mux3~0_combout\,
	combout => \display|SSD_secD[3]~3_combout\);

-- Location: LCCOMB_X112_Y16_N24
\display|SSD_secD[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|SSD_secD[4]~4_combout\ = (\counter0|sel_reg\(1)) # (((\counter0|sel_reg\(2)) # (\display|bcd0|Mux2~0_combout\)) # (!\counter0|sel_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|sel_reg\(1),
	datab => \counter0|sel_reg\(0),
	datac => \counter0|sel_reg\(2),
	datad => \display|bcd0|Mux2~0_combout\,
	combout => \display|SSD_secD[4]~4_combout\);

-- Location: LCCOMB_X112_Y16_N2
\display|SSD_secD[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|SSD_secD[5]~5_combout\ = (\counter0|sel_reg\(1)) # (((\counter0|sel_reg\(2)) # (\display|bcd0|Mux1~0_combout\)) # (!\counter0|sel_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|sel_reg\(1),
	datab => \counter0|sel_reg\(0),
	datac => \counter0|sel_reg\(2),
	datad => \display|bcd0|Mux1~0_combout\,
	combout => \display|SSD_secD[5]~5_combout\);

-- Location: LCCOMB_X110_Y16_N14
\display|SSD_secD[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|SSD_secD[6]~6_combout\ = (\counter0|sel_reg\(2)) # ((\counter0|sel_reg\(1)) # ((!\display|bcd0|Mux0~0_combout\) # (!\counter0|sel_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|sel_reg\(2),
	datab => \counter0|sel_reg\(1),
	datac => \counter0|sel_reg\(0),
	datad => \display|bcd0|Mux0~0_combout\,
	combout => \display|SSD_secD[6]~6_combout\);

-- Location: LCCOMB_X114_Y16_N12
\display|SSD_minU[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|SSD_minU[0]~0_combout\ = (\counter0|sel_reg\(0)) # (((\display|bcd0|Mux6~0_combout\) # (\counter0|sel_reg\(2))) # (!\counter0|sel_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|sel_reg\(0),
	datab => \counter0|sel_reg\(1),
	datac => \display|bcd0|Mux6~0_combout\,
	datad => \counter0|sel_reg\(2),
	combout => \display|SSD_minU[0]~0_combout\);

-- Location: LCCOMB_X114_Y16_N6
\display|SSD_minU[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|SSD_minU[1]~1_combout\ = (\counter0|sel_reg\(2)) # (((\counter0|sel_reg\(0)) # (\display|bcd0|Mux5~0_combout\)) # (!\counter0|sel_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|sel_reg\(2),
	datab => \counter0|sel_reg\(1),
	datac => \counter0|sel_reg\(0),
	datad => \display|bcd0|Mux5~0_combout\,
	combout => \display|SSD_minU[1]~1_combout\);

-- Location: LCCOMB_X114_Y16_N0
\display|SSD_minU[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|SSD_minU[2]~2_combout\ = (\counter0|sel_reg\(2)) # (((\counter0|sel_reg\(0)) # (\display|bcd0|Mux4~0_combout\)) # (!\counter0|sel_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|sel_reg\(2),
	datab => \counter0|sel_reg\(1),
	datac => \counter0|sel_reg\(0),
	datad => \display|bcd0|Mux4~0_combout\,
	combout => \display|SSD_minU[2]~2_combout\);

-- Location: LCCOMB_X112_Y16_N20
\display|SSD_minU[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|SSD_minU[3]~3_combout\ = ((\counter0|sel_reg\(0)) # ((\counter0|sel_reg\(2)) # (\display|bcd0|Mux3~0_combout\))) # (!\counter0|sel_reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|sel_reg\(1),
	datab => \counter0|sel_reg\(0),
	datac => \counter0|sel_reg\(2),
	datad => \display|bcd0|Mux3~0_combout\,
	combout => \display|SSD_minU[3]~3_combout\);

-- Location: LCCOMB_X112_Y16_N6
\display|SSD_minU[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|SSD_minU[4]~4_combout\ = ((\counter0|sel_reg\(0)) # ((\counter0|sel_reg\(2)) # (\display|bcd0|Mux2~0_combout\))) # (!\counter0|sel_reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|sel_reg\(1),
	datab => \counter0|sel_reg\(0),
	datac => \counter0|sel_reg\(2),
	datad => \display|bcd0|Mux2~0_combout\,
	combout => \display|SSD_minU[4]~4_combout\);

-- Location: LCCOMB_X112_Y16_N16
\display|SSD_minU[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|SSD_minU[5]~5_combout\ = ((\counter0|sel_reg\(0)) # ((\counter0|sel_reg\(2)) # (\display|bcd0|Mux1~0_combout\))) # (!\counter0|sel_reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|sel_reg\(1),
	datab => \counter0|sel_reg\(0),
	datac => \counter0|sel_reg\(2),
	datad => \display|bcd0|Mux1~0_combout\,
	combout => \display|SSD_minU[5]~5_combout\);

-- Location: LCCOMB_X110_Y16_N0
\display|SSD_minU[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|SSD_minU[6]~6_combout\ = (\counter0|sel_reg\(2)) # (((\counter0|sel_reg\(0)) # (!\display|bcd0|Mux0~0_combout\)) # (!\counter0|sel_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|sel_reg\(2),
	datab => \counter0|sel_reg\(1),
	datac => \counter0|sel_reg\(0),
	datad => \display|bcd0|Mux0~0_combout\,
	combout => \display|SSD_minU[6]~6_combout\);

-- Location: LCCOMB_X114_Y16_N10
\display|SSD_minD[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|SSD_minD[0]~0_combout\ = (((\display|bcd0|Mux6~0_combout\) # (\counter0|sel_reg\(2))) # (!\counter0|sel_reg\(1))) # (!\counter0|sel_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|sel_reg\(0),
	datab => \counter0|sel_reg\(1),
	datac => \display|bcd0|Mux6~0_combout\,
	datad => \counter0|sel_reg\(2),
	combout => \display|SSD_minD[0]~0_combout\);

-- Location: LCCOMB_X114_Y16_N20
\display|SSD_minD[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|SSD_minD[1]~1_combout\ = (\counter0|sel_reg\(2)) # (((\display|bcd0|Mux5~0_combout\) # (!\counter0|sel_reg\(0))) # (!\counter0|sel_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|sel_reg\(2),
	datab => \counter0|sel_reg\(1),
	datac => \counter0|sel_reg\(0),
	datad => \display|bcd0|Mux5~0_combout\,
	combout => \display|SSD_minD[1]~1_combout\);

-- Location: LCCOMB_X114_Y16_N22
\display|SSD_minD[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|SSD_minD[2]~2_combout\ = (\counter0|sel_reg\(2)) # (((\display|bcd0|Mux4~0_combout\) # (!\counter0|sel_reg\(0))) # (!\counter0|sel_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|sel_reg\(2),
	datab => \counter0|sel_reg\(1),
	datac => \counter0|sel_reg\(0),
	datad => \display|bcd0|Mux4~0_combout\,
	combout => \display|SSD_minD[2]~2_combout\);

-- Location: LCCOMB_X112_Y16_N18
\display|SSD_minD[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|SSD_minD[3]~3_combout\ = (((\counter0|sel_reg\(2)) # (\display|bcd0|Mux3~0_combout\)) # (!\counter0|sel_reg\(0))) # (!\counter0|sel_reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|sel_reg\(1),
	datab => \counter0|sel_reg\(0),
	datac => \counter0|sel_reg\(2),
	datad => \display|bcd0|Mux3~0_combout\,
	combout => \display|SSD_minD[3]~3_combout\);

-- Location: LCCOMB_X112_Y16_N4
\display|SSD_minD[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|SSD_minD[4]~4_combout\ = (((\counter0|sel_reg\(2)) # (\display|bcd0|Mux2~0_combout\)) # (!\counter0|sel_reg\(0))) # (!\counter0|sel_reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|sel_reg\(1),
	datab => \counter0|sel_reg\(0),
	datac => \counter0|sel_reg\(2),
	datad => \display|bcd0|Mux2~0_combout\,
	combout => \display|SSD_minD[4]~4_combout\);

-- Location: LCCOMB_X112_Y16_N22
\display|SSD_minD[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|SSD_minD[5]~5_combout\ = (((\counter0|sel_reg\(2)) # (\display|bcd0|Mux1~0_combout\)) # (!\counter0|sel_reg\(0))) # (!\counter0|sel_reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|sel_reg\(1),
	datab => \counter0|sel_reg\(0),
	datac => \counter0|sel_reg\(2),
	datad => \display|bcd0|Mux1~0_combout\,
	combout => \display|SSD_minD[5]~5_combout\);

-- Location: LCCOMB_X110_Y16_N2
\display|SSD_minD[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|SSD_minD[6]~6_combout\ = (\counter0|sel_reg\(2)) # (((!\display|bcd0|Mux0~0_combout\) # (!\counter0|sel_reg\(0))) # (!\counter0|sel_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|sel_reg\(2),
	datab => \counter0|sel_reg\(1),
	datac => \counter0|sel_reg\(0),
	datad => \display|bcd0|Mux0~0_combout\,
	combout => \display|SSD_minD[6]~6_combout\);

-- Location: LCCOMB_X114_Y16_N24
\display|SSD_horU[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|SSD_horU[0]~0_combout\ = (\counter0|sel_reg\(0)) # ((\counter0|sel_reg\(1)) # ((\display|bcd0|Mux6~0_combout\) # (!\counter0|sel_reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|sel_reg\(0),
	datab => \counter0|sel_reg\(1),
	datac => \display|bcd0|Mux6~0_combout\,
	datad => \counter0|sel_reg\(2),
	combout => \display|SSD_horU[0]~0_combout\);

-- Location: LCCOMB_X111_Y16_N30
\display|SSD_horU[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|SSD_horU[1]~1_combout\ = ((\counter0|sel_reg\(0)) # ((\counter0|sel_reg\(1)) # (\display|bcd0|Mux5~0_combout\))) # (!\counter0|sel_reg\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|sel_reg\(2),
	datab => \counter0|sel_reg\(0),
	datac => \counter0|sel_reg\(1),
	datad => \display|bcd0|Mux5~0_combout\,
	combout => \display|SSD_horU[1]~1_combout\);

-- Location: LCCOMB_X114_Y16_N2
\display|SSD_horU[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|SSD_horU[2]~2_combout\ = ((\counter0|sel_reg\(1)) # ((\counter0|sel_reg\(0)) # (\display|bcd0|Mux4~0_combout\))) # (!\counter0|sel_reg\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|sel_reg\(2),
	datab => \counter0|sel_reg\(1),
	datac => \counter0|sel_reg\(0),
	datad => \display|bcd0|Mux4~0_combout\,
	combout => \display|SSD_horU[2]~2_combout\);

-- Location: LCCOMB_X112_Y16_N8
\display|SSD_horU[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|SSD_horU[3]~3_combout\ = (\counter0|sel_reg\(1)) # ((\counter0|sel_reg\(0)) # ((\display|bcd0|Mux3~0_combout\) # (!\counter0|sel_reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|sel_reg\(1),
	datab => \counter0|sel_reg\(0),
	datac => \counter0|sel_reg\(2),
	datad => \display|bcd0|Mux3~0_combout\,
	combout => \display|SSD_horU[3]~3_combout\);

-- Location: LCCOMB_X112_Y16_N10
\display|SSD_horU[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|SSD_horU[4]~4_combout\ = (\counter0|sel_reg\(1)) # ((\counter0|sel_reg\(0)) # ((\display|bcd0|Mux2~0_combout\) # (!\counter0|sel_reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|sel_reg\(1),
	datab => \counter0|sel_reg\(0),
	datac => \counter0|sel_reg\(2),
	datad => \display|bcd0|Mux2~0_combout\,
	combout => \display|SSD_horU[4]~4_combout\);

-- Location: LCCOMB_X111_Y16_N24
\display|SSD_horU[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|SSD_horU[5]~5_combout\ = ((\counter0|sel_reg\(0)) # ((\counter0|sel_reg\(1)) # (\display|bcd0|Mux1~0_combout\))) # (!\counter0|sel_reg\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|sel_reg\(2),
	datab => \counter0|sel_reg\(0),
	datac => \counter0|sel_reg\(1),
	datad => \display|bcd0|Mux1~0_combout\,
	combout => \display|SSD_horU[5]~5_combout\);

-- Location: LCCOMB_X110_Y16_N20
\display|SSD_horU[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|SSD_horU[6]~6_combout\ = ((\counter0|sel_reg\(1)) # ((\counter0|sel_reg\(0)) # (!\display|bcd0|Mux0~0_combout\))) # (!\counter0|sel_reg\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|sel_reg\(2),
	datab => \counter0|sel_reg\(1),
	datac => \counter0|sel_reg\(0),
	datad => \display|bcd0|Mux0~0_combout\,
	combout => \display|SSD_horU[6]~6_combout\);

-- Location: LCCOMB_X114_Y16_N28
\display|SSD_horD[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|SSD_horD[0]~0_combout\ = ((\counter0|sel_reg\(1)) # ((\display|bcd0|Mux6~0_combout\) # (!\counter0|sel_reg\(2)))) # (!\counter0|sel_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|sel_reg\(0),
	datab => \counter0|sel_reg\(1),
	datac => \display|bcd0|Mux6~0_combout\,
	datad => \counter0|sel_reg\(2),
	combout => \display|SSD_horD[0]~0_combout\);

-- Location: LCCOMB_X111_Y16_N18
\display|SSD_horD[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|SSD_horD[1]~1_combout\ = (((\counter0|sel_reg\(1)) # (\display|bcd0|Mux5~0_combout\)) # (!\counter0|sel_reg\(0))) # (!\counter0|sel_reg\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|sel_reg\(2),
	datab => \counter0|sel_reg\(0),
	datac => \counter0|sel_reg\(1),
	datad => \display|bcd0|Mux5~0_combout\,
	combout => \display|SSD_horD[1]~1_combout\);

-- Location: LCCOMB_X114_Y16_N30
\display|SSD_horD[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|SSD_horD[2]~2_combout\ = ((\counter0|sel_reg\(1)) # ((\display|bcd0|Mux4~0_combout\) # (!\counter0|sel_reg\(0)))) # (!\counter0|sel_reg\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|sel_reg\(2),
	datab => \counter0|sel_reg\(1),
	datac => \counter0|sel_reg\(0),
	datad => \display|bcd0|Mux4~0_combout\,
	combout => \display|SSD_horD[2]~2_combout\);

-- Location: LCCOMB_X112_Y16_N12
\display|SSD_horD[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|SSD_horD[3]~3_combout\ = (\counter0|sel_reg\(1)) # (((\display|bcd0|Mux3~0_combout\) # (!\counter0|sel_reg\(2))) # (!\counter0|sel_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|sel_reg\(1),
	datab => \counter0|sel_reg\(0),
	datac => \counter0|sel_reg\(2),
	datad => \display|bcd0|Mux3~0_combout\,
	combout => \display|SSD_horD[3]~3_combout\);

-- Location: LCCOMB_X112_Y16_N30
\display|SSD_horD[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|SSD_horD[4]~4_combout\ = (\counter0|sel_reg\(1)) # (((\display|bcd0|Mux2~0_combout\) # (!\counter0|sel_reg\(2))) # (!\counter0|sel_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|sel_reg\(1),
	datab => \counter0|sel_reg\(0),
	datac => \counter0|sel_reg\(2),
	datad => \display|bcd0|Mux2~0_combout\,
	combout => \display|SSD_horD[4]~4_combout\);

-- Location: LCCOMB_X111_Y16_N28
\display|SSD_horD[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|SSD_horD[5]~5_combout\ = (((\counter0|sel_reg\(1)) # (\display|bcd0|Mux1~0_combout\)) # (!\counter0|sel_reg\(0))) # (!\counter0|sel_reg\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|sel_reg\(2),
	datab => \counter0|sel_reg\(0),
	datac => \counter0|sel_reg\(1),
	datad => \display|bcd0|Mux1~0_combout\,
	combout => \display|SSD_horD[5]~5_combout\);

-- Location: LCCOMB_X110_Y16_N22
\display|SSD_horD[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|SSD_horD[6]~6_combout\ = ((\counter0|sel_reg\(1)) # ((!\display|bcd0|Mux0~0_combout\) # (!\counter0|sel_reg\(0)))) # (!\counter0|sel_reg\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|sel_reg\(2),
	datab => \counter0|sel_reg\(1),
	datac => \counter0|sel_reg\(0),
	datad => \display|bcd0|Mux0~0_combout\,
	combout => \display|SSD_horD[6]~6_combout\);
END structure;


