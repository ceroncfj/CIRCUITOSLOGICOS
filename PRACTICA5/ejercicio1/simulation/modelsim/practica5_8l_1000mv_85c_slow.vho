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

-- DATE "12/04/2022 22:58:47"

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

ENTITY 	practica5 IS
    PORT (
	clk50M : IN std_logic;
	ledout : OUT std_logic_vector(7 DOWNTO 0)
	);
END practica5;

-- Design Ports Information
-- ledout[0]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledout[1]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledout[2]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledout[3]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledout[4]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledout[5]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledout[6]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledout[7]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk50M	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF practica5 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk50M : std_logic;
SIGNAL ww_ledout : std_logic_vector(7 DOWNTO 0);
SIGNAL \u1|clkout~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk50M~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ledout[0]~output_o\ : std_logic;
SIGNAL \ledout[1]~output_o\ : std_logic;
SIGNAL \ledout[2]~output_o\ : std_logic;
SIGNAL \ledout[3]~output_o\ : std_logic;
SIGNAL \ledout[4]~output_o\ : std_logic;
SIGNAL \ledout[5]~output_o\ : std_logic;
SIGNAL \ledout[6]~output_o\ : std_logic;
SIGNAL \ledout[7]~output_o\ : std_logic;
SIGNAL \clk50M~input_o\ : std_logic;
SIGNAL \clk50M~inputclkctrl_outclk\ : std_logic;
SIGNAL \u1|Add0~1\ : std_logic;
SIGNAL \u1|Add0~2_combout\ : std_logic;
SIGNAL \u1|Add0~3\ : std_logic;
SIGNAL \u1|Add0~4_combout\ : std_logic;
SIGNAL \u1|Add0~5\ : std_logic;
SIGNAL \u1|Add0~6_combout\ : std_logic;
SIGNAL \u1|Add0~7\ : std_logic;
SIGNAL \u1|Add0~8_combout\ : std_logic;
SIGNAL \u1|Add0~9\ : std_logic;
SIGNAL \u1|Add0~10_combout\ : std_logic;
SIGNAL \u1|Add0~11\ : std_logic;
SIGNAL \u1|Add0~12_combout\ : std_logic;
SIGNAL \u1|Add0~13\ : std_logic;
SIGNAL \u1|Add0~14_combout\ : std_logic;
SIGNAL \u1|Add0~15\ : std_logic;
SIGNAL \u1|Add0~16_combout\ : std_logic;
SIGNAL \u1|contador~6_combout\ : std_logic;
SIGNAL \u1|Add0~17\ : std_logic;
SIGNAL \u1|Add0~18_combout\ : std_logic;
SIGNAL \u1|contador~4_combout\ : std_logic;
SIGNAL \u1|Add0~19\ : std_logic;
SIGNAL \u1|Add0~20_combout\ : std_logic;
SIGNAL \u1|Add0~21\ : std_logic;
SIGNAL \u1|Add0~22_combout\ : std_logic;
SIGNAL \u1|contador~3_combout\ : std_logic;
SIGNAL \u1|Equal0~3_combout\ : std_logic;
SIGNAL \u1|Add0~23\ : std_logic;
SIGNAL \u1|Add0~24_combout\ : std_logic;
SIGNAL \u1|Add0~25\ : std_logic;
SIGNAL \u1|Add0~26_combout\ : std_logic;
SIGNAL \u1|Add0~27\ : std_logic;
SIGNAL \u1|Add0~28_combout\ : std_logic;
SIGNAL \u1|contador~7_combout\ : std_logic;
SIGNAL \u1|Add0~29\ : std_logic;
SIGNAL \u1|Add0~30_combout\ : std_logic;
SIGNAL \u1|Add0~31\ : std_logic;
SIGNAL \u1|Add0~32_combout\ : std_logic;
SIGNAL \u1|Add0~33\ : std_logic;
SIGNAL \u1|Add0~34_combout\ : std_logic;
SIGNAL \u1|Add0~35\ : std_logic;
SIGNAL \u1|Add0~36_combout\ : std_logic;
SIGNAL \u1|contador~8_combout\ : std_logic;
SIGNAL \u1|Add0~37\ : std_logic;
SIGNAL \u1|Add0~38_combout\ : std_logic;
SIGNAL \u1|contador~2_combout\ : std_logic;
SIGNAL \u1|Add0~39\ : std_logic;
SIGNAL \u1|Add0~40_combout\ : std_logic;
SIGNAL \u1|Equal0~1_combout\ : std_logic;
SIGNAL \u1|Add0~41\ : std_logic;
SIGNAL \u1|Add0~42_combout\ : std_logic;
SIGNAL \u1|Add0~43\ : std_logic;
SIGNAL \u1|Add0~45\ : std_logic;
SIGNAL \u1|Add0~46_combout\ : std_logic;
SIGNAL \u1|Equal0~0_combout\ : std_logic;
SIGNAL \u1|Equal0~2_combout\ : std_logic;
SIGNAL \u1|Equal0~4_combout\ : std_logic;
SIGNAL \u1|contador~5_combout\ : std_logic;
SIGNAL \u1|Equal0~5_combout\ : std_logic;
SIGNAL \u1|Add0~0_combout\ : std_logic;
SIGNAL \u1|contador~9_combout\ : std_logic;
SIGNAL \u1|Equal0~6_combout\ : std_logic;
SIGNAL \u1|Add0~44_combout\ : std_logic;
SIGNAL \u1|contador~10_combout\ : std_logic;
SIGNAL \u1|clkout~0_combout\ : std_logic;
SIGNAL \u1|clkout~1_combout\ : std_logic;
SIGNAL \u1|LessThan0~1_combout\ : std_logic;
SIGNAL \u1|LessThan0~2_combout\ : std_logic;
SIGNAL \u1|LessThan0~0_combout\ : std_logic;
SIGNAL \u1|LessThan0~3_combout\ : std_logic;
SIGNAL \u1|LessThan0~4_combout\ : std_logic;
SIGNAL \u1|Equal0~7_combout\ : std_logic;
SIGNAL \u1|clkout~2_combout\ : std_logic;
SIGNAL \u1|clkout~feeder_combout\ : std_logic;
SIGNAL \u1|clkout~q\ : std_logic;
SIGNAL \u1|clkout~clkctrl_outclk\ : std_logic;
SIGNAL \contador[0]~21_combout\ : std_logic;
SIGNAL \contador[1]~7_combout\ : std_logic;
SIGNAL \contador[1]~8\ : std_logic;
SIGNAL \contador[2]~9_combout\ : std_logic;
SIGNAL \contador[2]~10\ : std_logic;
SIGNAL \contador[3]~11_combout\ : std_logic;
SIGNAL \contador[3]~12\ : std_logic;
SIGNAL \contador[4]~13_combout\ : std_logic;
SIGNAL \contador[4]~14\ : std_logic;
SIGNAL \contador[5]~15_combout\ : std_logic;
SIGNAL \contador[5]~16\ : std_logic;
SIGNAL \contador[6]~17_combout\ : std_logic;
SIGNAL \contador[6]~18\ : std_logic;
SIGNAL \contador[7]~19_combout\ : std_logic;
SIGNAL contador : std_logic_vector(7 DOWNTO 0);
SIGNAL \u1|contador\ : std_logic_vector(23 DOWNTO 0);

