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

-- DATE "12/04/2022 23:50:23"

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

ENTITY 	practica5c IS
    PORT (
	clk50M : IN std_logic;
	bout : OUT std_logic_vector(4 DOWNTO 0);
	start : IN std_logic
	);
END practica5c;

-- Design Ports Information
-- bout[0]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bout[1]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bout[2]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bout[3]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bout[4]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk50M	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF practica5c IS
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
SIGNAL ww_bout : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_start : std_logic;
SIGNAL \u1|clkout~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk50M~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \bout[0]~output_o\ : std_logic;
SIGNAL \bout[1]~output_o\ : std_logic;
SIGNAL \bout[2]~output_o\ : std_logic;
SIGNAL \bout[3]~output_o\ : std_logic;
SIGNAL \bout[4]~output_o\ : std_logic;
SIGNAL \clk50M~input_o\ : std_logic;
SIGNAL \clk50M~inputclkctrl_outclk\ : std_logic;
SIGNAL \u1|Add0~0_combout\ : std_logic;
SIGNAL \u1|contador~13_combout\ : std_logic;
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
SIGNAL \u1|contador~7_combout\ : std_logic;
SIGNAL \u1|Add0~15\ : std_logic;
SIGNAL \u1|Add0~16_combout\ : std_logic;
SIGNAL \u1|Add0~17\ : std_logic;
SIGNAL \u1|Add0~18_combout\ : std_logic;
SIGNAL \u1|Add0~19\ : std_logic;
SIGNAL \u1|Add0~20_combout\ : std_logic;
SIGNAL \u1|Add0~21\ : std_logic;
SIGNAL \u1|Add0~22_combout\ : std_logic;
SIGNAL \u1|Add0~23\ : std_logic;
SIGNAL \u1|Add0~24_combout\ : std_logic;
SIGNAL \u1|contador~4_combout\ : std_logic;
SIGNAL \u1|Add0~25\ : std_logic;
SIGNAL \u1|Add0~26_combout\ : std_logic;
SIGNAL \u1|contador~5_combout\ : std_logic;
SIGNAL \u1|Add0~27\ : std_logic;
SIGNAL \u1|Add0~28_combout\ : std_logic;
SIGNAL \u1|contador~6_combout\ : std_logic;
SIGNAL \u1|Add0~29\ : std_logic;
SIGNAL \u1|Add0~30_combout\ : std_logic;
SIGNAL \u1|contador~1_combout\ : std_logic;
SIGNAL \u1|Add0~31\ : std_logic;
SIGNAL \u1|Add0~32_combout\ : std_logic;
SIGNAL \u1|Add0~33\ : std_logic;
SIGNAL \u1|Add0~34_combout\ : std_logic;
SIGNAL \u1|contador~2_combout\ : std_logic;
SIGNAL \u1|Add0~35\ : std_logic;
SIGNAL \u1|Add0~36_combout\ : std_logic;
SIGNAL \u1|Add0~37\ : std_logic;
SIGNAL \u1|Add0~38_combout\ : std_logic;
SIGNAL \u1|contador~8_combout\ : std_logic;
SIGNAL \u1|Add0~39\ : std_logic;
SIGNAL \u1|Add0~40_combout\ : std_logic;
SIGNAL \u1|contador~9_combout\ : std_logic;
SIGNAL \u1|Add0~41\ : std_logic;
SIGNAL \u1|Add0~42_combout\ : std_logic;
SIGNAL \u1|contador~10_combout\ : std_logic;
SIGNAL \u1|Add0~43\ : std_logic;
SIGNAL \u1|Add0~44_combout\ : std_logic;
SIGNAL \u1|contador~11_combout\ : std_logic;
SIGNAL \u1|Add0~45\ : std_logic;
SIGNAL \u1|Add0~46_combout\ : std_logic;
SIGNAL \u1|contador~3_combout\ : std_logic;
SIGNAL \u1|Add0~47\ : std_logic;
SIGNAL \u1|Add0~48_combout\ : std_logic;
SIGNAL \u1|Equal0~8_combout\ : std_logic;
SIGNAL \u1|Equal0~0_combout\ : std_logic;
SIGNAL \u1|LessThan0~4_combout\ : std_logic;
SIGNAL \u1|Equal0~1_combout\ : std_logic;
SIGNAL \u1|Equal0~3_combout\ : std_logic;
SIGNAL \u1|Equal0~5_combout\ : std_logic;
SIGNAL \u1|Equal0~4_combout\ : std_logic;
SIGNAL \u1|Equal0~2_combout\ : std_logic;
SIGNAL \u1|Equal0~6_combout\ : std_logic;
SIGNAL \u1|contador[14]~0_combout\ : std_logic;
SIGNAL \u1|Add0~49\ : std_logic;
SIGNAL \u1|Add0~50_combout\ : std_logic;
SIGNAL \u1|contador~12_combout\ : std_logic;
SIGNAL \u1|Add0~51\ : std_logic;
SIGNAL \u1|Add0~52_combout\ : std_logic;
SIGNAL \u1|Add0~53\ : std_logic;
SIGNAL \u1|Add0~54_combout\ : std_logic;
SIGNAL \u1|Add0~55\ : std_logic;
SIGNAL \u1|Add0~56_combout\ : std_logic;
SIGNAL \u1|Add0~57\ : std_logic;
SIGNAL \u1|Add0~58_combout\ : std_logic;
SIGNAL \u1|Add0~59\ : std_logic;
SIGNAL \u1|Add0~60_combout\ : std_logic;
SIGNAL \u1|Add0~61\ : std_logic;
SIGNAL \u1|Add0~62_combout\ : std_logic;
SIGNAL \u1|LessThan0~0_combout\ : std_logic;
SIGNAL \u1|LessThan0~1_combout\ : std_logic;
SIGNAL \u1|LessThan0~6_combout\ : std_logic;
SIGNAL \u1|LessThan0~7_combout\ : std_logic;
SIGNAL \u1|LessThan0~2_combout\ : std_logic;
SIGNAL \u1|LessThan0~3_combout\ : std_logic;
SIGNAL \u1|LessThan0~5_combout\ : std_logic;
SIGNAL \u1|LessThan0~8_combout\ : std_logic;
SIGNAL \u1|Equal0~7_combout\ : std_logic;
SIGNAL \u1|clkout~0_combout\ : std_logic;
SIGNAL \u1|clkout~q\ : std_logic;
SIGNAL \u1|clkout~clkctrl_outclk\ : std_logic;
SIGNAL \contador[0]~0_combout\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \contador[1]~1_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL contador : std_logic_vector(2 DOWNTO 0);
SIGNAL \u1|contador\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_start~input_o\ : std_logic;
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL ALT_INV_contador : std_logic_vector(2 DOWNTO 2);

