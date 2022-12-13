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

-- DATE "12/13/2022 16:51:53"

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

ENTITY 	practica8 IS
    PORT (
	clk50 : IN std_logic;
	en : IN std_logic;
	dig : OUT std_logic_vector(3 DOWNTO 0);
	seg : OUT std_logic_vector(7 DOWNTO 0)
	);
END practica8;

-- Design Ports Information
-- dig[0]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[1]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[2]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[3]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[0]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[1]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[2]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[3]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[4]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[5]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[6]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[7]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk50	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \u2|clkout~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u1|clkout~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \u1|Add0~0_combout\ : std_logic;
SIGNAL \u1|Add0~1\ : std_logic;
SIGNAL \u1|Add0~2_combout\ : std_logic;
SIGNAL \u1|Add0~3\ : std_logic;
SIGNAL \u1|Add0~4_combout\ : std_logic;
SIGNAL \u1|Add0~5\ : std_logic;
SIGNAL \u1|Add0~6_combout\ : std_logic;
SIGNAL \u1|contador~5_combout\ : std_logic;
SIGNAL \u1|Add0~7\ : std_logic;
SIGNAL \u1|Add0~8_combout\ : std_logic;
SIGNAL \u1|Add0~9\ : std_logic;
SIGNAL \u1|Add0~10_combout\ : std_logic;
SIGNAL \u1|Add0~11\ : std_logic;
SIGNAL \u1|Add0~12_combout\ : std_logic;
SIGNAL \u1|contador~6_combout\ : std_logic;
SIGNAL \u1|Add0~13\ : std_logic;
SIGNAL \u1|Add0~14_combout\ : std_logic;
SIGNAL \u1|Add0~15\ : std_logic;
SIGNAL \u1|Add0~16_combout\ : std_logic;
SIGNAL \u1|Add0~17\ : std_logic;
SIGNAL \u1|Add0~18_combout\ : std_logic;
SIGNAL \u1|Add0~19\ : std_logic;
SIGNAL \u1|Add0~20_combout\ : std_logic;
SIGNAL \u1|Add0~21\ : std_logic;
SIGNAL \u1|Add0~22_combout\ : std_logic;
SIGNAL \u1|contador~4_combout\ : std_logic;
SIGNAL \u1|Add0~23\ : std_logic;
SIGNAL \u1|Add0~24_combout\ : std_logic;
SIGNAL \u1|Add0~25\ : std_logic;
SIGNAL \u1|Add0~26_combout\ : std_logic;
SIGNAL \u1|contador~2_combout\ : std_logic;
SIGNAL \u1|Add0~27\ : std_logic;
SIGNAL \u1|Add0~28_combout\ : std_logic;
SIGNAL \u1|contador~1_combout\ : std_logic;
SIGNAL \u1|Add0~29\ : std_logic;
SIGNAL \u1|Add0~30_combout\ : std_logic;
SIGNAL \u1|contador~0_combout\ : std_logic;
SIGNAL \u1|Add0~31\ : std_logic;
SIGNAL \u1|Add0~32_combout\ : std_logic;
SIGNAL \u1|contador~3_combout\ : std_logic;
SIGNAL \u1|LessThan0~0_combout\ : std_logic;
SIGNAL \u1|LessThan0~7_combout\ : std_logic;
SIGNAL \u1|LessThan0~6_combout\ : std_logic;
SIGNAL \u1|LessThan0~8_combout\ : std_logic;
SIGNAL \u1|Add0~33\ : std_logic;
SIGNAL \u1|Add0~34_combout\ : std_logic;
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
SIGNAL \u1|LessThan0~1_combout\ : std_logic;
SIGNAL \u1|Add0~49\ : std_logic;
SIGNAL \u1|Add0~50_combout\ : std_logic;
SIGNAL \u1|Add0~51\ : std_logic;
SIGNAL \u1|Add0~52_combout\ : std_logic;
SIGNAL \u1|Add0~53\ : std_logic;
SIGNAL \u1|Add0~54_combout\ : std_logic;
SIGNAL \u1|Add0~55\ : std_logic;
SIGNAL \u1|Add0~56_combout\ : std_logic;
SIGNAL \u1|LessThan0~3_combout\ : std_logic;
SIGNAL \u1|Add0~57\ : std_logic;
SIGNAL \u1|Add0~58_combout\ : std_logic;
SIGNAL \u1|Add0~59\ : std_logic;
SIGNAL \u1|Add0~60_combout\ : std_logic;
SIGNAL \u1|Add0~61\ : std_logic;
SIGNAL \u1|Add0~62_combout\ : std_logic;
SIGNAL \u1|LessThan0~4_combout\ : std_logic;
SIGNAL \u1|LessThan0~2_combout\ : std_logic;
SIGNAL \u1|LessThan0~5_combout\ : std_logic;
SIGNAL \u1|LessThan0~9_combout\ : std_logic;
SIGNAL \u1|contador~7_combout\ : std_logic;
SIGNAL \u1|Equal0~3_combout\ : std_logic;
SIGNAL \u1|Equal0~2_combout\ : std_logic;
SIGNAL \u1|Equal0~1_combout\ : std_logic;
SIGNAL \u1|Equal0~0_combout\ : std_logic;
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
SIGNAL \u2|Add0~15\ : std_logic;
SIGNAL \u2|Add0~16_combout\ : std_logic;
SIGNAL \u2|contador~10_combout\ : std_logic;
SIGNAL \u2|Add0~17\ : std_logic;
SIGNAL \u2|Add0~18_combout\ : std_logic;
SIGNAL \u2|Add0~19\ : std_logic;
SIGNAL \u2|Add0~20_combout\ : std_logic;
SIGNAL \u2|Add0~21\ : std_logic;
SIGNAL \u2|Add0~22_combout\ : std_logic;
SIGNAL \u2|Add0~23\ : std_logic;
SIGNAL \u2|Add0~24_combout\ : std_logic;
SIGNAL \u2|Add0~25\ : std_logic;
SIGNAL \u2|Add0~26_combout\ : std_logic;
SIGNAL \u2|contador~9_combout\ : std_logic;
SIGNAL \u2|Add0~27\ : std_logic;
SIGNAL \u2|Add0~28_combout\ : std_logic;
SIGNAL \u2|contador~8_combout\ : std_logic;
SIGNAL \u2|Add0~29\ : std_logic;
SIGNAL \u2|Add0~30_combout\ : std_logic;
SIGNAL \u2|contador~7_combout\ : std_logic;
SIGNAL \u2|Add0~31\ : std_logic;
SIGNAL \u2|Add0~32_combout\ : std_logic;
SIGNAL \u2|contador~6_combout\ : std_logic;
SIGNAL \u2|Add0~33\ : std_logic;
SIGNAL \u2|Add0~34_combout\ : std_logic;
SIGNAL \u2|Add0~35\ : std_logic;
SIGNAL \u2|Add0~36_combout\ : std_logic;
SIGNAL \u2|contador~5_combout\ : std_logic;
SIGNAL \u2|Add0~37\ : std_logic;
SIGNAL \u2|Add0~38_combout\ : std_logic;
SIGNAL \u2|Add0~39\ : std_logic;
SIGNAL \u2|Add0~41\ : std_logic;
SIGNAL \u2|Add0~42_combout\ : std_logic;
SIGNAL \u2|contador~3_combout\ : std_logic;
SIGNAL \u2|Add0~43\ : std_logic;
SIGNAL \u2|Add0~44_combout\ : std_logic;
SIGNAL \u2|contador~2_combout\ : std_logic;
SIGNAL \u2|Add0~45\ : std_logic;
SIGNAL \u2|Add0~46_combout\ : std_logic;
SIGNAL \u2|contador~1_combout\ : std_logic;
SIGNAL \u2|Add0~47\ : std_logic;
SIGNAL \u2|Add0~48_combout\ : std_logic;
SIGNAL \u2|contador~0_combout\ : std_logic;
SIGNAL \u2|Add0~49\ : std_logic;
SIGNAL \u2|Add0~50_combout\ : std_logic;
SIGNAL \u2|Equal0~2_combout\ : std_logic;
SIGNAL \u2|LessThan0~5_combout\ : std_logic;
SIGNAL \u2|LessThan0~1_combout\ : std_logic;
SIGNAL \u2|Equal0~1_combout\ : std_logic;
SIGNAL \u2|Equal0~6_combout\ : std_logic;
SIGNAL \u2|Equal0~3_combout\ : std_logic;
SIGNAL \u2|Equal0~5_combout\ : std_logic;
SIGNAL \u2|Equal0~4_combout\ : std_logic;
SIGNAL \u2|Equal0~7_combout\ : std_logic;
SIGNAL \u2|Equal0~8_combout\ : std_logic;
SIGNAL \u2|Add0~40_combout\ : std_logic;
SIGNAL \u2|contador~4_combout\ : std_logic;
SIGNAL \u2|Equal0~0_combout\ : std_logic;
SIGNAL \u2|LessThan0~0_combout\ : std_logic;
SIGNAL \u2|LessThan0~2_combout\ : std_logic;
SIGNAL \u2|LessThan0~3_combout\ : std_logic;
SIGNAL \u2|LessThan0~4_combout\ : std_logic;
SIGNAL \u2|Add0~51\ : std_logic;
SIGNAL \u2|Add0~52_combout\ : std_logic;
SIGNAL \u2|contador~11_combout\ : std_logic;
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
SIGNAL \u2|LessThan0~6_combout\ : std_logic;
SIGNAL \u2|clkout~0_combout\ : std_logic;
SIGNAL \u2|clkout~feeder_combout\ : std_logic;
SIGNAL \u2|clkout~q\ : std_logic;
SIGNAL \u2|clkout~clkctrl_outclk\ : std_logic;
SIGNAL \contador[0]~0_combout\ : std_logic;
SIGNAL \u3|Add2~0_combout\ : std_logic;
SIGNAL \u3|Add0~1_combout\ : std_logic;
SIGNAL \u3|Add0~0_combout\ : std_logic;
SIGNAL \u4|Mux11~5_combout\ : std_logic;
SIGNAL \u4|Mux11~4_combout\ : std_logic;
SIGNAL \u4|Mux11~3_combout\ : std_logic;
SIGNAL \u4|Mux11~7_combout\ : std_logic;
SIGNAL \u4|Mux11~8_combout\ : std_logic;
SIGNAL \u4|Mux11~6_combout\ : std_logic;
SIGNAL \en~input_o\ : std_logic;
SIGNAL \u4|Mux11~combout\ : std_logic;
SIGNAL \u4|Mux10~11_combout\ : std_logic;
SIGNAL \u4|Mux10~12_combout\ : std_logic;
SIGNAL \u4|Mux10~13_combout\ : std_logic;
SIGNAL \u4|Mux10~14_combout\ : std_logic;
SIGNAL \u4|Mux10~combout\ : std_logic;
SIGNAL \u4|Mux9~8_combout\ : std_logic;
SIGNAL \u4|Mux9~7_combout\ : std_logic;
SIGNAL \u4|Mux9~6_combout\ : std_logic;
SIGNAL \u4|Mux9~5_combout\ : std_logic;
SIGNAL \u4|Mux9~4_combout\ : std_logic;
SIGNAL \u4|Mux9~3_combout\ : std_logic;
SIGNAL \u4|Mux9~combout\ : std_logic;
SIGNAL \u4|Mux8~11_combout\ : std_logic;
SIGNAL \u4|Mux8~12_combout\ : std_logic;
SIGNAL \u4|Mux8~13_combout\ : std_logic;
SIGNAL \u4|Mux8~14_combout\ : std_logic;
SIGNAL \u4|Mux8~combout\ : std_logic;
SIGNAL \u4|Mux7~8_combout\ : std_logic;
SIGNAL \u4|Mux7~7_combout\ : std_logic;
SIGNAL \u4|Mux7~6_combout\ : std_logic;
SIGNAL \u4|Mux7~11_combout\ : std_logic;
SIGNAL \u4|Mux7~12_combout\ : std_logic;
SIGNAL \u4|Mux7~combout\ : std_logic;
SIGNAL \u4|Mux6~4_combout\ : std_logic;
SIGNAL \u4|Mux6~5_combout\ : std_logic;
SIGNAL \u4|Mux6~3_combout\ : std_logic;
SIGNAL \u4|Mux6~7_combout\ : std_logic;
SIGNAL \u4|Mux6~8_combout\ : std_logic;
SIGNAL \u4|Mux6~6_combout\ : std_logic;
SIGNAL \u4|Mux6~combout\ : std_logic;
SIGNAL \u4|Mux5~8_combout\ : std_logic;
SIGNAL \u4|Mux5~7_combout\ : std_logic;
SIGNAL \u4|Mux5~6_combout\ : std_logic;
SIGNAL \u4|Mux5~11_combout\ : std_logic;
SIGNAL \u4|Mux5~12_combout\ : std_logic;
SIGNAL \u4|Mux5~combout\ : std_logic;
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

