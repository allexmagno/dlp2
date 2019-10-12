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

-- DATE "10/12/2019 22:20:05"

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

ENTITY 	machine IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	button : IN std_logic;
	load : IN std_logic;
	enable : IN std_logic;
	hra_d_timer : IN std_logic_vector(3 DOWNTO 0);
	hra_u_timer : IN std_logic_vector(3 DOWNTO 0);
	min_d_timer : IN std_logic_vector(3 DOWNTO 0);
	min_u_timer : IN std_logic_vector(3 DOWNTO 0);
	hra_d_load : IN std_logic_vector(3 DOWNTO 0);
	hra_u_load : IN std_logic_vector(3 DOWNTO 0);
	min_d_load : IN std_logic_vector(3 DOWNTO 0);
	min_u_load : IN std_logic_vector(3 DOWNTO 0);
	buzzer : OUT std_logic
	);
END machine;

-- Design Ports Information
-- buzzer	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hra_d_timer[0]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hra_d_timer[1]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hra_d_load[1]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hra_d_load[0]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hra_d_timer[2]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hra_d_timer[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hra_d_load[3]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hra_d_load[2]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hra_u_timer[0]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hra_u_timer[1]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hra_u_load[1]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hra_u_load[0]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hra_u_timer[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hra_u_timer[3]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hra_u_load[3]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hra_u_load[2]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_d_timer[0]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_d_timer[1]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_d_timer[2]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_d_timer[3]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_d_load[1]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_d_load[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_d_load[3]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_d_load[2]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_u_timer[0]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_u_timer[1]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_u_load[1]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_u_load[0]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_u_timer[2]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_u_timer[3]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_u_load[3]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_u_load[2]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF machine IS
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
SIGNAL ww_button : std_logic;
SIGNAL ww_load : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_hra_d_timer : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_hra_u_timer : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_min_d_timer : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_min_u_timer : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_hra_d_load : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_hra_u_load : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_min_d_load : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_min_u_load : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_buzzer : std_logic;
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \process_0~2_combout\ : std_logic;
SIGNAL \Selector3~5_combout\ : std_logic;
SIGNAL \state_reg.load_time~q\ : std_logic;
SIGNAL \state_next.load_time~0_combout\ : std_logic;
SIGNAL \hra_d_timer[0]~input_o\ : std_logic;
SIGNAL \hra_d_load[2]~input_o\ : std_logic;
SIGNAL \hra_u_timer[0]~input_o\ : std_logic;
SIGNAL \hra_u_timer[1]~input_o\ : std_logic;
SIGNAL \hra_u_load[1]~input_o\ : std_logic;
SIGNAL \hra_u_load[0]~input_o\ : std_logic;
SIGNAL \hra_u_load[2]~input_o\ : std_logic;
SIGNAL \min_d_timer[1]~input_o\ : std_logic;
SIGNAL \min_d_timer[3]~input_o\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \min_u_timer[1]~input_o\ : std_logic;
SIGNAL \min_u_timer[2]~input_o\ : std_logic;
SIGNAL \min_u_timer[3]~input_o\ : std_logic;
SIGNAL \min_u_load[3]~input_o\ : std_logic;
SIGNAL \min_u_load[2]~input_o\ : std_logic;
SIGNAL \buzzer~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \state_reg.alarm~feeder_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \state_reg.alarm~q\ : std_logic;
SIGNAL \button~input_o\ : std_logic;
SIGNAL \hra_d_load[1]~input_o\ : std_logic;
SIGNAL \hra_d_load[0]~input_o\ : std_logic;
SIGNAL \hra_d_timer[1]~input_o\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \hra_u_timer[2]~input_o\ : std_logic;
SIGNAL \hra_u_timer[3]~input_o\ : std_logic;
SIGNAL \hra_u_load[3]~input_o\ : std_logic;
SIGNAL \process_0~3_combout\ : std_logic;
SIGNAL \hra_d_timer[3]~input_o\ : std_logic;
SIGNAL \hra_d_timer[2]~input_o\ : std_logic;
SIGNAL \hra_d_load[3]~input_o\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \process_0~4_combout\ : std_logic;
SIGNAL \min_d_timer[2]~input_o\ : std_logic;
SIGNAL \min_d_load[2]~input_o\ : std_logic;
SIGNAL \min_d_load[3]~input_o\ : std_logic;
SIGNAL \Selector3~3_combout\ : std_logic;
SIGNAL \min_u_timer[0]~input_o\ : std_logic;
SIGNAL \min_u_load[0]~input_o\ : std_logic;
SIGNAL \min_u_load[1]~input_o\ : std_logic;
SIGNAL \Selector3~4_combout\ : std_logic;
SIGNAL \min_d_load[1]~input_o\ : std_logic;
SIGNAL \min_d_load[0]~input_o\ : std_logic;
SIGNAL \min_d_timer[0]~input_o\ : std_logic;
SIGNAL \Selector3~2_combout\ : std_logic;
SIGNAL \Selector3~6_combout\ : std_logic;
SIGNAL \load~input_o\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \state_next.wait_button1~0_combout\ : std_logic;
SIGNAL \state_reg.wait_button1~q\ : std_logic;
SIGNAL \state_next.inc_sleep~0_combout\ : std_logic;
SIGNAL \state_reg.inc_sleep~feeder_combout\ : std_logic;
SIGNAL \state_reg.inc_sleep~q\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \min_d_sleep_reg[3]~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Equal4~1_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \state_reg.sleep~q\ : std_logic;
SIGNAL \state_next.wait_button3~0_combout\ : std_logic;
SIGNAL \state_reg.wait_button3~q\ : std_logic;
SIGNAL \state_next.wait_button2~0_combout\ : std_logic;
SIGNAL \state_reg.wait_button2~q\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \Selector0~2_combout\ : std_logic;
SIGNAL \state_reg.idle~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \state_reg.on_alarm~q\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector3~7_combout\ : std_logic;
SIGNAL \Selector3~8_combout\ : std_logic;
SIGNAL \buzzer_buf_reg~q\ : std_logic;
SIGNAL min_d_sleep_reg : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_button <= button;
ww_load <= load;
ww_enable <= enable;
ww_hra_d_timer <= hra_d_timer;
ww_hra_u_timer <= hra_u_timer;
ww_min_d_timer <= min_d_timer;
ww_min_u_timer <= min_u_timer;
ww_hra_d_load <= hra_d_load;
ww_hra_u_load <= hra_u_load;
ww_min_d_load <= min_d_load;
ww_min_u_load <= min_u_load;
buzzer <= ww_buzzer;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;

-- Location: LCCOMB_X1_Y66_N28
\process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~2_combout\ = (\hra_u_timer[0]~input_o\ & (\hra_u_load[0]~input_o\ & (\hra_u_timer[1]~input_o\ $ (!\hra_u_load[1]~input_o\)))) # (!\hra_u_timer[0]~input_o\ & (!\hra_u_load[0]~input_o\ & (\hra_u_timer[1]~input_o\ $ (!\hra_u_load[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hra_u_timer[0]~input_o\,
	datab => \hra_u_timer[1]~input_o\,
	datac => \hra_u_load[1]~input_o\,
	datad => \hra_u_load[0]~input_o\,
	combout => \process_0~2_combout\);

-- Location: LCCOMB_X11_Y72_N12
\Selector3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~5_combout\ = (\min_u_timer[2]~input_o\ & (\min_u_load[2]~input_o\ & (\min_u_timer[3]~input_o\ $ (!\min_u_load[3]~input_o\)))) # (!\min_u_timer[2]~input_o\ & (!\min_u_load[2]~input_o\ & (\min_u_timer[3]~input_o\ $ (!\min_u_load[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_u_timer[2]~input_o\,
	datab => \min_u_timer[3]~input_o\,
	datac => \min_u_load[3]~input_o\,
	datad => \min_u_load[2]~input_o\,
	combout => \Selector3~5_combout\);

-- Location: FF_X17_Y72_N31
\state_reg.load_time\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state_next.load_time~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_reg.load_time~q\);

