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

-- DATE "11/11/2022 16:03:17"

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

ENTITY 	practica3 IS
    PORT (
	sel : IN std_logic;
	ix1 : IN std_logic_vector(3 DOWNTO 0);
	ix2 : IN std_logic_vector(3 DOWNTO 0);
	ox : OUT std_logic_vector(2 DOWNTO 0);
	seg : OUT std_logic_vector(7 DOWNTO 0);
	dig : OUT std_logic_vector(3 DOWNTO 0)
	);
END practica3;

-- Design Ports Information
-- sel	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ox[0]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ox[1]	=>  Location: PIN_3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ox[2]	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- ix1[0]	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ix2[0]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ix1[3]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ix2[3]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ix1[2]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ix2[2]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ix1[1]	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ix2[1]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF practica3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sel : std_logic;
SIGNAL ww_ix1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ix2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ox : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_seg : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_dig : std_logic_vector(3 DOWNTO 0);
SIGNAL \sel~input_o\ : std_logic;
SIGNAL \ox[0]~output_o\ : std_logic;
SIGNAL \ox[1]~output_o\ : std_logic;
SIGNAL \ox[2]~output_o\ : std_logic;
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
SIGNAL \ix2[2]~input_o\ : std_logic;
SIGNAL \ix1[2]~input_o\ : std_logic;
SIGNAL \ix1[0]~input_o\ : std_logic;
SIGNAL \ix2[1]~input_o\ : std_logic;
SIGNAL \ix1[1]~input_o\ : std_logic;
SIGNAL \ix2[0]~input_o\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \ix2[3]~input_o\ : std_logic;
SIGNAL \ix1[3]~input_o\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \inx[2]~4_combout\ : std_logic;
SIGNAL \inx[3]~5_combout\ : std_logic;
SIGNAL \inx[0]~2_combout\ : std_logic;
SIGNAL \inx[1]~3_combout\ : std_logic;
SIGNAL \u1|Mux6~0_combout\ : std_logic;
SIGNAL \u1|Mux5~0_combout\ : std_logic;
SIGNAL \u1|Mux4~0_combout\ : std_logic;
SIGNAL \u1|Mux3~0_combout\ : std_logic;
SIGNAL \u1|Mux2~0_combout\ : std_logic;
SIGNAL \u1|Mux1~0_combout\ : std_logic;
SIGNAL \u1|Mux0~0_combout\ : std_logic;
SIGNAL \u1|ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_sel <= sel;
ww_ix1 <= ix1;
ww_ix2 <= ix2;
ox <= ww_ox;
seg <= ww_seg;
dig <= ww_dig;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\u1|ALT_INV_Mux0~0_combout\ <= NOT \u1|Mux0~0_combout\;

