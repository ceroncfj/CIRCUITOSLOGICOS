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

-- DATE "10/09/2022 20:25:38"

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
	sel : IN std_logic_vector(2 DOWNTO 0);
	x0 : IN std_logic;
	y0 : IN std_logic;
	z0 : IN std_logic;
	w0 : IN std_logic;
	out1 : OUT std_logic;
	out2 : OUT std_logic
	);
END topLevel;

-- Design Ports Information
-- sel[0]	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[1]	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[2]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x0	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y0	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z0	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w0	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out1	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out2	=>  Location: PIN_2,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_sel : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_x0 : std_logic;
SIGNAL ww_y0 : std_logic;
SIGNAL ww_z0 : std_logic;
SIGNAL ww_w0 : std_logic;
SIGNAL ww_out1 : std_logic;
SIGNAL ww_out2 : std_logic;
SIGNAL \sel[0]~input_o\ : std_logic;
SIGNAL \sel[1]~input_o\ : std_logic;
SIGNAL \sel[2]~input_o\ : std_logic;
SIGNAL \x0~input_o\ : std_logic;
SIGNAL \y0~input_o\ : std_logic;
SIGNAL \z0~input_o\ : std_logic;
SIGNAL \w0~input_o\ : std_logic;
SIGNAL \out1~output_o\ : std_logic;
SIGNAL \out2~output_o\ : std_logic;

BEGIN

ww_sel <= sel;
ww_x0 <= x0;
ww_y0 <= y0;
ww_z0 <= z0;
ww_w0 <= w0;
out1 <= ww_out1;
out2 <= ww_out2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X34_Y9_N2
\out1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out1~output_o\);

-- Location: IOOBUF_X0_Y23_N9
\out2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out2~output_o\);

-- Location: IOIBUF_X0_Y11_N15
\sel[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(0),
	o => \sel[0]~input_o\);

-- Location: IOIBUF_X0_Y11_N22
\sel[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(1),
	o => \sel[1]~input_o\);

-- Location: IOIBUF_X30_Y0_N8
\sel[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(2),
	o => \sel[2]~input_o\);

-- Location: IOIBUF_X0_Y8_N15
\x0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x0,
	o => \x0~input_o\);

-- Location: IOIBUF_X0_Y6_N15
\y0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y0,
	o => \y0~input_o\);

-- Location: IOIBUF_X32_Y0_N22
\z0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_z0,
	o => \z0~input_o\);

-- Location: IOIBUF_X13_Y24_N22
\w0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w0,
	o => \w0~input_o\);

ww_out1 <= \out1~output_o\;

ww_out2 <= \out2~output_o\;
END structure;


