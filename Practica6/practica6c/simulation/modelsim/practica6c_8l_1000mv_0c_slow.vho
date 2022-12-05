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

-- DATE "12/04/2022 18:44:19"

-- 
-- Device: Altera EP4CE6E22C8L Package TQFP144
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

ENTITY 	practica6c IS
    PORT (
	CLOCK : IN std_logic;
	RST : IN std_logic;
	mode : IN std_logic;
	SEM1 : BUFFER std_logic_vector(2 DOWNTO 0);
	SEM2 : BUFFER std_logic_vector(2 DOWNTO 0)
	);
END practica6c;

-- Design Ports Information
-- mode	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEM1[0]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEM1[1]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEM1[2]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEM2[0]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEM2[1]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEM2[2]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF practica6c IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_mode : std_logic;
SIGNAL ww_SEM1 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_SEM2 : std_logic_vector(2 DOWNTO 0);
SIGNAL \reloj|clkout~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Mux2~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mode~input_o\ : std_logic;
SIGNAL \SEM1[0]~output_o\ : std_logic;
SIGNAL \SEM1[1]~output_o\ : std_logic;
SIGNAL \SEM1[2]~output_o\ : std_logic;
SIGNAL \SEM2[0]~output_o\ : std_logic;
SIGNAL \SEM2[1]~output_o\ : std_logic;
SIGNAL \SEM2[2]~output_o\ : std_logic;
SIGNAL \CLOCK~input_o\ : std_logic;
SIGNAL \CLOCK~inputclkctrl_outclk\ : std_logic;
SIGNAL \reloj|Add0~0_combout\ : std_logic;
SIGNAL \reloj|contador~12_combout\ : std_logic;
SIGNAL \reloj|Add0~1\ : std_logic;
SIGNAL \reloj|Add0~2_combout\ : std_logic;
SIGNAL \reloj|Add0~3\ : std_logic;
SIGNAL \reloj|Add0~4_combout\ : std_logic;
SIGNAL \reloj|Add0~5\ : std_logic;
SIGNAL \reloj|Add0~6_combout\ : std_logic;
SIGNAL \reloj|Add0~7\ : std_logic;
SIGNAL \reloj|Add0~8_combout\ : std_logic;
SIGNAL \reloj|Equal0~6_combout\ : std_logic;
SIGNAL \reloj|Add0~9\ : std_logic;
SIGNAL \reloj|Add0~10_combout\ : std_logic;
SIGNAL \reloj|Add0~11\ : std_logic;
SIGNAL \reloj|Add0~12_combout\ : std_logic;
SIGNAL \reloj|Add0~13\ : std_logic;
SIGNAL \reloj|Add0~14_combout\ : std_logic;
SIGNAL \reloj|contador~8_combout\ : std_logic;
SIGNAL \reloj|Add0~15\ : std_logic;
SIGNAL \reloj|Add0~16_combout\ : std_logic;
SIGNAL \reloj|Add0~17\ : std_logic;
SIGNAL \reloj|Add0~18_combout\ : std_logic;
SIGNAL \reloj|Add0~19\ : std_logic;
SIGNAL \reloj|Add0~20_combout\ : std_logic;
SIGNAL \reloj|Add0~21\ : std_logic;
SIGNAL \reloj|Add0~22_combout\ : std_logic;
SIGNAL \reloj|Add0~23\ : std_logic;
SIGNAL \reloj|Add0~24_combout\ : std_logic;
SIGNAL \reloj|contador~6_combout\ : std_logic;
SIGNAL \reloj|Add0~25\ : std_logic;
SIGNAL \reloj|Add0~26_combout\ : std_logic;
SIGNAL \reloj|contador~5_combout\ : std_logic;
SIGNAL \reloj|Add0~27\ : std_logic;
SIGNAL \reloj|Add0~28_combout\ : std_logic;
SIGNAL \reloj|contador~4_combout\ : std_logic;
SIGNAL \reloj|Add0~29\ : std_logic;
SIGNAL \reloj|Add0~30_combout\ : std_logic;
SIGNAL \reloj|contador~9_combout\ : std_logic;
SIGNAL \reloj|Equal0~5_combout\ : std_logic;
SIGNAL \reloj|Equal0~7_combout\ : std_logic;
SIGNAL \reloj|Add0~31\ : std_logic;
SIGNAL \reloj|Add0~32_combout\ : std_logic;
SIGNAL \reloj|Add0~33\ : std_logic;
SIGNAL \reloj|Add0~34_combout\ : std_logic;
SIGNAL \reloj|contador~7_combout\ : std_logic;
SIGNAL \reloj|Add0~35\ : std_logic;
SIGNAL \reloj|Add0~36_combout\ : std_logic;
SIGNAL \reloj|Add0~37\ : std_logic;
SIGNAL \reloj|Add0~38_combout\ : std_logic;
SIGNAL \reloj|contador~2_combout\ : std_logic;
SIGNAL \reloj|Add0~39\ : std_logic;
SIGNAL \reloj|Add0~40_combout\ : std_logic;
SIGNAL \reloj|contador~1_combout\ : std_logic;
SIGNAL \reloj|Add0~41\ : std_logic;
SIGNAL \reloj|Add0~42_combout\ : std_logic;
SIGNAL \reloj|contador~0_combout\ : std_logic;
SIGNAL \reloj|Add0~43\ : std_logic;
SIGNAL \reloj|Add0~44_combout\ : std_logic;
SIGNAL \reloj|contador~3_combout\ : std_logic;
SIGNAL \reloj|Equal0~1_combout\ : std_logic;
SIGNAL \reloj|Equal0~2_combout\ : std_logic;
SIGNAL \reloj|Add0~53\ : std_logic;
SIGNAL \reloj|Add0~54_combout\ : std_logic;
SIGNAL \reloj|Equal0~3_combout\ : std_logic;
SIGNAL \reloj|Equal0~0_combout\ : std_logic;
SIGNAL \reloj|Equal0~4_combout\ : std_logic;
SIGNAL \reloj|Equal0~8_combout\ : std_logic;
SIGNAL \reloj|Add0~45\ : std_logic;
SIGNAL \reloj|Add0~46_combout\ : std_logic;
SIGNAL \reloj|contador~10_combout\ : std_logic;
SIGNAL \reloj|Add0~47\ : std_logic;
SIGNAL \reloj|Add0~48_combout\ : std_logic;
SIGNAL \reloj|Add0~49\ : std_logic;
SIGNAL \reloj|Add0~50_combout\ : std_logic;
SIGNAL \reloj|contador~11_combout\ : std_logic;
SIGNAL \reloj|Add0~51\ : std_logic;
SIGNAL \reloj|Add0~52_combout\ : std_logic;
SIGNAL \reloj|clkout~0_combout\ : std_logic;
SIGNAL \reloj|clkout~1_combout\ : std_logic;
SIGNAL \reloj|clkout~2_combout\ : std_logic;
SIGNAL \reloj|clkout~3_combout\ : std_logic;
SIGNAL \reloj|clkout~4_combout\ : std_logic;
SIGNAL \reloj|clkout~5_combout\ : std_logic;
SIGNAL \reloj|clkout~6_combout\ : std_logic;
SIGNAL \reloj|clkout~q\ : std_logic;
SIGNAL \reloj|clkout~clkctrl_outclk\ : std_logic;
SIGNAL \contador|contador[0]~8_combout\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \contador|contador[5]~19\ : std_logic;
SIGNAL \contador|contador[6]~20_combout\ : std_logic;
SIGNAL \contador|process_0~0_combout\ : std_logic;
SIGNAL \contador|contador[6]~21\ : std_logic;
SIGNAL \contador|contador[7]~22_combout\ : std_logic;
SIGNAL \contador|process_0~1_combout\ : std_logic;
SIGNAL \contador|process_0~2_combout\ : std_logic;
SIGNAL \contador|contador[0]~9\ : std_logic;
SIGNAL \contador|contador[1]~10_combout\ : std_logic;
SIGNAL \contador|contador[1]~11\ : std_logic;
SIGNAL \contador|contador[2]~12_combout\ : std_logic;
SIGNAL \contador|contador[2]~13\ : std_logic;
SIGNAL \contador|contador[3]~14_combout\ : std_logic;
SIGNAL \contador|contador[3]~15\ : std_logic;
SIGNAL \contador|contador[4]~16_combout\ : std_logic;
SIGNAL \contador|contador[4]~17\ : std_logic;
SIGNAL \contador|contador[5]~18_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~0clkctrl_outclk\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \SEM1[0]$latch~combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \SEM1[1]$latch~combout\ : std_logic;
SIGNAL \SEM1[2]$latch~combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \SEM2[0]$latch~combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \SEM2[1]$latch~combout\ : std_logic;
SIGNAL \reloj|contador\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \contador|contador\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_CLOCK <= CLOCK;
ww_RST <= RST;
ww_mode <= mode;
SEM1 <= ww_SEM1;
SEM2 <= ww_SEM2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reloj|clkout~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reloj|clkout~q\);