BEGIN

ww_clk50M <= clk50M;
bout <= ww_bout;
ww_start <= start;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\u1|clkout~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u1|clkout~q\);

\clk50M~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk50M~input_o\);
\ALT_INV_start~input_o\ <= NOT \start~input_o\;
\ALT_INV_Mux1~0_combout\ <= NOT \Mux1~0_combout\;
\ALT_INV_Mux3~0_combout\ <= NOT \Mux3~0_combout\;
ALT_INV_contador(2) <= NOT contador(2);

-- Location: IOOBUF_X34_Y10_N9
\bout[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux3~0_combout\,
	devoe => ww_devoe,
	o => \bout[0]~output_o\);

-- Location: IOOBUF_X34_Y4_N23
\bout[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => \bout[1]~output_o\);

-- Location: IOOBUF_X34_Y2_N16
\bout[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => \bout[2]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\bout[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_contador(2),
	devoe => ww_devoe,
	o => \bout[3]~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\bout[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \bout[4]~output_o\);

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

-- Location: LCCOMB_X10_Y14_N0
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

-- Location: LCCOMB_X11_Y14_N20
\u1|contador~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|contador~13_combout\ = (\u1|Add0~0_combout\ & \u1|contador[14]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|Add0~0_combout\,
	datad => \u1|contador[14]~0_combout\,
	combout => \u1|contador~13_combout\);

-- Location: FF_X11_Y14_N21
\u1|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \u1|contador~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(0));

-- Location: LCCOMB_X10_Y14_N2
\u1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add0~2_combout\ = (\u1|contador\(1) & (!\u1|Add0~1\)) # (!\u1|contador\(1) & ((\u1|Add0~1\) # (GND)))
-- \u1|Add0~3\ = CARRY((!\u1|Add0~1\) # (!\u1|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|contador\(1),
	datad => VCC,
	cin => \u1|Add0~1\,
	combout => \u1|Add0~2_combout\,
	cout => \u1|Add0~3\);

-- Location: FF_X10_Y14_N3
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

-- Location: LCCOMB_X10_Y14_N4
\u1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add0~4_combout\ = (\u1|contador\(2) & (\u1|Add0~3\ $ (GND))) # (!\u1|contador\(2) & (!\u1|Add0~3\ & VCC))
-- \u1|Add0~5\ = CARRY((\u1|contador\(2) & !\u1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|contador\(2),
	datad => VCC,
	cin => \u1|Add0~3\,
	combout => \u1|Add0~4_combout\,
	cout => \u1|Add0~5\);

-- Location: FF_X10_Y14_N5
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

-- Location: LCCOMB_X10_Y14_N6
\u1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add0~6_combout\ = (\u1|contador\(3) & (!\u1|Add0~5\)) # (!\u1|contador\(3) & ((\u1|Add0~5\) # (GND)))
-- \u1|Add0~7\ = CARRY((!\u1|Add0~5\) # (!\u1|contador\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(3),
	datad => VCC,
	cin => \u1|Add0~5\,
	combout => \u1|Add0~6_combout\,
	cout => \u1|Add0~7\);

-- Location: FF_X10_Y14_N7
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

-- Location: LCCOMB_X10_Y14_N8
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

-- Location: FF_X10_Y14_N9
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

-- Location: LCCOMB_X10_Y14_N10
\u1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add0~10_combout\ = (\u1|contador\(5) & (!\u1|Add0~9\)) # (!\u1|contador\(5) & ((\u1|Add0~9\) # (GND)))
-- \u1|Add0~11\ = CARRY((!\u1|Add0~9\) # (!\u1|contador\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(5),
	datad => VCC,
	cin => \u1|Add0~9\,
	combout => \u1|Add0~10_combout\,
	cout => \u1|Add0~11\);

-- Location: FF_X10_Y14_N11
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

-- Location: LCCOMB_X10_Y14_N12
\u1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add0~12_combout\ = (\u1|contador\(6) & (\u1|Add0~11\ $ (GND))) # (!\u1|contador\(6) & (!\u1|Add0~11\ & VCC))
-- \u1|Add0~13\ = CARRY((\u1|contador\(6) & !\u1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(6),
	datad => VCC,
	cin => \u1|Add0~11\,
	combout => \u1|Add0~12_combout\,
	cout => \u1|Add0~13\);

-- Location: FF_X10_Y14_N13
\u1|contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \u1|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(6));

-- Location: LCCOMB_X10_Y14_N14
\u1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add0~14_combout\ = (\u1|contador\(7) & (!\u1|Add0~13\)) # (!\u1|contador\(7) & ((\u1|Add0~13\) # (GND)))
-- \u1|Add0~15\ = CARRY((!\u1|Add0~13\) # (!\u1|contador\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|contador\(7),
	datad => VCC,
	cin => \u1|Add0~13\,
	combout => \u1|Add0~14_combout\,
	cout => \u1|Add0~15\);

-- Location: LCCOMB_X11_Y13_N0
\u1|contador~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|contador~7_combout\ = (\u1|Add0~14_combout\ & \u1|contador[14]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Add0~14_combout\,
	datac => \u1|contador[14]~0_combout\,
	combout => \u1|contador~7_combout\);

-- Location: FF_X11_Y13_N1
\u1|contador[7]\ : dffeas
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
	q => \u1|contador\(7));

-- Location: LCCOMB_X10_Y14_N16
\u1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add0~16_combout\ = (\u1|contador\(8) & (\u1|Add0~15\ $ (GND))) # (!\u1|contador\(8) & (!\u1|Add0~15\ & VCC))
-- \u1|Add0~17\ = CARRY((\u1|contador\(8) & !\u1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|contador\(8),
	datad => VCC,
	cin => \u1|Add0~15\,
	combout => \u1|Add0~16_combout\,
	cout => \u1|Add0~17\);

-- Location: FF_X10_Y14_N17
\u1|contador[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \u1|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(8));

-- Location: LCCOMB_X10_Y14_N18
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

-- Location: FF_X10_Y14_N19
\u1|contador[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \u1|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(9));

-- Location: LCCOMB_X10_Y14_N20
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

-- Location: FF_X10_Y14_N21
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

-- Location: LCCOMB_X10_Y14_N22
\u1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add0~22_combout\ = (\u1|contador\(11) & (!\u1|Add0~21\)) # (!\u1|contador\(11) & ((\u1|Add0~21\) # (GND)))
-- \u1|Add0~23\ = CARRY((!\u1|Add0~21\) # (!\u1|contador\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(11),
	datad => VCC,
	cin => \u1|Add0~21\,
	combout => \u1|Add0~22_combout\,
	cout => \u1|Add0~23\);

-- Location: FF_X10_Y14_N23
\u1|contador[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \u1|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(11));

-- Location: LCCOMB_X10_Y14_N24
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

-- Location: LCCOMB_X11_Y14_N18
\u1|contador~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|contador~4_combout\ = (\u1|Add0~24_combout\ & \u1|contador[14]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|Add0~24_combout\,
	datac => \u1|contador[14]~0_combout\,
	combout => \u1|contador~4_combout\);

-- Location: FF_X11_Y14_N19
\u1|contador[12]\ : dffeas
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
	q => \u1|contador\(12));

-- Location: LCCOMB_X10_Y14_N26
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

-- Location: LCCOMB_X11_Y14_N12
\u1|contador~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|contador~5_combout\ = (\u1|Add0~26_combout\ & \u1|contador[14]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|Add0~26_combout\,
	datad => \u1|contador[14]~0_combout\,
	combout => \u1|contador~5_combout\);

-- Location: FF_X11_Y14_N13
\u1|contador[13]\ : dffeas
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
	q => \u1|contador\(13));

