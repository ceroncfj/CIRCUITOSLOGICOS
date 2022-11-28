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

-- DATE "11/27/2022 20:11:02"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	practica4 IS
    PORT (
	A : IN std_logic_vector(2 DOWNTO 0);
	B : IN std_logic_vector(2 DOWNTO 0);
	C : OUT std_logic_vector(2 DOWNTO 0);
	mode : IN std_logic;
	sel : IN std_logic_vector(2 DOWNTO 0);
	seg : OUT std_logic_vector(7 DOWNTO 0)
	);
END practica4;

-- Design Ports Information
-- C[0]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[1]	=>  Location: PIN_1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[2]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[0]	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[1]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[2]	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[3]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[4]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[5]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[6]	=>  Location: PIN_3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[7]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[2]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[1]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[0]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mode	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF practica4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_C : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_mode : std_logic;
SIGNAL ww_sel : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_seg : std_logic_vector(7 DOWNTO 0);
SIGNAL \result[1]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mode~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \C[0]~output_o\ : std_logic;
SIGNAL \C[1]~output_o\ : std_logic;
SIGNAL \C[2]~output_o\ : std_logic;
SIGNAL \seg[0]~output_o\ : std_logic;
SIGNAL \seg[1]~output_o\ : std_logic;
SIGNAL \seg[2]~output_o\ : std_logic;
SIGNAL \seg[3]~output_o\ : std_logic;
SIGNAL \seg[4]~output_o\ : std_logic;
SIGNAL \seg[5]~output_o\ : std_logic;
SIGNAL \seg[6]~output_o\ : std_logic;
SIGNAL \seg[7]~output_o\ : std_logic;
SIGNAL \mode~input_o\ : std_logic;
SIGNAL \mode~inputclkctrl_outclk\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \sel[0]~input_o\ : std_logic;
SIGNAL \sel[1]~input_o\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \sel[2]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[0][0]~combout\ : std_logic;
SIGNAL \result[1]~0_combout\ : std_logic;
SIGNAL \result[1]~0clkctrl_outclk\ : std_logic;
SIGNAL \Mux7~5_combout\ : std_logic;
SIGNAL \C[0]$latch~combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Mux6~7_combout\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[0][1]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[1][0]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux6~5_combout\ : std_logic;
SIGNAL \Mux6~6_combout\ : std_logic;
SIGNAL \C[1]$latch~combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[0][2]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[1][1]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[2][0]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \C[2]$latch~combout\ : std_logic;
SIGNAL \Add0|auto_generated|_~1_combout\ : std_logic;
SIGNAL \Add0|auto_generated|_~2_combout\ : std_logic;
SIGNAL \Add0|auto_generated|_~0_combout\ : std_logic;
SIGNAL \Add0|auto_generated|result_int[0]~1_cout\ : std_logic;
SIGNAL \Add0|auto_generated|result_int[1]~3\ : std_logic;
SIGNAL \Add0|auto_generated|result_int[2]~5\ : std_logic;
SIGNAL \Add0|auto_generated|result_int[3]~6_combout\ : std_logic;
SIGNAL \Add0|auto_generated|op_1~1_combout\ : std_logic;
SIGNAL \Add0|auto_generated|result_int[1]~2_combout\ : std_logic;
SIGNAL \Add0|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Add0|auto_generated|result_int[2]~4_combout\ : std_logic;
SIGNAL \Add0|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \u1|Mux6~0_combout\ : std_logic;
SIGNAL \u1|Mux5~0_combout\ : std_logic;
SIGNAL \u1|Mux4~0_combout\ : std_logic;
SIGNAL \u1|Mux3~0_combout\ : std_logic;
SIGNAL \u1|Mux2~0_combout\ : std_logic;
SIGNAL \u1|Mux1~0_combout\ : std_logic;
SIGNAL \u1|Mux0~0_combout\ : std_logic;
SIGNAL sumres : std_logic_vector(2 DOWNTO 0);
SIGNAL result : std_logic_vector(5 DOWNTO 0);

BEGIN

ww_A <= A;
ww_B <= B;
C <= ww_C;
ww_mode <= mode;
ww_sel <= sel;
seg <= ww_seg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\result[1]~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \result[1]~0_combout\);

