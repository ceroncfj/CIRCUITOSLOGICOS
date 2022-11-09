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

-- DATE "10/26/2022 17:22:26"

-- 
-- Device: Altera EP4CE6E22C8L Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	practica2 IS
    PORT (
	mode : IN std_logic_vector(3 DOWNTO 0);
	inx : IN std_logic_vector(9 DOWNTO 0);
	seg : OUT std_logic_vector(7 DOWNTO 0);
	dig : OUT std_logic_vector(3 DOWNTO 0);
	outx : OUT std_logic_vector(3 DOWNTO 0)
	);
END practica2;

-- Design Ports Information
-- seg[0]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[1]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[2]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[3]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[4]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[5]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[6]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[7]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[0]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[1]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[2]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[3]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outx[0]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outx[1]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outx[2]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outx[3]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inx[1]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inx[2]	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inx[7]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inx[8]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inx[6]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inx[9]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inx[5]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inx[0]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inx[3]	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inx[4]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mode[3]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mode[0]	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mode[1]	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mode[2]	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF practica2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_mode : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_inx : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_seg : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_dig : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_outx : std_logic_vector(3 DOWNTO 0);
SIGNAL \Mux4~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \seg[0]~output_o\ : std_logic;
SIGNAL \seg[1]~output_o\ : std_logic;
SIGNAL \seg[2]~output_o\ : std_logic;
SIGNAL \seg[3]~output_o\ : std_logic;
SIGNAL \seg[4]~output_o\ : std_logic;
SIGNAL \seg[5]~output_o\ : std_logic;
SIGNAL \seg[6]~output_o\ : std_logic;
SIGNAL \seg[7]~output_o\ : std_logic;
SIGNAL \dig[0]~output_o\ : std_logic;
SIGNAL \dig[1]~output_o\ : std_logic;
SIGNAL \dig[2]~output_o\ : std_logic;
SIGNAL \dig[3]~output_o\ : std_logic;
SIGNAL \outx[0]~output_o\ : std_logic;
SIGNAL \outx[1]~output_o\ : std_logic;
SIGNAL \outx[2]~output_o\ : std_logic;
SIGNAL \outx[3]~output_o\ : std_logic;
SIGNAL \inx[5]~input_o\ : std_logic;
SIGNAL \inx[1]~input_o\ : std_logic;
SIGNAL \inx[0]~input_o\ : std_logic;
SIGNAL \inx[4]~input_o\ : std_logic;
SIGNAL \inx[2]~input_o\ : std_logic;
SIGNAL \inx[3]~input_o\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \inx[8]~input_o\ : std_logic;
SIGNAL \inx[9]~input_o\ : std_logic;
SIGNAL \inx[6]~input_o\ : std_logic;
SIGNAL \inx[7]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \WideNor0~0_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \WideOr3~0_combout\ : std_logic;
SIGNAL \WideOr3~combout\ : std_logic;
SIGNAL \mode[1]~input_o\ : std_logic;
SIGNAL \mode[2]~input_o\ : std_logic;
SIGNAL \mode[3]~input_o\ : std_logic;
SIGNAL \mode[0]~input_o\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~0clkctrl_outclk\ : std_logic;
SIGNAL \outx[0]$latch~combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \WideNor0~2_combout\ : std_logic;
SIGNAL \WideNor0~3_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \Equal8~0_combout\ : std_logic;
SIGNAL \WideNor0~1_combout\ : std_logic;
SIGNAL \Equal7~1_combout\ : std_logic;
SIGNAL \Equal9~0_combout\ : std_logic;
SIGNAL \WideNor0~combout\ : std_logic;
SIGNAL \WideOr2~0_combout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \WideOr2~combout\ : std_logic;
SIGNAL \outx[1]$latch~combout\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \WideOr1~combout\ : std_logic;
SIGNAL \outx[2]$latch~combout\ : std_logic;
SIGNAL \WideOr0~combout\ : std_logic;
SIGNAL \outx[3]$latch~combout\ : std_logic;

BEGIN

ww_mode <= mode;
ww_inx <= inx;
seg <= ww_seg;
dig <= ww_dig;
outx <= ww_outx;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mux4~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Mux4~0_combout\);