-- Location: LCCOMB_X10_Y14_N28
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

-- Location: LCCOMB_X11_Y14_N14
\u1|contador~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|contador~6_combout\ = (\u1|Add0~28_combout\ & \u1|contador[14]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|Add0~28_combout\,
	datac => \u1|contador[14]~0_combout\,
	combout => \u1|contador~6_combout\);

-- Location: FF_X11_Y14_N15
\u1|contador[14]\ : dffeas
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
	q => \u1|contador\(14));

-- Location: LCCOMB_X10_Y14_N30
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

-- Location: LCCOMB_X11_Y14_N4
\u1|contador~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|contador~1_combout\ = (\u1|Add0~30_combout\ & \u1|contador[14]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|Add0~30_combout\,
	datad => \u1|contador[14]~0_combout\,
	combout => \u1|contador~1_combout\);

-- Location: FF_X11_Y14_N5
\u1|contador[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \u1|contador~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(15));

-- Location: LCCOMB_X10_Y13_N0
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

-- Location: FF_X10_Y13_N1
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

-- Location: LCCOMB_X10_Y13_N2
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

-- Location: LCCOMB_X11_Y13_N18
\u1|contador~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|contador~2_combout\ = (\u1|contador[14]~0_combout\ & \u1|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|contador[14]~0_combout\,
	datad => \u1|Add0~34_combout\,
	combout => \u1|contador~2_combout\);