\mode~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \mode~input_o\);

-- Location: IOOBUF_X5_Y0_N23
\C[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C[0]$latch~combout\,
	devoe => ww_devoe,
	o => \C[0]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\C[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C[1]$latch~combout\,
	devoe => ww_devoe,
	o => \C[1]~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\C[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C[2]$latch~combout\,
	devoe => ww_devoe,
	o => \C[2]~output_o\);

-- Location: IOOBUF_X1_Y24_N9
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

-- Location: IOOBUF_X0_Y6_N23
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

-- Location: IOOBUF_X1_Y24_N2
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

-- Location: IOOBUF_X1_Y0_N16
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

-- Location: IOOBUF_X0_Y6_N16
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

-- Location: IOOBUF_X0_Y5_N16
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

-- Location: IOOBUF_X0_Y23_N16
\seg[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \seg[6]~output_o\);

-- Location: IOOBUF_X28_Y24_N9
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

-- Location: IOIBUF_X0_Y11_N8
\mode~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mode,
	o => \mode~input_o\);

-- Location: CLKCTRL_G2
\mode~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \mode~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \mode~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y9_N8
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X0_Y8_N15
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\sel[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(0),
	o => \sel[0]~input_o\);

-- Location: IOIBUF_X5_Y0_N15
\sel[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(1),
	o => \sel[1]~input_o\);

-- Location: LCCOMB_X5_Y11_N24
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\A[0]~input_o\ & (((\B[0]~input_o\ & !\sel[1]~input_o\)) # (!\sel[0]~input_o\))) # (!\A[0]~input_o\ & (\sel[1]~input_o\ & ((\B[0]~input_o\) # (\sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datac => \sel[0]~input_o\,
	datad => \sel[1]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: IOIBUF_X0_Y18_N15
\sel[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(2),
	o => \sel[2]~input_o\);

-- Location: LCCOMB_X5_Y11_N16
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\B[0]~input_o\ & (\A[0]~input_o\ $ (VCC))) # (!\B[0]~input_o\ & (\A[0]~input_o\ & VCC))
-- \Add0~1\ = CARRY((\B[0]~input_o\ & \A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X5_Y11_N8
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\B[0]~input_o\ & (\A[0]~input_o\ $ (VCC))) # (!\B[0]~input_o\ & ((\A[0]~input_o\) # (GND)))
-- \Add1~1\ = CARRY((\A[0]~input_o\) # (!\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X5_Y11_N22
\Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\sel[0]~input_o\) # ((\sel[1]~input_o\ & ((\Add1~0_combout\))) # (!\sel[1]~input_o\ & (\Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \Add0~0_combout\,
	datac => \Add1~0_combout\,
	datad => \sel[1]~input_o\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X5_Y11_N0
\Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (\Mux7~1_combout\ & (((\sel[1]~input_o\) # (!\B[0]~input_o\)) # (!\sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \sel[1]~input_o\,
	datac => \Mux7~1_combout\,
	datad => \B[0]~input_o\,
	combout => \Mux7~2_combout\);

-- Location: LCCOMB_X5_Y11_N6
\Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (\sel[2]~input_o\ & ((\Mux7~2_combout\))) # (!\sel[2]~input_o\ & (\Mux7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux7~0_combout\,
	datac => \sel[2]~input_o\,
	datad => \Mux7~2_combout\,
	combout => \Mux7~3_combout\);

-- Location: LCCOMB_X5_Y9_N16
\Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = (!\sel[1]~input_o\) # (!\sel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sel[0]~input_o\,
	datad => \sel[1]~input_o\,
	combout => \Mux7~4_combout\);

-- Location: LCCOMB_X5_Y9_N14
\Mult0|mult_core|decoder_node[0][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[0][0]~combout\ = LCELL((\A[0]~input_o\ & \B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Mult0|mult_core|decoder_node[0][0]~combout\);

-- Location: LCCOMB_X1_Y11_N14
\result[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \result[1]~0_combout\ = (\sel[0]~input_o\ & (\sel[2]~input_o\ & (\sel[1]~input_o\ & !\mode~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \sel[2]~input_o\,
	datac => \sel[1]~input_o\,
	datad => \mode~input_o\,
	combout => \result[1]~0_combout\);

-- Location: CLKCTRL_G1
\result[1]~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \result[1]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \result[1]~0clkctrl_outclk\);

-- Location: LCCOMB_X5_Y9_N0
\result[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- result(0) = (GLOBAL(\result[1]~0clkctrl_outclk\) & (\Mult0|mult_core|decoder_node[0][0]~combout\)) # (!GLOBAL(\result[1]~0clkctrl_outclk\) & ((result(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|decoder_node[0][0]~combout\,
	datac => result(0),
	datad => \result[1]~0clkctrl_outclk\,
	combout => result(0));

-- Location: LCCOMB_X5_Y9_N10
\Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~5_combout\ = (\Mux7~3_combout\ & ((\Mux7~4_combout\) # ((result(0)) # (!\sel[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~3_combout\,
	datab => \Mux7~4_combout\,
	datac => \sel[2]~input_o\,
	datad => result(0),
	combout => \Mux7~5_combout\);

-- Location: LCCOMB_X5_Y9_N4
\C[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[0]$latch~combout\ = (GLOBAL(\mode~inputclkctrl_outclk\) & (\C[0]$latch~combout\)) # (!GLOBAL(\mode~inputclkctrl_outclk\) & ((\Mux7~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C[0]$latch~combout\,
	datac => \mode~inputclkctrl_outclk\,
	datad => \Mux7~5_combout\,
	combout => \C[0]$latch~combout\);

-- Location: IOIBUF_X3_Y0_N1
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X0_Y7_N1
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X5_Y11_N18
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\B[1]~input_o\ & ((\A[1]~input_o\ & (\Add0~1\ & VCC)) # (!\A[1]~input_o\ & (!\Add0~1\)))) # (!\B[1]~input_o\ & ((\A[1]~input_o\ & (!\Add0~1\)) # (!\A[1]~input_o\ & ((\Add0~1\) # (GND)))))
-- \Add0~3\ = CARRY((\B[1]~input_o\ & (!\A[1]~input_o\ & !\Add0~1\)) # (!\B[1]~input_o\ & ((!\Add0~1\) # (!\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[1]~input_o\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X5_Y11_N10
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\B[1]~input_o\ & ((\A[1]~input_o\ & (!\Add1~1\)) # (!\A[1]~input_o\ & ((\Add1~1\) # (GND))))) # (!\B[1]~input_o\ & ((\A[1]~input_o\ & (\Add1~1\ & VCC)) # (!\A[1]~input_o\ & (!\Add1~1\))))
-- \Add1~3\ = CARRY((\B[1]~input_o\ & ((!\Add1~1\) # (!\A[1]~input_o\))) # (!\B[1]~input_o\ & (!\A[1]~input_o\ & !\Add1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[1]~input_o\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X1_Y11_N30
\Mux6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~7_combout\ = (\sel[2]~input_o\ & !\sel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sel[2]~input_o\,
	datac => \sel[0]~input_o\,
	combout => \Mux6~7_combout\);

-- Location: LCCOMB_X1_Y11_N6
\Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = \sel[2]~input_o\ $ (((\B[1]~input_o\ & (!\sel[1]~input_o\ & \sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \sel[2]~input_o\,
	datac => \sel[1]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux6~4_combout\);

-- Location: LCCOMB_X1_Y11_N18
\Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (\sel[2]~input_o\ & ((\sel[1]~input_o\ & ((!\sel[0]~input_o\))) # (!\sel[1]~input_o\ & (!\B[1]~input_o\ & \sel[0]~input_o\)))) # (!\sel[2]~input_o\ & (\sel[1]~input_o\ & ((\B[1]~input_o\) # (\sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \sel[2]~input_o\,
	datac => \sel[1]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux6~3_combout\);

-- Location: LCCOMB_X1_Y11_N12
\Mult0|mult_core|decoder_node[0][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[0][1]~combout\ = LCELL((\A[1]~input_o\ & \B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[1]~input_o\,
	datac => \B[0]~input_o\,
	combout => \Mult0|mult_core|decoder_node[0][1]~combout\);

-- Location: LCCOMB_X1_Y11_N20
\Mult0|mult_core|decoder_node[1][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[1][0]~combout\ = LCELL((\B[1]~input_o\ & \A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datad => \A[0]~input_o\,
	combout => \Mult0|mult_core|decoder_node[1][0]~combout\);

-- Location: LCCOMB_X1_Y11_N22
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ = (\Mult0|mult_core|decoder_node[0][1]~combout\ & (\Mult0|mult_core|decoder_node[1][0]~combout\ $ (VCC))) # (!\Mult0|mult_core|decoder_node[0][1]~combout\ & 
-- (\Mult0|mult_core|decoder_node[1][0]~combout\ & VCC))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ = CARRY((\Mult0|mult_core|decoder_node[0][1]~combout\ & \Mult0|mult_core|decoder_node[1][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|decoder_node[0][1]~combout\,
	datab => \Mult0|mult_core|decoder_node[1][0]~combout\,
	datad => VCC,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\);

-- Location: LCCOMB_X1_Y11_N2
\result[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- result(1) = (GLOBAL(\result[1]~0clkctrl_outclk\) & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\)) # (!GLOBAL(\result[1]~0clkctrl_outclk\) & ((result(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	datac => result(1),
	datad => \result[1]~0clkctrl_outclk\,
	combout => result(1));

-- Location: LCCOMB_X1_Y11_N0
\Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\sel[2]~input_o\ & ((result(1)))) # (!\sel[2]~input_o\ & (\A[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sel[2]~input_o\,
	datac => \A[1]~input_o\,
	datad => result(1),
	combout => \Mux6~2_combout\);

-- Location: LCCOMB_X1_Y11_N16
\Mux6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~5_combout\ = (\Mux6~2_combout\ & ((\Mux6~4_combout\ & ((\Mux6~3_combout\) # (\sel[0]~input_o\))) # (!\Mux6~4_combout\ & ((!\sel[0]~input_o\))))) # (!\Mux6~2_combout\ & (((\Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~4_combout\,
	datab => \Mux6~3_combout\,
	datac => \sel[0]~input_o\,
	datad => \Mux6~2_combout\,
	combout => \Mux6~5_combout\);

-- Location: LCCOMB_X1_Y11_N28
\Mux6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~6_combout\ = (\Mux6~7_combout\ & ((\Mux6~5_combout\ & ((\Add1~2_combout\))) # (!\Mux6~5_combout\ & (\Add0~2_combout\)))) # (!\Mux6~7_combout\ & (((\Mux6~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \Add1~2_combout\,
	datac => \Mux6~7_combout\,
	datad => \Mux6~5_combout\,
	combout => \Mux6~6_combout\);

-- Location: LCCOMB_X1_Y11_N10
\C[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[1]$latch~combout\ = (GLOBAL(\mode~inputclkctrl_outclk\) & (\C[1]$latch~combout\)) # (!GLOBAL(\mode~inputclkctrl_outclk\) & ((\Mux6~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[1]$latch~combout\,
	datac => \mode~inputclkctrl_outclk\,
	datad => \Mux6~6_combout\,
	combout => \C[1]$latch~combout\);

-- Location: IOIBUF_X0_Y18_N22
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X5_Y24_N8
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X5_Y11_N20
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = \A[2]~input_o\ $ (\B[2]~input_o\ $ (!\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	cin => \Add0~3\,
	combout => \Add0~4_combout\);

-- Location: LCCOMB_X5_Y11_N12
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = \A[2]~input_o\ $ (\B[2]~input_o\ $ (\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	cin => \Add1~3\,
	combout => \Add1~4_combout\);

-- Location: LCCOMB_X5_Y11_N14
\Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\sel[0]~input_o\) # ((\sel[1]~input_o\ & ((\Add1~4_combout\))) # (!\sel[1]~input_o\ & (\Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \Add0~4_combout\,
	datac => \sel[0]~input_o\,
	datad => \Add1~4_combout\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X5_Y11_N4
\Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\Mux5~1_combout\ & (((\sel[1]~input_o\) # (!\B[2]~input_o\)) # (!\sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \Mux5~1_combout\,
	datac => \B[2]~input_o\,
	datad => \sel[1]~input_o\,
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X5_Y11_N2
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\A[2]~input_o\ & (((\B[2]~input_o\ & !\sel[1]~input_o\)) # (!\sel[0]~input_o\))) # (!\A[2]~input_o\ & (\sel[1]~input_o\ & ((\B[2]~input_o\) # (\sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datac => \sel[0]~input_o\,
	datad => \sel[1]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X5_Y11_N30
\Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (\sel[2]~input_o\ & (\Mux5~2_combout\)) # (!\sel[2]~input_o\ & ((\Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux5~2_combout\,
	datac => \sel[2]~input_o\,
	datad => \Mux5~0_combout\,
	combout => \Mux5~3_combout\);

-- Location: LCCOMB_X1_Y11_N4
\Mult0|mult_core|decoder_node[0][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[0][2]~combout\ = LCELL((\B[0]~input_o\ & \A[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[0]~input_o\,
	datad => \A[2]~input_o\,
	combout => \Mult0|mult_core|decoder_node[0][2]~combout\);

-- Location: LCCOMB_X1_Y11_N8
\Mult0|mult_core|decoder_node[1][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[1][1]~combout\ = LCELL((\A[1]~input_o\ & \B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[1]~input_o\,
	datac => \B[1]~input_o\,
	combout => \Mult0|mult_core|decoder_node[1][1]~combout\);

-- Location: LCCOMB_X1_Y11_N24
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ = \Mult0|mult_core|decoder_node[0][2]~combout\ $ (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ $ (\Mult0|mult_core|decoder_node[1][1]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|decoder_node[0][2]~combout\,
	datad => \Mult0|mult_core|decoder_node[1][1]~combout\,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\);

-- Location: LCCOMB_X5_Y11_N26
\Mult0|mult_core|decoder_node[2][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[2][0]~combout\ = LCELL((\B[2]~input_o\ & \A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[2]~input_o\,
	datad => \A[0]~input_o\,
	combout => \Mult0|mult_core|decoder_node[2][0]~combout\);

-- Location: LCCOMB_X4_Y11_N20
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ = \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ $ (\Mult0|mult_core|decoder_node[2][0]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	datad => \Mult0|mult_core|decoder_node[2][0]~combout\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\);

-- Location: LCCOMB_X5_Y9_N2
\result[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- result(2) = (GLOBAL(\result[1]~0clkctrl_outclk\) & (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\)) # (!GLOBAL(\result[1]~0clkctrl_outclk\) & ((result(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\,
	datac => result(2),
	datad => \result[1]~0clkctrl_outclk\,
	combout => result(2));

-- Location: LCCOMB_X5_Y9_N28
\Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = (\Mux5~3_combout\ & ((\Mux7~4_combout\) # ((result(2)) # (!\sel[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~3_combout\,
	datab => \Mux7~4_combout\,
	datac => \sel[2]~input_o\,
	datad => result(2),
	combout => \Mux5~4_combout\);

-- Location: LCCOMB_X5_Y9_N26
\C[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[2]$latch~combout\ = (GLOBAL(\mode~inputclkctrl_outclk\) & (\C[2]$latch~combout\)) # (!GLOBAL(\mode~inputclkctrl_outclk\) & ((\Mux5~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[2]$latch~combout\,
	datac => \mode~inputclkctrl_outclk\,
	datad => \Mux5~4_combout\,
	combout => \C[2]$latch~combout\);

-- Location: LCCOMB_X5_Y11_N28
\Add0|auto_generated|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0|auto_generated|_~1_combout\ = \sel[0]~input_o\ $ (\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datac => \B[2]~input_o\,
	combout => \Add0|auto_generated|_~1_combout\);

-- Location: LCCOMB_X5_Y9_N12
\Add0|auto_generated|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0|auto_generated|_~2_combout\ = \sel[0]~input_o\ $ (\B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sel[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Add0|auto_generated|_~2_combout\);

-- Location: LCCOMB_X3_Y9_N8
\Add0|auto_generated|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0|auto_generated|_~0_combout\ = \sel[0]~input_o\ $ (\B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sel[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Add0|auto_generated|_~0_combout\);

-- Location: LCCOMB_X5_Y9_N18
\Add0|auto_generated|result_int[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0|auto_generated|result_int[0]~1_cout\ = CARRY(\sel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datad => VCC,
	cout => \Add0|auto_generated|result_int[0]~1_cout\);

-- Location: LCCOMB_X5_Y9_N20
\Add0|auto_generated|result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0|auto_generated|result_int[1]~2_combout\ = (\Add0|auto_generated|_~0_combout\ & ((\A[0]~input_o\ & (\Add0|auto_generated|result_int[0]~1_cout\ & VCC)) # (!\A[0]~input_o\ & (!\Add0|auto_generated|result_int[0]~1_cout\)))) # 
-- (!\Add0|auto_generated|_~0_combout\ & ((\A[0]~input_o\ & (!\Add0|auto_generated|result_int[0]~1_cout\)) # (!\A[0]~input_o\ & ((\Add0|auto_generated|result_int[0]~1_cout\) # (GND)))))
-- \Add0|auto_generated|result_int[1]~3\ = CARRY((\Add0|auto_generated|_~0_combout\ & (!\A[0]~input_o\ & !\Add0|auto_generated|result_int[0]~1_cout\)) # (!\Add0|auto_generated|_~0_combout\ & ((!\Add0|auto_generated|result_int[0]~1_cout\) # 
-- (!\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0|auto_generated|_~0_combout\,
	datab => \A[0]~input_o\,
	datad => VCC,
	cin => \Add0|auto_generated|result_int[0]~1_cout\,
	combout => \Add0|auto_generated|result_int[1]~2_combout\,
	cout => \Add0|auto_generated|result_int[1]~3\);

-- Location: LCCOMB_X5_Y9_N22
\Add0|auto_generated|result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0|auto_generated|result_int[2]~4_combout\ = ((\A[1]~input_o\ $ (\Add0|auto_generated|_~2_combout\ $ (!\Add0|auto_generated|result_int[1]~3\)))) # (GND)
-- \Add0|auto_generated|result_int[2]~5\ = CARRY((\A[1]~input_o\ & ((\Add0|auto_generated|_~2_combout\) # (!\Add0|auto_generated|result_int[1]~3\))) # (!\A[1]~input_o\ & (\Add0|auto_generated|_~2_combout\ & !\Add0|auto_generated|result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \Add0|auto_generated|_~2_combout\,
	datad => VCC,
	cin => \Add0|auto_generated|result_int[1]~3\,
	combout => \Add0|auto_generated|result_int[2]~4_combout\,
	cout => \Add0|auto_generated|result_int[2]~5\);

-- Location: LCCOMB_X5_Y9_N24
\Add0|auto_generated|result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0|auto_generated|result_int[3]~6_combout\ = \A[2]~input_o\ $ (\Add0|auto_generated|_~1_combout\ $ (\Add0|auto_generated|result_int[2]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \Add0|auto_generated|_~1_combout\,
	cin => \Add0|auto_generated|result_int[2]~5\,
	combout => \Add0|auto_generated|result_int[3]~6_combout\);

-- Location: LCCOMB_X5_Y9_N6
\Add0|auto_generated|op_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0|auto_generated|op_1~1_combout\ = (!\sel[1]~input_o\ & (!\sel[2]~input_o\ & \Add0|auto_generated|result_int[3]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sel[1]~input_o\,
	datac => \sel[2]~input_o\,
	datad => \Add0|auto_generated|result_int[3]~6_combout\,
	combout => \Add0|auto_generated|op_1~1_combout\);

-- Location: LCCOMB_X2_Y9_N6
\sumres[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- sumres(2) = (GLOBAL(\mode~inputclkctrl_outclk\) & (\Add0|auto_generated|op_1~1_combout\)) # (!GLOBAL(\mode~inputclkctrl_outclk\) & ((sumres(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0|auto_generated|op_1~1_combout\,
	datac => \mode~inputclkctrl_outclk\,
	datad => sumres(2),
	combout => sumres(2));

-- Location: LCCOMB_X5_Y9_N30
\Add0|auto_generated|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0|auto_generated|op_1~0_combout\ = (!\sel[1]~input_o\ & (!\sel[2]~input_o\ & \Add0|auto_generated|result_int[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sel[1]~input_o\,
	datac => \sel[2]~input_o\,
	datad => \Add0|auto_generated|result_int[1]~2_combout\,
	combout => \Add0|auto_generated|op_1~0_combout\);

-- Location: LCCOMB_X2_Y9_N0
\sumres[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- sumres(0) = (GLOBAL(\mode~inputclkctrl_outclk\) & (\Add0|auto_generated|op_1~0_combout\)) # (!GLOBAL(\mode~inputclkctrl_outclk\) & ((sumres(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0|auto_generated|op_1~0_combout\,
	datac => \mode~inputclkctrl_outclk\,
	datad => sumres(0),
	combout => sumres(0));

-- Location: LCCOMB_X5_Y9_N8
\Add0|auto_generated|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0|auto_generated|op_1~2_combout\ = (!\sel[2]~input_o\ & (\Add0|auto_generated|result_int[2]~4_combout\ & !\sel[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datac => \Add0|auto_generated|result_int[2]~4_combout\,
	datad => \sel[1]~input_o\,
	combout => \Add0|auto_generated|op_1~2_combout\);

-- Location: LCCOMB_X2_Y9_N20
\sumres[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- sumres(1) = (GLOBAL(\mode~inputclkctrl_outclk\) & (\Add0|auto_generated|op_1~2_combout\)) # (!GLOBAL(\mode~inputclkctrl_outclk\) & ((sumres(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0|auto_generated|op_1~2_combout\,
	datac => \mode~inputclkctrl_outclk\,
	datad => sumres(1),
	combout => sumres(1));

-- Location: LCCOMB_X2_Y9_N16
\u1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mux6~0_combout\ = (!sumres(1) & (sumres(2) $ (sumres(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sumres(2),
	datab => sumres(0),
	datad => sumres(1),
	combout => \u1|Mux6~0_combout\);

-- Location: LCCOMB_X1_Y9_N20
\u1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mux5~0_combout\ = (sumres(2) & (sumres(1) $ (sumres(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sumres(1),
	datac => sumres(0),
	datad => sumres(2),
	combout => \u1|Mux5~0_combout\);

-- Location: LCCOMB_X2_Y9_N14
\u1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mux4~0_combout\ = (!sumres(2) & (!sumres(0) & sumres(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sumres(2),
	datab => sumres(0),
	datad => sumres(1),
	combout => \u1|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y9_N26
\u1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mux3~0_combout\ = (sumres(1) & (sumres(0) & sumres(2))) # (!sumres(1) & (sumres(0) $ (sumres(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sumres(1),
	datac => sumres(0),
	datad => sumres(2),
	combout => \u1|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y9_N12
\u1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mux2~0_combout\ = (sumres(0)) # ((!sumres(1) & sumres(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sumres(1),
	datac => sumres(0),
	datad => sumres(2),
	combout => \u1|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y9_N18
\u1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mux1~0_combout\ = (sumres(1) & ((sumres(0)) # (!sumres(2)))) # (!sumres(1) & (sumres(0) & !sumres(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sumres(1),
	datac => sumres(0),
	datad => sumres(2),
	combout => \u1|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y9_N8
\u1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mux0~0_combout\ = (sumres(1) & (sumres(0) & sumres(2))) # (!sumres(1) & ((!sumres(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sumres(1),
	datac => sumres(0),
	datad => sumres(2),
	combout => \u1|Mux0~0_combout\);

ww_C(0) <= \C[0]~output_o\;

ww_C(1) <= \C[1]~output_o\;

ww_C(2) <= \C[2]~output_o\;

ww_seg(0) <= \seg[0]~output_o\;

ww_seg(1) <= \seg[1]~output_o\;

ww_seg(2) <= \seg[2]~output_o\;

ww_seg(3) <= \seg[3]~output_o\;

ww_seg(4) <= \seg[4]~output_o\;

ww_seg(5) <= \seg[5]~output_o\;

ww_seg(6) <= \seg[6]~output_o\;

ww_seg(7) <= \seg[7]~output_o\;
END structure;


