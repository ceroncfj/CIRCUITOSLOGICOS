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

-- DATE "10/12/2022 16:56:41"

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

ENTITY 	topLevel IS
    PORT (
	mode : IN std_logic_vector(3 DOWNTO 0);
	inx : IN std_logic_vector(8 DOWNTO 0);
	outx : OUT std_logic_vector(5 DOWNTO 0)
	);
END topLevel;

-- Design Ports Information
-- outx[0]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outx[1]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outx[2]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outx[3]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outx[4]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outx[5]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mode[0]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mode[1]	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mode[2]	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mode[3]	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inx[4]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inx[5]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inx[6]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inx[7]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inx[0]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inx[1]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inx[2]	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inx[3]	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inx[8]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF topLevel IS
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
SIGNAL ww_inx : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_outx : std_logic_vector(5 DOWNTO 0);
SIGNAL \outx[0]~output_o\ : std_logic;
SIGNAL \outx[1]~output_o\ : std_logic;
SIGNAL \outx[2]~output_o\ : std_logic;
SIGNAL \outx[3]~output_o\ : std_logic;
SIGNAL \outx[4]~output_o\ : std_logic;
SIGNAL \outx[5]~output_o\ : std_logic;
SIGNAL \mode[2]~input_o\ : std_logic;
SIGNAL \mode[3]~input_o\ : std_logic;
SIGNAL \Mux5~7_combout\ : std_logic;
SIGNAL \inx[2]~input_o\ : std_logic;
SIGNAL \inx[0]~input_o\ : std_logic;
SIGNAL \inx[1]~input_o\ : std_logic;
SIGNAL \outx~1_combout\ : std_logic;
SIGNAL \inx[6]~input_o\ : std_logic;
SIGNAL \inx[5]~input_o\ : std_logic;
SIGNAL \inx[7]~input_o\ : std_logic;
SIGNAL \inx[4]~input_o\ : std_logic;
SIGNAL \outx~0_combout\ : std_logic;
SIGNAL \mode[0]~input_o\ : std_logic;
SIGNAL \mode[1]~input_o\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \inx[3]~input_o\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~5_combout\ : std_logic;
SIGNAL \Mux5~6_combout\ : std_logic;
SIGNAL \outx~2_combout\ : std_logic;
SIGNAL \outx~5_combout\ : std_logic;
SIGNAL \outx~3_combout\ : std_logic;
SIGNAL \outx~4_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \Mux5~8_combout\ : std_logic;
SIGNAL \outx~6_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \outx~8_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \outx~7_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \inx[8]~input_o\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \Mux3~6_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;

BEGIN

ww_mode <= mode;
ww_inx <= inx;
outx <= ww_outx;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
\ALT_INV_Mux1~0_combout\ <= NOT \Mux1~0_combout\;