-- Location: LCCOMB_X17_Y72_N30
\state_next.load_time~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \state_next.load_time~0_combout\ = (\load~input_o\ & ((\state_reg.load_time~q\) # (!\state_reg.idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \load~input_o\,
	datac => \state_reg.load_time~q\,
	datad => \state_reg.idle~q\,
	combout => \state_next.load_time~0_combout\);

-- Location: IOIBUF_X0_Y61_N22
\hra_d_timer[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hra_d_timer(0),
	o => \hra_d_timer[0]~input_o\);

-- Location: IOIBUF_X0_Y60_N15
\hra_d_load[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hra_d_load(2),
	o => \hra_d_load[2]~input_o\);

-- Location: IOIBUF_X0_Y66_N15
\hra_u_timer[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hra_u_timer(0),
	o => \hra_u_timer[0]~input_o\);

-- Location: IOIBUF_X0_Y65_N15
\hra_u_timer[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hra_u_timer(1),
	o => \hra_u_timer[1]~input_o\);

-- Location: IOIBUF_X0_Y64_N1
\hra_u_load[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hra_u_load(1),
	o => \hra_u_load[1]~input_o\);

-- Location: IOIBUF_X0_Y66_N22
\hra_u_load[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hra_u_load(0),
	o => \hra_u_load[0]~input_o\);

-- Location: IOIBUF_X0_Y57_N15
\hra_u_load[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hra_u_load(2),
	o => \hra_u_load[2]~input_o\);

-- Location: IOIBUF_X20_Y73_N1
\min_d_timer[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_min_d_timer(1),
	o => \min_d_timer[1]~input_o\);

-- Location: IOIBUF_X16_Y73_N15
\min_d_timer[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_min_d_timer(3),
	o => \min_d_timer[3]~input_o\);

-- Location: IOIBUF_X16_Y73_N8
\enable~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: IOIBUF_X13_Y73_N8
\min_u_timer[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_min_u_timer(1),
	o => \min_u_timer[1]~input_o\);

-- Location: IOIBUF_X11_Y73_N8
\min_u_timer[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_min_u_timer(2),
	o => \min_u_timer[2]~input_o\);

-- Location: IOIBUF_X11_Y73_N15
\min_u_timer[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_min_u_timer(3),
	o => \min_u_timer[3]~input_o\);

-- Location: IOIBUF_X11_Y73_N1
\min_u_load[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_min_u_load(3),
	o => \min_u_load[3]~input_o\);

-- Location: IOIBUF_X11_Y73_N22
\min_u_load[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_min_u_load(2),
	o => \min_u_load[2]~input_o\);

-- Location: IOOBUF_X9_Y73_N2
\buzzer~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \buzzer_buf_reg~q\,
	devoe => ww_devoe,
	o => \buzzer~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
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

-- Location: LCCOMB_X16_Y72_N2
\state_reg.alarm~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \state_reg.alarm~feeder_combout\ = \Selector3~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector3~8_combout\,
	combout => \state_reg.alarm~feeder_combout\);