-- Location: IOOBUF_X16_Y24_N16
\seg[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
	devoe => ww_devoe,
	o => \seg[7]~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\dig[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dig[0]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\dig[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dig[1]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\dig[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dig[2]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\dig[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dig[3]~output_o\);

-- Location: IOOBUF_X34_Y7_N9
\outx[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outx[0]$latch~combout\,
	devoe => ww_devoe,
	o => \outx[0]~output_o\);

-- Location: IOOBUF_X34_Y4_N23
\outx[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outx[1]$latch~combout\,
	devoe => ww_devoe,
	o => \outx[1]~output_o\);

-- Location: IOOBUF_X34_Y2_N16
\outx[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outx[2]$latch~combout\,
	devoe => ww_devoe,
	o => \outx[2]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\outx[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outx[3]$latch~combout\,
	devoe => ww_devoe,
	o => \outx[3]~output_o\);

-- Location: IOIBUF_X30_Y0_N1
\inx[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inx(5),
	o => \inx[5]~input_o\);

-- Location: IOIBUF_X34_Y4_N15
\inx[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inx(1),
	o => \inx[1]~input_o\);

-- Location: IOIBUF_X34_Y9_N22
\inx[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inx(0),
	o => \inx[0]~input_o\);

-- Location: IOIBUF_X32_Y0_N15
\inx[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inx(4),
	o => \inx[4]~input_o\);

-- Location: IOIBUF_X34_Y3_N22
\inx[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inx(2),
	o => \inx[2]~input_o\);

-- Location: IOIBUF_X34_Y2_N22
\inx[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inx(3),
	o => \inx[3]~input_o\);

-- Location: LCCOMB_X31_Y3_N30
\Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (!\inx[0]~input_o\ & (!\inx[4]~input_o\ & (!\inx[2]~input_o\ & !\inx[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inx[0]~input_o\,
	datab => \inx[4]~input_o\,
	datac => \inx[2]~input_o\,
	datad => \inx[3]~input_o\,
	combout => \Equal2~1_combout\);

-- Location: IOIBUF_X23_Y0_N8
\inx[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inx(8),
	o => \inx[8]~input_o\);

-- Location: IOIBUF_X21_Y0_N8
\inx[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inx(9),
	o => \inx[9]~input_o\);

-- Location: IOIBUF_X30_Y0_N22
\inx[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inx(6),
	o => \inx[6]~input_o\);

-- Location: IOIBUF_X28_Y0_N22
\inx[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inx(7),
	o => \inx[7]~input_o\);

-- Location: LCCOMB_X30_Y3_N8
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\inx[8]~input_o\ & (!\inx[9]~input_o\ & (!\inx[6]~input_o\ & !\inx[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inx[8]~input_o\,
	datab => \inx[9]~input_o\,
	datac => \inx[6]~input_o\,
	datad => \inx[7]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X31_Y3_N26
\Equal6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = (\inx[5]~input_o\ & (!\inx[1]~input_o\ & (\Equal2~1_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inx[5]~input_o\,
	datab => \inx[1]~input_o\,
	datac => \Equal2~1_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal6~0_combout\);

-- Location: LCCOMB_X31_Y3_N24
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\Equal2~1_combout\ & (!\inx[5]~input_o\ & !\inx[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~1_combout\,
	datac => \inx[5]~input_o\,
	datad => \inx[1]~input_o\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X30_Y3_N2
\Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = (!\inx[8]~input_o\ & (!\inx[7]~input_o\ & \Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inx[8]~input_o\,
	datab => \inx[7]~input_o\,
	datad => \Equal0~1_combout\,
	combout => \Equal7~0_combout\);

-- Location: LCCOMB_X30_Y3_N4
\WideNor0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideNor0~0_combout\ = (!\Equal6~0_combout\ & ((\inx[9]~input_o\ $ (!\inx[6]~input_o\)) # (!\Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~0_combout\,
	datab => \inx[9]~input_o\,
	datac => \inx[6]~input_o\,
	datad => \Equal7~0_combout\,
	combout => \WideNor0~0_combout\);

-- Location: LCCOMB_X31_Y3_N10
\Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (!\inx[0]~input_o\ & (!\inx[3]~input_o\ & !\inx[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inx[0]~input_o\,
	datab => \inx[3]~input_o\,
	datac => \inx[4]~input_o\,
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X31_Y3_N0
\Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!\inx[5]~input_o\ & \Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inx[5]~input_o\,
	datad => \Equal0~0_combout\,
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X31_Y3_N4
\WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr3~0_combout\ = ((\inx[2]~input_o\ $ (!\inx[1]~input_o\)) # (!\Equal2~0_combout\)) # (!\Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => \Equal2~0_combout\,
	datac => \inx[2]~input_o\,
	datad => \inx[1]~input_o\,
	combout => \WideOr3~0_combout\);

-- Location: LCCOMB_X30_Y3_N6
WideOr3 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr3~combout\ = (!\WideOr3~0_combout\) # (!\WideNor0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WideNor0~0_combout\,
	datad => \WideOr3~0_combout\,
	combout => \WideOr3~combout\);

-- Location: IOIBUF_X34_Y12_N8
\mode[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mode(1),
	o => \mode[1]~input_o\);

-- Location: IOIBUF_X34_Y12_N15
\mode[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mode(2),
	o => \mode[2]~input_o\);

-- Location: IOIBUF_X34_Y12_N22
\mode[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mode(3),
	o => \mode[3]~input_o\);

-- Location: IOIBUF_X34_Y12_N1
\mode[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mode(0),
	o => \mode[0]~input_o\);

-- Location: LCCOMB_X26_Y12_N22
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (!\mode[1]~input_o\ & (!\mode[2]~input_o\ & (\mode[3]~input_o\ & !\mode[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode[1]~input_o\,
	datab => \mode[2]~input_o\,
	datac => \mode[3]~input_o\,
	datad => \mode[0]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: CLKCTRL_G0
\Mux4~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Mux4~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Mux4~0clkctrl_outclk\);

-- Location: LCCOMB_X30_Y3_N24
\outx[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \outx[0]$latch~combout\ = (GLOBAL(\Mux4~0clkctrl_outclk\) & (\WideOr3~combout\)) # (!GLOBAL(\Mux4~0clkctrl_outclk\) & ((\outx[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr3~combout\,
	datac => \Mux4~0clkctrl_outclk\,
	datad => \outx[0]$latch~combout\,
	combout => \outx[0]$latch~combout\);

-- Location: LCCOMB_X31_Y3_N22
\Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (\Equal0~0_combout\ & (!\inx[2]~input_o\ & (!\inx[5]~input_o\ & !\inx[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \inx[2]~input_o\,
	datac => \inx[5]~input_o\,
	datad => \inx[1]~input_o\,
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X31_Y3_N6
\WideNor0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideNor0~2_combout\ = (\inx[4]~input_o\) # ((\inx[0]~input_o\ $ (!\inx[3]~input_o\)) # (!\Equal4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inx[0]~input_o\,
	datab => \inx[4]~input_o\,
	datac => \Equal4~0_combout\,
	datad => \inx[3]~input_o\,
	combout => \WideNor0~2_combout\);

-- Location: LCCOMB_X30_Y3_N22
\WideNor0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideNor0~3_combout\ = (\WideNor0~2_combout\ & (\WideOr3~0_combout\ & ((!\Equal0~0_combout\) # (!\Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~2_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~0_combout\,
	datad => \WideOr3~0_combout\,
	combout => \WideNor0~3_combout\);

-- Location: LCCOMB_X31_Y3_N20
\Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (!\inx[0]~input_o\ & (\inx[4]~input_o\ & (\Equal4~0_combout\ & !\inx[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inx[0]~input_o\,
	datab => \inx[4]~input_o\,
	datac => \Equal4~0_combout\,
	datad => \inx[3]~input_o\,
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X30_Y3_N26
\Equal8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal8~0_combout\ = (!\inx[8]~input_o\ & (!\inx[9]~input_o\ & (!\inx[6]~input_o\ & \inx[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inx[8]~input_o\,
	datab => \inx[9]~input_o\,
	datac => \inx[6]~input_o\,
	datad => \inx[7]~input_o\,
	combout => \Equal8~0_combout\);

-- Location: LCCOMB_X30_Y3_N20
\WideNor0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideNor0~1_combout\ = (\Equal5~0_combout\) # ((\Equal8~0_combout\ & \Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datac => \Equal8~0_combout\,
	datad => \Equal0~1_combout\,
	combout => \WideNor0~1_combout\);

-- Location: LCCOMB_X31_Y3_N2
\Equal7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~1_combout\ = (\Equal2~1_combout\ & (!\inx[7]~input_o\ & (!\inx[5]~input_o\ & !\inx[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~1_combout\,
	datab => \inx[7]~input_o\,
	datac => \inx[5]~input_o\,
	datad => \inx[1]~input_o\,
	combout => \Equal7~1_combout\);

-- Location: LCCOMB_X30_Y3_N0
\Equal9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal9~0_combout\ = (!\inx[6]~input_o\ & (!\inx[9]~input_o\ & (\inx[8]~input_o\ & \Equal7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inx[6]~input_o\,
	datab => \inx[9]~input_o\,
	datac => \inx[8]~input_o\,
	datad => \Equal7~1_combout\,
	combout => \Equal9~0_combout\);

-- Location: LCCOMB_X30_Y3_N16
WideNor0 : cycloneive_lcell_comb
-- Equation(s):
-- \WideNor0~combout\ = ((\WideNor0~1_combout\) # ((\Equal9~0_combout\) # (!\WideNor0~0_combout\))) # (!\WideNor0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~3_combout\,
	datab => \WideNor0~1_combout\,
	datac => \WideNor0~0_combout\,
	datad => \Equal9~0_combout\,
	combout => \WideNor0~combout\);

-- Location: LCCOMB_X31_Y3_N16
\WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr2~0_combout\ = (!\inx[0]~input_o\ & (\Equal4~0_combout\ & (\inx[4]~input_o\ $ (\inx[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inx[0]~input_o\,
	datab => \inx[4]~input_o\,
	datac => \Equal4~0_combout\,
	datad => \inx[3]~input_o\,
	combout => \WideOr2~0_combout\);

-- Location: LCCOMB_X31_Y3_N12
\Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = (\Equal3~0_combout\ & (\Equal2~0_combout\ & (\inx[2]~input_o\ & !\inx[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => \Equal2~0_combout\,
	datac => \inx[2]~input_o\,
	datad => \inx[1]~input_o\,
	combout => \Equal3~1_combout\);

-- Location: LCCOMB_X31_Y3_N8
WideOr2 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr2~combout\ = ((\WideOr2~0_combout\) # ((\Equal6~0_combout\) # (\Equal3~1_combout\))) # (!\WideNor0~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~combout\,
	datab => \WideOr2~0_combout\,
	datac => \Equal6~0_combout\,
	datad => \Equal3~1_combout\,
	combout => \WideOr2~combout\);

-- Location: LCCOMB_X31_Y3_N18
\outx[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \outx[1]$latch~combout\ = (GLOBAL(\Mux4~0clkctrl_outclk\) & ((!\WideOr2~combout\))) # (!GLOBAL(\Mux4~0clkctrl_outclk\) & (\outx[1]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \outx[1]$latch~combout\,
	datac => \WideOr2~combout\,
	datad => \Mux4~0clkctrl_outclk\,
	combout => \outx[1]$latch~combout\);

-- Location: LCCOMB_X30_Y3_N10
\WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr1~0_combout\ = (!\inx[6]~input_o\ & (\Equal7~1_combout\ & (\inx[9]~input_o\ $ (\inx[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inx[6]~input_o\,
	datab => \inx[9]~input_o\,
	datac => \inx[8]~input_o\,
	datad => \Equal7~1_combout\,
	combout => \WideOr1~0_combout\);

-- Location: LCCOMB_X30_Y3_N12
WideOr1 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr1~combout\ = (\WideOr1~0_combout\) # (((\Equal0~0_combout\ & \Equal0~1_combout\)) # (!\WideNor0~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr1~0_combout\,
	datab => \WideNor0~combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~1_combout\,
	combout => \WideOr1~combout\);

-- Location: LCCOMB_X30_Y3_N18
\outx[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \outx[2]$latch~combout\ = (GLOBAL(\Mux4~0clkctrl_outclk\) & (!\WideOr1~combout\)) # (!GLOBAL(\Mux4~0clkctrl_outclk\) & ((\outx[2]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr1~combout\,
	datac => \Mux4~0clkctrl_outclk\,
	datad => \outx[2]$latch~combout\,
	combout => \outx[2]$latch~combout\);

-- Location: LCCOMB_X30_Y3_N14
WideOr0 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~combout\ = ((!\WideNor0~1_combout\ & (\WideNor0~0_combout\ & !\Equal9~0_combout\))) # (!\WideNor0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~3_combout\,
	datab => \WideNor0~1_combout\,
	datac => \WideNor0~0_combout\,
	datad => \Equal9~0_combout\,
	combout => \WideOr0~combout\);

-- Location: LCCOMB_X30_Y3_N28
\outx[3]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \outx[3]$latch~combout\ = (GLOBAL(\Mux4~0clkctrl_outclk\) & (!\WideOr0~combout\)) # (!GLOBAL(\Mux4~0clkctrl_outclk\) & ((\outx[3]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WideOr0~combout\,
	datac => \Mux4~0clkctrl_outclk\,
	datad => \outx[3]$latch~combout\,
	combout => \outx[3]$latch~combout\);

ww_seg(0) <= \seg[0]~output_o\;

ww_seg(1) <= \seg[1]~output_o\;

ww_seg(2) <= \seg[2]~output_o\;

ww_seg(3) <= \seg[3]~output_o\;

ww_seg(4) <= \seg[4]~output_o\;

ww_seg(5) <= \seg[5]~output_o\;

ww_seg(6) <= \seg[6]~output_o\;

ww_seg(7) <= \seg[7]~output_o\;

ww_dig(0) <= \dig[0]~output_o\;

ww_dig(1) <= \dig[1]~output_o\;

ww_dig(2) <= \dig[2]~output_o\;

ww_dig(3) <= \dig[3]~output_o\;

ww_outx(0) <= \outx[0]~output_o\;

ww_outx(1) <= \outx[1]~output_o\;

ww_outx(2) <= \outx[2]~output_o\;

ww_outx(3) <= \outx[3]~output_o\;
END structure;


