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

-- DATE "12/13/2022 15:32:05"

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

ENTITY 	practica8 IS
    PORT (
	clk50 : IN std_logic;
	en : IN std_logic;
	dig : OUT std_logic_vector(3 DOWNTO 0);
	seg : OUT std_logic_vector(7 DOWNTO 0)
	);
END practica8;

-- Design Ports Information
-- en	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[0]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[1]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[2]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[3]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[0]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[1]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[2]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[3]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[4]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[5]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[6]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[7]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk50	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF practica8 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk50 : std_logic;
SIGNAL ww_en : std_logic;
SIGNAL ww_dig : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_seg : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u2|clkout~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u1|clkout~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \en~input_o\ : std_logic;
SIGNAL \dig[0]~output_o\ : std_logic;
SIGNAL \dig[1]~output_o\ : std_logic;
SIGNAL \dig[2]~output_o\ : std_logic;
SIGNAL \dig[3]~output_o\ : std_logic;
SIGNAL \seg[0]~output_o\ : std_logic;
SIGNAL \seg[1]~output_o\ : std_logic;
SIGNAL \seg[2]~output_o\ : std_logic;
SIGNAL \seg[3]~output_o\ : std_logic;
SIGNAL \seg[4]~output_o\ : std_logic;
SIGNAL \seg[5]~output_o\ : std_logic;
SIGNAL \seg[6]~output_o\ : std_logic;
SIGNAL \seg[7]~output_o\ : std_logic;
SIGNAL \clk50~input_o\ : std_logic;
SIGNAL \clk50~inputclkctrl_outclk\ : std_logic;
SIGNAL \u1|Add0~3\ : std_logic;
SIGNAL \u1|Add0~4_combout\ : std_logic;
SIGNAL \u1|Add0~5\ : std_logic;
SIGNAL \u1|Add0~6_combout\ : std_logic;
SIGNAL \u1|Add0~7\ : std_logic;
SIGNAL \u1|Add0~8_combout\ : std_logic;
SIGNAL \u1|contador~5_combout\ : std_logic;
SIGNAL \u1|Add0~9\ : std_logic;
SIGNAL \u1|Add0~10_combout\ : std_logic;
SIGNAL \u1|Add0~11\ : std_logic;
SIGNAL \u1|Add0~12_combout\ : std_logic;
SIGNAL \u1|Add0~13\ : std_logic;
SIGNAL \u1|Add0~14_combout\ : std_logic;
SIGNAL \u1|contador~6_combout\ : std_logic;
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
SIGNAL \u1|Add0~27\ : std_logic;
SIGNAL \u1|Add0~28_combout\ : std_logic;
SIGNAL \u1|contador~2_combout\ : std_logic;
SIGNAL \u1|Add0~29\ : std_logic;
SIGNAL \u1|Add0~30_combout\ : std_logic;
SIGNAL \u1|contador~1_combout\ : std_logic;
SIGNAL \u1|Add0~31\ : std_logic;
SIGNAL \u1|Add0~32_combout\ : std_logic;
SIGNAL \u1|contador~0_combout\ : std_logic;
SIGNAL \u1|Add0~33\ : std_logic;
SIGNAL \u1|Add0~34_combout\ : std_logic;
SIGNAL \u1|contador~3_combout\ : std_logic;
SIGNAL \u1|LessThan0~0_combout\ : std_logic;
SIGNAL \u1|LessThan0~7_combout\ : std_logic;
SIGNAL \u1|LessThan0~6_combout\ : std_logic;
SIGNAL \u1|LessThan0~8_combout\ : std_logic;
SIGNAL \u1|Add0~35\ : std_logic;
SIGNAL \u1|Add0~36_combout\ : std_logic;
SIGNAL \u1|Add0~37\ : std_logic;
SIGNAL \u1|Add0~38_combout\ : std_logic;
SIGNAL \u1|Add0~39\ : std_logic;
SIGNAL \u1|Add0~40_combout\ : std_logic;
SIGNAL \u1|Add0~41\ : std_logic;
SIGNAL \u1|Add0~42_combout\ : std_logic;
SIGNAL \u1|Add0~43\ : std_logic;
SIGNAL \u1|Add0~44_combout\ : std_logic;
SIGNAL \u1|Add0~45\ : std_logic;
SIGNAL \u1|Add0~46_combout\ : std_logic;
SIGNAL \u1|Add0~47\ : std_logic;
SIGNAL \u1|Add0~48_combout\ : std_logic;
SIGNAL \u1|Add0~49\ : std_logic;
SIGNAL \u1|Add0~50_combout\ : std_logic;
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
SIGNAL \u1|LessThan0~4_combout\ : std_logic;
SIGNAL \u1|LessThan0~1_combout\ : std_logic;
SIGNAL \u1|LessThan0~2_combout\ : std_logic;
SIGNAL \u1|LessThan0~3_combout\ : std_logic;
SIGNAL \u1|LessThan0~5_combout\ : std_logic;
SIGNAL \u1|LessThan0~9_combout\ : std_logic;
SIGNAL \u1|Add0~0_combout\ : std_logic;
SIGNAL \u1|contador~7_combout\ : std_logic;
SIGNAL \u1|Add0~1\ : std_logic;
SIGNAL \u1|Add0~2_combout\ : std_logic;
SIGNAL \u1|Equal0~2_combout\ : std_logic;
SIGNAL \u1|Equal0~0_combout\ : std_logic;
SIGNAL \u1|Equal0~3_combout\ : std_logic;
SIGNAL \u1|Equal0~1_combout\ : std_logic;
SIGNAL \u1|Equal0~4_combout\ : std_logic;
SIGNAL \u1|Equal0~5_combout\ : std_logic;
SIGNAL \u1|clkout~0_combout\ : std_logic;
SIGNAL \u1|clkout~feeder_combout\ : std_logic;
SIGNAL \u1|clkout~q\ : std_logic;
SIGNAL \u1|clkout~clkctrl_outclk\ : std_logic;
SIGNAL \u4|Selectores[0]~1_combout\ : std_logic;
SIGNAL \u4|Selectores[1]~0_combout\ : std_logic;
SIGNAL \u4|Mux3~0_combout\ : std_logic;
SIGNAL \u4|Mux2~0_combout\ : std_logic;
SIGNAL \u4|Mux1~0_combout\ : std_logic;
SIGNAL \u4|Mux1~1_combout\ : std_logic;
SIGNAL \u2|Add0~0_combout\ : std_logic;
SIGNAL \u2|contador~12_combout\ : std_logic;
SIGNAL \u2|Add0~1\ : std_logic;
SIGNAL \u2|Add0~2_combout\ : std_logic;
SIGNAL \u2|Add0~3\ : std_logic;
SIGNAL \u2|Add0~4_combout\ : std_logic;
SIGNAL \u2|Add0~5\ : std_logic;
SIGNAL \u2|Add0~6_combout\ : std_logic;
SIGNAL \u2|Add0~7\ : std_logic;
SIGNAL \u2|Add0~8_combout\ : std_logic;
SIGNAL \u2|Add0~9\ : std_logic;
SIGNAL \u2|Add0~10_combout\ : std_logic;
SIGNAL \u2|Add0~11\ : std_logic;
SIGNAL \u2|Add0~12_combout\ : std_logic;
SIGNAL \u2|Add0~13\ : std_logic;
SIGNAL \u2|Add0~14_combout\ : std_logic;
SIGNAL \u2|contador~6_combout\ : std_logic;
SIGNAL \u2|Add0~15\ : std_logic;
SIGNAL \u2|Add0~16_combout\ : std_logic;
SIGNAL \u2|Add0~17\ : std_logic;
SIGNAL \u2|Add0~18_combout\ : std_logic;
SIGNAL \u2|Add0~19\ : std_logic;
SIGNAL \u2|Add0~20_combout\ : std_logic;
SIGNAL \u2|Add0~21\ : std_logic;
SIGNAL \u2|Add0~22_combout\ : std_logic;
SIGNAL \u2|Add0~23\ : std_logic;
SIGNAL \u2|Add0~24_combout\ : std_logic;
SIGNAL \u2|contador~5_combout\ : std_logic;
SIGNAL \u2|Add0~25\ : std_logic;
SIGNAL \u2|Add0~26_combout\ : std_logic;
SIGNAL \u2|contador~4_combout\ : std_logic;
SIGNAL \u2|Add0~27\ : std_logic;
SIGNAL \u2|Add0~28_combout\ : std_logic;
SIGNAL \u2|contador~3_combout\ : std_logic;
SIGNAL \u2|Add0~29\ : std_logic;
SIGNAL \u2|Add0~30_combout\ : std_logic;
SIGNAL \u2|contador~2_combout\ : std_logic;
SIGNAL \u2|Add0~31\ : std_logic;
SIGNAL \u2|Add0~32_combout\ : std_logic;
SIGNAL \u2|Add0~33\ : std_logic;
SIGNAL \u2|Add0~34_combout\ : std_logic;
SIGNAL \u2|contador~1_combout\ : std_logic;
SIGNAL \u2|Add0~35\ : std_logic;
SIGNAL \u2|Add0~36_combout\ : std_logic;
SIGNAL \u2|Add0~37\ : std_logic;
SIGNAL \u2|Add0~38_combout\ : std_logic;
SIGNAL \u2|contador~10_combout\ : std_logic;
SIGNAL \u2|Add0~39\ : std_logic;
SIGNAL \u2|Add0~40_combout\ : std_logic;
SIGNAL \u2|contador~9_combout\ : std_logic;
SIGNAL \u2|Add0~41\ : std_logic;
SIGNAL \u2|Add0~42_combout\ : std_logic;
SIGNAL \u2|contador~8_combout\ : std_logic;
SIGNAL \u2|Add0~43\ : std_logic;
SIGNAL \u2|Add0~44_combout\ : std_logic;
SIGNAL \u2|contador~7_combout\ : std_logic;
SIGNAL \u2|Add0~45\ : std_logic;
SIGNAL \u2|Add0~46_combout\ : std_logic;
SIGNAL \u2|contador~0_combout\ : std_logic;
SIGNAL \u2|Equal0~3_combout\ : std_logic;
SIGNAL \u2|Add0~47\ : std_logic;
SIGNAL \u2|Add0~48_combout\ : std_logic;
SIGNAL \u2|Equal0~2_combout\ : std_logic;
SIGNAL \u2|Equal0~5_combout\ : std_logic;
SIGNAL \u2|Equal0~4_combout\ : std_logic;
SIGNAL \u2|Equal0~6_combout\ : std_logic;
SIGNAL \u2|Equal0~0_combout\ : std_logic;
SIGNAL \u2|LessThan0~0_combout\ : std_logic;
SIGNAL \u2|LessThan0~9_combout\ : std_logic;
SIGNAL \u2|LessThan0~4_combout\ : std_logic;
SIGNAL \u2|Equal0~1_combout\ : std_logic;
SIGNAL \u2|Equal0~7_combout\ : std_logic;
SIGNAL \u2|Add0~49\ : std_logic;
SIGNAL \u2|Add0~50_combout\ : std_logic;
SIGNAL \u2|contador~11_combout\ : std_logic;
SIGNAL \u2|Add0~51\ : std_logic;
SIGNAL \u2|Add0~52_combout\ : std_logic;
SIGNAL \u2|Add0~53\ : std_logic;
SIGNAL \u2|Add0~54_combout\ : std_logic;
SIGNAL \u2|Add0~55\ : std_logic;
SIGNAL \u2|Add0~56_combout\ : std_logic;
SIGNAL \u2|Add0~57\ : std_logic;
SIGNAL \u2|Add0~58_combout\ : std_logic;
SIGNAL \u2|Add0~59\ : std_logic;
SIGNAL \u2|Add0~60_combout\ : std_logic;
SIGNAL \u2|Add0~61\ : std_logic;
SIGNAL \u2|Add0~62_combout\ : std_logic;
SIGNAL \u2|LessThan0~1_combout\ : std_logic;
SIGNAL \u2|LessThan0~2_combout\ : std_logic;
SIGNAL \u2|LessThan0~3_combout\ : std_logic;
SIGNAL \u2|LessThan0~5_combout\ : std_logic;
SIGNAL \u2|LessThan0~6_combout\ : std_logic;
SIGNAL \u2|LessThan0~7_combout\ : std_logic;
SIGNAL \u2|LessThan0~8_combout\ : std_logic;
SIGNAL \u2|clkout~0_combout\ : std_logic;
SIGNAL \u2|clkout~feeder_combout\ : std_logic;
SIGNAL \u2|clkout~q\ : std_logic;
SIGNAL \u2|clkout~clkctrl_outclk\ : std_logic;
SIGNAL \contador[0]~1_combout\ : std_logic;
SIGNAL \u3|Add2~0_combout\ : std_logic;
SIGNAL \u3|Add0~0_combout\ : std_logic;
SIGNAL \u4|Mux11~0_combout\ : std_logic;
SIGNAL \contador[3]~0_combout\ : std_logic;
SIGNAL \u4|Mux11~1_combout\ : std_logic;
SIGNAL \u4|Mux11~2_combout\ : std_logic;
SIGNAL \u4|Mux11~3_combout\ : std_logic;
SIGNAL \u4|Mux10~0_combout\ : std_logic;
SIGNAL \u4|Mux10~1_combout\ : std_logic;
SIGNAL \u4|Mux10~2_combout\ : std_logic;
SIGNAL \u4|Mux9~1_combout\ : std_logic;
SIGNAL \u4|Mux9~0_combout\ : std_logic;
SIGNAL \u4|Mux9~2_combout\ : std_logic;
SIGNAL \u4|Mux8~0_combout\ : std_logic;
SIGNAL \u4|Mux8~1_combout\ : std_logic;
SIGNAL \u4|Mux8~2_combout\ : std_logic;
SIGNAL \u4|Mux8~3_combout\ : std_logic;
SIGNAL \u4|Mux7~0_combout\ : std_logic;
SIGNAL \u4|Mux7~1_combout\ : std_logic;
SIGNAL \u4|Mux7~2_combout\ : std_logic;
SIGNAL \u4|Mux7~3_combout\ : std_logic;
SIGNAL \u4|Mux7~4_combout\ : std_logic;
SIGNAL \u4|Mux6~1_combout\ : std_logic;
SIGNAL \u4|Mux6~0_combout\ : std_logic;
SIGNAL \u4|Mux6~2_combout\ : std_logic;
SIGNAL \u4|Mux6~3_combout\ : std_logic;
SIGNAL \u4|Mux5~1_combout\ : std_logic;
SIGNAL \u4|Mux5~0_combout\ : std_logic;
SIGNAL \u4|Mux5~2_combout\ : std_logic;
SIGNAL \u2|contador\ : std_logic_vector(31 DOWNTO 0);
SIGNAL contador : std_logic_vector(3 DOWNTO 0);
SIGNAL \u1|contador\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \u4|Selectores\ : std_logic_vector(1 DOWNTO 0);

