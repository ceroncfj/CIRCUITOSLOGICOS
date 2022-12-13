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

-- DATE "12/06/2022 14:11:27"

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

ENTITY 	practica6a IS
    PORT (
	CLOCK : IN std_logic;
	A : IN std_logic;
	B : IN std_logic;
	Q : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END practica6a;

-- Design Ports Information
-- Q[0]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[1]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[2]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[3]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF practica6a IS
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
SIGNAL ww_A : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_Q : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk|clkout~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Q[0]~output_o\ : std_logic;
SIGNAL \Q[1]~output_o\ : std_logic;
SIGNAL \Q[2]~output_o\ : std_logic;
SIGNAL \Q[3]~output_o\ : std_logic;
SIGNAL \CLOCK~input_o\ : std_logic;
SIGNAL \CLOCK~inputclkctrl_outclk\ : std_logic;
SIGNAL \clk|Add0~49\ : std_logic;
SIGNAL \clk|Add0~50_combout\ : std_logic;
SIGNAL \clk|contador~12_combout\ : std_logic;
SIGNAL \clk|Add0~0_combout\ : std_logic;
SIGNAL \clk|contador~13_combout\ : std_logic;
SIGNAL \clk|Add0~1\ : std_logic;
SIGNAL \clk|Add0~2_combout\ : std_logic;
SIGNAL \clk|Add0~3\ : std_logic;
SIGNAL \clk|Add0~4_combout\ : std_logic;
SIGNAL \clk|Add0~5\ : std_logic;
SIGNAL \clk|Add0~6_combout\ : std_logic;
SIGNAL \clk|Add0~7\ : std_logic;
SIGNAL \clk|Add0~8_combout\ : std_logic;
SIGNAL \clk|Add0~9\ : std_logic;
SIGNAL \clk|Add0~10_combout\ : std_logic;
SIGNAL \clk|Add0~11\ : std_logic;
SIGNAL \clk|Add0~12_combout\ : std_logic;
SIGNAL \clk|contador~5_combout\ : std_logic;
SIGNAL \clk|Add0~13\ : std_logic;
SIGNAL \clk|Add0~14_combout\ : std_logic;
SIGNAL \clk|Add0~15\ : std_logic;
SIGNAL \clk|Add0~16_combout\ : std_logic;
SIGNAL \clk|Add0~17\ : std_logic;
SIGNAL \clk|Add0~18_combout\ : std_logic;
SIGNAL \clk|contador~6_combout\ : std_logic;
SIGNAL \clk|Add0~19\ : std_logic;
SIGNAL \clk|Add0~20_combout\ : std_logic;
SIGNAL \clk|contador~7_combout\ : std_logic;
SIGNAL \clk|Add0~21\ : std_logic;
SIGNAL \clk|Add0~22_combout\ : std_logic;
SIGNAL \clk|contador~3_combout\ : std_logic;
SIGNAL \clk|Add0~23\ : std_logic;
SIGNAL \clk|Add0~24_combout\ : std_logic;
SIGNAL \clk|Add0~25\ : std_logic;
SIGNAL \clk|Add0~26_combout\ : std_logic;
SIGNAL \clk|contador~4_combout\ : std_logic;
SIGNAL \clk|Add0~27\ : std_logic;
SIGNAL \clk|Add0~28_combout\ : std_logic;
SIGNAL \clk|Add0~29\ : std_logic;
SIGNAL \clk|Add0~30_combout\ : std_logic;
SIGNAL \clk|contador~0_combout\ : std_logic;
SIGNAL \clk|Add0~31\ : std_logic;
SIGNAL \clk|Add0~32_combout\ : std_logic;
SIGNAL \clk|contador~11_combout\ : std_logic;
SIGNAL \clk|Add0~33\ : std_logic;
SIGNAL \clk|Add0~34_combout\ : std_logic;
SIGNAL \clk|contador~1_combout\ : std_logic;
SIGNAL \clk|Add0~35\ : std_logic;
SIGNAL \clk|Add0~36_combout\ : std_logic;
SIGNAL \clk|Add0~37\ : std_logic;
SIGNAL \clk|Add0~39\ : std_logic;
SIGNAL \clk|Add0~40_combout\ : std_logic;
SIGNAL \clk|Equal0~6_combout\ : std_logic;
SIGNAL \clk|Equal0~4_combout\ : std_logic;
SIGNAL \clk|Equal0~5_combout\ : std_logic;
SIGNAL \clk|Equal0~3_combout\ : std_logic;
SIGNAL \clk|Equal0~7_combout\ : std_logic;
SIGNAL \clk|Equal0~8_combout\ : std_logic;
SIGNAL \clk|Add0~41\ : std_logic;
SIGNAL \clk|Add0~42_combout\ : std_logic;
SIGNAL \clk|contador~9_combout\ : std_logic;
SIGNAL \clk|Add0~43\ : std_logic;
SIGNAL \clk|Add0~44_combout\ : std_logic;
SIGNAL \clk|contador~10_combout\ : std_logic;
SIGNAL \clk|Add0~45\ : std_logic;
SIGNAL \clk|Add0~46_combout\ : std_logic;
SIGNAL \clk|contador~2_combout\ : std_logic;
SIGNAL \clk|Add0~47\ : std_logic;
SIGNAL \clk|Add0~48_combout\ : std_logic;
SIGNAL \clk|LessThan0~7_combout\ : std_logic;
SIGNAL \clk|LessThan0~6_combout\ : std_logic;
SIGNAL \clk|LessThan0~8_combout\ : std_logic;
SIGNAL \clk|Add0~51\ : std_logic;
SIGNAL \clk|Add0~52_combout\ : std_logic;
SIGNAL \clk|Add0~53\ : std_logic;
SIGNAL \clk|Add0~54_combout\ : std_logic;
SIGNAL \clk|Add0~55\ : std_logic;
SIGNAL \clk|Add0~56_combout\ : std_logic;
SIGNAL \clk|Add0~57\ : std_logic;
SIGNAL \clk|Add0~58_combout\ : std_logic;
SIGNAL \clk|Add0~59\ : std_logic;
SIGNAL \clk|Add0~60_combout\ : std_logic;
SIGNAL \clk|Add0~61\ : std_logic;
SIGNAL \clk|Add0~62_combout\ : std_logic;
SIGNAL \clk|LessThan0~0_combout\ : std_logic;
SIGNAL \clk|LessThan0~1_combout\ : std_logic;
SIGNAL \clk|LessThan0~2_combout\ : std_logic;
SIGNAL \clk|LessThan0~3_combout\ : std_logic;
SIGNAL \clk|LessThan0~4_combout\ : std_logic;
SIGNAL \clk|LessThan0~5_combout\ : std_logic;
SIGNAL \clk|LessThan0~9_combout\ : std_logic;
SIGNAL \clk|Add0~38_combout\ : std_logic;
SIGNAL \clk|contador~8_combout\ : std_logic;
SIGNAL \clk|Equal0~0_combout\ : std_logic;
SIGNAL \clk|Equal0~1_combout\ : std_logic;
SIGNAL \clk|Equal0~2_combout\ : std_logic;
SIGNAL \clk|clkout~0_combout\ : std_logic;
SIGNAL \clk|clkout~feeder_combout\ : std_logic;
SIGNAL \clk|clkout~q\ : std_logic;
SIGNAL \clk|clkout~clkctrl_outclk\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \jk|process_0~1_combout\ : std_logic;
SIGNAL \jk|process_0~0_combout\ : std_logic;
SIGNAL \sr|tmp~q\ : std_logic;
SIGNAL \jk|process_0~2_combout\ : std_logic;
SIGNAL \sr|tmp~en_q\ : std_logic;
SIGNAL \jk|TMP~0_combout\ : std_logic;
SIGNAL \jk|TMP~q\ : std_logic;
SIGNAL \t|tmp~0_combout\ : std_logic;
SIGNAL \t|tmp~q\ : std_logic;
SIGNAL \d|Q~feeder_combout\ : std_logic;
SIGNAL \d|Q~q\ : std_logic;
SIGNAL \clk|contador\ : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_CLOCK <= CLOCK;
ww_A <= A;
ww_B <= B;
Q <= ww_Q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk|clkout~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk|clkout~q\);