-- Location: FF_X11_Y13_N19
\u1|contador[17]\ : dffeas
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
	q => \u1|contador\(17));

-- Location: LCCOMB_X10_Y13_N4
\u1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add0~36_combout\ = (\u1|contador\(18) & (\u1|Add0~35\ $ (GND))) # (!\u1|contador\(18) & (!\u1|Add0~35\ & VCC))
-- \u1|Add0~37\ = CARRY((\u1|contador\(18) & !\u1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|contador\(18),
	datad => VCC,
	cin => \u1|Add0~35\,
	combout => \u1|Add0~36_combout\,
	cout => \u1|Add0~37\);

-- Location: FF_X10_Y13_N5
\u1|contador[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \u1|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(18));

-- Location: LCCOMB_X10_Y13_N6
\u1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add0~38_combout\ = (\u1|contador\(19) & (!\u1|Add0~37\)) # (!\u1|contador\(19) & ((\u1|Add0~37\) # (GND)))
-- \u1|Add0~39\ = CARRY((!\u1|Add0~37\) # (!\u1|contador\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|contador\(19),
	datad => VCC,
	cin => \u1|Add0~37\,
	combout => \u1|Add0~38_combout\,
	cout => \u1|Add0~39\);

-- Location: LCCOMB_X11_Y14_N8
\u1|contador~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|contador~8_combout\ = (\u1|contador[14]~0_combout\ & \u1|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|contador[14]~0_combout\,
	datad => \u1|Add0~38_combout\,
	combout => \u1|contador~8_combout\);

-- Location: FF_X11_Y14_N9
\u1|contador[19]\ : dffeas
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
	q => \u1|contador\(19));

-- Location: LCCOMB_X10_Y13_N8
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