BEGIN

ww_clk50M <= clk50M;
ledout <= ww_ledout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\u1|clkout~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u1|clkout~q\);

\clk50M~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk50M~input_o\);

-- Location: IOOBUF_X34_Y9_N16
\ledout[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contador(0),
	devoe => ww_devoe,
	o => \ledout[0]~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\ledout[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contador(1),
	devoe => ww_devoe,
	o => \ledout[1]~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\ledout[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contador(2),
	devoe => ww_devoe,
	o => \ledout[2]~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\ledout[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contador(3),
	devoe => ww_devoe,
	o => \ledout[3]~output_o\);

-- Location: IOOBUF_X34_Y7_N9
\ledout[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contador(4),
	devoe => ww_devoe,
	o => \ledout[4]~output_o\);

-- Location: IOOBUF_X34_Y4_N23
\ledout[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contador(5),
	devoe => ww_devoe,
	o => \ledout[5]~output_o\);

-- Location: IOOBUF_X34_Y2_N16
\ledout[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contador(6),
	devoe => ww_devoe,
	o => \ledout[6]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\ledout[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contador(7),
	devoe => ww_devoe,
	o => \ledout[7]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk50M~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk50M,
	o => \clk50M~input_o\);

-- Location: CLKCTRL_G2
\clk50M~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk50M~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk50M~inputclkctrl_outclk\);

-- Location: LCCOMB_X8_Y7_N8
\u1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add0~0_combout\ = \u1|contador\(0) $ (VCC)
-- \u1|Add0~1\ = CARRY(\u1|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(0),
	datad => VCC,
	combout => \u1|Add0~0_combout\,
	cout => \u1|Add0~1\);

-- Location: LCCOMB_X8_Y7_N10
\u1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add0~2_combout\ = (\u1|contador\(1) & (!\u1|Add0~1\)) # (!\u1|contador\(1) & ((\u1|Add0~1\) # (GND)))
-- \u1|Add0~3\ = CARRY((!\u1|Add0~1\) # (!\u1|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(1),
	datad => VCC,
	cin => \u1|Add0~1\,
	combout => \u1|Add0~2_combout\,
	cout => \u1|Add0~3\);

-- Location: FF_X8_Y7_N11
\u1|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \u1|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(1));

-- Location: LCCOMB_X8_Y7_N12
\u1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add0~4_combout\ = (\u1|contador\(2) & (\u1|Add0~3\ $ (GND))) # (!\u1|contador\(2) & (!\u1|Add0~3\ & VCC))
-- \u1|Add0~5\ = CARRY((\u1|contador\(2) & !\u1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(2),
	datad => VCC,
	cin => \u1|Add0~3\,
	combout => \u1|Add0~4_combout\,
	cout => \u1|Add0~5\);

-- Location: FF_X8_Y7_N13
\u1|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \u1|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(2));

-- Location: LCCOMB_X8_Y7_N14
\u1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add0~6_combout\ = (\u1|contador\(3) & (!\u1|Add0~5\)) # (!\u1|contador\(3) & ((\u1|Add0~5\) # (GND)))
-- \u1|Add0~7\ = CARRY((!\u1|Add0~5\) # (!\u1|contador\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|contador\(3),
	datad => VCC,
	cin => \u1|Add0~5\,
	combout => \u1|Add0~6_combout\,
	cout => \u1|Add0~7\);

-- Location: FF_X8_Y7_N15
\u1|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \u1|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(3));

-- Location: LCCOMB_X8_Y7_N16
\u1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add0~8_combout\ = (\u1|contador\(4) & (\u1|Add0~7\ $ (GND))) # (!\u1|contador\(4) & (!\u1|Add0~7\ & VCC))
-- \u1|Add0~9\ = CARRY((\u1|contador\(4) & !\u1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|contador\(4),
	datad => VCC,
	cin => \u1|Add0~7\,
	combout => \u1|Add0~8_combout\,
	cout => \u1|Add0~9\);

-- Location: FF_X8_Y7_N17
\u1|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \u1|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(4));

-- Location: LCCOMB_X8_Y7_N18
\u1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add0~10_combout\ = (\u1|contador\(5) & (!\u1|Add0~9\)) # (!\u1|contador\(5) & ((\u1|Add0~9\) # (GND)))
-- \u1|Add0~11\ = CARRY((!\u1|Add0~9\) # (!\u1|contador\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|contador\(5),
	datad => VCC,
	cin => \u1|Add0~9\,
	combout => \u1|Add0~10_combout\,
	cout => \u1|Add0~11\);

-- Location: FF_X8_Y7_N19
\u1|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \u1|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(5));

