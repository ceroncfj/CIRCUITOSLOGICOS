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

-- DATE "12/02/2022 19:50:00"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	practica5b IS
    PORT (
	clk50M : IN std_logic;
	rout : OUT std_logic_vector(2 DOWNTO 0);
	gout : OUT std_logic_vector(2 DOWNTO 0);
	bout : OUT std_logic_vector(2 DOWNTO 0);
	rin : IN std_logic_vector(2 DOWNTO 0);
	gin : IN std_logic_vector(2 DOWNTO 0);
	bin : IN std_logic_vector(2 DOWNTO 0)
	);
END practica5b;

-- Design Ports Information
-- clk50M	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rout[0]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rout[1]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rout[2]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- gout[0]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- gout[1]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- gout[2]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bout[0]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bout[1]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bout[2]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rin[0]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rin[1]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rin[2]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- gin[0]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- gin[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- gin[2]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bin[0]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bin[1]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bin[2]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF practica5b IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk50M : std_logic;
SIGNAL ww_rout : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_gout : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_bout : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_rin : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_gin : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_bin : std_logic_vector(2 DOWNTO 0);
SIGNAL \clk50M~input_o\ : std_logic;
SIGNAL \rin[0]~input_o\ : std_logic;
SIGNAL \rin[1]~input_o\ : std_logic;
SIGNAL \rin[2]~input_o\ : std_logic;
SIGNAL \gin[0]~input_o\ : std_logic;
SIGNAL \gin[1]~input_o\ : std_logic;
SIGNAL \gin[2]~input_o\ : std_logic;
SIGNAL \bin[0]~input_o\ : std_logic;
SIGNAL \bin[1]~input_o\ : std_logic;
SIGNAL \bin[2]~input_o\ : std_logic;
SIGNAL \rout[0]~output_o\ : std_logic;
SIGNAL \rout[1]~output_o\ : std_logic;
SIGNAL \rout[2]~output_o\ : std_logic;
SIGNAL \gout[0]~output_o\ : std_logic;
SIGNAL \gout[1]~output_o\ : std_logic;
SIGNAL \gout[2]~output_o\ : std_logic;
SIGNAL \bout[0]~output_o\ : std_logic;
SIGNAL \bout[1]~output_o\ : std_logic;
SIGNAL \bout[2]~output_o\ : std_logic;

BEGIN

ww_clk50M <= clk50M;
rout <= ww_rout;
gout <= ww_gout;
bout <= ww_bout;
ww_rin <= rin;
ww_gin <= gin;
ww_bin <= bin;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X33_Y11_N9
\rout[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rout[0]~output_o\);

-- Location: IOOBUF_X31_Y31_N9
\rout[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rout[1]~output_o\);

-- Location: IOOBUF_X33_Y12_N9
\rout[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rout[2]~output_o\);

-- Location: IOOBUF_X29_Y31_N9
\gout[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \gout[0]~output_o\);

-- Location: IOOBUF_X33_Y10_N9
\gout[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \gout[1]~output_o\);

-- Location: IOOBUF_X14_Y31_N2
\gout[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \gout[2]~output_o\);

-- Location: IOOBUF_X8_Y0_N9
\bout[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \bout[0]~output_o\);

-- Location: IOOBUF_X20_Y31_N2
\bout[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \bout[1]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\bout[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \bout[2]~output_o\);

-- Location: IOIBUF_X33_Y16_N8
\clk50M~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk50M,
	o => \clk50M~input_o\);

-- Location: IOIBUF_X33_Y16_N1
\rin[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rin(0),
	o => \rin[0]~input_o\);

-- Location: IOIBUF_X33_Y22_N1
\rin[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rin(1),
	o => \rin[1]~input_o\);

-- Location: IOIBUF_X33_Y12_N1
\rin[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rin(2),
	o => \rin[2]~input_o\);

-- Location: IOIBUF_X33_Y15_N8
\gin[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_gin(0),
	o => \gin[0]~input_o\);

-- Location: IOIBUF_X26_Y31_N1
\gin[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_gin(1),
	o => \gin[1]~input_o\);

-- Location: IOIBUF_X33_Y24_N1
\gin[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_gin(2),
	o => \gin[2]~input_o\);

-- Location: IOIBUF_X33_Y27_N8
\bin[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bin(0),
	o => \bin[0]~input_o\);

-- Location: IOIBUF_X33_Y28_N1
\bin[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bin(1),
	o => \bin[1]~input_o\);

-- Location: IOIBUF_X29_Y0_N1
\bin[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bin(2),
	o => \bin[2]~input_o\);

ww_rout(0) <= \rout[0]~output_o\;

ww_rout(1) <= \rout[1]~output_o\;

ww_rout(2) <= \rout[2]~output_o\;

ww_gout(0) <= \gout[0]~output_o\;

ww_gout(1) <= \gout[1]~output_o\;

ww_gout(2) <= \gout[2]~output_o\;

ww_bout(0) <= \bout[0]~output_o\;

ww_bout(1) <= \bout[1]~output_o\;

ww_bout(2) <= \bout[2]~output_o\;
END structure;