-- Location: IOOBUF_X32_Y0_N23
\ox[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ox[0]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\ox[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ox[1]~output_o\);

-- Location: IOOBUF_X1_Y24_N9
\ox[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ox[2]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\seg[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|Mux6~0_combout\,
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
	i => \u1|Mux5~0_combout\,
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
	i => \u1|Mux4~0_combout\,
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
	i => \u1|Mux3~0_combout\,
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
	i => \u1|Mux2~0_combout\,
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
	i => \u1|Mux1~0_combout\,
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
	i => \u1|ALT_INV_Mux0~0_combout\,
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

-- Location: IOIBUF_X30_Y0_N1
\ix2[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ix2(2),
	o => \ix2[2]~input_o\);

-- Location: IOIBUF_X34_Y4_N15
\ix1[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ix1(2),
	o => \ix1[2]~input_o\);

-- Location: IOIBUF_X34_Y2_N22
\ix1[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ix1(0),
	o => \ix1[0]~input_o\);

-- Location: IOIBUF_X30_Y0_N22
\ix2[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ix2(1),
	o => \ix2[1]~input_o\);

-- Location: IOIBUF_X34_Y3_N22
\ix1[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ix1(1),
	o => \ix1[1]~input_o\);

-- Location: IOIBUF_X28_Y0_N22
\ix2[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ix2(0),
	o => \ix2[0]~input_o\);

-- Location: LCCOMB_X25_Y3_N8
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (\ix2[1]~input_o\ & (\ix1[0]~input_o\ & (\ix1[1]~input_o\ & !\ix2[0]~input_o\))) # (!\ix2[1]~input_o\ & ((\ix1[1]~input_o\) # ((\ix1[0]~input_o\ & !\ix2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ix1[0]~input_o\,
	datab => \ix2[1]~input_o\,
	datac => \ix1[1]~input_o\,
	datad => \ix2[0]~input_o\,
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X25_Y3_N10
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (\ix2[2]~input_o\ & (\LessThan0~0_combout\ & \ix1[2]~input_o\)) # (!\ix2[2]~input_o\ & ((\LessThan0~0_combout\) # (\ix1[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ix2[2]~input_o\,
	datab => \LessThan0~0_combout\,
	datac => \ix1[2]~input_o\,
	combout => \LessThan0~1_combout\);

-- Location: IOIBUF_X32_Y0_N15
\ix2[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ix2(3),
	o => \ix2[3]~input_o\);

-- Location: IOIBUF_X34_Y9_N22
\ix1[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ix1(3),
	o => \ix1[3]~input_o\);

-- Location: LCCOMB_X25_Y3_N20
\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (\LessThan0~1_combout\ & ((\ix1[3]~input_o\) # (!\ix2[3]~input_o\))) # (!\LessThan0~1_combout\ & (!\ix2[3]~input_o\ & \ix1[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~1_combout\,
	datab => \ix2[3]~input_o\,
	datad => \ix1[3]~input_o\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X25_Y3_N26
\inx[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inx[2]~4_combout\ = (\LessThan0~2_combout\ & ((\ix1[2]~input_o\))) # (!\LessThan0~2_combout\ & (\ix2[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ix2[2]~input_o\,
	datac => \ix1[2]~input_o\,
	datad => \LessThan0~2_combout\,
	combout => \inx[2]~4_combout\);

-- Location: LCCOMB_X25_Y3_N2
\inx[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inx[3]~5_combout\ = (\ix2[3]~input_o\) # (\ix1[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ix2[3]~input_o\,
	datad => \ix1[3]~input_o\,
	combout => \inx[3]~5_combout\);

-- Location: LCCOMB_X25_Y3_N14
\inx[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inx[0]~2_combout\ = (\LessThan0~2_combout\ & (\ix1[0]~input_o\)) # (!\LessThan0~2_combout\ & ((\ix2[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~2_combout\,
	datac => \ix1[0]~input_o\,
	datad => \ix2[0]~input_o\,
	combout => \inx[0]~2_combout\);

-- Location: LCCOMB_X25_Y3_N16
\inx[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inx[1]~3_combout\ = (\LessThan0~2_combout\ & ((\ix1[1]~input_o\))) # (!\LessThan0~2_combout\ & (\ix2[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ix2[1]~input_o\,
	datac => \ix1[1]~input_o\,
	datad => \LessThan0~2_combout\,
	combout => \inx[1]~3_combout\);

-- Location: LCCOMB_X25_Y3_N28
\u1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mux6~0_combout\ = (\inx[2]~4_combout\ & (!\inx[1]~3_combout\ & (\inx[3]~5_combout\ $ (!\inx[0]~2_combout\)))) # (!\inx[2]~4_combout\ & (\inx[0]~2_combout\ & (\inx[3]~5_combout\ $ (!\inx[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inx[2]~4_combout\,
	datab => \inx[3]~5_combout\,
	datac => \inx[0]~2_combout\,
	datad => \inx[1]~3_combout\,
	combout => \u1|Mux6~0_combout\);

-- Location: LCCOMB_X25_Y3_N30
\u1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mux5~0_combout\ = (\inx[3]~5_combout\ & ((\inx[0]~2_combout\ & ((\inx[1]~3_combout\))) # (!\inx[0]~2_combout\ & (\inx[2]~4_combout\)))) # (!\inx[3]~5_combout\ & (\inx[2]~4_combout\ & (\inx[0]~2_combout\ $ (\inx[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inx[2]~4_combout\,
	datab => \inx[3]~5_combout\,
	datac => \inx[0]~2_combout\,
	datad => \inx[1]~3_combout\,
	combout => \u1|Mux5~0_combout\);

-- Location: LCCOMB_X25_Y3_N24
\u1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mux4~0_combout\ = (\inx[2]~4_combout\ & (\inx[3]~5_combout\ & ((\inx[1]~3_combout\) # (!\inx[0]~2_combout\)))) # (!\inx[2]~4_combout\ & (!\inx[3]~5_combout\ & (!\inx[0]~2_combout\ & \inx[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inx[2]~4_combout\,
	datab => \inx[3]~5_combout\,
	datac => \inx[0]~2_combout\,
	datad => \inx[1]~3_combout\,
	combout => \u1|Mux4~0_combout\);

-- Location: LCCOMB_X25_Y3_N18
\u1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mux3~0_combout\ = (\inx[1]~3_combout\ & ((\inx[2]~4_combout\ & ((\inx[0]~2_combout\))) # (!\inx[2]~4_combout\ & (\inx[3]~5_combout\ & !\inx[0]~2_combout\)))) # (!\inx[1]~3_combout\ & (!\inx[3]~5_combout\ & (\inx[2]~4_combout\ $ (\inx[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inx[2]~4_combout\,
	datab => \inx[3]~5_combout\,
	datac => \inx[0]~2_combout\,
	datad => \inx[1]~3_combout\,
	combout => \u1|Mux3~0_combout\);

-- Location: LCCOMB_X25_Y3_N12
\u1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mux2~0_combout\ = (\inx[1]~3_combout\ & (((!\inx[3]~5_combout\ & \inx[0]~2_combout\)))) # (!\inx[1]~3_combout\ & ((\inx[2]~4_combout\ & (!\inx[3]~5_combout\)) # (!\inx[2]~4_combout\ & ((\inx[0]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inx[2]~4_combout\,
	datab => \inx[3]~5_combout\,
	datac => \inx[0]~2_combout\,
	datad => \inx[1]~3_combout\,
	combout => \u1|Mux2~0_combout\);

-- Location: LCCOMB_X25_Y3_N6
\u1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mux1~0_combout\ = (\inx[2]~4_combout\ & (\inx[0]~2_combout\ & (\inx[3]~5_combout\ $ (\inx[1]~3_combout\)))) # (!\inx[2]~4_combout\ & (!\inx[3]~5_combout\ & ((\inx[0]~2_combout\) # (\inx[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inx[2]~4_combout\,
	datab => \inx[3]~5_combout\,
	datac => \inx[0]~2_combout\,
	datad => \inx[1]~3_combout\,
	combout => \u1|Mux1~0_combout\);

-- Location: LCCOMB_X25_Y3_N0
\u1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mux0~0_combout\ = (\inx[0]~2_combout\ & ((\inx[3]~5_combout\) # (\inx[2]~4_combout\ $ (\inx[1]~3_combout\)))) # (!\inx[0]~2_combout\ & ((\inx[1]~3_combout\) # (\inx[2]~4_combout\ $ (\inx[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inx[2]~4_combout\,
	datab => \inx[3]~5_combout\,
	datac => \inx[0]~2_combout\,
	datad => \inx[1]~3_combout\,
	combout => \u1|Mux0~0_combout\);

-- Location: IOIBUF_X21_Y0_N8
\sel~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel,
	o => \sel~input_o\);

ww_ox(0) <= \ox[0]~output_o\;

ww_ox(1) <= \ox[1]~output_o\;

ww_ox(2) <= \ox[2]~output_o\;

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
END structure;


