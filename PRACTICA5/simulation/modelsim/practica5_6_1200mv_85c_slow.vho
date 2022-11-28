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

-- DATE "11/27/2022 22:07:39"

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

ENTITY 	practica5 IS
    PORT (
	clk : IN std_logic;
	outx : OUT std_logic_vector(7 DOWNTO 0)
	);
END practica5;

-- Design Ports Information
-- clk	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outx[0]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outx[1]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outx[2]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outx[3]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outx[4]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outx[5]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outx[6]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outx[7]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF practica5 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_outx : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \outx[0]~output_o\ : std_logic;
SIGNAL \outx[1]~output_o\ : std_logic;
SIGNAL \outx[2]~output_o\ : std_logic;
SIGNAL \outx[3]~output_o\ : std_logic;
SIGNAL \outx[4]~output_o\ : std_logic;
SIGNAL \outx[5]~output_o\ : std_logic;
SIGNAL \outx[6]~output_o\ : std_logic;
SIGNAL \outx[7]~output_o\ : std_logic;

BEGIN

ww_clk <= clk;
outx <= ww_outx;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X29_Y31_N9
\outx[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outx[0]~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\outx[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outx[1]~output_o\);

-- Location: IOOBUF_X12_Y31_N9
\outx[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outx[2]~output_o\);

-- Location: IOOBUF_X33_Y28_N9
\outx[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outx[3]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\outx[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outx[4]~output_o\);

-- Location: IOOBUF_X26_Y31_N2
\outx[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outx[5]~output_o\);

-- Location: IOOBUF_X33_Y14_N2
\outx[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outx[6]~output_o\);

-- Location: IOOBUF_X33_Y11_N2
\outx[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outx[7]~output_o\);

-- Location: IOIBUF_X33_Y22_N8
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

ww_outx(0) <= \outx[0]~output_o\;

ww_outx(1) <= \outx[1]~output_o\;

ww_outx(2) <= \outx[2]~output_o\;

ww_outx(3) <= \outx[3]~output_o\;

ww_outx(4) <= \outx[4]~output_o\;

ww_outx(5) <= \outx[5]~output_o\;

ww_outx(6) <= \outx[6]~output_o\;

ww_outx(7) <= \outx[7]~output_o\;
END structure;