\CLOCK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK~input_o\);

-- Location: IOOBUF_X34_Y4_N23
\Q[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sr|tmp~q\,
	oe => \sr|tmp~en_q\,
	devoe => ww_devoe,
	o => \Q[0]~output_o\);

-- Location: IOOBUF_X34_Y2_N16
\Q[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \jk|TMP~q\,
	devoe => ww_devoe,
	o => \Q[1]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\Q[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t|tmp~q\,
	devoe => ww_devoe,
	o => \Q[2]~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\Q[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d|Q~q\,
	devoe => ww_devoe,
	o => \Q[3]~output_o\);

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

-- Location: LCCOMB_X14_Y9_N16
\clk|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk|Add0~48_combout\ = (\clk|contador\(24) & (\clk|Add0~47\ $ (GND))) # (!\clk|contador\(24) & (!\clk|Add0~47\ & VCC))
-- \clk|Add0~49\ = CARRY((\clk|contador\(24) & !\clk|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk|contador\(24),
	datad => VCC,
	cin => \clk|Add0~47\,
	combout => \clk|Add0~48_combout\,
	cout => \clk|Add0~49\);

-- Location: LCCOMB_X14_Y9_N18
\clk|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk|Add0~50_combout\ = (\clk|contador\(25) & (!\clk|Add0~49\)) # (!\clk|contador\(25) & ((\clk|Add0~49\) # (GND)))
-- \clk|Add0~51\ = CARRY((!\clk|Add0~49\) # (!\clk|contador\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk|contador\(25),
	datad => VCC,
	cin => \clk|Add0~49\,
	combout => \clk|Add0~50_combout\,
	cout => \clk|Add0~51\);

-- Location: LCCOMB_X13_Y9_N12
\clk|contador~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk|contador~12_combout\ = (\clk|Add0~50_combout\ & ((\clk|LessThan0~9_combout\) # ((\clk|Equal0~2_combout\) # (\clk|Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk|LessThan0~9_combout\,
	datab => \clk|Equal0~2_combout\,
	datac => \clk|Equal0~8_combout\,
	datad => \clk|Add0~50_combout\,
	combout => \clk|contador~12_combout\);

-- Location: FF_X13_Y9_N13
\clk|contador[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk|contador~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk|contador\(25));

-- Location: LCCOMB_X14_Y10_N0
\clk|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk|Add0~0_combout\ = \clk|contador\(0) $ (VCC)
-- \clk|Add0~1\ = CARRY(\clk|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk|contador\(0),
	datad => VCC,
	combout => \clk|Add0~0_combout\,
	cout => \clk|Add0~1\);

-- Location: LCCOMB_X13_Y9_N26
\clk|contador~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk|contador~13_combout\ = (\clk|Add0~0_combout\ & ((\clk|Equal0~2_combout\) # ((\clk|Equal0~8_combout\) # (\clk|LessThan0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk|Add0~0_combout\,
	datab => \clk|Equal0~2_combout\,
	datac => \clk|Equal0~8_combout\,
	datad => \clk|LessThan0~9_combout\,
	combout => \clk|contador~13_combout\);

-- Location: FF_X14_Y10_N27
\clk|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \clk|contador~13_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk|contador\(0));

-- Location: LCCOMB_X14_Y10_N2
\clk|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk|Add0~2_combout\ = (\clk|contador\(1) & (!\clk|Add0~1\)) # (!\clk|contador\(1) & ((\clk|Add0~1\) # (GND)))
-- \clk|Add0~3\ = CARRY((!\clk|Add0~1\) # (!\clk|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk|contador\(1),
	datad => VCC,
	cin => \clk|Add0~1\,
	combout => \clk|Add0~2_combout\,
	cout => \clk|Add0~3\);

-- Location: FF_X14_Y10_N3
\clk|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk|contador\(1));

-- Location: LCCOMB_X14_Y10_N4
\clk|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk|Add0~4_combout\ = (\clk|contador\(2) & (\clk|Add0~3\ $ (GND))) # (!\clk|contador\(2) & (!\clk|Add0~3\ & VCC))
-- \clk|Add0~5\ = CARRY((\clk|contador\(2) & !\clk|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk|contador\(2),
	datad => VCC,
	cin => \clk|Add0~3\,
	combout => \clk|Add0~4_combout\,
	cout => \clk|Add0~5\);

-- Location: FF_X14_Y10_N5
\clk|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk|contador\(2));

-- Location: LCCOMB_X14_Y10_N6
\clk|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk|Add0~6_combout\ = (\clk|contador\(3) & (!\clk|Add0~5\)) # (!\clk|contador\(3) & ((\clk|Add0~5\) # (GND)))
-- \clk|Add0~7\ = CARRY((!\clk|Add0~5\) # (!\clk|contador\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk|contador\(3),
	datad => VCC,
	cin => \clk|Add0~5\,
	combout => \clk|Add0~6_combout\,
	cout => \clk|Add0~7\);

-- Location: FF_X14_Y10_N7
\clk|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk|contador\(3));

-- Location: LCCOMB_X14_Y10_N8
\clk|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk|Add0~8_combout\ = (\clk|contador\(4) & (\clk|Add0~7\ $ (GND))) # (!\clk|contador\(4) & (!\clk|Add0~7\ & VCC))
-- \clk|Add0~9\ = CARRY((\clk|contador\(4) & !\clk|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk|contador\(4),
	datad => VCC,
	cin => \clk|Add0~7\,
	combout => \clk|Add0~8_combout\,
	cout => \clk|Add0~9\);

-- Location: FF_X14_Y10_N9
\clk|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk|contador\(4));

-- Location: LCCOMB_X14_Y10_N10
\clk|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk|Add0~10_combout\ = (\clk|contador\(5) & (!\clk|Add0~9\)) # (!\clk|contador\(5) & ((\clk|Add0~9\) # (GND)))
-- \clk|Add0~11\ = CARRY((!\clk|Add0~9\) # (!\clk|contador\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk|contador\(5),
	datad => VCC,
	cin => \clk|Add0~9\,
	combout => \clk|Add0~10_combout\,
	cout => \clk|Add0~11\);

-- Location: FF_X14_Y10_N11
\clk|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk|contador\(5));

-- Location: LCCOMB_X14_Y10_N12
\clk|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk|Add0~12_combout\ = (\clk|contador\(6) & (\clk|Add0~11\ $ (GND))) # (!\clk|contador\(6) & (!\clk|Add0~11\ & VCC))
-- \clk|Add0~13\ = CARRY((\clk|contador\(6) & !\clk|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk|contador\(6),
	datad => VCC,
	cin => \clk|Add0~11\,
	combout => \clk|Add0~12_combout\,
	cout => \clk|Add0~13\);

-- Location: LCCOMB_X13_Y9_N18
\clk|contador~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk|contador~5_combout\ = (\clk|Add0~12_combout\ & ((\clk|LessThan0~9_combout\) # ((\clk|Equal0~8_combout\) # (\clk|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk|LessThan0~9_combout\,
	datab => \clk|Equal0~8_combout\,
	datac => \clk|Add0~12_combout\,
	datad => \clk|Equal0~2_combout\,
	combout => \clk|contador~5_combout\);

-- Location: FF_X13_Y9_N19
\clk|contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk|contador~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk|contador\(6));

-- Location: LCCOMB_X14_Y10_N14
\clk|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk|Add0~14_combout\ = (\clk|contador\(7) & (!\clk|Add0~13\)) # (!\clk|contador\(7) & ((\clk|Add0~13\) # (GND)))
-- \clk|Add0~15\ = CARRY((!\clk|Add0~13\) # (!\clk|contador\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk|contador\(7),
	datad => VCC,
	cin => \clk|Add0~13\,
	combout => \clk|Add0~14_combout\,
	cout => \clk|Add0~15\);

-- Location: FF_X14_Y10_N15
\clk|contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk|contador\(7));

-- Location: LCCOMB_X14_Y10_N16
\clk|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk|Add0~16_combout\ = (\clk|contador\(8) & (\clk|Add0~15\ $ (GND))) # (!\clk|contador\(8) & (!\clk|Add0~15\ & VCC))
-- \clk|Add0~17\ = CARRY((\clk|contador\(8) & !\clk|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk|contador\(8),
	datad => VCC,
	cin => \clk|Add0~15\,
	combout => \clk|Add0~16_combout\,
	cout => \clk|Add0~17\);

-- Location: FF_X14_Y10_N17
\clk|contador[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk|contador\(8));

-- Location: LCCOMB_X14_Y10_N18
\clk|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk|Add0~18_combout\ = (\clk|contador\(9) & (!\clk|Add0~17\)) # (!\clk|contador\(9) & ((\clk|Add0~17\) # (GND)))
-- \clk|Add0~19\ = CARRY((!\clk|Add0~17\) # (!\clk|contador\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk|contador\(9),
	datad => VCC,
	cin => \clk|Add0~17\,
	combout => \clk|Add0~18_combout\,
	cout => \clk|Add0~19\);

-- Location: LCCOMB_X13_Y9_N0
\clk|contador~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk|contador~6_combout\ = (\clk|Add0~18_combout\ & ((\clk|LessThan0~9_combout\) # ((\clk|Equal0~2_combout\) # (\clk|Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk|LessThan0~9_combout\,
	datab => \clk|Equal0~2_combout\,
	datac => \clk|Equal0~8_combout\,
	datad => \clk|Add0~18_combout\,
	combout => \clk|contador~6_combout\);

-- Location: FF_X13_Y9_N1
\clk|contador[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk|contador~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk|contador\(9));

-- Location: LCCOMB_X14_Y10_N20
\clk|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk|Add0~20_combout\ = (\clk|contador\(10) & (\clk|Add0~19\ $ (GND))) # (!\clk|contador\(10) & (!\clk|Add0~19\ & VCC))
-- \clk|Add0~21\ = CARRY((\clk|contador\(10) & !\clk|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk|contador\(10),
	datad => VCC,
	cin => \clk|Add0~19\,
	combout => \clk|Add0~20_combout\,
	cout => \clk|Add0~21\);

-- Location: LCCOMB_X13_Y9_N14
\clk|contador~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk|contador~7_combout\ = (\clk|Add0~20_combout\ & ((\clk|LessThan0~9_combout\) # ((\clk|Equal0~2_combout\) # (\clk|Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk|LessThan0~9_combout\,
	datab => \clk|Equal0~2_combout\,
	datac => \clk|Equal0~8_combout\,
	datad => \clk|Add0~20_combout\,
	combout => \clk|contador~7_combout\);

-- Location: FF_X13_Y9_N15
\clk|contador[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk|contador~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk|contador\(10));

-- Location: LCCOMB_X14_Y10_N22
\clk|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk|Add0~22_combout\ = (\clk|contador\(11) & (!\clk|Add0~21\)) # (!\clk|contador\(11) & ((\clk|Add0~21\) # (GND)))
-- \clk|Add0~23\ = CARRY((!\clk|Add0~21\) # (!\clk|contador\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk|contador\(11),
	datad => VCC,
	cin => \clk|Add0~21\,
	combout => \clk|Add0~22_combout\,
	cout => \clk|Add0~23\);

-- Location: LCCOMB_X12_Y9_N0
\clk|contador~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk|contador~3_combout\ = (\clk|Add0~22_combout\ & ((\clk|Equal0~8_combout\) # ((\clk|Equal0~2_combout\) # (\clk|LessThan0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk|Equal0~8_combout\,
	datab => \clk|Equal0~2_combout\,
	datac => \clk|LessThan0~9_combout\,
	datad => \clk|Add0~22_combout\,
	combout => \clk|contador~3_combout\);

-- Location: FF_X12_Y9_N1
\clk|contador[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk|contador~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk|contador\(11));

-- Location: LCCOMB_X14_Y10_N24
\clk|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk|Add0~24_combout\ = (\clk|contador\(12) & (\clk|Add0~23\ $ (GND))) # (!\clk|contador\(12) & (!\clk|Add0~23\ & VCC))
-- \clk|Add0~25\ = CARRY((\clk|contador\(12) & !\clk|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk|contador\(12),
	datad => VCC,
	cin => \clk|Add0~23\,
	combout => \clk|Add0~24_combout\,
	cout => \clk|Add0~25\);

-- Location: FF_X14_Y10_N25
\clk|contador[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk|contador\(12));

-- Location: LCCOMB_X14_Y10_N26
\clk|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk|Add0~26_combout\ = (\clk|contador\(13) & (!\clk|Add0~25\)) # (!\clk|contador\(13) & ((\clk|Add0~25\) # (GND)))
-- \clk|Add0~27\ = CARRY((!\clk|Add0~25\) # (!\clk|contador\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk|contador\(13),
	datad => VCC,
	cin => \clk|Add0~25\,
	combout => \clk|Add0~26_combout\,
	cout => \clk|Add0~27\);

-- Location: LCCOMB_X13_Y9_N4
\clk|contador~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk|contador~4_combout\ = (\clk|Add0~26_combout\ & ((\clk|LessThan0~9_combout\) # ((\clk|Equal0~2_combout\) # (\clk|Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk|LessThan0~9_combout\,
	datab => \clk|Equal0~2_combout\,
	datac => \clk|Equal0~8_combout\,
	datad => \clk|Add0~26_combout\,
	combout => \clk|contador~4_combout\);

-- Location: FF_X13_Y9_N5
\clk|contador[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk|contador~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk|contador\(13));

-- Location: LCCOMB_X14_Y10_N28
\clk|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk|Add0~28_combout\ = (\clk|contador\(14) & (\clk|Add0~27\ $ (GND))) # (!\clk|contador\(14) & (!\clk|Add0~27\ & VCC))
-- \clk|Add0~29\ = CARRY((\clk|contador\(14) & !\clk|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk|contador\(14),
	datad => VCC,
	cin => \clk|Add0~27\,
	combout => \clk|Add0~28_combout\,
	cout => \clk|Add0~29\);

-- Location: FF_X14_Y10_N29
\clk|contador[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk|contador\(14));

-- Location: LCCOMB_X14_Y10_N30
\clk|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk|Add0~30_combout\ = (\clk|contador\(15) & (!\clk|Add0~29\)) # (!\clk|contador\(15) & ((\clk|Add0~29\) # (GND)))
-- \clk|Add0~31\ = CARRY((!\clk|Add0~29\) # (!\clk|contador\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk|contador\(15),
	datad => VCC,
	cin => \clk|Add0~29\,
	combout => \clk|Add0~30_combout\,
	cout => \clk|Add0~31\);

-- Location: LCCOMB_X13_Y9_N16
\clk|contador~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk|contador~0_combout\ = (\clk|Add0~30_combout\ & ((\clk|LessThan0~9_combout\) # ((\clk|Equal0~8_combout\) # (\clk|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk|LessThan0~9_combout\,
	datab => \clk|Equal0~8_combout\,
	datac => \clk|Add0~30_combout\,
	datad => \clk|Equal0~2_combout\,
	combout => \clk|contador~0_combout\);

-- Location: FF_X13_Y9_N17
\clk|contador[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk|contador~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk|contador\(15));

-- Location: LCCOMB_X14_Y9_N0
\clk|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk|Add0~32_combout\ = (\clk|contador\(16) & (\clk|Add0~31\ $ (GND))) # (!\clk|contador\(16) & (!\clk|Add0~31\ & VCC))
-- \clk|Add0~33\ = CARRY((\clk|contador\(16) & !\clk|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk|contador\(16),
	datad => VCC,
	cin => \clk|Add0~31\,
	combout => \clk|Add0~32_combout\,
	cout => \clk|Add0~33\);

-- Location: LCCOMB_X13_Y9_N6
\clk|contador~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk|contador~11_combout\ = (\clk|Add0~32_combout\ & ((\clk|LessThan0~9_combout\) # ((\clk|Equal0~8_combout\) # (\clk|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk|LessThan0~9_combout\,
	datab => \clk|Equal0~8_combout\,
	datac => \clk|Add0~32_combout\,
	datad => \clk|Equal0~2_combout\,
	combout => \clk|contador~11_combout\);

-- Location: FF_X13_Y9_N7
\clk|contador[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk|contador~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk|contador\(16));

-- Location: LCCOMB_X14_Y9_N2
\clk|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk|Add0~34_combout\ = (\clk|contador\(17) & (!\clk|Add0~33\)) # (!\clk|contador\(17) & ((\clk|Add0~33\) # (GND)))
-- \clk|Add0~35\ = CARRY((!\clk|Add0~33\) # (!\clk|contador\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk|contador\(17),
	datad => VCC,
	cin => \clk|Add0~33\,
	combout => \clk|Add0~34_combout\,
	cout => \clk|Add0~35\);

-- Location: LCCOMB_X12_Y9_N16
\clk|contador~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk|contador~1_combout\ = (\clk|Add0~34_combout\ & ((\clk|Equal0~2_combout\) # ((\clk|LessThan0~9_combout\) # (\clk|Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk|Equal0~2_combout\,
	datab => \clk|LessThan0~9_combout\,
	datac => \clk|Add0~34_combout\,
	datad => \clk|Equal0~8_combout\,
	combout => \clk|contador~1_combout\);

-- Location: FF_X12_Y9_N17
\clk|contador[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk|contador~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk|contador\(17));

-- Location: LCCOMB_X14_Y9_N4
\clk|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk|Add0~36_combout\ = (\clk|contador\(18) & (\clk|Add0~35\ $ (GND))) # (!\clk|contador\(18) & (!\clk|Add0~35\ & VCC))
-- \clk|Add0~37\ = CARRY((\clk|contador\(18) & !\clk|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk|contador\(18),
	datad => VCC,
	cin => \clk|Add0~35\,
	combout => \clk|Add0~36_combout\,
	cout => \clk|Add0~37\);

-- Location: FF_X14_Y9_N5
\clk|contador[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk|contador\(18));

-- Location: LCCOMB_X14_Y9_N6
\clk|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk|Add0~38_combout\ = (\clk|contador\(19) & (!\clk|Add0~37\)) # (!\clk|contador\(19) & ((\clk|Add0~37\) # (GND)))
-- \clk|Add0~39\ = CARRY((!\clk|Add0~37\) # (!\clk|contador\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk|contador\(19),
	datad => VCC,
	cin => \clk|Add0~37\,
	combout => \clk|Add0~38_combout\,
	cout => \clk|Add0~39\);

-- Location: LCCOMB_X14_Y9_N8
\clk|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk|Add0~40_combout\ = (\clk|contador\(20) & (\clk|Add0~39\ $ (GND))) # (!\clk|contador\(20) & (!\clk|Add0~39\ & VCC))
-- \clk|Add0~41\ = CARRY((\clk|contador\(20) & !\clk|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk|contador\(20),
	datad => VCC,
	cin => \clk|Add0~39\,
	combout => \clk|Add0~40_combout\,
	cout => \clk|Add0~41\);

-- Location: FF_X14_Y9_N9
\clk|contador[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk|contador\(20));

-- Location: LCCOMB_X12_Y9_N2
\clk|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk|Equal0~6_combout\ = (\clk|contador\(20)) # (((\clk|contador\(18)) # (!\clk|contador\(17))) # (!\clk|contador\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk|contador\(20),
	datab => \clk|contador\(23),
	datac => \clk|contador\(18),
	datad => \clk|contador\(17),
	combout => \clk|Equal0~6_combout\);

-- Location: LCCOMB_X12_Y9_N8
\clk|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk|Equal0~4_combout\ = (((\clk|contador\(0)) # (!\clk|contador\(10))) # (!\clk|contador\(9))) # (!\clk|contador\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk|contador\(6),
	datab => \clk|contador\(9),
	datac => \clk|contador\(10),
	datad => \clk|contador\(0),
	combout => \clk|Equal0~4_combout\);

-- Location: LCCOMB_X12_Y9_N4
\clk|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk|Equal0~5_combout\ = (((\clk|contador\(12)) # (\clk|contador\(14))) # (!\clk|contador\(15))) # (!\clk|contador\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk|contador\(16),
	datab => \clk|contador\(15),
	datac => \clk|contador\(12),
	datad => \clk|contador\(14),
	combout => \clk|Equal0~5_combout\);

-- Location: LCCOMB_X13_Y10_N8
\clk|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk|Equal0~3_combout\ = (\clk|contador\(1)) # ((\clk|contador\(4)) # ((\clk|contador\(3)) # (\clk|contador\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk|contador\(1),
	datab => \clk|contador\(4),
	datac => \clk|contador\(3),
	datad => \clk|contador\(2),
	combout => \clk|Equal0~3_combout\);

-- Location: LCCOMB_X12_Y9_N28
\clk|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk|Equal0~7_combout\ = (\clk|Equal0~6_combout\) # ((\clk|Equal0~4_combout\) # ((\clk|Equal0~5_combout\) # (\clk|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk|Equal0~6_combout\,
	datab => \clk|Equal0~4_combout\,
	datac => \clk|Equal0~5_combout\,
	datad => \clk|Equal0~3_combout\,
	combout => \clk|Equal0~7_combout\);

-- Location: LCCOMB_X12_Y9_N6
\clk|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk|Equal0~8_combout\ = (\clk|contador\(24)) # ((\clk|Equal0~7_combout\) # (!\clk|contador\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk|contador\(24),
	datac => \clk|contador\(25),
	datad => \clk|Equal0~7_combout\,
	combout => \clk|Equal0~8_combout\);

-- Location: LCCOMB_X14_Y9_N10
\clk|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk|Add0~42_combout\ = (\clk|contador\(21) & (!\clk|Add0~41\)) # (!\clk|contador\(21) & ((\clk|Add0~41\) # (GND)))
-- \clk|Add0~43\ = CARRY((!\clk|Add0~41\) # (!\clk|contador\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk|contador\(21),
	datad => VCC,
	cin => \clk|Add0~41\,
	combout => \clk|Add0~42_combout\,
	cout => \clk|Add0~43\);

-- Location: LCCOMB_X13_Y9_N2
\clk|contador~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk|contador~9_combout\ = (\clk|Add0~42_combout\ & ((\clk|LessThan0~9_combout\) # ((\clk|Equal0~8_combout\) # (\clk|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk|LessThan0~9_combout\,
	datab => \clk|Equal0~8_combout\,
	datac => \clk|Add0~42_combout\,
	datad => \clk|Equal0~2_combout\,
	combout => \clk|contador~9_combout\);

-- Location: FF_X13_Y9_N3
\clk|contador[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk|contador~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk|contador\(21));

-- Location: LCCOMB_X14_Y9_N12
\clk|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk|Add0~44_combout\ = (\clk|contador\(22) & (\clk|Add0~43\ $ (GND))) # (!\clk|contador\(22) & (!\clk|Add0~43\ & VCC))
-- \clk|Add0~45\ = CARRY((\clk|contador\(22) & !\clk|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk|contador\(22),
	datad => VCC,
	cin => \clk|Add0~43\,
	combout => \clk|Add0~44_combout\,
	cout => \clk|Add0~45\);

-- Location: LCCOMB_X13_Y9_N28
\clk|contador~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk|contador~10_combout\ = (\clk|Add0~44_combout\ & ((\clk|LessThan0~9_combout\) # ((\clk|Equal0~8_combout\) # (\clk|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk|LessThan0~9_combout\,
	datab => \clk|Equal0~8_combout\,
	datac => \clk|Add0~44_combout\,
	datad => \clk|Equal0~2_combout\,
	combout => \clk|contador~10_combout\);

-- Location: FF_X13_Y9_N29
\clk|contador[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk|contador~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk|contador\(22));

-- Location: LCCOMB_X14_Y9_N14
\clk|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk|Add0~46_combout\ = (\clk|contador\(23) & (!\clk|Add0~45\)) # (!\clk|contador\(23) & ((\clk|Add0~45\) # (GND)))
-- \clk|Add0~47\ = CARRY((!\clk|Add0~45\) # (!\clk|contador\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk|contador\(23),
	datad => VCC,
	cin => \clk|Add0~45\,
	combout => \clk|Add0~46_combout\,
	cout => \clk|Add0~47\);

-- Location: LCCOMB_X13_Y9_N10
\clk|contador~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk|contador~2_combout\ = (\clk|Add0~46_combout\ & ((\clk|LessThan0~9_combout\) # ((\clk|Equal0~8_combout\) # (\clk|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk|LessThan0~9_combout\,
	datab => \clk|Equal0~8_combout\,
	datac => \clk|Add0~46_combout\,
	datad => \clk|Equal0~2_combout\,
	combout => \clk|contador~2_combout\);

-- Location: FF_X13_Y9_N11
\clk|contador[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk|contador~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk|contador\(23));

-- Location: FF_X14_Y9_N17
\clk|contador[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk|contador\(24));

-- Location: LCCOMB_X12_Y9_N22
\clk|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk|LessThan0~7_combout\ = ((!\clk|contador\(16) & !\clk|contador\(17))) # (!\clk|contador\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk|contador\(16),
	datab => \clk|contador\(17),
	datad => \clk|contador\(20),
	combout => \clk|LessThan0~7_combout\);

-- Location: LCCOMB_X12_Y9_N12
\clk|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk|LessThan0~6_combout\ = (((!\clk|contador\(22)) # (!\clk|contador\(18))) # (!\clk|contador\(19))) # (!\clk|contador\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk|contador\(21),
	datab => \clk|contador\(19),
	datac => \clk|contador\(18),
	datad => \clk|contador\(22),
	combout => \clk|LessThan0~6_combout\);

-- Location: LCCOMB_X12_Y9_N10
\clk|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk|LessThan0~8_combout\ = ((!\clk|contador\(23) & ((\clk|LessThan0~7_combout\) # (\clk|LessThan0~6_combout\)))) # (!\clk|contador\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk|contador\(24),
	datab => \clk|contador\(23),
	datac => \clk|LessThan0~7_combout\,
	datad => \clk|LessThan0~6_combout\,
	combout => \clk|LessThan0~8_combout\);

-- Location: LCCOMB_X14_Y9_N20
\clk|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk|Add0~52_combout\ = (\clk|contador\(26) & (\clk|Add0~51\ $ (GND))) # (!\clk|contador\(26) & (!\clk|Add0~51\ & VCC))
-- \clk|Add0~53\ = CARRY((\clk|contador\(26) & !\clk|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk|contador\(26),
	datad => VCC,
	cin => \clk|Add0~51\,
	combout => \clk|Add0~52_combout\,
	cout => \clk|Add0~53\);

-- Location: FF_X14_Y9_N21
\clk|contador[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk|contador\(26));

-- Location: LCCOMB_X14_Y9_N22
\clk|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk|Add0~54_combout\ = (\clk|contador\(27) & (!\clk|Add0~53\)) # (!\clk|contador\(27) & ((\clk|Add0~53\) # (GND)))
-- \clk|Add0~55\ = CARRY((!\clk|Add0~53\) # (!\clk|contador\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk|contador\(27),
	datad => VCC,
	cin => \clk|Add0~53\,
	combout => \clk|Add0~54_combout\,
	cout => \clk|Add0~55\);

-- Location: FF_X14_Y9_N23
\clk|contador[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk|contador\(27));

-- Location: LCCOMB_X14_Y9_N24
\clk|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk|Add0~56_combout\ = (\clk|contador\(28) & (\clk|Add0~55\ $ (GND))) # (!\clk|contador\(28) & (!\clk|Add0~55\ & VCC))
-- \clk|Add0~57\ = CARRY((\clk|contador\(28) & !\clk|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk|contador\(28),
	datad => VCC,
	cin => \clk|Add0~55\,
	combout => \clk|Add0~56_combout\,
	cout => \clk|Add0~57\);

-- Location: FF_X14_Y9_N25
\clk|contador[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk|contador\(28));

-- Location: LCCOMB_X14_Y9_N26
\clk|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk|Add0~58_combout\ = (\clk|contador\(29) & (!\clk|Add0~57\)) # (!\clk|contador\(29) & ((\clk|Add0~57\) # (GND)))
-- \clk|Add0~59\ = CARRY((!\clk|Add0~57\) # (!\clk|contador\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk|contador\(29),
	datad => VCC,
	cin => \clk|Add0~57\,
	combout => \clk|Add0~58_combout\,
	cout => \clk|Add0~59\);

-- Location: FF_X14_Y9_N27
\clk|contador[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk|contador\(29));

-- Location: LCCOMB_X14_Y9_N28
\clk|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk|Add0~60_combout\ = (\clk|contador\(30) & (\clk|Add0~59\ $ (GND))) # (!\clk|contador\(30) & (!\clk|Add0~59\ & VCC))
-- \clk|Add0~61\ = CARRY((\clk|contador\(30) & !\clk|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk|contador\(30),
	datad => VCC,
	cin => \clk|Add0~59\,
	combout => \clk|Add0~60_combout\,
	cout => \clk|Add0~61\);

-- Location: FF_X14_Y9_N29
\clk|contador[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk|contador\(30));

-- Location: LCCOMB_X14_Y9_N30
\clk|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk|Add0~62_combout\ = \clk|contador\(31) $ (\clk|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk|contador\(31),
	cin => \clk|Add0~61\,
	combout => \clk|Add0~62_combout\);

-- Location: FF_X14_Y9_N31
\clk|contador[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk|contador\(31));

-- Location: LCCOMB_X13_Y9_N24
\clk|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk|LessThan0~0_combout\ = (!\clk|contador\(26) & (!\clk|contador\(28) & (!\clk|contador\(29) & !\clk|contador\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk|contador\(26),
	datab => \clk|contador\(28),
	datac => \clk|contador\(29),
	datad => \clk|contador\(27),
	combout => \clk|LessThan0~0_combout\);

-- Location: LCCOMB_X13_Y9_N30
\clk|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk|LessThan0~1_combout\ = (!\clk|contador\(30) & (!\clk|contador\(31) & \clk|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk|contador\(30),
	datac => \clk|contador\(31),
	datad => \clk|LessThan0~0_combout\,
	combout => \clk|LessThan0~1_combout\);

-- Location: LCCOMB_X12_Y9_N26
\clk|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk|LessThan0~2_combout\ = (!\clk|contador\(17) & (!\clk|contador\(23) & !\clk|contador\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk|contador\(17),
	datac => \clk|contador\(23),
	datad => \clk|contador\(15),
	combout => \clk|LessThan0~2_combout\);

-- Location: LCCOMB_X12_Y9_N30
\clk|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk|LessThan0~3_combout\ = (((!\clk|contador\(14)) # (!\clk|contador\(12))) # (!\clk|contador\(11))) # (!\clk|contador\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk|contador\(13),
	datab => \clk|contador\(11),
	datac => \clk|contador\(12),
	datad => \clk|contador\(14),
	combout => \clk|LessThan0~3_combout\);

-- Location: LCCOMB_X13_Y10_N24
\clk|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk|LessThan0~4_combout\ = (!\clk|contador\(8) & (!\clk|contador\(9) & (!\clk|contador\(7) & !\clk|contador\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk|contador\(8),
	datab => \clk|contador\(9),
	datac => \clk|contador\(7),
	datad => \clk|contador\(6),
	combout => \clk|LessThan0~4_combout\);

-- Location: LCCOMB_X12_Y9_N18
\clk|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk|LessThan0~5_combout\ = (\clk|LessThan0~2_combout\ & ((\clk|LessThan0~3_combout\) # ((!\clk|contador\(10) & \clk|LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk|LessThan0~2_combout\,
	datab => \clk|contador\(10),
	datac => \clk|LessThan0~3_combout\,
	datad => \clk|LessThan0~4_combout\,
	combout => \clk|LessThan0~5_combout\);

-- Location: LCCOMB_X12_Y9_N14
\clk|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk|LessThan0~9_combout\ = (!\clk|contador\(25) & (\clk|LessThan0~1_combout\ & ((\clk|LessThan0~8_combout\) # (\clk|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk|LessThan0~8_combout\,
	datab => \clk|contador\(25),
	datac => \clk|LessThan0~1_combout\,
	datad => \clk|LessThan0~5_combout\,
	combout => \clk|LessThan0~9_combout\);

-- Location: LCCOMB_X13_Y9_N8
\clk|contador~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk|contador~8_combout\ = (\clk|Add0~38_combout\ & ((\clk|LessThan0~9_combout\) # ((\clk|Equal0~2_combout\) # (\clk|Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk|LessThan0~9_combout\,
	datab => \clk|Equal0~2_combout\,
	datac => \clk|Equal0~8_combout\,
	datad => \clk|Add0~38_combout\,
	combout => \clk|contador~8_combout\);

-- Location: FF_X13_Y9_N9
\clk|contador[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk|contador~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk|contador\(19));

-- Location: LCCOMB_X13_Y9_N22
\clk|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk|Equal0~0_combout\ = (((\clk|contador\(5)) # (!\clk|contador\(22))) # (!\clk|contador\(21))) # (!\clk|contador\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk|contador\(19),
	datab => \clk|contador\(21),
	datac => \clk|contador\(5),
	datad => \clk|contador\(22),
	combout => \clk|Equal0~0_combout\);

-- Location: LCCOMB_X13_Y10_N30
\clk|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk|Equal0~1_combout\ = (\clk|contador\(7)) # ((\clk|contador\(8)) # ((!\clk|contador\(13)) # (!\clk|contador\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk|contador\(7),
	datab => \clk|contador\(8),
	datac => \clk|contador\(11),
	datad => \clk|contador\(13),
	combout => \clk|Equal0~1_combout\);

-- Location: LCCOMB_X13_Y9_N20
\clk|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk|Equal0~2_combout\ = (\clk|Equal0~0_combout\) # ((\clk|Equal0~1_combout\) # (!\clk|LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk|Equal0~0_combout\,
	datac => \clk|LessThan0~1_combout\,
	datad => \clk|Equal0~1_combout\,
	combout => \clk|Equal0~2_combout\);

-- Location: LCCOMB_X12_Y9_N20
\clk|clkout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk|clkout~0_combout\ = (\clk|LessThan0~9_combout\) # ((!\clk|Equal0~2_combout\ & (\clk|clkout~q\ & !\clk|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk|Equal0~2_combout\,
	datab => \clk|clkout~q\,
	datac => \clk|LessThan0~9_combout\,
	datad => \clk|Equal0~8_combout\,
	combout => \clk|clkout~0_combout\);

-- Location: LCCOMB_X12_Y9_N24
\clk|clkout~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk|clkout~feeder_combout\ = \clk|clkout~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk|clkout~0_combout\,
	combout => \clk|clkout~feeder_combout\);

-- Location: FF_X12_Y9_N25
\clk|clkout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk|clkout~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk|clkout~q\);

-- Location: CLKCTRL_G0
\clk|clkout~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk|clkout~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk|clkout~clkctrl_outclk\);

-- Location: IOIBUF_X21_Y0_N8
\A~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

-- Location: IOIBUF_X23_Y0_N8
\B~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);

-- Location: LCCOMB_X33_Y4_N2
\jk|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \jk|process_0~1_combout\ = (\A~input_o\) # (!\B~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A~input_o\,
	datad => \B~input_o\,
	combout => \jk|process_0~1_combout\);

-- Location: LCCOMB_X33_Y4_N22
\jk|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \jk|process_0~0_combout\ = (\A~input_o\) # (\B~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A~input_o\,
	datad => \B~input_o\,
	combout => \jk|process_0~0_combout\);

-- Location: FF_X33_Y4_N3
\sr|tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk|clkout~clkctrl_outclk\,
	d => \jk|process_0~1_combout\,
	ena => \jk|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sr|tmp~q\);

-- Location: LCCOMB_X33_Y4_N12
\jk|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \jk|process_0~2_combout\ = (!\B~input_o\) # (!\A~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A~input_o\,
	datad => \B~input_o\,
	combout => \jk|process_0~2_combout\);

-- Location: FF_X33_Y4_N13
\sr|tmp~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk|clkout~clkctrl_outclk\,
	d => \jk|process_0~2_combout\,
	ena => \jk|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sr|tmp~en_q\);

-- Location: LCCOMB_X33_Y4_N24
\jk|TMP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \jk|TMP~0_combout\ = ((\A~input_o\ & !\jk|TMP~q\)) # (!\B~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~input_o\,
	datac => \jk|TMP~q\,
	datad => \B~input_o\,
	combout => \jk|TMP~0_combout\);

-- Location: FF_X33_Y4_N25
\jk|TMP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk|clkout~clkctrl_outclk\,
	d => \jk|TMP~0_combout\,
	ena => \jk|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jk|TMP~q\);

-- Location: LCCOMB_X33_Y4_N14
\t|tmp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t|tmp~0_combout\ = \A~input_o\ $ (\t|tmp~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~input_o\,
	datac => \t|tmp~q\,
	combout => \t|tmp~0_combout\);

-- Location: FF_X33_Y4_N15
\t|tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk|clkout~clkctrl_outclk\,
	d => \t|tmp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t|tmp~q\);

-- Location: LCCOMB_X33_Y4_N4
\d|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \d|Q~feeder_combout\ = \A~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A~input_o\,
	combout => \d|Q~feeder_combout\);

-- Location: FF_X33_Y4_N5
\d|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk|clkout~clkctrl_outclk\,
	d => \d|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|Q~q\);

ww_Q(0) <= \Q[0]~output_o\;

ww_Q(1) <= \Q[1]~output_o\;

ww_Q(2) <= \Q[2]~output_o\;

ww_Q(3) <= \Q[3]~output_o\;
END structure;


