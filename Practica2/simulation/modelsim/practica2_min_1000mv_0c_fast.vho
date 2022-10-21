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

-- DATE "10/21/2022 13:45:02"

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
	inx : IN std_logic_vector(4 DOWNTO 0);
	outx : OUT std_logic_vector(3 DOWNTO 0)
	);
END practica2;

-- Design Ports Information
-- outx[0]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outx[1]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outx[2]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outx[3]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mode[3]	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mode[0]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mode[2]	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inx[0]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inx[3]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inx[1]	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inx[2]	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mode[1]	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inx[4]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_inx : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_outx : std_logic_vector(3 DOWNTO 0);
SIGNAL \outx[0]~output_o\ : std_logic;
SIGNAL \outx[1]~output_o\ : std_logic;
SIGNAL \outx[2]~output_o\ : std_logic;
SIGNAL \outx[3]~output_o\ : std_logic;
SIGNAL \mode[0]~input_o\ : std_logic;
SIGNAL \mode[2]~input_o\ : std_logic;
SIGNAL \mode[3]~input_o\ : std_logic;
SIGNAL \mode[1]~input_o\ : std_logic;
SIGNAL \Mux3~15_combout\ : std_logic;
SIGNAL \inx[3]~input_o\ : std_logic;
SIGNAL \inx[4]~input_o\ : std_logic;
SIGNAL \inx[2]~input_o\ : std_logic;
SIGNAL \Mux3~10_combout\ : std_logic;
SIGNAL \inx[0]~input_o\ : std_logic;
SIGNAL \Mux3~7_combout\ : std_logic;
SIGNAL \inx[1]~input_o\ : std_logic;
SIGNAL \Mux3~8_combout\ : std_logic;
SIGNAL \Mux3~9_combout\ : std_logic;
SIGNAL \Mux3~11_combout\ : std_logic;
SIGNAL \Mux3~12_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \Mux3~6_combout\ : std_logic;
SIGNAL \Mux3~13_combout\ : std_logic;
SIGNAL \green~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \green~combout\ : std_logic;
SIGNAL \Mux3~14_combout\ : std_logic;
SIGNAL \outx~0_combout\ : std_logic;
SIGNAL \Mux3~16_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~1_combout\ : std_logic;

BEGIN

ww_mode <= mode;
ww_inx <= inx;
outx <= ww_outx;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Mux2~1_combout\ <= NOT \Mux2~1_combout\;

-- Location: IOOBUF_X32_Y0_N9
\outx[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~16_combout\,
	devoe => ww_devoe,
	o => \outx[0]~output_o\);

-- Location: IOOBUF_X34_Y2_N16
\outx[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux2~1_combout\,
	devoe => ww_devoe,
	o => \outx[1]~output_o\);

-- Location: IOOBUF_X34_Y4_N23
\outx[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux2~1_combout\,
	devoe => ww_devoe,
	o => \outx[2]~output_o\);

-- Location: IOOBUF_X34_Y7_N9
\outx[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~14_combout\,
	devoe => ww_devoe,
	o => \outx[3]~output_o\);

-- Location: IOIBUF_X34_Y12_N22
\mode[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mode(0),
	o => \mode[0]~input_o\);

-- Location: IOIBUF_X34_Y12_N8
\mode[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mode(2),
	o => \mode[2]~input_o\);

-- Location: IOIBUF_X34_Y12_N1
\mode[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mode(3),
	o => \mode[3]~input_o\);

-- Location: IOIBUF_X34_Y12_N15
\mode[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mode(1),
	o => \mode[1]~input_o\);