-- Location: IOIBUF_X0_Y36_N15
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: CLKCTRL_G4
\rst~inputclkctrl\ : cycloneive_clkctrl
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

-- Location: FF_X16_Y72_N3
\state_reg.alarm\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state_reg.alarm~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_reg.alarm~q\);

-- Location: IOIBUF_X20_Y73_N15
\button~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button,
	o => \button~input_o\);

-- Location: IOIBUF_X0_Y62_N15
\hra_d_load[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hra_d_load(1),
	o => \hra_d_load[1]~input_o\);

-- Location: IOIBUF_X0_Y59_N22
\hra_d_load[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hra_d_load(0),
	o => \hra_d_load[0]~input_o\);

-- Location: IOIBUF_X0_Y62_N22
\hra_d_timer[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hra_d_timer(1),
	o => \hra_d_timer[1]~input_o\);

-- Location: LCCOMB_X1_Y62_N0
\process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (\hra_d_timer[0]~input_o\ & (\hra_d_load[0]~input_o\ & (\hra_d_load[1]~input_o\ $ (!\hra_d_timer[1]~input_o\)))) # (!\hra_d_timer[0]~input_o\ & (!\hra_d_load[0]~input_o\ & (\hra_d_load[1]~input_o\ $ (!\hra_d_timer[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hra_d_timer[0]~input_o\,
	datab => \hra_d_load[1]~input_o\,
	datac => \hra_d_load[0]~input_o\,
	datad => \hra_d_timer[1]~input_o\,
	combout => \process_0~0_combout\);

-- Location: IOIBUF_X0_Y57_N22
\hra_u_timer[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hra_u_timer(2),
	o => \hra_u_timer[2]~input_o\);

-- Location: IOIBUF_X0_Y55_N8
\hra_u_timer[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hra_u_timer(3),
	o => \hra_u_timer[3]~input_o\);

-- Location: IOIBUF_X0_Y58_N15
\hra_u_load[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hra_u_load(3),
	o => \hra_u_load[3]~input_o\);

