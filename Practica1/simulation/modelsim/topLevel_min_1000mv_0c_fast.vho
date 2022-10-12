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

-- DATE "10/12/2022 01:05:03"

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
	light : OUT std_logic;
	mode : IN std_logic_vector(3 DOWNTO 0);
	inx : IN std_logic_vector(8 DOWNTO 0);
	outx : OUT std_logic_vector(5 DOWNTO 0)
	);
END topLevel;

-- Design Ports Information
-- light	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inx[6]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inx[7]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inx[8]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outx[0]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outx[1]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outx[2]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outx[3]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outx[4]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outx[5]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mode[2]	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mode[3]	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inx[0]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inx[1]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inx[3]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inx[2]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mode[0]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mode[1]	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inx[4]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inx[5]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_light : std_logic;
SIGNAL ww_mode : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_inx : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_outx : std_logic_vector(5 DOWNTO 0);
SIGNAL \Mux0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inx[6]~input_o\ : std_logic;
SIGNAL \inx[7]~input_o\ : std_logic;
SIGNAL \inx[8]~input_o\ : std_logic;
SIGNAL \light~output_o\ : std_logic;
SIGNAL \outx[0]~output_o\ : std_logic;
SIGNAL \outx[1]~output_o\ : std_logic;
SIGNAL \outx[2]~output_o\ : std_logic;
SIGNAL \outx[3]~output_o\ : std_logic;
SIGNAL \outx[4]~output_o\ : std_logic;
SIGNAL \outx[5]~output_o\ : std_logic;
SIGNAL \inx[0]~input_o\ : std_logic;
SIGNAL \mode[3]~input_o\ : std_logic;
SIGNAL \inx[3]~input_o\ : std_logic;
SIGNAL \inx[1]~input_o\ : std_logic;
SIGNAL \inx[2]~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \mode[2]~input_o\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \mode[1]~input_o\ : std_logic;
SIGNAL \mode[0]~input_o\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~0clkctrl_outclk\ : std_logic;
SIGNAL \outx[2]$latch~combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \outx[3]$latch~combout\ : std_logic;
SIGNAL \inx[4]~input_o\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \outx[4]$latch~combout\ : std_logic;
SIGNAL \inx[5]~input_o\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \outx[5]$latch~combout\ : std_logic;

BEGIN

light <= ww_light;
ww_mode <= mode;
ww_inx <= inx;
outx <= ww_outx;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mux0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Mux0~0_combout\);

-- Location: IOOBUF_X7_Y24_N2
\light~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \light~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\outx[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~1_combout\,
	devoe => ww_devoe,
	o => \outx[0]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\outx[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~3_combout\,
	devoe => ww_devoe,
	o => \outx[1]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
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

-- Location: IOOBUF_X18_Y24_N23
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

-- Location: IOOBUF_X23_Y24_N16
\outx[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outx[4]$latch~combout\,
	devoe => ww_devoe,
	o => \outx[4]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\outx[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outx[5]$latch~combout\,
	devoe => ww_devoe,
	o => \outx[5]~output_o\);

-- Location: IOIBUF_X0_Y9_N8
\inx[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inx(0),
	o => \inx[0]~input_o\);

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

-- Location: IOIBUF_X0_Y6_N15
\inx[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inx(3),
	o => \inx[3]~input_o\);

-- Location: IOIBUF_X0_Y8_N15
\inx[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inx(1),
	o => \inx[1]~input_o\);

-- Location: IOIBUF_X0_Y7_N1
\inx[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inx(2),
	o => \inx[2]~input_o\);

-- Location: LCCOMB_X33_Y12_N14
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\inx[1]~input_o\ & (!\inx[2]~input_o\ & ((!\inx[0]~input_o\) # (!\inx[3]~input_o\)))) # (!\inx[1]~input_o\ & (((\inx[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inx[3]~input_o\,
	datab => \inx[1]~input_o\,
	datac => \inx[2]~input_o\,
	datad => \inx[0]~input_o\,
	combout => \Mux6~0_combout\);

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

-- Location: LCCOMB_X33_Y12_N22
\Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\mode[3]~input_o\) # ((\mode[2]~input_o\ & (!\inx[0]~input_o\)) # (!\mode[2]~input_o\ & ((\Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inx[0]~input_o\,
	datab => \mode[3]~input_o\,
	datac => \Mux6~0_combout\,
	datad => \mode[2]~input_o\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X33_Y12_N4
\Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\inx[1]~input_o\ & (((!\inx[2]~input_o\)))) # (!\inx[1]~input_o\ & (\inx[2]~input_o\ & ((\inx[0]~input_o\) # (!\inx[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inx[3]~input_o\,
	datab => \inx[1]~input_o\,
	datac => \inx[2]~input_o\,
	datad => \inx[0]~input_o\,
	combout => \Mux5~2_combout\);

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

-- Location: LCCOMB_X33_Y12_N6
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\mode[0]~input_o\) # ((\mode[3]~input_o\ & ((\mode[1]~input_o\) # (\mode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode[0]~input_o\,
	datab => \mode[3]~input_o\,
	datac => \mode[1]~input_o\,
	datad => \mode[2]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X33_Y12_N0
\Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\Mux5~0_combout\) # ((\mode[2]~input_o\ & (!\inx[1]~input_o\ & !\mode[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode[2]~input_o\,
	datab => \inx[1]~input_o\,
	datac => \mode[1]~input_o\,
	datad => \Mux5~0_combout\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X32_Y12_N12
\Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (\Mux5~1_combout\) # ((\Mux5~2_combout\ & (!\mode[2]~input_o\ & \mode[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~2_combout\,
	datab => \mode[2]~input_o\,
	datac => \Mux5~1_combout\,
	datad => \mode[1]~input_o\,
	combout => \Mux5~3_combout\);

-- Location: LCCOMB_X32_Y12_N22
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\mode[1]~input_o\ & ((\mode[3]~input_o\))) # (!\mode[1]~input_o\ & (\mode[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mode[2]~input_o\,
	datac => \mode[3]~input_o\,
	datad => \mode[1]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X33_Y12_N26
\Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\mode[0]~input_o\ & (((\mode[3]~input_o\)))) # (!\mode[0]~input_o\ & (\Mux4~0_combout\ & ((\mode[3]~input_o\) # (!\inx[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inx[2]~input_o\,
	datab => \mode[0]~input_o\,
	datac => \mode[3]~input_o\,
	datad => \Mux4~0_combout\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X33_Y12_N16
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!\mode[2]~input_o\ & (!\mode[3]~input_o\ & (\mode[1]~input_o\ & !\mode[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode[2]~input_o\,
	datab => \mode[3]~input_o\,
	datac => \mode[1]~input_o\,
	datad => \mode[0]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: CLKCTRL_G8
\Mux0~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Mux0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Mux0~0clkctrl_outclk\);

-- Location: LCCOMB_X33_Y12_N30
\outx[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \outx[2]$latch~combout\ = (GLOBAL(\Mux0~0clkctrl_outclk\) & ((\outx[2]$latch~combout\))) # (!GLOBAL(\Mux0~0clkctrl_outclk\) & (\Mux4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~1_combout\,
	datac => \outx[2]$latch~combout\,
	datad => \Mux0~0clkctrl_outclk\,
	combout => \outx[2]$latch~combout\);

-- Location: LCCOMB_X33_Y12_N2
\Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (!\mode[0]~input_o\ & (!\mode[1]~input_o\ & \mode[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode[0]~input_o\,
	datac => \mode[1]~input_o\,
	datad => \mode[2]~input_o\,
	combout => \Mux4~3_combout\);

-- Location: LCCOMB_X33_Y12_N8
\Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\mode[3]~input_o\ & ((\mode[2]~input_o\) # ((\mode[1]~input_o\) # (\mode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode[2]~input_o\,
	datab => \mode[3]~input_o\,
	datac => \mode[1]~input_o\,
	datad => \mode[0]~input_o\,
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X33_Y12_N20
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\Mux4~2_combout\) # ((!\inx[3]~input_o\ & \Mux4~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inx[3]~input_o\,
	datac => \Mux4~3_combout\,
	datad => \Mux4~2_combout\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X33_Y12_N18
\outx[3]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \outx[3]$latch~combout\ = (GLOBAL(\Mux0~0clkctrl_outclk\) & (\outx[3]$latch~combout\)) # (!GLOBAL(\Mux0~0clkctrl_outclk\) & ((\Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \outx[3]$latch~combout\,
	datac => \Mux3~0_combout\,
	datad => \Mux0~0clkctrl_outclk\,
	combout => \outx[3]$latch~combout\);

-- Location: IOIBUF_X0_Y6_N22
\inx[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inx(4),
	o => \inx[4]~input_o\);

-- Location: LCCOMB_X33_Y12_N10
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\Mux4~2_combout\) # ((!\inx[4]~input_o\ & \Mux4~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inx[4]~input_o\,
	datac => \Mux4~3_combout\,
	datad => \Mux4~2_combout\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X33_Y12_N12
\outx[4]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \outx[4]$latch~combout\ = (GLOBAL(\Mux0~0clkctrl_outclk\) & (\outx[4]$latch~combout\)) # (!GLOBAL(\Mux0~0clkctrl_outclk\) & ((\Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \outx[4]$latch~combout\,
	datac => \Mux2~0_combout\,
	datad => \Mux0~0clkctrl_outclk\,
	combout => \outx[4]$latch~combout\);

-- Location: IOIBUF_X0_Y5_N15
\inx[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inx(5),
	o => \inx[5]~input_o\);

-- Location: LCCOMB_X33_Y12_N24
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\Mux4~2_combout\) # ((!\inx[5]~input_o\ & \Mux4~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inx[5]~input_o\,
	datac => \Mux4~3_combout\,
	datad => \Mux4~2_combout\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X33_Y12_N28
\outx[5]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \outx[5]$latch~combout\ = (GLOBAL(\Mux0~0clkctrl_outclk\) & (\outx[5]$latch~combout\)) # (!GLOBAL(\Mux0~0clkctrl_outclk\) & ((\Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \outx[5]$latch~combout\,
	datac => \Mux1~0_combout\,
	datad => \Mux0~0clkctrl_outclk\,
	combout => \outx[5]$latch~combout\);

-- Location: IOIBUF_X1_Y0_N22
\inx[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inx(6),
	o => \inx[6]~input_o\);

-- Location: IOIBUF_X1_Y0_N15
\inx[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inx(7),
	o => \inx[7]~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\inx[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inx(8),
	o => \inx[8]~input_o\);

ww_light <= \light~output_o\;

ww_outx(0) <= \outx[0]~output_o\;

ww_outx(1) <= \outx[1]~output_o\;

ww_outx(2) <= \outx[2]~output_o\;

ww_outx(3) <= \outx[3]~output_o\;

ww_outx(4) <= \outx[4]~output_o\;

ww_outx(5) <= \outx[5]~output_o\;
END structure;