BEGIN

ww_clk50 <= clk50;
ww_en <= en;
dig <= ww_dig;
seg <= ww_seg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk50~input_o\);

\u2|clkout~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u2|clkout~q\);

\u1|clkout~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u1|clkout~q\);

-- Location: IOOBUF_X33_Y10_N2
\dig[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \dig[0]~output_o\);

-- Location: IOOBUF_X33_Y12_N9
\dig[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \dig[1]~output_o\);

-- Location: IOOBUF_X33_Y12_N2
\dig[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \dig[2]~output_o\);

-- Location: IOOBUF_X33_Y11_N9
\dig[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|Mux1~1_combout\,
	devoe => ww_devoe,
	o => \dig[3]~output_o\);

-- Location: IOOBUF_X33_Y14_N2
\seg[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|Mux11~3_combout\,
	devoe => ww_devoe,
	o => \seg[0]~output_o\);

-- Location: IOOBUF_X33_Y15_N9
\seg[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|Mux10~2_combout\,
	devoe => ww_devoe,
	o => \seg[1]~output_o\);

-- Location: IOOBUF_X33_Y22_N2
\seg[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|Mux9~2_combout\,
	devoe => ww_devoe,
	o => \seg[2]~output_o\);

-- Location: IOOBUF_X33_Y14_N9
\seg[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|Mux8~3_combout\,
	devoe => ww_devoe,
	o => \seg[3]~output_o\);

-- Location: IOOBUF_X33_Y15_N2
\seg[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|Mux7~4_combout\,
	devoe => ww_devoe,
	o => \seg[4]~output_o\);

-- Location: IOOBUF_X33_Y11_N2
\seg[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|Mux6~3_combout\,
	devoe => ww_devoe,
	o => \seg[5]~output_o\);

-- Location: IOOBUF_X33_Y22_N9
\seg[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|Mux5~2_combout\,
	devoe => ww_devoe,
	o => \seg[6]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\seg[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg[7]~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\clk50~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk50,
	o => \clk50~input_o\);

-- Location: CLKCTRL_G17
\clk50~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk50~inputclkctrl_outclk\);

-- Location: LCCOMB_X20_Y8_N2
\u1|Add0~2\ : cycloneiv_lcell_comb
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

-- Location: LCCOMB_X20_Y8_N4
\u1|Add0~4\ : cycloneiv_lcell_comb
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

-- Location: FF_X20_Y8_N5
\u1|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \u1|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(2));

-- Location: LCCOMB_X20_Y8_N6
\u1|Add0~6\ : cycloneiv_lcell_comb
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

-- Location: FF_X20_Y8_N7
\u1|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \u1|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(3));

-- Location: LCCOMB_X20_Y8_N8
\u1|Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u1|Add0~8_combout\ = (\u1|contador\(4) & (\u1|Add0~7\ $ (GND))) # (!\u1|contador\(4) & (!\u1|Add0~7\ & VCC))
-- \u1|Add0~9\ = CARRY((\u1|contador\(4) & !\u1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(4),
	datad => VCC,
	cin => \u1|Add0~7\,
	combout => \u1|Add0~8_combout\,
	cout => \u1|Add0~9\);

-- Location: LCCOMB_X19_Y8_N10
\u1|contador~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u1|contador~5_combout\ = (\u1|Add0~8_combout\ & ((\u1|LessThan0~9_combout\) # (\u1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|LessThan0~9_combout\,
	datab => \u1|Equal0~5_combout\,
	datac => \u1|Add0~8_combout\,
	combout => \u1|contador~5_combout\);

-- Location: FF_X19_Y8_N11
\u1|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \u1|contador~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(4));

-- Location: LCCOMB_X20_Y8_N10
\u1|Add0~10\ : cycloneiv_lcell_comb
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

-- Location: FF_X20_Y8_N11
\u1|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \u1|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(5));

-- Location: LCCOMB_X20_Y8_N12
\u1|Add0~12\ : cycloneiv_lcell_comb
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

-- Location: FF_X20_Y8_N13
\u1|contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \u1|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(6));

-- Location: LCCOMB_X20_Y8_N14
\u1|Add0~14\ : cycloneiv_lcell_comb
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

-- Location: LCCOMB_X19_Y8_N26
\u1|contador~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u1|contador~6_combout\ = (\u1|Add0~14_combout\ & ((\u1|LessThan0~9_combout\) # (\u1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|LessThan0~9_combout\,
	datab => \u1|Equal0~5_combout\,
	datac => \u1|Add0~14_combout\,
	combout => \u1|contador~6_combout\);

-- Location: FF_X19_Y8_N27
\u1|contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \u1|contador~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(7));

-- Location: LCCOMB_X20_Y8_N16
\u1|Add0~16\ : cycloneiv_lcell_comb
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

-- Location: FF_X20_Y8_N17
\u1|contador[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \u1|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(8));

-- Location: LCCOMB_X20_Y8_N18
\u1|Add0~18\ : cycloneiv_lcell_comb
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

-- Location: FF_X20_Y8_N19
\u1|contador[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \u1|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(9));

-- Location: LCCOMB_X20_Y8_N20
\u1|Add0~20\ : cycloneiv_lcell_comb
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

-- Location: FF_X20_Y8_N21
\u1|contador[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \u1|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(10));

-- Location: LCCOMB_X20_Y8_N22
\u1|Add0~22\ : cycloneiv_lcell_comb
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

-- Location: FF_X20_Y8_N23
\u1|contador[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \u1|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(11));