-- Location: LCCOMB_X1_Y57_N0
\process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~3_combout\ = (\hra_u_load[2]~input_o\ & (\hra_u_timer[2]~input_o\ & (\hra_u_timer[3]~input_o\ $ (!\hra_u_load[3]~input_o\)))) # (!\hra_u_load[2]~input_o\ & (!\hra_u_timer[2]~input_o\ & (\hra_u_timer[3]~input_o\ $ (!\hra_u_load[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hra_u_load[2]~input_o\,
	datab => \hra_u_timer[2]~input_o\,
	datac => \hra_u_timer[3]~input_o\,
	datad => \hra_u_load[3]~input_o\,
	combout => \process_0~3_combout\);

-- Location: IOIBUF_X0_Y63_N15
\hra_d_timer[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hra_d_timer(3),
	o => \hra_d_timer[3]~input_o\);

-- Location: IOIBUF_X0_Y59_N15
\hra_d_timer[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hra_d_timer(2),
	o => \hra_d_timer[2]~input_o\);

-- Location: IOIBUF_X0_Y63_N22
\hra_d_load[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hra_d_load(3),
	o => \hra_d_load[3]~input_o\);

-- Location: LCCOMB_X1_Y63_N8
\process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~1_combout\ = (\hra_d_load[2]~input_o\ & (\hra_d_timer[2]~input_o\ & (\hra_d_timer[3]~input_o\ $ (!\hra_d_load[3]~input_o\)))) # (!\hra_d_load[2]~input_o\ & (!\hra_d_timer[2]~input_o\ & (\hra_d_timer[3]~input_o\ $ (!\hra_d_load[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hra_d_load[2]~input_o\,
	datab => \hra_d_timer[3]~input_o\,
	datac => \hra_d_timer[2]~input_o\,
	datad => \hra_d_load[3]~input_o\,
	combout => \process_0~1_combout\);

-- Location: LCCOMB_X1_Y62_N22
\process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~4_combout\ = (\process_0~2_combout\ & (\process_0~0_combout\ & (\process_0~3_combout\ & \process_0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~2_combout\,
	datab => \process_0~0_combout\,
	datac => \process_0~3_combout\,
	datad => \process_0~1_combout\,
	combout => \process_0~4_combout\);

-- Location: IOIBUF_X16_Y73_N22
\min_d_timer[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_min_d_timer(2),
	o => \min_d_timer[2]~input_o\);

-- Location: IOIBUF_X16_Y73_N1
\min_d_load[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_min_d_load(2),
	o => \min_d_load[2]~input_o\);

-- Location: IOIBUF_X23_Y73_N15
\min_d_load[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_min_d_load(3),
	o => \min_d_load[3]~input_o\);

-- Location: LCCOMB_X16_Y72_N20
\Selector3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~3_combout\ = (\min_d_timer[3]~input_o\ & (\min_d_load[3]~input_o\ & (\min_d_timer[2]~input_o\ $ (!\min_d_load[2]~input_o\)))) # (!\min_d_timer[3]~input_o\ & (!\min_d_load[3]~input_o\ & (\min_d_timer[2]~input_o\ $ (!\min_d_load[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_d_timer[3]~input_o\,
	datab => \min_d_timer[2]~input_o\,
	datac => \min_d_load[2]~input_o\,
	datad => \min_d_load[3]~input_o\,
	combout => \Selector3~3_combout\);

-- Location: IOIBUF_X13_Y73_N15
\min_u_timer[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_min_u_timer(0),
	o => \min_u_timer[0]~input_o\);

-- Location: IOIBUF_X13_Y73_N1
\min_u_load[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_min_u_load(0),
	o => \min_u_load[0]~input_o\);

-- Location: IOIBUF_X13_Y73_N22
\min_u_load[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_min_u_load(1),
	o => \min_u_load[1]~input_o\);

-- Location: LCCOMB_X13_Y72_N24
\Selector3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~4_combout\ = (\min_u_timer[1]~input_o\ & (\min_u_load[1]~input_o\ & (\min_u_timer[0]~input_o\ $ (!\min_u_load[0]~input_o\)))) # (!\min_u_timer[1]~input_o\ & (!\min_u_load[1]~input_o\ & (\min_u_timer[0]~input_o\ $ (!\min_u_load[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_u_timer[1]~input_o\,
	datab => \min_u_timer[0]~input_o\,
	datac => \min_u_load[0]~input_o\,
	datad => \min_u_load[1]~input_o\,
	combout => \Selector3~4_combout\);