-- Location: LCCOMB_X8_Y7_N20
\u1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add0~12_combout\ = (\u1|contador\(6) & (\u1|Add0~11\ $ (GND))) # (!\u1|contador\(6) & (!\u1|Add0~11\ & VCC))
-- \u1|Add0~13\ = CARRY((\u1|contador\(6) & !\u1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|contador\(6),
	datad => VCC,
	cin => \u1|Add0~11\,
	combout => \u1|Add0~12_combout\,
	cout => \u1|Add0~13\);

-- Location: LCCOMB_X8_Y7_N22
\u1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add0~14_combout\ = (\u1|contador\(7) & (!\u1|Add0~13\)) # (!\u1|contador\(7) & ((\u1|Add0~13\) # (GND)))
-- \u1|Add0~15\ = CARRY((!\u1|Add0~13\) # (!\u1|contador\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(7),
	datad => VCC,
	cin => \u1|Add0~13\,
	combout => \u1|Add0~14_combout\,
	cout => \u1|Add0~15\);

-- Location: FF_X8_Y7_N23
\u1|contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \u1|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(7));

-- Location: LCCOMB_X8_Y7_N24
\u1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add0~16_combout\ = (\u1|contador\(8) & (\u1|Add0~15\ $ (GND))) # (!\u1|contador\(8) & (!\u1|Add0~15\ & VCC))
-- \u1|Add0~17\ = CARRY((\u1|contador\(8) & !\u1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(8),
	datad => VCC,
	cin => \u1|Add0~15\,
	combout => \u1|Add0~16_combout\,
	cout => \u1|Add0~17\);

-- Location: LCCOMB_X7_Y7_N10
\u1|contador~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|contador~6_combout\ = (\u1|Add0~16_combout\ & (((!\u1|Equal0~6_combout\) # (!\u1|Equal0~4_combout\)) # (!\u1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Equal0~5_combout\,
	datab => \u1|Equal0~4_combout\,
	datac => \u1|Equal0~6_combout\,
	datad => \u1|Add0~16_combout\,
	combout => \u1|contador~6_combout\);

-- Location: FF_X7_Y7_N11
\u1|contador[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \u1|contador~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(8));

-- Location: LCCOMB_X8_Y7_N26
\u1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add0~18_combout\ = (\u1|contador\(9) & (!\u1|Add0~17\)) # (!\u1|contador\(9) & ((\u1|Add0~17\) # (GND)))
-- \u1|Add0~19\ = CARRY((!\u1|Add0~17\) # (!\u1|contador\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|contador\(9),
	datad => VCC,
	cin => \u1|Add0~17\,
	combout => \u1|Add0~18_combout\,
	cout => \u1|Add0~19\);

-- Location: LCCOMB_X8_Y7_N2
\u1|contador~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|contador~4_combout\ = (\u1|Add0~18_combout\ & (((!\u1|Equal0~4_combout\) # (!\u1|Equal0~5_combout\)) # (!\u1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Equal0~6_combout\,
	datab => \u1|Equal0~5_combout\,
	datac => \u1|Add0~18_combout\,
	datad => \u1|Equal0~4_combout\,
	combout => \u1|contador~4_combout\);

-- Location: FF_X8_Y7_N3
\u1|contador[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \u1|contador~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(9));

-- Location: LCCOMB_X8_Y7_N28
\u1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add0~20_combout\ = (\u1|contador\(10) & (\u1|Add0~19\ $ (GND))) # (!\u1|contador\(10) & (!\u1|Add0~19\ & VCC))
-- \u1|Add0~21\ = CARRY((\u1|contador\(10) & !\u1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|contador\(10),
	datad => VCC,
	cin => \u1|Add0~19\,
	combout => \u1|Add0~20_combout\,
	cout => \u1|Add0~21\);

-- Location: FF_X8_Y7_N29
\u1|contador[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \u1|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(10));

-- Location: LCCOMB_X8_Y7_N30
\u1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add0~22_combout\ = (\u1|contador\(11) & (!\u1|Add0~21\)) # (!\u1|contador\(11) & ((\u1|Add0~21\) # (GND)))
-- \u1|Add0~23\ = CARRY((!\u1|Add0~21\) # (!\u1|contador\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|contador\(11),
	datad => VCC,
	cin => \u1|Add0~21\,
	combout => \u1|Add0~22_combout\,
	cout => \u1|Add0~23\);

-- Location: LCCOMB_X8_Y7_N4
\u1|contador~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|contador~3_combout\ = (\u1|Add0~22_combout\ & (((!\u1|Equal0~4_combout\) # (!\u1|Equal0~5_combout\)) # (!\u1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Equal0~6_combout\,
	datab => \u1|Equal0~5_combout\,
	datac => \u1|Add0~22_combout\,
	datad => \u1|Equal0~4_combout\,
	combout => \u1|contador~3_combout\);

-- Location: FF_X8_Y7_N5
\u1|contador[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \u1|contador~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(11));

-- Location: LCCOMB_X7_Y7_N22
\u1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Equal0~3_combout\ = (\u1|contador\(8) & (!\u1|contador\(10) & (\u1|contador\(9) & \u1|contador\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(8),
	datab => \u1|contador\(10),
	datac => \u1|contador\(9),
	datad => \u1|contador\(11),
	combout => \u1|Equal0~3_combout\);

-- Location: LCCOMB_X8_Y6_N0
\u1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add0~24_combout\ = (\u1|contador\(12) & (\u1|Add0~23\ $ (GND))) # (!\u1|contador\(12) & (!\u1|Add0~23\ & VCC))
-- \u1|Add0~25\ = CARRY((\u1|contador\(12) & !\u1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|contador\(12),
	datad => VCC,
	cin => \u1|Add0~23\,
	combout => \u1|Add0~24_combout\,
	cout => \u1|Add0~25\);

-- Location: FF_X8_Y6_N1
\u1|contador[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \u1|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(12));

-- Location: LCCOMB_X8_Y6_N2
\u1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add0~26_combout\ = (\u1|contador\(13) & (!\u1|Add0~25\)) # (!\u1|contador\(13) & ((\u1|Add0~25\) # (GND)))
-- \u1|Add0~27\ = CARRY((!\u1|Add0~25\) # (!\u1|contador\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|contador\(13),
	datad => VCC,
	cin => \u1|Add0~25\,
	combout => \u1|Add0~26_combout\,
	cout => \u1|Add0~27\);

-- Location: FF_X8_Y6_N3
\u1|contador[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \u1|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(13));

-- Location: LCCOMB_X8_Y6_N4
\u1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add0~28_combout\ = (\u1|contador\(14) & (\u1|Add0~27\ $ (GND))) # (!\u1|contador\(14) & (!\u1|Add0~27\ & VCC))
-- \u1|Add0~29\ = CARRY((\u1|contador\(14) & !\u1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|contador\(14),
	datad => VCC,
	cin => \u1|Add0~27\,
	combout => \u1|Add0~28_combout\,
	cout => \u1|Add0~29\);

-- Location: LCCOMB_X8_Y6_N28
\u1|contador~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|contador~7_combout\ = (\u1|Add0~28_combout\ & (((!\u1|Equal0~4_combout\) # (!\u1|Equal0~5_combout\)) # (!\u1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Equal0~6_combout\,
	datab => \u1|Equal0~5_combout\,
	datac => \u1|Add0~28_combout\,
	datad => \u1|Equal0~4_combout\,
	combout => \u1|contador~7_combout\);

-- Location: FF_X8_Y6_N29
\u1|contador[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \u1|contador~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(14));

-- Location: LCCOMB_X8_Y6_N6
\u1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add0~30_combout\ = (\u1|contador\(15) & (!\u1|Add0~29\)) # (!\u1|contador\(15) & ((\u1|Add0~29\) # (GND)))
-- \u1|Add0~31\ = CARRY((!\u1|Add0~29\) # (!\u1|contador\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(15),
	datad => VCC,
	cin => \u1|Add0~29\,
	combout => \u1|Add0~30_combout\,
	cout => \u1|Add0~31\);

-- Location: FF_X8_Y6_N7
\u1|contador[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \u1|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(15));

-- Location: LCCOMB_X8_Y6_N8
\u1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add0~32_combout\ = (\u1|contador\(16) & (\u1|Add0~31\ $ (GND))) # (!\u1|contador\(16) & (!\u1|Add0~31\ & VCC))
-- \u1|Add0~33\ = CARRY((\u1|contador\(16) & !\u1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|contador\(16),
	datad => VCC,
	cin => \u1|Add0~31\,
	combout => \u1|Add0~32_combout\,
	cout => \u1|Add0~33\);

-- Location: FF_X8_Y6_N9
\u1|contador[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \u1|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(16));

-- Location: LCCOMB_X8_Y6_N10
\u1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add0~34_combout\ = (\u1|contador\(17) & (!\u1|Add0~33\)) # (!\u1|contador\(17) & ((\u1|Add0~33\) # (GND)))
-- \u1|Add0~35\ = CARRY((!\u1|Add0~33\) # (!\u1|contador\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|contador\(17),
	datad => VCC,
	cin => \u1|Add0~33\,
	combout => \u1|Add0~34_combout\,
	cout => \u1|Add0~35\);

-- Location: FF_X8_Y6_N11
\u1|contador[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \u1|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(17));

-- Location: LCCOMB_X8_Y6_N12
\u1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add0~36_combout\ = (\u1|contador\(18) & (\u1|Add0~35\ $ (GND))) # (!\u1|contador\(18) & (!\u1|Add0~35\ & VCC))
-- \u1|Add0~37\ = CARRY((\u1|contador\(18) & !\u1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(18),
	datad => VCC,
	cin => \u1|Add0~35\,
	combout => \u1|Add0~36_combout\,
	cout => \u1|Add0~37\);

-- Location: LCCOMB_X8_Y6_N26
\u1|contador~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|contador~8_combout\ = (\u1|Add0~36_combout\ & (((!\u1|Equal0~4_combout\) # (!\u1|Equal0~5_combout\)) # (!\u1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Equal0~6_combout\,
	datab => \u1|Equal0~5_combout\,
	datac => \u1|Equal0~4_combout\,
	datad => \u1|Add0~36_combout\,
	combout => \u1|contador~8_combout\);

-- Location: FF_X8_Y6_N27
\u1|contador[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \u1|contador~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(18));

-- Location: LCCOMB_X8_Y6_N14
\u1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add0~38_combout\ = (\u1|contador\(19) & (!\u1|Add0~37\)) # (!\u1|contador\(19) & ((\u1|Add0~37\) # (GND)))
-- \u1|Add0~39\ = CARRY((!\u1|Add0~37\) # (!\u1|contador\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(19),
	datad => VCC,
	cin => \u1|Add0~37\,
	combout => \u1|Add0~38_combout\,
	cout => \u1|Add0~39\);

-- Location: LCCOMB_X8_Y6_N30
\u1|contador~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|contador~2_combout\ = (\u1|Add0~38_combout\ & (((!\u1|Equal0~4_combout\) # (!\u1|Equal0~5_combout\)) # (!\u1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Equal0~6_combout\,
	datab => \u1|Equal0~5_combout\,
	datac => \u1|Add0~38_combout\,
	datad => \u1|Equal0~4_combout\,
	combout => \u1|contador~2_combout\);

-- Location: FF_X8_Y6_N31
\u1|contador[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \u1|contador~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(19));

-- Location: LCCOMB_X8_Y6_N16
\u1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add0~40_combout\ = (\u1|contador\(20) & (\u1|Add0~39\ $ (GND))) # (!\u1|contador\(20) & (!\u1|Add0~39\ & VCC))
-- \u1|Add0~41\ = CARRY((\u1|contador\(20) & !\u1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|contador\(20),
	datad => VCC,
	cin => \u1|Add0~39\,
	combout => \u1|Add0~40_combout\,
	cout => \u1|Add0~41\);

-- Location: FF_X8_Y6_N17
\u1|contador[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \u1|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(20));

-- Location: LCCOMB_X7_Y6_N20
\u1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Equal0~1_combout\ = (\u1|contador\(19) & (!\u1|contador\(20) & (\u1|contador\(22) & \u1|contador\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(19),
	datab => \u1|contador\(20),
	datac => \u1|contador\(22),
	datad => \u1|contador\(18),
	combout => \u1|Equal0~1_combout\);

-- Location: LCCOMB_X8_Y6_N18
\u1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add0~42_combout\ = (\u1|contador\(21) & (!\u1|Add0~41\)) # (!\u1|contador\(21) & ((\u1|Add0~41\) # (GND)))
-- \u1|Add0~43\ = CARRY((!\u1|Add0~41\) # (!\u1|contador\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|contador\(21),
	datad => VCC,
	cin => \u1|Add0~41\,
	combout => \u1|Add0~42_combout\,
	cout => \u1|Add0~43\);

-- Location: FF_X8_Y6_N19
\u1|contador[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \u1|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(21));

-- Location: LCCOMB_X8_Y6_N20
\u1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add0~44_combout\ = (\u1|contador\(22) & (\u1|Add0~43\ $ (GND))) # (!\u1|contador\(22) & (!\u1|Add0~43\ & VCC))
-- \u1|Add0~45\ = CARRY((\u1|contador\(22) & !\u1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(22),
	datad => VCC,
	cin => \u1|Add0~43\,
	combout => \u1|Add0~44_combout\,
	cout => \u1|Add0~45\);

-- Location: LCCOMB_X8_Y6_N22
\u1|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add0~46_combout\ = \u1|contador\(23) $ (\u1|Add0~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(23),
	cin => \u1|Add0~45\,
	combout => \u1|Add0~46_combout\);

-- Location: FF_X8_Y6_N23
\u1|contador[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \u1|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(23));

-- Location: LCCOMB_X7_Y6_N22
\u1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Equal0~0_combout\ = (!\u1|contador\(15) & (!\u1|contador\(23) & (!\u1|contador\(16) & !\u1|contador\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(15),
	datab => \u1|contador\(23),
	datac => \u1|contador\(16),
	datad => \u1|contador\(21),
	combout => \u1|Equal0~0_combout\);

-- Location: LCCOMB_X7_Y6_N26
\u1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Equal0~2_combout\ = (!\u1|contador\(17) & (\u1|contador\(14) & (!\u1|contador\(12) & !\u1|contador\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(17),
	datab => \u1|contador\(14),
	datac => \u1|contador\(12),
	datad => \u1|contador\(13),
	combout => \u1|Equal0~2_combout\);

-- Location: LCCOMB_X7_Y7_N28
\u1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Equal0~4_combout\ = (\u1|Equal0~3_combout\ & (\u1|Equal0~1_combout\ & (\u1|Equal0~0_combout\ & \u1|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Equal0~3_combout\,
	datab => \u1|Equal0~1_combout\,
	datac => \u1|Equal0~0_combout\,
	datad => \u1|Equal0~2_combout\,
	combout => \u1|Equal0~4_combout\);

-- Location: LCCOMB_X8_Y7_N0
\u1|contador~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|contador~5_combout\ = (\u1|Add0~12_combout\ & (((!\u1|Equal0~4_combout\) # (!\u1|Equal0~6_combout\)) # (!\u1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Add0~12_combout\,
	datab => \u1|Equal0~5_combout\,
	datac => \u1|Equal0~6_combout\,
	datad => \u1|Equal0~4_combout\,
	combout => \u1|contador~5_combout\);

-- Location: FF_X8_Y7_N1
\u1|contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \u1|contador~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(6));

-- Location: LCCOMB_X7_Y7_N30
\u1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Equal0~5_combout\ = (!\u1|contador\(4) & (!\u1|contador\(5) & (\u1|contador\(6) & !\u1|contador\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(4),
	datab => \u1|contador\(5),
	datac => \u1|contador\(6),
	datad => \u1|contador\(7),
	combout => \u1|Equal0~5_combout\);

-- Location: LCCOMB_X8_Y7_N6
\u1|contador~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|contador~9_combout\ = (\u1|Add0~0_combout\ & (((!\u1|Equal0~4_combout\) # (!\u1|Equal0~5_combout\)) # (!\u1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Equal0~6_combout\,
	datab => \u1|Equal0~5_combout\,
	datac => \u1|Add0~0_combout\,
	datad => \u1|Equal0~4_combout\,
	combout => \u1|contador~9_combout\);

-- Location: FF_X8_Y7_N7
\u1|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \u1|contador~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(0));

-- Location: LCCOMB_X7_Y7_N26
\u1|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Equal0~6_combout\ = (!\u1|contador\(0) & (!\u1|contador\(1) & (!\u1|contador\(3) & !\u1|contador\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(0),
	datab => \u1|contador\(1),
	datac => \u1|contador\(3),
	datad => \u1|contador\(2),
	combout => \u1|Equal0~6_combout\);

-- Location: LCCOMB_X8_Y6_N24
\u1|contador~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|contador~10_combout\ = (\u1|Add0~44_combout\ & (((!\u1|Equal0~4_combout\) # (!\u1|Equal0~5_combout\)) # (!\u1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Equal0~6_combout\,
	datab => \u1|Equal0~5_combout\,
	datac => \u1|Equal0~4_combout\,
	datad => \u1|Add0~44_combout\,
	combout => \u1|contador~10_combout\);

-- Location: FF_X8_Y6_N25
\u1|contador[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \u1|contador~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(22));

-- Location: LCCOMB_X7_Y6_N30
\u1|clkout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|clkout~0_combout\ = (\u1|contador\(19)) # ((\u1|contador\(20)) # ((\u1|contador\(18) & \u1|contador\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(19),
	datab => \u1|contador\(18),
	datac => \u1|contador\(17),
	datad => \u1|contador\(20),
	combout => \u1|clkout~0_combout\);

-- Location: LCCOMB_X7_Y6_N4
\u1|clkout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|clkout~1_combout\ = (!\u1|contador\(22) & (!\u1|contador\(23) & ((!\u1|contador\(21)) # (!\u1|clkout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(22),
	datab => \u1|contador\(23),
	datac => \u1|clkout~0_combout\,
	datad => \u1|contador\(21),
	combout => \u1|clkout~1_combout\);

-- Location: LCCOMB_X7_Y7_N18
\u1|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|LessThan0~1_combout\ = (((!\u1|contador\(5) & !\u1|contador\(6))) # (!\u1|contador\(7))) # (!\u1|contador\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(8),
	datab => \u1|contador\(5),
	datac => \u1|contador\(6),
	datad => \u1|contador\(7),
	combout => \u1|LessThan0~1_combout\);

-- Location: LCCOMB_X7_Y7_N8
\u1|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|LessThan0~2_combout\ = (\u1|contador\(11)) # ((\u1|contador\(10) & ((\u1|contador\(9)) # (!\u1|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(11),
	datab => \u1|contador\(10),
	datac => \u1|contador\(9),
	datad => \u1|LessThan0~1_combout\,
	combout => \u1|LessThan0~2_combout\);

-- Location: LCCOMB_X7_Y6_N0
\u1|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|LessThan0~0_combout\ = (\u1|contador\(19)) # ((\u1|contador\(23)) # ((\u1|contador\(22)) # (\u1|contador\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(19),
	datab => \u1|contador\(23),
	datac => \u1|contador\(22),
	datad => \u1|contador\(20),
	combout => \u1|LessThan0~0_combout\);

-- Location: LCCOMB_X7_Y7_N20
\u1|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|LessThan0~3_combout\ = (!\u1|LessThan0~0_combout\ & (((!\u1|contador\(12) & !\u1|LessThan0~2_combout\)) # (!\u1|contador\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(13),
	datab => \u1|contador\(12),
	datac => \u1|LessThan0~2_combout\,
	datad => \u1|LessThan0~0_combout\,
	combout => \u1|LessThan0~3_combout\);

-- Location: LCCOMB_X7_Y7_N14
\u1|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|LessThan0~4_combout\ = (!\u1|contador\(15) & (!\u1|contador\(14) & (!\u1|contador\(16) & \u1|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(15),
	datab => \u1|contador\(14),
	datac => \u1|contador\(16),
	datad => \u1|LessThan0~3_combout\,
	combout => \u1|LessThan0~4_combout\);

-- Location: LCCOMB_X7_Y7_N12
\u1|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Equal0~7_combout\ = (\u1|Equal0~6_combout\ & (\u1|Equal0~5_combout\ & \u1|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Equal0~6_combout\,
	datac => \u1|Equal0~5_combout\,
	datad => \u1|Equal0~4_combout\,
	combout => \u1|Equal0~7_combout\);

-- Location: LCCOMB_X7_Y7_N16
\u1|clkout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|clkout~2_combout\ = (\u1|clkout~1_combout\) # ((\u1|LessThan0~4_combout\) # ((\u1|clkout~q\ & \u1|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|clkout~q\,
	datab => \u1|clkout~1_combout\,
	datac => \u1|LessThan0~4_combout\,
	datad => \u1|Equal0~7_combout\,
	combout => \u1|clkout~2_combout\);

-- Location: LCCOMB_X7_Y7_N24
\u1|clkout~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|clkout~feeder_combout\ = \u1|clkout~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|clkout~2_combout\,
	combout => \u1|clkout~feeder_combout\);

-- Location: FF_X7_Y7_N25
\u1|clkout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \u1|clkout~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|clkout~q\);

-- Location: CLKCTRL_G1
\u1|clkout~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u1|clkout~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u1|clkout~clkctrl_outclk\);

-- Location: LCCOMB_X33_Y9_N24
\contador[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador[0]~21_combout\ = !contador(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => contador(0),
	combout => \contador[0]~21_combout\);

-- Location: FF_X33_Y9_N25
\contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clkout~clkctrl_outclk\,
	d => \contador[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(0));

-- Location: LCCOMB_X33_Y9_N6
\contador[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador[1]~7_combout\ = (contador(1) & (contador(0) $ (VCC))) # (!contador(1) & (contador(0) & VCC))
-- \contador[1]~8\ = CARRY((contador(1) & contador(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(1),
	datab => contador(0),
	datad => VCC,
	combout => \contador[1]~7_combout\,
	cout => \contador[1]~8\);

-- Location: FF_X33_Y9_N7
\contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clkout~clkctrl_outclk\,
	d => \contador[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(1));

-- Location: LCCOMB_X33_Y9_N8
\contador[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador[2]~9_combout\ = (contador(2) & (!\contador[1]~8\)) # (!contador(2) & ((\contador[1]~8\) # (GND)))
-- \contador[2]~10\ = CARRY((!\contador[1]~8\) # (!contador(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(2),
	datad => VCC,
	cin => \contador[1]~8\,
	combout => \contador[2]~9_combout\,
	cout => \contador[2]~10\);

-- Location: FF_X33_Y9_N9
\contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clkout~clkctrl_outclk\,
	d => \contador[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(2));

-- Location: LCCOMB_X33_Y9_N10
\contador[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador[3]~11_combout\ = (contador(3) & (\contador[2]~10\ $ (GND))) # (!contador(3) & (!\contador[2]~10\ & VCC))
-- \contador[3]~12\ = CARRY((contador(3) & !\contador[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(3),
	datad => VCC,
	cin => \contador[2]~10\,
	combout => \contador[3]~11_combout\,
	cout => \contador[3]~12\);

-- Location: FF_X33_Y9_N11
\contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clkout~clkctrl_outclk\,
	d => \contador[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(3));

-- Location: LCCOMB_X33_Y9_N12
\contador[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador[4]~13_combout\ = (contador(4) & (!\contador[3]~12\)) # (!contador(4) & ((\contador[3]~12\) # (GND)))
-- \contador[4]~14\ = CARRY((!\contador[3]~12\) # (!contador(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(4),
	datad => VCC,
	cin => \contador[3]~12\,
	combout => \contador[4]~13_combout\,
	cout => \contador[4]~14\);

-- Location: FF_X33_Y9_N13
\contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clkout~clkctrl_outclk\,
	d => \contador[4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(4));

-- Location: LCCOMB_X33_Y9_N14
\contador[5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador[5]~15_combout\ = (contador(5) & (\contador[4]~14\ $ (GND))) # (!contador(5) & (!\contador[4]~14\ & VCC))
-- \contador[5]~16\ = CARRY((contador(5) & !\contador[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(5),
	datad => VCC,
	cin => \contador[4]~14\,
	combout => \contador[5]~15_combout\,
	cout => \contador[5]~16\);

-- Location: FF_X33_Y9_N15
\contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clkout~clkctrl_outclk\,
	d => \contador[5]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(5));

-- Location: LCCOMB_X33_Y9_N16
\contador[6]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador[6]~17_combout\ = (contador(6) & (!\contador[5]~16\)) # (!contador(6) & ((\contador[5]~16\) # (GND)))
-- \contador[6]~18\ = CARRY((!\contador[5]~16\) # (!contador(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(6),
	datad => VCC,
	cin => \contador[5]~16\,
	combout => \contador[6]~17_combout\,
	cout => \contador[6]~18\);

-- Location: FF_X33_Y9_N17
\contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clkout~clkctrl_outclk\,
	d => \contador[6]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(6));

-- Location: LCCOMB_X33_Y9_N18
\contador[7]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador[7]~19_combout\ = \contador[6]~18\ $ (!contador(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => contador(7),
	cin => \contador[6]~18\,
	combout => \contador[7]~19_combout\);

-- Location: FF_X33_Y9_N19
\contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clkout~clkctrl_outclk\,
	d => \contador[7]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(7));

ww_ledout(0) <= \ledout[0]~output_o\;

ww_ledout(1) <= \ledout[1]~output_o\;

ww_ledout(2) <= \ledout[2]~output_o\;

ww_ledout(3) <= \ledout[3]~output_o\;

ww_ledout(4) <= \ledout[4]~output_o\;

ww_ledout(5) <= \ledout[5]~output_o\;

ww_ledout(6) <= \ledout[6]~output_o\;

ww_ledout(7) <= \ledout[7]~output_o\;
END structure;