-- Location: LCCOMB_X20_Y8_N24
\u1|Add0~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u1|Add0~24_combout\ = (\u1|contador\(12) & (\u1|Add0~23\ $ (GND))) # (!\u1|contador\(12) & (!\u1|Add0~23\ & VCC))
-- \u1|Add0~25\ = CARRY((\u1|contador\(12) & !\u1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(12),
	datad => VCC,
	cin => \u1|Add0~23\,
	combout => \u1|Add0~24_combout\,
	cout => \u1|Add0~25\);

-- Location: LCCOMB_X19_Y8_N12
\u1|contador~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u1|contador~4_combout\ = (\u1|Add0~24_combout\ & ((\u1|Equal0~5_combout\) # (\u1|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|Equal0~5_combout\,
	datac => \u1|LessThan0~9_combout\,
	datad => \u1|Add0~24_combout\,
	combout => \u1|contador~4_combout\);

-- Location: FF_X19_Y8_N13
\u1|contador[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \u1|contador~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(12));

-- Location: LCCOMB_X20_Y8_N26
\u1|Add0~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u1|Add0~26_combout\ = (\u1|contador\(13) & (!\u1|Add0~25\)) # (!\u1|contador\(13) & ((\u1|Add0~25\) # (GND)))
-- \u1|Add0~27\ = CARRY((!\u1|Add0~25\) # (!\u1|contador\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(13),
	datad => VCC,
	cin => \u1|Add0~25\,
	combout => \u1|Add0~26_combout\,
	cout => \u1|Add0~27\);

-- Location: FF_X20_Y8_N27
\u1|contador[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \u1|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(13));

-- Location: LCCOMB_X20_Y8_N28
\u1|Add0~28\ : cycloneiv_lcell_comb
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

-- Location: LCCOMB_X19_Y8_N6
\u1|contador~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u1|contador~2_combout\ = (\u1|Add0~28_combout\ & ((\u1|Equal0~5_combout\) # (\u1|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|Equal0~5_combout\,
	datac => \u1|LessThan0~9_combout\,
	datad => \u1|Add0~28_combout\,
	combout => \u1|contador~2_combout\);

-- Location: FF_X19_Y8_N7
\u1|contador[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \u1|contador~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(14));

-- Location: LCCOMB_X20_Y8_N30
\u1|Add0~30\ : cycloneiv_lcell_comb
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

-- Location: LCCOMB_X19_Y8_N16
\u1|contador~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u1|contador~1_combout\ = (\u1|Add0~30_combout\ & ((\u1|LessThan0~9_combout\) # (\u1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|LessThan0~9_combout\,
	datab => \u1|Equal0~5_combout\,
	datac => \u1|Add0~30_combout\,
	combout => \u1|contador~1_combout\);

-- Location: FF_X19_Y8_N17
\u1|contador[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \u1|contador~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(15));

-- Location: LCCOMB_X20_Y7_N0
\u1|Add0~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u1|Add0~32_combout\ = (\u1|contador\(16) & (\u1|Add0~31\ $ (GND))) # (!\u1|contador\(16) & (!\u1|Add0~31\ & VCC))
-- \u1|Add0~33\ = CARRY((\u1|contador\(16) & !\u1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(16),
	datad => VCC,
	cin => \u1|Add0~31\,
	combout => \u1|Add0~32_combout\,
	cout => \u1|Add0~33\);

-- Location: LCCOMB_X19_Y7_N26
\u1|contador~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u1|contador~0_combout\ = (\u1|Add0~32_combout\ & ((\u1|LessThan0~9_combout\) # (\u1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|LessThan0~9_combout\,
	datac => \u1|Add0~32_combout\,
	datad => \u1|Equal0~5_combout\,
	combout => \u1|contador~0_combout\);

-- Location: FF_X19_Y7_N27
\u1|contador[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \u1|contador~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(16));

-- Location: LCCOMB_X20_Y7_N2
\u1|Add0~34\ : cycloneiv_lcell_comb
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

-- Location: LCCOMB_X19_Y8_N2
\u1|contador~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u1|contador~3_combout\ = (\u1|Add0~34_combout\ & ((\u1|Equal0~5_combout\) # (\u1|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|Equal0~5_combout\,
	datac => \u1|LessThan0~9_combout\,
	datad => \u1|Add0~34_combout\,
	combout => \u1|contador~3_combout\);

-- Location: FF_X19_Y8_N3
\u1|contador[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \u1|contador~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(17));

-- Location: LCCOMB_X19_Y8_N28
\u1|LessThan0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u1|LessThan0~0_combout\ = (((!\u1|contador\(16)) # (!\u1|contador\(13))) # (!\u1|contador\(15))) # (!\u1|contador\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(14),
	datab => \u1|contador\(15),
	datac => \u1|contador\(13),
	datad => \u1|contador\(16),
	combout => \u1|LessThan0~0_combout\);

-- Location: LCCOMB_X19_Y8_N4
\u1|LessThan0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u1|LessThan0~7_combout\ = (\u1|contador\(7)) # ((\u1|contador\(9)) # ((\u1|contador\(10)) # (\u1|contador\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(7),
	datab => \u1|contador\(9),
	datac => \u1|contador\(10),
	datad => \u1|contador\(8),
	combout => \u1|LessThan0~7_combout\);

-- Location: LCCOMB_X19_Y8_N0
\u1|LessThan0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u1|LessThan0~6_combout\ = ((!\u1|contador\(4) & (!\u1|contador\(5) & !\u1|contador\(3)))) # (!\u1|contador\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(4),
	datab => \u1|contador\(5),
	datac => \u1|contador\(6),
	datad => \u1|contador\(3),
	combout => \u1|LessThan0~6_combout\);

-- Location: LCCOMB_X19_Y8_N14
\u1|LessThan0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u1|LessThan0~8_combout\ = (\u1|contador\(12)) # ((\u1|contador\(11) & ((\u1|LessThan0~7_combout\) # (!\u1|LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(12),
	datab => \u1|contador\(11),
	datac => \u1|LessThan0~7_combout\,
	datad => \u1|LessThan0~6_combout\,
	combout => \u1|LessThan0~8_combout\);

-- Location: LCCOMB_X20_Y7_N4
\u1|Add0~36\ : cycloneiv_lcell_comb
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

-- Location: FF_X20_Y7_N5
\u1|contador[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \u1|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(18));

-- Location: LCCOMB_X20_Y7_N6
\u1|Add0~38\ : cycloneiv_lcell_comb
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

-- Location: FF_X20_Y7_N7
\u1|contador[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \u1|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(19));

-- Location: LCCOMB_X20_Y7_N8
\u1|Add0~40\ : cycloneiv_lcell_comb
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

-- Location: FF_X20_Y7_N9
\u1|contador[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \u1|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(20));

-- Location: LCCOMB_X20_Y7_N10
\u1|Add0~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u1|Add0~42_combout\ = (\u1|contador\(21) & (!\u1|Add0~41\)) # (!\u1|contador\(21) & ((\u1|Add0~41\) # (GND)))
-- \u1|Add0~43\ = CARRY((!\u1|Add0~41\) # (!\u1|contador\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(21),
	datad => VCC,
	cin => \u1|Add0~41\,
	combout => \u1|Add0~42_combout\,
	cout => \u1|Add0~43\);

-- Location: FF_X20_Y7_N11
\u1|contador[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \u1|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(21));

-- Location: LCCOMB_X20_Y7_N12
\u1|Add0~44\ : cycloneiv_lcell_comb
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

-- Location: FF_X20_Y7_N13
\u1|contador[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \u1|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(22));

-- Location: LCCOMB_X20_Y7_N14
\u1|Add0~46\ : cycloneiv_lcell_comb
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

-- Location: FF_X20_Y7_N15
\u1|contador[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \u1|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(23));

-- Location: LCCOMB_X20_Y7_N16
\u1|Add0~48\ : cycloneiv_lcell_comb
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

-- Location: FF_X20_Y7_N17
\u1|contador[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \u1|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(24));

-- Location: LCCOMB_X20_Y7_N18
\u1|Add0~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u1|Add0~50_combout\ = (\u1|contador\(25) & (!\u1|Add0~49\)) # (!\u1|contador\(25) & ((\u1|Add0~49\) # (GND)))
-- \u1|Add0~51\ = CARRY((!\u1|Add0~49\) # (!\u1|contador\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|contador\(25),
	datad => VCC,
	cin => \u1|Add0~49\,
	combout => \u1|Add0~50_combout\,
	cout => \u1|Add0~51\);

-- Location: FF_X20_Y7_N19
\u1|contador[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \u1|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(25));

-- Location: LCCOMB_X20_Y7_N20
\u1|Add0~52\ : cycloneiv_lcell_comb
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

-- Location: FF_X20_Y7_N21
\u1|contador[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \u1|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(26));

-- Location: LCCOMB_X20_Y7_N22
\u1|Add0~54\ : cycloneiv_lcell_comb
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

-- Location: FF_X20_Y7_N23
\u1|contador[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \u1|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(27));

-- Location: LCCOMB_X20_Y7_N24
\u1|Add0~56\ : cycloneiv_lcell_comb
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

-- Location: FF_X20_Y7_N25
\u1|contador[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \u1|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(28));

-- Location: LCCOMB_X20_Y7_N26
\u1|Add0~58\ : cycloneiv_lcell_comb
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

-- Location: FF_X20_Y7_N27
\u1|contador[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \u1|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(29));

-- Location: LCCOMB_X20_Y7_N28
\u1|Add0~60\ : cycloneiv_lcell_comb
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

-- Location: FF_X20_Y7_N29
\u1|contador[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \u1|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(30));

-- Location: LCCOMB_X20_Y7_N30
\u1|Add0~62\ : cycloneiv_lcell_comb
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

-- Location: FF_X20_Y7_N31
\u1|contador[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \u1|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(31));

-- Location: LCCOMB_X19_Y7_N22
\u1|LessThan0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u1|LessThan0~4_combout\ = (!\u1|contador\(31) & !\u1|contador\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|contador\(31),
	datad => \u1|contador\(30),
	combout => \u1|LessThan0~4_combout\);

-- Location: LCCOMB_X19_Y7_N14
\u1|LessThan0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u1|LessThan0~1_combout\ = (!\u1|contador\(22) & (!\u1|contador\(21) & (!\u1|contador\(23) & !\u1|contador\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(22),
	datab => \u1|contador\(21),
	datac => \u1|contador\(23),
	datad => \u1|contador\(24),
	combout => \u1|LessThan0~1_combout\);

-- Location: LCCOMB_X19_Y7_N8
\u1|LessThan0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u1|LessThan0~2_combout\ = (!\u1|contador\(18) & (!\u1|contador\(20) & (!\u1|contador\(19) & !\u1|contador\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(18),
	datab => \u1|contador\(20),
	datac => \u1|contador\(19),
	datad => \u1|contador\(25),
	combout => \u1|LessThan0~2_combout\);

-- Location: LCCOMB_X19_Y7_N20
\u1|LessThan0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u1|LessThan0~3_combout\ = (!\u1|contador\(26) & (!\u1|contador\(27) & (!\u1|contador\(28) & !\u1|contador\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(26),
	datab => \u1|contador\(27),
	datac => \u1|contador\(28),
	datad => \u1|contador\(29),
	combout => \u1|LessThan0~3_combout\);

-- Location: LCCOMB_X19_Y7_N0
\u1|LessThan0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u1|LessThan0~5_combout\ = (\u1|LessThan0~4_combout\ & (\u1|LessThan0~1_combout\ & (\u1|LessThan0~2_combout\ & \u1|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|LessThan0~4_combout\,
	datab => \u1|LessThan0~1_combout\,
	datac => \u1|LessThan0~2_combout\,
	datad => \u1|LessThan0~3_combout\,
	combout => \u1|LessThan0~5_combout\);

-- Location: LCCOMB_X19_Y8_N20
\u1|LessThan0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u1|LessThan0~9_combout\ = (!\u1|contador\(17) & (\u1|LessThan0~5_combout\ & ((\u1|LessThan0~0_combout\) # (!\u1|LessThan0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(17),
	datab => \u1|LessThan0~0_combout\,
	datac => \u1|LessThan0~8_combout\,
	datad => \u1|LessThan0~5_combout\,
	combout => \u1|LessThan0~9_combout\);

-- Location: LCCOMB_X20_Y8_N0
\u1|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u1|Add0~0_combout\ = \u1|contador\(0) $ (VCC)
-- \u1|Add0~1\ = CARRY(\u1|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|contador\(0),
	datad => VCC,
	combout => \u1|Add0~0_combout\,
	cout => \u1|Add0~1\);

-- Location: LCCOMB_X19_Y7_N10
\u1|contador~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u1|contador~7_combout\ = (\u1|Add0~0_combout\ & ((\u1|Equal0~5_combout\) # (\u1|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|Equal0~5_combout\,
	datac => \u1|LessThan0~9_combout\,
	datad => \u1|Add0~0_combout\,
	combout => \u1|contador~7_combout\);

-- Location: FF_X19_Y7_N11
\u1|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \u1|contador~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(0));

-- Location: FF_X20_Y8_N3
\u1|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \u1|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(1));

-- Location: LCCOMB_X19_Y8_N22
\u1|Equal0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u1|Equal0~2_combout\ = ((\u1|contador\(11)) # ((\u1|contador\(5)) # (\u1|contador\(3)))) # (!\u1|contador\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(12),
	datab => \u1|contador\(11),
	datac => \u1|contador\(5),
	datad => \u1|contador\(3),
	combout => \u1|Equal0~2_combout\);

-- Location: LCCOMB_X19_Y8_N18
\u1|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u1|Equal0~0_combout\ = (((!\u1|contador\(16)) # (!\u1|contador\(17))) # (!\u1|contador\(15))) # (!\u1|contador\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(14),
	datab => \u1|contador\(15),
	datac => \u1|contador\(17),
	datad => \u1|contador\(16),
	combout => \u1|Equal0~0_combout\);

-- Location: LCCOMB_X19_Y8_N8
\u1|Equal0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u1|Equal0~3_combout\ = (\u1|contador\(2)) # (((\u1|contador\(6)) # (!\u1|contador\(7))) # (!\u1|contador\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(2),
	datab => \u1|contador\(4),
	datac => \u1|contador\(6),
	datad => \u1|contador\(7),
	combout => \u1|Equal0~3_combout\);

-- Location: LCCOMB_X19_Y8_N24
\u1|Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u1|Equal0~1_combout\ = (\u1|contador\(10)) # ((\u1|contador\(8)) # ((\u1|contador\(13)) # (\u1|contador\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(10),
	datab => \u1|contador\(8),
	datac => \u1|contador\(13),
	datad => \u1|contador\(9),
	combout => \u1|Equal0~1_combout\);

-- Location: LCCOMB_X19_Y8_N30
\u1|Equal0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u1|Equal0~4_combout\ = (\u1|Equal0~2_combout\) # ((\u1|Equal0~0_combout\) # ((\u1|Equal0~3_combout\) # (\u1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Equal0~2_combout\,
	datab => \u1|Equal0~0_combout\,
	datac => \u1|Equal0~3_combout\,
	datad => \u1|Equal0~1_combout\,
	combout => \u1|Equal0~4_combout\);

-- Location: LCCOMB_X19_Y7_N24
\u1|Equal0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u1|Equal0~5_combout\ = (\u1|contador\(1)) # ((\u1|contador\(0)) # ((\u1|Equal0~4_combout\) # (!\u1|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(1),
	datab => \u1|contador\(0),
	datac => \u1|Equal0~4_combout\,
	datad => \u1|LessThan0~5_combout\,
	combout => \u1|Equal0~5_combout\);

-- Location: LCCOMB_X19_Y7_N28
\u1|clkout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u1|clkout~0_combout\ = (\u1|LessThan0~9_combout\) # ((\u1|clkout~q\ & !\u1|Equal0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|clkout~q\,
	datab => \u1|Equal0~5_combout\,
	datad => \u1|LessThan0~9_combout\,
	combout => \u1|clkout~0_combout\);

-- Location: LCCOMB_X19_Y7_N30
\u1|clkout~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u1|clkout~feeder_combout\ = \u1|clkout~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|clkout~0_combout\,
	combout => \u1|clkout~feeder_combout\);

-- Location: FF_X19_Y7_N31
\u1|clkout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \u1|clkout~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|clkout~q\);

-- Location: CLKCTRL_G16
\u1|clkout~clkctrl\ : cycloneiv_clkctrl
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

-- Location: LCCOMB_X32_Y16_N6
\u4|Selectores[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u4|Selectores[0]~1_combout\ = !\u4|Selectores\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u4|Selectores\(0),
	combout => \u4|Selectores[0]~1_combout\);

-- Location: FF_X32_Y16_N7
\u4|Selectores[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clkout~clkctrl_outclk\,
	d => \u4|Selectores[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|Selectores\(0));

-- Location: LCCOMB_X32_Y16_N28
\u4|Selectores[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u4|Selectores[1]~0_combout\ = \u4|Selectores\(1) $ (\u4|Selectores\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u4|Selectores\(1),
	datad => \u4|Selectores\(0),
	combout => \u4|Selectores[1]~0_combout\);

-- Location: FF_X32_Y16_N29
\u4|Selectores[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|clkout~clkctrl_outclk\,
	d => \u4|Selectores[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|Selectores\(1));

-- Location: LCCOMB_X32_Y12_N20
\u4|Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u4|Mux3~0_combout\ = (!\u4|Selectores\(1)) # (!\u4|Selectores\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Selectores\(0),
	datad => \u4|Selectores\(1),
	combout => \u4|Mux3~0_combout\);

-- Location: LCCOMB_X32_Y12_N22
\u4|Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u4|Mux2~0_combout\ = (\u4|Selectores\(0)) # (!\u4|Selectores\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Selectores\(0),
	datad => \u4|Selectores\(1),
	combout => \u4|Mux2~0_combout\);

-- Location: LCCOMB_X32_Y12_N12
\u4|Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u4|Mux1~0_combout\ = (\u4|Selectores\(1)) # (!\u4|Selectores\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Selectores\(0),
	datad => \u4|Selectores\(1),
	combout => \u4|Mux1~0_combout\);

-- Location: LCCOMB_X32_Y12_N30
\u4|Mux1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u4|Mux1~1_combout\ = (\u4|Selectores\(0)) # (\u4|Selectores\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Selectores\(0),
	datad => \u4|Selectores\(1),
	combout => \u4|Mux1~1_combout\);

-- Location: LCCOMB_X13_Y25_N0
\u2|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u2|Add0~0_combout\ = \u2|contador\(0) $ (VCC)
-- \u2|Add0~1\ = CARRY(\u2|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|contador\(0),
	datad => VCC,
	combout => \u2|Add0~0_combout\,
	cout => \u2|Add0~1\);

-- Location: LCCOMB_X14_Y24_N10
\u2|contador~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u2|contador~12_combout\ = (\u2|Add0~0_combout\ & ((\u2|Equal0~7_combout\) # (\u2|LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|Equal0~7_combout\,
	datac => \u2|Add0~0_combout\,
	datad => \u2|LessThan0~8_combout\,
	combout => \u2|contador~12_combout\);

-- Location: FF_X14_Y24_N11
\u2|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \u2|contador~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|contador\(0));

-- Location: LCCOMB_X13_Y25_N2
\u2|Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u2|Add0~2_combout\ = (\u2|contador\(1) & (!\u2|Add0~1\)) # (!\u2|contador\(1) & ((\u2|Add0~1\) # (GND)))
-- \u2|Add0~3\ = CARRY((!\u2|Add0~1\) # (!\u2|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|contador\(1),
	datad => VCC,
	cin => \u2|Add0~1\,
	combout => \u2|Add0~2_combout\,
	cout => \u2|Add0~3\);

-- Location: FF_X13_Y25_N3
\u2|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \u2|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|contador\(1));

-- Location: LCCOMB_X13_Y25_N4
\u2|Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u2|Add0~4_combout\ = (\u2|contador\(2) & (\u2|Add0~3\ $ (GND))) # (!\u2|contador\(2) & (!\u2|Add0~3\ & VCC))
-- \u2|Add0~5\ = CARRY((\u2|contador\(2) & !\u2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|contador\(2),
	datad => VCC,
	cin => \u2|Add0~3\,
	combout => \u2|Add0~4_combout\,
	cout => \u2|Add0~5\);

-- Location: FF_X13_Y25_N5
\u2|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \u2|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|contador\(2));

-- Location: LCCOMB_X13_Y25_N6
\u2|Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u2|Add0~6_combout\ = (\u2|contador\(3) & (!\u2|Add0~5\)) # (!\u2|contador\(3) & ((\u2|Add0~5\) # (GND)))
-- \u2|Add0~7\ = CARRY((!\u2|Add0~5\) # (!\u2|contador\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|contador\(3),
	datad => VCC,
	cin => \u2|Add0~5\,
	combout => \u2|Add0~6_combout\,
	cout => \u2|Add0~7\);

-- Location: FF_X13_Y25_N7
\u2|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \u2|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|contador\(3));

-- Location: LCCOMB_X13_Y25_N8
\u2|Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u2|Add0~8_combout\ = (\u2|contador\(4) & (\u2|Add0~7\ $ (GND))) # (!\u2|contador\(4) & (!\u2|Add0~7\ & VCC))
-- \u2|Add0~9\ = CARRY((\u2|contador\(4) & !\u2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|contador\(4),
	datad => VCC,
	cin => \u2|Add0~7\,
	combout => \u2|Add0~8_combout\,
	cout => \u2|Add0~9\);

-- Location: FF_X13_Y25_N9
\u2|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \u2|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|contador\(4));

-- Location: LCCOMB_X13_Y25_N10
\u2|Add0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u2|Add0~10_combout\ = (\u2|contador\(5) & (!\u2|Add0~9\)) # (!\u2|contador\(5) & ((\u2|Add0~9\) # (GND)))
-- \u2|Add0~11\ = CARRY((!\u2|Add0~9\) # (!\u2|contador\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|contador\(5),
	datad => VCC,
	cin => \u2|Add0~9\,
	combout => \u2|Add0~10_combout\,
	cout => \u2|Add0~11\);

-- Location: FF_X13_Y25_N11
\u2|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \u2|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|contador\(5));

-- Location: LCCOMB_X13_Y25_N12
\u2|Add0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u2|Add0~12_combout\ = (\u2|contador\(6) & (\u2|Add0~11\ $ (GND))) # (!\u2|contador\(6) & (!\u2|Add0~11\ & VCC))
-- \u2|Add0~13\ = CARRY((\u2|contador\(6) & !\u2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|contador\(6),
	datad => VCC,
	cin => \u2|Add0~11\,
	combout => \u2|Add0~12_combout\,
	cout => \u2|Add0~13\);

-- Location: FF_X13_Y25_N13
\u2|contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \u2|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|contador\(6));

-- Location: LCCOMB_X13_Y25_N14
\u2|Add0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u2|Add0~14_combout\ = (\u2|contador\(7) & (!\u2|Add0~13\)) # (!\u2|contador\(7) & ((\u2|Add0~13\) # (GND)))
-- \u2|Add0~15\ = CARRY((!\u2|Add0~13\) # (!\u2|contador\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|contador\(7),
	datad => VCC,
	cin => \u2|Add0~13\,
	combout => \u2|Add0~14_combout\,
	cout => \u2|Add0~15\);

-- Location: LCCOMB_X14_Y24_N0
\u2|contador~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u2|contador~6_combout\ = (\u2|Add0~14_combout\ & ((\u2|Equal0~7_combout\) # (\u2|LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|Equal0~7_combout\,
	datac => \u2|Add0~14_combout\,
	datad => \u2|LessThan0~8_combout\,
	combout => \u2|contador~6_combout\);

-- Location: FF_X14_Y24_N1
\u2|contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \u2|contador~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|contador\(7));

-- Location: LCCOMB_X13_Y25_N16
\u2|Add0~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u2|Add0~16_combout\ = (\u2|contador\(8) & (\u2|Add0~15\ $ (GND))) # (!\u2|contador\(8) & (!\u2|Add0~15\ & VCC))
-- \u2|Add0~17\ = CARRY((\u2|contador\(8) & !\u2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|contador\(8),
	datad => VCC,
	cin => \u2|Add0~15\,
	combout => \u2|Add0~16_combout\,
	cout => \u2|Add0~17\);

-- Location: FF_X13_Y25_N17
\u2|contador[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \u2|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|contador\(8));

-- Location: LCCOMB_X13_Y25_N18
\u2|Add0~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u2|Add0~18_combout\ = (\u2|contador\(9) & (!\u2|Add0~17\)) # (!\u2|contador\(9) & ((\u2|Add0~17\) # (GND)))
-- \u2|Add0~19\ = CARRY((!\u2|Add0~17\) # (!\u2|contador\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|contador\(9),
	datad => VCC,
	cin => \u2|Add0~17\,
	combout => \u2|Add0~18_combout\,
	cout => \u2|Add0~19\);

-- Location: FF_X13_Y25_N19
\u2|contador[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \u2|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|contador\(9));

-- Location: LCCOMB_X13_Y25_N20
\u2|Add0~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u2|Add0~20_combout\ = (\u2|contador\(10) & (\u2|Add0~19\ $ (GND))) # (!\u2|contador\(10) & (!\u2|Add0~19\ & VCC))
-- \u2|Add0~21\ = CARRY((\u2|contador\(10) & !\u2|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|contador\(10),
	datad => VCC,
	cin => \u2|Add0~19\,
	combout => \u2|Add0~20_combout\,
	cout => \u2|Add0~21\);

-- Location: FF_X13_Y25_N21
\u2|contador[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \u2|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|contador\(10));

-- Location: LCCOMB_X13_Y25_N22
\u2|Add0~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u2|Add0~22_combout\ = (\u2|contador\(11) & (!\u2|Add0~21\)) # (!\u2|contador\(11) & ((\u2|Add0~21\) # (GND)))
-- \u2|Add0~23\ = CARRY((!\u2|Add0~21\) # (!\u2|contador\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|contador\(11),
	datad => VCC,
	cin => \u2|Add0~21\,
	combout => \u2|Add0~22_combout\,
	cout => \u2|Add0~23\);

-- Location: FF_X13_Y25_N23
\u2|contador[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \u2|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|contador\(11));

-- Location: LCCOMB_X13_Y25_N24
\u2|Add0~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u2|Add0~24_combout\ = (\u2|contador\(12) & (\u2|Add0~23\ $ (GND))) # (!\u2|contador\(12) & (!\u2|Add0~23\ & VCC))
-- \u2|Add0~25\ = CARRY((\u2|contador\(12) & !\u2|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|contador\(12),
	datad => VCC,
	cin => \u2|Add0~23\,
	combout => \u2|Add0~24_combout\,
	cout => \u2|Add0~25\);

-- Location: LCCOMB_X12_Y24_N8
\u2|contador~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u2|contador~5_combout\ = (\u2|Add0~24_combout\ & ((\u2|Equal0~7_combout\) # (\u2|LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|Equal0~7_combout\,
	datac => \u2|LessThan0~8_combout\,
	datad => \u2|Add0~24_combout\,
	combout => \u2|contador~5_combout\);

-- Location: FF_X12_Y24_N9
\u2|contador[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \u2|contador~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|contador\(12));

-- Location: LCCOMB_X13_Y25_N26
\u2|Add0~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u2|Add0~26_combout\ = (\u2|contador\(13) & (!\u2|Add0~25\)) # (!\u2|contador\(13) & ((\u2|Add0~25\) # (GND)))
-- \u2|Add0~27\ = CARRY((!\u2|Add0~25\) # (!\u2|contador\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|contador\(13),
	datad => VCC,
	cin => \u2|Add0~25\,
	combout => \u2|Add0~26_combout\,
	cout => \u2|Add0~27\);

-- Location: LCCOMB_X12_Y24_N10
\u2|contador~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u2|contador~4_combout\ = (\u2|Add0~26_combout\ & ((\u2|Equal0~7_combout\) # (\u2|LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|Equal0~7_combout\,
	datac => \u2|LessThan0~8_combout\,
	datad => \u2|Add0~26_combout\,
	combout => \u2|contador~4_combout\);

-- Location: FF_X12_Y24_N11
\u2|contador[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \u2|contador~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|contador\(13));

-- Location: LCCOMB_X13_Y25_N28
\u2|Add0~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u2|Add0~28_combout\ = (\u2|contador\(14) & (\u2|Add0~27\ $ (GND))) # (!\u2|contador\(14) & (!\u2|Add0~27\ & VCC))
-- \u2|Add0~29\ = CARRY((\u2|contador\(14) & !\u2|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|contador\(14),
	datad => VCC,
	cin => \u2|Add0~27\,
	combout => \u2|Add0~28_combout\,
	cout => \u2|Add0~29\);

-- Location: LCCOMB_X12_Y24_N0
\u2|contador~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u2|contador~3_combout\ = (\u2|Add0~28_combout\ & ((\u2|LessThan0~8_combout\) # (\u2|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|LessThan0~8_combout\,
	datac => \u2|Equal0~7_combout\,
	datad => \u2|Add0~28_combout\,
	combout => \u2|contador~3_combout\);

-- Location: FF_X12_Y24_N1
\u2|contador[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \u2|contador~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|contador\(14));

-- Location: LCCOMB_X13_Y25_N30
\u2|Add0~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u2|Add0~30_combout\ = (\u2|contador\(15) & (!\u2|Add0~29\)) # (!\u2|contador\(15) & ((\u2|Add0~29\) # (GND)))
-- \u2|Add0~31\ = CARRY((!\u2|Add0~29\) # (!\u2|contador\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|contador\(15),
	datad => VCC,
	cin => \u2|Add0~29\,
	combout => \u2|Add0~30_combout\,
	cout => \u2|Add0~31\);

-- Location: LCCOMB_X12_Y24_N20
\u2|contador~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u2|contador~2_combout\ = (\u2|Add0~30_combout\ & ((\u2|LessThan0~8_combout\) # (\u2|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|LessThan0~8_combout\,
	datac => \u2|Add0~30_combout\,
	datad => \u2|Equal0~7_combout\,
	combout => \u2|contador~2_combout\);

-- Location: FF_X12_Y24_N21
\u2|contador[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \u2|contador~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|contador\(15));

-- Location: LCCOMB_X13_Y24_N0
\u2|Add0~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u2|Add0~32_combout\ = (\u2|contador\(16) & (\u2|Add0~31\ $ (GND))) # (!\u2|contador\(16) & (!\u2|Add0~31\ & VCC))
-- \u2|Add0~33\ = CARRY((\u2|contador\(16) & !\u2|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|contador\(16),
	datad => VCC,
	cin => \u2|Add0~31\,
	combout => \u2|Add0~32_combout\,
	cout => \u2|Add0~33\);

-- Location: FF_X13_Y24_N1
\u2|contador[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \u2|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|contador\(16));

-- Location: LCCOMB_X13_Y24_N2
\u2|Add0~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u2|Add0~34_combout\ = (\u2|contador\(17) & (!\u2|Add0~33\)) # (!\u2|contador\(17) & ((\u2|Add0~33\) # (GND)))
-- \u2|Add0~35\ = CARRY((!\u2|Add0~33\) # (!\u2|contador\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|contador\(17),
	datad => VCC,
	cin => \u2|Add0~33\,
	combout => \u2|Add0~34_combout\,
	cout => \u2|Add0~35\);

-- Location: LCCOMB_X12_Y24_N18
\u2|contador~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u2|contador~1_combout\ = (\u2|Add0~34_combout\ & ((\u2|Equal0~7_combout\) # (\u2|LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|Equal0~7_combout\,
	datac => \u2|LessThan0~8_combout\,
	datad => \u2|Add0~34_combout\,
	combout => \u2|contador~1_combout\);

-- Location: FF_X12_Y24_N19
\u2|contador[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \u2|contador~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|contador\(17));

-- Location: LCCOMB_X13_Y24_N4
\u2|Add0~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u2|Add0~36_combout\ = (\u2|contador\(18) & (\u2|Add0~35\ $ (GND))) # (!\u2|contador\(18) & (!\u2|Add0~35\ & VCC))
-- \u2|Add0~37\ = CARRY((\u2|contador\(18) & !\u2|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|contador\(18),
	datad => VCC,
	cin => \u2|Add0~35\,
	combout => \u2|Add0~36_combout\,
	cout => \u2|Add0~37\);

-- Location: FF_X13_Y24_N5
\u2|contador[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \u2|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|contador\(18));

-- Location: LCCOMB_X13_Y24_N6
\u2|Add0~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u2|Add0~38_combout\ = (\u2|contador\(19) & (!\u2|Add0~37\)) # (!\u2|contador\(19) & ((\u2|Add0~37\) # (GND)))
-- \u2|Add0~39\ = CARRY((!\u2|Add0~37\) # (!\u2|contador\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|contador\(19),
	datad => VCC,
	cin => \u2|Add0~37\,
	combout => \u2|Add0~38_combout\,
	cout => \u2|Add0~39\);

-- Location: LCCOMB_X14_Y24_N24
\u2|contador~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u2|contador~10_combout\ = (\u2|Add0~38_combout\ & ((\u2|Equal0~7_combout\) # (\u2|LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|Equal0~7_combout\,
	datac => \u2|Add0~38_combout\,
	datad => \u2|LessThan0~8_combout\,
	combout => \u2|contador~10_combout\);

-- Location: FF_X14_Y24_N25
\u2|contador[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \u2|contador~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|contador\(19));

-- Location: LCCOMB_X13_Y24_N8
\u2|Add0~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u2|Add0~40_combout\ = (\u2|contador\(20) & (\u2|Add0~39\ $ (GND))) # (!\u2|contador\(20) & (!\u2|Add0~39\ & VCC))
-- \u2|Add0~41\ = CARRY((\u2|contador\(20) & !\u2|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|contador\(20),
	datad => VCC,
	cin => \u2|Add0~39\,
	combout => \u2|Add0~40_combout\,
	cout => \u2|Add0~41\);

-- Location: LCCOMB_X14_Y24_N18
\u2|contador~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u2|contador~9_combout\ = (\u2|Add0~40_combout\ & ((\u2|LessThan0~8_combout\) # (\u2|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|LessThan0~8_combout\,
	datac => \u2|Equal0~7_combout\,
	datad => \u2|Add0~40_combout\,
	combout => \u2|contador~9_combout\);

-- Location: FF_X14_Y24_N19
\u2|contador[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \u2|contador~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|contador\(20));

-- Location: LCCOMB_X13_Y24_N10
\u2|Add0~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u2|Add0~42_combout\ = (\u2|contador\(21) & (!\u2|Add0~41\)) # (!\u2|contador\(21) & ((\u2|Add0~41\) # (GND)))
-- \u2|Add0~43\ = CARRY((!\u2|Add0~41\) # (!\u2|contador\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|contador\(21),
	datad => VCC,
	cin => \u2|Add0~41\,
	combout => \u2|Add0~42_combout\,
	cout => \u2|Add0~43\);

-- Location: LCCOMB_X14_Y24_N12
\u2|contador~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u2|contador~8_combout\ = (\u2|Add0~42_combout\ & ((\u2|LessThan0~8_combout\) # (\u2|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|LessThan0~8_combout\,
	datac => \u2|Equal0~7_combout\,
	datad => \u2|Add0~42_combout\,
	combout => \u2|contador~8_combout\);

-- Location: FF_X14_Y24_N13
\u2|contador[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \u2|contador~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|contador\(21));

-- Location: LCCOMB_X13_Y24_N12
\u2|Add0~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u2|Add0~44_combout\ = (\u2|contador\(22) & (\u2|Add0~43\ $ (GND))) # (!\u2|contador\(22) & (!\u2|Add0~43\ & VCC))
-- \u2|Add0~45\ = CARRY((\u2|contador\(22) & !\u2|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|contador\(22),
	datad => VCC,
	cin => \u2|Add0~43\,
	combout => \u2|Add0~44_combout\,
	cout => \u2|Add0~45\);

-- Location: LCCOMB_X14_Y24_N26
\u2|contador~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u2|contador~7_combout\ = (\u2|Add0~44_combout\ & ((\u2|LessThan0~8_combout\) # (\u2|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|LessThan0~8_combout\,
	datac => \u2|Equal0~7_combout\,
	datad => \u2|Add0~44_combout\,
	combout => \u2|contador~7_combout\);

-- Location: FF_X14_Y24_N27
\u2|contador[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \u2|contador~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|contador\(22));

-- Location: LCCOMB_X13_Y24_N14
\u2|Add0~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u2|Add0~46_combout\ = (\u2|contador\(23) & (!\u2|Add0~45\)) # (!\u2|contador\(23) & ((\u2|Add0~45\) # (GND)))
-- \u2|Add0~47\ = CARRY((!\u2|Add0~45\) # (!\u2|contador\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|contador\(23),
	datad => VCC,
	cin => \u2|Add0~45\,
	combout => \u2|Add0~46_combout\,
	cout => \u2|Add0~47\);

-- Location: LCCOMB_X12_Y24_N12
\u2|contador~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u2|contador~0_combout\ = (\u2|Add0~46_combout\ & ((\u2|LessThan0~8_combout\) # (\u2|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|LessThan0~8_combout\,
	datac => \u2|Add0~46_combout\,
	datad => \u2|Equal0~7_combout\,
	combout => \u2|contador~0_combout\);

-- Location: FF_X12_Y24_N13
\u2|contador[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \u2|contador~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|contador\(23));

-- Location: LCCOMB_X12_Y24_N6
\u2|Equal0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u2|Equal0~3_combout\ = (((\u2|contador\(16)) # (\u2|contador\(18))) # (!\u2|contador\(17))) # (!\u2|contador\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|contador\(23),
	datab => \u2|contador\(17),
	datac => \u2|contador\(16),
	datad => \u2|contador\(18),
	combout => \u2|Equal0~3_combout\);

-- Location: LCCOMB_X13_Y24_N16
\u2|Add0~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u2|Add0~48_combout\ = (\u2|contador\(24) & (\u2|Add0~47\ $ (GND))) # (!\u2|contador\(24) & (!\u2|Add0~47\ & VCC))
-- \u2|Add0~49\ = CARRY((\u2|contador\(24) & !\u2|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|contador\(24),
	datad => VCC,
	cin => \u2|Add0~47\,
	combout => \u2|Add0~48_combout\,
	cout => \u2|Add0~49\);

-- Location: FF_X13_Y24_N17
\u2|contador[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \u2|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|contador\(24));

-- Location: LCCOMB_X12_Y24_N16
\u2|Equal0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u2|Equal0~2_combout\ = (((\u2|contador\(24)) # (!\u2|contador\(12))) # (!\u2|contador\(14))) # (!\u2|contador\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|contador\(13),
	datab => \u2|contador\(14),
	datac => \u2|contador\(12),
	datad => \u2|contador\(24),
	combout => \u2|Equal0~2_combout\);

-- Location: LCCOMB_X12_Y25_N30
\u2|Equal0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u2|Equal0~5_combout\ = (\u2|contador\(3)) # ((\u2|contador\(4)) # ((\u2|contador\(1)) # (\u2|contador\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|contador\(3),
	datab => \u2|contador\(4),
	datac => \u2|contador\(1),
	datad => \u2|contador\(2),
	combout => \u2|Equal0~5_combout\);

-- Location: LCCOMB_X12_Y24_N24
\u2|Equal0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u2|Equal0~4_combout\ = (\u2|contador\(5)) # (((\u2|contador\(11)) # (!\u2|contador\(7))) # (!\u2|contador\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|contador\(5),
	datab => \u2|contador\(15),
	datac => \u2|contador\(7),
	datad => \u2|contador\(11),
	combout => \u2|Equal0~4_combout\);

-- Location: LCCOMB_X12_Y24_N2
\u2|Equal0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u2|Equal0~6_combout\ = (\u2|Equal0~3_combout\) # ((\u2|Equal0~2_combout\) # ((\u2|Equal0~5_combout\) # (\u2|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Equal0~3_combout\,
	datab => \u2|Equal0~2_combout\,
	datac => \u2|Equal0~5_combout\,
	datad => \u2|Equal0~4_combout\,
	combout => \u2|Equal0~6_combout\);

-- Location: LCCOMB_X14_Y24_N30
\u2|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u2|Equal0~0_combout\ = (\u2|contador\(21) & (\u2|contador\(20) & (\u2|contador\(22) & \u2|contador\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|contador\(21),
	datab => \u2|contador\(20),
	datac => \u2|contador\(22),
	datad => \u2|contador\(19),
	combout => \u2|Equal0~0_combout\);

-- Location: LCCOMB_X14_Y24_N28
\u2|LessThan0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u2|LessThan0~0_combout\ = (!\u2|contador\(29) & (!\u2|contador\(26) & (!\u2|contador\(28) & !\u2|contador\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|contador\(29),
	datab => \u2|contador\(26),
	datac => \u2|contador\(28),
	datad => \u2|contador\(27),
	combout => \u2|LessThan0~0_combout\);

-- Location: LCCOMB_X14_Y24_N14
\u2|LessThan0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u2|LessThan0~9_combout\ = (!\u2|contador\(31) & !\u2|contador\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|contador\(31),
	datad => \u2|contador\(30),
	combout => \u2|LessThan0~9_combout\);

-- Location: LCCOMB_X12_Y25_N8
\u2|LessThan0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u2|LessThan0~4_combout\ = (!\u2|contador\(10) & (!\u2|contador\(8) & (!\u2|contador\(6) & !\u2|contador\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|contador\(10),
	datab => \u2|contador\(8),
	datac => \u2|contador\(6),
	datad => \u2|contador\(9),
	combout => \u2|LessThan0~4_combout\);

-- Location: LCCOMB_X14_Y24_N16
\u2|Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u2|Equal0~1_combout\ = (((!\u2|LessThan0~4_combout\) # (!\u2|LessThan0~9_combout\)) # (!\u2|LessThan0~0_combout\)) # (!\u2|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Equal0~0_combout\,
	datab => \u2|LessThan0~0_combout\,
	datac => \u2|LessThan0~9_combout\,
	datad => \u2|LessThan0~4_combout\,
	combout => \u2|Equal0~1_combout\);

-- Location: LCCOMB_X14_Y24_N8
\u2|Equal0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u2|Equal0~7_combout\ = (\u2|contador\(0)) # (((\u2|Equal0~6_combout\) # (\u2|Equal0~1_combout\)) # (!\u2|contador\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|contador\(0),
	datab => \u2|contador\(25),
	datac => \u2|Equal0~6_combout\,
	datad => \u2|Equal0~1_combout\,
	combout => \u2|Equal0~7_combout\);

-- Location: LCCOMB_X13_Y24_N18
\u2|Add0~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u2|Add0~50_combout\ = (\u2|contador\(25) & (!\u2|Add0~49\)) # (!\u2|contador\(25) & ((\u2|Add0~49\) # (GND)))
-- \u2|Add0~51\ = CARRY((!\u2|Add0~49\) # (!\u2|contador\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|contador\(25),
	datad => VCC,
	cin => \u2|Add0~49\,
	combout => \u2|Add0~50_combout\,
	cout => \u2|Add0~51\);

-- Location: LCCOMB_X14_Y24_N20
\u2|contador~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u2|contador~11_combout\ = (\u2|Add0~50_combout\ & ((\u2|LessThan0~8_combout\) # (\u2|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|LessThan0~8_combout\,
	datac => \u2|Equal0~7_combout\,
	datad => \u2|Add0~50_combout\,
	combout => \u2|contador~11_combout\);

-- Location: FF_X14_Y24_N21
\u2|contador[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \u2|contador~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|contador\(25));

-- Location: LCCOMB_X13_Y24_N20
\u2|Add0~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u2|Add0~52_combout\ = (\u2|contador\(26) & (\u2|Add0~51\ $ (GND))) # (!\u2|contador\(26) & (!\u2|Add0~51\ & VCC))
-- \u2|Add0~53\ = CARRY((\u2|contador\(26) & !\u2|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|contador\(26),
	datad => VCC,
	cin => \u2|Add0~51\,
	combout => \u2|Add0~52_combout\,
	cout => \u2|Add0~53\);

-- Location: FF_X13_Y24_N21
\u2|contador[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \u2|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|contador\(26));

-- Location: LCCOMB_X13_Y24_N22
\u2|Add0~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u2|Add0~54_combout\ = (\u2|contador\(27) & (!\u2|Add0~53\)) # (!\u2|contador\(27) & ((\u2|Add0~53\) # (GND)))
-- \u2|Add0~55\ = CARRY((!\u2|Add0~53\) # (!\u2|contador\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|contador\(27),
	datad => VCC,
	cin => \u2|Add0~53\,
	combout => \u2|Add0~54_combout\,
	cout => \u2|Add0~55\);

-- Location: FF_X13_Y24_N23
\u2|contador[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \u2|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|contador\(27));

-- Location: LCCOMB_X13_Y24_N24
\u2|Add0~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u2|Add0~56_combout\ = (\u2|contador\(28) & (\u2|Add0~55\ $ (GND))) # (!\u2|contador\(28) & (!\u2|Add0~55\ & VCC))
-- \u2|Add0~57\ = CARRY((\u2|contador\(28) & !\u2|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|contador\(28),
	datad => VCC,
	cin => \u2|Add0~55\,
	combout => \u2|Add0~56_combout\,
	cout => \u2|Add0~57\);

-- Location: FF_X13_Y24_N25
\u2|contador[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \u2|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|contador\(28));

-- Location: LCCOMB_X13_Y24_N26
\u2|Add0~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u2|Add0~58_combout\ = (\u2|contador\(29) & (!\u2|Add0~57\)) # (!\u2|contador\(29) & ((\u2|Add0~57\) # (GND)))
-- \u2|Add0~59\ = CARRY((!\u2|Add0~57\) # (!\u2|contador\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|contador\(29),
	datad => VCC,
	cin => \u2|Add0~57\,
	combout => \u2|Add0~58_combout\,
	cout => \u2|Add0~59\);

-- Location: FF_X13_Y24_N27
\u2|contador[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \u2|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|contador\(29));

-- Location: LCCOMB_X13_Y24_N28
\u2|Add0~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u2|Add0~60_combout\ = (\u2|contador\(30) & (\u2|Add0~59\ $ (GND))) # (!\u2|contador\(30) & (!\u2|Add0~59\ & VCC))
-- \u2|Add0~61\ = CARRY((\u2|contador\(30) & !\u2|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|contador\(30),
	datad => VCC,
	cin => \u2|Add0~59\,
	combout => \u2|Add0~60_combout\,
	cout => \u2|Add0~61\);

-- Location: FF_X13_Y24_N29
\u2|contador[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \u2|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|contador\(30));

-- Location: LCCOMB_X13_Y24_N30
\u2|Add0~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u2|Add0~62_combout\ = \u2|contador\(31) $ (\u2|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|contador\(31),
	cin => \u2|Add0~61\,
	combout => \u2|Add0~62_combout\);

-- Location: FF_X13_Y24_N31
\u2|contador[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \u2|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|contador\(31));

-- Location: LCCOMB_X14_Y24_N22
\u2|LessThan0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u2|LessThan0~1_combout\ = (!\u2|contador\(31) & (!\u2|contador\(30) & \u2|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|contador\(31),
	datac => \u2|contador\(30),
	datad => \u2|LessThan0~0_combout\,
	combout => \u2|LessThan0~1_combout\);

-- Location: LCCOMB_X12_Y24_N30
\u2|LessThan0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u2|LessThan0~2_combout\ = (!\u2|contador\(23) & (!\u2|contador\(15) & !\u2|contador\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|contador\(23),
	datab => \u2|contador\(15),
	datad => \u2|contador\(17),
	combout => \u2|LessThan0~2_combout\);

-- Location: LCCOMB_X12_Y24_N14
\u2|LessThan0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u2|LessThan0~3_combout\ = (((!\u2|contador\(11)) # (!\u2|contador\(12))) # (!\u2|contador\(14))) # (!\u2|contador\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|contador\(13),
	datab => \u2|contador\(14),
	datac => \u2|contador\(12),
	datad => \u2|contador\(11),
	combout => \u2|LessThan0~3_combout\);

-- Location: LCCOMB_X12_Y24_N4
\u2|LessThan0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u2|LessThan0~5_combout\ = (\u2|LessThan0~2_combout\ & ((\u2|LessThan0~3_combout\) # ((!\u2|contador\(7) & \u2|LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|LessThan0~2_combout\,
	datab => \u2|contador\(7),
	datac => \u2|LessThan0~3_combout\,
	datad => \u2|LessThan0~4_combout\,
	combout => \u2|LessThan0~5_combout\);

-- Location: LCCOMB_X12_Y24_N22
\u2|LessThan0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u2|LessThan0~6_combout\ = ((!\u2|contador\(17) & !\u2|contador\(16))) # (!\u2|contador\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|contador\(17),
	datac => \u2|contador\(16),
	datad => \u2|contador\(18),
	combout => \u2|LessThan0~6_combout\);

-- Location: LCCOMB_X12_Y24_N28
\u2|LessThan0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u2|LessThan0~7_combout\ = ((!\u2|contador\(23) & ((\u2|LessThan0~6_combout\) # (!\u2|Equal0~0_combout\)))) # (!\u2|contador\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|contador\(23),
	datab => \u2|contador\(24),
	datac => \u2|LessThan0~6_combout\,
	datad => \u2|Equal0~0_combout\,
	combout => \u2|LessThan0~7_combout\);

-- Location: LCCOMB_X12_Y24_N26
\u2|LessThan0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u2|LessThan0~8_combout\ = (\u2|LessThan0~1_combout\ & (!\u2|contador\(25) & ((\u2|LessThan0~5_combout\) # (\u2|LessThan0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|LessThan0~1_combout\,
	datab => \u2|contador\(25),
	datac => \u2|LessThan0~5_combout\,
	datad => \u2|LessThan0~7_combout\,
	combout => \u2|LessThan0~8_combout\);

-- Location: LCCOMB_X15_Y24_N16
\u2|clkout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u2|clkout~0_combout\ = (\u2|LessThan0~8_combout\) # ((\u2|clkout~q\ & !\u2|Equal0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|clkout~q\,
	datac => \u2|LessThan0~8_combout\,
	datad => \u2|Equal0~7_combout\,
	combout => \u2|clkout~0_combout\);

-- Location: LCCOMB_X15_Y24_N24
\u2|clkout~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u2|clkout~feeder_combout\ = \u2|clkout~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|clkout~0_combout\,
	combout => \u2|clkout~feeder_combout\);

-- Location: FF_X15_Y24_N25
\u2|clkout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \u2|clkout~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|clkout~q\);

-- Location: CLKCTRL_G14
\u2|clkout~clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u2|clkout~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u2|clkout~clkctrl_outclk\);

-- Location: LCCOMB_X32_Y16_N2
\contador[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador[0]~1_combout\ = !contador(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => contador(0),
	combout => \contador[0]~1_combout\);

-- Location: FF_X32_Y16_N3
\contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|clkout~clkctrl_outclk\,
	d => \contador[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(0));

-- Location: LCCOMB_X32_Y16_N24
\u3|Add2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u3|Add2~0_combout\ = contador(1) $ (contador(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => contador(1),
	datad => contador(0),
	combout => \u3|Add2~0_combout\);

-- Location: FF_X32_Y16_N25
\contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|clkout~clkctrl_outclk\,
	d => \u3|Add2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(1));

-- Location: LCCOMB_X32_Y16_N20
\u3|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u3|Add0~0_combout\ = contador(2) $ (((contador(1) & contador(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => contador(1),
	datac => contador(2),
	datad => contador(0),
	combout => \u3|Add0~0_combout\);

-- Location: FF_X32_Y16_N21
\contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|clkout~clkctrl_outclk\,
	d => \u3|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(2));

-- Location: LCCOMB_X32_Y15_N0
\u4|Mux11~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u4|Mux11~0_combout\ = (\u4|Selectores\(0) & (((\u4|Selectores\(1) & !contador(2))) # (!contador(0)))) # (!\u4|Selectores\(0) & (((contador(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Selectores\(0),
	datab => \u4|Selectores\(1),
	datac => contador(0),
	datad => contador(2),
	combout => \u4|Mux11~0_combout\);

-- Location: LCCOMB_X32_Y16_N18
\contador[3]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \contador[3]~0_combout\ = contador(3) $ (((contador(1) & (contador(0) & contador(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(1),
	datab => contador(0),
	datac => contador(3),
	datad => contador(2),
	combout => \contador[3]~0_combout\);

-- Location: FF_X32_Y16_N19
\contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|clkout~clkctrl_outclk\,
	d => \contador[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(3));

-- Location: LCCOMB_X32_Y15_N6
\u4|Mux11~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u4|Mux11~1_combout\ = (\u4|Selectores\(0) & ((\u4|Selectores\(1) & ((contador(2)) # (!contador(0)))) # (!\u4|Selectores\(1) & (contador(0))))) # (!\u4|Selectores\(0) & (\u4|Selectores\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Selectores\(0),
	datab => \u4|Selectores\(1),
	datac => contador(0),
	datad => contador(2),
	combout => \u4|Mux11~1_combout\);

-- Location: LCCOMB_X32_Y15_N28
\u4|Mux11~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u4|Mux11~2_combout\ = (\u4|Mux11~1_combout\ & (contador(1) & (!contador(3)))) # (!\u4|Mux11~1_combout\ & (!contador(1) & ((contador(3)) # (\u4|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Mux11~1_combout\,
	datab => contador(1),
	datac => contador(3),
	datad => \u4|Mux11~0_combout\,
	combout => \u4|Mux11~2_combout\);

-- Location: LCCOMB_X32_Y15_N30
\u4|Mux11~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u4|Mux11~3_combout\ = (\u4|Mux11~2_combout\ & (((!contador(3)) # (!\u4|Mux11~0_combout\)) # (!contador(2)))) # (!\u4|Mux11~2_combout\ & (contador(2) $ (\u4|Mux11~0_combout\ $ (contador(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(2),
	datab => \u4|Mux11~0_combout\,
	datac => contador(3),
	datad => \u4|Mux11~2_combout\,
	combout => \u4|Mux11~3_combout\);

-- Location: LCCOMB_X32_Y15_N12
\u4|Mux10~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u4|Mux10~0_combout\ = (contador(1) & ((\u4|Selectores\(1)) # ((contador(0) & \u4|Selectores\(0))))) # (!contador(1) & ((contador(0) & (\u4|Selectores\(0) $ (!\u4|Selectores\(1)))) # (!contador(0) & (\u4|Selectores\(0) & !\u4|Selectores\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(0),
	datab => contador(1),
	datac => \u4|Selectores\(0),
	datad => \u4|Selectores\(1),
	combout => \u4|Mux10~0_combout\);

-- Location: LCCOMB_X32_Y15_N26
\u4|Mux10~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u4|Mux10~1_combout\ = (contador(1) & (contador(0) $ ((\u4|Selectores\(0))))) # (!contador(1) & (\u4|Selectores\(1) & (contador(0) $ (\u4|Selectores\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(0),
	datab => contador(1),
	datac => \u4|Selectores\(0),
	datad => \u4|Selectores\(1),
	combout => \u4|Mux10~1_combout\);

-- Location: LCCOMB_X32_Y15_N16
\u4|Mux10~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u4|Mux10~2_combout\ = (\u4|Mux10~0_combout\ & ((contador(3)) # (\u4|Mux10~1_combout\ $ (!contador(2))))) # (!\u4|Mux10~0_combout\ & ((\u4|Mux10~1_combout\ $ (contador(2))) # (!contador(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Mux10~0_combout\,
	datab => contador(3),
	datac => \u4|Mux10~1_combout\,
	datad => contador(2),
	combout => \u4|Mux10~2_combout\);

-- Location: LCCOMB_X32_Y16_N22
\u4|Mux9~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u4|Mux9~1_combout\ = (\u4|Selectores\(0) & ((contador(2) & (!contador(1) & contador(0))) # (!contador(2) & (contador(1) & !contador(0))))) # (!\u4|Selectores\(0) & (contador(1) & (contador(2) $ (contador(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Selectores\(0),
	datab => contador(2),
	datac => contador(1),
	datad => contador(0),
	combout => \u4|Mux9~1_combout\);

-- Location: LCCOMB_X32_Y16_N4
\u4|Mux9~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u4|Mux9~0_combout\ = (\u4|Selectores\(0) & (!contador(2) & (contador(1) $ (!contador(0))))) # (!\u4|Selectores\(0) & (!contador(1) & (contador(2) $ (contador(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Selectores\(0),
	datab => contador(2),
	datac => contador(1),
	datad => contador(0),
	combout => \u4|Mux9~0_combout\);

-- Location: LCCOMB_X32_Y16_N16
\u4|Mux9~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u4|Mux9~2_combout\ = (contador(3)) # ((\u4|Mux9~1_combout\ & ((\u4|Selectores\(1)) # (\u4|Mux9~0_combout\))) # (!\u4|Mux9~1_combout\ & ((!\u4|Mux9~0_combout\) # (!\u4|Selectores\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Mux9~1_combout\,
	datab => \u4|Selectores\(1),
	datac => \u4|Mux9~0_combout\,
	datad => contador(3),
	combout => \u4|Mux9~2_combout\);

-- Location: LCCOMB_X32_Y16_N26
\u4|Mux8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u4|Mux8~0_combout\ = (contador(2) & ((\u4|Selectores\(1) $ (!contador(1))) # (!contador(3)))) # (!contador(2) & (\u4|Selectores\(1) & ((contador(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Selectores\(1),
	datab => contador(3),
	datac => contador(1),
	datad => contador(2),
	combout => \u4|Mux8~0_combout\);

-- Location: LCCOMB_X32_Y16_N8
\u4|Mux8~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u4|Mux8~1_combout\ = (\u4|Selectores\(1) & (contador(1) $ (!contador(2)))) # (!\u4|Selectores\(1) & (contador(1) & !contador(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|Selectores\(1),
	datac => contador(1),
	datad => contador(2),
	combout => \u4|Mux8~1_combout\);

-- Location: LCCOMB_X32_Y16_N0
\u4|Mux8~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u4|Mux8~2_combout\ = (\u4|Selectores\(0) & ((\u4|Mux8~1_combout\ & (!\u4|Mux8~0_combout\ & contador(0))) # (!\u4|Mux8~1_combout\ & ((contador(0)) # (!\u4|Mux8~0_combout\))))) # (!\u4|Selectores\(0) & ((\u4|Mux8~0_combout\ & ((!contador(0)))) # 
-- (!\u4|Mux8~0_combout\ & (!\u4|Mux8~1_combout\ & contador(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101101010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Selectores\(0),
	datab => \u4|Mux8~1_combout\,
	datac => \u4|Mux8~0_combout\,
	datad => contador(0),
	combout => \u4|Mux8~2_combout\);

-- Location: LCCOMB_X32_Y16_N30
\u4|Mux8~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u4|Mux8~3_combout\ = (\u4|Mux8~2_combout\ & ((\u4|Mux8~0_combout\ $ (\u4|Mux8~1_combout\)) # (!contador(3)))) # (!\u4|Mux8~2_combout\ & (contador(3) $ (((!\u4|Mux8~0_combout\ & \u4|Mux8~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Mux8~0_combout\,
	datab => \u4|Mux8~2_combout\,
	datac => \u4|Mux8~1_combout\,
	datad => contador(3),
	combout => \u4|Mux8~3_combout\);

-- Location: LCCOMB_X32_Y15_N10
\u4|Mux7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u4|Mux7~0_combout\ = (contador(0) & (\u4|Selectores\(0) $ (((contador(1) & !\u4|Selectores\(1)))))) # (!contador(0) & ((contador(1) & (\u4|Selectores\(0) & !\u4|Selectores\(1))) # (!contador(1) & (!\u4|Selectores\(0) & \u4|Selectores\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(0),
	datab => contador(1),
	datac => \u4|Selectores\(0),
	datad => \u4|Selectores\(1),
	combout => \u4|Mux7~0_combout\);

-- Location: LCCOMB_X32_Y15_N20
\u4|Mux7~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u4|Mux7~1_combout\ = (contador(0) & ((\u4|Selectores\(1)) # ((contador(1) & \u4|Selectores\(0))))) # (!contador(0) & (\u4|Selectores\(1) & ((contador(1)) # (\u4|Selectores\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(0),
	datab => contador(1),
	datac => \u4|Selectores\(0),
	datad => \u4|Selectores\(1),
	combout => \u4|Mux7~1_combout\);

-- Location: LCCOMB_X32_Y15_N2
\u4|Mux7~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u4|Mux7~2_combout\ = (\u4|Mux7~0_combout\ & (contador(1) $ (((contador(3) & !\u4|Mux7~1_combout\))))) # (!\u4|Mux7~0_combout\ & ((contador(3) & ((!\u4|Mux7~1_combout\))) # (!contador(3) & (!contador(1) & \u4|Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Mux7~0_combout\,
	datab => contador(1),
	datac => contador(3),
	datad => \u4|Mux7~1_combout\,
	combout => \u4|Mux7~2_combout\);

-- Location: LCCOMB_X32_Y15_N4
\u4|Mux7~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u4|Mux7~3_combout\ = (\u4|Mux7~1_combout\ & (!contador(3) & ((\u4|Mux7~0_combout\) # (contador(1))))) # (!\u4|Mux7~1_combout\ & (\u4|Mux7~0_combout\ $ ((contador(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Mux7~0_combout\,
	datab => contador(1),
	datac => contador(3),
	datad => \u4|Mux7~1_combout\,
	combout => \u4|Mux7~3_combout\);

-- Location: LCCOMB_X32_Y15_N22
\u4|Mux7~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u4|Mux7~4_combout\ = (contador(2) & ((\u4|Mux7~3_combout\))) # (!contador(2) & (\u4|Mux7~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|Mux7~2_combout\,
	datac => \u4|Mux7~3_combout\,
	datad => contador(2),
	combout => \u4|Mux7~4_combout\);

-- Location: LCCOMB_X32_Y15_N18
\u4|Mux6~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u4|Mux6~1_combout\ = (contador(0) & (\u4|Selectores\(0) $ (((contador(1) & !\u4|Selectores\(1)))))) # (!contador(0) & ((contador(1) & (\u4|Selectores\(0) & !\u4|Selectores\(1))) # (!contador(1) & (!\u4|Selectores\(0) & \u4|Selectores\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(0),
	datab => contador(1),
	datac => \u4|Selectores\(0),
	datad => \u4|Selectores\(1),
	combout => \u4|Mux6~1_combout\);

-- Location: LCCOMB_X32_Y15_N8
\u4|Mux6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u4|Mux6~0_combout\ = (contador(0) & ((\u4|Selectores\(1)) # ((contador(1) & \u4|Selectores\(0))))) # (!contador(0) & (\u4|Selectores\(1) & ((contador(1)) # (\u4|Selectores\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(0),
	datab => contador(1),
	datac => \u4|Selectores\(0),
	datad => \u4|Selectores\(1),
	combout => \u4|Mux6~0_combout\);

-- Location: LCCOMB_X32_Y15_N24
\u4|Mux6~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u4|Mux6~2_combout\ = (contador(2) & (((!contador(3))) # (!\u4|Mux6~0_combout\))) # (!contador(2) & ((\u4|Mux6~0_combout\ & ((\u4|Mux6~1_combout\))) # (!\u4|Mux6~0_combout\ & (contador(3) & !\u4|Mux6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(2),
	datab => \u4|Mux6~0_combout\,
	datac => contador(3),
	datad => \u4|Mux6~1_combout\,
	combout => \u4|Mux6~2_combout\);

-- Location: LCCOMB_X32_Y15_N14
\u4|Mux6~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u4|Mux6~3_combout\ = (\u4|Mux6~2_combout\ & (contador(2) $ (\u4|Mux6~1_combout\ $ (!contador(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(2),
	datab => \u4|Mux6~1_combout\,
	datac => contador(1),
	datad => \u4|Mux6~2_combout\,
	combout => \u4|Mux6~3_combout\);

-- Location: LCCOMB_X32_Y16_N12
\u4|Mux5~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u4|Mux5~1_combout\ = contador(1) $ (((contador(0) & \u4|Selectores\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => contador(1),
	datac => contador(0),
	datad => \u4|Selectores\(0),
	combout => \u4|Mux5~1_combout\);

-- Location: LCCOMB_X32_Y16_N14
\u4|Mux5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u4|Mux5~0_combout\ = contador(2) $ (((\u4|Selectores\(0) & ((contador(1)) # (!contador(0)))) # (!\u4|Selectores\(0) & ((contador(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Selectores\(0),
	datab => contador(2),
	datac => contador(1),
	datad => contador(0),
	combout => \u4|Mux5~0_combout\);

-- Location: LCCOMB_X32_Y16_N10
\u4|Mux5~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u4|Mux5~2_combout\ = (\u4|Mux5~1_combout\ & ((\u4|Selectores\(1) & (!\u4|Mux5~0_combout\)) # (!\u4|Selectores\(1) & (\u4|Mux5~0_combout\ & !contador(3))))) # (!\u4|Mux5~1_combout\ & (\u4|Mux5~0_combout\ & ((!contador(3)) # (!\u4|Selectores\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Mux5~1_combout\,
	datab => \u4|Selectores\(1),
	datac => \u4|Mux5~0_combout\,
	datad => contador(3),
	combout => \u4|Mux5~2_combout\);

-- Location: IOIBUF_X12_Y31_N1
\en~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en,
	o => \en~input_o\);

ww_dig(0) <= \dig[0]~output_o\;

ww_dig(1) <= \dig[1]~output_o\;

ww_dig(2) <= \dig[2]~output_o\;

ww_dig(3) <= \dig[3]~output_o\;

ww_seg(0) <= \seg[0]~output_o\;

ww_seg(1) <= \seg[1]~output_o\;

ww_seg(2) <= \seg[2]~output_o\;

ww_seg(3) <= \seg[3]~output_o\;

ww_seg(4) <= \seg[4]~output_o\;

ww_seg(5) <= \seg[5]~output_o\;

ww_seg(6) <= \seg[6]~output_o\;

ww_seg(7) <= \seg[7]~output_o\;
END structure;