-- Location: IOIBUF_X20_Y73_N8
\min_d_load[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_min_d_load(1),
	o => \min_d_load[1]~input_o\);

-- Location: IOIBUF_X18_Y73_N22
\min_d_load[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_min_d_load(0),
	o => \min_d_load[0]~input_o\);

-- Location: IOIBUF_X20_Y73_N22
\min_d_timer[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_min_d_timer(0),
	o => \min_d_timer[0]~input_o\);

-- Location: LCCOMB_X17_Y72_N6
\Selector3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~2_combout\ = (\min_d_timer[1]~input_o\ & (\min_d_load[1]~input_o\ & (\min_d_load[0]~input_o\ $ (!\min_d_timer[0]~input_o\)))) # (!\min_d_timer[1]~input_o\ & (!\min_d_load[1]~input_o\ & (\min_d_load[0]~input_o\ $ (!\min_d_timer[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_d_timer[1]~input_o\,
	datab => \min_d_load[1]~input_o\,
	datac => \min_d_load[0]~input_o\,
	datad => \min_d_timer[0]~input_o\,
	combout => \Selector3~2_combout\);

-- Location: LCCOMB_X16_Y72_N22
\Selector3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~6_combout\ = (\Selector3~5_combout\ & (\Selector3~3_combout\ & (\Selector3~4_combout\ & \Selector3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~5_combout\,
	datab => \Selector3~3_combout\,
	datac => \Selector3~4_combout\,
	datad => \Selector3~2_combout\,
	combout => \Selector3~6_combout\);

-- Location: IOIBUF_X18_Y73_N15
\load~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load,
	o => \load~input_o\);

-- Location: LCCOMB_X17_Y72_N26
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (!\enable~input_o\ & ((\state_reg.on_alarm~q\) # ((!\load~input_o\ & !\state_reg.idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datab => \load~input_o\,
	datac => \state_reg.idle~q\,
	datad => \state_reg.on_alarm~q\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X17_Y72_N10
\state_next.wait_button1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \state_next.wait_button1~0_combout\ = (\button~input_o\ & ((\state_reg.wait_button1~q\) # (\state_reg.alarm~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button~input_o\,
	datac => \state_reg.wait_button1~q\,
	datad => \state_reg.alarm~q\,
	combout => \state_next.wait_button1~0_combout\);

-- Location: FF_X17_Y72_N11
\state_reg.wait_button1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state_next.wait_button1~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_reg.wait_button1~q\);

-- Location: LCCOMB_X17_Y72_N4
\state_next.inc_sleep~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \state_next.inc_sleep~0_combout\ = (!\button~input_o\ & \state_reg.wait_button1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button~input_o\,
	datad => \state_reg.wait_button1~q\,
	combout => \state_next.inc_sleep~0_combout\);

-- Location: LCCOMB_X17_Y72_N8
\state_reg.inc_sleep~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \state_reg.inc_sleep~feeder_combout\ = \state_next.inc_sleep~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state_next.inc_sleep~0_combout\,
	combout => \state_reg.inc_sleep~feeder_combout\);

-- Location: FF_X17_Y72_N9
\state_reg.inc_sleep\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state_reg.inc_sleep~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_reg.inc_sleep~q\);

-- Location: LCCOMB_X17_Y72_N14
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\button~input_o\ & (\min_d_load[0]~input_o\)) # (!\button~input_o\ & ((\state_reg.wait_button1~q\ & ((!min_d_sleep_reg(0)))) # (!\state_reg.wait_button1~q\ & (\min_d_load[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button~input_o\,
	datab => \min_d_load[0]~input_o\,
	datac => min_d_sleep_reg(0),
	datad => \state_reg.wait_button1~q\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X17_Y72_N22
\min_d_sleep_reg[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \min_d_sleep_reg[3]~0_combout\ = (\state_next.inc_sleep~0_combout\) # ((\load~input_o\ & ((\state_reg.load_time~q\) # (!\state_reg.idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_reg.load_time~q\,
	datab => \load~input_o\,
	datac => \state_next.inc_sleep~0_combout\,
	datad => \state_reg.idle~q\,
	combout => \min_d_sleep_reg[3]~0_combout\);