\Mux2~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Mux2~0_combout\);

\CLOCK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK~input_o\);

-- Location: IOOBUF_X34_Y9_N2
\SEM1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEM1[0]$latch~combout\,
	devoe => ww_devoe,
	o => \SEM1[0]~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\SEM1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEM1[1]$latch~combout\,
	devoe => ww_devoe,
	o => \SEM1[1]~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\SEM1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEM1[2]$latch~combout\,
	devoe => ww_devoe,
	o => \SEM1[2]~output_o\);

-- Location: IOOBUF_X34_Y4_N23
\SEM2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEM2[0]$latch~combout\,
	devoe => ww_devoe,
	o => \SEM2[0]~output_o\);

-- Location: IOOBUF_X34_Y2_N16
\SEM2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEM2[1]$latch~combout\,
	devoe => ww_devoe,
	o => \SEM2[1]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\SEM2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEM1[2]$latch~combout\,
	devoe => ww_devoe,
	o => \SEM2[2]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\CLOCK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK,
	o => \CLOCK~input_o\);

-- Location: CLKCTRL_G2
\CLOCK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK~inputclkctrl_outclk\);

-- Location: LCCOMB_X13_Y10_N4
\reloj|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reloj|Add0~0_combout\ = \reloj|contador\(0) $ (VCC)
-- \reloj|Add0~1\ = CARRY(\reloj|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reloj|contador\(0),
	datad => VCC,
	combout => \reloj|Add0~0_combout\,
	cout => \reloj|Add0~1\);

-- Location: LCCOMB_X13_Y10_N2
\reloj|contador~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \reloj|contador~12_combout\ = (\reloj|Add0~0_combout\ & !\reloj|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reloj|Add0~0_combout\,
	datad => \reloj|Equal0~8_combout\,
	combout => \reloj|contador~12_combout\);

-- Location: FF_X13_Y10_N3
\reloj|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \reloj|contador~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reloj|contador\(0));

-- Location: LCCOMB_X13_Y10_N6
\reloj|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \reloj|Add0~2_combout\ = (\reloj|contador\(1) & (!\reloj|Add0~1\)) # (!\reloj|contador\(1) & ((\reloj|Add0~1\) # (GND)))
-- \reloj|Add0~3\ = CARRY((!\reloj|Add0~1\) # (!\reloj|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reloj|contador\(1),
	datad => VCC,
	cin => \reloj|Add0~1\,
	combout => \reloj|Add0~2_combout\,
	cout => \reloj|Add0~3\);

-- Location: FF_X13_Y10_N7
\reloj|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \reloj|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reloj|contador\(1));

-- Location: LCCOMB_X13_Y10_N8
\reloj|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \reloj|Add0~4_combout\ = (\reloj|contador\(2) & (\reloj|Add0~3\ $ (GND))) # (!\reloj|contador\(2) & (!\reloj|Add0~3\ & VCC))
-- \reloj|Add0~5\ = CARRY((\reloj|contador\(2) & !\reloj|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \reloj|contador\(2),
	datad => VCC,
	cin => \reloj|Add0~3\,
	combout => \reloj|Add0~4_combout\,
	cout => \reloj|Add0~5\);

-- Location: FF_X13_Y10_N9
\reloj|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \reloj|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reloj|contador\(2));

-- Location: LCCOMB_X13_Y10_N10
\reloj|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \reloj|Add0~6_combout\ = (\reloj|contador\(3) & (!\reloj|Add0~5\)) # (!\reloj|contador\(3) & ((\reloj|Add0~5\) # (GND)))
-- \reloj|Add0~7\ = CARRY((!\reloj|Add0~5\) # (!\reloj|contador\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reloj|contador\(3),
	datad => VCC,
	cin => \reloj|Add0~5\,
	combout => \reloj|Add0~6_combout\,
	cout => \reloj|Add0~7\);

