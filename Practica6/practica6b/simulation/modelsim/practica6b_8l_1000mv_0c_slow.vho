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

-- DATE "12/04/2022 17:07:09"

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

ENTITY 	practica6b IS
    PORT (
	CLOCK : IN std_logic;
	RST : IN std_logic;
	mode : IN std_logic;
	seg : OUT std_logic_vector(7 DOWNTO 0);
	disp : OUT std_logic_vector(3 DOWNTO 0)
	);
END practica6b;

-- Design Ports Information
-- seg[0]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[1]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[2]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[3]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[4]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[5]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[6]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[7]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp[0]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp[1]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp[2]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp[3]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mode	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF practica6b IS
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
SIGNAL ww_seg : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_disp : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk1|clkout~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk2|clkout~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \seg[0]~output_o\ : std_logic;
SIGNAL \seg[1]~output_o\ : std_logic;
SIGNAL \seg[2]~output_o\ : std_logic;
SIGNAL \seg[3]~output_o\ : std_logic;
SIGNAL \seg[4]~output_o\ : std_logic;
SIGNAL \seg[5]~output_o\ : std_logic;
SIGNAL \seg[6]~output_o\ : std_logic;
SIGNAL \seg[7]~output_o\ : std_logic;
SIGNAL \disp[0]~output_o\ : std_logic;
SIGNAL \disp[1]~output_o\ : std_logic;
SIGNAL \disp[2]~output_o\ : std_logic;
SIGNAL \disp[3]~output_o\ : std_logic;
SIGNAL \CLOCK~input_o\ : std_logic;
SIGNAL \CLOCK~inputclkctrl_outclk\ : std_logic;
SIGNAL \clk2|Add0~0_combout\ : std_logic;
SIGNAL \clk2|Add0~23\ : std_logic;
SIGNAL \clk2|Add0~24_combout\ : std_logic;
SIGNAL \clk2|Add0~25\ : std_logic;
SIGNAL \clk2|Add0~26_combout\ : std_logic;
SIGNAL \clk2|Add0~27\ : std_logic;
SIGNAL \clk2|Add0~28_combout\ : std_logic;
SIGNAL \clk2|Add0~29\ : std_logic;
SIGNAL \clk2|Add0~30_combout\ : std_logic;
SIGNAL \clk2|Add0~31\ : std_logic;
SIGNAL \clk2|Add0~32_combout\ : std_logic;
SIGNAL \clk2|contador~4_combout\ : std_logic;
SIGNAL \clk2|LessThan0~5_combout\ : std_logic;
SIGNAL \clk2|Add0~33\ : std_logic;
SIGNAL \clk2|Add0~34_combout\ : std_logic;
SIGNAL \clk2|contador~5_combout\ : std_logic;
SIGNAL \clk2|Add0~35\ : std_logic;
SIGNAL \clk2|Add0~36_combout\ : std_logic;
SIGNAL \clk2|Add0~37\ : std_logic;
SIGNAL \clk2|Add0~38_combout\ : std_logic;
SIGNAL \clk2|Add0~39\ : std_logic;
SIGNAL \clk2|Add0~40_combout\ : std_logic;
SIGNAL \clk2|Add0~41\ : std_logic;
SIGNAL \clk2|Add0~42_combout\ : std_logic;
SIGNAL \clk2|Add0~43\ : std_logic;
SIGNAL \clk2|Add0~44_combout\ : std_logic;
SIGNAL \clk2|Add0~45\ : std_logic;
SIGNAL \clk2|Add0~46_combout\ : std_logic;
SIGNAL \clk2|LessThan0~0_combout\ : std_logic;
SIGNAL \clk2|LessThan0~1_combout\ : std_logic;
SIGNAL \clk2|LessThan0~3_combout\ : std_logic;
SIGNAL \clk2|LessThan0~2_combout\ : std_logic;
SIGNAL \clk2|LessThan0~4_combout\ : std_logic;
SIGNAL \clk2|LessThan0~6_combout\ : std_logic;
SIGNAL \clk2|contador~6_combout\ : std_logic;
SIGNAL \clk2|Add0~1\ : std_logic;
SIGNAL \clk2|Add0~2_combout\ : std_logic;
SIGNAL \clk2|Add0~3\ : std_logic;
SIGNAL \clk2|Add0~4_combout\ : std_logic;
SIGNAL \clk2|Add0~5\ : std_logic;
SIGNAL \clk2|Add0~6_combout\ : std_logic;
SIGNAL \clk2|Add0~7\ : std_logic;
SIGNAL \clk2|Add0~8_combout\ : std_logic;
SIGNAL \clk2|Add0~9\ : std_logic;
SIGNAL \clk2|Add0~10_combout\ : std_logic;
SIGNAL \clk2|Add0~11\ : std_logic;
SIGNAL \clk2|Add0~12_combout\ : std_logic;
SIGNAL \clk2|contador~1_combout\ : std_logic;
SIGNAL \clk2|Add0~13\ : std_logic;
SIGNAL \clk2|Add0~14_combout\ : std_logic;
SIGNAL \clk2|Add0~15\ : std_logic;
SIGNAL \clk2|Add0~16_combout\ : std_logic;
SIGNAL \clk2|contador~2_combout\ : std_logic;
SIGNAL \clk2|Add0~17\ : std_logic;
SIGNAL \clk2|Add0~18_combout\ : std_logic;
SIGNAL \clk2|Add0~19\ : std_logic;
SIGNAL \clk2|Add0~20_combout\ : std_logic;
SIGNAL \clk2|contador~3_combout\ : std_logic;
SIGNAL \clk2|Add0~21\ : std_logic;
SIGNAL \clk2|Add0~22_combout\ : std_logic;
SIGNAL \clk2|contador~0_combout\ : std_logic;
SIGNAL \clk2|Equal0~1_combout\ : std_logic;
SIGNAL \clk2|Equal0~0_combout\ : std_logic;
SIGNAL \clk2|Equal0~2_combout\ : std_logic;
SIGNAL \clk2|Equal0~3_combout\ : std_logic;
SIGNAL \clk2|Equal0~4_combout\ : std_logic;
SIGNAL \clk2|Equal0~5_combout\ : std_logic;
SIGNAL \clk2|clkout~0_combout\ : std_logic;
SIGNAL \clk2|clkout~feeder_combout\ : std_logic;
SIGNAL \clk2|clkout~q\ : std_logic;
SIGNAL \clk2|clkout~clkctrl_outclk\ : std_logic;
SIGNAL \u4|Selectores[0]~0_combout\ : std_logic;
SIGNAL \u4|Mux3~2_combout\ : std_logic;
SIGNAL \clk1|Add0~1\ : std_logic;
SIGNAL \clk1|Add0~2_combout\ : std_logic;
SIGNAL \clk1|Add0~3\ : std_logic;
SIGNAL \clk1|Add0~4_combout\ : std_logic;
SIGNAL \clk1|Add0~5\ : std_logic;
SIGNAL \clk1|Add0~6_combout\ : std_logic;
SIGNAL \clk1|Add0~7\ : std_logic;
SIGNAL \clk1|Add0~8_combout\ : std_logic;
SIGNAL \clk1|Add0~9\ : std_logic;
SIGNAL \clk1|Add0~10_combout\ : std_logic;
SIGNAL \clk1|Equal0~3_combout\ : std_logic;
SIGNAL \clk1|Add0~11\ : std_logic;
SIGNAL \clk1|Add0~12_combout\ : std_logic;
SIGNAL \clk1|contador~5_combout\ : std_logic;
SIGNAL \clk1|Add0~13\ : std_logic;
SIGNAL \clk1|Add0~14_combout\ : std_logic;
SIGNAL \clk1|Add0~15\ : std_logic;
SIGNAL \clk1|Add0~16_combout\ : std_logic;
SIGNAL \clk1|contador~6_combout\ : std_logic;
SIGNAL \clk1|Add0~17\ : std_logic;
SIGNAL \clk1|Add0~18_combout\ : std_logic;
SIGNAL \clk1|contador~7_combout\ : std_logic;
SIGNAL \clk1|Add0~19\ : std_logic;
SIGNAL \clk1|Add0~20_combout\ : std_logic;
SIGNAL \clk1|Add0~21\ : std_logic;
SIGNAL \clk1|Add0~22_combout\ : std_logic;
SIGNAL \clk1|contador~8_combout\ : std_logic;
SIGNAL \clk1|Add0~23\ : std_logic;
SIGNAL \clk1|Add0~24_combout\ : std_logic;
SIGNAL \clk1|Add0~25\ : std_logic;
SIGNAL \clk1|Add0~26_combout\ : std_logic;
SIGNAL \clk1|Equal0~1_combout\ : std_logic;
SIGNAL \clk1|Equal0~2_combout\ : std_logic;
SIGNAL \clk1|Add0~27\ : std_logic;
SIGNAL \clk1|Add0~28_combout\ : std_logic;
SIGNAL \clk1|contador~4_combout\ : std_logic;
SIGNAL \clk1|Add0~29\ : std_logic;
SIGNAL \clk1|Add0~30_combout\ : std_logic;
SIGNAL \clk1|Add0~31\ : std_logic;
SIGNAL \clk1|Add0~32_combout\ : std_logic;
SIGNAL \clk1|Add0~33\ : std_logic;
SIGNAL \clk1|Add0~34_combout\ : std_logic;
SIGNAL \clk1|Equal0~0_combout\ : std_logic;
SIGNAL \clk1|Equal0~4_combout\ : std_logic;
SIGNAL \clk1|Add0~35\ : std_logic;
SIGNAL \clk1|Add0~36_combout\ : std_logic;
SIGNAL \clk1|contador~3_combout\ : std_logic;
SIGNAL \clk1|Add0~37\ : std_logic;
SIGNAL \clk1|Add0~38_combout\ : std_logic;
SIGNAL \clk1|contador~2_combout\ : std_logic;
SIGNAL \clk1|Add0~39\ : std_logic;
SIGNAL \clk1|Add0~40_combout\ : std_logic;
SIGNAL \clk1|Add0~41\ : std_logic;
SIGNAL \clk1|Add0~42_combout\ : std_logic;
SIGNAL \clk1|Equal0~6_combout\ : std_logic;
SIGNAL \clk1|Add0~0_combout\ : std_logic;
SIGNAL \clk1|contador~9_combout\ : std_logic;
SIGNAL \clk1|Equal0~5_combout\ : std_logic;
SIGNAL \clk1|Add0~43\ : std_logic;
SIGNAL \clk1|Add0~44_combout\ : std_logic;
SIGNAL \clk1|contador~10_combout\ : std_logic;
SIGNAL \clk1|Add0~45\ : std_logic;
SIGNAL \clk1|Add0~46_combout\ : std_logic;
SIGNAL \clk1|clkout~6_combout\ : std_logic;
SIGNAL \clk1|Equal0~7_combout\ : std_logic;
SIGNAL \clk1|clkout~1_combout\ : std_logic;
SIGNAL \clk1|clkout~2_combout\ : std_logic;
SIGNAL \clk1|clkout~0_combout\ : std_logic;
SIGNAL \clk1|clkout~3_combout\ : std_logic;
SIGNAL \clk1|clkout~4_combout\ : std_logic;
SIGNAL \clk1|clkout~5_combout\ : std_logic;
SIGNAL \clk1|clkout~7_combout\ : std_logic;
SIGNAL \clk1|clkout~feeder_combout\ : std_logic;
SIGNAL \clk1|clkout~q\ : std_logic;
SIGNAL \clk1|clkout~clkctrl_outclk\ : std_logic;
SIGNAL \mode~input_o\ : std_logic;
SIGNAL \u2|contador[0]~6_combout\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \u2|contador[3]~8_combout\ : std_logic;
SIGNAL \u2|contador[3]~9_combout\ : std_logic;
SIGNAL \u2|contador[3]~10_combout\ : std_logic;
SIGNAL \u2|contador[0]~7\ : std_logic;
SIGNAL \u2|contador[1]~11_combout\ : std_logic;
SIGNAL \u2|contador[1]~12\ : std_logic;
SIGNAL \u2|contador[2]~13_combout\ : std_logic;
SIGNAL \u2|contador[2]~14\ : std_logic;
SIGNAL \u2|contador[3]~15_combout\ : std_logic;
SIGNAL \u2|contador[3]~16\ : std_logic;
SIGNAL \u2|contador[4]~17_combout\ : std_logic;
SIGNAL \u2|contador[4]~18\ : std_logic;
SIGNAL \u2|contador[5]~19_combout\ : std_logic;
SIGNAL \u3|Z~2_combout\ : std_logic;
SIGNAL \u3|Z~1_combout\ : std_logic;
SIGNAL \u3|Z~0_combout\ : std_logic;
SIGNAL \u4|Mux0~0_combout\ : std_logic;
SIGNAL \u4|Mux0~1_combout\ : std_logic;
SIGNAL \u4|Mux2~2_combout\ : std_logic;
SIGNAL \u3|Uni[1]~0_combout\ : std_logic;
SIGNAL \u4|Mux2~3_combout\ : std_logic;
SIGNAL \u4|Mux3~3_combout\ : std_logic;
SIGNAL \u4|Mux3~4_combout\ : std_logic;
SIGNAL \u4|Mux1~5_combout\ : std_logic;
SIGNAL \u4|Mux1~7_combout\ : std_logic;
SIGNAL \u3|LessThan2~0_combout\ : std_logic;
SIGNAL \u4|Mux1~4_combout\ : std_logic;
SIGNAL \u4|Mux1~6_combout\ : std_logic;
SIGNAL \u5|Mux6~0_combout\ : std_logic;
SIGNAL \u5|Mux5~0_combout\ : std_logic;
SIGNAL \u5|Mux4~0_combout\ : std_logic;
SIGNAL \u5|Mux3~0_combout\ : std_logic;
SIGNAL \u5|Mux2~0_combout\ : std_logic;
SIGNAL \u5|Mux1~0_combout\ : std_logic;
SIGNAL \u5|Mux0~0_combout\ : std_logic;
SIGNAL \u4|Mux6~0_combout\ : std_logic;
SIGNAL \u4|Mux5~0_combout\ : std_logic;
SIGNAL \u4|Mux5~1_combout\ : std_logic;
SIGNAL \clk2|contador\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \clk1|contador\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \u2|contador\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \u4|Selectores\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u5|ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_CLOCK <= CLOCK;
ww_RST <= RST;
ww_mode <= mode;
seg <= ww_seg;
disp <= ww_disp;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk1|clkout~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk1|clkout~q\);

