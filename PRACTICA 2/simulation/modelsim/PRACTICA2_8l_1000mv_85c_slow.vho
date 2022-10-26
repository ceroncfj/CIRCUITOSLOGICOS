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

-- DATE "10/26/2022 16:07:18"

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
	inx : IN std_logic_vector(3 DOWNTO 0);
	seg : BUFFER std_logic_vector(7 DOWNTO 0);
	dig : BUFFER std_logic_vector(3 DOWNTO 0);
	outx : BUFFER std_logic_vector(3 DOWNTO 0)
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
-- inx[0]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inx[1]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inx[2]	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inx[3]	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mode[1]	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mode[2]	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mode[3]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mode[0]	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_inx : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_seg : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_dig : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_outx : std_logic_vector(3 DOWNTO 0);
SIGNAL \Mux20~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Mux26~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \inx[1]~input_o\ : std_logic;
SIGNAL \inx[2]~input_o\ : std_logic;
SIGNAL \inx[3]~input_o\ : std_logic;
SIGNAL \inx[0]~input_o\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \mode[3]~input_o\ : std_logic;
SIGNAL \mode[1]~input_o\ : std_logic;
SIGNAL \mode[2]~input_o\ : std_logic;
SIGNAL \mode[0]~input_o\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux20~0clkctrl_outclk\ : std_logic;
SIGNAL \seg[0]$latch~combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \seg[1]$latch~combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \seg[2]$latch~combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \seg[3]$latch~combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \seg[4]$latch~combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \seg[5]$latch~combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \seg[6]$latch~combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \seg[7]$latch~combout\ : std_logic;
SIGNAL \Mux21~2_combout\ : std_logic;
SIGNAL \Mux21~1_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Mux21~3_combout\ : std_logic;
SIGNAL \Mux20~1_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Mux26~1_combout\ : std_logic;
SIGNAL \Mux26~1clkctrl_outclk\ : std_logic;
SIGNAL \outx[0]$latch~combout\ : std_logic;
SIGNAL \Mux27~1_combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Mux27~2_combout\ : std_logic;
SIGNAL \outx[1]$latch~combout\ : std_logic;
SIGNAL \Mux21~4_combout\ : std_logic;
SIGNAL \Mux32~0_combout\ : std_logic;
SIGNAL \Mux27~3_combout\ : std_logic;
SIGNAL \Mux32~1_combout\ : std_logic;
SIGNAL \outx[2]$latch~combout\ : std_logic;
SIGNAL \Mux34~0_combout\ : std_logic;
SIGNAL \Mux34~1_combout\ : std_logic;
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

\Mux20~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Mux20~0_combout\);

\Mux26~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Mux26~1_combout\);

-- Location: IOOBUF_X16_Y24_N16
\seg[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg[0]$latch~combout\,
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
	i => \seg[1]$latch~combout\,
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
	i => \seg[2]$latch~combout\,
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
	i => \seg[3]$latch~combout\,
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
	i => \seg[4]$latch~combout\,
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
	i => \seg[5]$latch~combout\,
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
	i => \seg[6]$latch~combout\,
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
	i => \seg[7]$latch~combout\,
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

-- Location: LCCOMB_X26_Y18_N8
\Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\inx[3]~input_o\ & (((\inx[2]~input_o\ & \inx[0]~input_o\)))) # (!\inx[3]~input_o\ & (!\inx[1]~input_o\ & (\inx[2]~input_o\ $ (\inx[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inx[1]~input_o\,
	datab => \inx[2]~input_o\,
	datac => \inx[3]~input_o\,
	datad => \inx[0]~input_o\,
	combout => \Mux11~0_combout\);

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

