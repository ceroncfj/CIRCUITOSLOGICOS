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

-- DATE "11/16/2022 16:54:08"

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

ENTITY 	practica3c IS
    PORT (
	ea : IN std_logic;
	eb : IN std_logic;
	ha : IN std_logic;
	hb : IN std_logic;
	sel : IN std_logic_vector(1 DOWNTO 0);
	sala : OUT std_logic_vector(3 DOWNTO 0);
	salb : OUT std_logic_vector(3 DOWNTO 0)
	);
END practica3c;

-- Design Ports Information
-- sala[0]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sala[1]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sala[2]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sala[3]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salb[0]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salb[1]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salb[2]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salb[3]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ea	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ha	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[0]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[1]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- eb	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hb	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF practica3c IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ea : std_logic;
SIGNAL ww_eb : std_logic;
SIGNAL ww_ha : std_logic;
SIGNAL ww_hb : std_logic;
SIGNAL ww_sel : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_sala : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_salb : std_logic_vector(3 DOWNTO 0);
SIGNAL \sala[0]~output_o\ : std_logic;
SIGNAL \sala[1]~output_o\ : std_logic;
SIGNAL \sala[2]~output_o\ : std_logic;
SIGNAL \sala[3]~output_o\ : std_logic;
SIGNAL \salb[0]~output_o\ : std_logic;
SIGNAL \salb[1]~output_o\ : std_logic;
SIGNAL \salb[2]~output_o\ : std_logic;
SIGNAL \salb[3]~output_o\ : std_logic;
SIGNAL \ea~input_o\ : std_logic;
SIGNAL \sel[1]~input_o\ : std_logic;
SIGNAL \ha~input_o\ : std_logic;
SIGNAL \sel[0]~input_o\ : std_logic;
SIGNAL \u1|sal[0]~0_combout\ : std_logic;
SIGNAL \u1|sal[1]~1_combout\ : std_logic;
SIGNAL \u1|sal[2]~2_combout\ : std_logic;
SIGNAL \u1|sal[3]~3_combout\ : std_logic;
SIGNAL \eb~input_o\ : std_logic;
SIGNAL \hb~input_o\ : std_logic;
SIGNAL \u2|sal[0]~0_combout\ : std_logic;
SIGNAL \u2|sal[1]~1_combout\ : std_logic;
SIGNAL \u2|sal[2]~2_combout\ : std_logic;
SIGNAL \u2|sal[3]~3_combout\ : std_logic;
SIGNAL \u2|ALT_INV_sal[3]~3_combout\ : std_logic;
SIGNAL \u2|ALT_INV_sal[2]~2_combout\ : std_logic;
SIGNAL \u2|ALT_INV_sal[1]~1_combout\ : std_logic;
SIGNAL \u2|ALT_INV_sal[0]~0_combout\ : std_logic;

BEGIN

ww_ea <= ea;
ww_eb <= eb;
ww_ha <= ha;
ww_hb <= hb;
ww_sel <= sel;
sala <= ww_sala;
salb <= ww_salb;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\u2|ALT_INV_sal[3]~3_combout\ <= NOT \u2|sal[3]~3_combout\;
\u2|ALT_INV_sal[2]~2_combout\ <= NOT \u2|sal[2]~2_combout\;
\u2|ALT_INV_sal[1]~1_combout\ <= NOT \u2|sal[1]~1_combout\;
\u2|ALT_INV_sal[0]~0_combout\ <= NOT \u2|sal[0]~0_combout\;

-- Location: IOOBUF_X34_Y7_N9
\sala[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|sal[0]~0_combout\,
	devoe => ww_devoe,
	o => \sala[0]~output_o\);

-- Location: IOOBUF_X34_Y4_N23
\sala[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|sal[1]~1_combout\,
	devoe => ww_devoe,
	o => \sala[1]~output_o\);