-- Location: FF_X13_Y10_N11
\reloj|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \reloj|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reloj|contador\(3));

-- Location: LCCOMB_X13_Y10_N12
\reloj|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \reloj|Add0~8_combout\ = (\reloj|contador\(4) & (\reloj|Add0~7\ $ (GND))) # (!\reloj|contador\(4) & (!\reloj|Add0~7\ & VCC))
-- \reloj|Add0~9\ = CARRY((\reloj|contador\(4) & !\reloj|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reloj|contador\(4),
	datad => VCC,
	cin => \reloj|Add0~7\,
	combout => \reloj|Add0~8_combout\,
	cout => \reloj|Add0~9\);

-- Location: FF_X13_Y10_N13
\reloj|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \reloj|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reloj|contador\(4));

-- Location: LCCOMB_X12_Y10_N30
\reloj|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \reloj|Equal0~6_combout\ = (!\reloj|contador\(1) & (!\reloj|contador\(4) & (!\reloj|contador\(3) & !\reloj|contador\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reloj|contador\(1),
	datab => \reloj|contador\(4),
	datac => \reloj|contador\(3),
	datad => \reloj|contador\(2),
	combout => \reloj|Equal0~6_combout\);

-- Location: LCCOMB_X13_Y10_N14
\reloj|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \reloj|Add0~10_combout\ = (\reloj|contador\(5) & (!\reloj|Add0~9\)) # (!\reloj|contador\(5) & ((\reloj|Add0~9\) # (GND)))
-- \reloj|Add0~11\ = CARRY((!\reloj|Add0~9\) # (!\reloj|contador\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \reloj|contador\(5),
	datad => VCC,
	cin => \reloj|Add0~9\,
	combout => \reloj|Add0~10_combout\,
	cout => \reloj|Add0~11\);

-- Location: FF_X13_Y10_N15
\reloj|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \reloj|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reloj|contador\(5));

-- Location: LCCOMB_X13_Y10_N16
\reloj|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \reloj|Add0~12_combout\ = (\reloj|contador\(6) & (\reloj|Add0~11\ $ (GND))) # (!\reloj|contador\(6) & (!\reloj|Add0~11\ & VCC))
-- \reloj|Add0~13\ = CARRY((\reloj|contador\(6) & !\reloj|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \reloj|contador\(6),
	datad => VCC,
	cin => \reloj|Add0~11\,
	combout => \reloj|Add0~12_combout\,
	cout => \reloj|Add0~13\);

-- Location: FF_X13_Y10_N17
\reloj|contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \reloj|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reloj|contador\(6));

-- Location: LCCOMB_X13_Y10_N18
\reloj|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \reloj|Add0~14_combout\ = (\reloj|contador\(7) & (!\reloj|Add0~13\)) # (!\reloj|contador\(7) & ((\reloj|Add0~13\) # (GND)))
-- \reloj|Add0~15\ = CARRY((!\reloj|Add0~13\) # (!\reloj|contador\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \reloj|contador\(7),
	datad => VCC,
	cin => \reloj|Add0~13\,
	combout => \reloj|Add0~14_combout\,
	cout => \reloj|Add0~15\);

-- Location: LCCOMB_X13_Y10_N0
\reloj|contador~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \reloj|contador~8_combout\ = (\reloj|Add0~14_combout\ & !\reloj|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reloj|Add0~14_combout\,
	datad => \reloj|Equal0~8_combout\,
	combout => \reloj|contador~8_combout\);

-- Location: FF_X13_Y10_N1
\reloj|contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \reloj|contador~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reloj|contador\(7));