-- Location: LCCOMB_X30_Y11_N12
\Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (\mode[3]~input_o\ & (\mode[1]~input_o\ & (\mode[2]~input_o\ & !\mode[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode[3]~input_o\,
	datab => \mode[1]~input_o\,
	datac => \mode[2]~input_o\,
	datad => \mode[0]~input_o\,
	combout => \Mux20~0_combout\);

-- Location: CLKCTRL_G5
\Mux20~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Mux20~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Mux20~0clkctrl_outclk\);

-- Location: LCCOMB_X26_Y18_N30
\seg[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg[0]$latch~combout\ = (GLOBAL(\Mux20~0clkctrl_outclk\) & (\Mux11~0_combout\)) # (!GLOBAL(\Mux20~0clkctrl_outclk\) & ((\seg[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux11~0_combout\,
	datac => \seg[0]$latch~combout\,
	datad => \Mux20~0clkctrl_outclk\,
	combout => \seg[0]$latch~combout\);

-- Location: LCCOMB_X26_Y18_N2
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\inx[2]~input_o\ & (\inx[1]~input_o\ $ (\inx[3]~input_o\ $ (\inx[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inx[1]~input_o\,
	datab => \inx[2]~input_o\,
	datac => \inx[3]~input_o\,
	datad => \inx[0]~input_o\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X19_Y17_N24
\seg[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg[1]$latch~combout\ = (GLOBAL(\Mux20~0clkctrl_outclk\) & (\Mux10~0_combout\)) # (!GLOBAL(\Mux20~0clkctrl_outclk\) & ((\seg[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux10~0_combout\,
	datac => \seg[1]$latch~combout\,
	datad => \Mux20~0clkctrl_outclk\,
	combout => \seg[1]$latch~combout\);

-- Location: LCCOMB_X26_Y18_N20
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\inx[1]~input_o\ & ((\inx[3]~input_o\ & ((\inx[0]~input_o\))) # (!\inx[3]~input_o\ & (!\inx[2]~input_o\ & !\inx[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inx[1]~input_o\,
	datab => \inx[2]~input_o\,
	datac => \inx[3]~input_o\,
	datad => \inx[0]~input_o\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X23_Y22_N8
\seg[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg[2]$latch~combout\ = (GLOBAL(\Mux20~0clkctrl_outclk\) & (\Mux9~0_combout\)) # (!GLOBAL(\Mux20~0clkctrl_outclk\) & ((\seg[2]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux9~0_combout\,
	datac => \seg[2]$latch~combout\,
	datad => \Mux20~0clkctrl_outclk\,
	combout => \seg[2]$latch~combout\);

-- Location: LCCOMB_X26_Y18_N6
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\inx[2]~input_o\ & (\inx[0]~input_o\ $ (((!\inx[1]~input_o\ & !\inx[3]~input_o\))))) # (!\inx[2]~input_o\ & ((\inx[1]~input_o\ & (\inx[3]~input_o\)) # (!\inx[1]~input_o\ & (!\inx[3]~input_o\ & \inx[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inx[1]~input_o\,
	datab => \inx[2]~input_o\,
	datac => \inx[3]~input_o\,
	datad => \inx[0]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X26_Y18_N16
\seg[3]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg[3]$latch~combout\ = (GLOBAL(\Mux20~0clkctrl_outclk\) & (\Mux8~0_combout\)) # (!GLOBAL(\Mux20~0clkctrl_outclk\) & ((\seg[3]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~0_combout\,
	datab => \seg[3]$latch~combout\,
	datad => \Mux20~0clkctrl_outclk\,
	combout => \seg[3]$latch~combout\);

-- Location: LCCOMB_X26_Y18_N24
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\inx[1]~input_o\ & (\inx[0]~input_o\ $ (((!\inx[2]~input_o\ & \inx[3]~input_o\))))) # (!\inx[1]~input_o\ & ((\inx[2]~input_o\ & (!\inx[3]~input_o\)) # (!\inx[2]~input_o\ & ((\inx[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inx[1]~input_o\,
	datab => \inx[2]~input_o\,
	datac => \inx[3]~input_o\,
	datad => \inx[0]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X14_Y20_N8
\seg[4]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg[4]$latch~combout\ = (GLOBAL(\Mux20~0clkctrl_outclk\) & (\Mux7~0_combout\)) # (!GLOBAL(\Mux20~0clkctrl_outclk\) & ((\seg[4]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~0_combout\,
	datac => \seg[4]$latch~combout\,
	datad => \Mux20~0clkctrl_outclk\,
	combout => \seg[4]$latch~combout\);

-- Location: LCCOMB_X26_Y18_N18
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\inx[2]~input_o\ & ((\inx[1]~input_o\ & ((\inx[0]~input_o\))) # (!\inx[1]~input_o\ & (\inx[3]~input_o\)))) # (!\inx[2]~input_o\ & (!\inx[3]~input_o\ & ((\inx[1]~input_o\) # (\inx[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inx[1]~input_o\,
	datab => \inx[2]~input_o\,
	datac => \inx[3]~input_o\,
	datad => \inx[0]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X23_Y22_N26
\seg[5]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg[5]$latch~combout\ = (GLOBAL(\Mux20~0clkctrl_outclk\) & (\Mux6~0_combout\)) # (!GLOBAL(\Mux20~0clkctrl_outclk\) & ((\seg[5]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux6~0_combout\,
	datac => \seg[5]$latch~combout\,
	datad => \Mux20~0clkctrl_outclk\,
	combout => \seg[5]$latch~combout\);

-- Location: LCCOMB_X26_Y18_N12
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\inx[1]~input_o\ & ((\inx[2]~input_o\ & ((!\inx[0]~input_o\))) # (!\inx[2]~input_o\ & (!\inx[3]~input_o\)))) # (!\inx[1]~input_o\ & (\inx[2]~input_o\ $ ((\inx[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011010011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inx[1]~input_o\,
	datab => \inx[2]~input_o\,
	datac => \inx[3]~input_o\,
	datad => \inx[0]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X26_Y18_N10
\seg[6]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg[6]$latch~combout\ = (GLOBAL(\Mux20~0clkctrl_outclk\) & (!\Mux5~0_combout\)) # (!GLOBAL(\Mux20~0clkctrl_outclk\) & ((\seg[6]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~0_combout\,
	datac => \seg[6]$latch~combout\,
	datad => \Mux20~0clkctrl_outclk\,
	combout => \seg[6]$latch~combout\);

-- Location: LCCOMB_X26_Y18_N22
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\inx[3]~input_o\ & ((\inx[1]~input_o\ & ((!\inx[0]~input_o\) # (!\inx[2]~input_o\))) # (!\inx[1]~input_o\ & (\inx[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inx[1]~input_o\,
	datab => \inx[2]~input_o\,
	datac => \inx[3]~input_o\,
	datad => \inx[0]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X26_Y18_N28
\seg[7]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg[7]$latch~combout\ = (GLOBAL(\Mux20~0clkctrl_outclk\) & ((!\Mux4~0_combout\))) # (!GLOBAL(\Mux20~0clkctrl_outclk\) & (\seg[7]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seg[7]$latch~combout\,
	datac => \Mux4~0_combout\,
	datad => \Mux20~0clkctrl_outclk\,
	combout => \seg[7]$latch~combout\);

-- Location: LCCOMB_X30_Y11_N18
\Mux21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~2_combout\ = (\mode[0]~input_o\ & (!\inx[3]~input_o\ & (!\inx[1]~input_o\ & !\inx[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode[0]~input_o\,
	datab => \inx[3]~input_o\,
	datac => \inx[1]~input_o\,
	datad => \inx[2]~input_o\,
	combout => \Mux21~2_combout\);

-- Location: LCCOMB_X30_Y11_N30
\Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~1_combout\ = (!\mode[1]~input_o\ & !\mode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mode[1]~input_o\,
	datad => \mode[0]~input_o\,
	combout => \Mux21~1_combout\);

-- Location: LCCOMB_X31_Y11_N24
\Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = \inx[0]~input_o\ $ (((\inx[1]~input_o\ & !\mode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inx[1]~input_o\,
	datac => \mode[2]~input_o\,
	datad => \inx[0]~input_o\,
	combout => \Mux21~0_combout\);

-- Location: LCCOMB_X30_Y11_N16
\Mux21~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~3_combout\ = (\Mux21~2_combout\ & (((\Mux21~1_combout\ & \Mux21~0_combout\)) # (!\inx[0]~input_o\))) # (!\Mux21~2_combout\ & (((\Mux21~1_combout\ & \Mux21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~2_combout\,
	datab => \inx[0]~input_o\,
	datac => \Mux21~1_combout\,
	datad => \Mux21~0_combout\,
	combout => \Mux21~3_combout\);

-- Location: LCCOMB_X30_Y11_N4
\Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~1_combout\ = (\mode[2]~input_o\ & (\mode[1]~input_o\ & \mode[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode[2]~input_o\,
	datab => \mode[1]~input_o\,
	datad => \mode[3]~input_o\,
	combout => \Mux20~1_combout\);

-- Location: LCCOMB_X30_Y11_N14
\Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (\mode[2]~input_o\ & (!\inx[3]~input_o\ & ((!\inx[2]~input_o\)))) # (!\mode[2]~input_o\ & (((!\inx[1]~input_o\ & !\inx[2]~input_o\)) # (!\inx[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode[2]~input_o\,
	datab => \inx[3]~input_o\,
	datac => \inx[1]~input_o\,
	datad => \inx[2]~input_o\,
	combout => \Mux26~0_combout\);

-- Location: LCCOMB_X30_Y11_N22
\Mux26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~1_combout\ = (\Mux20~1_combout\) # ((\mode[3]~input_o\ & (\Mux21~1_combout\ & \Mux26~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode[3]~input_o\,
	datab => \Mux20~1_combout\,
	datac => \Mux21~1_combout\,
	datad => \Mux26~0_combout\,
	combout => \Mux26~1_combout\);

-- Location: CLKCTRL_G4
\Mux26~1clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Mux26~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Mux26~1clkctrl_outclk\);

-- Location: LCCOMB_X30_Y11_N26
\outx[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \outx[0]$latch~combout\ = (GLOBAL(\Mux26~1clkctrl_outclk\) & (\Mux21~3_combout\)) # (!GLOBAL(\Mux26~1clkctrl_outclk\) & ((\outx[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~3_combout\,
	datac => \outx[0]$latch~combout\,
	datad => \Mux26~1clkctrl_outclk\,
	combout => \outx[0]$latch~combout\);

-- Location: LCCOMB_X26_Y18_N26
\Mux27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~1_combout\ = (!\inx[2]~input_o\ & (!\inx[3]~input_o\ & !\inx[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inx[2]~input_o\,
	datac => \inx[3]~input_o\,
	datad => \inx[1]~input_o\,
	combout => \Mux27~1_combout\);

-- Location: LCCOMB_X26_Y18_N0
\Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (!\mode[1]~input_o\ & (\inx[1]~input_o\ $ (((\inx[2]~input_o\ & !\mode[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inx[1]~input_o\,
	datab => \inx[2]~input_o\,
	datac => \mode[2]~input_o\,
	datad => \mode[1]~input_o\,
	combout => \Mux27~0_combout\);

-- Location: LCCOMB_X26_Y18_N4
\Mux27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~2_combout\ = (\mode[0]~input_o\ & (\Mux27~1_combout\ & ((\inx[0]~input_o\)))) # (!\mode[0]~input_o\ & (((\Mux27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~1_combout\,
	datab => \Mux27~0_combout\,
	datac => \inx[0]~input_o\,
	datad => \mode[0]~input_o\,
	combout => \Mux27~2_combout\);

-- Location: LCCOMB_X26_Y18_N14
\outx[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \outx[1]$latch~combout\ = (GLOBAL(\Mux26~1clkctrl_outclk\) & (\Mux27~2_combout\)) # (!GLOBAL(\Mux26~1clkctrl_outclk\) & ((\outx[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~2_combout\,
	datac => \outx[1]$latch~combout\,
	datad => \Mux26~1clkctrl_outclk\,
	combout => \outx[1]$latch~combout\);

-- Location: LCCOMB_X30_Y11_N10
\Mux21~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~4_combout\ = (\mode[0]~input_o\ & (!\inx[3]~input_o\ & !\inx[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode[0]~input_o\,
	datac => \inx[3]~input_o\,
	datad => \inx[2]~input_o\,
	combout => \Mux21~4_combout\);

-- Location: LCCOMB_X30_Y11_N24
\Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux32~0_combout\ = (!\mode[2]~input_o\ & ((\inx[2]~input_o\) # (\inx[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inx[2]~input_o\,
	datac => \inx[3]~input_o\,
	datad => \mode[2]~input_o\,
	combout => \Mux32~0_combout\);

-- Location: LCCOMB_X30_Y11_N20
\Mux27~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~3_combout\ = (\inx[1]~input_o\ & \mode[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inx[1]~input_o\,
	datad => \mode[2]~input_o\,
	combout => \Mux27~3_combout\);

-- Location: LCCOMB_X30_Y11_N6
\Mux32~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux32~1_combout\ = (\Mux32~0_combout\) # ((\Mux21~4_combout\ & (!\inx[0]~input_o\ & \Mux27~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~4_combout\,
	datab => \Mux32~0_combout\,
	datac => \inx[0]~input_o\,
	datad => \Mux27~3_combout\,
	combout => \Mux32~1_combout\);

-- Location: LCCOMB_X30_Y11_N0
\outx[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \outx[2]$latch~combout\ = (GLOBAL(\Mux26~1clkctrl_outclk\) & (\Mux32~1_combout\)) # (!GLOBAL(\Mux26~1clkctrl_outclk\) & ((\outx[2]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux32~1_combout\,
	datab => \outx[2]$latch~combout\,
	datad => \Mux26~1clkctrl_outclk\,
	combout => \outx[2]$latch~combout\);

-- Location: LCCOMB_X30_Y11_N2
\Mux34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux34~0_combout\ = (\inx[3]~input_o\ & !\mode[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inx[3]~input_o\,
	datad => \mode[2]~input_o\,
	combout => \Mux34~0_combout\);

-- Location: LCCOMB_X30_Y11_N28
\Mux34~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux34~1_combout\ = (\Mux34~0_combout\) # ((\Mux21~4_combout\ & (\inx[0]~input_o\ & \Mux27~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~4_combout\,
	datab => \Mux34~0_combout\,
	datac => \inx[0]~input_o\,
	datad => \Mux27~3_combout\,
	combout => \Mux34~1_combout\);

-- Location: LCCOMB_X30_Y11_N8
\outx[3]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \outx[3]$latch~combout\ = (GLOBAL(\Mux26~1clkctrl_outclk\) & (\Mux34~1_combout\)) # (!GLOBAL(\Mux26~1clkctrl_outclk\) & ((\outx[3]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux34~1_combout\,
	datac => \outx[3]$latch~combout\,
	datad => \Mux26~1clkctrl_outclk\,
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