\clk2|clkout~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk2|clkout~q\);

\CLOCK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK~input_o\);
\u5|ALT_INV_Mux0~0_combout\ <= NOT \u5|Mux0~0_combout\;

-- Location: IOOBUF_X16_Y24_N16
\seg[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u5|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \seg[0]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\seg[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u5|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \seg[1]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\seg[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u5|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \seg[2]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\seg[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u5|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \seg[3]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\seg[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u5|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \seg[4]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\seg[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u5|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \seg[5]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\seg[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u5|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \seg[6]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\seg[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \seg[7]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\disp[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \disp[0]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\disp[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \disp[1]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\disp[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|Mux5~1_combout\,
	devoe => ww_devoe,
	o => \disp[2]~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\disp[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \disp[3]~output_o\);

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

-- Location: LCCOMB_X32_Y21_N8
\clk2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|Add0~0_combout\ = \clk2|contador\(0) $ (VCC)
-- \clk2|Add0~1\ = CARRY(\clk2|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk2|contador\(0),
	datad => VCC,
	combout => \clk2|Add0~0_combout\,
	cout => \clk2|Add0~1\);

-- Location: LCCOMB_X32_Y21_N30
\clk2|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|Add0~22_combout\ = (\clk2|contador\(11) & (!\clk2|Add0~21\)) # (!\clk2|contador\(11) & ((\clk2|Add0~21\) # (GND)))
-- \clk2|Add0~23\ = CARRY((!\clk2|Add0~21\) # (!\clk2|contador\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk2|contador\(11),
	datad => VCC,
	cin => \clk2|Add0~21\,
	combout => \clk2|Add0~22_combout\,
	cout => \clk2|Add0~23\);

-- Location: LCCOMB_X32_Y20_N0
\clk2|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|Add0~24_combout\ = (\clk2|contador\(12) & (\clk2|Add0~23\ $ (GND))) # (!\clk2|contador\(12) & (!\clk2|Add0~23\ & VCC))
-- \clk2|Add0~25\ = CARRY((\clk2|contador\(12) & !\clk2|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk2|contador\(12),
	datad => VCC,
	cin => \clk2|Add0~23\,
	combout => \clk2|Add0~24_combout\,
	cout => \clk2|Add0~25\);

-- Location: FF_X32_Y20_N1
\clk2|contador[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk2|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk2|contador\(12));

-- Location: LCCOMB_X32_Y20_N2
\clk2|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|Add0~26_combout\ = (\clk2|contador\(13) & (!\clk2|Add0~25\)) # (!\clk2|contador\(13) & ((\clk2|Add0~25\) # (GND)))
-- \clk2|Add0~27\ = CARRY((!\clk2|Add0~25\) # (!\clk2|contador\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk2|contador\(13),
	datad => VCC,
	cin => \clk2|Add0~25\,
	combout => \clk2|Add0~26_combout\,
	cout => \clk2|Add0~27\);

-- Location: FF_X32_Y20_N3
\clk2|contador[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk2|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk2|contador\(13));

-- Location: LCCOMB_X32_Y20_N4
\clk2|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|Add0~28_combout\ = (\clk2|contador\(14) & (\clk2|Add0~27\ $ (GND))) # (!\clk2|contador\(14) & (!\clk2|Add0~27\ & VCC))
-- \clk2|Add0~29\ = CARRY((\clk2|contador\(14) & !\clk2|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk2|contador\(14),
	datad => VCC,
	cin => \clk2|Add0~27\,
	combout => \clk2|Add0~28_combout\,
	cout => \clk2|Add0~29\);

-- Location: FF_X32_Y20_N5
\clk2|contador[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk2|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk2|contador\(14));

-- Location: LCCOMB_X32_Y20_N6
\clk2|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|Add0~30_combout\ = (\clk2|contador\(15) & (!\clk2|Add0~29\)) # (!\clk2|contador\(15) & ((\clk2|Add0~29\) # (GND)))
-- \clk2|Add0~31\ = CARRY((!\clk2|Add0~29\) # (!\clk2|contador\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk2|contador\(15),
	datad => VCC,
	cin => \clk2|Add0~29\,
	combout => \clk2|Add0~30_combout\,
	cout => \clk2|Add0~31\);

-- Location: FF_X32_Y20_N7
\clk2|contador[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk2|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk2|contador\(15));

-- Location: LCCOMB_X32_Y20_N8
\clk2|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|Add0~32_combout\ = (\clk2|contador\(16) & (\clk2|Add0~31\ $ (GND))) # (!\clk2|contador\(16) & (!\clk2|Add0~31\ & VCC))
-- \clk2|Add0~33\ = CARRY((\clk2|contador\(16) & !\clk2|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk2|contador\(16),
	datad => VCC,
	cin => \clk2|Add0~31\,
	combout => \clk2|Add0~32_combout\,
	cout => \clk2|Add0~33\);

-- Location: LCCOMB_X32_Y20_N28
\clk2|contador~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|contador~4_combout\ = (\clk2|Add0~32_combout\ & ((\clk2|Equal0~5_combout\) # (\clk2|LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk2|Equal0~5_combout\,
	datac => \clk2|Add0~32_combout\,
	datad => \clk2|LessThan0~6_combout\,
	combout => \clk2|contador~4_combout\);

-- Location: FF_X32_Y20_N29
\clk2|contador[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk2|contador~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk2|contador\(16));

-- Location: LCCOMB_X33_Y21_N26
\clk2|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|LessThan0~5_combout\ = (!\clk2|contador\(16)) # (!\clk2|contador\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk2|contador\(15),
	datad => \clk2|contador\(16),
	combout => \clk2|LessThan0~5_combout\);

-- Location: LCCOMB_X32_Y20_N10
\clk2|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|Add0~34_combout\ = (\clk2|contador\(17) & (!\clk2|Add0~33\)) # (!\clk2|contador\(17) & ((\clk2|Add0~33\) # (GND)))
-- \clk2|Add0~35\ = CARRY((!\clk2|Add0~33\) # (!\clk2|contador\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk2|contador\(17),
	datad => VCC,
	cin => \clk2|Add0~33\,
	combout => \clk2|Add0~34_combout\,
	cout => \clk2|Add0~35\);

-- Location: LCCOMB_X32_Y20_N30
\clk2|contador~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|contador~5_combout\ = (\clk2|Add0~34_combout\ & ((\clk2|Equal0~5_combout\) # (\clk2|LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk2|Equal0~5_combout\,
	datac => \clk2|LessThan0~6_combout\,
	datad => \clk2|Add0~34_combout\,
	combout => \clk2|contador~5_combout\);

-- Location: FF_X32_Y20_N31
\clk2|contador[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk2|contador~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk2|contador\(17));

-- Location: LCCOMB_X32_Y20_N12
\clk2|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|Add0~36_combout\ = (\clk2|contador\(18) & (\clk2|Add0~35\ $ (GND))) # (!\clk2|contador\(18) & (!\clk2|Add0~35\ & VCC))
-- \clk2|Add0~37\ = CARRY((\clk2|contador\(18) & !\clk2|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk2|contador\(18),
	datad => VCC,
	cin => \clk2|Add0~35\,
	combout => \clk2|Add0~36_combout\,
	cout => \clk2|Add0~37\);

-- Location: FF_X32_Y20_N13
\clk2|contador[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk2|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk2|contador\(18));

-- Location: LCCOMB_X32_Y20_N14
\clk2|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|Add0~38_combout\ = (\clk2|contador\(19) & (!\clk2|Add0~37\)) # (!\clk2|contador\(19) & ((\clk2|Add0~37\) # (GND)))
-- \clk2|Add0~39\ = CARRY((!\clk2|Add0~37\) # (!\clk2|contador\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk2|contador\(19),
	datad => VCC,
	cin => \clk2|Add0~37\,
	combout => \clk2|Add0~38_combout\,
	cout => \clk2|Add0~39\);

-- Location: FF_X32_Y20_N15
\clk2|contador[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk2|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk2|contador\(19));

-- Location: LCCOMB_X32_Y20_N16
\clk2|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|Add0~40_combout\ = (\clk2|contador\(20) & (\clk2|Add0~39\ $ (GND))) # (!\clk2|contador\(20) & (!\clk2|Add0~39\ & VCC))
-- \clk2|Add0~41\ = CARRY((\clk2|contador\(20) & !\clk2|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk2|contador\(20),
	datad => VCC,
	cin => \clk2|Add0~39\,
	combout => \clk2|Add0~40_combout\,
	cout => \clk2|Add0~41\);

-- Location: FF_X32_Y20_N17
\clk2|contador[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk2|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk2|contador\(20));

-- Location: LCCOMB_X32_Y20_N18
\clk2|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|Add0~42_combout\ = (\clk2|contador\(21) & (!\clk2|Add0~41\)) # (!\clk2|contador\(21) & ((\clk2|Add0~41\) # (GND)))
-- \clk2|Add0~43\ = CARRY((!\clk2|Add0~41\) # (!\clk2|contador\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk2|contador\(21),
	datad => VCC,
	cin => \clk2|Add0~41\,
	combout => \clk2|Add0~42_combout\,
	cout => \clk2|Add0~43\);

-- Location: FF_X32_Y20_N19
\clk2|contador[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk2|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk2|contador\(21));

-- Location: LCCOMB_X32_Y20_N20
\clk2|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|Add0~44_combout\ = (\clk2|contador\(22) & (\clk2|Add0~43\ $ (GND))) # (!\clk2|contador\(22) & (!\clk2|Add0~43\ & VCC))
-- \clk2|Add0~45\ = CARRY((\clk2|contador\(22) & !\clk2|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk2|contador\(22),
	datad => VCC,
	cin => \clk2|Add0~43\,
	combout => \clk2|Add0~44_combout\,
	cout => \clk2|Add0~45\);

-- Location: FF_X32_Y20_N21
\clk2|contador[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk2|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk2|contador\(22));

-- Location: LCCOMB_X32_Y20_N22
\clk2|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|Add0~46_combout\ = \clk2|contador\(23) $ (\clk2|Add0~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk2|contador\(23),
	cin => \clk2|Add0~45\,
	combout => \clk2|Add0~46_combout\);

-- Location: FF_X32_Y20_N23
\clk2|contador[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk2|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk2|contador\(23));

-- Location: LCCOMB_X32_Y20_N24
\clk2|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|LessThan0~0_combout\ = (!\clk2|contador\(18) & (!\clk2|contador\(21) & (!\clk2|contador\(19) & !\clk2|contador\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk2|contador\(18),
	datab => \clk2|contador\(21),
	datac => \clk2|contador\(19),
	datad => \clk2|contador\(20),
	combout => \clk2|LessThan0~0_combout\);

-- Location: LCCOMB_X32_Y20_N26
\clk2|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|LessThan0~1_combout\ = (!\clk2|contador\(22) & (!\clk2|contador\(23) & \clk2|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk2|contador\(22),
	datac => \clk2|contador\(23),
	datad => \clk2|LessThan0~0_combout\,
	combout => \clk2|LessThan0~1_combout\);

-- Location: LCCOMB_X33_Y21_N4
\clk2|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|LessThan0~3_combout\ = (!\clk2|contador\(8) & (((!\clk2|contador\(6) & !\clk2|contador\(5))) # (!\clk2|contador\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk2|contador\(6),
	datab => \clk2|contador\(8),
	datac => \clk2|contador\(5),
	datad => \clk2|contador\(7),
	combout => \clk2|LessThan0~3_combout\);

-- Location: LCCOMB_X33_Y21_N12
\clk2|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|LessThan0~2_combout\ = (!\clk2|contador\(11) & (!\clk2|contador\(12) & (!\clk2|contador\(13) & !\clk2|contador\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk2|contador\(11),
	datab => \clk2|contador\(12),
	datac => \clk2|contador\(13),
	datad => \clk2|contador\(14),
	combout => \clk2|LessThan0~2_combout\);

-- Location: LCCOMB_X33_Y21_N10
\clk2|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|LessThan0~4_combout\ = (\clk2|LessThan0~2_combout\ & (((\clk2|LessThan0~3_combout\) # (!\clk2|contador\(10))) # (!\clk2|contador\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk2|contador\(9),
	datab => \clk2|contador\(10),
	datac => \clk2|LessThan0~3_combout\,
	datad => \clk2|LessThan0~2_combout\,
	combout => \clk2|LessThan0~4_combout\);

-- Location: LCCOMB_X33_Y21_N28
\clk2|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|LessThan0~6_combout\ = (!\clk2|contador\(17) & (\clk2|LessThan0~1_combout\ & ((\clk2|LessThan0~5_combout\) # (\clk2|LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk2|LessThan0~5_combout\,
	datab => \clk2|contador\(17),
	datac => \clk2|LessThan0~1_combout\,
	datad => \clk2|LessThan0~4_combout\,
	combout => \clk2|LessThan0~6_combout\);

-- Location: LCCOMB_X32_Y21_N6
\clk2|contador~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|contador~6_combout\ = (\clk2|Add0~0_combout\ & ((\clk2|Equal0~5_combout\) # (\clk2|LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk2|Add0~0_combout\,
	datac => \clk2|Equal0~5_combout\,
	datad => \clk2|LessThan0~6_combout\,
	combout => \clk2|contador~6_combout\);

-- Location: FF_X32_Y21_N7
\clk2|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk2|contador~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk2|contador\(0));

-- Location: LCCOMB_X32_Y21_N10
\clk2|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|Add0~2_combout\ = (\clk2|contador\(1) & (!\clk2|Add0~1\)) # (!\clk2|contador\(1) & ((\clk2|Add0~1\) # (GND)))
-- \clk2|Add0~3\ = CARRY((!\clk2|Add0~1\) # (!\clk2|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk2|contador\(1),
	datad => VCC,
	cin => \clk2|Add0~1\,
	combout => \clk2|Add0~2_combout\,
	cout => \clk2|Add0~3\);

-- Location: FF_X32_Y21_N11
\clk2|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk2|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk2|contador\(1));

-- Location: LCCOMB_X32_Y21_N12
\clk2|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|Add0~4_combout\ = (\clk2|contador\(2) & (\clk2|Add0~3\ $ (GND))) # (!\clk2|contador\(2) & (!\clk2|Add0~3\ & VCC))
-- \clk2|Add0~5\ = CARRY((\clk2|contador\(2) & !\clk2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk2|contador\(2),
	datad => VCC,
	cin => \clk2|Add0~3\,
	combout => \clk2|Add0~4_combout\,
	cout => \clk2|Add0~5\);

-- Location: FF_X32_Y21_N13
\clk2|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk2|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk2|contador\(2));

-- Location: LCCOMB_X32_Y21_N14
\clk2|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|Add0~6_combout\ = (\clk2|contador\(3) & (!\clk2|Add0~5\)) # (!\clk2|contador\(3) & ((\clk2|Add0~5\) # (GND)))
-- \clk2|Add0~7\ = CARRY((!\clk2|Add0~5\) # (!\clk2|contador\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk2|contador\(3),
	datad => VCC,
	cin => \clk2|Add0~5\,
	combout => \clk2|Add0~6_combout\,
	cout => \clk2|Add0~7\);

-- Location: FF_X32_Y21_N15
\clk2|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk2|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk2|contador\(3));

-- Location: LCCOMB_X32_Y21_N16
\clk2|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|Add0~8_combout\ = (\clk2|contador\(4) & (\clk2|Add0~7\ $ (GND))) # (!\clk2|contador\(4) & (!\clk2|Add0~7\ & VCC))
-- \clk2|Add0~9\ = CARRY((\clk2|contador\(4) & !\clk2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk2|contador\(4),
	datad => VCC,
	cin => \clk2|Add0~7\,
	combout => \clk2|Add0~8_combout\,
	cout => \clk2|Add0~9\);

-- Location: FF_X32_Y21_N17
\clk2|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk2|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk2|contador\(4));

-- Location: LCCOMB_X32_Y21_N18
\clk2|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|Add0~10_combout\ = (\clk2|contador\(5) & (!\clk2|Add0~9\)) # (!\clk2|contador\(5) & ((\clk2|Add0~9\) # (GND)))
-- \clk2|Add0~11\ = CARRY((!\clk2|Add0~9\) # (!\clk2|contador\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk2|contador\(5),
	datad => VCC,
	cin => \clk2|Add0~9\,
	combout => \clk2|Add0~10_combout\,
	cout => \clk2|Add0~11\);

-- Location: FF_X32_Y21_N19
\clk2|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk2|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk2|contador\(5));

-- Location: LCCOMB_X32_Y21_N20
\clk2|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|Add0~12_combout\ = (\clk2|contador\(6) & (\clk2|Add0~11\ $ (GND))) # (!\clk2|contador\(6) & (!\clk2|Add0~11\ & VCC))
-- \clk2|Add0~13\ = CARRY((\clk2|contador\(6) & !\clk2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk2|contador\(6),
	datad => VCC,
	cin => \clk2|Add0~11\,
	combout => \clk2|Add0~12_combout\,
	cout => \clk2|Add0~13\);

-- Location: LCCOMB_X32_Y21_N2
\clk2|contador~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|contador~1_combout\ = (\clk2|Add0~12_combout\ & ((\clk2|Equal0~5_combout\) # (\clk2|LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk2|Add0~12_combout\,
	datac => \clk2|Equal0~5_combout\,
	datad => \clk2|LessThan0~6_combout\,
	combout => \clk2|contador~1_combout\);

-- Location: FF_X32_Y21_N3
\clk2|contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk2|contador~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk2|contador\(6));

-- Location: LCCOMB_X32_Y21_N22
\clk2|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|Add0~14_combout\ = (\clk2|contador\(7) & (!\clk2|Add0~13\)) # (!\clk2|contador\(7) & ((\clk2|Add0~13\) # (GND)))
-- \clk2|Add0~15\ = CARRY((!\clk2|Add0~13\) # (!\clk2|contador\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk2|contador\(7),
	datad => VCC,
	cin => \clk2|Add0~13\,
	combout => \clk2|Add0~14_combout\,
	cout => \clk2|Add0~15\);

-- Location: FF_X32_Y21_N23
\clk2|contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk2|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk2|contador\(7));

-- Location: LCCOMB_X32_Y21_N24
\clk2|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|Add0~16_combout\ = (\clk2|contador\(8) & (\clk2|Add0~15\ $ (GND))) # (!\clk2|contador\(8) & (!\clk2|Add0~15\ & VCC))
-- \clk2|Add0~17\ = CARRY((\clk2|contador\(8) & !\clk2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk2|contador\(8),
	datad => VCC,
	cin => \clk2|Add0~15\,
	combout => \clk2|Add0~16_combout\,
	cout => \clk2|Add0~17\);

-- Location: LCCOMB_X33_Y21_N20
\clk2|contador~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|contador~2_combout\ = (\clk2|Add0~16_combout\ & ((\clk2|Equal0~5_combout\) # (\clk2|LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk2|Equal0~5_combout\,
	datac => \clk2|Add0~16_combout\,
	datad => \clk2|LessThan0~6_combout\,
	combout => \clk2|contador~2_combout\);

-- Location: FF_X33_Y21_N21
\clk2|contador[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk2|contador~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk2|contador\(8));

-- Location: LCCOMB_X32_Y21_N26
\clk2|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|Add0~18_combout\ = (\clk2|contador\(9) & (!\clk2|Add0~17\)) # (!\clk2|contador\(9) & ((\clk2|Add0~17\) # (GND)))
-- \clk2|Add0~19\ = CARRY((!\clk2|Add0~17\) # (!\clk2|contador\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk2|contador\(9),
	datad => VCC,
	cin => \clk2|Add0~17\,
	combout => \clk2|Add0~18_combout\,
	cout => \clk2|Add0~19\);

-- Location: FF_X32_Y21_N27
\clk2|contador[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk2|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk2|contador\(9));

-- Location: LCCOMB_X32_Y21_N28
\clk2|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|Add0~20_combout\ = (\clk2|contador\(10) & (\clk2|Add0~19\ $ (GND))) # (!\clk2|contador\(10) & (!\clk2|Add0~19\ & VCC))
-- \clk2|Add0~21\ = CARRY((\clk2|contador\(10) & !\clk2|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk2|contador\(10),
	datad => VCC,
	cin => \clk2|Add0~19\,
	combout => \clk2|Add0~20_combout\,
	cout => \clk2|Add0~21\);

-- Location: LCCOMB_X32_Y21_N4
\clk2|contador~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|contador~3_combout\ = (\clk2|Add0~20_combout\ & ((\clk2|Equal0~5_combout\) # (\clk2|LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk2|Add0~20_combout\,
	datac => \clk2|Equal0~5_combout\,
	datad => \clk2|LessThan0~6_combout\,
	combout => \clk2|contador~3_combout\);

-- Location: FF_X32_Y21_N5
\clk2|contador[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk2|contador~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk2|contador\(10));

-- Location: LCCOMB_X32_Y21_N0
\clk2|contador~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|contador~0_combout\ = (\clk2|Add0~22_combout\ & ((\clk2|Equal0~5_combout\) # (\clk2|LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk2|Equal0~5_combout\,
	datac => \clk2|Add0~22_combout\,
	datad => \clk2|LessThan0~6_combout\,
	combout => \clk2|contador~0_combout\);

-- Location: FF_X32_Y21_N1
\clk2|contador[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk2|contador~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk2|contador\(11));

-- Location: LCCOMB_X33_Y21_N6
\clk2|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|Equal0~1_combout\ = (((\clk2|contador\(15)) # (!\clk2|contador\(16))) # (!\clk2|contador\(10))) # (!\clk2|contador\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk2|contador\(11),
	datab => \clk2|contador\(10),
	datac => \clk2|contador\(15),
	datad => \clk2|contador\(16),
	combout => \clk2|Equal0~1_combout\);

-- Location: LCCOMB_X33_Y21_N24
\clk2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|Equal0~0_combout\ = (\clk2|contador\(14)) # ((\clk2|contador\(12)) # ((\clk2|contador\(13)) # (!\clk2|contador\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk2|contador\(14),
	datab => \clk2|contador\(12),
	datac => \clk2|contador\(13),
	datad => \clk2|contador\(17),
	combout => \clk2|Equal0~0_combout\);

-- Location: LCCOMB_X33_Y21_N22
\clk2|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|Equal0~2_combout\ = (((\clk2|contador\(9)) # (\clk2|contador\(7))) # (!\clk2|contador\(8))) # (!\clk2|contador\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk2|contador\(6),
	datab => \clk2|contador\(8),
	datac => \clk2|contador\(9),
	datad => \clk2|contador\(7),
	combout => \clk2|Equal0~2_combout\);

-- Location: LCCOMB_X33_Y21_N16
\clk2|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|Equal0~3_combout\ = (\clk2|contador\(3)) # ((\clk2|contador\(5)) # ((\clk2|contador\(4)) # (\clk2|contador\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk2|contador\(3),
	datab => \clk2|contador\(5),
	datac => \clk2|contador\(4),
	datad => \clk2|contador\(2),
	combout => \clk2|Equal0~3_combout\);

-- Location: LCCOMB_X33_Y21_N18
\clk2|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|Equal0~4_combout\ = (\clk2|contador\(1)) # ((\clk2|contador\(0)) # ((\clk2|Equal0~2_combout\) # (\clk2|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk2|contador\(1),
	datab => \clk2|contador\(0),
	datac => \clk2|Equal0~2_combout\,
	datad => \clk2|Equal0~3_combout\,
	combout => \clk2|Equal0~4_combout\);

-- Location: LCCOMB_X33_Y21_N14
\clk2|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|Equal0~5_combout\ = (\clk2|Equal0~1_combout\) # ((\clk2|Equal0~0_combout\) # ((\clk2|Equal0~4_combout\) # (!\clk2|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk2|Equal0~1_combout\,
	datab => \clk2|Equal0~0_combout\,
	datac => \clk2|LessThan0~1_combout\,
	datad => \clk2|Equal0~4_combout\,
	combout => \clk2|Equal0~5_combout\);

-- Location: LCCOMB_X33_Y21_N8
\clk2|clkout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|clkout~0_combout\ = (\clk2|LessThan0~6_combout\) # ((\clk2|clkout~q\ & !\clk2|Equal0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk2|clkout~q\,
	datac => \clk2|Equal0~5_combout\,
	datad => \clk2|LessThan0~6_combout\,
	combout => \clk2|clkout~0_combout\);

-- Location: LCCOMB_X33_Y21_N30
\clk2|clkout~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|clkout~feeder_combout\ = \clk2|clkout~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk2|clkout~0_combout\,
	combout => \clk2|clkout~feeder_combout\);

-- Location: FF_X33_Y21_N31
\clk2|clkout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk2|clkout~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk2|clkout~q\);

-- Location: CLKCTRL_G7
\clk2|clkout~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk2|clkout~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk2|clkout~clkctrl_outclk\);

-- Location: LCCOMB_X11_Y23_N2
\u4|Selectores[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Selectores[0]~0_combout\ = !\u4|Selectores\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u4|Selectores\(0),
	combout => \u4|Selectores[0]~0_combout\);

-- Location: FF_X11_Y23_N3
\u4|Selectores[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkout~clkctrl_outclk\,
	d => \u4|Selectores[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|Selectores\(0));

-- Location: LCCOMB_X11_Y23_N8
\u4|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux3~2_combout\ = \u4|Selectores\(1) $ (\u4|Selectores\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u4|Selectores\(1),
	datad => \u4|Selectores\(0),
	combout => \u4|Mux3~2_combout\);

-- Location: FF_X11_Y23_N9
\u4|Selectores[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkout~clkctrl_outclk\,
	d => \u4|Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|Selectores\(1));

-- Location: LCCOMB_X32_Y19_N8
\clk1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|Add0~0_combout\ = \clk1|contador\(0) $ (VCC)
-- \clk1|Add0~1\ = CARRY(\clk1|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk1|contador\(0),
	datad => VCC,
	combout => \clk1|Add0~0_combout\,
	cout => \clk1|Add0~1\);

-- Location: LCCOMB_X32_Y19_N10
\clk1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|Add0~2_combout\ = (\clk1|contador\(1) & (!\clk1|Add0~1\)) # (!\clk1|contador\(1) & ((\clk1|Add0~1\) # (GND)))
-- \clk1|Add0~3\ = CARRY((!\clk1|Add0~1\) # (!\clk1|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|contador\(1),
	datad => VCC,
	cin => \clk1|Add0~1\,
	combout => \clk1|Add0~2_combout\,
	cout => \clk1|Add0~3\);

-- Location: FF_X32_Y19_N11
\clk1|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk1|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|contador\(1));

-- Location: LCCOMB_X32_Y19_N12
\clk1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|Add0~4_combout\ = (\clk1|contador\(2) & (\clk1|Add0~3\ $ (GND))) # (!\clk1|contador\(2) & (!\clk1|Add0~3\ & VCC))
-- \clk1|Add0~5\ = CARRY((\clk1|contador\(2) & !\clk1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|contador\(2),
	datad => VCC,
	cin => \clk1|Add0~3\,
	combout => \clk1|Add0~4_combout\,
	cout => \clk1|Add0~5\);

-- Location: FF_X32_Y19_N13
\clk1|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk1|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|contador\(2));

-- Location: LCCOMB_X32_Y19_N14
\clk1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|Add0~6_combout\ = (\clk1|contador\(3) & (!\clk1|Add0~5\)) # (!\clk1|contador\(3) & ((\clk1|Add0~5\) # (GND)))
-- \clk1|Add0~7\ = CARRY((!\clk1|Add0~5\) # (!\clk1|contador\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk1|contador\(3),
	datad => VCC,
	cin => \clk1|Add0~5\,
	combout => \clk1|Add0~6_combout\,
	cout => \clk1|Add0~7\);

-- Location: FF_X32_Y19_N15
\clk1|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk1|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|contador\(3));

-- Location: LCCOMB_X32_Y19_N16
\clk1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|Add0~8_combout\ = (\clk1|contador\(4) & (\clk1|Add0~7\ $ (GND))) # (!\clk1|contador\(4) & (!\clk1|Add0~7\ & VCC))
-- \clk1|Add0~9\ = CARRY((\clk1|contador\(4) & !\clk1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk1|contador\(4),
	datad => VCC,
	cin => \clk1|Add0~7\,
	combout => \clk1|Add0~8_combout\,
	cout => \clk1|Add0~9\);

-- Location: FF_X32_Y19_N17
\clk1|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk1|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|contador\(4));

-- Location: LCCOMB_X32_Y19_N18
\clk1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|Add0~10_combout\ = (\clk1|contador\(5) & (!\clk1|Add0~9\)) # (!\clk1|contador\(5) & ((\clk1|Add0~9\) # (GND)))
-- \clk1|Add0~11\ = CARRY((!\clk1|Add0~9\) # (!\clk1|contador\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk1|contador\(5),
	datad => VCC,
	cin => \clk1|Add0~9\,
	combout => \clk1|Add0~10_combout\,
	cout => \clk1|Add0~11\);

-- Location: FF_X32_Y19_N19
\clk1|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk1|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|contador\(5));

-- Location: LCCOMB_X33_Y19_N6
\clk1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|Equal0~3_combout\ = (!\clk1|contador\(3) & (!\clk1|contador\(5) & (!\clk1|contador\(4) & !\clk1|contador\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|contador\(3),
	datab => \clk1|contador\(5),
	datac => \clk1|contador\(4),
	datad => \clk1|contador\(2),
	combout => \clk1|Equal0~3_combout\);

-- Location: LCCOMB_X32_Y19_N20
\clk1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|Add0~12_combout\ = (\clk1|contador\(6) & (\clk1|Add0~11\ $ (GND))) # (!\clk1|contador\(6) & (!\clk1|Add0~11\ & VCC))
-- \clk1|Add0~13\ = CARRY((\clk1|contador\(6) & !\clk1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk1|contador\(6),
	datad => VCC,
	cin => \clk1|Add0~11\,
	combout => \clk1|Add0~12_combout\,
	cout => \clk1|Add0~13\);

-- Location: LCCOMB_X32_Y19_N4
\clk1|contador~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|contador~5_combout\ = (\clk1|Add0~12_combout\ & (((!\clk1|Equal0~5_combout\) # (!\clk1|Equal0~4_combout\)) # (!\clk1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|Equal0~6_combout\,
	datab => \clk1|Equal0~4_combout\,
	datac => \clk1|Equal0~5_combout\,
	datad => \clk1|Add0~12_combout\,
	combout => \clk1|contador~5_combout\);

-- Location: FF_X32_Y19_N5
\clk1|contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk1|contador~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|contador\(6));

-- Location: LCCOMB_X32_Y19_N22
\clk1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|Add0~14_combout\ = (\clk1|contador\(7) & (!\clk1|Add0~13\)) # (!\clk1|contador\(7) & ((\clk1|Add0~13\) # (GND)))
-- \clk1|Add0~15\ = CARRY((!\clk1|Add0~13\) # (!\clk1|contador\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|contador\(7),
	datad => VCC,
	cin => \clk1|Add0~13\,
	combout => \clk1|Add0~14_combout\,
	cout => \clk1|Add0~15\);

-- Location: FF_X32_Y19_N23
\clk1|contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk1|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|contador\(7));

-- Location: LCCOMB_X32_Y19_N24
\clk1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|Add0~16_combout\ = (\clk1|contador\(8) & (\clk1|Add0~15\ $ (GND))) # (!\clk1|contador\(8) & (!\clk1|Add0~15\ & VCC))
-- \clk1|Add0~17\ = CARRY((\clk1|contador\(8) & !\clk1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk1|contador\(8),
	datad => VCC,
	cin => \clk1|Add0~15\,
	combout => \clk1|Add0~16_combout\,
	cout => \clk1|Add0~17\);

-- Location: LCCOMB_X33_Y19_N22
\clk1|contador~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|contador~6_combout\ = (\clk1|Add0~16_combout\ & (((!\clk1|Equal0~4_combout\) # (!\clk1|Equal0~6_combout\)) # (!\clk1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|Equal0~5_combout\,
	datab => \clk1|Equal0~6_combout\,
	datac => \clk1|Equal0~4_combout\,
	datad => \clk1|Add0~16_combout\,
	combout => \clk1|contador~6_combout\);

-- Location: FF_X33_Y19_N23
\clk1|contador[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk1|contador~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|contador\(8));

-- Location: LCCOMB_X32_Y19_N26
\clk1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|Add0~18_combout\ = (\clk1|contador\(9) & (!\clk1|Add0~17\)) # (!\clk1|contador\(9) & ((\clk1|Add0~17\) # (GND)))
-- \clk1|Add0~19\ = CARRY((!\clk1|Add0~17\) # (!\clk1|contador\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|contador\(9),
	datad => VCC,
	cin => \clk1|Add0~17\,
	combout => \clk1|Add0~18_combout\,
	cout => \clk1|Add0~19\);

-- Location: LCCOMB_X32_Y19_N6
\clk1|contador~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|contador~7_combout\ = (\clk1|Add0~18_combout\ & (((!\clk1|Equal0~6_combout\) # (!\clk1|Equal0~4_combout\)) # (!\clk1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|Equal0~5_combout\,
	datab => \clk1|Equal0~4_combout\,
	datac => \clk1|Add0~18_combout\,
	datad => \clk1|Equal0~6_combout\,
	combout => \clk1|contador~7_combout\);

-- Location: FF_X32_Y19_N7
\clk1|contador[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk1|contador~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|contador\(9));

-- Location: LCCOMB_X32_Y19_N28
\clk1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|Add0~20_combout\ = (\clk1|contador\(10) & (\clk1|Add0~19\ $ (GND))) # (!\clk1|contador\(10) & (!\clk1|Add0~19\ & VCC))
-- \clk1|Add0~21\ = CARRY((\clk1|contador\(10) & !\clk1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk1|contador\(10),
	datad => VCC,
	cin => \clk1|Add0~19\,
	combout => \clk1|Add0~20_combout\,
	cout => \clk1|Add0~21\);

-- Location: FF_X32_Y19_N29
\clk1|contador[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk1|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|contador\(10));

-- Location: LCCOMB_X32_Y19_N30
\clk1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|Add0~22_combout\ = (\clk1|contador\(11) & (!\clk1|Add0~21\)) # (!\clk1|contador\(11) & ((\clk1|Add0~21\) # (GND)))
-- \clk1|Add0~23\ = CARRY((!\clk1|Add0~21\) # (!\clk1|contador\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk1|contador\(11),
	datad => VCC,
	cin => \clk1|Add0~21\,
	combout => \clk1|Add0~22_combout\,
	cout => \clk1|Add0~23\);

-- Location: LCCOMB_X32_Y19_N0
\clk1|contador~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|contador~8_combout\ = (\clk1|Add0~22_combout\ & (((!\clk1|Equal0~6_combout\) # (!\clk1|Equal0~4_combout\)) # (!\clk1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|Equal0~5_combout\,
	datab => \clk1|Equal0~4_combout\,
	datac => \clk1|Add0~22_combout\,
	datad => \clk1|Equal0~6_combout\,
	combout => \clk1|contador~8_combout\);

-- Location: FF_X32_Y19_N1
\clk1|contador[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk1|contador~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|contador\(11));

-- Location: LCCOMB_X32_Y18_N0
\clk1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|Add0~24_combout\ = (\clk1|contador\(12) & (\clk1|Add0~23\ $ (GND))) # (!\clk1|contador\(12) & (!\clk1|Add0~23\ & VCC))
-- \clk1|Add0~25\ = CARRY((\clk1|contador\(12) & !\clk1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk1|contador\(12),
	datad => VCC,
	cin => \clk1|Add0~23\,
	combout => \clk1|Add0~24_combout\,
	cout => \clk1|Add0~25\);

-- Location: FF_X32_Y18_N1
\clk1|contador[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk1|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|contador\(12));

-- Location: LCCOMB_X32_Y18_N2
\clk1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|Add0~26_combout\ = (\clk1|contador\(13) & (!\clk1|Add0~25\)) # (!\clk1|contador\(13) & ((\clk1|Add0~25\) # (GND)))
-- \clk1|Add0~27\ = CARRY((!\clk1|Add0~25\) # (!\clk1|contador\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk1|contador\(13),
	datad => VCC,
	cin => \clk1|Add0~25\,
	combout => \clk1|Add0~26_combout\,
	cout => \clk1|Add0~27\);

-- Location: FF_X32_Y18_N3
\clk1|contador[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk1|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|contador\(13));

-- Location: LCCOMB_X33_Y19_N20
\clk1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|Equal0~1_combout\ = (\clk1|contador\(11) & (!\clk1|contador\(10) & (!\clk1|contador\(13) & !\clk1|contador\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|contador\(11),
	datab => \clk1|contador\(10),
	datac => \clk1|contador\(13),
	datad => \clk1|contador\(12),
	combout => \clk1|Equal0~1_combout\);

-- Location: LCCOMB_X33_Y19_N26
\clk1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|Equal0~2_combout\ = (\clk1|contador\(8) & (\clk1|contador\(9) & (\clk1|contador\(6) & !\clk1|contador\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|contador\(8),
	datab => \clk1|contador\(9),
	datac => \clk1|contador\(6),
	datad => \clk1|contador\(7),
	combout => \clk1|Equal0~2_combout\);

-- Location: LCCOMB_X32_Y18_N4
\clk1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|Add0~28_combout\ = (\clk1|contador\(14) & (\clk1|Add0~27\ $ (GND))) # (!\clk1|contador\(14) & (!\clk1|Add0~27\ & VCC))
-- \clk1|Add0~29\ = CARRY((\clk1|contador\(14) & !\clk1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk1|contador\(14),
	datad => VCC,
	cin => \clk1|Add0~27\,
	combout => \clk1|Add0~28_combout\,
	cout => \clk1|Add0~29\);

-- Location: LCCOMB_X32_Y18_N24
\clk1|contador~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|contador~4_combout\ = (\clk1|Add0~28_combout\ & (((!\clk1|Equal0~4_combout\) # (!\clk1|Equal0~5_combout\)) # (!\clk1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|Equal0~6_combout\,
	datab => \clk1|Equal0~5_combout\,
	datac => \clk1|Add0~28_combout\,
	datad => \clk1|Equal0~4_combout\,
	combout => \clk1|contador~4_combout\);

-- Location: FF_X32_Y18_N25
\clk1|contador[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk1|contador~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|contador\(14));

-- Location: LCCOMB_X32_Y18_N6
\clk1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|Add0~30_combout\ = (\clk1|contador\(15) & (!\clk1|Add0~29\)) # (!\clk1|contador\(15) & ((\clk1|Add0~29\) # (GND)))
-- \clk1|Add0~31\ = CARRY((!\clk1|Add0~29\) # (!\clk1|contador\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|contador\(15),
	datad => VCC,
	cin => \clk1|Add0~29\,
	combout => \clk1|Add0~30_combout\,
	cout => \clk1|Add0~31\);

-- Location: FF_X32_Y18_N7
\clk1|contador[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk1|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|contador\(15));

-- Location: LCCOMB_X32_Y18_N8
\clk1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|Add0~32_combout\ = (\clk1|contador\(16) & (\clk1|Add0~31\ $ (GND))) # (!\clk1|contador\(16) & (!\clk1|Add0~31\ & VCC))
-- \clk1|Add0~33\ = CARRY((\clk1|contador\(16) & !\clk1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk1|contador\(16),
	datad => VCC,
	cin => \clk1|Add0~31\,
	combout => \clk1|Add0~32_combout\,
	cout => \clk1|Add0~33\);

-- Location: FF_X32_Y18_N9
\clk1|contador[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk1|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|contador\(16));

-- Location: LCCOMB_X32_Y18_N10
\clk1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|Add0~34_combout\ = (\clk1|contador\(17) & (!\clk1|Add0~33\)) # (!\clk1|contador\(17) & ((\clk1|Add0~33\) # (GND)))
-- \clk1|Add0~35\ = CARRY((!\clk1|Add0~33\) # (!\clk1|contador\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|contador\(17),
	datad => VCC,
	cin => \clk1|Add0~33\,
	combout => \clk1|Add0~34_combout\,
	cout => \clk1|Add0~35\);

-- Location: FF_X32_Y18_N11
\clk1|contador[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk1|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|contador\(17));

-- Location: LCCOMB_X33_Y18_N2
\clk1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|Equal0~0_combout\ = (!\clk1|contador\(16) & (!\clk1|contador\(15) & (\clk1|contador\(14) & !\clk1|contador\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|contador\(16),
	datab => \clk1|contador\(15),
	datac => \clk1|contador\(14),
	datad => \clk1|contador\(17),
	combout => \clk1|Equal0~0_combout\);

-- Location: LCCOMB_X33_Y19_N28
\clk1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|Equal0~4_combout\ = (\clk1|Equal0~3_combout\ & (\clk1|Equal0~1_combout\ & (\clk1|Equal0~2_combout\ & \clk1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|Equal0~3_combout\,
	datab => \clk1|Equal0~1_combout\,
	datac => \clk1|Equal0~2_combout\,
	datad => \clk1|Equal0~0_combout\,
	combout => \clk1|Equal0~4_combout\);

-- Location: LCCOMB_X32_Y18_N12
\clk1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|Add0~36_combout\ = (\clk1|contador\(18) & (\clk1|Add0~35\ $ (GND))) # (!\clk1|contador\(18) & (!\clk1|Add0~35\ & VCC))
-- \clk1|Add0~37\ = CARRY((\clk1|contador\(18) & !\clk1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|contador\(18),
	datad => VCC,
	cin => \clk1|Add0~35\,
	combout => \clk1|Add0~36_combout\,
	cout => \clk1|Add0~37\);

-- Location: LCCOMB_X32_Y18_N30
\clk1|contador~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|contador~3_combout\ = (\clk1|Add0~36_combout\ & (((!\clk1|Equal0~6_combout\) # (!\clk1|Equal0~4_combout\)) # (!\clk1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|Equal0~5_combout\,
	datab => \clk1|Equal0~4_combout\,
	datac => \clk1|Equal0~6_combout\,
	datad => \clk1|Add0~36_combout\,
	combout => \clk1|contador~3_combout\);

-- Location: FF_X32_Y18_N31
\clk1|contador[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk1|contador~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|contador\(18));

-- Location: LCCOMB_X32_Y18_N14
\clk1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|Add0~38_combout\ = (\clk1|contador\(19) & (!\clk1|Add0~37\)) # (!\clk1|contador\(19) & ((\clk1|Add0~37\) # (GND)))
-- \clk1|Add0~39\ = CARRY((!\clk1|Add0~37\) # (!\clk1|contador\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk1|contador\(19),
	datad => VCC,
	cin => \clk1|Add0~37\,
	combout => \clk1|Add0~38_combout\,
	cout => \clk1|Add0~39\);

-- Location: LCCOMB_X32_Y18_N28
\clk1|contador~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|contador~2_combout\ = (\clk1|Add0~38_combout\ & (((!\clk1|Equal0~4_combout\) # (!\clk1|Equal0~5_combout\)) # (!\clk1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|Equal0~6_combout\,
	datab => \clk1|Equal0~5_combout\,
	datac => \clk1|Add0~38_combout\,
	datad => \clk1|Equal0~4_combout\,
	combout => \clk1|contador~2_combout\);

-- Location: FF_X32_Y18_N29
\clk1|contador[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk1|contador~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|contador\(19));

-- Location: LCCOMB_X32_Y18_N16
\clk1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|Add0~40_combout\ = (\clk1|contador\(20) & (\clk1|Add0~39\ $ (GND))) # (!\clk1|contador\(20) & (!\clk1|Add0~39\ & VCC))
-- \clk1|Add0~41\ = CARRY((\clk1|contador\(20) & !\clk1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk1|contador\(20),
	datad => VCC,
	cin => \clk1|Add0~39\,
	combout => \clk1|Add0~40_combout\,
	cout => \clk1|Add0~41\);

-- Location: FF_X32_Y18_N17
\clk1|contador[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk1|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|contador\(20));

-- Location: LCCOMB_X32_Y18_N18
\clk1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|Add0~42_combout\ = (\clk1|contador\(21) & (!\clk1|Add0~41\)) # (!\clk1|contador\(21) & ((\clk1|Add0~41\) # (GND)))
-- \clk1|Add0~43\ = CARRY((!\clk1|Add0~41\) # (!\clk1|contador\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|contador\(21),
	datad => VCC,
	cin => \clk1|Add0~41\,
	combout => \clk1|Add0~42_combout\,
	cout => \clk1|Add0~43\);

-- Location: FF_X32_Y18_N19
\clk1|contador[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk1|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|contador\(21));

-- Location: LCCOMB_X33_Y19_N2
\clk1|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|Equal0~6_combout\ = (!\clk1|contador\(21) & (\clk1|contador\(22) & (!\clk1|contador\(23) & !\clk1|contador\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|contador\(21),
	datab => \clk1|contador\(22),
	datac => \clk1|contador\(23),
	datad => \clk1|contador\(20),
	combout => \clk1|Equal0~6_combout\);

-- Location: LCCOMB_X32_Y19_N2
\clk1|contador~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|contador~9_combout\ = (\clk1|Add0~0_combout\ & (((!\clk1|Equal0~4_combout\) # (!\clk1|Equal0~5_combout\)) # (!\clk1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|Equal0~6_combout\,
	datab => \clk1|Add0~0_combout\,
	datac => \clk1|Equal0~5_combout\,
	datad => \clk1|Equal0~4_combout\,
	combout => \clk1|contador~9_combout\);

-- Location: FF_X32_Y19_N3
\clk1|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk1|contador~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|contador\(0));

-- Location: LCCOMB_X33_Y19_N30
\clk1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|Equal0~5_combout\ = (!\clk1|contador\(0) & (!\clk1|contador\(1) & (\clk1|contador\(19) & \clk1|contador\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|contador\(0),
	datab => \clk1|contador\(1),
	datac => \clk1|contador\(19),
	datad => \clk1|contador\(18),
	combout => \clk1|Equal0~5_combout\);

-- Location: LCCOMB_X32_Y18_N20
\clk1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|Add0~44_combout\ = (\clk1|contador\(22) & (\clk1|Add0~43\ $ (GND))) # (!\clk1|contador\(22) & (!\clk1|Add0~43\ & VCC))
-- \clk1|Add0~45\ = CARRY((\clk1|contador\(22) & !\clk1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|contador\(22),
	datad => VCC,
	cin => \clk1|Add0~43\,
	combout => \clk1|Add0~44_combout\,
	cout => \clk1|Add0~45\);

-- Location: LCCOMB_X32_Y18_N26
\clk1|contador~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|contador~10_combout\ = (\clk1|Add0~44_combout\ & (((!\clk1|Equal0~6_combout\) # (!\clk1|Equal0~4_combout\)) # (!\clk1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|Equal0~5_combout\,
	datab => \clk1|Equal0~4_combout\,
	datac => \clk1|Equal0~6_combout\,
	datad => \clk1|Add0~44_combout\,
	combout => \clk1|contador~10_combout\);

-- Location: FF_X32_Y18_N27
\clk1|contador[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk1|contador~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|contador\(22));

-- Location: LCCOMB_X32_Y18_N22
\clk1|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|Add0~46_combout\ = \clk1|Add0~45\ $ (\clk1|contador\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \clk1|contador\(23),
	cin => \clk1|Add0~45\,
	combout => \clk1|Add0~46_combout\);

-- Location: FF_X32_Y18_N23
\clk1|contador[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk1|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|contador\(23));

-- Location: LCCOMB_X33_Y19_N8
\clk1|clkout~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|clkout~6_combout\ = (!\clk1|contador\(23) & !\clk1|contador\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|contador\(23),
	datac => \clk1|contador\(22),
	combout => \clk1|clkout~6_combout\);

-- Location: LCCOMB_X33_Y19_N4
\clk1|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|Equal0~7_combout\ = (\clk1|Equal0~6_combout\ & (\clk1|Equal0~5_combout\ & \clk1|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk1|Equal0~6_combout\,
	datac => \clk1|Equal0~5_combout\,
	datad => \clk1|Equal0~4_combout\,
	combout => \clk1|Equal0~7_combout\);

-- Location: LCCOMB_X33_Y19_N18
\clk1|clkout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|clkout~1_combout\ = (((!\clk1|contador\(5) & !\clk1|contador\(6))) # (!\clk1|contador\(7))) # (!\clk1|contador\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|contador\(8),
	datab => \clk1|contador\(5),
	datac => \clk1|contador\(6),
	datad => \clk1|contador\(7),
	combout => \clk1|clkout~1_combout\);

-- Location: LCCOMB_X33_Y19_N14
\clk1|clkout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|clkout~2_combout\ = (\clk1|contador\(11)) # ((\clk1|contador\(10) & ((\clk1|contador\(9)) # (!\clk1|clkout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|contador\(11),
	datab => \clk1|contador\(10),
	datac => \clk1|contador\(9),
	datad => \clk1|clkout~1_combout\,
	combout => \clk1|clkout~2_combout\);

-- Location: LCCOMB_X33_Y18_N0
\clk1|clkout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|clkout~0_combout\ = (\clk1|contador\(15)) # ((\clk1|contador\(14)) # (\clk1|contador\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk1|contador\(15),
	datac => \clk1|contador\(14),
	datad => \clk1|contador\(16),
	combout => \clk1|clkout~0_combout\);

-- Location: LCCOMB_X33_Y19_N16
\clk1|clkout~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|clkout~3_combout\ = (!\clk1|clkout~0_combout\ & (((!\clk1|contador\(12) & !\clk1|clkout~2_combout\)) # (!\clk1|contador\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|contador\(13),
	datab => \clk1|contador\(12),
	datac => \clk1|clkout~2_combout\,
	datad => \clk1|clkout~0_combout\,
	combout => \clk1|clkout~3_combout\);

-- Location: LCCOMB_X33_Y19_N0
\clk1|clkout~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|clkout~4_combout\ = (\clk1|contador\(18) & (\clk1|contador\(17) & !\clk1|clkout~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|contador\(18),
	datac => \clk1|contador\(17),
	datad => \clk1|clkout~3_combout\,
	combout => \clk1|clkout~4_combout\);

-- Location: LCCOMB_X33_Y19_N24
\clk1|clkout~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|clkout~5_combout\ = ((!\clk1|contador\(20) & (!\clk1|contador\(19) & !\clk1|clkout~4_combout\))) # (!\clk1|contador\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|contador\(21),
	datab => \clk1|contador\(20),
	datac => \clk1|contador\(19),
	datad => \clk1|clkout~4_combout\,
	combout => \clk1|clkout~5_combout\);

-- Location: LCCOMB_X33_Y19_N12
\clk1|clkout~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|clkout~7_combout\ = (\clk1|clkout~6_combout\ & ((\clk1|clkout~5_combout\) # ((\clk1|clkout~q\ & \clk1|Equal0~7_combout\)))) # (!\clk1|clkout~6_combout\ & (\clk1|clkout~q\ & (\clk1|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|clkout~6_combout\,
	datab => \clk1|clkout~q\,
	datac => \clk1|Equal0~7_combout\,
	datad => \clk1|clkout~5_combout\,
	combout => \clk1|clkout~7_combout\);

-- Location: LCCOMB_X33_Y19_N10
\clk1|clkout~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|clkout~feeder_combout\ = \clk1|clkout~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \clk1|clkout~7_combout\,
	combout => \clk1|clkout~feeder_combout\);

-- Location: FF_X33_Y19_N11
\clk1|clkout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \clk1|clkout~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|clkout~q\);

-- Location: CLKCTRL_G6
\clk1|clkout~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk1|clkout~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk1|clkout~clkctrl_outclk\);

-- Location: IOIBUF_X34_Y9_N22
\mode~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mode,
	o => \mode~input_o\);

-- Location: LCCOMB_X17_Y20_N14
\u2|contador[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|contador[0]~6_combout\ = \u2|contador\(0) $ (VCC)
-- \u2|contador[0]~7\ = CARRY(\u2|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|contador\(0),
	datad => VCC,
	combout => \u2|contador[0]~6_combout\,
	cout => \u2|contador[0]~7\);

-- Location: IOIBUF_X34_Y4_N15
\RST~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST,
	o => \RST~input_o\);

-- Location: LCCOMB_X17_Y20_N26
\u2|contador[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|contador[3]~8_combout\ = (!\RST~input_o\ & ((\mode~input_o\ & (!\u2|contador\(4) & !\u2|contador\(2))) # (!\mode~input_o\ & (\u2|contador\(4) & \u2|contador\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \mode~input_o\,
	datac => \u2|contador\(4),
	datad => \u2|contador\(2),
	combout => \u2|contador[3]~8_combout\);

-- Location: LCCOMB_X17_Y20_N0
\u2|contador[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|contador[3]~9_combout\ = (\u2|contador\(5) & (\u2|contador\(1) & (\u2|contador\(0) & \u2|contador\(4)))) # (!\u2|contador\(5) & (!\u2|contador\(1) & (!\u2|contador\(0) & !\u2|contador\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|contador\(5),
	datab => \u2|contador\(1),
	datac => \u2|contador\(0),
	datad => \u2|contador\(4),
	combout => \u2|contador[3]~9_combout\);

-- Location: LCCOMB_X17_Y20_N2
\u2|contador[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|contador[3]~10_combout\ = ((\u2|contador\(4) $ (\u2|contador\(3))) # (!\u2|contador[3]~9_combout\)) # (!\u2|contador[3]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|contador\(4),
	datab => \u2|contador\(3),
	datac => \u2|contador[3]~8_combout\,
	datad => \u2|contador[3]~9_combout\,
	combout => \u2|contador[3]~10_combout\);

-- Location: FF_X17_Y20_N15
\u2|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkout~clkctrl_outclk\,
	d => \u2|contador[0]~6_combout\,
	asdata => \mode~input_o\,
	sload => \RST~input_o\,
	ena => \u2|contador[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|contador\(0));

-- Location: LCCOMB_X17_Y20_N16
\u2|contador[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|contador[1]~11_combout\ = (\mode~input_o\ & ((\u2|contador\(1) & (\u2|contador[0]~7\ & VCC)) # (!\u2|contador\(1) & (!\u2|contador[0]~7\)))) # (!\mode~input_o\ & ((\u2|contador\(1) & (!\u2|contador[0]~7\)) # (!\u2|contador\(1) & ((\u2|contador[0]~7\) 
-- # (GND)))))
-- \u2|contador[1]~12\ = CARRY((\mode~input_o\ & (!\u2|contador\(1) & !\u2|contador[0]~7\)) # (!\mode~input_o\ & ((!\u2|contador[0]~7\) # (!\u2|contador\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mode~input_o\,
	datab => \u2|contador\(1),
	datad => VCC,
	cin => \u2|contador[0]~7\,
	combout => \u2|contador[1]~11_combout\,
	cout => \u2|contador[1]~12\);

-- Location: FF_X17_Y20_N17
\u2|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkout~clkctrl_outclk\,
	d => \u2|contador[1]~11_combout\,
	asdata => \mode~input_o\,
	sload => \RST~input_o\,
	ena => \u2|contador[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|contador\(1));

-- Location: LCCOMB_X17_Y20_N18
\u2|contador[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|contador[2]~13_combout\ = ((\mode~input_o\ $ (\u2|contador\(2) $ (!\u2|contador[1]~12\)))) # (GND)
-- \u2|contador[2]~14\ = CARRY((\mode~input_o\ & ((\u2|contador\(2)) # (!\u2|contador[1]~12\))) # (!\mode~input_o\ & (\u2|contador\(2) & !\u2|contador[1]~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mode~input_o\,
	datab => \u2|contador\(2),
	datad => VCC,
	cin => \u2|contador[1]~12\,
	combout => \u2|contador[2]~13_combout\,
	cout => \u2|contador[2]~14\);

-- Location: FF_X17_Y20_N19
\u2|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkout~clkctrl_outclk\,
	d => \u2|contador[2]~13_combout\,
	asdata => \mode~input_o\,
	sload => \RST~input_o\,
	ena => \u2|contador[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|contador\(2));

-- Location: LCCOMB_X17_Y20_N20
\u2|contador[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|contador[3]~15_combout\ = (\mode~input_o\ & ((\u2|contador\(3) & (\u2|contador[2]~14\ & VCC)) # (!\u2|contador\(3) & (!\u2|contador[2]~14\)))) # (!\mode~input_o\ & ((\u2|contador\(3) & (!\u2|contador[2]~14\)) # (!\u2|contador\(3) & 
-- ((\u2|contador[2]~14\) # (GND)))))
-- \u2|contador[3]~16\ = CARRY((\mode~input_o\ & (!\u2|contador\(3) & !\u2|contador[2]~14\)) # (!\mode~input_o\ & ((!\u2|contador[2]~14\) # (!\u2|contador\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mode~input_o\,
	datab => \u2|contador\(3),
	datad => VCC,
	cin => \u2|contador[2]~14\,
	combout => \u2|contador[3]~15_combout\,
	cout => \u2|contador[3]~16\);

-- Location: FF_X17_Y20_N21
\u2|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkout~clkctrl_outclk\,
	d => \u2|contador[3]~15_combout\,
	asdata => \mode~input_o\,
	sload => \RST~input_o\,
	ena => \u2|contador[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|contador\(3));

-- Location: LCCOMB_X17_Y20_N22
\u2|contador[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|contador[4]~17_combout\ = ((\mode~input_o\ $ (\u2|contador\(4) $ (!\u2|contador[3]~16\)))) # (GND)
-- \u2|contador[4]~18\ = CARRY((\mode~input_o\ & ((\u2|contador\(4)) # (!\u2|contador[3]~16\))) # (!\mode~input_o\ & (\u2|contador\(4) & !\u2|contador[3]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mode~input_o\,
	datab => \u2|contador\(4),
	datad => VCC,
	cin => \u2|contador[3]~16\,
	combout => \u2|contador[4]~17_combout\,
	cout => \u2|contador[4]~18\);

-- Location: FF_X17_Y20_N23
\u2|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkout~clkctrl_outclk\,
	d => \u2|contador[4]~17_combout\,
	asdata => \mode~input_o\,
	sload => \RST~input_o\,
	ena => \u2|contador[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|contador\(4));

-- Location: LCCOMB_X17_Y20_N24
\u2|contador[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|contador[5]~19_combout\ = \u2|contador\(5) $ (\mode~input_o\ $ (\u2|contador[4]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|contador\(5),
	datab => \mode~input_o\,
	cin => \u2|contador[4]~18\,
	combout => \u2|contador[5]~19_combout\);

-- Location: FF_X17_Y20_N25
\u2|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkout~clkctrl_outclk\,
	d => \u2|contador[5]~19_combout\,
	asdata => \mode~input_o\,
	sload => \RST~input_o\,
	ena => \u2|contador[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|contador\(5));

-- Location: LCCOMB_X17_Y20_N28
\u3|Z~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Z~2_combout\ = (\u2|contador\(5) & (!\u2|contador\(3) & ((\u2|contador\(4)) # (!\u2|contador\(2))))) # (!\u2|contador\(5) & (\u2|contador\(3) & ((\u2|contador\(2)) # (!\u2|contador\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|contador\(5),
	datab => \u2|contador\(2),
	datac => \u2|contador\(4),
	datad => \u2|contador\(3),
	combout => \u3|Z~2_combout\);

-- Location: LCCOMB_X17_Y20_N30
\u3|Z~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Z~1_combout\ = (\u2|contador\(2) & (\u2|contador\(5) & (!\u2|contador\(4) & !\u2|contador\(3)))) # (!\u2|contador\(2) & (\u2|contador\(4) & (\u2|contador\(5) $ (!\u2|contador\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|contador\(5),
	datab => \u2|contador\(2),
	datac => \u2|contador\(4),
	datad => \u2|contador\(3),
	combout => \u3|Z~1_combout\);

-- Location: LCCOMB_X17_Y20_N4
\u3|Z~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Z~0_combout\ = (\u2|contador\(2) & (\u2|contador\(4) $ (((\u2|contador\(3)) # (!\u2|contador\(5)))))) # (!\u2|contador\(2) & ((\u2|contador\(5) & (!\u2|contador\(4) & !\u2|contador\(3))) # (!\u2|contador\(5) & (\u2|contador\(4) & \u2|contador\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|contador\(5),
	datab => \u2|contador\(2),
	datac => \u2|contador\(4),
	datad => \u2|contador\(3),
	combout => \u3|Z~0_combout\);

-- Location: LCCOMB_X17_Y23_N20
\u4|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux0~0_combout\ = (\u3|Z~2_combout\ & (((!\u2|contador\(1) & !\u3|Z~0_combout\)))) # (!\u3|Z~2_combout\ & (\u3|Z~1_combout\ & ((\u2|contador\(1)) # (\u3|Z~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Z~2_combout\,
	datab => \u3|Z~1_combout\,
	datac => \u2|contador\(1),
	datad => \u3|Z~0_combout\,
	combout => \u4|Mux0~0_combout\);

-- Location: LCCOMB_X17_Y23_N10
\u4|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux0~1_combout\ = (\u4|Selectores\(1) & (!\u4|Selectores\(0) & \u4|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Selectores\(1),
	datac => \u4|Selectores\(0),
	datad => \u4|Mux0~0_combout\,
	combout => \u4|Mux0~1_combout\);

-- Location: LCCOMB_X17_Y20_N10
\u4|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux2~2_combout\ = (\u2|contador\(5) & ((\u2|contador\(4) & (\u2|contador\(2) & \u2|contador\(3))) # (!\u2|contador\(4) & ((!\u2|contador\(3)))))) # (!\u2|contador\(5) & (\u2|contador\(4) & ((\u2|contador\(2)) # (\u2|contador\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|contador\(5),
	datab => \u2|contador\(2),
	datac => \u2|contador\(4),
	datad => \u2|contador\(3),
	combout => \u4|Mux2~2_combout\);

-- Location: LCCOMB_X17_Y23_N6
\u3|Uni[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Uni[1]~0_combout\ = (\u3|Z~2_combout\ & (!\u2|contador\(1) & ((\u3|Z~1_combout\) # (\u3|Z~0_combout\)))) # (!\u3|Z~2_combout\ & (\u3|Z~1_combout\ $ ((\u2|contador\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Z~2_combout\,
	datab => \u3|Z~1_combout\,
	datac => \u2|contador\(1),
	datad => \u3|Z~0_combout\,
	combout => \u3|Uni[1]~0_combout\);

-- Location: LCCOMB_X17_Y23_N28
\u4|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux2~3_combout\ = (\u4|Selectores\(1) & (((!\u4|Selectores\(0) & \u3|Uni[1]~0_combout\)))) # (!\u4|Selectores\(1) & (\u4|Mux2~2_combout\ & (\u4|Selectores\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Selectores\(1),
	datab => \u4|Mux2~2_combout\,
	datac => \u4|Selectores\(0),
	datad => \u3|Uni[1]~0_combout\,
	combout => \u4|Mux2~3_combout\);

-- Location: LCCOMB_X17_Y23_N24
\u4|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux3~3_combout\ = \u3|Z~1_combout\ $ (((\u3|Z~2_combout\ & ((\u2|contador\(1)) # (\u3|Z~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Z~2_combout\,
	datab => \u3|Z~1_combout\,
	datac => \u2|contador\(1),
	datad => \u3|Z~0_combout\,
	combout => \u4|Mux3~3_combout\);

-- Location: LCCOMB_X17_Y23_N30
\u4|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux3~4_combout\ = (\u4|Selectores\(0) & (((\u4|Mux3~3_combout\ & !\u4|Selectores\(1))))) # (!\u4|Selectores\(0) & (\u2|contador\(0) & ((\u4|Selectores\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|contador\(0),
	datab => \u4|Mux3~3_combout\,
	datac => \u4|Selectores\(0),
	datad => \u4|Selectores\(1),
	combout => \u4|Mux3~4_combout\);

-- Location: LCCOMB_X17_Y23_N14
\u4|Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux1~5_combout\ = (\u3|Z~1_combout\ & ((\u2|contador\(1) $ (!\u3|Z~0_combout\)))) # (!\u3|Z~1_combout\ & (\u3|Z~2_combout\ & (\u2|contador\(1) & \u3|Z~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Z~2_combout\,
	datab => \u3|Z~1_combout\,
	datac => \u2|contador\(1),
	datad => \u3|Z~0_combout\,
	combout => \u4|Mux1~5_combout\);

-- Location: LCCOMB_X17_Y20_N12
\u4|Mux1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux1~7_combout\ = (\u2|contador\(2) & (!\u2|contador\(4) & (\u2|contador\(5) $ (!\u2|contador\(3))))) # (!\u2|contador\(2) & (!\u2|contador\(5) & (\u2|contador\(4) & \u2|contador\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|contador\(5),
	datab => \u2|contador\(2),
	datac => \u2|contador\(4),
	datad => \u2|contador\(3),
	combout => \u4|Mux1~7_combout\);

-- Location: LCCOMB_X17_Y20_N8
\u3|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|LessThan2~0_combout\ = (\u2|contador\(5) & ((\u2|contador\(4)) # (\u2|contador\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|contador\(5),
	datab => \u2|contador\(4),
	datad => \u2|contador\(3),
	combout => \u3|LessThan2~0_combout\);

-- Location: LCCOMB_X17_Y23_N16
\u4|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux1~4_combout\ = (\u4|Selectores\(1) & (\u4|Mux1~7_combout\ & (!\u4|Selectores\(0)))) # (!\u4|Selectores\(1) & (((\u4|Selectores\(0) & \u3|LessThan2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Selectores\(1),
	datab => \u4|Mux1~7_combout\,
	datac => \u4|Selectores\(0),
	datad => \u3|LessThan2~0_combout\,
	combout => \u4|Mux1~4_combout\);

-- Location: LCCOMB_X17_Y23_N18
\u4|Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux1~6_combout\ = (\u4|Mux1~4_combout\) # ((\u4|Selectores\(1) & (\u4|Mux1~5_combout\ & !\u4|Selectores\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Selectores\(1),
	datab => \u4|Mux1~5_combout\,
	datac => \u4|Selectores\(0),
	datad => \u4|Mux1~4_combout\,
	combout => \u4|Mux1~6_combout\);

-- Location: LCCOMB_X17_Y23_N12
\u5|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Mux6~0_combout\ = (\u4|Mux0~1_combout\ & (\u4|Mux3~4_combout\ & (\u4|Mux2~3_combout\ $ (\u4|Mux1~6_combout\)))) # (!\u4|Mux0~1_combout\ & (!\u4|Mux2~3_combout\ & (\u4|Mux3~4_combout\ $ (\u4|Mux1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Mux0~1_combout\,
	datab => \u4|Mux2~3_combout\,
	datac => \u4|Mux3~4_combout\,
	datad => \u4|Mux1~6_combout\,
	combout => \u5|Mux6~0_combout\);

-- Location: LCCOMB_X17_Y23_N26
\u5|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Mux5~0_combout\ = (\u4|Mux0~1_combout\ & ((\u4|Mux3~4_combout\ & (\u4|Mux2~3_combout\)) # (!\u4|Mux3~4_combout\ & ((\u4|Mux1~6_combout\))))) # (!\u4|Mux0~1_combout\ & (\u4|Mux1~6_combout\ & (\u4|Mux2~3_combout\ $ (\u4|Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Mux0~1_combout\,
	datab => \u4|Mux2~3_combout\,
	datac => \u4|Mux3~4_combout\,
	datad => \u4|Mux1~6_combout\,
	combout => \u5|Mux5~0_combout\);

-- Location: LCCOMB_X17_Y23_N0
\u5|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Mux4~0_combout\ = (\u4|Mux0~1_combout\ & (\u4|Mux1~6_combout\ & ((\u4|Mux2~3_combout\) # (!\u4|Mux3~4_combout\)))) # (!\u4|Mux0~1_combout\ & (\u4|Mux2~3_combout\ & (!\u4|Mux3~4_combout\ & !\u4|Mux1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Mux0~1_combout\,
	datab => \u4|Mux2~3_combout\,
	datac => \u4|Mux3~4_combout\,
	datad => \u4|Mux1~6_combout\,
	combout => \u5|Mux4~0_combout\);

-- Location: LCCOMB_X17_Y23_N2
\u5|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Mux3~0_combout\ = (\u4|Mux2~3_combout\ & ((\u4|Mux3~4_combout\ & ((\u4|Mux1~6_combout\))) # (!\u4|Mux3~4_combout\ & (\u4|Mux0~1_combout\ & !\u4|Mux1~6_combout\)))) # (!\u4|Mux2~3_combout\ & (!\u4|Mux0~1_combout\ & (\u4|Mux3~4_combout\ $ 
-- (\u4|Mux1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Mux0~1_combout\,
	datab => \u4|Mux2~3_combout\,
	datac => \u4|Mux3~4_combout\,
	datad => \u4|Mux1~6_combout\,
	combout => \u5|Mux3~0_combout\);

-- Location: LCCOMB_X17_Y23_N8
\u5|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Mux2~0_combout\ = (\u4|Mux2~3_combout\ & (!\u4|Mux0~1_combout\ & (\u4|Mux3~4_combout\))) # (!\u4|Mux2~3_combout\ & ((\u4|Mux1~6_combout\ & (!\u4|Mux0~1_combout\)) # (!\u4|Mux1~6_combout\ & ((\u4|Mux3~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Mux0~1_combout\,
	datab => \u4|Mux2~3_combout\,
	datac => \u4|Mux3~4_combout\,
	datad => \u4|Mux1~6_combout\,
	combout => \u5|Mux2~0_combout\);

-- Location: LCCOMB_X17_Y23_N22
\u5|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Mux1~0_combout\ = (\u4|Mux2~3_combout\ & (!\u4|Mux0~1_combout\ & ((\u4|Mux3~4_combout\) # (!\u4|Mux1~6_combout\)))) # (!\u4|Mux2~3_combout\ & (\u4|Mux3~4_combout\ & (\u4|Mux0~1_combout\ $ (!\u4|Mux1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Mux0~1_combout\,
	datab => \u4|Mux2~3_combout\,
	datac => \u4|Mux3~4_combout\,
	datad => \u4|Mux1~6_combout\,
	combout => \u5|Mux1~0_combout\);

-- Location: LCCOMB_X17_Y23_N4
\u5|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|Mux0~0_combout\ = (\u4|Mux3~4_combout\ & ((\u4|Mux0~1_combout\) # (\u4|Mux2~3_combout\ $ (\u4|Mux1~6_combout\)))) # (!\u4|Mux3~4_combout\ & ((\u4|Mux2~3_combout\) # (\u4|Mux0~1_combout\ $ (\u4|Mux1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Mux0~1_combout\,
	datab => \u4|Mux2~3_combout\,
	datac => \u4|Mux3~4_combout\,
	datad => \u4|Mux1~6_combout\,
	combout => \u5|Mux0~0_combout\);

-- Location: LCCOMB_X13_Y23_N0
\u4|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux6~0_combout\ = (\u4|Selectores\(0)) # (!\u4|Selectores\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u4|Selectores\(0),
	datad => \u4|Selectores\(1),
	combout => \u4|Mux6~0_combout\);

-- Location: LCCOMB_X11_Y23_N12
\u4|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux5~0_combout\ = (\u4|Selectores\(1)) # (!\u4|Selectores\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|Selectores\(1),
	datac => \u4|Selectores\(0),
	combout => \u4|Mux5~0_combout\);

-- Location: LCCOMB_X11_Y23_N10
\u4|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux5~1_combout\ = (\u4|Selectores\(1)) # (\u4|Selectores\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|Selectores\(1),
	datac => \u4|Selectores\(0),
	combout => \u4|Mux5~1_combout\);

ww_seg(0) <= \seg[0]~output_o\;

ww_seg(1) <= \seg[1]~output_o\;

ww_seg(2) <= \seg[2]~output_o\;

ww_seg(3) <= \seg[3]~output_o\;

ww_seg(4) <= \seg[4]~output_o\;

ww_seg(5) <= \seg[5]~output_o\;

ww_seg(6) <= \seg[6]~output_o\;

ww_seg(7) <= \seg[7]~output_o\;

ww_disp(0) <= \disp[0]~output_o\;

ww_disp(1) <= \disp[1]~output_o\;

ww_disp(2) <= \disp[2]~output_o\;

ww_disp(3) <= \disp[3]~output_o\;
END structure;