-- Location: FF_X17_Y72_N15
\min_d_sleep_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux3~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \min_d_sleep_reg[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min_d_sleep_reg(0));

-- Location: LCCOMB_X17_Y72_N16
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\state_next.inc_sleep~0_combout\ & (min_d_sleep_reg(0) $ (((min_d_sleep_reg(1)))))) # (!\state_next.inc_sleep~0_combout\ & (((\min_d_load[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min_d_sleep_reg(0),
	datab => \min_d_load[1]~input_o\,
	datac => min_d_sleep_reg(1),
	datad => \state_next.inc_sleep~0_combout\,
	combout => \Mux2~0_combout\);

-- Location: FF_X17_Y72_N17
\min_d_sleep_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux2~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \min_d_sleep_reg[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min_d_sleep_reg(1));

-- Location: LCCOMB_X16_Y72_N24
\Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = min_d_sleep_reg(2) $ (((min_d_sleep_reg(0) & min_d_sleep_reg(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min_d_sleep_reg(2),
	datac => min_d_sleep_reg(0),
	datad => min_d_sleep_reg(1),
	combout => \Add0~1_combout\);

-- Location: LCCOMB_X16_Y72_N18
\Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\state_reg.wait_button1~q\ & ((\button~input_o\ & (\min_d_load[2]~input_o\)) # (!\button~input_o\ & ((!\Add0~1_combout\))))) # (!\state_reg.wait_button1~q\ & (\min_d_load[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_d_load[2]~input_o\,
	datab => \state_reg.wait_button1~q\,
	datac => \button~input_o\,
	datad => \Add0~1_combout\,
	combout => \Mux1~2_combout\);

-- Location: FF_X16_Y72_N19
\min_d_sleep_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux1~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \min_d_sleep_reg[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min_d_sleep_reg(2));

-- Location: LCCOMB_X16_Y72_N26
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = min_d_sleep_reg(3) $ (((min_d_sleep_reg(2)) # ((min_d_sleep_reg(0) & min_d_sleep_reg(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min_d_sleep_reg(3),
	datab => min_d_sleep_reg(2),
	datac => min_d_sleep_reg(0),
	datad => min_d_sleep_reg(1),
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X16_Y72_N4
\Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\button~input_o\ & (((\min_d_load[3]~input_o\)))) # (!\button~input_o\ & ((\state_reg.wait_button1~q\ & (\Add0~0_combout\)) # (!\state_reg.wait_button1~q\ & ((\min_d_load[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button~input_o\,
	datab => \state_reg.wait_button1~q\,
	datac => \Add0~0_combout\,
	datad => \min_d_load[3]~input_o\,
	combout => \Mux0~2_combout\);

-- Location: FF_X16_Y72_N5
\min_d_sleep_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux0~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \min_d_sleep_reg[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min_d_sleep_reg(3));

-- Location: LCCOMB_X16_Y72_N8
\Equal4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~1_combout\ = (\min_d_timer[3]~input_o\ & (min_d_sleep_reg(3) & (\min_d_timer[2]~input_o\ $ (!min_d_sleep_reg(2))))) # (!\min_d_timer[3]~input_o\ & (!min_d_sleep_reg(3) & (\min_d_timer[2]~input_o\ $ (!min_d_sleep_reg(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_d_timer[3]~input_o\,
	datab => \min_d_timer[2]~input_o\,
	datac => min_d_sleep_reg(3),
	datad => min_d_sleep_reg(2),
	combout => \Equal4~1_combout\);

-- Location: LCCOMB_X17_Y72_N28
\Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (\min_d_timer[1]~input_o\ & (min_d_sleep_reg(1) & (\min_d_timer[0]~input_o\ $ (!min_d_sleep_reg(0))))) # (!\min_d_timer[1]~input_o\ & (!min_d_sleep_reg(1) & (\min_d_timer[0]~input_o\ $ (!min_d_sleep_reg(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_d_timer[1]~input_o\,
	datab => \min_d_timer[0]~input_o\,
	datac => min_d_sleep_reg(0),
	datad => min_d_sleep_reg(1),
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X16_Y72_N12
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\Equal4~1_combout\ & (\process_0~4_combout\ & \Equal4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal4~1_combout\,
	datac => \process_0~4_combout\,
	datad => \Equal4~0_combout\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X16_Y72_N14
\Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (!\button~input_o\ & ((\state_reg.inc_sleep~q\) # ((\state_reg.sleep~q\ & !\Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button~input_o\,
	datab => \state_reg.inc_sleep~q\,
	datac => \state_reg.sleep~q\,
	datad => \Selector2~0_combout\,
	combout => \Selector2~1_combout\);

-- Location: FF_X16_Y72_N15
\state_reg.sleep\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector2~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_reg.sleep~q\);

-- Location: LCCOMB_X17_Y72_N18
\state_next.wait_button3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \state_next.wait_button3~0_combout\ = (\button~input_o\ & ((\state_reg.wait_button3~q\) # (\state_reg.sleep~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button~input_o\,
	datac => \state_reg.wait_button3~q\,
	datad => \state_reg.sleep~q\,
	combout => \state_next.wait_button3~0_combout\);

-- Location: FF_X17_Y72_N19
\state_reg.wait_button3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state_next.wait_button3~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_reg.wait_button3~q\);

-- Location: LCCOMB_X17_Y72_N24
\state_next.wait_button2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \state_next.wait_button2~0_combout\ = (\button~input_o\ & ((\state_reg.wait_button2~q\) # (\state_reg.inc_sleep~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button~input_o\,
	datac => \state_reg.wait_button2~q\,
	datad => \state_reg.inc_sleep~q\,
	combout => \state_next.wait_button2~0_combout\);

-- Location: FF_X17_Y72_N25
\state_reg.wait_button2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state_next.wait_button2~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_reg.wait_button2~q\);

-- Location: LCCOMB_X17_Y72_N20
\Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (!\button~input_o\ & ((\state_reg.wait_button3~q\) # (\state_reg.wait_button2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button~input_o\,
	datab => \state_reg.wait_button3~q\,
	datad => \state_reg.wait_button2~q\,
	combout => \Selector0~1_combout\);

-- Location: LCCOMB_X17_Y72_N0
\Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~2_combout\ = (!\Selector0~0_combout\ & (!\Selector0~1_combout\ & ((\load~input_o\) # (!\state_reg.load_time~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_reg.load_time~q\,
	datab => \load~input_o\,
	datac => \Selector0~0_combout\,
	datad => \Selector0~1_combout\,
	combout => \Selector0~2_combout\);

-- Location: FF_X17_Y72_N1
\state_reg.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector0~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_reg.idle~q\);

-- Location: LCCOMB_X17_Y72_N12
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\enable~input_o\ & (!\load~input_o\ & !\state_reg.idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datac => \load~input_o\,
	datad => \state_reg.idle~q\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X16_Y72_N16
\Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (\Selector1~0_combout\) # ((\Selector3~1_combout\ & ((!\Selector3~6_combout\) # (!\process_0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~1_combout\,
	datab => \process_0~4_combout\,
	datac => \Selector3~6_combout\,
	datad => \Selector1~0_combout\,
	combout => \Selector1~1_combout\);

-- Location: FF_X16_Y72_N17
\state_reg.on_alarm\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector1~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_reg.on_alarm~q\);

-- Location: LCCOMB_X16_Y72_N30
\Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (\enable~input_o\ & \state_reg.on_alarm~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datad => \state_reg.on_alarm~q\,
	combout => \Selector3~1_combout\);

-- Location: LCCOMB_X16_Y72_N10
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (!\button~input_o\ & (\state_reg.sleep~q\ & (\Equal4~1_combout\ & \Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button~input_o\,
	datab => \state_reg.sleep~q\,
	datac => \Equal4~1_combout\,
	datad => \Equal4~0_combout\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X16_Y72_N0
\Selector3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~7_combout\ = (\process_0~4_combout\ & ((\Selector3~0_combout\) # ((\Selector3~6_combout\ & \Selector3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~6_combout\,
	datab => \process_0~4_combout\,
	datac => \Selector3~1_combout\,
	datad => \Selector3~0_combout\,
	combout => \Selector3~7_combout\);

-- Location: LCCOMB_X16_Y72_N28
\Selector3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~8_combout\ = (\Selector3~7_combout\) # ((\state_reg.alarm~q\ & !\button~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_reg.alarm~q\,
	datac => \button~input_o\,
	datad => \Selector3~7_combout\,
	combout => \Selector3~8_combout\);

-- Location: FF_X16_Y72_N29
buzzer_buf_reg : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector3~8_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buzzer_buf_reg~q\);

ww_buzzer <= \buzzer~output_o\;
END structure;