-- Location: LCCOMB_X11_Y14_N22
\u1|contador~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|contador~9_combout\ = (\u1|contador[14]~0_combout\ & \u1|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|contador[14]~0_combout\,
	datad => \u1|Add0~40_combout\,
	combout => \u1|contador~9_combout\);

-- Location: FF_X11_Y14_N23
\u1|contador[20]\ : dffeas
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
	q => \u1|contador\(20));

-- Location: LCCOMB_X10_Y13_N10
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

-- Location: LCCOMB_X11_Y14_N16
\u1|contador~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|contador~10_combout\ = (\u1|contador[14]~0_combout\ & \u1|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|contador[14]~0_combout\,
	datad => \u1|Add0~42_combout\,
	combout => \u1|contador~10_combout\);

-- Location: FF_X11_Y14_N17
\u1|contador[21]\ : dffeas
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
	q => \u1|contador\(21));

-- Location: LCCOMB_X10_Y13_N12
\u1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add0~44_combout\ = (\u1|contador\(22) & (\u1|Add0~43\ $ (GND))) # (!\u1|contador\(22) & (!\u1|Add0~43\ & VCC))
-- \u1|Add0~45\ = CARRY((\u1|contador\(22) & !\u1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|contador\(22),
	datad => VCC,
	cin => \u1|Add0~43\,
	combout => \u1|Add0~44_combout\,
	cout => \u1|Add0~45\);

-- Location: LCCOMB_X11_Y14_N26
\u1|contador~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|contador~11_combout\ = (\u1|Add0~44_combout\ & \u1|contador[14]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|Add0~44_combout\,
	datad => \u1|contador[14]~0_combout\,
	combout => \u1|contador~11_combout\);

-- Location: FF_X11_Y14_N27
\u1|contador[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \u1|contador~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(22));

-- Location: LCCOMB_X10_Y13_N14
\u1|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add0~46_combout\ = (\u1|contador\(23) & (!\u1|Add0~45\)) # (!\u1|contador\(23) & ((\u1|Add0~45\) # (GND)))
-- \u1|Add0~47\ = CARRY((!\u1|Add0~45\) # (!\u1|contador\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|contador\(23),
	datad => VCC,
	cin => \u1|Add0~45\,
	combout => \u1|Add0~46_combout\,
	cout => \u1|Add0~47\);

-- Location: LCCOMB_X11_Y13_N8
\u1|contador~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|contador~3_combout\ = (\u1|contador[14]~0_combout\ & \u1|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|contador[14]~0_combout\,
	datad => \u1|Add0~46_combout\,
	combout => \u1|contador~3_combout\);

-- Location: FF_X11_Y13_N9
\u1|contador[23]\ : dffeas
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
	q => \u1|contador\(23));

-- Location: LCCOMB_X10_Y13_N16
\u1|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add0~48_combout\ = (\u1|contador\(24) & (\u1|Add0~47\ $ (GND))) # (!\u1|contador\(24) & (!\u1|Add0~47\ & VCC))
-- \u1|Add0~49\ = CARRY((\u1|contador\(24) & !\u1|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|contador\(24),
	datad => VCC,
	cin => \u1|Add0~47\,
	combout => \u1|Add0~48_combout\,
	cout => \u1|Add0~49\);

-- Location: FF_X10_Y13_N17
\u1|contador[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \u1|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(24));

-- Location: LCCOMB_X12_Y13_N6
\u1|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Equal0~8_combout\ = (\u1|contador\(24)) # (!\u1|contador\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(25),
	datad => \u1|contador\(24),
	combout => \u1|Equal0~8_combout\);