-- Location: LCCOMB_X13_Y10_N20
\reloj|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \reloj|Add0~16_combout\ = (\reloj|contador\(8) & (\reloj|Add0~15\ $ (GND))) # (!\reloj|contador\(8) & (!\reloj|Add0~15\ & VCC))
-- \reloj|Add0~17\ = CARRY((\reloj|contador\(8) & !\reloj|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \reloj|contador\(8),
	datad => VCC,
	cin => \reloj|Add0~15\,
	combout => \reloj|Add0~16_combout\,
	cout => \reloj|Add0~17\);

-- Location: FF_X13_Y10_N21
\reloj|contador[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \reloj|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reloj|contador\(8));

-- Location: LCCOMB_X13_Y10_N22
\reloj|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \reloj|Add0~18_combout\ = (\reloj|contador\(9) & (!\reloj|Add0~17\)) # (!\reloj|contador\(9) & ((\reloj|Add0~17\) # (GND)))
-- \reloj|Add0~19\ = CARRY((!\reloj|Add0~17\) # (!\reloj|contador\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reloj|contador\(9),
	datad => VCC,
	cin => \reloj|Add0~17\,
	combout => \reloj|Add0~18_combout\,
	cout => \reloj|Add0~19\);

-- Location: FF_X13_Y10_N23
\reloj|contador[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \reloj|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reloj|contador\(9));

-- Location: LCCOMB_X13_Y10_N24
\reloj|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \reloj|Add0~20_combout\ = (\reloj|contador\(10) & (\reloj|Add0~19\ $ (GND))) # (!\reloj|contador\(10) & (!\reloj|Add0~19\ & VCC))
-- \reloj|Add0~21\ = CARRY((\reloj|contador\(10) & !\reloj|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \reloj|contador\(10),
	datad => VCC,
	cin => \reloj|Add0~19\,
	combout => \reloj|Add0~20_combout\,
	cout => \reloj|Add0~21\);

-- Location: FF_X13_Y10_N25
\reloj|contador[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \reloj|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reloj|contador\(10));

-- Location: LCCOMB_X13_Y10_N26
\reloj|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \reloj|Add0~22_combout\ = (\reloj|contador\(11) & (!\reloj|Add0~21\)) # (!\reloj|contador\(11) & ((\reloj|Add0~21\) # (GND)))
-- \reloj|Add0~23\ = CARRY((!\reloj|Add0~21\) # (!\reloj|contador\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reloj|contador\(11),
	datad => VCC,
	cin => \reloj|Add0~21\,
	combout => \reloj|Add0~22_combout\,
	cout => \reloj|Add0~23\);

-- Location: FF_X13_Y10_N27
\reloj|contador[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \reloj|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reloj|contador\(11));

-- Location: LCCOMB_X13_Y10_N28
\reloj|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \reloj|Add0~24_combout\ = (\reloj|contador\(12) & (\reloj|Add0~23\ $ (GND))) # (!\reloj|contador\(12) & (!\reloj|Add0~23\ & VCC))
-- \reloj|Add0~25\ = CARRY((\reloj|contador\(12) & !\reloj|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reloj|contador\(12),
	datad => VCC,
	cin => \reloj|Add0~23\,
	combout => \reloj|Add0~24_combout\,
	cout => \reloj|Add0~25\);

-- Location: LCCOMB_X12_Y9_N0
\reloj|contador~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \reloj|contador~6_combout\ = (!\reloj|Equal0~8_combout\ & \reloj|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reloj|Equal0~8_combout\,
	datad => \reloj|Add0~24_combout\,
	combout => \reloj|contador~6_combout\);

-- Location: FF_X12_Y9_N1
\reloj|contador[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \reloj|contador~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reloj|contador\(12));

-- Location: LCCOMB_X13_Y10_N30
\reloj|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \reloj|Add0~26_combout\ = (\reloj|contador\(13) & (!\reloj|Add0~25\)) # (!\reloj|contador\(13) & ((\reloj|Add0~25\) # (GND)))
-- \reloj|Add0~27\ = CARRY((!\reloj|Add0~25\) # (!\reloj|contador\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reloj|contador\(13),
	datad => VCC,
	cin => \reloj|Add0~25\,
	combout => \reloj|Add0~26_combout\,
	cout => \reloj|Add0~27\);

-- Location: LCCOMB_X12_Y9_N10
\reloj|contador~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \reloj|contador~5_combout\ = (\reloj|Add0~26_combout\ & !\reloj|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reloj|Add0~26_combout\,
	datad => \reloj|Equal0~8_combout\,
	combout => \reloj|contador~5_combout\);

-- Location: FF_X12_Y9_N11
\reloj|contador[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \reloj|contador~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reloj|contador\(13));

-- Location: LCCOMB_X13_Y9_N0
\reloj|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \reloj|Add0~28_combout\ = (\reloj|contador\(14) & (\reloj|Add0~27\ $ (GND))) # (!\reloj|contador\(14) & (!\reloj|Add0~27\ & VCC))
-- \reloj|Add0~29\ = CARRY((\reloj|contador\(14) & !\reloj|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reloj|contador\(14),
	datad => VCC,
	cin => \reloj|Add0~27\,
	combout => \reloj|Add0~28_combout\,
	cout => \reloj|Add0~29\);

-- Location: LCCOMB_X12_Y9_N16
\reloj|contador~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \reloj|contador~4_combout\ = (!\reloj|Equal0~8_combout\ & \reloj|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reloj|Equal0~8_combout\,
	datac => \reloj|Add0~28_combout\,
	combout => \reloj|contador~4_combout\);

-- Location: FF_X12_Y9_N17
\reloj|contador[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \reloj|contador~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reloj|contador\(14));

-- Location: LCCOMB_X13_Y9_N2
\reloj|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \reloj|Add0~30_combout\ = (\reloj|contador\(15) & (!\reloj|Add0~29\)) # (!\reloj|contador\(15) & ((\reloj|Add0~29\) # (GND)))
-- \reloj|Add0~31\ = CARRY((!\reloj|Add0~29\) # (!\reloj|contador\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \reloj|contador\(15),
	datad => VCC,
	cin => \reloj|Add0~29\,
	combout => \reloj|Add0~30_combout\,
	cout => \reloj|Add0~31\);

-- Location: LCCOMB_X12_Y9_N6
\reloj|contador~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \reloj|contador~9_combout\ = (!\reloj|Equal0~8_combout\ & \reloj|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reloj|Equal0~8_combout\,
	datad => \reloj|Add0~30_combout\,
	combout => \reloj|contador~9_combout\);

-- Location: FF_X12_Y9_N7
\reloj|contador[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \reloj|contador~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reloj|contador\(15));

-- Location: LCCOMB_X12_Y9_N4
\reloj|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \reloj|Equal0~5_combout\ = (\reloj|contador\(15) & (!\reloj|contador\(11) & (\reloj|contador\(7) & !\reloj|contador\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reloj|contador\(15),
	datab => \reloj|contador\(11),
	datac => \reloj|contador\(7),
	datad => \reloj|contador\(5),
	combout => \reloj|Equal0~5_combout\);

-- Location: LCCOMB_X14_Y9_N22
\reloj|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \reloj|Equal0~7_combout\ = (\reloj|contador\(23) & (!\reloj|contador\(24) & (!\reloj|contador\(0) & \reloj|contador\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reloj|contador\(23),
	datab => \reloj|contador\(24),
	datac => \reloj|contador\(0),
	datad => \reloj|contador\(25),
	combout => \reloj|Equal0~7_combout\);

-- Location: LCCOMB_X13_Y9_N4
\reloj|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \reloj|Add0~32_combout\ = (\reloj|contador\(16) & (\reloj|Add0~31\ $ (GND))) # (!\reloj|contador\(16) & (!\reloj|Add0~31\ & VCC))
-- \reloj|Add0~33\ = CARRY((\reloj|contador\(16) & !\reloj|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \reloj|contador\(16),
	datad => VCC,
	cin => \reloj|Add0~31\,
	combout => \reloj|Add0~32_combout\,
	cout => \reloj|Add0~33\);

-- Location: FF_X13_Y9_N5
\reloj|contador[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \reloj|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reloj|contador\(16));

-- Location: LCCOMB_X13_Y9_N6
\reloj|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \reloj|Add0~34_combout\ = (\reloj|contador\(17) & (!\reloj|Add0~33\)) # (!\reloj|contador\(17) & ((\reloj|Add0~33\) # (GND)))
-- \reloj|Add0~35\ = CARRY((!\reloj|Add0~33\) # (!\reloj|contador\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \reloj|contador\(17),
	datad => VCC,
	cin => \reloj|Add0~33\,
	combout => \reloj|Add0~34_combout\,
	cout => \reloj|Add0~35\);

-- Location: LCCOMB_X14_Y9_N28
\reloj|contador~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \reloj|contador~7_combout\ = (\reloj|Add0~34_combout\ & !\reloj|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reloj|Add0~34_combout\,
	datad => \reloj|Equal0~8_combout\,
	combout => \reloj|contador~7_combout\);

-- Location: FF_X14_Y9_N29
\reloj|contador[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \reloj|contador~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reloj|contador\(17));

-- Location: LCCOMB_X13_Y9_N8
\reloj|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \reloj|Add0~36_combout\ = (\reloj|contador\(18) & (\reloj|Add0~35\ $ (GND))) # (!\reloj|contador\(18) & (!\reloj|Add0~35\ & VCC))
-- \reloj|Add0~37\ = CARRY((\reloj|contador\(18) & !\reloj|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \reloj|contador\(18),
	datad => VCC,
	cin => \reloj|Add0~35\,
	combout => \reloj|Add0~36_combout\,
	cout => \reloj|Add0~37\);

-- Location: FF_X13_Y9_N9
\reloj|contador[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \reloj|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reloj|contador\(18));

-- Location: LCCOMB_X13_Y9_N10
\reloj|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \reloj|Add0~38_combout\ = (\reloj|contador\(19) & (!\reloj|Add0~37\)) # (!\reloj|contador\(19) & ((\reloj|Add0~37\) # (GND)))
-- \reloj|Add0~39\ = CARRY((!\reloj|Add0~37\) # (!\reloj|contador\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \reloj|contador\(19),
	datad => VCC,
	cin => \reloj|Add0~37\,
	combout => \reloj|Add0~38_combout\,
	cout => \reloj|Add0~39\);

-- Location: LCCOMB_X12_Y9_N30
\reloj|contador~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \reloj|contador~2_combout\ = (!\reloj|Equal0~8_combout\ & \reloj|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reloj|Equal0~8_combout\,
	datac => \reloj|Add0~38_combout\,
	combout => \reloj|contador~2_combout\);

-- Location: FF_X12_Y9_N31
\reloj|contador[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \reloj|contador~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reloj|contador\(19));

-- Location: LCCOMB_X13_Y9_N12
\reloj|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \reloj|Add0~40_combout\ = (\reloj|contador\(20) & (\reloj|Add0~39\ $ (GND))) # (!\reloj|contador\(20) & (!\reloj|Add0~39\ & VCC))
-- \reloj|Add0~41\ = CARRY((\reloj|contador\(20) & !\reloj|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \reloj|contador\(20),
	datad => VCC,
	cin => \reloj|Add0~39\,
	combout => \reloj|Add0~40_combout\,
	cout => \reloj|Add0~41\);

-- Location: LCCOMB_X12_Y9_N28
\reloj|contador~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \reloj|contador~1_combout\ = (!\reloj|Equal0~8_combout\ & \reloj|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reloj|Equal0~8_combout\,
	datac => \reloj|Add0~40_combout\,
	combout => \reloj|contador~1_combout\);

-- Location: FF_X12_Y9_N29
\reloj|contador[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \reloj|contador~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reloj|contador\(20));

-- Location: LCCOMB_X13_Y9_N14
\reloj|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \reloj|Add0~42_combout\ = (\reloj|contador\(21) & (!\reloj|Add0~41\)) # (!\reloj|contador\(21) & ((\reloj|Add0~41\) # (GND)))
-- \reloj|Add0~43\ = CARRY((!\reloj|Add0~41\) # (!\reloj|contador\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \reloj|contador\(21),
	datad => VCC,
	cin => \reloj|Add0~41\,
	combout => \reloj|Add0~42_combout\,
	cout => \reloj|Add0~43\);

-- Location: LCCOMB_X13_Y9_N28
\reloj|contador~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reloj|contador~0_combout\ = (\reloj|Add0~42_combout\ & !\reloj|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reloj|Add0~42_combout\,
	datad => \reloj|Equal0~8_combout\,
	combout => \reloj|contador~0_combout\);

-- Location: FF_X13_Y9_N29
\reloj|contador[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \reloj|contador~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reloj|contador\(21));

-- Location: LCCOMB_X13_Y9_N16
\reloj|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \reloj|Add0~44_combout\ = (\reloj|contador\(22) & (\reloj|Add0~43\ $ (GND))) # (!\reloj|contador\(22) & (!\reloj|Add0~43\ & VCC))
-- \reloj|Add0~45\ = CARRY((\reloj|contador\(22) & !\reloj|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reloj|contador\(22),
	datad => VCC,
	cin => \reloj|Add0~43\,
	combout => \reloj|Add0~44_combout\,
	cout => \reloj|Add0~45\);

-- Location: LCCOMB_X12_Y9_N8
\reloj|contador~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \reloj|contador~3_combout\ = (!\reloj|Equal0~8_combout\ & \reloj|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reloj|Equal0~8_combout\,
	datad => \reloj|Add0~44_combout\,
	combout => \reloj|contador~3_combout\);

-- Location: FF_X12_Y9_N9
\reloj|contador[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \reloj|contador~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reloj|contador\(22));

-- Location: LCCOMB_X12_Y9_N26
\reloj|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \reloj|Equal0~1_combout\ = (\reloj|contador\(19) & (\reloj|contador\(20) & (\reloj|contador\(22) & \reloj|contador\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reloj|contador\(19),
	datab => \reloj|contador\(20),
	datac => \reloj|contador\(22),
	datad => \reloj|contador\(21),
	combout => \reloj|Equal0~1_combout\);

-- Location: LCCOMB_X12_Y9_N14
\reloj|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \reloj|Equal0~2_combout\ = (\reloj|contador\(13) & (\reloj|contador\(14) & (!\reloj|contador\(18) & \reloj|contador\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reloj|contador\(13),
	datab => \reloj|contador\(14),
	datac => \reloj|contador\(18),
	datad => \reloj|contador\(12),
	combout => \reloj|Equal0~2_combout\);

-- Location: LCCOMB_X13_Y9_N24
\reloj|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \reloj|Add0~52_combout\ = (\reloj|contador\(26) & (\reloj|Add0~51\ $ (GND))) # (!\reloj|contador\(26) & (!\reloj|Add0~51\ & VCC))
-- \reloj|Add0~53\ = CARRY((\reloj|contador\(26) & !\reloj|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \reloj|contador\(26),
	datad => VCC,
	cin => \reloj|Add0~51\,
	combout => \reloj|Add0~52_combout\,
	cout => \reloj|Add0~53\);

-- Location: LCCOMB_X13_Y9_N26
\reloj|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \reloj|Add0~54_combout\ = \reloj|contador\(27) $ (\reloj|Add0~53\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reloj|contador\(27),
	cin => \reloj|Add0~53\,
	combout => \reloj|Add0~54_combout\);

-- Location: FF_X13_Y9_N27
\reloj|contador[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \reloj|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reloj|contador\(27));

-- Location: LCCOMB_X14_Y9_N26
\reloj|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \reloj|Equal0~3_combout\ = (!\reloj|contador\(26) & (!\reloj|contador\(16) & (!\reloj|contador\(27) & \reloj|contador\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reloj|contador\(26),
	datab => \reloj|contador\(16),
	datac => \reloj|contador\(27),
	datad => \reloj|contador\(17),
	combout => \reloj|Equal0~3_combout\);

-- Location: LCCOMB_X12_Y10_N8
\reloj|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reloj|Equal0~0_combout\ = (!\reloj|contador\(8) & (!\reloj|contador\(10) & (!\reloj|contador\(6) & !\reloj|contador\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reloj|contador\(8),
	datab => \reloj|contador\(10),
	datac => \reloj|contador\(6),
	datad => \reloj|contador\(9),
	combout => \reloj|Equal0~0_combout\);

-- Location: LCCOMB_X12_Y9_N12
\reloj|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \reloj|Equal0~4_combout\ = (\reloj|Equal0~1_combout\ & (\reloj|Equal0~2_combout\ & (\reloj|Equal0~3_combout\ & \reloj|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reloj|Equal0~1_combout\,
	datab => \reloj|Equal0~2_combout\,
	datac => \reloj|Equal0~3_combout\,
	datad => \reloj|Equal0~0_combout\,
	combout => \reloj|Equal0~4_combout\);

-- Location: LCCOMB_X12_Y9_N22
\reloj|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \reloj|Equal0~8_combout\ = (\reloj|Equal0~6_combout\ & (\reloj|Equal0~5_combout\ & (\reloj|Equal0~7_combout\ & \reloj|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reloj|Equal0~6_combout\,
	datab => \reloj|Equal0~5_combout\,
	datac => \reloj|Equal0~7_combout\,
	datad => \reloj|Equal0~4_combout\,
	combout => \reloj|Equal0~8_combout\);

-- Location: LCCOMB_X13_Y9_N18
\reloj|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \reloj|Add0~46_combout\ = (\reloj|contador\(23) & (!\reloj|Add0~45\)) # (!\reloj|contador\(23) & ((\reloj|Add0~45\) # (GND)))
-- \reloj|Add0~47\ = CARRY((!\reloj|Add0~45\) # (!\reloj|contador\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \reloj|contador\(23),
	datad => VCC,
	cin => \reloj|Add0~45\,
	combout => \reloj|Add0~46_combout\,
	cout => \reloj|Add0~47\);

-- Location: LCCOMB_X14_Y9_N12
\reloj|contador~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \reloj|contador~10_combout\ = (!\reloj|Equal0~8_combout\ & \reloj|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reloj|Equal0~8_combout\,
	datad => \reloj|Add0~46_combout\,
	combout => \reloj|contador~10_combout\);

-- Location: FF_X14_Y9_N13
\reloj|contador[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \reloj|contador~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reloj|contador\(23));

-- Location: LCCOMB_X13_Y9_N20
\reloj|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \reloj|Add0~48_combout\ = (\reloj|contador\(24) & (\reloj|Add0~47\ $ (GND))) # (!\reloj|contador\(24) & (!\reloj|Add0~47\ & VCC))
-- \reloj|Add0~49\ = CARRY((\reloj|contador\(24) & !\reloj|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \reloj|contador\(24),
	datad => VCC,
	cin => \reloj|Add0~47\,
	combout => \reloj|Add0~48_combout\,
	cout => \reloj|Add0~49\);

-- Location: FF_X13_Y9_N21
\reloj|contador[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \reloj|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reloj|contador\(24));

-- Location: LCCOMB_X13_Y9_N22
\reloj|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \reloj|Add0~50_combout\ = (\reloj|contador\(25) & (!\reloj|Add0~49\)) # (!\reloj|contador\(25) & ((\reloj|Add0~49\) # (GND)))
-- \reloj|Add0~51\ = CARRY((!\reloj|Add0~49\) # (!\reloj|contador\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reloj|contador\(25),
	datad => VCC,
	cin => \reloj|Add0~49\,
	combout => \reloj|Add0~50_combout\,
	cout => \reloj|Add0~51\);

-- Location: LCCOMB_X13_Y9_N30
\reloj|contador~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \reloj|contador~11_combout\ = (\reloj|Add0~50_combout\ & !\reloj|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reloj|Add0~50_combout\,
	datad => \reloj|Equal0~8_combout\,
	combout => \reloj|contador~11_combout\);

-- Location: FF_X13_Y9_N31
\reloj|contador[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \reloj|contador~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reloj|contador\(25));

-- Location: FF_X13_Y9_N25
\reloj|contador[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \reloj|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reloj|contador\(26));

-- Location: LCCOMB_X14_Y9_N24
\reloj|clkout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reloj|clkout~0_combout\ = (!\reloj|contador\(26) & (!\reloj|contador\(27) & !\reloj|contador\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reloj|contador\(26),
	datac => \reloj|contador\(27),
	datad => \reloj|contador\(25),
	combout => \reloj|clkout~0_combout\);

-- Location: LCCOMB_X16_Y9_N16
\reloj|clkout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \reloj|clkout~1_combout\ = (\reloj|contador\(24) & (\reloj|clkout~q\ & ((\reloj|Equal0~8_combout\)))) # (!\reloj|contador\(24) & ((\reloj|clkout~0_combout\) # ((\reloj|clkout~q\ & \reloj|Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reloj|contador\(24),
	datab => \reloj|clkout~q\,
	datac => \reloj|clkout~0_combout\,
	datad => \reloj|Equal0~8_combout\,
	combout => \reloj|clkout~1_combout\);

-- Location: LCCOMB_X12_Y9_N24
\reloj|clkout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \reloj|clkout~2_combout\ = (((!\reloj|contador\(16) & !\reloj|contador\(17))) # (!\reloj|contador\(18))) # (!\reloj|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reloj|Equal0~1_combout\,
	datab => \reloj|contador\(16),
	datac => \reloj|contador\(18),
	datad => \reloj|contador\(17),
	combout => \reloj|clkout~2_combout\);

-- Location: LCCOMB_X12_Y9_N2
\reloj|clkout~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \reloj|clkout~3_combout\ = (((!\reloj|contador\(12)) # (!\reloj|contador\(11))) # (!\reloj|contador\(14))) # (!\reloj|contador\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reloj|contador\(13),
	datab => \reloj|contador\(14),
	datac => \reloj|contador\(11),
	datad => \reloj|contador\(12),
	combout => \reloj|clkout~3_combout\);

-- Location: LCCOMB_X12_Y9_N20
\reloj|clkout~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \reloj|clkout~4_combout\ = (\reloj|clkout~3_combout\) # ((!\reloj|contador\(7) & \reloj|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reloj|clkout~3_combout\,
	datac => \reloj|contador\(7),
	datad => \reloj|Equal0~0_combout\,
	combout => \reloj|clkout~4_combout\);

-- Location: LCCOMB_X16_Y9_N10
\reloj|clkout~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \reloj|clkout~5_combout\ = (\reloj|clkout~2_combout\) # ((!\reloj|contador\(15) & (!\reloj|contador\(17) & \reloj|clkout~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reloj|contador\(15),
	datab => \reloj|contador\(17),
	datac => \reloj|clkout~2_combout\,
	datad => \reloj|clkout~4_combout\,
	combout => \reloj|clkout~5_combout\);

-- Location: LCCOMB_X16_Y9_N0
\reloj|clkout~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \reloj|clkout~6_combout\ = (\reloj|clkout~1_combout\) # ((\reloj|clkout~0_combout\ & (!\reloj|contador\(23) & \reloj|clkout~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reloj|clkout~0_combout\,
	datab => \reloj|contador\(23),
	datac => \reloj|clkout~1_combout\,
	datad => \reloj|clkout~5_combout\,
	combout => \reloj|clkout~6_combout\);

-- Location: FF_X16_Y9_N1
\reloj|clkout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \reloj|clkout~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reloj|clkout~q\);

-- Location: CLKCTRL_G5
\reloj|clkout~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reloj|clkout~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reloj|clkout~clkctrl_outclk\);

-- Location: LCCOMB_X33_Y11_N12
\contador|contador[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador|contador[0]~8_combout\ = \contador|contador\(0) $ (VCC)
-- \contador|contador[0]~9\ = CARRY(\contador|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador|contador\(0),
	datad => VCC,
	combout => \contador|contador[0]~8_combout\,
	cout => \contador|contador[0]~9\);

-- Location: IOIBUF_X34_Y9_N22
\RST~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST,
	o => \RST~input_o\);

-- Location: LCCOMB_X33_Y11_N22
\contador|contador[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador|contador[5]~18_combout\ = (\contador|contador\(5) & (!\contador|contador[4]~17\)) # (!\contador|contador\(5) & ((\contador|contador[4]~17\) # (GND)))
-- \contador|contador[5]~19\ = CARRY((!\contador|contador[4]~17\) # (!\contador|contador\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador|contador\(5),
	datad => VCC,
	cin => \contador|contador[4]~17\,
	combout => \contador|contador[5]~18_combout\,
	cout => \contador|contador[5]~19\);

-- Location: LCCOMB_X33_Y11_N24
\contador|contador[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador|contador[6]~20_combout\ = (\contador|contador\(6) & (\contador|contador[5]~19\ $ (GND))) # (!\contador|contador\(6) & (!\contador|contador[5]~19\ & VCC))
-- \contador|contador[6]~21\ = CARRY((\contador|contador\(6) & !\contador|contador[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador|contador\(6),
	datad => VCC,
	cin => \contador|contador[5]~19\,
	combout => \contador|contador[6]~20_combout\,
	cout => \contador|contador[6]~21\);

-- Location: FF_X33_Y11_N25
\contador|contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj|clkout~q\,
	d => \contador|contador[6]~20_combout\,
	sclr => \contador|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador|contador\(6));

-- Location: LCCOMB_X33_Y11_N4
\contador|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador|process_0~0_combout\ = (!\contador|contador\(6) & (!\contador|contador\(5) & !\contador|contador\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador|contador\(6),
	datac => \contador|contador\(5),
	datad => \contador|contador\(2),
	combout => \contador|process_0~0_combout\);

-- Location: LCCOMB_X33_Y11_N26
\contador|contador[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador|contador[7]~22_combout\ = \contador|contador\(7) $ (\contador|contador[6]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador|contador\(7),
	cin => \contador|contador[6]~21\,
	combout => \contador|contador[7]~22_combout\);

-- Location: FF_X33_Y11_N27
\contador|contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj|clkout~q\,
	d => \contador|contador[7]~22_combout\,
	sclr => \contador|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador|contador\(7));

-- Location: LCCOMB_X33_Y11_N0
\contador|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador|process_0~1_combout\ = (!\contador|contador\(7) & (!\contador|contador\(3) & (!\contador|contador\(1) & !\contador|contador\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador|contador\(7),
	datab => \contador|contador\(3),
	datac => \contador|contador\(1),
	datad => \contador|contador\(0),
	combout => \contador|process_0~1_combout\);

-- Location: LCCOMB_X33_Y11_N8
\contador|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador|process_0~2_combout\ = (\RST~input_o\) # ((\contador|contador\(4) & (\contador|process_0~0_combout\ & \contador|process_0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \contador|contador\(4),
	datac => \contador|process_0~0_combout\,
	datad => \contador|process_0~1_combout\,
	combout => \contador|process_0~2_combout\);

-- Location: FF_X33_Y11_N13
\contador|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj|clkout~clkctrl_outclk\,
	d => \contador|contador[0]~8_combout\,
	sclr => \contador|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador|contador\(0));

-- Location: LCCOMB_X33_Y11_N14
\contador|contador[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador|contador[1]~10_combout\ = (\contador|contador\(1) & (!\contador|contador[0]~9\)) # (!\contador|contador\(1) & ((\contador|contador[0]~9\) # (GND)))
-- \contador|contador[1]~11\ = CARRY((!\contador|contador[0]~9\) # (!\contador|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador|contador\(1),
	datad => VCC,
	cin => \contador|contador[0]~9\,
	combout => \contador|contador[1]~10_combout\,
	cout => \contador|contador[1]~11\);

-- Location: FF_X33_Y11_N15
\contador|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj|clkout~clkctrl_outclk\,
	d => \contador|contador[1]~10_combout\,
	sclr => \contador|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador|contador\(1));

-- Location: LCCOMB_X33_Y11_N16
\contador|contador[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador|contador[2]~12_combout\ = (\contador|contador\(2) & (\contador|contador[1]~11\ $ (GND))) # (!\contador|contador\(2) & (!\contador|contador[1]~11\ & VCC))
-- \contador|contador[2]~13\ = CARRY((\contador|contador\(2) & !\contador|contador[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador|contador\(2),
	datad => VCC,
	cin => \contador|contador[1]~11\,
	combout => \contador|contador[2]~12_combout\,
	cout => \contador|contador[2]~13\);

-- Location: FF_X33_Y11_N17
\contador|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj|clkout~clkctrl_outclk\,
	d => \contador|contador[2]~12_combout\,
	sclr => \contador|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador|contador\(2));

-- Location: LCCOMB_X33_Y11_N18
\contador|contador[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador|contador[3]~14_combout\ = (\contador|contador\(3) & (!\contador|contador[2]~13\)) # (!\contador|contador\(3) & ((\contador|contador[2]~13\) # (GND)))
-- \contador|contador[3]~15\ = CARRY((!\contador|contador[2]~13\) # (!\contador|contador\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador|contador\(3),
	datad => VCC,
	cin => \contador|contador[2]~13\,
	combout => \contador|contador[3]~14_combout\,
	cout => \contador|contador[3]~15\);

-- Location: FF_X33_Y11_N19
\contador|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj|clkout~clkctrl_outclk\,
	d => \contador|contador[3]~14_combout\,
	sclr => \contador|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador|contador\(3));

-- Location: LCCOMB_X33_Y11_N20
\contador|contador[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador|contador[4]~16_combout\ = (\contador|contador\(4) & (\contador|contador[3]~15\ $ (GND))) # (!\contador|contador\(4) & (!\contador|contador[3]~15\ & VCC))
-- \contador|contador[4]~17\ = CARRY((\contador|contador\(4) & !\contador|contador[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador|contador\(4),
	datad => VCC,
	cin => \contador|contador[3]~15\,
	combout => \contador|contador[4]~16_combout\,
	cout => \contador|contador[4]~17\);

-- Location: FF_X33_Y11_N21
\contador|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj|clkout~clkctrl_outclk\,
	d => \contador|contador[4]~16_combout\,
	sclr => \contador|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador|contador\(4));

-- Location: FF_X33_Y11_N23
\contador|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj|clkout~q\,
	d => \contador|contador[5]~18_combout\,
	sclr => \contador|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador|contador\(5));

-- Location: LCCOMB_X33_Y11_N10
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (!\contador|contador\(5) & (!\contador|contador\(4) & (!\contador|contador\(7) & !\contador|contador\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador|contador\(5),
	datab => \contador|contador\(4),
	datac => \contador|contador\(7),
	datad => \contador|contador\(6),
	combout => \Mux2~0_combout\);

-- Location: CLKCTRL_G7
\Mux2~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Mux2~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Mux2~0clkctrl_outclk\);

-- Location: LCCOMB_X32_Y11_N20
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\contador|contador\(3) & (\contador|contador\(1) & \contador|contador\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador|contador\(3),
	datac => \contador|contador\(1),
	datad => \contador|contador\(2),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X32_Y11_N8
\SEM1[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEM1[0]$latch~combout\ = (GLOBAL(\Mux2~0clkctrl_outclk\) & ((!\Mux0~0_combout\))) # (!GLOBAL(\Mux2~0clkctrl_outclk\) & (\SEM1[0]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SEM1[0]$latch~combout\,
	datac => \Mux2~0clkctrl_outclk\,
	datad => \Mux0~0_combout\,
	combout => \SEM1[0]$latch~combout\);

-- Location: LCCOMB_X33_Y11_N6
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ((\contador|contador\(1) & \contador|contador\(2))) # (!\contador|contador\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador|contador\(3),
	datac => \contador|contador\(1),
	datad => \contador|contador\(2),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X33_Y11_N2
\SEM1[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEM1[1]$latch~combout\ = (GLOBAL(\Mux2~0clkctrl_outclk\) & ((\Mux1~0_combout\))) # (!GLOBAL(\Mux2~0clkctrl_outclk\) & (\SEM1[1]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SEM1[1]$latch~combout\,
	datac => \Mux2~0clkctrl_outclk\,
	datad => \Mux1~0_combout\,
	combout => \SEM1[1]$latch~combout\);

-- Location: LCCOMB_X32_Y11_N22
\SEM1[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEM1[2]$latch~combout\ = (GLOBAL(\Mux2~0clkctrl_outclk\) & (\contador|contador\(3))) # (!GLOBAL(\Mux2~0clkctrl_outclk\) & ((\SEM1[2]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador|contador\(3),
	datac => \SEM1[2]$latch~combout\,
	datad => \Mux2~0clkctrl_outclk\,
	combout => \SEM1[2]$latch~combout\);

-- Location: LCCOMB_X32_Y11_N10
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\contador|contador\(3)) # ((\contador|contador\(2) & \contador|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador|contador\(2),
	datac => \contador|contador\(1),
	datad => \contador|contador\(3),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X32_Y11_N24
\SEM2[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEM2[0]$latch~combout\ = (GLOBAL(\Mux2~0clkctrl_outclk\) & ((!\Mux5~0_combout\))) # (!GLOBAL(\Mux2~0clkctrl_outclk\) & (\SEM2[0]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SEM2[0]$latch~combout\,
	datac => \Mux2~0clkctrl_outclk\,
	datad => \Mux5~0_combout\,
	combout => \SEM2[0]$latch~combout\);

-- Location: LCCOMB_X33_Y11_N30
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\contador|contador\(2) & (\contador|contador\(1) & !\contador|contador\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador|contador\(2),
	datac => \contador|contador\(1),
	datad => \contador|contador\(3),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X33_Y11_N28
\SEM2[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEM2[1]$latch~combout\ = (GLOBAL(\Mux2~0clkctrl_outclk\) & ((\Mux6~0_combout\))) # (!GLOBAL(\Mux2~0clkctrl_outclk\) & (\SEM2[1]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SEM2[1]$latch~combout\,
	datac => \Mux6~0_combout\,
	datad => \Mux2~0clkctrl_outclk\,
	combout => \SEM2[1]$latch~combout\);

-- Location: IOIBUF_X1_Y24_N8
\mode~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mode,
	o => \mode~input_o\);

ww_SEM1(0) <= \SEM1[0]~output_o\;

ww_SEM1(1) <= \SEM1[1]~output_o\;

ww_SEM1(2) <= \SEM1[2]~output_o\;

ww_SEM2(0) <= \SEM2[0]~output_o\;

ww_SEM2(1) <= \SEM2[1]~output_o\;

ww_SEM2(2) <= \SEM2[2]~output_o\;
END structure;