\u2|clkout~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u2|clkout~q\);

\u1|clkout~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u1|clkout~q\);

\clk50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk50~input_o\);

-- Location: IOOBUF_X13_Y24_N23
\dig[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \dig[0]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\dig[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \dig[1]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\dig[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \dig[2]~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\dig[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|Mux1~1_combout\,
	devoe => ww_devoe,
	o => \dig[3]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\seg[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|Mux11~combout\,
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
	i => \u4|Mux10~combout\,
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
	i => \u4|Mux9~combout\,
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
	i => \u4|Mux8~combout\,
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
	i => \u4|Mux7~combout\,
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
	i => \u4|Mux6~combout\,
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
	i => \u4|Mux5~combout\,
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

-- Location: IOIBUF_X0_Y11_N8
\clk50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk50,
	o => \clk50~input_o\);

-- Location: CLKCTRL_G2
\clk50~inputclkctrl\ : cycloneive_clkctrl
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

-- Location: LCCOMB_X32_Y21_N0
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

-- Location: LCCOMB_X32_Y21_N2
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

-- Location: FF_X32_Y21_N3
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

-- Location: LCCOMB_X32_Y21_N4
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

-- Location: FF_X32_Y21_N5
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

-- Location: LCCOMB_X32_Y21_N6
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

-- Location: LCCOMB_X31_Y21_N18
\u1|contador~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|contador~5_combout\ = (\u1|Add0~6_combout\ & ((\u1|Equal0~5_combout\) # (\u1|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Add0~6_combout\,
	datac => \u1|Equal0~5_combout\,
	datad => \u1|LessThan0~9_combout\,
	combout => \u1|contador~5_combout\);

-- Location: FF_X31_Y21_N19
\u1|contador[3]\ : dffeas
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
	q => \u1|contador\(3));

-- Location: LCCOMB_X32_Y21_N8
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

-- Location: FF_X32_Y21_N9
\u1|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \u1|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(4));

-- Location: LCCOMB_X32_Y21_N10
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

-- Location: FF_X32_Y21_N11
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

-- Location: LCCOMB_X32_Y21_N12
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

-- Location: LCCOMB_X31_Y21_N22
\u1|contador~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|contador~6_combout\ = (\u1|Add0~12_combout\ & ((\u1|LessThan0~9_combout\) # (\u1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|LessThan0~9_combout\,
	datac => \u1|Equal0~5_combout\,
	datad => \u1|Add0~12_combout\,
	combout => \u1|contador~6_combout\);

-- Location: FF_X31_Y21_N23
\u1|contador[6]\ : dffeas
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
	q => \u1|contador\(6));

-- Location: LCCOMB_X32_Y21_N14
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

-- Location: FF_X32_Y21_N15
\u1|contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \u1|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(7));

-- Location: LCCOMB_X32_Y21_N16
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

-- Location: FF_X32_Y21_N17
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

-- Location: LCCOMB_X32_Y21_N18
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

-- Location: FF_X32_Y21_N19
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

-- Location: LCCOMB_X32_Y21_N20
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

-- Location: FF_X32_Y21_N21
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

-- Location: LCCOMB_X32_Y21_N22
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

-- Location: LCCOMB_X31_Y21_N16
\u1|contador~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|contador~4_combout\ = (\u1|Add0~22_combout\ & ((\u1|Equal0~5_combout\) # (\u1|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Equal0~5_combout\,
	datab => \u1|Add0~22_combout\,
	datad => \u1|LessThan0~9_combout\,
	combout => \u1|contador~4_combout\);

-- Location: FF_X31_Y21_N17
\u1|contador[11]\ : dffeas
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
	q => \u1|contador\(11));

-- Location: LCCOMB_X32_Y21_N24
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

-- Location: FF_X32_Y21_N25
\u1|contador[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \u1|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(12));

-- Location: LCCOMB_X32_Y21_N26
\u1|Add0~26\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X31_Y21_N2
\u1|contador~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|contador~2_combout\ = (\u1|Add0~26_combout\ & ((\u1|LessThan0~9_combout\) # (\u1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|LessThan0~9_combout\,
	datac => \u1|Equal0~5_combout\,
	datad => \u1|Add0~26_combout\,
	combout => \u1|contador~2_combout\);

-- Location: FF_X31_Y21_N3
\u1|contador[13]\ : dffeas
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
	q => \u1|contador\(13));

-- Location: LCCOMB_X32_Y21_N28
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

-- Location: LCCOMB_X33_Y21_N8
\u1|contador~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|contador~1_combout\ = (\u1|Add0~28_combout\ & ((\u1|LessThan0~9_combout\) # (\u1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|LessThan0~9_combout\,
	datac => \u1|Equal0~5_combout\,
	datad => \u1|Add0~28_combout\,
	combout => \u1|contador~1_combout\);

-- Location: FF_X33_Y21_N9
\u1|contador[14]\ : dffeas
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
	q => \u1|contador\(14));

-- Location: LCCOMB_X32_Y21_N30
\u1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add0~30_combout\ = (\u1|contador\(15) & (!\u1|Add0~29\)) # (!\u1|contador\(15) & ((\u1|Add0~29\) # (GND)))
-- \u1|Add0~31\ = CARRY((!\u1|Add0~29\) # (!\u1|contador\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|contador\(15),
	datad => VCC,
	cin => \u1|Add0~29\,
	combout => \u1|Add0~30_combout\,
	cout => \u1|Add0~31\);

-- Location: LCCOMB_X31_Y21_N24
\u1|contador~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|contador~0_combout\ = (\u1|Add0~30_combout\ & ((\u1|Equal0~5_combout\) # (\u1|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Equal0~5_combout\,
	datac => \u1|Add0~30_combout\,
	datad => \u1|LessThan0~9_combout\,
	combout => \u1|contador~0_combout\);

-- Location: FF_X31_Y21_N25
\u1|contador[15]\ : dffeas
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
	q => \u1|contador\(15));

-- Location: LCCOMB_X32_Y20_N0
\u1|Add0~32\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X31_Y21_N30
\u1|contador~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|contador~3_combout\ = (\u1|Add0~32_combout\ & ((\u1|LessThan0~9_combout\) # (\u1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|LessThan0~9_combout\,
	datac => \u1|Equal0~5_combout\,
	datad => \u1|Add0~32_combout\,
	combout => \u1|contador~3_combout\);

-- Location: FF_X31_Y21_N31
\u1|contador[16]\ : dffeas
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
	q => \u1|contador\(16));

-- Location: LCCOMB_X31_Y21_N12
\u1|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|LessThan0~0_combout\ = (((!\u1|contador\(12)) # (!\u1|contador\(15))) # (!\u1|contador\(13))) # (!\u1|contador\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(14),
	datab => \u1|contador\(13),
	datac => \u1|contador\(15),
	datad => \u1|contador\(12),
	combout => \u1|LessThan0~0_combout\);

-- Location: LCCOMB_X31_Y21_N8
\u1|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|LessThan0~7_combout\ = (\u1|contador\(6)) # ((\u1|contador\(8)) # ((\u1|contador\(7)) # (\u1|contador\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(6),
	datab => \u1|contador\(8),
	datac => \u1|contador\(7),
	datad => \u1|contador\(9),
	combout => \u1|LessThan0~7_combout\);

-- Location: LCCOMB_X31_Y21_N28
\u1|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|LessThan0~6_combout\ = ((!\u1|contador\(2) & (!\u1|contador\(4) & !\u1|contador\(3)))) # (!\u1|contador\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(2),
	datab => \u1|contador\(4),
	datac => \u1|contador\(5),
	datad => \u1|contador\(3),
	combout => \u1|LessThan0~6_combout\);

-- Location: LCCOMB_X31_Y21_N6
\u1|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|LessThan0~8_combout\ = (\u1|contador\(11)) # ((\u1|contador\(10) & ((\u1|LessThan0~7_combout\) # (!\u1|LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(10),
	datab => \u1|contador\(11),
	datac => \u1|LessThan0~7_combout\,
	datad => \u1|LessThan0~6_combout\,
	combout => \u1|LessThan0~8_combout\);