-- Location: LCCOMB_X11_Y14_N28
\u1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Equal0~0_combout\ = (\u1|contador\(22) & (\u1|contador\(19) & (\u1|contador\(20) & \u1|contador\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(22),
	datab => \u1|contador\(19),
	datac => \u1|contador\(20),
	datad => \u1|contador\(21),
	combout => \u1|Equal0~0_combout\);

-- Location: LCCOMB_X11_Y14_N6
\u1|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|LessThan0~4_combout\ = (!\u1|contador\(6) & (!\u1|contador\(9) & (!\u1|contador\(8) & !\u1|contador\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(6),
	datab => \u1|contador\(9),
	datac => \u1|contador\(8),
	datad => \u1|contador\(10),
	combout => \u1|LessThan0~4_combout\);

-- Location: LCCOMB_X11_Y13_N4
\u1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Equal0~1_combout\ = ((!\u1|LessThan0~4_combout\) # (!\u1|Equal0~0_combout\)) # (!\u1|LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|LessThan0~1_combout\,
	datac => \u1|Equal0~0_combout\,
	datad => \u1|LessThan0~4_combout\,
	combout => \u1|Equal0~1_combout\);

-- Location: LCCOMB_X11_Y14_N30
\u1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Equal0~3_combout\ = (\u1|contador\(1)) # ((\u1|contador\(3)) # ((\u1|contador\(2)) # (\u1|contador\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(1),
	datab => \u1|contador\(3),
	datac => \u1|contador\(2),
	datad => \u1|contador\(0),
	combout => \u1|Equal0~3_combout\);

-- Location: LCCOMB_X12_Y13_N12
\u1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Equal0~5_combout\ = (((\u1|contador\(16)) # (\u1|contador\(18))) # (!\u1|contador\(17))) # (!\u1|contador\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(23),
	datab => \u1|contador\(17),
	datac => \u1|contador\(16),
	datad => \u1|contador\(18),
	combout => \u1|Equal0~5_combout\);

-- Location: LCCOMB_X11_Y14_N0
\u1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Equal0~4_combout\ = (\u1|contador\(5)) # ((\u1|contador\(11)) # ((!\u1|contador\(7)) # (!\u1|contador\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(5),
	datab => \u1|contador\(11),
	datac => \u1|contador\(15),
	datad => \u1|contador\(7),
	combout => \u1|Equal0~4_combout\);

-- Location: LCCOMB_X11_Y14_N10
\u1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Equal0~2_combout\ = (((\u1|contador\(4)) # (!\u1|contador\(14))) # (!\u1|contador\(12))) # (!\u1|contador\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(13),
	datab => \u1|contador\(12),
	datac => \u1|contador\(14),
	datad => \u1|contador\(4),
	combout => \u1|Equal0~2_combout\);

-- Location: LCCOMB_X11_Y13_N16
\u1|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Equal0~6_combout\ = (\u1|Equal0~3_combout\) # ((\u1|Equal0~5_combout\) # ((\u1|Equal0~4_combout\) # (\u1|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Equal0~3_combout\,
	datab => \u1|Equal0~5_combout\,
	datac => \u1|Equal0~4_combout\,
	datad => \u1|Equal0~2_combout\,
	combout => \u1|Equal0~6_combout\);

-- Location: LCCOMB_X11_Y13_N14
\u1|contador[14]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|contador[14]~0_combout\ = (\u1|Equal0~8_combout\) # ((\u1|Equal0~1_combout\) # ((\u1|LessThan0~8_combout\) # (\u1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Equal0~8_combout\,
	datab => \u1|Equal0~1_combout\,
	datac => \u1|LessThan0~8_combout\,
	datad => \u1|Equal0~6_combout\,
	combout => \u1|contador[14]~0_combout\);

-- Location: LCCOMB_X10_Y13_N18
\u1|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add0~50_combout\ = (\u1|contador\(25) & (!\u1|Add0~49\)) # (!\u1|contador\(25) & ((\u1|Add0~49\) # (GND)))
-- \u1|Add0~51\ = CARRY((!\u1|Add0~49\) # (!\u1|contador\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(25),
	datad => VCC,
	cin => \u1|Add0~49\,
	combout => \u1|Add0~50_combout\,
	cout => \u1|Add0~51\);

-- Location: LCCOMB_X11_Y13_N2
\u1|contador~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|contador~12_combout\ = (\u1|contador[14]~0_combout\ & \u1|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|contador[14]~0_combout\,
	datad => \u1|Add0~50_combout\,
	combout => \u1|contador~12_combout\);

-- Location: FF_X11_Y13_N3
\u1|contador[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \u1|contador~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(25));

-- Location: LCCOMB_X10_Y13_N20
\u1|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add0~52_combout\ = (\u1|contador\(26) & (\u1|Add0~51\ $ (GND))) # (!\u1|contador\(26) & (!\u1|Add0~51\ & VCC))
-- \u1|Add0~53\ = CARRY((\u1|contador\(26) & !\u1|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|contador\(26),
	datad => VCC,
	cin => \u1|Add0~51\,
	combout => \u1|Add0~52_combout\,
	cout => \u1|Add0~53\);

-- Location: FF_X10_Y13_N21
\u1|contador[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \u1|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(26));

-- Location: LCCOMB_X10_Y13_N22
\u1|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add0~54_combout\ = (\u1|contador\(27) & (!\u1|Add0~53\)) # (!\u1|contador\(27) & ((\u1|Add0~53\) # (GND)))
-- \u1|Add0~55\ = CARRY((!\u1|Add0~53\) # (!\u1|contador\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(27),
	datad => VCC,
	cin => \u1|Add0~53\,
	combout => \u1|Add0~54_combout\,
	cout => \u1|Add0~55\);

-- Location: FF_X10_Y13_N23
\u1|contador[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \u1|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(27));

-- Location: LCCOMB_X10_Y13_N24
\u1|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add0~56_combout\ = (\u1|contador\(28) & (\u1|Add0~55\ $ (GND))) # (!\u1|contador\(28) & (!\u1|Add0~55\ & VCC))
-- \u1|Add0~57\ = CARRY((\u1|contador\(28) & !\u1|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|contador\(28),
	datad => VCC,
	cin => \u1|Add0~55\,
	combout => \u1|Add0~56_combout\,
	cout => \u1|Add0~57\);

-- Location: FF_X10_Y13_N25
\u1|contador[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \u1|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(28));

-- Location: LCCOMB_X10_Y13_N26
\u1|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add0~58_combout\ = (\u1|contador\(29) & (!\u1|Add0~57\)) # (!\u1|contador\(29) & ((\u1|Add0~57\) # (GND)))
-- \u1|Add0~59\ = CARRY((!\u1|Add0~57\) # (!\u1|contador\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(29),
	datad => VCC,
	cin => \u1|Add0~57\,
	combout => \u1|Add0~58_combout\,
	cout => \u1|Add0~59\);

-- Location: FF_X10_Y13_N27
\u1|contador[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \u1|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(29));

-- Location: LCCOMB_X10_Y13_N28
\u1|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add0~60_combout\ = (\u1|contador\(30) & (\u1|Add0~59\ $ (GND))) # (!\u1|contador\(30) & (!\u1|Add0~59\ & VCC))
-- \u1|Add0~61\ = CARRY((\u1|contador\(30) & !\u1|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|contador\(30),
	datad => VCC,
	cin => \u1|Add0~59\,
	combout => \u1|Add0~60_combout\,
	cout => \u1|Add0~61\);

-- Location: FF_X10_Y13_N29
\u1|contador[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \u1|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(30));

-- Location: LCCOMB_X10_Y13_N30
\u1|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add0~62_combout\ = \u1|contador\(31) $ (\u1|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(31),
	cin => \u1|Add0~61\,
	combout => \u1|Add0~62_combout\);

-- Location: FF_X10_Y13_N31
\u1|contador[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \u1|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(31));

-- Location: LCCOMB_X11_Y13_N28
\u1|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|LessThan0~0_combout\ = (!\u1|contador\(29) & (!\u1|contador\(26) & (!\u1|contador\(27) & !\u1|contador\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(29),
	datab => \u1|contador\(26),
	datac => \u1|contador\(27),
	datad => \u1|contador\(28),
	combout => \u1|LessThan0~0_combout\);

-- Location: LCCOMB_X11_Y13_N6
\u1|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|LessThan0~1_combout\ = (!\u1|contador\(30) & (!\u1|contador\(31) & \u1|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|contador\(30),
	datac => \u1|contador\(31),
	datad => \u1|LessThan0~0_combout\,
	combout => \u1|LessThan0~1_combout\);

-- Location: LCCOMB_X11_Y13_N20
\u1|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|LessThan0~6_combout\ = ((!\u1|contador\(16) & !\u1|contador\(17))) # (!\u1|contador\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(16),
	datab => \u1|contador\(18),
	datad => \u1|contador\(17),
	combout => \u1|LessThan0~6_combout\);

-- Location: LCCOMB_X11_Y13_N26
\u1|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|LessThan0~7_combout\ = ((!\u1|contador\(23) & ((\u1|LessThan0~6_combout\) # (!\u1|Equal0~0_combout\)))) # (!\u1|contador\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(24),
	datab => \u1|contador\(23),
	datac => \u1|Equal0~0_combout\,
	datad => \u1|LessThan0~6_combout\,
	combout => \u1|LessThan0~7_combout\);

-- Location: LCCOMB_X11_Y13_N10
\u1|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|LessThan0~2_combout\ = (!\u1|contador\(17) & (!\u1|contador\(23) & !\u1|contador\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(17),
	datac => \u1|contador\(23),
	datad => \u1|contador\(15),
	combout => \u1|LessThan0~2_combout\);

-- Location: LCCOMB_X11_Y14_N24
\u1|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|LessThan0~3_combout\ = (((!\u1|contador\(11)) # (!\u1|contador\(14))) # (!\u1|contador\(12))) # (!\u1|contador\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(13),
	datab => \u1|contador\(12),
	datac => \u1|contador\(14),
	datad => \u1|contador\(11),
	combout => \u1|LessThan0~3_combout\);

-- Location: LCCOMB_X11_Y13_N24
\u1|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|LessThan0~5_combout\ = (\u1|LessThan0~2_combout\ & ((\u1|LessThan0~3_combout\) # ((!\u1|contador\(7) & \u1|LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|LessThan0~2_combout\,
	datab => \u1|contador\(7),
	datac => \u1|LessThan0~3_combout\,
	datad => \u1|LessThan0~4_combout\,
	combout => \u1|LessThan0~5_combout\);

-- Location: LCCOMB_X11_Y13_N22
\u1|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|LessThan0~8_combout\ = (\u1|LessThan0~1_combout\ & (!\u1|contador\(25) & ((\u1|LessThan0~7_combout\) # (\u1|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|LessThan0~1_combout\,
	datab => \u1|contador\(25),
	datac => \u1|LessThan0~7_combout\,
	datad => \u1|LessThan0~5_combout\,
	combout => \u1|LessThan0~8_combout\);

-- Location: LCCOMB_X11_Y13_N12
\u1|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Equal0~7_combout\ = (\u1|contador\(24)) # (((\u1|Equal0~1_combout\) # (\u1|Equal0~6_combout\)) # (!\u1|contador\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(24),
	datab => \u1|contador\(25),
	datac => \u1|Equal0~1_combout\,
	datad => \u1|Equal0~6_combout\,
	combout => \u1|Equal0~7_combout\);

-- Location: LCCOMB_X11_Y13_N30
\u1|clkout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|clkout~0_combout\ = (\u1|LessThan0~8_combout\) # ((\u1|clkout~q\ & !\u1|Equal0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|clkout~q\,
	datac => \u1|LessThan0~8_combout\,
	datad => \u1|Equal0~7_combout\,
	combout => \u1|clkout~0_combout\);

-- Location: FF_X11_Y13_N21
\u1|clkout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	asdata => \u1|clkout~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|clkout~q\);

-- Location: CLKCTRL_G4
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

-- Location: LCCOMB_X33_Y3_N26
\contador[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador[0]~0_combout\ = ((contador(2) & contador(1))) # (!contador(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(2),
	datac => contador(0),
	datad => contador(1),
	combout => \contador[0]~0_combout\);

-- Location: IOIBUF_X34_Y9_N22
\start~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: FF_X33_Y3_N27
\contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clkout~clkctrl_outclk\,
	d => \contador[0]~0_combout\,
	clrn => \ALT_INV_start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(0));

-- Location: LCCOMB_X33_Y3_N4
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (contador(2)) # ((contador(0) & contador(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(0),
	datac => contador(2),
	datad => contador(1),
	combout => \Mux1~0_combout\);

-- Location: FF_X33_Y3_N9
\contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clkout~clkctrl_outclk\,
	asdata => \Mux1~0_combout\,
	clrn => \ALT_INV_start~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(2));

-- Location: LCCOMB_X33_Y3_N28
\contador[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador[1]~1_combout\ = (contador(1) & ((contador(2)) # (!contador(0)))) # (!contador(1) & ((contador(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(2),
	datac => contador(1),
	datad => contador(0),
	combout => \contador[1]~1_combout\);

-- Location: FF_X33_Y3_N29
\contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clkout~clkctrl_outclk\,
	d => \contador[1]~1_combout\,
	clrn => \ALT_INV_start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(1));

-- Location: LCCOMB_X33_Y3_N8
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (!contador(1) & (!contador(2) & !contador(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => contador(1),
	datac => contador(2),
	datad => contador(0),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X33_Y3_N18
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (!contador(2) & !contador(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(2),
	datad => contador(1),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X33_Y3_N30
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ((!contador(0) & !contador(1))) # (!contador(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(2),
	datab => contador(0),
	datad => contador(1),
	combout => \Mux0~0_combout\);

ww_bout(0) <= \bout[0]~output_o\;

ww_bout(1) <= \bout[1]~output_o\;

ww_bout(2) <= \bout[2]~output_o\;

ww_bout(3) <= \bout[3]~output_o\;

ww_bout(4) <= \bout[4]~output_o\;
END structure;