-- Location: IOOBUF_X34_Y7_N9
\outx[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~8_combout\,
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
	i => \Mux4~4_combout\,
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
	i => \Mux3~6_combout\,
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
	i => \Mux2~2_combout\,
	devoe => ww_devoe,
	o => \outx[3]~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\outx[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => \outx[4]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\outx[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \outx[5]~output_o\);

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

-- Location: LCCOMB_X12_Y7_N6
\Mux5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~7_combout\ = (!\mode[2]~input_o\ & \mode[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode[2]~input_o\,
	datac => \mode[3]~input_o\,
	combout => \Mux5~7_combout\);

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

-- Location: LCCOMB_X30_Y9_N0
\outx~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \outx~1_combout\ = (\inx[2]~input_o\ & (\inx[0]~input_o\ & \inx[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inx[2]~input_o\,
	datab => \inx[0]~input_o\,
	datac => \inx[1]~input_o\,
	combout => \outx~1_combout\);

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

-- Location: LCCOMB_X12_Y7_N2
\outx~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \outx~0_combout\ = (\inx[6]~input_o\ & (\inx[5]~input_o\ & (\inx[7]~input_o\ & \inx[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inx[6]~input_o\,
	datab => \inx[5]~input_o\,
	datac => \inx[7]~input_o\,
	datad => \inx[4]~input_o\,
	combout => \outx~0_combout\);

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

-- Location: LCCOMB_X12_Y7_N8
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\mode[2]~input_o\ & (\mode[0]~input_o\ & (!\mode[3]~input_o\ & \mode[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode[2]~input_o\,
	datab => \mode[0]~input_o\,
	datac => \mode[3]~input_o\,
	datad => \mode[1]~input_o\,
	combout => \Mux5~0_combout\);

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

-- Location: LCCOMB_X12_Y7_N4
\Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\Mux5~0_combout\ & (((!\inx[3]~input_o\) # (!\outx~0_combout\)) # (!\outx~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \outx~1_combout\,
	datab => \outx~0_combout\,
	datac => \Mux5~0_combout\,
	datad => \inx[3]~input_o\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X30_Y9_N24
\Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~5_combout\ = (\outx~1_combout\ & ((\mode[1]~input_o\ & ((\mode[0]~input_o\))) # (!\mode[1]~input_o\ & (\inx[3]~input_o\ & !\mode[0]~input_o\)))) # (!\outx~1_combout\ & (((\mode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \outx~1_combout\,
	datab => \mode[1]~input_o\,
	datac => \inx[3]~input_o\,
	datad => \mode[0]~input_o\,
	combout => \Mux5~5_combout\);

-- Location: LCCOMB_X30_Y9_N26
\Mux5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~6_combout\ = (\mode[1]~input_o\ & (\inx[0]~input_o\ $ (((\Mux5~5_combout\) # (\inx[1]~input_o\))))) # (!\mode[1]~input_o\ & (\Mux5~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~5_combout\,
	datab => \inx[1]~input_o\,
	datac => \inx[0]~input_o\,
	datad => \mode[1]~input_o\,
	combout => \Mux5~6_combout\);

-- Location: LCCOMB_X30_Y9_N10
\outx~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \outx~2_combout\ = (\inx[2]~input_o\ & (!\inx[1]~input_o\ & ((!\inx[3]~input_o\) # (!\inx[0]~input_o\)))) # (!\inx[2]~input_o\ & (\inx[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inx[2]~input_o\,
	datab => \inx[1]~input_o\,
	datac => \inx[0]~input_o\,
	datad => \inx[3]~input_o\,
	combout => \outx~2_combout\);

-- Location: LCCOMB_X30_Y9_N18
\outx~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \outx~5_combout\ = ((!\inx[2]~input_o\) # (!\inx[1]~input_o\)) # (!\inx[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inx[3]~input_o\,
	datac => \inx[1]~input_o\,
	datad => \inx[2]~input_o\,
	combout => \outx~5_combout\);

-- Location: LCCOMB_X30_Y9_N12
\outx~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \outx~3_combout\ = (\inx[2]~input_o\) # (\inx[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inx[2]~input_o\,
	datac => \inx[0]~input_o\,
	combout => \outx~3_combout\);

-- Location: LCCOMB_X30_Y9_N14
\outx~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \outx~4_combout\ = (\inx[0]~input_o\ & \inx[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inx[0]~input_o\,
	datac => \inx[1]~input_o\,
	combout => \outx~4_combout\);

-- Location: LCCOMB_X30_Y9_N8
\Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\mode[1]~input_o\ & ((\outx~3_combout\) # ((\mode[0]~input_o\)))) # (!\mode[1]~input_o\ & (((!\outx~4_combout\ & !\mode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \outx~3_combout\,
	datab => \mode[1]~input_o\,
	datac => \outx~4_combout\,
	datad => \mode[0]~input_o\,
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X30_Y9_N4
\Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (\Mux5~2_combout\ & (((\outx~5_combout\) # (!\mode[0]~input_o\)))) # (!\Mux5~2_combout\ & (\outx~2_combout\ & ((\mode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \outx~2_combout\,
	datab => \outx~5_combout\,
	datac => \Mux5~2_combout\,
	datad => \mode[0]~input_o\,
	combout => \Mux5~3_combout\);

-- Location: LCCOMB_X30_Y9_N30
\Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = (\mode[3]~input_o\ & (\Mux5~3_combout\ & \mode[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode[3]~input_o\,
	datac => \Mux5~3_combout\,
	datad => \mode[2]~input_o\,
	combout => \Mux5~4_combout\);

-- Location: LCCOMB_X14_Y9_N8
\Mux5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~8_combout\ = (\Mux5~1_combout\) # ((\Mux5~4_combout\) # ((\Mux5~7_combout\ & \Mux5~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~7_combout\,
	datab => \Mux5~1_combout\,
	datac => \Mux5~6_combout\,
	datad => \Mux5~4_combout\,
	combout => \Mux5~8_combout\);

-- Location: LCCOMB_X30_Y9_N28
\outx~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \outx~6_combout\ = (\inx[3]~input_o\ & \inx[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inx[3]~input_o\,
	datad => \inx[2]~input_o\,
	combout => \outx~6_combout\);

-- Location: LCCOMB_X30_Y9_N22
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\mode[1]~input_o\ & ((\outx~3_combout\) # ((\mode[0]~input_o\)))) # (!\mode[1]~input_o\ & (((!\outx~6_combout\ & !\mode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \outx~3_combout\,
	datab => \mode[1]~input_o\,
	datac => \outx~6_combout\,
	datad => \mode[0]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X30_Y9_N16
\Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\Mux4~0_combout\ & (((\outx~5_combout\) # (!\mode[0]~input_o\)))) # (!\Mux4~0_combout\ & (\outx~2_combout\ & ((\mode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \outx~2_combout\,
	datab => \outx~5_combout\,
	datac => \Mux4~0_combout\,
	datad => \mode[0]~input_o\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X12_Y7_N0
\outx~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \outx~8_combout\ = (\inx[3]~input_o\ & (\inx[5]~input_o\ & \inx[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inx[3]~input_o\,
	datab => \inx[5]~input_o\,
	datad => \inx[4]~input_o\,
	combout => \outx~8_combout\);

-- Location: LCCOMB_X12_Y7_N26
\Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\mode[1]~input_o\ & (((\mode[0]~input_o\)))) # (!\mode[1]~input_o\ & ((\mode[0]~input_o\ & ((!\outx~8_combout\))) # (!\mode[0]~input_o\ & (\outx~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode[1]~input_o\,
	datab => \outx~0_combout\,
	datac => \mode[0]~input_o\,
	datad => \outx~8_combout\,
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X30_Y9_N2
\outx~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \outx~7_combout\ = \inx[3]~input_o\ $ (\inx[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inx[3]~input_o\,
	datad => \inx[2]~input_o\,
	combout => \outx~7_combout\);

-- Location: LCCOMB_X30_Y9_N20
\Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (\Mux4~2_combout\ & (((!\mode[1]~input_o\) # (!\inx[1]~input_o\)))) # (!\Mux4~2_combout\ & (\outx~7_combout\ & ((\mode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~2_combout\,
	datab => \outx~7_combout\,
	datac => \inx[1]~input_o\,
	datad => \mode[1]~input_o\,
	combout => \Mux4~3_combout\);

-- Location: LCCOMB_X30_Y9_N6
\Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = (\mode[3]~input_o\ & ((\mode[2]~input_o\ & (\Mux4~1_combout\)) # (!\mode[2]~input_o\ & ((\Mux4~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode[3]~input_o\,
	datab => \Mux4~1_combout\,
	datac => \Mux4~3_combout\,
	datad => \mode[2]~input_o\,
	combout => \Mux4~4_combout\);

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

-- Location: LCCOMB_X12_Y7_N12
\Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\mode[0]~input_o\ & (((!\inx[6]~input_o\) # (!\inx[7]~input_o\)) # (!\inx[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inx[8]~input_o\,
	datab => \inx[7]~input_o\,
	datac => \mode[0]~input_o\,
	datad => \inx[6]~input_o\,
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X12_Y7_N22
\Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\mode[1]~input_o\ & (\inx[5]~input_o\ $ (\inx[4]~input_o\))) # (!\mode[1]~input_o\ & (\inx[5]~input_o\ & \inx[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode[1]~input_o\,
	datab => \inx[5]~input_o\,
	datad => \inx[4]~input_o\,
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X12_Y7_N16
\Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (\mode[0]~input_o\ & (((!\mode[1]~input_o\) # (!\inx[2]~input_o\)))) # (!\mode[0]~input_o\ & (\Mux3~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~3_combout\,
	datab => \mode[0]~input_o\,
	datac => \inx[2]~input_o\,
	datad => \mode[1]~input_o\,
	combout => \Mux3~4_combout\);

-- Location: LCCOMB_X12_Y7_N10
\Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~5_combout\ = (\mode[1]~input_o\ & (((\Mux3~4_combout\)))) # (!\mode[1]~input_o\ & ((\mode[2]~input_o\ & ((!\Mux3~4_combout\))) # (!\mode[2]~input_o\ & (\Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~2_combout\,
	datab => \Mux3~4_combout\,
	datac => \mode[2]~input_o\,
	datad => \mode[1]~input_o\,
	combout => \Mux3~5_combout\);

-- Location: LCCOMB_X12_Y7_N30
\Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~6_combout\ = (\Mux3~5_combout\ & (\mode[3]~input_o\ & ((!\mode[1]~input_o\) # (!\mode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~5_combout\,
	datab => \mode[3]~input_o\,
	datac => \mode[2]~input_o\,
	datad => \mode[1]~input_o\,
	combout => \Mux3~6_combout\);

-- Location: LCCOMB_X12_Y7_N28
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\mode[0]~input_o\ & (\inx[3]~input_o\)) # (!\mode[0]~input_o\ & ((\inx[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inx[3]~input_o\,
	datab => \inx[7]~input_o\,
	datac => \mode[0]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X12_Y7_N14
\Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\mode[2]~input_o\ & ((\mode[0]~input_o\) # ((\Mux2~0_combout\ & \inx[6]~input_o\)))) # (!\mode[2]~input_o\ & (\Mux2~0_combout\ $ (((\mode[0]~input_o\) # (\inx[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode[2]~input_o\,
	datab => \Mux2~0_combout\,
	datac => \mode[0]~input_o\,
	datad => \inx[6]~input_o\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X12_Y7_N24
\Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\mode[3]~input_o\ & ((\mode[2]~input_o\ & (!\Mux2~1_combout\ & !\mode[1]~input_o\)) # (!\mode[2]~input_o\ & (\Mux2~1_combout\ & \mode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode[2]~input_o\,
	datab => \mode[3]~input_o\,
	datac => \Mux2~1_combout\,
	datad => \mode[1]~input_o\,
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X12_Y7_N18
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ((\inx[4]~input_o\) # ((!\mode[1]~input_o\) # (!\mode[0]~input_o\))) # (!\Mux5~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~7_combout\,
	datab => \inx[4]~input_o\,
	datac => \mode[0]~input_o\,
	datad => \mode[1]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X12_Y7_N20
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ((\inx[5]~input_o\) # ((!\mode[1]~input_o\) # (!\mode[0]~input_o\))) # (!\Mux5~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~7_combout\,
	datab => \inx[5]~input_o\,
	datac => \mode[0]~input_o\,
	datad => \mode[1]~input_o\,
	combout => \Mux0~0_combout\);

ww_outx(0) <= \outx[0]~output_o\;

ww_outx(1) <= \outx[1]~output_o\;

ww_outx(2) <= \outx[2]~output_o\;

ww_outx(3) <= \outx[3]~output_o\;

ww_outx(4) <= \outx[4]~output_o\;

ww_outx(5) <= \outx[5]~output_o\;
END structure;