-- Location: LCCOMB_X32_Y20_N2
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

-- Location: FF_X32_Y20_N3
\u1|contador[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \u1|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|contador\(17));

-- Location: LCCOMB_X32_Y20_N4
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

-- Location: FF_X32_Y20_N5
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

-- Location: LCCOMB_X32_Y20_N6
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

-- Location: FF_X32_Y20_N7
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

-- Location: LCCOMB_X32_Y20_N8
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

-- Location: FF_X32_Y20_N9
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

-- Location: LCCOMB_X32_Y20_N10
\u1|Add0~42\ : cycloneive_lcell_comb
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

-- Location: FF_X32_Y20_N11
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

-- Location: LCCOMB_X32_Y20_N12
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

-- Location: FF_X32_Y20_N13
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

-- Location: LCCOMB_X32_Y20_N14
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

-- Location: FF_X32_Y20_N15
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

-- Location: LCCOMB_X32_Y20_N16
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

-- Location: FF_X32_Y20_N17
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

-- Location: LCCOMB_X33_Y20_N12
\u1|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|LessThan0~1_combout\ = (!\u1|contador\(21) & (!\u1|contador\(22) & (!\u1|contador\(24) & !\u1|contador\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(21),
	datab => \u1|contador\(22),
	datac => \u1|contador\(24),
	datad => \u1|contador\(23),
	combout => \u1|LessThan0~1_combout\);

-- Location: LCCOMB_X32_Y20_N18
\u1|Add0~50\ : cycloneive_lcell_comb
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

-- Location: FF_X32_Y20_N19
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

-- Location: LCCOMB_X32_Y20_N20
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

-- Location: FF_X32_Y20_N21
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

-- Location: LCCOMB_X32_Y20_N22
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

-- Location: FF_X32_Y20_N23
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

-- Location: LCCOMB_X32_Y20_N24
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

-- Location: FF_X32_Y20_N25
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

-- Location: LCCOMB_X33_Y20_N4
\u1|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|LessThan0~3_combout\ = (!\u1|contador\(28) & (!\u1|contador\(27) & (!\u1|contador\(25) & !\u1|contador\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(28),
	datab => \u1|contador\(27),
	datac => \u1|contador\(25),
	datad => \u1|contador\(26),
	combout => \u1|LessThan0~3_combout\);

-- Location: LCCOMB_X32_Y20_N26
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

-- Location: FF_X32_Y20_N27
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

-- Location: LCCOMB_X32_Y20_N28
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

-- Location: FF_X32_Y20_N29
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

-- Location: LCCOMB_X32_Y20_N30
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

-- Location: FF_X32_Y20_N31
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

-- Location: LCCOMB_X33_Y20_N22
\u1|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|LessThan0~4_combout\ = (!\u1|contador\(31) & (!\u1|contador\(29) & !\u1|contador\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|contador\(31),
	datac => \u1|contador\(29),
	datad => \u1|contador\(30),
	combout => \u1|LessThan0~4_combout\);

-- Location: LCCOMB_X33_Y20_N2
\u1|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|LessThan0~2_combout\ = (!\u1|contador\(17) & (!\u1|contador\(19) & (!\u1|contador\(18) & !\u1|contador\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(17),
	datab => \u1|contador\(19),
	datac => \u1|contador\(18),
	datad => \u1|contador\(20),
	combout => \u1|LessThan0~2_combout\);

-- Location: LCCOMB_X33_Y20_N0
\u1|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|LessThan0~5_combout\ = (\u1|LessThan0~1_combout\ & (\u1|LessThan0~3_combout\ & (\u1|LessThan0~4_combout\ & \u1|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|LessThan0~1_combout\,
	datab => \u1|LessThan0~3_combout\,
	datac => \u1|LessThan0~4_combout\,
	datad => \u1|LessThan0~2_combout\,
	combout => \u1|LessThan0~5_combout\);

-- Location: LCCOMB_X33_Y21_N26
\u1|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|LessThan0~9_combout\ = (!\u1|contador\(16) & (\u1|LessThan0~5_combout\ & ((\u1|LessThan0~0_combout\) # (!\u1|LessThan0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(16),
	datab => \u1|LessThan0~0_combout\,
	datac => \u1|LessThan0~8_combout\,
	datad => \u1|LessThan0~5_combout\,
	combout => \u1|LessThan0~9_combout\);

-- Location: LCCOMB_X33_Y21_N20
\u1|contador~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|contador~7_combout\ = (\u1|Add0~0_combout\ & ((\u1|Equal0~5_combout\) # (\u1|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Equal0~5_combout\,
	datac => \u1|Add0~0_combout\,
	datad => \u1|LessThan0~9_combout\,
	combout => \u1|contador~7_combout\);

-- Location: FF_X33_Y21_N21
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

-- Location: LCCOMB_X31_Y21_N26
\u1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Equal0~3_combout\ = (((\u1|contador\(5)) # (\u1|contador\(1))) # (!\u1|contador\(3))) # (!\u1|contador\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(6),
	datab => \u1|contador\(3),
	datac => \u1|contador\(5),
	datad => \u1|contador\(1),
	combout => \u1|Equal0~3_combout\);

-- Location: LCCOMB_X31_Y21_N4
\u1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Equal0~2_combout\ = (\u1|contador\(10)) # (((\u1|contador\(4)) # (\u1|contador\(2))) # (!\u1|contador\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(10),
	datab => \u1|contador\(11),
	datac => \u1|contador\(4),
	datad => \u1|contador\(2),
	combout => \u1|Equal0~2_combout\);

-- Location: LCCOMB_X31_Y21_N14
\u1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Equal0~1_combout\ = (\u1|contador\(12)) # ((\u1|contador\(9)) # ((\u1|contador\(7)) # (\u1|contador\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(12),
	datab => \u1|contador\(9),
	datac => \u1|contador\(7),
	datad => \u1|contador\(8),
	combout => \u1|Equal0~1_combout\);

-- Location: LCCOMB_X31_Y21_N0
\u1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Equal0~0_combout\ = (((!\u1|contador\(14)) # (!\u1|contador\(13))) # (!\u1|contador\(15))) # (!\u1|contador\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|contador\(16),
	datab => \u1|contador\(15),
	datac => \u1|contador\(13),
	datad => \u1|contador\(14),
	combout => \u1|Equal0~0_combout\);

-- Location: LCCOMB_X31_Y21_N20
\u1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Equal0~4_combout\ = (\u1|Equal0~3_combout\) # ((\u1|Equal0~2_combout\) # ((\u1|Equal0~1_combout\) # (\u1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Equal0~3_combout\,
	datab => \u1|Equal0~2_combout\,
	datac => \u1|Equal0~1_combout\,
	datad => \u1|Equal0~0_combout\,
	combout => \u1|Equal0~4_combout\);

-- Location: LCCOMB_X33_Y21_N22
\u1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Equal0~5_combout\ = (\u1|contador\(0)) # ((\u1|Equal0~4_combout\) # (!\u1|LessThan0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|contador\(0),
	datac => \u1|Equal0~4_combout\,
	datad => \u1|LessThan0~5_combout\,
	combout => \u1|Equal0~5_combout\);

-- Location: LCCOMB_X33_Y21_N30
\u1|clkout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|clkout~0_combout\ = (\u1|LessThan0~9_combout\) # ((\u1|clkout~q\ & !\u1|Equal0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|clkout~q\,
	datac => \u1|Equal0~5_combout\,
	datad => \u1|LessThan0~9_combout\,
	combout => \u1|clkout~0_combout\);

-- Location: LCCOMB_X33_Y21_N0
\u1|clkout~feeder\ : cycloneive_lcell_comb
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

-- Location: FF_X33_Y21_N1
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

-- Location: CLKCTRL_G8
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

-- Location: LCCOMB_X12_Y22_N6
\u4|Selectores[0]~1\ : cycloneive_lcell_comb
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

-- Location: FF_X12_Y22_N7
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

-- Location: LCCOMB_X12_Y22_N28
\u4|Selectores[1]~0\ : cycloneive_lcell_comb
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

-- Location: FF_X12_Y22_N29
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

-- Location: LCCOMB_X12_Y22_N4
\u4|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux3~0_combout\ = (!\u4|Selectores\(1)) # (!\u4|Selectores\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u4|Selectores\(0),
	datad => \u4|Selectores\(1),
	combout => \u4|Mux3~0_combout\);

-- Location: LCCOMB_X12_Y22_N2
\u4|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux2~0_combout\ = (\u4|Selectores\(0)) # (!\u4|Selectores\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u4|Selectores\(0),
	datad => \u4|Selectores\(1),
	combout => \u4|Mux2~0_combout\);

-- Location: LCCOMB_X13_Y22_N8
\u4|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux1~0_combout\ = (\u4|Selectores\(1)) # (!\u4|Selectores\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Selectores\(1),
	datac => \u4|Selectores\(0),
	combout => \u4|Mux1~0_combout\);

-- Location: LCCOMB_X12_Y22_N24
\u4|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux1~1_combout\ = (\u4|Selectores\(0)) # (\u4|Selectores\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u4|Selectores\(0),
	datad => \u4|Selectores\(1),
	combout => \u4|Mux1~1_combout\);

-- Location: LCCOMB_X18_Y15_N0
\u2|Add0~0\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X19_Y14_N12
\u2|contador~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|contador~12_combout\ = (\u2|Add0~0_combout\ & ((\u2|Equal0~8_combout\) # ((\u2|LessThan0~6_combout\ & \u2|LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add0~0_combout\,
	datab => \u2|LessThan0~6_combout\,
	datac => \u2|LessThan0~4_combout\,
	datad => \u2|Equal0~8_combout\,
	combout => \u2|contador~12_combout\);

-- Location: FF_X18_Y15_N27
\u2|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	asdata => \u2|contador~12_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|contador\(0));

-- Location: LCCOMB_X18_Y15_N2
\u2|Add0~2\ : cycloneive_lcell_comb
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

-- Location: FF_X18_Y15_N3
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

-- Location: LCCOMB_X18_Y15_N4
\u2|Add0~4\ : cycloneive_lcell_comb
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

-- Location: FF_X18_Y15_N5
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

-- Location: LCCOMB_X18_Y15_N6
\u2|Add0~6\ : cycloneive_lcell_comb
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

-- Location: FF_X18_Y15_N7
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

-- Location: LCCOMB_X18_Y15_N8
\u2|Add0~8\ : cycloneive_lcell_comb
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

-- Location: FF_X18_Y15_N9
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

-- Location: LCCOMB_X18_Y15_N10
\u2|Add0~10\ : cycloneive_lcell_comb
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

-- Location: FF_X18_Y15_N11
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

-- Location: LCCOMB_X18_Y15_N12
\u2|Add0~12\ : cycloneive_lcell_comb
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

-- Location: FF_X18_Y15_N13
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

-- Location: LCCOMB_X18_Y15_N14
\u2|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add0~14_combout\ = (\u2|contador\(7) & (!\u2|Add0~13\)) # (!\u2|contador\(7) & ((\u2|Add0~13\) # (GND)))
-- \u2|Add0~15\ = CARRY((!\u2|Add0~13\) # (!\u2|contador\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|contador\(7),
	datad => VCC,
	cin => \u2|Add0~13\,
	combout => \u2|Add0~14_combout\,
	cout => \u2|Add0~15\);

-- Location: FF_X18_Y15_N15
\u2|contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \u2|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|contador\(7));

-- Location: LCCOMB_X18_Y15_N16
\u2|Add0~16\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X19_Y15_N18
\u2|contador~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|contador~10_combout\ = (\u2|Add0~16_combout\ & ((\u2|Equal0~8_combout\) # ((\u2|LessThan0~6_combout\ & \u2|LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|LessThan0~6_combout\,
	datab => \u2|Add0~16_combout\,
	datac => \u2|LessThan0~4_combout\,
	datad => \u2|Equal0~8_combout\,
	combout => \u2|contador~10_combout\);

-- Location: FF_X19_Y15_N19
\u2|contador[8]\ : dffeas
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
	q => \u2|contador\(8));

-- Location: LCCOMB_X18_Y15_N18
\u2|Add0~18\ : cycloneive_lcell_comb
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

-- Location: FF_X18_Y15_N19
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

-- Location: LCCOMB_X18_Y15_N20
\u2|Add0~20\ : cycloneive_lcell_comb
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

-- Location: FF_X18_Y15_N21
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

-- Location: LCCOMB_X18_Y15_N22
\u2|Add0~22\ : cycloneive_lcell_comb
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

-- Location: FF_X18_Y15_N23
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

-- Location: LCCOMB_X18_Y15_N24
\u2|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add0~24_combout\ = (\u2|contador\(12) & (\u2|Add0~23\ $ (GND))) # (!\u2|contador\(12) & (!\u2|Add0~23\ & VCC))
-- \u2|Add0~25\ = CARRY((\u2|contador\(12) & !\u2|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|contador\(12),
	datad => VCC,
	cin => \u2|Add0~23\,
	combout => \u2|Add0~24_combout\,
	cout => \u2|Add0~25\);

-- Location: FF_X18_Y15_N25
\u2|contador[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \u2|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|contador\(12));

-- Location: LCCOMB_X18_Y15_N26
\u2|Add0~26\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X19_Y15_N28
\u2|contador~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|contador~9_combout\ = (\u2|Add0~26_combout\ & ((\u2|Equal0~8_combout\) # ((\u2|LessThan0~6_combout\ & \u2|LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add0~26_combout\,
	datab => \u2|LessThan0~6_combout\,
	datac => \u2|LessThan0~4_combout\,
	datad => \u2|Equal0~8_combout\,
	combout => \u2|contador~9_combout\);

-- Location: FF_X19_Y15_N29
\u2|contador[13]\ : dffeas
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
	q => \u2|contador\(13));

-- Location: LCCOMB_X18_Y15_N28
\u2|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add0~28_combout\ = (\u2|contador\(14) & (\u2|Add0~27\ $ (GND))) # (!\u2|contador\(14) & (!\u2|Add0~27\ & VCC))
-- \u2|Add0~29\ = CARRY((\u2|contador\(14) & !\u2|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|contador\(14),
	datad => VCC,
	cin => \u2|Add0~27\,
	combout => \u2|Add0~28_combout\,
	cout => \u2|Add0~29\);

-- Location: LCCOMB_X19_Y15_N14
\u2|contador~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|contador~8_combout\ = (\u2|Add0~28_combout\ & ((\u2|Equal0~8_combout\) # ((\u2|LessThan0~6_combout\ & \u2|LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|LessThan0~6_combout\,
	datab => \u2|Add0~28_combout\,
	datac => \u2|LessThan0~4_combout\,
	datad => \u2|Equal0~8_combout\,
	combout => \u2|contador~8_combout\);

-- Location: FF_X19_Y15_N15
\u2|contador[14]\ : dffeas
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
	q => \u2|contador\(14));

-- Location: LCCOMB_X18_Y15_N30
\u2|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add0~30_combout\ = (\u2|contador\(15) & (!\u2|Add0~29\)) # (!\u2|contador\(15) & ((\u2|Add0~29\) # (GND)))
-- \u2|Add0~31\ = CARRY((!\u2|Add0~29\) # (!\u2|contador\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|contador\(15),
	datad => VCC,
	cin => \u2|Add0~29\,
	combout => \u2|Add0~30_combout\,
	cout => \u2|Add0~31\);

-- Location: LCCOMB_X19_Y15_N12
\u2|contador~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|contador~7_combout\ = (\u2|Add0~30_combout\ & ((\u2|Equal0~8_combout\) # ((\u2|LessThan0~6_combout\ & \u2|LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|LessThan0~6_combout\,
	datab => \u2|LessThan0~4_combout\,
	datac => \u2|Add0~30_combout\,
	datad => \u2|Equal0~8_combout\,
	combout => \u2|contador~7_combout\);

-- Location: FF_X19_Y15_N13
\u2|contador[15]\ : dffeas
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
	q => \u2|contador\(15));

-- Location: LCCOMB_X18_Y14_N0
\u2|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add0~32_combout\ = (\u2|contador\(16) & (\u2|Add0~31\ $ (GND))) # (!\u2|contador\(16) & (!\u2|Add0~31\ & VCC))
-- \u2|Add0~33\ = CARRY((\u2|contador\(16) & !\u2|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|contador\(16),
	datad => VCC,
	cin => \u2|Add0~31\,
	combout => \u2|Add0~32_combout\,
	cout => \u2|Add0~33\);

-- Location: LCCOMB_X19_Y15_N22
\u2|contador~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|contador~6_combout\ = (\u2|Add0~32_combout\ & ((\u2|Equal0~8_combout\) # ((\u2|LessThan0~6_combout\ & \u2|LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|LessThan0~6_combout\,
	datab => \u2|LessThan0~4_combout\,
	datac => \u2|Equal0~8_combout\,
	datad => \u2|Add0~32_combout\,
	combout => \u2|contador~6_combout\);

-- Location: FF_X19_Y15_N23
\u2|contador[16]\ : dffeas
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
	q => \u2|contador\(16));

-- Location: LCCOMB_X18_Y14_N2
\u2|Add0~34\ : cycloneive_lcell_comb
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

-- Location: FF_X18_Y14_N3
\u2|contador[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \u2|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|contador\(17));

-- Location: LCCOMB_X18_Y14_N4
\u2|Add0~36\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X19_Y15_N20
\u2|contador~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|contador~5_combout\ = (\u2|Add0~36_combout\ & ((\u2|Equal0~8_combout\) # ((\u2|LessThan0~6_combout\ & \u2|LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|LessThan0~6_combout\,
	datab => \u2|LessThan0~4_combout\,
	datac => \u2|Equal0~8_combout\,
	datad => \u2|Add0~36_combout\,
	combout => \u2|contador~5_combout\);

-- Location: FF_X19_Y15_N21
\u2|contador[18]\ : dffeas
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
	q => \u2|contador\(18));

-- Location: LCCOMB_X18_Y14_N6
\u2|Add0~38\ : cycloneive_lcell_comb
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

-- Location: FF_X18_Y14_N7
\u2|contador[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \u2|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|contador\(19));

-- Location: LCCOMB_X18_Y14_N8
\u2|Add0~40\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X18_Y14_N10
\u2|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add0~42_combout\ = (\u2|contador\(21) & (!\u2|Add0~41\)) # (!\u2|contador\(21) & ((\u2|Add0~41\) # (GND)))
-- \u2|Add0~43\ = CARRY((!\u2|Add0~41\) # (!\u2|contador\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|contador\(21),
	datad => VCC,
	cin => \u2|Add0~41\,
	combout => \u2|Add0~42_combout\,
	cout => \u2|Add0~43\);

-- Location: LCCOMB_X19_Y14_N4
\u2|contador~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|contador~3_combout\ = (\u2|Add0~42_combout\ & ((\u2|Equal0~8_combout\) # ((\u2|LessThan0~4_combout\ & \u2|LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|LessThan0~4_combout\,
	datab => \u2|LessThan0~6_combout\,
	datac => \u2|Equal0~8_combout\,
	datad => \u2|Add0~42_combout\,
	combout => \u2|contador~3_combout\);

-- Location: FF_X19_Y14_N5
\u2|contador[21]\ : dffeas
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
	q => \u2|contador\(21));

-- Location: LCCOMB_X18_Y14_N12
\u2|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add0~44_combout\ = (\u2|contador\(22) & (\u2|Add0~43\ $ (GND))) # (!\u2|contador\(22) & (!\u2|Add0~43\ & VCC))
-- \u2|Add0~45\ = CARRY((\u2|contador\(22) & !\u2|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|contador\(22),
	datad => VCC,
	cin => \u2|Add0~43\,
	combout => \u2|Add0~44_combout\,
	cout => \u2|Add0~45\);

-- Location: LCCOMB_X19_Y14_N24
\u2|contador~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|contador~2_combout\ = (\u2|Add0~44_combout\ & ((\u2|Equal0~8_combout\) # ((\u2|LessThan0~4_combout\ & \u2|LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|LessThan0~4_combout\,
	datab => \u2|LessThan0~6_combout\,
	datac => \u2|Equal0~8_combout\,
	datad => \u2|Add0~44_combout\,
	combout => \u2|contador~2_combout\);

-- Location: FF_X19_Y14_N25
\u2|contador[22]\ : dffeas
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
	q => \u2|contador\(22));

-- Location: LCCOMB_X18_Y14_N14
\u2|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add0~46_combout\ = (\u2|contador\(23) & (!\u2|Add0~45\)) # (!\u2|contador\(23) & ((\u2|Add0~45\) # (GND)))
-- \u2|Add0~47\ = CARRY((!\u2|Add0~45\) # (!\u2|contador\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|contador\(23),
	datad => VCC,
	cin => \u2|Add0~45\,
	combout => \u2|Add0~46_combout\,
	cout => \u2|Add0~47\);

-- Location: LCCOMB_X19_Y14_N28
\u2|contador~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|contador~1_combout\ = (\u2|Add0~46_combout\ & ((\u2|Equal0~8_combout\) # ((\u2|LessThan0~4_combout\ & \u2|LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|LessThan0~4_combout\,
	datab => \u2|LessThan0~6_combout\,
	datac => \u2|Equal0~8_combout\,
	datad => \u2|Add0~46_combout\,
	combout => \u2|contador~1_combout\);

-- Location: FF_X19_Y14_N29
\u2|contador[23]\ : dffeas
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
	q => \u2|contador\(23));

-- Location: LCCOMB_X18_Y14_N16
\u2|Add0~48\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X19_Y14_N0
\u2|contador~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|contador~0_combout\ = (\u2|Add0~48_combout\ & ((\u2|Equal0~8_combout\) # ((\u2|LessThan0~4_combout\ & \u2|LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|LessThan0~4_combout\,
	datab => \u2|LessThan0~6_combout\,
	datac => \u2|Add0~48_combout\,
	datad => \u2|Equal0~8_combout\,
	combout => \u2|contador~0_combout\);

-- Location: FF_X19_Y14_N1
\u2|contador[24]\ : dffeas
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
	q => \u2|contador\(24));

-- Location: LCCOMB_X18_Y14_N18
\u2|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add0~50_combout\ = (\u2|contador\(25) & (!\u2|Add0~49\)) # (!\u2|contador\(25) & ((\u2|Add0~49\) # (GND)))
-- \u2|Add0~51\ = CARRY((!\u2|Add0~49\) # (!\u2|contador\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u2|contador\(25),
	datad => VCC,
	cin => \u2|Add0~49\,
	combout => \u2|Add0~50_combout\,
	cout => \u2|Add0~51\);

-- Location: FF_X18_Y14_N19
\u2|contador[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \u2|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|contador\(25));

-- Location: LCCOMB_X19_Y14_N16
\u2|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Equal0~2_combout\ = ((\u2|contador\(25)) # (\u2|contador\(0))) # (!\u2|contador\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|contador\(26),
	datab => \u2|contador\(25),
	datad => \u2|contador\(0),
	combout => \u2|Equal0~2_combout\);

-- Location: LCCOMB_X19_Y14_N8
\u2|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|LessThan0~5_combout\ = (!\u2|contador\(29) & (!\u2|contador\(27) & (!\u2|contador\(28) & !\u2|contador\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|contador\(29),
	datab => \u2|contador\(27),
	datac => \u2|contador\(28),
	datad => \u2|contador\(30),
	combout => \u2|LessThan0~5_combout\);

-- Location: LCCOMB_X19_Y15_N16
\u2|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|LessThan0~1_combout\ = (!\u2|contador\(7) & (!\u2|contador\(11) & (!\u2|contador\(9) & !\u2|contador\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|contador\(7),
	datab => \u2|contador\(11),
	datac => \u2|contador\(9),
	datad => \u2|contador\(10),
	combout => \u2|LessThan0~1_combout\);

-- Location: LCCOMB_X19_Y14_N30
\u2|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Equal0~1_combout\ = ((\u2|contador\(31)) # ((!\u2|LessThan0~1_combout\) # (!\u2|LessThan0~5_combout\))) # (!\u2|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Equal0~0_combout\,
	datab => \u2|contador\(31),
	datac => \u2|LessThan0~5_combout\,
	datad => \u2|LessThan0~1_combout\,
	combout => \u2|Equal0~1_combout\);

-- Location: LCCOMB_X19_Y15_N6
\u2|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Equal0~6_combout\ = (\u2|contador\(3)) # ((\u2|contador\(2)) # ((\u2|contador\(1)) # (\u2|contador\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|contador\(3),
	datab => \u2|contador\(2),
	datac => \u2|contador\(1),
	datad => \u2|contador\(4),
	combout => \u2|Equal0~6_combout\);

-- Location: LCCOMB_X19_Y15_N4
\u2|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Equal0~3_combout\ = (((!\u2|contador\(24)) # (!\u2|contador\(14))) # (!\u2|contador\(13))) # (!\u2|contador\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|contador\(15),
	datab => \u2|contador\(13),
	datac => \u2|contador\(14),
	datad => \u2|contador\(24),
	combout => \u2|Equal0~3_combout\);

-- Location: LCCOMB_X19_Y15_N8
\u2|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Equal0~5_combout\ = (\u2|contador\(6)) # (((\u2|contador\(12)) # (\u2|contador\(5))) # (!\u2|contador\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|contador\(6),
	datab => \u2|contador\(8),
	datac => \u2|contador\(12),
	datad => \u2|contador\(5),
	combout => \u2|Equal0~5_combout\);

-- Location: LCCOMB_X19_Y15_N10
\u2|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Equal0~4_combout\ = ((\u2|contador\(17)) # ((\u2|contador\(19)) # (!\u2|contador\(16)))) # (!\u2|contador\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|contador\(18),
	datab => \u2|contador\(17),
	datac => \u2|contador\(16),
	datad => \u2|contador\(19),
	combout => \u2|Equal0~4_combout\);

-- Location: LCCOMB_X19_Y15_N24
\u2|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Equal0~7_combout\ = (\u2|Equal0~6_combout\) # ((\u2|Equal0~3_combout\) # ((\u2|Equal0~5_combout\) # (\u2|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Equal0~6_combout\,
	datab => \u2|Equal0~3_combout\,
	datac => \u2|Equal0~5_combout\,
	datad => \u2|Equal0~4_combout\,
	combout => \u2|Equal0~7_combout\);

-- Location: LCCOMB_X19_Y14_N18
\u2|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Equal0~8_combout\ = (\u2|Equal0~2_combout\) # ((\u2|Equal0~1_combout\) # (\u2|Equal0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|Equal0~2_combout\,
	datac => \u2|Equal0~1_combout\,
	datad => \u2|Equal0~7_combout\,
	combout => \u2|Equal0~8_combout\);

-- Location: LCCOMB_X19_Y14_N26
\u2|contador~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|contador~4_combout\ = (\u2|Add0~40_combout\ & ((\u2|Equal0~8_combout\) # ((\u2|LessThan0~4_combout\ & \u2|LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|LessThan0~4_combout\,
	datab => \u2|LessThan0~6_combout\,
	datac => \u2|Equal0~8_combout\,
	datad => \u2|Add0~40_combout\,
	combout => \u2|contador~4_combout\);

-- Location: FF_X19_Y14_N27
\u2|contador[20]\ : dffeas
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
	q => \u2|contador\(20));

-- Location: LCCOMB_X19_Y14_N6
\u2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Equal0~0_combout\ = (\u2|contador\(20) & (\u2|contador\(22) & (\u2|contador\(21) & \u2|contador\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|contador\(20),
	datab => \u2|contador\(22),
	datac => \u2|contador\(21),
	datad => \u2|contador\(23),
	combout => \u2|Equal0~0_combout\);

-- Location: LCCOMB_X19_Y15_N26
\u2|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|LessThan0~0_combout\ = (((!\u2|contador\(13)) # (!\u2|contador\(12))) # (!\u2|contador\(14))) # (!\u2|contador\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|contador\(15),
	datab => \u2|contador\(14),
	datac => \u2|contador\(12),
	datad => \u2|contador\(13),
	combout => \u2|LessThan0~0_combout\);

-- Location: LCCOMB_X19_Y15_N0
\u2|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|LessThan0~2_combout\ = (!\u2|contador\(16) & ((\u2|LessThan0~0_combout\) # ((!\u2|contador\(8) & \u2|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|contador\(16),
	datab => \u2|contador\(8),
	datac => \u2|LessThan0~0_combout\,
	datad => \u2|LessThan0~1_combout\,
	combout => \u2|LessThan0~2_combout\);

-- Location: LCCOMB_X19_Y15_N30
\u2|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|LessThan0~3_combout\ = (\u2|contador\(19) & ((\u2|contador\(18)) # ((\u2|contador\(17) & !\u2|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|contador\(18),
	datab => \u2|contador\(17),
	datac => \u2|contador\(19),
	datad => \u2|LessThan0~2_combout\,
	combout => \u2|LessThan0~3_combout\);

-- Location: LCCOMB_X19_Y14_N22
\u2|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|LessThan0~4_combout\ = ((!\u2|contador\(24) & ((!\u2|LessThan0~3_combout\) # (!\u2|Equal0~0_combout\)))) # (!\u2|contador\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Equal0~0_combout\,
	datab => \u2|contador\(24),
	datac => \u2|LessThan0~3_combout\,
	datad => \u2|contador\(25),
	combout => \u2|LessThan0~4_combout\);

-- Location: LCCOMB_X18_Y14_N20
\u2|Add0~52\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X19_Y14_N10
\u2|contador~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|contador~11_combout\ = (\u2|Add0~52_combout\ & ((\u2|Equal0~8_combout\) # ((\u2|LessThan0~4_combout\ & \u2|LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|LessThan0~4_combout\,
	datab => \u2|LessThan0~6_combout\,
	datac => \u2|Equal0~8_combout\,
	datad => \u2|Add0~52_combout\,
	combout => \u2|contador~11_combout\);

-- Location: FF_X19_Y14_N11
\u2|contador[26]\ : dffeas
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
	q => \u2|contador\(26));

-- Location: LCCOMB_X18_Y14_N22
\u2|Add0~54\ : cycloneive_lcell_comb
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

-- Location: FF_X18_Y14_N23
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

-- Location: LCCOMB_X18_Y14_N24
\u2|Add0~56\ : cycloneive_lcell_comb
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

-- Location: FF_X18_Y14_N25
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

-- Location: LCCOMB_X18_Y14_N26
\u2|Add0~58\ : cycloneive_lcell_comb
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

-- Location: FF_X18_Y14_N27
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

-- Location: LCCOMB_X18_Y14_N28
\u2|Add0~60\ : cycloneive_lcell_comb
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

-- Location: FF_X18_Y14_N29
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

-- Location: LCCOMB_X18_Y14_N30
\u2|Add0~62\ : cycloneive_lcell_comb
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

-- Location: FF_X18_Y14_N31
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

-- Location: LCCOMB_X19_Y14_N20
\u2|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|LessThan0~6_combout\ = (!\u2|contador\(31) & (\u2|LessThan0~5_combout\ & !\u2|contador\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|contador\(31),
	datac => \u2|LessThan0~5_combout\,
	datad => \u2|contador\(26),
	combout => \u2|LessThan0~6_combout\);

-- Location: LCCOMB_X19_Y14_N14
\u2|clkout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|clkout~0_combout\ = (\u2|LessThan0~6_combout\ & ((\u2|LessThan0~4_combout\) # ((\u2|clkout~q\ & !\u2|Equal0~8_combout\)))) # (!\u2|LessThan0~6_combout\ & (\u2|clkout~q\ & ((!\u2|Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|LessThan0~6_combout\,
	datab => \u2|clkout~q\,
	datac => \u2|LessThan0~4_combout\,
	datad => \u2|Equal0~8_combout\,
	combout => \u2|clkout~0_combout\);

-- Location: LCCOMB_X19_Y14_N2
\u2|clkout~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|clkout~feeder_combout\ = \u2|clkout~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|clkout~0_combout\,
	combout => \u2|clkout~feeder_combout\);

-- Location: FF_X19_Y14_N3
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

-- Location: CLKCTRL_G6
\u2|clkout~clkctrl\ : cycloneive_clkctrl
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

-- Location: LCCOMB_X12_Y21_N18
\contador[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador[0]~0_combout\ = !contador(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => contador(0),
	combout => \contador[0]~0_combout\);

-- Location: FF_X12_Y21_N19
\contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|clkout~clkctrl_outclk\,
	d => \contador[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(0));

-- Location: LCCOMB_X12_Y21_N28
\u3|Add2~0\ : cycloneive_lcell_comb
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

-- Location: FF_X12_Y21_N29
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

-- Location: LCCOMB_X12_Y21_N6
\u3|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add0~1_combout\ = contador(2) $ (((contador(0) & contador(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => contador(0),
	datac => contador(2),
	datad => contador(1),
	combout => \u3|Add0~1_combout\);

-- Location: FF_X12_Y21_N7
\contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|clkout~clkctrl_outclk\,
	d => \u3|Add0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(2));

-- Location: LCCOMB_X12_Y21_N12
\u3|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add0~0_combout\ = contador(3) $ (((contador(2) & (contador(0) & contador(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(2),
	datab => contador(0),
	datac => contador(3),
	datad => contador(1),
	combout => \u3|Add0~0_combout\);

-- Location: FF_X12_Y21_N13
\contador[3]\ : dffeas
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
	q => contador(3));

-- Location: LCCOMB_X14_Y21_N2
\u4|Mux11~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux11~5_combout\ = (contador(2) & (contador(1) $ (((contador(3)) # (!contador(0)))))) # (!contador(2) & ((contador(0) & (contador(1) & contador(3))) # (!contador(0) & ((contador(1)) # (contador(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101110010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(2),
	datab => contador(0),
	datac => contador(1),
	datad => contador(3),
	combout => \u4|Mux11~5_combout\);

-- Location: LCCOMB_X14_Y21_N28
\u4|Mux11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux11~4_combout\ = (contador(2) & (((contador(3))) # (!contador(0)))) # (!contador(2) & (contador(3) & (contador(0) $ (contador(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(2),
	datab => contador(0),
	datac => contador(1),
	datad => contador(3),
	combout => \u4|Mux11~4_combout\);

-- Location: LCCOMB_X14_Y21_N12
\u4|Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux11~3_combout\ = (\u4|Selectores\(1) & (\u4|Mux11~5_combout\)) # (!\u4|Selectores\(1) & ((\u4|Mux11~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|Mux11~5_combout\,
	datac => \u4|Selectores\(1),
	datad => \u4|Mux11~4_combout\,
	combout => \u4|Mux11~3_combout\);

-- Location: LCCOMB_X14_Y21_N10
\u4|Mux11~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux11~7_combout\ = (contador(2) & ((contador(0) & (!contador(1))) # (!contador(0) & ((contador(3)))))) # (!contador(2) & ((contador(1) & (contador(0))) # (!contador(1) & ((contador(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(2),
	datab => contador(0),
	datac => contador(1),
	datad => contador(3),
	combout => \u4|Mux11~7_combout\);

-- Location: LCCOMB_X14_Y21_N4
\u4|Mux11~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux11~8_combout\ = (contador(3) & (contador(2) $ (((contador(0)) # (contador(1)))))) # (!contador(3) & ((contador(2) & ((contador(1)))) # (!contador(2) & (contador(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(2),
	datab => contador(0),
	datac => contador(1),
	datad => contador(3),
	combout => \u4|Mux11~8_combout\);

-- Location: LCCOMB_X14_Y21_N14
\u4|Mux11~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux11~6_combout\ = (\u4|Selectores\(1) & ((\u4|Mux11~8_combout\))) # (!\u4|Selectores\(1) & (\u4|Mux11~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Mux11~7_combout\,
	datab => \u4|Mux11~8_combout\,
	datac => \u4|Selectores\(1),
	combout => \u4|Mux11~6_combout\);

-- Location: IOIBUF_X21_Y0_N8
\en~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en,
	o => \en~input_o\);

-- Location: LCCOMB_X14_Y21_N8
\u4|Mux11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux11~combout\ = ((\u4|Selectores\(0) & ((\u4|Mux11~6_combout\))) # (!\u4|Selectores\(0) & (\u4|Mux11~3_combout\))) # (!\en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Mux11~3_combout\,
	datab => \u4|Mux11~6_combout\,
	datac => \u4|Selectores\(0),
	datad => \en~input_o\,
	combout => \u4|Mux11~combout\);

-- Location: LCCOMB_X14_Y21_N20
\u4|Mux10~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux10~11_combout\ = (\u4|Selectores\(1) & (contador(1) $ (((contador(0)) # (!contador(2)))))) # (!\u4|Selectores\(1) & ((contador(2) & (contador(1) & contador(0))) # (!contador(2) & ((contador(1)) # (contador(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110110010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(2),
	datab => \u4|Selectores\(1),
	datac => contador(1),
	datad => contador(0),
	combout => \u4|Mux10~11_combout\);

-- Location: LCCOMB_X14_Y21_N22
\u4|Mux10~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux10~12_combout\ = (contador(3) & ((\u4|Selectores\(1) $ (contador(1))) # (!\u4|Mux10~11_combout\))) # (!contador(3) & (((\u4|Mux10~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(3),
	datab => \u4|Selectores\(1),
	datac => contador(1),
	datad => \u4|Mux10~11_combout\,
	combout => \u4|Mux10~12_combout\);

-- Location: LCCOMB_X14_Y21_N0
\u4|Mux10~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux10~13_combout\ = (contador(2) & ((\u4|Selectores\(1) & (contador(1))) # (!\u4|Selectores\(1) & (!contador(1) & !contador(0))))) # (!contador(2) & (\u4|Selectores\(1) $ (contador(1) $ (!contador(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(2),
	datab => \u4|Selectores\(1),
	datac => contador(1),
	datad => contador(0),
	combout => \u4|Mux10~13_combout\);

-- Location: LCCOMB_X14_Y21_N18
\u4|Mux10~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux10~14_combout\ = (\u4|Mux10~13_combout\ & (((!contador(3)) # (!contador(0))) # (!contador(2)))) # (!\u4|Mux10~13_combout\ & (contador(3) $ (((!contador(2) & !contador(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(2),
	datab => \u4|Mux10~13_combout\,
	datac => contador(0),
	datad => contador(3),
	combout => \u4|Mux10~14_combout\);

-- Location: LCCOMB_X14_Y21_N30
\u4|Mux10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux10~combout\ = ((\u4|Selectores\(0) & (\u4|Mux10~12_combout\)) # (!\u4|Selectores\(0) & ((\u4|Mux10~14_combout\)))) # (!\en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Mux10~12_combout\,
	datab => \u4|Mux10~14_combout\,
	datac => \u4|Selectores\(0),
	datad => \en~input_o\,
	combout => \u4|Mux10~combout\);

-- Location: LCCOMB_X13_Y21_N10
\u4|Mux9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux9~8_combout\ = (contador(2) & (contador(0) $ (contador(1) $ (contador(3))))) # (!contador(2) & (((contador(3)) # (!contador(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111101100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(0),
	datab => contador(1),
	datac => contador(2),
	datad => contador(3),
	combout => \u4|Mux9~8_combout\);

-- Location: LCCOMB_X13_Y21_N20
\u4|Mux9~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux9~7_combout\ = (contador(1) & ((contador(0) $ (contador(3))) # (!contador(2)))) # (!contador(1) & (contador(3) $ (((contador(0) & !contador(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(0),
	datab => contador(1),
	datac => contador(2),
	datad => contador(3),
	combout => \u4|Mux9~7_combout\);

-- Location: LCCOMB_X13_Y21_N16
\u4|Mux9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux9~6_combout\ = (\u4|Selectores\(1) & (\u4|Mux9~8_combout\)) # (!\u4|Selectores\(1) & ((\u4|Mux9~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Mux9~8_combout\,
	datac => \u4|Selectores\(1),
	datad => \u4|Mux9~7_combout\,
	combout => \u4|Mux9~6_combout\);

-- Location: LCCOMB_X14_Y21_N26
\u4|Mux9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux9~5_combout\ = (contador(2) & ((contador(1) $ (contador(3))))) # (!contador(2) & ((contador(0) & ((contador(3)) # (!contador(1)))) # (!contador(0) & ((contador(1)) # (!contador(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111010110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(2),
	datab => contador(0),
	datac => contador(1),
	datad => contador(3),
	combout => \u4|Mux9~5_combout\);

-- Location: LCCOMB_X14_Y21_N24
\u4|Mux9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux9~4_combout\ = (contador(2) & ((contador(3)) # ((!contador(0) & !contador(1))))) # (!contador(2) & ((contador(1) & ((contador(0)) # (!contador(3)))) # (!contador(1) & ((contador(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(2),
	datab => contador(0),
	datac => contador(1),
	datad => contador(3),
	combout => \u4|Mux9~4_combout\);

-- Location: LCCOMB_X14_Y21_N16
\u4|Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux9~3_combout\ = (\u4|Selectores\(1) & (\u4|Mux9~5_combout\)) # (!\u4|Selectores\(1) & ((\u4|Mux9~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Mux9~5_combout\,
	datac => \u4|Selectores\(1),
	datad => \u4|Mux9~4_combout\,
	combout => \u4|Mux9~3_combout\);

-- Location: LCCOMB_X14_Y21_N6
\u4|Mux9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux9~combout\ = ((\u4|Selectores\(0) & (\u4|Mux9~6_combout\)) # (!\u4|Selectores\(0) & ((\u4|Mux9~3_combout\)))) # (!\en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Mux9~6_combout\,
	datab => \u4|Mux9~3_combout\,
	datac => \u4|Selectores\(0),
	datad => \en~input_o\,
	combout => \u4|Mux9~combout\);

-- Location: LCCOMB_X12_Y21_N4
\u4|Mux8~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux8~11_combout\ = (contador(0) & ((\u4|Selectores\(1) & ((contador(3)) # (!contador(1)))) # (!\u4|Selectores\(1) & (contador(1))))) # (!contador(0) & (\u4|Selectores\(1) $ ((!contador(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100101101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(0),
	datab => \u4|Selectores\(1),
	datac => contador(1),
	datad => contador(3),
	combout => \u4|Mux8~11_combout\);

-- Location: LCCOMB_X12_Y21_N26
\u4|Mux8~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux8~12_combout\ = (contador(2) & (((!\u4|Mux8~11_combout\ & contador(3))) # (!contador(0)))) # (!contador(2) & (((\u4|Mux8~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(0),
	datab => contador(2),
	datac => \u4|Mux8~11_combout\,
	datad => contador(3),
	combout => \u4|Mux8~12_combout\);

-- Location: LCCOMB_X12_Y21_N0
\u4|Mux8~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux8~13_combout\ = (contador(1) & ((contador(2) & (!\u4|Selectores\(1) & contador(3))) # (!contador(2) & (\u4|Selectores\(1))))) # (!contador(1) & (((contador(2) & contador(3))) # (!\u4|Selectores\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110100100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(1),
	datab => contador(2),
	datac => \u4|Selectores\(1),
	datad => contador(3),
	combout => \u4|Mux8~13_combout\);

-- Location: LCCOMB_X12_Y21_N10
\u4|Mux8~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux8~14_combout\ = (contador(0) & ((contador(2)) # ((\u4|Mux8~13_combout\)))) # (!contador(0) & (\u4|Mux8~13_combout\ & ((contador(2)) # (contador(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(0),
	datab => contador(2),
	datac => contador(1),
	datad => \u4|Mux8~13_combout\,
	combout => \u4|Mux8~14_combout\);

-- Location: LCCOMB_X12_Y21_N24
\u4|Mux8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux8~combout\ = ((\u4|Selectores\(0) & (\u4|Mux8~12_combout\)) # (!\u4|Selectores\(0) & ((\u4|Mux8~14_combout\)))) # (!\en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Mux8~12_combout\,
	datab => \u4|Mux8~14_combout\,
	datac => \u4|Selectores\(0),
	datad => \en~input_o\,
	combout => \u4|Mux8~combout\);

-- Location: LCCOMB_X13_Y21_N28
\u4|Mux7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux7~8_combout\ = (contador(3) & ((contador(1) $ (contador(2))))) # (!contador(3) & ((contador(0) & (!contador(1) & !contador(2))) # (!contador(0) & (contador(1) & contador(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(0),
	datab => contador(1),
	datac => contador(2),
	datad => contador(3),
	combout => \u4|Mux7~8_combout\);

-- Location: LCCOMB_X13_Y21_N2
\u4|Mux7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux7~7_combout\ = (contador(2) & (((contador(3))))) # (!contador(2) & ((contador(0) & (contador(1) & !contador(3))) # (!contador(0) & (!contador(1) & contador(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(0),
	datab => contador(1),
	datac => contador(2),
	datad => contador(3),
	combout => \u4|Mux7~7_combout\);

-- Location: LCCOMB_X13_Y21_N6
\u4|Mux7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux7~6_combout\ = (\u4|Selectores\(1) & (\u4|Mux7~8_combout\)) # (!\u4|Selectores\(1) & ((\u4|Mux7~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|Mux7~8_combout\,
	datac => \u4|Selectores\(1),
	datad => \u4|Mux7~7_combout\,
	combout => \u4|Mux7~6_combout\);

-- Location: LCCOMB_X13_Y21_N18
\u4|Mux7~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux7~11_combout\ = (contador(1) & (\u4|Selectores\(1) & ((contador(0)) # (!contador(2))))) # (!contador(1) & (!\u4|Selectores\(1) & ((!contador(0)) # (!contador(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(1),
	datab => contador(2),
	datac => \u4|Selectores\(1),
	datad => contador(0),
	combout => \u4|Mux7~11_combout\);

-- Location: LCCOMB_X13_Y21_N8
\u4|Mux7~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux7~12_combout\ = (\u4|Mux7~11_combout\ & (contador(3) $ (((contador(2)) # (!contador(0)))))) # (!\u4|Mux7~11_combout\ & (((contador(2) & contador(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(0),
	datab => \u4|Mux7~11_combout\,
	datac => contador(2),
	datad => contador(3),
	combout => \u4|Mux7~12_combout\);

-- Location: LCCOMB_X13_Y21_N0
\u4|Mux7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux7~combout\ = ((\u4|Selectores\(0) & (\u4|Mux7~6_combout\)) # (!\u4|Selectores\(0) & ((\u4|Mux7~12_combout\)))) # (!\en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Mux7~6_combout\,
	datab => \u4|Selectores\(0),
	datac => \u4|Mux7~12_combout\,
	datad => \en~input_o\,
	combout => \u4|Mux7~combout\);

-- Location: LCCOMB_X12_Y21_N30
\u4|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux6~4_combout\ = (contador(0) & (contador(3) & ((contador(2)) # (!contador(1))))) # (!contador(0) & ((contador(1) & ((contador(3)))) # (!contador(1) & (contador(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(0),
	datab => contador(2),
	datac => contador(1),
	datad => contador(3),
	combout => \u4|Mux6~4_combout\);

-- Location: LCCOMB_X12_Y21_N16
\u4|Mux6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux6~5_combout\ = (contador(1) & (contador(2) $ (((contador(3)) # (!contador(0)))))) # (!contador(1) & (contador(3) & ((contador(2)) # (!contador(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(0),
	datab => contador(2),
	datac => contador(1),
	datad => contador(3),
	combout => \u4|Mux6~5_combout\);

-- Location: LCCOMB_X12_Y21_N22
\u4|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux6~3_combout\ = (\u4|Selectores\(1) & ((\u4|Mux6~5_combout\))) # (!\u4|Selectores\(1) & (\u4|Mux6~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Mux6~4_combout\,
	datab => \u4|Mux6~5_combout\,
	datac => \u4|Selectores\(1),
	combout => \u4|Mux6~3_combout\);

-- Location: LCCOMB_X12_Y21_N8
\u4|Mux6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux6~7_combout\ = (contador(1) & ((contador(0) & (!contador(2))) # (!contador(0) & (contador(2) & contador(3))))) # (!contador(1) & (((contador(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(0),
	datab => contador(2),
	datac => contador(1),
	datad => contador(3),
	combout => \u4|Mux6~7_combout\);

-- Location: LCCOMB_X12_Y21_N2
\u4|Mux6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux6~8_combout\ = (contador(1) & ((contador(2) $ (contador(3))))) # (!contador(1) & ((contador(0) & (!contador(2))) # (!contador(0) & (contador(2) & contador(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(0),
	datab => contador(2),
	datac => contador(1),
	datad => contador(3),
	combout => \u4|Mux6~8_combout\);

-- Location: LCCOMB_X12_Y21_N20
\u4|Mux6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux6~6_combout\ = (\u4|Selectores\(1) & ((\u4|Mux6~8_combout\))) # (!\u4|Selectores\(1) & (\u4|Mux6~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|Mux6~7_combout\,
	datac => \u4|Selectores\(1),
	datad => \u4|Mux6~8_combout\,
	combout => \u4|Mux6~6_combout\);

-- Location: LCCOMB_X12_Y21_N14
\u4|Mux6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux6~combout\ = ((\u4|Selectores\(0) & ((\u4|Mux6~6_combout\))) # (!\u4|Selectores\(0) & (\u4|Mux6~3_combout\))) # (!\en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Mux6~3_combout\,
	datab => \u4|Mux6~6_combout\,
	datac => \u4|Selectores\(0),
	datad => \en~input_o\,
	combout => \u4|Mux6~combout\);

-- Location: LCCOMB_X13_Y21_N12
\u4|Mux5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux5~8_combout\ = (contador(2) & (contador(0) $ (contador(1) $ (contador(3))))) # (!contador(2) & ((contador(0) & ((contador(1)) # (!contador(3)))) # (!contador(0) & ((contador(3)) # (!contador(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110101101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(0),
	datab => contador(1),
	datac => contador(2),
	datad => contador(3),
	combout => \u4|Mux5~8_combout\);

-- Location: LCCOMB_X13_Y21_N22
\u4|Mux5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux5~7_combout\ = (contador(0) & (((!contador(1) & contador(2))) # (!contador(3)))) # (!contador(0) & ((contador(3)) # ((contador(1) & !contador(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(0),
	datab => contador(1),
	datac => contador(2),
	datad => contador(3),
	combout => \u4|Mux5~7_combout\);

-- Location: LCCOMB_X13_Y21_N26
\u4|Mux5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux5~6_combout\ = (\u4|Selectores\(1) & (\u4|Mux5~8_combout\)) # (!\u4|Selectores\(1) & ((\u4|Mux5~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Mux5~8_combout\,
	datab => \u4|Selectores\(1),
	datac => \u4|Mux5~7_combout\,
	combout => \u4|Mux5~6_combout\);

-- Location: LCCOMB_X13_Y21_N14
\u4|Mux5~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux5~11_combout\ = (contador(1) & ((contador(2) & (\u4|Selectores\(1) $ (!contador(0)))) # (!contador(2) & ((!contador(0)) # (!\u4|Selectores\(1)))))) # (!contador(1) & (\u4|Selectores\(1) & ((!contador(0)) # (!contador(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(1),
	datab => contador(2),
	datac => \u4|Selectores\(1),
	datad => contador(0),
	combout => \u4|Mux5~11_combout\);

-- Location: LCCOMB_X13_Y21_N24
\u4|Mux5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux5~12_combout\ = (\u4|Mux5~11_combout\ & ((contador(0) $ (contador(2))) # (!contador(3)))) # (!\u4|Mux5~11_combout\ & (contador(3) $ (((!contador(0) & contador(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(0),
	datab => \u4|Mux5~11_combout\,
	datac => contador(2),
	datad => contador(3),
	combout => \u4|Mux5~12_combout\);

-- Location: LCCOMB_X13_Y21_N4
\u4|Mux5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux5~combout\ = ((\u4|Selectores\(0) & (\u4|Mux5~6_combout\)) # (!\u4|Selectores\(0) & ((\u4|Mux5~12_combout\)))) # (!\en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en~input_o\,
	datab => \u4|Selectores\(0),
	datac => \u4|Mux5~6_combout\,
	datad => \u4|Mux5~12_combout\,
	combout => \u4|Mux5~combout\);

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