-- Location: IOOBUF_X34_Y2_N16
\sala[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|sal[2]~2_combout\,
	devoe => ww_devoe,
	o => \sala[2]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\sala[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|sal[3]~3_combout\,
	devoe => ww_devoe,
	o => \sala[3]~output_o\);

-- Location: IOOBUF_X34_Y9_N16
\salb[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|ALT_INV_sal[0]~0_combout\,
	devoe => ww_devoe,
	o => \salb[0]~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\salb[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|ALT_INV_sal[1]~1_combout\,
	devoe => ww_devoe,
	o => \salb[1]~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\salb[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|ALT_INV_sal[2]~2_combout\,
	devoe => ww_devoe,
	o => \salb[2]~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\salb[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|ALT_INV_sal[3]~3_combout\,
	devoe => ww_devoe,
	o => \salb[3]~output_o\);

-- Location: IOIBUF_X21_Y0_N8
\ea~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ea,
	o => \ea~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\sel[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(1),
	o => \sel[1]~input_o\);

-- Location: IOIBUF_X28_Y0_N22
\ha~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ha,
	o => \ha~input_o\);

-- Location: IOIBUF_X32_Y0_N15
\sel[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(0),
	o => \sel[0]~input_o\);

-- Location: LCCOMB_X33_Y2_N0
\u1|sal[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|sal[0]~0_combout\ = (\ea~input_o\ & (!\sel[1]~input_o\ & (!\ha~input_o\ & !\sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ea~input_o\,
	datab => \sel[1]~input_o\,
	datac => \ha~input_o\,
	datad => \sel[0]~input_o\,
	combout => \u1|sal[0]~0_combout\);

-- Location: LCCOMB_X33_Y2_N10
\u1|sal[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|sal[1]~1_combout\ = (\ea~input_o\ & (!\sel[1]~input_o\ & (!\ha~input_o\ & \sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ea~input_o\,
	datab => \sel[1]~input_o\,
	datac => \ha~input_o\,
	datad => \sel[0]~input_o\,
	combout => \u1|sal[1]~1_combout\);

-- Location: LCCOMB_X33_Y2_N4
\u1|sal[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|sal[2]~2_combout\ = (\ea~input_o\ & (\sel[1]~input_o\ & (!\ha~input_o\ & !\sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ea~input_o\,
	datab => \sel[1]~input_o\,
	datac => \ha~input_o\,
	datad => \sel[0]~input_o\,
	combout => \u1|sal[2]~2_combout\);

-- Location: LCCOMB_X33_Y2_N30
\u1|sal[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|sal[3]~3_combout\ = (\ea~input_o\ & (\sel[1]~input_o\ & (!\ha~input_o\ & \sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ea~input_o\,
	datab => \sel[1]~input_o\,
	datac => \ha~input_o\,
	datad => \sel[0]~input_o\,
	combout => \u1|sal[3]~3_combout\);

-- Location: IOIBUF_X23_Y0_N8
\eb~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_eb,
	o => \eb~input_o\);

-- Location: IOIBUF_X30_Y0_N22
\hb~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hb,
	o => \hb~input_o\);

-- Location: LCCOMB_X33_Y2_N16
\u2|sal[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|sal[0]~0_combout\ = (\eb~input_o\ & (!\sel[1]~input_o\ & (!\hb~input_o\ & !\sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eb~input_o\,
	datab => \sel[1]~input_o\,
	datac => \hb~input_o\,
	datad => \sel[0]~input_o\,
	combout => \u2|sal[0]~0_combout\);

-- Location: LCCOMB_X33_Y2_N26
\u2|sal[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|sal[1]~1_combout\ = (\eb~input_o\ & (!\sel[1]~input_o\ & (!\hb~input_o\ & \sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eb~input_o\,
	datab => \sel[1]~input_o\,
	datac => \hb~input_o\,
	datad => \sel[0]~input_o\,
	combout => \u2|sal[1]~1_combout\);

-- Location: LCCOMB_X33_Y2_N12
\u2|sal[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|sal[2]~2_combout\ = (\eb~input_o\ & (\sel[1]~input_o\ & (!\hb~input_o\ & !\sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eb~input_o\,
	datab => \sel[1]~input_o\,
	datac => \hb~input_o\,
	datad => \sel[0]~input_o\,
	combout => \u2|sal[2]~2_combout\);

-- Location: LCCOMB_X33_Y2_N14
\u2|sal[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|sal[3]~3_combout\ = (\eb~input_o\ & (\sel[1]~input_o\ & (!\hb~input_o\ & \sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eb~input_o\,
	datab => \sel[1]~input_o\,
	datac => \hb~input_o\,
	datad => \sel[0]~input_o\,
	combout => \u2|sal[3]~3_combout\);

ww_sala(0) <= \sala[0]~output_o\;

ww_sala(1) <= \sala[1]~output_o\;

ww_sala(2) <= \sala[2]~output_o\;

ww_sala(3) <= \sala[3]~output_o\;

ww_salb(0) <= \salb[0]~output_o\;

ww_salb(1) <= \salb[1]~output_o\;

ww_salb(2) <= \salb[2]~output_o\;

ww_salb(3) <= \salb[3]~output_o\;
END structure;