-- Location: LCCOMB_X24_Y5_N12
\Mux3~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~15_combout\ = (!\mode[0]~input_o\ & (!\mode[2]~input_o\ & (!\mode[3]~input_o\ & !\mode[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode[0]~input_o\,
	datab => \mode[2]~input_o\,
	datac => \mode[3]~input_o\,
	datad => \mode[1]~input_o\,
	combout => \Mux3~15_combout\);

-- Location: IOIBUF_X34_Y4_N15
\inx[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inx(3),
	o => \inx[3]~input_o\);

-- Location: IOIBUF_X34_Y9_N22
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

-- Location: LCCOMB_X31_Y13_N10
\Mux3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~10_combout\ = (!\inx[3]~input_o\ & (((\inx[4]~input_o\ & !\inx[2]~input_o\)) # (!\mode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inx[3]~input_o\,
	datab => \inx[4]~input_o\,
	datac => \inx[2]~input_o\,
	datad => \mode[2]~input_o\,
	combout => \Mux3~10_combout\);

-- Location: IOIBUF_X32_Y0_N15
\inx[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inx(0),
	o => \inx[0]~input_o\);

-- Location: LCCOMB_X31_Y13_N12
\Mux3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~7_combout\ = ((\inx[3]~input_o\ & !\inx[0]~input_o\)) # (!\mode[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inx[3]~input_o\,
	datac => \inx[0]~input_o\,
	datad => \mode[2]~input_o\,
	combout => \Mux3~7_combout\);

-- Location: IOIBUF_X34_Y2_N22
\inx[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inx(1),
	o => \inx[1]~input_o\);

-- Location: LCCOMB_X31_Y13_N14
\Mux3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~8_combout\ = (!\inx[1]~input_o\ & (\inx[2]~input_o\ & ((\inx[3]~input_o\) # (!\inx[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inx[1]~input_o\,
	datab => \inx[0]~input_o\,
	datac => \inx[2]~input_o\,
	datad => \inx[3]~input_o\,
	combout => \Mux3~8_combout\);

-- Location: LCCOMB_X31_Y13_N8
\Mux3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~9_combout\ = (\Mux3~7_combout\ & (((!\inx[4]~input_o\) # (!\inx[1]~input_o\)))) # (!\Mux3~7_combout\ & (\Mux3~8_combout\ & ((!\inx[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~7_combout\,
	datab => \Mux3~8_combout\,
	datac => \inx[1]~input_o\,
	datad => \inx[4]~input_o\,
	combout => \Mux3~9_combout\);

-- Location: LCCOMB_X31_Y13_N20
\Mux3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~11_combout\ = (\inx[1]~input_o\ & (((\inx[0]~input_o\ & \mode[2]~input_o\)) # (!\inx[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inx[3]~input_o\,
	datab => \inx[0]~input_o\,
	datac => \inx[1]~input_o\,
	datad => \mode[2]~input_o\,
	combout => \Mux3~11_combout\);

-- Location: LCCOMB_X31_Y13_N30
\Mux3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~12_combout\ = (\Mux3~10_combout\) # ((\Mux3~9_combout\) # ((!\inx[2]~input_o\ & \Mux3~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~10_combout\,
	datab => \Mux3~9_combout\,
	datac => \inx[2]~input_o\,
	datad => \Mux3~11_combout\,
	combout => \Mux3~12_combout\);

-- Location: LCCOMB_X24_Y5_N0
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (!\mode[0]~input_o\ & \mode[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode[0]~input_o\,
	datac => \mode[3]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X31_Y13_N16
\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (!\inx[1]~input_o\ & (\inx[0]~input_o\ & (!\inx[2]~input_o\ & !\inx[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inx[1]~input_o\,
	datab => \inx[0]~input_o\,
	datac => \inx[2]~input_o\,
	datad => \inx[3]~input_o\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X31_Y13_N2
\Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = \inx[0]~input_o\ $ (((!\inx[1]~input_o\ & !\inx[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inx[0]~input_o\,
	datac => \inx[1]~input_o\,
	datad => \inx[3]~input_o\,
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X31_Y13_N28
\Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\Mux3~2_combout\ & (\inx[2]~input_o\ & \mode[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux3~2_combout\,
	datac => \inx[2]~input_o\,
	datad => \mode[1]~input_o\,
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X31_Y13_N22
\Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (\mode[1]~input_o\ & (((\inx[2]~input_o\ & \inx[4]~input_o\)) # (!\inx[0]~input_o\))) # (!\mode[1]~input_o\ & (\inx[2]~input_o\ & ((\inx[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode[1]~input_o\,
	datab => \inx[2]~input_o\,
	datac => \inx[0]~input_o\,
	datad => \inx[4]~input_o\,
	combout => \Mux3~4_combout\);

-- Location: LCCOMB_X31_Y13_N0
\Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~5_combout\ = (\Mux3~4_combout\ & (\inx[1]~input_o\ & \inx[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~4_combout\,
	datac => \inx[1]~input_o\,
	datad => \inx[3]~input_o\,
	combout => \Mux3~5_combout\);

-- Location: LCCOMB_X31_Y13_N18
\Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~6_combout\ = (\mode[2]~input_o\ & ((\Mux3~1_combout\) # ((\Mux3~3_combout\) # (\Mux3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode[2]~input_o\,
	datab => \Mux3~1_combout\,
	datac => \Mux3~3_combout\,
	datad => \Mux3~5_combout\,
	combout => \Mux3~6_combout\);

-- Location: LCCOMB_X24_Y5_N18
\Mux3~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~13_combout\ = (\Mux3~0_combout\ & ((\Mux3~6_combout\) # ((\Mux3~12_combout\ & !\mode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~12_combout\,
	datab => \Mux3~0_combout\,
	datac => \Mux3~6_combout\,
	datad => \mode[1]~input_o\,
	combout => \Mux3~13_combout\);

-- Location: LCCOMB_X31_Y13_N26
\green~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \green~0_combout\ = (\inx[1]~input_o\ & ((\inx[0]~input_o\ & ((!\inx[3]~input_o\) # (!\inx[2]~input_o\))) # (!\inx[0]~input_o\ & (!\inx[2]~input_o\ & !\inx[3]~input_o\)))) # (!\inx[1]~input_o\ & (\inx[0]~input_o\ & (!\inx[2]~input_o\ & 
-- !\inx[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inx[1]~input_o\,
	datab => \inx[0]~input_o\,
	datac => \inx[2]~input_o\,
	datad => \inx[3]~input_o\,
	combout => \green~0_combout\);

-- Location: LCCOMB_X24_Y5_N20
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\mode[2]~input_o\ & (\mode[1]~input_o\ & (\mode[3]~input_o\ & \mode[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode[2]~input_o\,
	datab => \mode[1]~input_o\,
	datac => \mode[3]~input_o\,
	datad => \mode[0]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X24_Y5_N10
green : cycloneive_lcell_comb
-- Equation(s):
-- \green~combout\ = (\Mux2~0_combout\ & ((\green~0_combout\))) # (!\Mux2~0_combout\ & (\green~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \green~combout\,
	datac => \green~0_combout\,
	datad => \Mux2~0_combout\,
	combout => \green~combout\);

-- Location: LCCOMB_X24_Y5_N4
\Mux3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~14_combout\ = (\green~combout\ & \Mux2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \green~combout\,
	datad => \Mux2~0_combout\,
	combout => \Mux3~14_combout\);

-- Location: LCCOMB_X31_Y13_N24
\outx~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \outx~0_combout\ = (\inx[1]~input_o\ & (!\inx[0]~input_o\ & (!\inx[2]~input_o\ & !\inx[3]~input_o\))) # (!\inx[1]~input_o\ & ((\inx[0]~input_o\ & (!\inx[2]~input_o\ & !\inx[3]~input_o\)) # (!\inx[0]~input_o\ & (\inx[2]~input_o\ $ (\inx[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inx[1]~input_o\,
	datab => \inx[0]~input_o\,
	datac => \inx[2]~input_o\,
	datad => \inx[3]~input_o\,
	combout => \outx~0_combout\);

-- Location: LCCOMB_X24_Y5_N16
\Mux3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~16_combout\ = (\Mux3~13_combout\) # ((\Mux3~14_combout\) # ((\Mux3~15_combout\ & \outx~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~15_combout\,
	datab => \Mux3~13_combout\,
	datac => \Mux3~14_combout\,
	datad => \outx~0_combout\,
	combout => \Mux3~16_combout\);

-- Location: LCCOMB_X24_Y5_N6
\Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\green~combout\) # (!\Mux2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \green~combout\,
	datad => \Mux2~0_combout\,
	combout => \Mux2~1_combout\);

ww_outx(0) <= \outx[0]~output_o\;

ww_outx(1) <= \outx[1]~output_o\;

ww_outx(2) <= \outx[2]~output_o\;

ww_outx(3) <= \outx[3]~output_o\;
END structure;


