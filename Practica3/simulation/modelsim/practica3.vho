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

-- DATE "11/08/2022 14:20:50"

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
	sel : IN std_logic_vector(1 DOWNTO 0);
	ix1 : IN std_logic_vector(3 DOWNTO 0);
	ix2 : IN std_logic_vector(3 DOWNTO 0);
	ox : OUT std_logic_vector(2 DOWNTO 0);
	seg : OUT std_logic_vector(7 DOWNTO 0);
	dig : OUT std_logic_vector(3 DOWNTO 0)
	);
END practica3;

-- Design Ports Information
-- sel[0]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[1]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ix1[0]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ix1[1]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ix1[2]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ix1[3]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ix2[0]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ix2[1]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ix2[2]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ix2[3]	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ox[0]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ox[1]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ox[2]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[0]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[1]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[2]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[3]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[4]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[5]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[6]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[7]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[0]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[1]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[2]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[3]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_sel : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_ix1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ix2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ox : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_seg : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_dig : std_logic_vector(3 DOWNTO 0);
SIGNAL \sel[0]~input_o\ : std_logic;
SIGNAL \sel[1]~input_o\ : std_logic;
SIGNAL \ix1[0]~input_o\ : std_logic;
SIGNAL \ix1[1]~input_o\ : std_logic;
SIGNAL \ix1[2]~input_o\ : std_logic;
SIGNAL \ix1[3]~input_o\ : std_logic;
SIGNAL \ix2[0]~input_o\ : std_logic;
SIGNAL \ix2[1]~input_o\ : std_logic;
SIGNAL \ix2[2]~input_o\ : std_logic;
SIGNAL \ix2[3]~input_o\ : std_logic;
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

-- Location: IOOBUF_X16_Y0_N9
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

-- Location: IOOBUF_X23_Y24_N9
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

-- Location: IOOBUF_X30_Y24_N23
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

-- Location: IOOBUF_X1_Y0_N16
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

-- Location: IOOBUF_X23_Y0_N16
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

-- Location: IOOBUF_X13_Y0_N2
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

-- Location: IOOBUF_X16_Y0_N2
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

-- Location: IOOBUF_X18_Y24_N23
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

-- Location: IOOBUF_X16_Y24_N16
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

-- Location: IOOBUF_X34_Y19_N16
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

-- Location: IOOBUF_X7_Y0_N2
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

-- Location: IOOBUF_X28_Y24_N9
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

-- Location: IOOBUF_X0_Y8_N16
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

-- Location: IOOBUF_X0_Y7_N2
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

-- Location: IOOBUF_X13_Y0_N16
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

-- Location: IOIBUF_X30_Y24_N1
\sel[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(0),
	o => \sel[0]~input_o\);

-- Location: IOIBUF_X13_Y24_N22
\sel[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(1),
	o => \sel[1]~input_o\);

-- Location: IOIBUF_X34_Y2_N15
\ix1[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ix1(0),
	o => \ix1[0]~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\ix1[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ix1(1),
	o => \ix1[1]~input_o\);

-- Location: IOIBUF_X30_Y0_N8
\ix1[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ix1(2),
	o => \ix1[2]~input_o\);

-- Location: IOIBUF_X11_Y24_N15
\ix1[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ix1(3),
	o => \ix1[3]~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\ix2[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ix2(0),
	o => \ix2[0]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\ix2[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ix2(1),
	o => \ix2[1]~input_o\);

-- Location: IOIBUF_X3_Y24_N22
\ix2[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ix2(2),
	o => \ix2[2]~input_o\);

-- Location: IOIBUF_X1_Y24_N1
\ix2[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ix2(3),
	o => \ix2[3]~input_o\);

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


