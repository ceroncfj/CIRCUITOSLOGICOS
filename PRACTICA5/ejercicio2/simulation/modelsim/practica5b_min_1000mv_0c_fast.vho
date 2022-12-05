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

-- DATE "12/04/2022 23:29:54"

-- 
-- Device: Altera EP4CE6E22C8L Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	practica5b IS
    PORT (
	clk50M : IN std_logic;
	rout : BUFFER std_logic;
	gout : BUFFER std_logic;
	bout : BUFFER std_logic;
	rin : IN std_logic_vector(2 DOWNTO 0);
	gin : IN std_logic_vector(2 DOWNTO 0);
	bin : IN std_logic_vector(2 DOWNTO 0)
	);
END practica5b;

-- Design Ports Information
-- rout	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- gout	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bout	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rin[2]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rin[1]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rin[0]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk50M	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- gin[2]	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- gin[1]	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- gin[0]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bin[2]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bin[1]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bin[0]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_rout : std_logic;
SIGNAL ww_gout : std_logic;
SIGNAL ww_bout : std_logic;
SIGNAL ww_rin : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_gin : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_bin : std_logic_vector(2 DOWNTO 0);
SIGNAL \clk50M~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rout~output_o\ : std_logic;
SIGNAL \gout~output_o\ : std_logic;
SIGNAL \bout~output_o\ : std_logic;
SIGNAL \clk50M~input_o\ : std_logic;
SIGNAL \clk50M~inputclkctrl_outclk\ : std_logic;
SIGNAL \r|Add0~0_combout\ : std_logic;
SIGNAL \rin[2]~input_o\ : std_logic;
SIGNAL \rin[1]~input_o\ : std_logic;
SIGNAL \r|Add0~11\ : std_logic;
SIGNAL \r|Add0~12_combout\ : std_logic;
SIGNAL \r|Add0~13\ : std_logic;
SIGNAL \r|Add0~14_combout\ : std_logic;
SIGNAL \r|Add0~15\ : std_logic;
SIGNAL \r|Add0~16_combout\ : std_logic;
SIGNAL \r|contador~5_combout\ : std_logic;
SIGNAL \r|Add0~17\ : std_logic;
SIGNAL \r|Add0~18_combout\ : std_logic;
SIGNAL \r|Add0~19\ : std_logic;
SIGNAL \r|Add0~20_combout\ : std_logic;
SIGNAL \r|Add0~21\ : std_logic;
SIGNAL \r|Add0~22_combout\ : std_logic;
SIGNAL \r|Add0~23\ : std_logic;
SIGNAL \r|Add0~24_combout\ : std_logic;
SIGNAL \r|Add0~25\ : std_logic;
SIGNAL \r|Add0~26_combout\ : std_logic;
SIGNAL \r|contador~4_combout\ : std_logic;
SIGNAL \r|Add0~27\ : std_logic;
SIGNAL \r|Add0~28_combout\ : std_logic;
SIGNAL \r|Add0~29\ : std_logic;
SIGNAL \r|Add0~30_combout\ : std_logic;
SIGNAL \r|contador~3_combout\ : std_logic;
SIGNAL \r|Add0~31\ : std_logic;
SIGNAL \r|Add0~32_combout\ : std_logic;
SIGNAL \r|contador~2_combout\ : std_logic;
SIGNAL \r|Add0~33\ : std_logic;
SIGNAL \r|Add0~34_combout\ : std_logic;
SIGNAL \r|contador~1_combout\ : std_logic;
SIGNAL \rin[0]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \r|LessThan0~2_combout\ : std_logic;
SIGNAL \r|LessThan0~3_combout\ : std_logic;
SIGNAL \r|LessThan0~4_combout\ : std_logic;
SIGNAL \r|LessThan0~5_combout\ : std_logic;
SIGNAL \r|LessThan0~16_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \r|LessThan0~17_combout\ : std_logic;
SIGNAL \r|LessThan0~18_combout\ : std_logic;
SIGNAL \r|LessThan0~9_combout\ : std_logic;
SIGNAL \r|LessThan0~10_combout\ : std_logic;
SIGNAL \r|LessThan0~11_combout\ : std_logic;
SIGNAL \r|LessThan0~6_combout\ : std_logic;
SIGNAL \r|LessThan0~7_combout\ : std_logic;
SIGNAL \r|LessThan0~8_combout\ : std_logic;
SIGNAL \r|LessThan0~13_combout\ : std_logic;
SIGNAL \r|LessThan0~12_combout\ : std_logic;
SIGNAL \r|LessThan0~14_combout\ : std_logic;
SIGNAL \r|LessThan0~15_combout\ : std_logic;
SIGNAL \r|LessThan0~19_combout\ : std_logic;
SIGNAL \r|LessThan0~21_cout\ : std_logic;
SIGNAL \r|LessThan0~23_cout\ : std_logic;
SIGNAL \r|LessThan0~25_cout\ : std_logic;
SIGNAL \r|LessThan0~27_cout\ : std_logic;
SIGNAL \r|LessThan0~29_cout\ : std_logic;
SIGNAL \r|LessThan0~31_cout\ : std_logic;
SIGNAL \r|LessThan0~33_cout\ : std_logic;
SIGNAL \r|LessThan0~35_cout\ : std_logic;
SIGNAL \r|LessThan0~37_cout\ : std_logic;
SIGNAL \r|LessThan0~38_combout\ : std_logic;
SIGNAL \r|contador~7_combout\ : std_logic;
SIGNAL \r|Add0~1\ : std_logic;
SIGNAL \r|Add0~2_combout\ : std_logic;
SIGNAL \r|Add0~3\ : std_logic;
SIGNAL \r|Add0~4_combout\ : std_logic;
SIGNAL \r|Add0~5\ : std_logic;
SIGNAL \r|Add0~6_combout\ : std_logic;
SIGNAL \r|Add0~7\ : std_logic;
SIGNAL \r|Add0~8_combout\ : std_logic;
SIGNAL \r|Add0~9\ : std_logic;
SIGNAL \r|Add0~10_combout\ : std_logic;
SIGNAL \r|contador~6_combout\ : std_logic;
SIGNAL \r|Equal0~0_combout\ : std_logic;
SIGNAL \r|Equal0~1_combout\ : std_logic;
SIGNAL \r|Equal0~2_combout\ : std_logic;
SIGNAL \r|Equal0~4_combout\ : std_logic;
SIGNAL \r|Equal0~5_combout\ : std_logic;
SIGNAL \r|Equal0~3_combout\ : std_logic;
SIGNAL \r|Equal0~6_combout\ : std_logic;
SIGNAL \r|Add0~35\ : std_logic;
SIGNAL \r|Add0~36_combout\ : std_logic;
SIGNAL \r|contador~0_combout\ : std_logic;
SIGNAL \r|Add0~37\ : std_logic;
SIGNAL \r|Add0~38_combout\ : std_logic;
SIGNAL \r|Add0~39\ : std_logic;
SIGNAL \r|Add0~40_combout\ : std_logic;
SIGNAL \r|Add0~41\ : std_logic;
SIGNAL \r|Add0~42_combout\ : std_logic;
SIGNAL \r|Add0~43\ : std_logic;
SIGNAL \r|Add0~44_combout\ : std_logic;
SIGNAL \r|Add0~45\ : std_logic;
SIGNAL \r|Add0~46_combout\ : std_logic;
SIGNAL \r|LessThan0~0_combout\ : std_logic;
SIGNAL \r|LessThan0~1_combout\ : std_logic;
SIGNAL \r|clkout~0_combout\ : std_logic;
SIGNAL \r|clkout~q\ : std_logic;
SIGNAL \gin[2]~input_o\ : std_logic;
SIGNAL \gin[1]~input_o\ : std_logic;
SIGNAL \g|Add0~23\ : std_logic;
SIGNAL \g|Add0~24_combout\ : std_logic;
SIGNAL \g|Add0~25\ : std_logic;
SIGNAL \g|Add0~26_combout\ : std_logic;
SIGNAL \g|contador~4_combout\ : std_logic;
SIGNAL \g|Add0~27\ : std_logic;
SIGNAL \g|Add0~28_combout\ : std_logic;
SIGNAL \g|Add0~29\ : std_logic;
SIGNAL \g|Add0~30_combout\ : std_logic;
SIGNAL \g|contador~3_combout\ : std_logic;
SIGNAL \g|Add0~31\ : std_logic;
SIGNAL \g|Add0~32_combout\ : std_logic;
SIGNAL \g|contador~2_combout\ : std_logic;
SIGNAL \g|Add0~33\ : std_logic;
SIGNAL \g|Add0~34_combout\ : std_logic;
SIGNAL \g|contador~1_combout\ : std_logic;
SIGNAL \gin[0]~input_o\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \g|Add0~0_combout\ : std_logic;
SIGNAL \g|contador~7_combout\ : std_logic;
SIGNAL \g|Add0~1\ : std_logic;
SIGNAL \g|Add0~2_combout\ : std_logic;
SIGNAL \g|Add0~3\ : std_logic;
SIGNAL \g|Add0~4_combout\ : std_logic;
SIGNAL \g|Add0~5\ : std_logic;
SIGNAL \g|Add0~6_combout\ : std_logic;
SIGNAL \g|Add0~7\ : std_logic;
SIGNAL \g|Add0~8_combout\ : std_logic;
SIGNAL \g|Add0~9\ : std_logic;
SIGNAL \g|Add0~10_combout\ : std_logic;
SIGNAL \g|contador~6_combout\ : std_logic;
SIGNAL \g|Add0~11\ : std_logic;
SIGNAL \g|Add0~12_combout\ : std_logic;
SIGNAL \g|Add0~13\ : std_logic;
SIGNAL \g|Add0~14_combout\ : std_logic;
SIGNAL \g|LessThan0~2_combout\ : std_logic;
SIGNAL \g|LessThan0~3_combout\ : std_logic;
SIGNAL \g|LessThan0~4_combout\ : std_logic;
SIGNAL \g|LessThan0~5_combout\ : std_logic;
SIGNAL \g|LessThan0~15_combout\ : std_logic;
SIGNAL \g|LessThan0~14_combout\ : std_logic;
SIGNAL \g|LessThan0~16_combout\ : std_logic;
SIGNAL \g|LessThan0~17_combout\ : std_logic;
SIGNAL \g|LessThan0~12_combout\ : std_logic;
SIGNAL \g|LessThan0~6_combout\ : std_logic;
SIGNAL \g|LessThan0~7_combout\ : std_logic;
SIGNAL \g|LessThan0~8_combout\ : std_logic;
SIGNAL \g|LessThan0~10_combout\ : std_logic;
SIGNAL \g|LessThan0~9_combout\ : std_logic;
SIGNAL \g|LessThan0~11_combout\ : std_logic;
SIGNAL \g|LessThan0~13_combout\ : std_logic;
SIGNAL \g|LessThan0~18_combout\ : std_logic;
SIGNAL \g|LessThan0~20_cout\ : std_logic;
SIGNAL \g|LessThan0~22_cout\ : std_logic;
SIGNAL \g|LessThan0~24_cout\ : std_logic;
SIGNAL \g|LessThan0~26_cout\ : std_logic;
SIGNAL \g|LessThan0~28_cout\ : std_logic;
SIGNAL \g|LessThan0~30_cout\ : std_logic;
SIGNAL \g|LessThan0~32_cout\ : std_logic;
SIGNAL \g|LessThan0~34_cout\ : std_logic;
SIGNAL \g|LessThan0~36_cout\ : std_logic;
SIGNAL \g|LessThan0~37_combout\ : std_logic;
SIGNAL \g|Add0~35\ : std_logic;
SIGNAL \g|Add0~36_combout\ : std_logic;
SIGNAL \g|contador~0_combout\ : std_logic;
SIGNAL \g|Add0~37\ : std_logic;
SIGNAL \g|Add0~38_combout\ : std_logic;
SIGNAL \g|Add0~39\ : std_logic;
SIGNAL \g|Add0~40_combout\ : std_logic;
SIGNAL \g|Add0~41\ : std_logic;
SIGNAL \g|Add0~42_combout\ : std_logic;
SIGNAL \g|Add0~43\ : std_logic;
SIGNAL \g|Add0~44_combout\ : std_logic;
SIGNAL \g|Add0~45\ : std_logic;
SIGNAL \g|Add0~46_combout\ : std_logic;
SIGNAL \g|LessThan0~0_combout\ : std_logic;
SIGNAL \g|LessThan0~1_combout\ : std_logic;
SIGNAL \g|Add0~15\ : std_logic;
SIGNAL \g|Add0~16_combout\ : std_logic;
SIGNAL \g|contador~5_combout\ : std_logic;
SIGNAL \g|Add0~17\ : std_logic;
SIGNAL \g|Add0~18_combout\ : std_logic;
SIGNAL \g|Add0~19\ : std_logic;
SIGNAL \g|Add0~20_combout\ : std_logic;
SIGNAL \g|Add0~21\ : std_logic;
SIGNAL \g|Add0~22_combout\ : std_logic;
SIGNAL \g|Equal0~3_combout\ : std_logic;
SIGNAL \g|Equal0~0_combout\ : std_logic;
SIGNAL \g|Equal0~1_combout\ : std_logic;
SIGNAL \g|Equal0~2_combout\ : std_logic;
SIGNAL \g|Equal0~4_combout\ : std_logic;
SIGNAL \g|Equal0~5_combout\ : std_logic;
SIGNAL \g|Equal0~6_combout\ : std_logic;
SIGNAL \g|clkout~0_combout\ : std_logic;
SIGNAL \g|clkout~q\ : std_logic;
SIGNAL \b|Add0~0_combout\ : std_logic;
SIGNAL \bin[2]~input_o\ : std_logic;
SIGNAL \bin[1]~input_o\ : std_logic;
SIGNAL \b|Add0~3\ : std_logic;
SIGNAL \b|Add0~4_combout\ : std_logic;
SIGNAL \b|Add0~5\ : std_logic;
SIGNAL \b|Add0~6_combout\ : std_logic;
SIGNAL \b|Add0~7\ : std_logic;
SIGNAL \b|Add0~8_combout\ : std_logic;
SIGNAL \b|Add0~9\ : std_logic;
SIGNAL \b|Add0~10_combout\ : std_logic;
SIGNAL \b|contador~6_combout\ : std_logic;
SIGNAL \b|Add0~11\ : std_logic;
SIGNAL \b|Add0~12_combout\ : std_logic;
SIGNAL \b|Add0~13\ : std_logic;
SIGNAL \b|Add0~14_combout\ : std_logic;
SIGNAL \b|Add0~15\ : std_logic;
SIGNAL \b|Add0~16_combout\ : std_logic;
SIGNAL \b|contador~5_combout\ : std_logic;
SIGNAL \b|Add0~17\ : std_logic;
SIGNAL \b|Add0~18_combout\ : std_logic;
SIGNAL \b|Add0~19\ : std_logic;
SIGNAL \b|Add0~20_combout\ : std_logic;
SIGNAL \b|Add0~21\ : std_logic;
SIGNAL \b|Add0~22_combout\ : std_logic;
SIGNAL \b|Add0~23\ : std_logic;
SIGNAL \b|Add0~24_combout\ : std_logic;
SIGNAL \b|Add0~25\ : std_logic;
SIGNAL \b|Add0~26_combout\ : std_logic;
SIGNAL \b|contador~4_combout\ : std_logic;
SIGNAL \b|Add0~27\ : std_logic;
SIGNAL \b|Add0~28_combout\ : std_logic;
SIGNAL \b|Add0~29\ : std_logic;
SIGNAL \b|Add0~30_combout\ : std_logic;
SIGNAL \b|contador~3_combout\ : std_logic;
SIGNAL \b|Add0~31\ : std_logic;
SIGNAL \b|Add0~32_combout\ : std_logic;
SIGNAL \b|contador~2_combout\ : std_logic;
SIGNAL \b|Add0~33\ : std_logic;
SIGNAL \b|Add0~34_combout\ : std_logic;
SIGNAL \b|contador~1_combout\ : std_logic;
SIGNAL \bin[0]~input_o\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \b|LessThan0~4_combout\ : std_logic;
SIGNAL \b|LessThan0~5_combout\ : std_logic;
SIGNAL \b|LessThan0~2_combout\ : std_logic;
SIGNAL \b|LessThan0~3_combout\ : std_logic;
SIGNAL \b|LessThan0~15_combout\ : std_logic;
SIGNAL \b|LessThan0~14_combout\ : std_logic;
SIGNAL \b|LessThan0~16_combout\ : std_logic;
SIGNAL \b|LessThan0~17_combout\ : std_logic;
SIGNAL \b|LessThan0~12_combout\ : std_logic;
SIGNAL \b|LessThan0~6_combout\ : std_logic;
SIGNAL \b|LessThan0~7_combout\ : std_logic;
SIGNAL \b|LessThan0~8_combout\ : std_logic;
SIGNAL \b|LessThan0~10_combout\ : std_logic;
SIGNAL \b|LessThan0~9_combout\ : std_logic;
SIGNAL \b|LessThan0~11_combout\ : std_logic;
SIGNAL \b|LessThan0~13_combout\ : std_logic;
SIGNAL \b|LessThan0~18_combout\ : std_logic;
SIGNAL \b|LessThan0~20_cout\ : std_logic;
SIGNAL \b|LessThan0~22_cout\ : std_logic;
SIGNAL \b|LessThan0~24_cout\ : std_logic;
SIGNAL \b|LessThan0~26_cout\ : std_logic;
SIGNAL \b|LessThan0~28_cout\ : std_logic;
SIGNAL \b|LessThan0~30_cout\ : std_logic;
SIGNAL \b|LessThan0~32_cout\ : std_logic;
SIGNAL \b|LessThan0~34_cout\ : std_logic;
SIGNAL \b|LessThan0~36_cout\ : std_logic;
SIGNAL \b|LessThan0~37_combout\ : std_logic;
SIGNAL \b|contador~7_combout\ : std_logic;
SIGNAL \b|Add0~1\ : std_logic;
SIGNAL \b|Add0~2_combout\ : std_logic;
SIGNAL \b|Equal0~1_combout\ : std_logic;
SIGNAL \b|Equal0~0_combout\ : std_logic;
SIGNAL \b|Equal0~2_combout\ : std_logic;
SIGNAL \b|Equal0~3_combout\ : std_logic;
SIGNAL \b|Equal0~4_combout\ : std_logic;
SIGNAL \b|Equal0~5_combout\ : std_logic;
SIGNAL \b|Equal0~6_combout\ : std_logic;
SIGNAL \b|Add0~35\ : std_logic;
SIGNAL \b|Add0~36_combout\ : std_logic;
SIGNAL \b|contador~0_combout\ : std_logic;
SIGNAL \b|Add0~37\ : std_logic;
SIGNAL \b|Add0~38_combout\ : std_logic;
SIGNAL \b|Add0~39\ : std_logic;
SIGNAL \b|Add0~40_combout\ : std_logic;
SIGNAL \b|Add0~41\ : std_logic;
SIGNAL \b|Add0~42_combout\ : std_logic;
SIGNAL \b|Add0~43\ : std_logic;
SIGNAL \b|Add0~44_combout\ : std_logic;
SIGNAL \b|Add0~45\ : std_logic;
SIGNAL \b|Add0~46_combout\ : std_logic;
SIGNAL \b|LessThan0~0_combout\ : std_logic;
SIGNAL \b|LessThan0~1_combout\ : std_logic;
SIGNAL \b|clkout~0_combout\ : std_logic;
SIGNAL \b|clkout~q\ : std_logic;
SIGNAL \g|contador\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \b|contador\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \r|contador\ : std_logic_vector(23 DOWNTO 0);

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

\clk50M~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk50M~input_o\);

-- Location: IOOBUF_X34_Y2_N16
\rout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r|clkout~q\,
	devoe => ww_devoe,
	o => \rout~output_o\);

-- Location: IOOBUF_X34_Y4_N23
\gout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g|clkout~q\,
	devoe => ww_devoe,
	o => \gout~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\bout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b|clkout~q\,
	devoe => ww_devoe,
	o => \bout~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk50M~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk50M,
	o => \clk50M~input_o\);

-- Location: CLKCTRL_G2
\clk50M~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk50M~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk50M~inputclkctrl_outclk\);

-- Location: LCCOMB_X17_Y3_N8
\r|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|Add0~0_combout\ = \r|contador\(0) $ (VCC)
-- \r|Add0~1\ = CARRY(\r|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r|contador\(0),
	datad => VCC,
	combout => \r|Add0~0_combout\,
	cout => \r|Add0~1\);

-- Location: IOIBUF_X30_Y0_N22
\rin[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rin(2),
	o => \rin[2]~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\rin[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rin(1),
	o => \rin[1]~input_o\);

-- Location: LCCOMB_X17_Y3_N18
\r|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|Add0~10_combout\ = (\r|contador\(5) & (!\r|Add0~9\)) # (!\r|contador\(5) & ((\r|Add0~9\) # (GND)))
-- \r|Add0~11\ = CARRY((!\r|Add0~9\) # (!\r|contador\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r|contador\(5),
	datad => VCC,
	cin => \r|Add0~9\,
	combout => \r|Add0~10_combout\,
	cout => \r|Add0~11\);

-- Location: LCCOMB_X17_Y3_N20
\r|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|Add0~12_combout\ = (\r|contador\(6) & (\r|Add0~11\ $ (GND))) # (!\r|contador\(6) & (!\r|Add0~11\ & VCC))
-- \r|Add0~13\ = CARRY((\r|contador\(6) & !\r|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r|contador\(6),
	datad => VCC,
	cin => \r|Add0~11\,
	combout => \r|Add0~12_combout\,
	cout => \r|Add0~13\);

-- Location: FF_X17_Y3_N21
\r|contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \r|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r|contador\(6));

-- Location: LCCOMB_X17_Y3_N22
\r|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|Add0~14_combout\ = (\r|contador\(7) & (!\r|Add0~13\)) # (!\r|contador\(7) & ((\r|Add0~13\) # (GND)))
-- \r|Add0~15\ = CARRY((!\r|Add0~13\) # (!\r|contador\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r|contador\(7),
	datad => VCC,
	cin => \r|Add0~13\,
	combout => \r|Add0~14_combout\,
	cout => \r|Add0~15\);

-- Location: FF_X17_Y3_N23
\r|contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \r|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r|contador\(7));

-- Location: LCCOMB_X17_Y3_N24
\r|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|Add0~16_combout\ = (\r|contador\(8) & (\r|Add0~15\ $ (GND))) # (!\r|contador\(8) & (!\r|Add0~15\ & VCC))
-- \r|Add0~17\ = CARRY((\r|contador\(8) & !\r|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r|contador\(8),
	datad => VCC,
	cin => \r|Add0~15\,
	combout => \r|Add0~16_combout\,
	cout => \r|Add0~17\);

-- Location: LCCOMB_X18_Y1_N24
\r|contador~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|contador~5_combout\ = (\r|Add0~16_combout\ & ((\r|Equal0~6_combout\) # ((\r|LessThan0~1_combout\ & \r|LessThan0~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r|LessThan0~1_combout\,
	datab => \r|Equal0~6_combout\,
	datac => \r|LessThan0~38_combout\,
	datad => \r|Add0~16_combout\,
	combout => \r|contador~5_combout\);

-- Location: FF_X18_Y1_N25
\r|contador[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \r|contador~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r|contador\(8));

-- Location: LCCOMB_X17_Y3_N26
\r|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|Add0~18_combout\ = (\r|contador\(9) & (!\r|Add0~17\)) # (!\r|contador\(9) & ((\r|Add0~17\) # (GND)))
-- \r|Add0~19\ = CARRY((!\r|Add0~17\) # (!\r|contador\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r|contador\(9),
	datad => VCC,
	cin => \r|Add0~17\,
	combout => \r|Add0~18_combout\,
	cout => \r|Add0~19\);

-- Location: FF_X17_Y3_N27
\r|contador[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \r|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r|contador\(9));

-- Location: LCCOMB_X17_Y3_N28
\r|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|Add0~20_combout\ = (\r|contador\(10) & (\r|Add0~19\ $ (GND))) # (!\r|contador\(10) & (!\r|Add0~19\ & VCC))
-- \r|Add0~21\ = CARRY((\r|contador\(10) & !\r|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r|contador\(10),
	datad => VCC,
	cin => \r|Add0~19\,
	combout => \r|Add0~20_combout\,
	cout => \r|Add0~21\);

-- Location: FF_X17_Y3_N29
\r|contador[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \r|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r|contador\(10));

-- Location: LCCOMB_X17_Y3_N30
\r|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|Add0~22_combout\ = (\r|contador\(11) & (!\r|Add0~21\)) # (!\r|contador\(11) & ((\r|Add0~21\) # (GND)))
-- \r|Add0~23\ = CARRY((!\r|Add0~21\) # (!\r|contador\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r|contador\(11),
	datad => VCC,
	cin => \r|Add0~21\,
	combout => \r|Add0~22_combout\,
	cout => \r|Add0~23\);

-- Location: FF_X17_Y3_N31
\r|contador[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \r|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r|contador\(11));

-- Location: LCCOMB_X17_Y2_N0
\r|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|Add0~24_combout\ = (\r|contador\(12) & (\r|Add0~23\ $ (GND))) # (!\r|contador\(12) & (!\r|Add0~23\ & VCC))
-- \r|Add0~25\ = CARRY((\r|contador\(12) & !\r|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r|contador\(12),
	datad => VCC,
	cin => \r|Add0~23\,
	combout => \r|Add0~24_combout\,
	cout => \r|Add0~25\);

-- Location: FF_X17_Y2_N1
\r|contador[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \r|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r|contador\(12));

-- Location: LCCOMB_X17_Y2_N2
\r|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|Add0~26_combout\ = (\r|contador\(13) & (!\r|Add0~25\)) # (!\r|contador\(13) & ((\r|Add0~25\) # (GND)))
-- \r|Add0~27\ = CARRY((!\r|Add0~25\) # (!\r|contador\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r|contador\(13),
	datad => VCC,
	cin => \r|Add0~25\,
	combout => \r|Add0~26_combout\,
	cout => \r|Add0~27\);

-- Location: LCCOMB_X17_Y1_N30
\r|contador~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|contador~4_combout\ = (\r|Add0~26_combout\ & ((\r|Equal0~6_combout\) # ((\r|LessThan0~1_combout\ & \r|LessThan0~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r|Equal0~6_combout\,
	datab => \r|LessThan0~1_combout\,
	datac => \r|LessThan0~38_combout\,
	datad => \r|Add0~26_combout\,
	combout => \r|contador~4_combout\);

-- Location: FF_X17_Y1_N31
\r|contador[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \r|contador~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r|contador\(13));

-- Location: LCCOMB_X17_Y2_N4
\r|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|Add0~28_combout\ = (\r|contador\(14) & (\r|Add0~27\ $ (GND))) # (!\r|contador\(14) & (!\r|Add0~27\ & VCC))
-- \r|Add0~29\ = CARRY((\r|contador\(14) & !\r|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r|contador\(14),
	datad => VCC,
	cin => \r|Add0~27\,
	combout => \r|Add0~28_combout\,
	cout => \r|Add0~29\);

-- Location: FF_X17_Y2_N5
\r|contador[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \r|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r|contador\(14));

-- Location: LCCOMB_X17_Y2_N6
\r|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|Add0~30_combout\ = (\r|contador\(15) & (!\r|Add0~29\)) # (!\r|contador\(15) & ((\r|Add0~29\) # (GND)))
-- \r|Add0~31\ = CARRY((!\r|Add0~29\) # (!\r|contador\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r|contador\(15),
	datad => VCC,
	cin => \r|Add0~29\,
	combout => \r|Add0~30_combout\,
	cout => \r|Add0~31\);

-- Location: LCCOMB_X17_Y1_N0
\r|contador~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|contador~3_combout\ = (\r|Add0~30_combout\ & ((\r|Equal0~6_combout\) # ((\r|LessThan0~1_combout\ & \r|LessThan0~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r|Add0~30_combout\,
	datab => \r|LessThan0~1_combout\,
	datac => \r|LessThan0~38_combout\,
	datad => \r|Equal0~6_combout\,
	combout => \r|contador~3_combout\);

-- Location: FF_X17_Y1_N1
\r|contador[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \r|contador~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r|contador\(15));

-- Location: LCCOMB_X17_Y2_N8
\r|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|Add0~32_combout\ = (\r|contador\(16) & (\r|Add0~31\ $ (GND))) # (!\r|contador\(16) & (!\r|Add0~31\ & VCC))
-- \r|Add0~33\ = CARRY((\r|contador\(16) & !\r|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r|contador\(16),
	datad => VCC,
	cin => \r|Add0~31\,
	combout => \r|Add0~32_combout\,
	cout => \r|Add0~33\);

-- Location: LCCOMB_X17_Y1_N6
\r|contador~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|contador~2_combout\ = (\r|Add0~32_combout\ & ((\r|Equal0~6_combout\) # ((\r|LessThan0~1_combout\ & \r|LessThan0~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r|Equal0~6_combout\,
	datab => \r|LessThan0~1_combout\,
	datac => \r|LessThan0~38_combout\,
	datad => \r|Add0~32_combout\,
	combout => \r|contador~2_combout\);

-- Location: FF_X17_Y1_N7
\r|contador[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \r|contador~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r|contador\(16));

-- Location: LCCOMB_X17_Y2_N10
\r|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|Add0~34_combout\ = (\r|contador\(17) & (!\r|Add0~33\)) # (!\r|contador\(17) & ((\r|Add0~33\) # (GND)))
-- \r|Add0~35\ = CARRY((!\r|Add0~33\) # (!\r|contador\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r|contador\(17),
	datad => VCC,
	cin => \r|Add0~33\,
	combout => \r|Add0~34_combout\,
	cout => \r|Add0~35\);

-- Location: LCCOMB_X17_Y1_N28
\r|contador~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|contador~1_combout\ = (\r|Add0~34_combout\ & ((\r|Equal0~6_combout\) # ((\r|LessThan0~1_combout\ & \r|LessThan0~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r|Equal0~6_combout\,
	datab => \r|LessThan0~1_combout\,
	datac => \r|LessThan0~38_combout\,
	datad => \r|Add0~34_combout\,
	combout => \r|contador~1_combout\);

-- Location: FF_X17_Y1_N29
\r|contador[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \r|contador~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r|contador\(17));

-- Location: IOIBUF_X32_Y0_N15
\rin[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rin(0),
	o => \rin[0]~input_o\);

-- Location: LCCOMB_X16_Y1_N0
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\rin[1]~input_o\) # (\rin[2]~input_o\ $ (\rin[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rin[2]~input_o\,
	datac => \rin[1]~input_o\,
	datad => \rin[0]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X16_Y1_N14
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\rin[2]~input_o\ & (\rin[1]~input_o\)) # (!\rin[2]~input_o\ & (!\rin[1]~input_o\ & !\rin[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rin[2]~input_o\,
	datac => \rin[1]~input_o\,
	datad => \rin[0]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X18_Y1_N8
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\rin[1]~input_o\ & ((\rin[2]~input_o\))) # (!\rin[1]~input_o\ & (\rin[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rin[1]~input_o\,
	datac => \rin[0]~input_o\,
	datad => \rin[2]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X16_Y1_N16
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\rin[1]~input_o\ & !\rin[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rin[1]~input_o\,
	datad => \rin[2]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X16_Y1_N22
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\rin[1]~input_o\ & ((!\rin[0]~input_o\))) # (!\rin[1]~input_o\ & (!\rin[2]~input_o\ & \rin[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rin[2]~input_o\,
	datac => \rin[1]~input_o\,
	datad => \rin[0]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X18_Y1_N10
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\rin[0]~input_o\) # ((!\rin[1]~input_o\ & !\rin[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rin[1]~input_o\,
	datac => \rin[0]~input_o\,
	datad => \rin[2]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X18_Y1_N2
\r|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|LessThan0~2_combout\ = (!\r|contador\(8) & (!\r|contador\(6) & (\rin[1]~input_o\ $ (\rin[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rin[1]~input_o\,
	datab => \r|contador\(8),
	datac => \rin[0]~input_o\,
	datad => \r|contador\(6),
	combout => \r|LessThan0~2_combout\);

-- Location: LCCOMB_X18_Y1_N4
\r|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|LessThan0~3_combout\ = (!\r|contador\(9) & (\r|LessThan0~2_combout\ & (\rin[2]~input_o\ $ (!\r|contador\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rin[2]~input_o\,
	datab => \r|contador\(7),
	datac => \r|contador\(9),
	datad => \r|LessThan0~2_combout\,
	combout => \r|LessThan0~3_combout\);

-- Location: LCCOMB_X16_Y1_N28
\r|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|LessThan0~4_combout\ = (\rin[2]~input_o\ & (((\rin[0]~input_o\ & \rin[1]~input_o\)) # (!\r|contador\(7)))) # (!\rin[2]~input_o\ & (\rin[0]~input_o\ & (\rin[1]~input_o\ & !\r|contador\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rin[2]~input_o\,
	datab => \rin[0]~input_o\,
	datac => \rin[1]~input_o\,
	datad => \r|contador\(7),
	combout => \r|LessThan0~4_combout\);

-- Location: LCCOMB_X16_Y1_N6
\r|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|LessThan0~5_combout\ = (!\r|contador\(9) & (!\r|contador\(8) & \r|LessThan0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r|contador\(9),
	datac => \r|contador\(8),
	datad => \r|LessThan0~4_combout\,
	combout => \r|LessThan0~5_combout\);

-- Location: LCCOMB_X18_Y1_N12
\r|LessThan0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|LessThan0~16_combout\ = \r|contador\(8) $ (((\rin[2]~input_o\ & (\rin[1]~input_o\ & \rin[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rin[2]~input_o\,
	datab => \rin[1]~input_o\,
	datac => \rin[0]~input_o\,
	datad => \r|contador\(8),
	combout => \r|LessThan0~16_combout\);

-- Location: LCCOMB_X18_Y1_N30
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = \rin[2]~input_o\ $ (((\rin[1]~input_o\ & \rin[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rin[1]~input_o\,
	datac => \rin[0]~input_o\,
	datad => \rin[2]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X18_Y1_N6
\r|LessThan0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|LessThan0~17_combout\ = (!\r|LessThan0~16_combout\ & (!\r|contador\(9) & (\Mux7~0_combout\ $ (!\r|contador\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r|LessThan0~16_combout\,
	datab => \Mux7~0_combout\,
	datac => \r|contador\(9),
	datad => \r|contador\(7),
	combout => \r|LessThan0~17_combout\);

-- Location: LCCOMB_X18_Y1_N20
\r|LessThan0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|LessThan0~18_combout\ = (\r|LessThan0~17_combout\ & (\rin[1]~input_o\ $ (\rin[0]~input_o\ $ (!\r|contador\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rin[1]~input_o\,
	datab => \rin[0]~input_o\,
	datac => \r|contador\(6),
	datad => \r|LessThan0~17_combout\,
	combout => \r|LessThan0~18_combout\);

-- Location: LCCOMB_X16_Y1_N12
\r|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|LessThan0~9_combout\ = (\rin[1]~input_o\ & \rin[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rin[1]~input_o\,
	datad => \rin[0]~input_o\,
	combout => \r|LessThan0~9_combout\);

-- Location: LCCOMB_X16_Y1_N30
\r|LessThan0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|LessThan0~10_combout\ = (!\r|contador\(4) & ((\r|LessThan0~9_combout\ & (!\rin[2]~input_o\ & !\r|contador\(5))) # (!\r|LessThan0~9_combout\ & (\rin[2]~input_o\ & \r|contador\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r|LessThan0~9_combout\,
	datab => \rin[2]~input_o\,
	datac => \r|contador\(4),
	datad => \r|contador\(5),
	combout => \r|LessThan0~10_combout\);

-- Location: LCCOMB_X16_Y1_N8
\r|LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|LessThan0~11_combout\ = (!\r|contador\(5) & ((\rin[2]~input_o\) # ((\rin[1]~input_o\ & !\rin[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rin[1]~input_o\,
	datab => \rin[0]~input_o\,
	datac => \rin[2]~input_o\,
	datad => \r|contador\(5),
	combout => \r|LessThan0~11_combout\);

-- Location: LCCOMB_X17_Y3_N0
\r|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|LessThan0~6_combout\ = (\r|contador\(2)) # ((\rin[0]~input_o\ & \r|contador\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rin[0]~input_o\,
	datac => \r|contador\(3),
	datad => \r|contador\(2),
	combout => \r|LessThan0~6_combout\);

-- Location: LCCOMB_X17_Y3_N2
\r|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|LessThan0~7_combout\ = (\rin[2]~input_o\ & (\r|contador\(4) & (\rin[1]~input_o\ $ (!\r|contador\(3))))) # (!\rin[2]~input_o\ & (\rin[1]~input_o\ & (\r|contador\(3) & !\r|contador\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rin[2]~input_o\,
	datab => \rin[1]~input_o\,
	datac => \r|contador\(3),
	datad => \r|contador\(4),
	combout => \r|LessThan0~7_combout\);

-- Location: LCCOMB_X16_Y1_N26
\r|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|LessThan0~8_combout\ = (\r|contador\(5) & (!\r|LessThan0~6_combout\ & \r|LessThan0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r|contador\(5),
	datac => \r|LessThan0~6_combout\,
	datad => \r|LessThan0~7_combout\,
	combout => \r|LessThan0~8_combout\);

-- Location: LCCOMB_X16_Y1_N4
\r|LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|LessThan0~13_combout\ = \r|contador\(5) $ (((\rin[2]~input_o\) # ((\rin[1]~input_o\ & !\rin[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rin[1]~input_o\,
	datab => \rin[0]~input_o\,
	datac => \rin[2]~input_o\,
	datad => \r|contador\(5),
	combout => \r|LessThan0~13_combout\);

-- Location: LCCOMB_X16_Y1_N18
\r|LessThan0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|LessThan0~12_combout\ = \rin[2]~input_o\ $ (\r|contador\(4) $ (((\rin[1]~input_o\ & \rin[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rin[1]~input_o\,
	datab => \rin[2]~input_o\,
	datac => \r|contador\(4),
	datad => \rin[0]~input_o\,
	combout => \r|LessThan0~12_combout\);

-- Location: LCCOMB_X16_Y1_N10
\r|LessThan0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|LessThan0~14_combout\ = (\Mux4~0_combout\ & (!\r|LessThan0~13_combout\ & (!\r|contador\(3) & !\r|LessThan0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~0_combout\,
	datab => \r|LessThan0~13_combout\,
	datac => \r|contador\(3),
	datad => \r|LessThan0~12_combout\,
	combout => \r|LessThan0~14_combout\);

-- Location: LCCOMB_X16_Y1_N24
\r|LessThan0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|LessThan0~15_combout\ = (\r|LessThan0~10_combout\) # ((\r|LessThan0~11_combout\) # ((\r|LessThan0~8_combout\) # (\r|LessThan0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r|LessThan0~10_combout\,
	datab => \r|LessThan0~11_combout\,
	datac => \r|LessThan0~8_combout\,
	datad => \r|LessThan0~14_combout\,
	combout => \r|LessThan0~15_combout\);

-- Location: LCCOMB_X17_Y1_N4
\r|LessThan0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|LessThan0~19_combout\ = (\r|LessThan0~3_combout\) # ((\r|LessThan0~5_combout\) # ((\r|LessThan0~18_combout\ & \r|LessThan0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r|LessThan0~3_combout\,
	datab => \r|LessThan0~5_combout\,
	datac => \r|LessThan0~18_combout\,
	datad => \r|LessThan0~15_combout\,
	combout => \r|LessThan0~19_combout\);

-- Location: LCCOMB_X17_Y1_N8
\r|LessThan0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|LessThan0~21_cout\ = CARRY(\r|LessThan0~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r|LessThan0~19_combout\,
	datad => VCC,
	cout => \r|LessThan0~21_cout\);

-- Location: LCCOMB_X17_Y1_N10
\r|LessThan0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|LessThan0~23_cout\ = CARRY((\r|contador\(10) & ((\Mux5~0_combout\) # (!\r|LessThan0~21_cout\))) # (!\r|contador\(10) & (\Mux5~0_combout\ & !\r|LessThan0~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r|contador\(10),
	datab => \Mux5~0_combout\,
	datad => VCC,
	cin => \r|LessThan0~21_cout\,
	cout => \r|LessThan0~23_cout\);

-- Location: LCCOMB_X17_Y1_N12
\r|LessThan0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|LessThan0~25_cout\ = CARRY((\r|contador\(11) & (\Mux4~0_combout\ & !\r|LessThan0~23_cout\)) # (!\r|contador\(11) & ((\Mux4~0_combout\) # (!\r|LessThan0~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r|contador\(11),
	datab => \Mux4~0_combout\,
	datad => VCC,
	cin => \r|LessThan0~23_cout\,
	cout => \r|LessThan0~25_cout\);

-- Location: LCCOMB_X17_Y1_N14
\r|LessThan0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|LessThan0~27_cout\ = CARRY((\Mux3~0_combout\ & (\r|contador\(12) & !\r|LessThan0~25_cout\)) # (!\Mux3~0_combout\ & ((\r|contador\(12)) # (!\r|LessThan0~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datab => \r|contador\(12),
	datad => VCC,
	cin => \r|LessThan0~25_cout\,
	cout => \r|LessThan0~27_cout\);

-- Location: LCCOMB_X17_Y1_N16
\r|LessThan0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|LessThan0~29_cout\ = CARRY((\r|contador\(13) & (\Mux2~0_combout\ & !\r|LessThan0~27_cout\)) # (!\r|contador\(13) & ((\Mux2~0_combout\) # (!\r|LessThan0~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r|contador\(13),
	datab => \Mux2~0_combout\,
	datad => VCC,
	cin => \r|LessThan0~27_cout\,
	cout => \r|LessThan0~29_cout\);

-- Location: LCCOMB_X17_Y1_N18
\r|LessThan0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|LessThan0~31_cout\ = CARRY((\r|contador\(14) & ((\Mux1~0_combout\) # (!\r|LessThan0~29_cout\))) # (!\r|contador\(14) & (\Mux1~0_combout\ & !\r|LessThan0~29_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r|contador\(14),
	datab => \Mux1~0_combout\,
	datad => VCC,
	cin => \r|LessThan0~29_cout\,
	cout => \r|LessThan0~31_cout\);

-- Location: LCCOMB_X17_Y1_N20
\r|LessThan0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|LessThan0~33_cout\ = CARRY((\Mux0~0_combout\ & ((!\r|LessThan0~31_cout\) # (!\r|contador\(15)))) # (!\Mux0~0_combout\ & (!\r|contador\(15) & !\r|LessThan0~31_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \r|contador\(15),
	datad => VCC,
	cin => \r|LessThan0~31_cout\,
	cout => \r|LessThan0~33_cout\);

-- Location: LCCOMB_X17_Y1_N22
\r|LessThan0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|LessThan0~35_cout\ = CARRY((\r|contador\(16) & ((!\r|LessThan0~33_cout\) # (!\rin[0]~input_o\))) # (!\r|contador\(16) & (!\rin[0]~input_o\ & !\r|LessThan0~33_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r|contador\(16),
	datab => \rin[0]~input_o\,
	datad => VCC,
	cin => \r|LessThan0~33_cout\,
	cout => \r|LessThan0~35_cout\);

-- Location: LCCOMB_X17_Y1_N24
\r|LessThan0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|LessThan0~37_cout\ = CARRY((\rin[1]~input_o\ & ((!\r|LessThan0~35_cout\) # (!\r|contador\(17)))) # (!\rin[1]~input_o\ & (!\r|contador\(17) & !\r|LessThan0~35_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rin[1]~input_o\,
	datab => \r|contador\(17),
	datad => VCC,
	cin => \r|LessThan0~35_cout\,
	cout => \r|LessThan0~37_cout\);

-- Location: LCCOMB_X17_Y1_N26
\r|LessThan0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|LessThan0~38_combout\ = (\rin[2]~input_o\ & ((\r|LessThan0~37_cout\) # (!\r|contador\(18)))) # (!\rin[2]~input_o\ & (\r|LessThan0~37_cout\ & !\r|contador\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rin[2]~input_o\,
	datad => \r|contador\(18),
	cin => \r|LessThan0~37_cout\,
	combout => \r|LessThan0~38_combout\);

-- Location: LCCOMB_X17_Y1_N2
\r|contador~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|contador~7_combout\ = (\r|Add0~0_combout\ & ((\r|Equal0~6_combout\) # ((\r|LessThan0~1_combout\ & \r|LessThan0~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r|Add0~0_combout\,
	datab => \r|LessThan0~1_combout\,
	datac => \r|LessThan0~38_combout\,
	datad => \r|Equal0~6_combout\,
	combout => \r|contador~7_combout\);

-- Location: FF_X17_Y1_N3
\r|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \r|contador~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r|contador\(0));

-- Location: LCCOMB_X17_Y3_N10
\r|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|Add0~2_combout\ = (\r|contador\(1) & (!\r|Add0~1\)) # (!\r|contador\(1) & ((\r|Add0~1\) # (GND)))
-- \r|Add0~3\ = CARRY((!\r|Add0~1\) # (!\r|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r|contador\(1),
	datad => VCC,
	cin => \r|Add0~1\,
	combout => \r|Add0~2_combout\,
	cout => \r|Add0~3\);

-- Location: FF_X17_Y3_N11
\r|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \r|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r|contador\(1));

-- Location: LCCOMB_X17_Y3_N12
\r|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|Add0~4_combout\ = (\r|contador\(2) & (\r|Add0~3\ $ (GND))) # (!\r|contador\(2) & (!\r|Add0~3\ & VCC))
-- \r|Add0~5\ = CARRY((\r|contador\(2) & !\r|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r|contador\(2),
	datad => VCC,
	cin => \r|Add0~3\,
	combout => \r|Add0~4_combout\,
	cout => \r|Add0~5\);

-- Location: FF_X17_Y3_N13
\r|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \r|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r|contador\(2));

-- Location: LCCOMB_X17_Y3_N14
\r|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|Add0~6_combout\ = (\r|contador\(3) & (!\r|Add0~5\)) # (!\r|contador\(3) & ((\r|Add0~5\) # (GND)))
-- \r|Add0~7\ = CARRY((!\r|Add0~5\) # (!\r|contador\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r|contador\(3),
	datad => VCC,
	cin => \r|Add0~5\,
	combout => \r|Add0~6_combout\,
	cout => \r|Add0~7\);

-- Location: FF_X17_Y3_N15
\r|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \r|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r|contador\(3));

-- Location: LCCOMB_X17_Y3_N16
\r|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|Add0~8_combout\ = (\r|contador\(4) & (\r|Add0~7\ $ (GND))) # (!\r|contador\(4) & (!\r|Add0~7\ & VCC))
-- \r|Add0~9\ = CARRY((\r|contador\(4) & !\r|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r|contador\(4),
	datad => VCC,
	cin => \r|Add0~7\,
	combout => \r|Add0~8_combout\,
	cout => \r|Add0~9\);

-- Location: FF_X17_Y3_N17
\r|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \r|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r|contador\(4));

-- Location: LCCOMB_X16_Y1_N20
\r|contador~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|contador~6_combout\ = (\r|Add0~10_combout\ & ((\r|Equal0~6_combout\) # ((\r|LessThan0~1_combout\ & \r|LessThan0~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r|Equal0~6_combout\,
	datab => \r|LessThan0~1_combout\,
	datac => \r|Add0~10_combout\,
	datad => \r|LessThan0~38_combout\,
	combout => \r|contador~6_combout\);

-- Location: FF_X16_Y1_N21
\r|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \r|contador~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r|contador\(5));

-- Location: LCCOMB_X18_Y1_N22
\r|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|Equal0~0_combout\ = ((\r|contador\(9)) # ((\r|contador\(6)) # (\r|contador\(7)))) # (!\r|contador\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r|contador\(5),
	datab => \r|contador\(9),
	datac => \r|contador\(6),
	datad => \r|contador\(7),
	combout => \r|Equal0~0_combout\);

-- Location: LCCOMB_X17_Y3_N4
\r|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|Equal0~1_combout\ = (\r|contador\(1)) # ((\r|contador\(4)) # ((\r|contador\(2)) # (\r|contador\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r|contador\(1),
	datab => \r|contador\(4),
	datac => \r|contador\(2),
	datad => \r|contador\(3),
	combout => \r|Equal0~1_combout\);

-- Location: LCCOMB_X18_Y1_N28
\r|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|Equal0~2_combout\ = (\r|Equal0~0_combout\) # (\r|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r|Equal0~0_combout\,
	datad => \r|Equal0~1_combout\,
	combout => \r|Equal0~2_combout\);

-- Location: LCCOMB_X17_Y2_N28
\r|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|Equal0~4_combout\ = (((\r|contador\(14)) # (\r|contador\(12))) # (!\r|contador\(15))) # (!\r|contador\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r|contador\(13),
	datab => \r|contador\(15),
	datac => \r|contador\(14),
	datad => \r|contador\(12),
	combout => \r|Equal0~4_combout\);

-- Location: LCCOMB_X17_Y2_N30
\r|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|Equal0~5_combout\ = ((\r|Equal0~4_combout\) # ((!\r|contador\(18)) # (!\r|contador\(16)))) # (!\r|contador\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r|contador\(17),
	datab => \r|Equal0~4_combout\,
	datac => \r|contador\(16),
	datad => \r|contador\(18),
	combout => \r|Equal0~5_combout\);

-- Location: LCCOMB_X17_Y3_N6
\r|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|Equal0~3_combout\ = (\r|contador\(11)) # ((\r|contador\(10)) # ((\r|contador\(0)) # (!\r|contador\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r|contador\(11),
	datab => \r|contador\(10),
	datac => \r|contador\(0),
	datad => \r|contador\(8),
	combout => \r|Equal0~3_combout\);

-- Location: LCCOMB_X18_Y1_N14
\r|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|Equal0~6_combout\ = (\r|Equal0~2_combout\) # ((\r|Equal0~5_combout\) # ((\r|Equal0~3_combout\) # (!\r|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r|Equal0~2_combout\,
	datab => \r|Equal0~5_combout\,
	datac => \r|Equal0~3_combout\,
	datad => \r|LessThan0~1_combout\,
	combout => \r|Equal0~6_combout\);

-- Location: LCCOMB_X17_Y2_N12
\r|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|Add0~36_combout\ = (\r|contador\(18) & (\r|Add0~35\ $ (GND))) # (!\r|contador\(18) & (!\r|Add0~35\ & VCC))
-- \r|Add0~37\ = CARRY((\r|contador\(18) & !\r|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r|contador\(18),
	datad => VCC,
	cin => \r|Add0~35\,
	combout => \r|Add0~36_combout\,
	cout => \r|Add0~37\);

-- Location: LCCOMB_X18_Y1_N18
\r|contador~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|contador~0_combout\ = (\r|Add0~36_combout\ & ((\r|Equal0~6_combout\) # ((\r|LessThan0~1_combout\ & \r|LessThan0~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r|LessThan0~1_combout\,
	datab => \r|Equal0~6_combout\,
	datac => \r|LessThan0~38_combout\,
	datad => \r|Add0~36_combout\,
	combout => \r|contador~0_combout\);

-- Location: FF_X18_Y1_N19
\r|contador[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \r|contador~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r|contador\(18));

-- Location: LCCOMB_X17_Y2_N14
\r|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|Add0~38_combout\ = (\r|contador\(19) & (!\r|Add0~37\)) # (!\r|contador\(19) & ((\r|Add0~37\) # (GND)))
-- \r|Add0~39\ = CARRY((!\r|Add0~37\) # (!\r|contador\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r|contador\(19),
	datad => VCC,
	cin => \r|Add0~37\,
	combout => \r|Add0~38_combout\,
	cout => \r|Add0~39\);

-- Location: FF_X17_Y2_N15
\r|contador[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \r|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r|contador\(19));

-- Location: LCCOMB_X17_Y2_N16
\r|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|Add0~40_combout\ = (\r|contador\(20) & (\r|Add0~39\ $ (GND))) # (!\r|contador\(20) & (!\r|Add0~39\ & VCC))
-- \r|Add0~41\ = CARRY((\r|contador\(20) & !\r|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r|contador\(20),
	datad => VCC,
	cin => \r|Add0~39\,
	combout => \r|Add0~40_combout\,
	cout => \r|Add0~41\);

-- Location: FF_X17_Y2_N17
\r|contador[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \r|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r|contador\(20));

-- Location: LCCOMB_X17_Y2_N18
\r|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|Add0~42_combout\ = (\r|contador\(21) & (!\r|Add0~41\)) # (!\r|contador\(21) & ((\r|Add0~41\) # (GND)))
-- \r|Add0~43\ = CARRY((!\r|Add0~41\) # (!\r|contador\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r|contador\(21),
	datad => VCC,
	cin => \r|Add0~41\,
	combout => \r|Add0~42_combout\,
	cout => \r|Add0~43\);

-- Location: FF_X17_Y2_N19
\r|contador[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \r|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r|contador\(21));

-- Location: LCCOMB_X17_Y2_N20
\r|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|Add0~44_combout\ = (\r|contador\(22) & (\r|Add0~43\ $ (GND))) # (!\r|contador\(22) & (!\r|Add0~43\ & VCC))
-- \r|Add0~45\ = CARRY((\r|contador\(22) & !\r|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r|contador\(22),
	datad => VCC,
	cin => \r|Add0~43\,
	combout => \r|Add0~44_combout\,
	cout => \r|Add0~45\);

-- Location: FF_X17_Y2_N21
\r|contador[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \r|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r|contador\(22));

-- Location: LCCOMB_X17_Y2_N22
\r|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|Add0~46_combout\ = \r|contador\(23) $ (\r|Add0~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r|contador\(23),
	cin => \r|Add0~45\,
	combout => \r|Add0~46_combout\);

-- Location: FF_X17_Y2_N23
\r|contador[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \r|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r|contador\(23));

-- Location: LCCOMB_X17_Y2_N24
\r|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|LessThan0~0_combout\ = (!\r|contador\(22) & (!\r|contador\(21) & (!\r|contador\(19) & !\r|contador\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r|contador\(22),
	datab => \r|contador\(21),
	datac => \r|contador\(19),
	datad => \r|contador\(20),
	combout => \r|LessThan0~0_combout\);

-- Location: LCCOMB_X17_Y2_N26
\r|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|LessThan0~1_combout\ = (!\r|contador\(23) & \r|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r|contador\(23),
	datad => \r|LessThan0~0_combout\,
	combout => \r|LessThan0~1_combout\);

-- Location: LCCOMB_X18_Y1_N0
\r|clkout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|clkout~0_combout\ = (\r|LessThan0~1_combout\ & ((\r|LessThan0~38_combout\) # ((!\r|Equal0~6_combout\ & \r|clkout~q\)))) # (!\r|LessThan0~1_combout\ & (!\r|Equal0~6_combout\ & (\r|clkout~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r|LessThan0~1_combout\,
	datab => \r|Equal0~6_combout\,
	datac => \r|clkout~q\,
	datad => \r|LessThan0~38_combout\,
	combout => \r|clkout~0_combout\);

-- Location: FF_X18_Y1_N1
\r|clkout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \r|clkout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r|clkout~q\);

-- Location: IOIBUF_X34_Y2_N22
\gin[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_gin(2),
	o => \gin[2]~input_o\);

-- Location: IOIBUF_X34_Y3_N22
\gin[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_gin(1),
	o => \gin[1]~input_o\);

-- Location: LCCOMB_X21_Y21_N30
\g|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \g|Add0~22_combout\ = (\g|contador\(11) & (!\g|Add0~21\)) # (!\g|contador\(11) & ((\g|Add0~21\) # (GND)))
-- \g|Add0~23\ = CARRY((!\g|Add0~21\) # (!\g|contador\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g|contador\(11),
	datad => VCC,
	cin => \g|Add0~21\,
	combout => \g|Add0~22_combout\,
	cout => \g|Add0~23\);

-- Location: LCCOMB_X21_Y20_N0
\g|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \g|Add0~24_combout\ = (\g|contador\(12) & (\g|Add0~23\ $ (GND))) # (!\g|contador\(12) & (!\g|Add0~23\ & VCC))
-- \g|Add0~25\ = CARRY((\g|contador\(12) & !\g|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g|contador\(12),
	datad => VCC,
	cin => \g|Add0~23\,
	combout => \g|Add0~24_combout\,
	cout => \g|Add0~25\);

-- Location: FF_X21_Y20_N1
\g|contador[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \g|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g|contador\(12));

-- Location: LCCOMB_X21_Y20_N2
\g|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \g|Add0~26_combout\ = (\g|contador\(13) & (!\g|Add0~25\)) # (!\g|contador\(13) & ((\g|Add0~25\) # (GND)))
-- \g|Add0~27\ = CARRY((!\g|Add0~25\) # (!\g|contador\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g|contador\(13),
	datad => VCC,
	cin => \g|Add0~25\,
	combout => \g|Add0~26_combout\,
	cout => \g|Add0~27\);

-- Location: LCCOMB_X24_Y21_N0
\g|contador~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \g|contador~4_combout\ = (\g|Add0~26_combout\ & ((\g|Equal0~6_combout\) # ((\g|LessThan0~1_combout\ & \g|LessThan0~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|Add0~26_combout\,
	datab => \g|LessThan0~1_combout\,
	datac => \g|LessThan0~37_combout\,
	datad => \g|Equal0~6_combout\,
	combout => \g|contador~4_combout\);

-- Location: FF_X24_Y21_N1
\g|contador[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \g|contador~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g|contador\(13));

-- Location: LCCOMB_X21_Y20_N4
\g|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \g|Add0~28_combout\ = (\g|contador\(14) & (\g|Add0~27\ $ (GND))) # (!\g|contador\(14) & (!\g|Add0~27\ & VCC))
-- \g|Add0~29\ = CARRY((\g|contador\(14) & !\g|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g|contador\(14),
	datad => VCC,
	cin => \g|Add0~27\,
	combout => \g|Add0~28_combout\,
	cout => \g|Add0~29\);

-- Location: FF_X21_Y20_N5
\g|contador[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \g|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g|contador\(14));

-- Location: LCCOMB_X21_Y20_N6
\g|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \g|Add0~30_combout\ = (\g|contador\(15) & (!\g|Add0~29\)) # (!\g|contador\(15) & ((\g|Add0~29\) # (GND)))
-- \g|Add0~31\ = CARRY((!\g|Add0~29\) # (!\g|contador\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g|contador\(15),
	datad => VCC,
	cin => \g|Add0~29\,
	combout => \g|Add0~30_combout\,
	cout => \g|Add0~31\);

-- Location: LCCOMB_X24_Y21_N30
\g|contador~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \g|contador~3_combout\ = (\g|Add0~30_combout\ & ((\g|Equal0~6_combout\) # ((\g|LessThan0~1_combout\ & \g|LessThan0~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|Equal0~6_combout\,
	datab => \g|LessThan0~1_combout\,
	datac => \g|LessThan0~37_combout\,
	datad => \g|Add0~30_combout\,
	combout => \g|contador~3_combout\);

-- Location: FF_X24_Y21_N31
\g|contador[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \g|contador~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g|contador\(15));

-- Location: LCCOMB_X21_Y20_N8
\g|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \g|Add0~32_combout\ = (\g|contador\(16) & (\g|Add0~31\ $ (GND))) # (!\g|contador\(16) & (!\g|Add0~31\ & VCC))
-- \g|Add0~33\ = CARRY((\g|contador\(16) & !\g|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g|contador\(16),
	datad => VCC,
	cin => \g|Add0~31\,
	combout => \g|Add0~32_combout\,
	cout => \g|Add0~33\);

-- Location: LCCOMB_X23_Y21_N16
\g|contador~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \g|contador~2_combout\ = (\g|Add0~32_combout\ & ((\g|Equal0~6_combout\) # ((\g|LessThan0~1_combout\ & \g|LessThan0~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|Equal0~6_combout\,
	datab => \g|LessThan0~1_combout\,
	datac => \g|Add0~32_combout\,
	datad => \g|LessThan0~37_combout\,
	combout => \g|contador~2_combout\);

-- Location: FF_X23_Y21_N17
\g|contador[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \g|contador~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g|contador\(16));

-- Location: LCCOMB_X21_Y20_N10
\g|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \g|Add0~34_combout\ = (\g|contador\(17) & (!\g|Add0~33\)) # (!\g|contador\(17) & ((\g|Add0~33\) # (GND)))
-- \g|Add0~35\ = CARRY((!\g|Add0~33\) # (!\g|contador\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g|contador\(17),
	datad => VCC,
	cin => \g|Add0~33\,
	combout => \g|Add0~34_combout\,
	cout => \g|Add0~35\);

-- Location: LCCOMB_X24_Y21_N24
\g|contador~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \g|contador~1_combout\ = (\g|Add0~34_combout\ & ((\g|Equal0~6_combout\) # ((\g|LessThan0~1_combout\ & \g|LessThan0~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|Equal0~6_combout\,
	datab => \g|LessThan0~1_combout\,
	datac => \g|LessThan0~37_combout\,
	datad => \g|Add0~34_combout\,
	combout => \g|contador~1_combout\);

-- Location: FF_X24_Y21_N25
\g|contador[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \g|contador~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g|contador\(17));

-- Location: IOIBUF_X34_Y4_N15
\gin[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_gin(0),
	o => \gin[0]~input_o\);

-- Location: LCCOMB_X23_Y21_N18
\Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\gin[1]~input_o\) # (\gin[0]~input_o\ $ (\gin[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gin[1]~input_o\,
	datab => \gin[0]~input_o\,
	datac => \gin[2]~input_o\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X23_Y21_N0
\Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\gin[1]~input_o\ & ((\gin[2]~input_o\))) # (!\gin[1]~input_o\ & (!\gin[0]~input_o\ & !\gin[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000110100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gin[1]~input_o\,
	datab => \gin[0]~input_o\,
	datac => \gin[2]~input_o\,
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X23_Y21_N22
\Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\gin[1]~input_o\ & ((\gin[2]~input_o\))) # (!\gin[1]~input_o\ & (\gin[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gin[1]~input_o\,
	datab => \gin[0]~input_o\,
	datac => \gin[2]~input_o\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X23_Y21_N20
\Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (\gin[1]~input_o\ & !\gin[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gin[1]~input_o\,
	datac => \gin[2]~input_o\,
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X22_Y21_N4
\Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\gin[0]~input_o\ & (!\gin[1]~input_o\ & !\gin[2]~input_o\)) # (!\gin[0]~input_o\ & (\gin[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gin[0]~input_o\,
	datab => \gin[1]~input_o\,
	datad => \gin[2]~input_o\,
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X23_Y21_N26
\Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\gin[0]~input_o\) # ((!\gin[1]~input_o\ & !\gin[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gin[1]~input_o\,
	datab => \gin[0]~input_o\,
	datac => \gin[2]~input_o\,
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X21_Y21_N8
\g|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \g|Add0~0_combout\ = \g|contador\(0) $ (VCC)
-- \g|Add0~1\ = CARRY(\g|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g|contador\(0),
	datad => VCC,
	combout => \g|Add0~0_combout\,
	cout => \g|Add0~1\);

-- Location: LCCOMB_X24_Y21_N26
\g|contador~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \g|contador~7_combout\ = (\g|Add0~0_combout\ & ((\g|Equal0~6_combout\) # ((\g|LessThan0~1_combout\ & \g|LessThan0~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|Add0~0_combout\,
	datab => \g|LessThan0~1_combout\,
	datac => \g|LessThan0~37_combout\,
	datad => \g|Equal0~6_combout\,
	combout => \g|contador~7_combout\);

-- Location: FF_X24_Y21_N27
\g|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \g|contador~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g|contador\(0));

-- Location: LCCOMB_X21_Y21_N10
\g|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \g|Add0~2_combout\ = (\g|contador\(1) & (!\g|Add0~1\)) # (!\g|contador\(1) & ((\g|Add0~1\) # (GND)))
-- \g|Add0~3\ = CARRY((!\g|Add0~1\) # (!\g|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g|contador\(1),
	datad => VCC,
	cin => \g|Add0~1\,
	combout => \g|Add0~2_combout\,
	cout => \g|Add0~3\);

-- Location: FF_X21_Y21_N11
\g|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \g|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g|contador\(1));

-- Location: LCCOMB_X21_Y21_N12
\g|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \g|Add0~4_combout\ = (\g|contador\(2) & (\g|Add0~3\ $ (GND))) # (!\g|contador\(2) & (!\g|Add0~3\ & VCC))
-- \g|Add0~5\ = CARRY((\g|contador\(2) & !\g|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g|contador\(2),
	datad => VCC,
	cin => \g|Add0~3\,
	combout => \g|Add0~4_combout\,
	cout => \g|Add0~5\);

-- Location: FF_X21_Y21_N13
\g|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \g|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g|contador\(2));

-- Location: LCCOMB_X21_Y21_N14
\g|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \g|Add0~6_combout\ = (\g|contador\(3) & (!\g|Add0~5\)) # (!\g|contador\(3) & ((\g|Add0~5\) # (GND)))
-- \g|Add0~7\ = CARRY((!\g|Add0~5\) # (!\g|contador\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g|contador\(3),
	datad => VCC,
	cin => \g|Add0~5\,
	combout => \g|Add0~6_combout\,
	cout => \g|Add0~7\);

-- Location: FF_X21_Y21_N15
\g|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \g|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g|contador\(3));

-- Location: LCCOMB_X21_Y21_N16
\g|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \g|Add0~8_combout\ = (\g|contador\(4) & (\g|Add0~7\ $ (GND))) # (!\g|contador\(4) & (!\g|Add0~7\ & VCC))
-- \g|Add0~9\ = CARRY((\g|contador\(4) & !\g|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g|contador\(4),
	datad => VCC,
	cin => \g|Add0~7\,
	combout => \g|Add0~8_combout\,
	cout => \g|Add0~9\);

-- Location: FF_X22_Y21_N5
\g|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	asdata => \g|Add0~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g|contador\(4));

-- Location: LCCOMB_X21_Y21_N18
\g|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \g|Add0~10_combout\ = (\g|contador\(5) & (!\g|Add0~9\)) # (!\g|contador\(5) & ((\g|Add0~9\) # (GND)))
-- \g|Add0~11\ = CARRY((!\g|Add0~9\) # (!\g|contador\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g|contador\(5),
	datad => VCC,
	cin => \g|Add0~9\,
	combout => \g|Add0~10_combout\,
	cout => \g|Add0~11\);

-- Location: LCCOMB_X22_Y21_N8
\g|contador~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \g|contador~6_combout\ = (\g|Add0~10_combout\ & ((\g|Equal0~6_combout\) # ((\g|LessThan0~1_combout\ & \g|LessThan0~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|Equal0~6_combout\,
	datab => \g|Add0~10_combout\,
	datac => \g|LessThan0~1_combout\,
	datad => \g|LessThan0~37_combout\,
	combout => \g|contador~6_combout\);

-- Location: FF_X22_Y21_N9
\g|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \g|contador~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g|contador\(5));

-- Location: LCCOMB_X21_Y21_N20
\g|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \g|Add0~12_combout\ = (\g|contador\(6) & (\g|Add0~11\ $ (GND))) # (!\g|contador\(6) & (!\g|Add0~11\ & VCC))
-- \g|Add0~13\ = CARRY((\g|contador\(6) & !\g|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g|contador\(6),
	datad => VCC,
	cin => \g|Add0~11\,
	combout => \g|Add0~12_combout\,
	cout => \g|Add0~13\);

-- Location: FF_X21_Y21_N21
\g|contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \g|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g|contador\(6));

-- Location: LCCOMB_X21_Y21_N22
\g|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \g|Add0~14_combout\ = (\g|contador\(7) & (!\g|Add0~13\)) # (!\g|contador\(7) & ((\g|Add0~13\) # (GND)))
-- \g|Add0~15\ = CARRY((!\g|Add0~13\) # (!\g|contador\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g|contador\(7),
	datad => VCC,
	cin => \g|Add0~13\,
	combout => \g|Add0~14_combout\,
	cout => \g|Add0~15\);

-- Location: FF_X21_Y21_N23
\g|contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \g|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g|contador\(7));

-- Location: LCCOMB_X23_Y21_N10
\g|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \g|LessThan0~2_combout\ = (\g|contador\(8)) # ((\g|contador\(6)) # (\gin[2]~input_o\ $ (\g|contador\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gin[2]~input_o\,
	datab => \g|contador\(8),
	datac => \g|contador\(7),
	datad => \g|contador\(6),
	combout => \g|LessThan0~2_combout\);

-- Location: LCCOMB_X23_Y21_N12
\g|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \g|LessThan0~3_combout\ = (!\g|contador\(9) & (!\g|LessThan0~2_combout\ & (\gin[1]~input_o\ $ (\gin[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gin[1]~input_o\,
	datab => \g|contador\(9),
	datac => \gin[0]~input_o\,
	datad => \g|LessThan0~2_combout\,
	combout => \g|LessThan0~3_combout\);

-- Location: LCCOMB_X22_Y21_N6
\g|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \g|LessThan0~4_combout\ = (\gin[2]~input_o\ & (((\gin[0]~input_o\ & \gin[1]~input_o\)) # (!\g|contador\(7)))) # (!\gin[2]~input_o\ & (\gin[0]~input_o\ & (\gin[1]~input_o\ & !\g|contador\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gin[0]~input_o\,
	datab => \gin[1]~input_o\,
	datac => \gin[2]~input_o\,
	datad => \g|contador\(7),
	combout => \g|LessThan0~4_combout\);

-- Location: LCCOMB_X23_Y21_N14
\g|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \g|LessThan0~5_combout\ = (!\g|contador\(9) & (!\g|contador\(8) & \g|LessThan0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g|contador\(9),
	datac => \g|contador\(8),
	datad => \g|LessThan0~4_combout\,
	combout => \g|LessThan0~5_combout\);

-- Location: LCCOMB_X23_Y21_N4
\g|LessThan0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \g|LessThan0~15_combout\ = \g|contador\(8) $ (((\gin[1]~input_o\ & (\gin[0]~input_o\ & \gin[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gin[1]~input_o\,
	datab => \gin[0]~input_o\,
	datac => \gin[2]~input_o\,
	datad => \g|contador\(8),
	combout => \g|LessThan0~15_combout\);

-- Location: LCCOMB_X22_Y21_N18
\g|LessThan0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \g|LessThan0~14_combout\ = \gin[2]~input_o\ $ (\g|contador\(7) $ (((\gin[0]~input_o\ & \gin[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gin[0]~input_o\,
	datab => \gin[1]~input_o\,
	datac => \gin[2]~input_o\,
	datad => \g|contador\(7),
	combout => \g|LessThan0~14_combout\);

-- Location: LCCOMB_X23_Y21_N2
\g|LessThan0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \g|LessThan0~16_combout\ = (!\g|contador\(9) & (!\g|LessThan0~15_combout\ & !\g|LessThan0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g|contador\(9),
	datac => \g|LessThan0~15_combout\,
	datad => \g|LessThan0~14_combout\,
	combout => \g|LessThan0~16_combout\);

-- Location: LCCOMB_X23_Y21_N8
\g|LessThan0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \g|LessThan0~17_combout\ = (\g|LessThan0~16_combout\ & (\gin[1]~input_o\ $ (\gin[0]~input_o\ $ (!\g|contador\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gin[1]~input_o\,
	datab => \gin[0]~input_o\,
	datac => \g|contador\(6),
	datad => \g|LessThan0~16_combout\,
	combout => \g|LessThan0~17_combout\);

-- Location: LCCOMB_X22_Y21_N30
\g|LessThan0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \g|LessThan0~12_combout\ = (\gin[2]~input_o\ & (\g|contador\(5) & ((!\gin[1]~input_o\) # (!\gin[0]~input_o\)))) # (!\gin[2]~input_o\ & (\gin[0]~input_o\ & (\gin[1]~input_o\ & !\g|contador\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gin[0]~input_o\,
	datab => \gin[1]~input_o\,
	datac => \gin[2]~input_o\,
	datad => \g|contador\(5),
	combout => \g|LessThan0~12_combout\);

-- Location: LCCOMB_X22_Y21_N14
\g|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \g|LessThan0~6_combout\ = (\g|contador\(2)) # ((\gin[0]~input_o\ & \g|contador\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|contador\(2),
	datac => \gin[0]~input_o\,
	datad => \g|contador\(3),
	combout => \g|LessThan0~6_combout\);

-- Location: LCCOMB_X22_Y21_N20
\g|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \g|LessThan0~7_combout\ = (\gin[2]~input_o\ & (\g|contador\(4) & (\gin[1]~input_o\ $ (!\g|contador\(3))))) # (!\gin[2]~input_o\ & (\gin[1]~input_o\ & (!\g|contador\(4) & \g|contador\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gin[2]~input_o\,
	datab => \gin[1]~input_o\,
	datac => \g|contador\(4),
	datad => \g|contador\(3),
	combout => \g|LessThan0~7_combout\);

-- Location: LCCOMB_X22_Y21_N22
\g|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \g|LessThan0~8_combout\ = (\g|contador\(5) & (!\g|LessThan0~6_combout\ & \g|LessThan0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g|contador\(5),
	datac => \g|LessThan0~6_combout\,
	datad => \g|LessThan0~7_combout\,
	combout => \g|LessThan0~8_combout\);

-- Location: LCCOMB_X22_Y21_N26
\g|LessThan0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \g|LessThan0~10_combout\ = (\g|contador\(5)) # ((!\gin[2]~input_o\ & ((\g|contador\(4)) # (\g|contador\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gin[2]~input_o\,
	datab => \g|contador\(5),
	datac => \g|contador\(4),
	datad => \g|contador\(3),
	combout => \g|LessThan0~10_combout\);

-- Location: LCCOMB_X22_Y21_N28
\g|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \g|LessThan0~9_combout\ = (\g|contador\(5) & ((\g|contador\(3)) # (\gin[2]~input_o\ $ (\g|contador\(4))))) # (!\g|contador\(5) & (\gin[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gin[2]~input_o\,
	datab => \g|contador\(5),
	datac => \g|contador\(4),
	datad => \g|contador\(3),
	combout => \g|LessThan0~9_combout\);

-- Location: LCCOMB_X22_Y21_N24
\g|LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \g|LessThan0~11_combout\ = (\g|LessThan0~9_combout\ & (((!\g|LessThan0~10_combout\)))) # (!\g|LessThan0~9_combout\ & ((\gin[0]~input_o\ & (!\gin[1]~input_o\ & !\g|LessThan0~10_combout\)) # (!\gin[0]~input_o\ & (\gin[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gin[0]~input_o\,
	datab => \gin[1]~input_o\,
	datac => \g|LessThan0~10_combout\,
	datad => \g|LessThan0~9_combout\,
	combout => \g|LessThan0~11_combout\);

-- Location: LCCOMB_X22_Y21_N12
\g|LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \g|LessThan0~13_combout\ = (\g|LessThan0~8_combout\) # ((\g|LessThan0~11_combout\) # ((\g|LessThan0~12_combout\ & !\g|contador\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|LessThan0~12_combout\,
	datab => \g|contador\(4),
	datac => \g|LessThan0~8_combout\,
	datad => \g|LessThan0~11_combout\,
	combout => \g|LessThan0~13_combout\);

-- Location: LCCOMB_X23_Y21_N6
\g|LessThan0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \g|LessThan0~18_combout\ = (\g|LessThan0~3_combout\) # ((\g|LessThan0~5_combout\) # ((\g|LessThan0~17_combout\ & \g|LessThan0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|LessThan0~3_combout\,
	datab => \g|LessThan0~5_combout\,
	datac => \g|LessThan0~17_combout\,
	datad => \g|LessThan0~13_combout\,
	combout => \g|LessThan0~18_combout\);

-- Location: LCCOMB_X24_Y21_N4
\g|LessThan0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \g|LessThan0~20_cout\ = CARRY(\g|LessThan0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g|LessThan0~18_combout\,
	datad => VCC,
	cout => \g|LessThan0~20_cout\);

-- Location: LCCOMB_X24_Y21_N6
\g|LessThan0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \g|LessThan0~22_cout\ = CARRY((\g|contador\(10) & ((\Mux18~0_combout\) # (!\g|LessThan0~20_cout\))) # (!\g|contador\(10) & (\Mux18~0_combout\ & !\g|LessThan0~20_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g|contador\(10),
	datab => \Mux18~0_combout\,
	datad => VCC,
	cin => \g|LessThan0~20_cout\,
	cout => \g|LessThan0~22_cout\);

-- Location: LCCOMB_X24_Y21_N8
\g|LessThan0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \g|LessThan0~24_cout\ = CARRY((\g|contador\(11) & (\Mux17~0_combout\ & !\g|LessThan0~22_cout\)) # (!\g|contador\(11) & ((\Mux17~0_combout\) # (!\g|LessThan0~22_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g|contador\(11),
	datab => \Mux17~0_combout\,
	datad => VCC,
	cin => \g|LessThan0~22_cout\,
	cout => \g|LessThan0~24_cout\);

-- Location: LCCOMB_X24_Y21_N10
\g|LessThan0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \g|LessThan0~26_cout\ = CARRY((\g|contador\(12) & ((!\g|LessThan0~24_cout\) # (!\Mux16~0_combout\))) # (!\g|contador\(12) & (!\Mux16~0_combout\ & !\g|LessThan0~24_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g|contador\(12),
	datab => \Mux16~0_combout\,
	datad => VCC,
	cin => \g|LessThan0~24_cout\,
	cout => \g|LessThan0~26_cout\);

-- Location: LCCOMB_X24_Y21_N12
\g|LessThan0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \g|LessThan0~28_cout\ = CARRY((\Mux15~0_combout\ & ((!\g|LessThan0~26_cout\) # (!\g|contador\(13)))) # (!\Mux15~0_combout\ & (!\g|contador\(13) & !\g|LessThan0~26_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~0_combout\,
	datab => \g|contador\(13),
	datad => VCC,
	cin => \g|LessThan0~26_cout\,
	cout => \g|LessThan0~28_cout\);

-- Location: LCCOMB_X24_Y21_N14
\g|LessThan0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \g|LessThan0~30_cout\ = CARRY((\Mux14~0_combout\ & ((\g|contador\(14)) # (!\g|LessThan0~28_cout\))) # (!\Mux14~0_combout\ & (\g|contador\(14) & !\g|LessThan0~28_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~0_combout\,
	datab => \g|contador\(14),
	datad => VCC,
	cin => \g|LessThan0~28_cout\,
	cout => \g|LessThan0~30_cout\);

-- Location: LCCOMB_X24_Y21_N16
\g|LessThan0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \g|LessThan0~32_cout\ = CARRY((\g|contador\(15) & (\Mux13~0_combout\ & !\g|LessThan0~30_cout\)) # (!\g|contador\(15) & ((\Mux13~0_combout\) # (!\g|LessThan0~30_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g|contador\(15),
	datab => \Mux13~0_combout\,
	datad => VCC,
	cin => \g|LessThan0~30_cout\,
	cout => \g|LessThan0~32_cout\);

-- Location: LCCOMB_X24_Y21_N18
\g|LessThan0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \g|LessThan0~34_cout\ = CARRY((\g|contador\(16) & ((!\g|LessThan0~32_cout\) # (!\gin[0]~input_o\))) # (!\g|contador\(16) & (!\gin[0]~input_o\ & !\g|LessThan0~32_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g|contador\(16),
	datab => \gin[0]~input_o\,
	datad => VCC,
	cin => \g|LessThan0~32_cout\,
	cout => \g|LessThan0~34_cout\);

-- Location: LCCOMB_X24_Y21_N20
\g|LessThan0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \g|LessThan0~36_cout\ = CARRY((\gin[1]~input_o\ & ((!\g|LessThan0~34_cout\) # (!\g|contador\(17)))) # (!\gin[1]~input_o\ & (!\g|contador\(17) & !\g|LessThan0~34_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gin[1]~input_o\,
	datab => \g|contador\(17),
	datad => VCC,
	cin => \g|LessThan0~34_cout\,
	cout => \g|LessThan0~36_cout\);

-- Location: LCCOMB_X24_Y21_N22
\g|LessThan0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \g|LessThan0~37_combout\ = (\g|contador\(18) & (\g|LessThan0~36_cout\ & \gin[2]~input_o\)) # (!\g|contador\(18) & ((\g|LessThan0~36_cout\) # (\gin[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g|contador\(18),
	datad => \gin[2]~input_o\,
	cin => \g|LessThan0~36_cout\,
	combout => \g|LessThan0~37_combout\);

-- Location: LCCOMB_X21_Y20_N12
\g|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \g|Add0~36_combout\ = (\g|contador\(18) & (\g|Add0~35\ $ (GND))) # (!\g|contador\(18) & (!\g|Add0~35\ & VCC))
-- \g|Add0~37\ = CARRY((\g|contador\(18) & !\g|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g|contador\(18),
	datad => VCC,
	cin => \g|Add0~35\,
	combout => \g|Add0~36_combout\,
	cout => \g|Add0~37\);

-- Location: LCCOMB_X24_Y21_N2
\g|contador~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \g|contador~0_combout\ = (\g|Add0~36_combout\ & ((\g|Equal0~6_combout\) # ((\g|LessThan0~1_combout\ & \g|LessThan0~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|Equal0~6_combout\,
	datab => \g|LessThan0~1_combout\,
	datac => \g|LessThan0~37_combout\,
	datad => \g|Add0~36_combout\,
	combout => \g|contador~0_combout\);

-- Location: FF_X24_Y21_N3
\g|contador[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \g|contador~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g|contador\(18));

-- Location: LCCOMB_X21_Y20_N14
\g|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \g|Add0~38_combout\ = (\g|contador\(19) & (!\g|Add0~37\)) # (!\g|contador\(19) & ((\g|Add0~37\) # (GND)))
-- \g|Add0~39\ = CARRY((!\g|Add0~37\) # (!\g|contador\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g|contador\(19),
	datad => VCC,
	cin => \g|Add0~37\,
	combout => \g|Add0~38_combout\,
	cout => \g|Add0~39\);

-- Location: FF_X21_Y20_N15
\g|contador[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \g|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g|contador\(19));

-- Location: LCCOMB_X21_Y20_N16
\g|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \g|Add0~40_combout\ = (\g|contador\(20) & (\g|Add0~39\ $ (GND))) # (!\g|contador\(20) & (!\g|Add0~39\ & VCC))
-- \g|Add0~41\ = CARRY((\g|contador\(20) & !\g|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g|contador\(20),
	datad => VCC,
	cin => \g|Add0~39\,
	combout => \g|Add0~40_combout\,
	cout => \g|Add0~41\);

-- Location: FF_X21_Y20_N17
\g|contador[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \g|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g|contador\(20));

-- Location: LCCOMB_X21_Y20_N18
\g|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \g|Add0~42_combout\ = (\g|contador\(21) & (!\g|Add0~41\)) # (!\g|contador\(21) & ((\g|Add0~41\) # (GND)))
-- \g|Add0~43\ = CARRY((!\g|Add0~41\) # (!\g|contador\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g|contador\(21),
	datad => VCC,
	cin => \g|Add0~41\,
	combout => \g|Add0~42_combout\,
	cout => \g|Add0~43\);

-- Location: FF_X21_Y20_N19
\g|contador[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \g|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g|contador\(21));

-- Location: LCCOMB_X21_Y20_N20
\g|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \g|Add0~44_combout\ = (\g|contador\(22) & (\g|Add0~43\ $ (GND))) # (!\g|contador\(22) & (!\g|Add0~43\ & VCC))
-- \g|Add0~45\ = CARRY((\g|contador\(22) & !\g|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g|contador\(22),
	datad => VCC,
	cin => \g|Add0~43\,
	combout => \g|Add0~44_combout\,
	cout => \g|Add0~45\);

-- Location: FF_X21_Y20_N21
\g|contador[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \g|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g|contador\(22));

-- Location: LCCOMB_X21_Y20_N22
\g|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \g|Add0~46_combout\ = \g|contador\(23) $ (\g|Add0~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g|contador\(23),
	cin => \g|Add0~45\,
	combout => \g|Add0~46_combout\);

-- Location: FF_X21_Y20_N23
\g|contador[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \g|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g|contador\(23));

-- Location: LCCOMB_X21_Y20_N28
\g|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \g|LessThan0~0_combout\ = (!\g|contador\(22) & (!\g|contador\(21) & (!\g|contador\(19) & !\g|contador\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|contador\(22),
	datab => \g|contador\(21),
	datac => \g|contador\(19),
	datad => \g|contador\(20),
	combout => \g|LessThan0~0_combout\);

-- Location: LCCOMB_X21_Y20_N30
\g|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \g|LessThan0~1_combout\ = (!\g|contador\(23) & \g|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \g|contador\(23),
	datad => \g|LessThan0~0_combout\,
	combout => \g|LessThan0~1_combout\);

-- Location: LCCOMB_X21_Y21_N24
\g|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \g|Add0~16_combout\ = (\g|contador\(8) & (\g|Add0~15\ $ (GND))) # (!\g|contador\(8) & (!\g|Add0~15\ & VCC))
-- \g|Add0~17\ = CARRY((\g|contador\(8) & !\g|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g|contador\(8),
	datad => VCC,
	cin => \g|Add0~15\,
	combout => \g|Add0~16_combout\,
	cout => \g|Add0~17\);

-- Location: LCCOMB_X23_Y21_N28
\g|contador~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \g|contador~5_combout\ = (\g|Add0~16_combout\ & ((\g|Equal0~6_combout\) # ((\g|LessThan0~1_combout\ & \g|LessThan0~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|Equal0~6_combout\,
	datab => \g|LessThan0~1_combout\,
	datac => \g|Add0~16_combout\,
	datad => \g|LessThan0~37_combout\,
	combout => \g|contador~5_combout\);

-- Location: FF_X23_Y21_N29
\g|contador[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \g|contador~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g|contador\(8));

-- Location: LCCOMB_X21_Y21_N26
\g|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \g|Add0~18_combout\ = (\g|contador\(9) & (!\g|Add0~17\)) # (!\g|contador\(9) & ((\g|Add0~17\) # (GND)))
-- \g|Add0~19\ = CARRY((!\g|Add0~17\) # (!\g|contador\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \g|contador\(9),
	datad => VCC,
	cin => \g|Add0~17\,
	combout => \g|Add0~18_combout\,
	cout => \g|Add0~19\);

-- Location: FF_X21_Y21_N27
\g|contador[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \g|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g|contador\(9));

-- Location: LCCOMB_X21_Y21_N28
\g|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \g|Add0~20_combout\ = (\g|contador\(10) & (\g|Add0~19\ $ (GND))) # (!\g|contador\(10) & (!\g|Add0~19\ & VCC))
-- \g|Add0~21\ = CARRY((\g|contador\(10) & !\g|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \g|contador\(10),
	datad => VCC,
	cin => \g|Add0~19\,
	combout => \g|Add0~20_combout\,
	cout => \g|Add0~21\);

-- Location: FF_X21_Y21_N29
\g|contador[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \g|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g|contador\(10));

-- Location: FF_X21_Y21_N31
\g|contador[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \g|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g|contador\(11));

-- Location: LCCOMB_X21_Y21_N2
\g|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \g|Equal0~3_combout\ = (\g|contador\(11)) # ((\g|contador\(0)) # ((\g|contador\(10)) # (!\g|contador\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|contador\(11),
	datab => \g|contador\(0),
	datac => \g|contador\(8),
	datad => \g|contador\(10),
	combout => \g|Equal0~3_combout\);

-- Location: LCCOMB_X21_Y21_N4
\g|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \g|Equal0~0_combout\ = (\g|contador\(7)) # (((\g|contador\(9)) # (\g|contador\(6))) # (!\g|contador\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|contador\(7),
	datab => \g|contador\(5),
	datac => \g|contador\(9),
	datad => \g|contador\(6),
	combout => \g|Equal0~0_combout\);

-- Location: LCCOMB_X22_Y21_N0
\g|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \g|Equal0~1_combout\ = (\g|contador\(2)) # ((\g|contador\(4)) # ((\g|contador\(1)) # (\g|contador\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|contador\(2),
	datab => \g|contador\(4),
	datac => \g|contador\(1),
	datad => \g|contador\(3),
	combout => \g|Equal0~1_combout\);

-- Location: LCCOMB_X22_Y21_N2
\g|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \g|Equal0~2_combout\ = (\g|Equal0~0_combout\) # (\g|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g|Equal0~0_combout\,
	datad => \g|Equal0~1_combout\,
	combout => \g|Equal0~2_combout\);

-- Location: LCCOMB_X22_Y21_N16
\g|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \g|Equal0~4_combout\ = (\g|contador\(14)) # (((\g|contador\(12)) # (!\g|contador\(15))) # (!\g|contador\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|contador\(14),
	datab => \g|contador\(13),
	datac => \g|contador\(15),
	datad => \g|contador\(12),
	combout => \g|Equal0~4_combout\);

-- Location: LCCOMB_X23_Y21_N24
\g|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \g|Equal0~5_combout\ = (((\g|Equal0~4_combout\) # (!\g|contador\(17))) # (!\g|contador\(16))) # (!\g|contador\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|contador\(18),
	datab => \g|contador\(16),
	datac => \g|Equal0~4_combout\,
	datad => \g|contador\(17),
	combout => \g|Equal0~5_combout\);

-- Location: LCCOMB_X22_Y21_N10
\g|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \g|Equal0~6_combout\ = (\g|Equal0~3_combout\) # ((\g|Equal0~2_combout\) # ((\g|Equal0~5_combout\) # (!\g|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|Equal0~3_combout\,
	datab => \g|Equal0~2_combout\,
	datac => \g|LessThan0~1_combout\,
	datad => \g|Equal0~5_combout\,
	combout => \g|Equal0~6_combout\);

-- Location: LCCOMB_X24_Y21_N28
\g|clkout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \g|clkout~0_combout\ = (\g|Equal0~6_combout\ & (\g|LessThan0~1_combout\ & ((\g|LessThan0~37_combout\)))) # (!\g|Equal0~6_combout\ & ((\g|clkout~q\) # ((\g|LessThan0~1_combout\ & \g|LessThan0~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g|Equal0~6_combout\,
	datab => \g|LessThan0~1_combout\,
	datac => \g|clkout~q\,
	datad => \g|LessThan0~37_combout\,
	combout => \g|clkout~0_combout\);

-- Location: FF_X24_Y21_N29
\g|clkout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \g|clkout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g|clkout~q\);

-- Location: LCCOMB_X17_Y7_N8
\b|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|Add0~0_combout\ = \b|contador\(0) $ (VCC)
-- \b|Add0~1\ = CARRY(\b|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b|contador\(0),
	datad => VCC,
	combout => \b|Add0~0_combout\,
	cout => \b|Add0~1\);

-- Location: IOIBUF_X21_Y0_N8
\bin[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bin(2),
	o => \bin[2]~input_o\);

-- Location: IOIBUF_X23_Y0_N8
\bin[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bin(1),
	o => \bin[1]~input_o\);

-- Location: LCCOMB_X17_Y7_N10
\b|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|Add0~2_combout\ = (\b|contador\(1) & (!\b|Add0~1\)) # (!\b|contador\(1) & ((\b|Add0~1\) # (GND)))
-- \b|Add0~3\ = CARRY((!\b|Add0~1\) # (!\b|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b|contador\(1),
	datad => VCC,
	cin => \b|Add0~1\,
	combout => \b|Add0~2_combout\,
	cout => \b|Add0~3\);

-- Location: LCCOMB_X17_Y7_N12
\b|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|Add0~4_combout\ = (\b|contador\(2) & (\b|Add0~3\ $ (GND))) # (!\b|contador\(2) & (!\b|Add0~3\ & VCC))
-- \b|Add0~5\ = CARRY((\b|contador\(2) & !\b|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b|contador\(2),
	datad => VCC,
	cin => \b|Add0~3\,
	combout => \b|Add0~4_combout\,
	cout => \b|Add0~5\);

-- Location: FF_X17_Y7_N13
\b|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \b|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b|contador\(2));

-- Location: LCCOMB_X17_Y7_N14
\b|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|Add0~6_combout\ = (\b|contador\(3) & (!\b|Add0~5\)) # (!\b|contador\(3) & ((\b|Add0~5\) # (GND)))
-- \b|Add0~7\ = CARRY((!\b|Add0~5\) # (!\b|contador\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b|contador\(3),
	datad => VCC,
	cin => \b|Add0~5\,
	combout => \b|Add0~6_combout\,
	cout => \b|Add0~7\);

-- Location: FF_X17_Y7_N15
\b|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \b|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b|contador\(3));

-- Location: LCCOMB_X17_Y7_N16
\b|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|Add0~8_combout\ = (\b|contador\(4) & (\b|Add0~7\ $ (GND))) # (!\b|contador\(4) & (!\b|Add0~7\ & VCC))
-- \b|Add0~9\ = CARRY((\b|contador\(4) & !\b|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b|contador\(4),
	datad => VCC,
	cin => \b|Add0~7\,
	combout => \b|Add0~8_combout\,
	cout => \b|Add0~9\);

-- Location: FF_X17_Y7_N17
\b|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \b|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b|contador\(4));

-- Location: LCCOMB_X17_Y7_N18
\b|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|Add0~10_combout\ = (\b|contador\(5) & (!\b|Add0~9\)) # (!\b|contador\(5) & ((\b|Add0~9\) # (GND)))
-- \b|Add0~11\ = CARRY((!\b|Add0~9\) # (!\b|contador\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b|contador\(5),
	datad => VCC,
	cin => \b|Add0~9\,
	combout => \b|Add0~10_combout\,
	cout => \b|Add0~11\);

-- Location: LCCOMB_X19_Y7_N4
\b|contador~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|contador~6_combout\ = (\b|Add0~10_combout\ & ((\b|Equal0~6_combout\) # ((\b|LessThan0~1_combout\ & \b|LessThan0~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b|Add0~10_combout\,
	datab => \b|Equal0~6_combout\,
	datac => \b|LessThan0~1_combout\,
	datad => \b|LessThan0~37_combout\,
	combout => \b|contador~6_combout\);

-- Location: FF_X19_Y7_N5
\b|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \b|contador~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b|contador\(5));

-- Location: LCCOMB_X17_Y7_N20
\b|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|Add0~12_combout\ = (\b|contador\(6) & (\b|Add0~11\ $ (GND))) # (!\b|contador\(6) & (!\b|Add0~11\ & VCC))
-- \b|Add0~13\ = CARRY((\b|contador\(6) & !\b|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b|contador\(6),
	datad => VCC,
	cin => \b|Add0~11\,
	combout => \b|Add0~12_combout\,
	cout => \b|Add0~13\);

-- Location: FF_X17_Y7_N21
\b|contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \b|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b|contador\(6));

-- Location: LCCOMB_X17_Y7_N22
\b|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|Add0~14_combout\ = (\b|contador\(7) & (!\b|Add0~13\)) # (!\b|contador\(7) & ((\b|Add0~13\) # (GND)))
-- \b|Add0~15\ = CARRY((!\b|Add0~13\) # (!\b|contador\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b|contador\(7),
	datad => VCC,
	cin => \b|Add0~13\,
	combout => \b|Add0~14_combout\,
	cout => \b|Add0~15\);

-- Location: FF_X18_Y7_N25
\b|contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	asdata => \b|Add0~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b|contador\(7));

-- Location: LCCOMB_X17_Y7_N24
\b|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|Add0~16_combout\ = (\b|contador\(8) & (\b|Add0~15\ $ (GND))) # (!\b|contador\(8) & (!\b|Add0~15\ & VCC))
-- \b|Add0~17\ = CARRY((\b|contador\(8) & !\b|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b|contador\(8),
	datad => VCC,
	cin => \b|Add0~15\,
	combout => \b|Add0~16_combout\,
	cout => \b|Add0~17\);

-- Location: LCCOMB_X18_Y7_N10
\b|contador~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|contador~5_combout\ = (\b|Add0~16_combout\ & ((\b|Equal0~6_combout\) # ((\b|LessThan0~1_combout\ & \b|LessThan0~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b|Add0~16_combout\,
	datab => \b|LessThan0~1_combout\,
	datac => \b|Equal0~6_combout\,
	datad => \b|LessThan0~37_combout\,
	combout => \b|contador~5_combout\);

-- Location: FF_X18_Y7_N11
\b|contador[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \b|contador~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b|contador\(8));

-- Location: LCCOMB_X17_Y7_N26
\b|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|Add0~18_combout\ = (\b|contador\(9) & (!\b|Add0~17\)) # (!\b|contador\(9) & ((\b|Add0~17\) # (GND)))
-- \b|Add0~19\ = CARRY((!\b|Add0~17\) # (!\b|contador\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b|contador\(9),
	datad => VCC,
	cin => \b|Add0~17\,
	combout => \b|Add0~18_combout\,
	cout => \b|Add0~19\);

-- Location: FF_X17_Y7_N27
\b|contador[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \b|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b|contador\(9));

-- Location: LCCOMB_X17_Y7_N28
\b|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|Add0~20_combout\ = (\b|contador\(10) & (\b|Add0~19\ $ (GND))) # (!\b|contador\(10) & (!\b|Add0~19\ & VCC))
-- \b|Add0~21\ = CARRY((\b|contador\(10) & !\b|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b|contador\(10),
	datad => VCC,
	cin => \b|Add0~19\,
	combout => \b|Add0~20_combout\,
	cout => \b|Add0~21\);

-- Location: FF_X17_Y7_N29
\b|contador[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \b|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b|contador\(10));

-- Location: LCCOMB_X17_Y7_N30
\b|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|Add0~22_combout\ = (\b|contador\(11) & (!\b|Add0~21\)) # (!\b|contador\(11) & ((\b|Add0~21\) # (GND)))
-- \b|Add0~23\ = CARRY((!\b|Add0~21\) # (!\b|contador\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b|contador\(11),
	datad => VCC,
	cin => \b|Add0~21\,
	combout => \b|Add0~22_combout\,
	cout => \b|Add0~23\);

-- Location: FF_X17_Y7_N31
\b|contador[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \b|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b|contador\(11));

-- Location: LCCOMB_X17_Y6_N0
\b|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|Add0~24_combout\ = (\b|contador\(12) & (\b|Add0~23\ $ (GND))) # (!\b|contador\(12) & (!\b|Add0~23\ & VCC))
-- \b|Add0~25\ = CARRY((\b|contador\(12) & !\b|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b|contador\(12),
	datad => VCC,
	cin => \b|Add0~23\,
	combout => \b|Add0~24_combout\,
	cout => \b|Add0~25\);

-- Location: FF_X17_Y6_N1
\b|contador[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \b|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b|contador\(12));

-- Location: LCCOMB_X17_Y6_N2
\b|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|Add0~26_combout\ = (\b|contador\(13) & (!\b|Add0~25\)) # (!\b|contador\(13) & ((\b|Add0~25\) # (GND)))
-- \b|Add0~27\ = CARRY((!\b|Add0~25\) # (!\b|contador\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b|contador\(13),
	datad => VCC,
	cin => \b|Add0~25\,
	combout => \b|Add0~26_combout\,
	cout => \b|Add0~27\);

-- Location: LCCOMB_X21_Y7_N20
\b|contador~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|contador~4_combout\ = (\b|Add0~26_combout\ & ((\b|Equal0~6_combout\) # ((\b|LessThan0~1_combout\ & \b|LessThan0~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b|LessThan0~1_combout\,
	datab => \b|Equal0~6_combout\,
	datac => \b|Add0~26_combout\,
	datad => \b|LessThan0~37_combout\,
	combout => \b|contador~4_combout\);

-- Location: FF_X21_Y7_N21
\b|contador[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \b|contador~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b|contador\(13));

-- Location: LCCOMB_X17_Y6_N4
\b|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|Add0~28_combout\ = (\b|contador\(14) & (\b|Add0~27\ $ (GND))) # (!\b|contador\(14) & (!\b|Add0~27\ & VCC))
-- \b|Add0~29\ = CARRY((\b|contador\(14) & !\b|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b|contador\(14),
	datad => VCC,
	cin => \b|Add0~27\,
	combout => \b|Add0~28_combout\,
	cout => \b|Add0~29\);

-- Location: FF_X17_Y6_N5
\b|contador[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \b|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b|contador\(14));

-- Location: LCCOMB_X17_Y6_N6
\b|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|Add0~30_combout\ = (\b|contador\(15) & (!\b|Add0~29\)) # (!\b|contador\(15) & ((\b|Add0~29\) # (GND)))
-- \b|Add0~31\ = CARRY((!\b|Add0~29\) # (!\b|contador\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b|contador\(15),
	datad => VCC,
	cin => \b|Add0~29\,
	combout => \b|Add0~30_combout\,
	cout => \b|Add0~31\);

-- Location: LCCOMB_X21_Y7_N4
\b|contador~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|contador~3_combout\ = (\b|Add0~30_combout\ & ((\b|Equal0~6_combout\) # ((\b|LessThan0~1_combout\ & \b|LessThan0~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b|LessThan0~1_combout\,
	datab => \b|Equal0~6_combout\,
	datac => \b|Add0~30_combout\,
	datad => \b|LessThan0~37_combout\,
	combout => \b|contador~3_combout\);

-- Location: FF_X21_Y7_N5
\b|contador[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \b|contador~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b|contador\(15));

-- Location: LCCOMB_X17_Y6_N8
\b|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|Add0~32_combout\ = (\b|contador\(16) & (\b|Add0~31\ $ (GND))) # (!\b|contador\(16) & (!\b|Add0~31\ & VCC))
-- \b|Add0~33\ = CARRY((\b|contador\(16) & !\b|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b|contador\(16),
	datad => VCC,
	cin => \b|Add0~31\,
	combout => \b|Add0~32_combout\,
	cout => \b|Add0~33\);

-- Location: LCCOMB_X19_Y7_N30
\b|contador~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|contador~2_combout\ = (\b|Add0~32_combout\ & ((\b|Equal0~6_combout\) # ((\b|LessThan0~1_combout\ & \b|LessThan0~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b|LessThan0~1_combout\,
	datab => \b|Equal0~6_combout\,
	datac => \b|LessThan0~37_combout\,
	datad => \b|Add0~32_combout\,
	combout => \b|contador~2_combout\);

-- Location: FF_X19_Y7_N31
\b|contador[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \b|contador~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b|contador\(16));

-- Location: LCCOMB_X17_Y6_N10
\b|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|Add0~34_combout\ = (\b|contador\(17) & (!\b|Add0~33\)) # (!\b|contador\(17) & ((\b|Add0~33\) # (GND)))
-- \b|Add0~35\ = CARRY((!\b|Add0~33\) # (!\b|contador\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b|contador\(17),
	datad => VCC,
	cin => \b|Add0~33\,
	combout => \b|Add0~34_combout\,
	cout => \b|Add0~35\);

-- Location: LCCOMB_X19_Y7_N0
\b|contador~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|contador~1_combout\ = (\b|Add0~34_combout\ & ((\b|Equal0~6_combout\) # ((\b|LessThan0~1_combout\ & \b|LessThan0~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b|LessThan0~1_combout\,
	datab => \b|Equal0~6_combout\,
	datac => \b|LessThan0~37_combout\,
	datad => \b|Add0~34_combout\,
	combout => \b|contador~1_combout\);

-- Location: FF_X19_Y7_N1
\b|contador[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \b|contador~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b|contador\(17));

-- Location: IOIBUF_X28_Y0_N22
\bin[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bin(0),
	o => \bin[0]~input_o\);

-- Location: LCCOMB_X21_Y7_N22
\Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (\bin[1]~input_o\) # (\bin[2]~input_o\ $ (\bin[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin[1]~input_o\,
	datac => \bin[2]~input_o\,
	datad => \bin[0]~input_o\,
	combout => \Mux26~0_combout\);

-- Location: LCCOMB_X19_Y4_N12
\Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (\bin[1]~input_o\ & (\bin[2]~input_o\)) # (!\bin[1]~input_o\ & (!\bin[2]~input_o\ & !\bin[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin[1]~input_o\,
	datac => \bin[2]~input_o\,
	datad => \bin[0]~input_o\,
	combout => \Mux27~0_combout\);

-- Location: LCCOMB_X19_Y4_N10
\Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = (\bin[1]~input_o\ & (\bin[2]~input_o\)) # (!\bin[1]~input_o\ & ((\bin[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin[1]~input_o\,
	datac => \bin[2]~input_o\,
	datad => \bin[0]~input_o\,
	combout => \Mux28~0_combout\);

-- Location: LCCOMB_X21_Y7_N26
\Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = (!\bin[2]~input_o\ & \bin[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin[2]~input_o\,
	datad => \bin[1]~input_o\,
	combout => \Mux29~0_combout\);

-- Location: LCCOMB_X21_Y7_N28
\Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (\bin[1]~input_o\ & ((!\bin[0]~input_o\))) # (!\bin[1]~input_o\ & (!\bin[2]~input_o\ & \bin[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin[1]~input_o\,
	datac => \bin[2]~input_o\,
	datad => \bin[0]~input_o\,
	combout => \Mux30~0_combout\);

-- Location: LCCOMB_X19_Y4_N4
\Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = (\bin[0]~input_o\) # ((!\bin[1]~input_o\ & !\bin[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin[1]~input_o\,
	datac => \bin[2]~input_o\,
	datad => \bin[0]~input_o\,
	combout => \Mux31~0_combout\);

-- Location: LCCOMB_X18_Y7_N24
\b|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|LessThan0~4_combout\ = (\bin[2]~input_o\ & (((\bin[1]~input_o\ & \bin[0]~input_o\)) # (!\b|contador\(7)))) # (!\bin[2]~input_o\ & (\bin[1]~input_o\ & (!\b|contador\(7) & \bin[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin[1]~input_o\,
	datab => \bin[2]~input_o\,
	datac => \b|contador\(7),
	datad => \bin[0]~input_o\,
	combout => \b|LessThan0~4_combout\);

-- Location: LCCOMB_X18_Y7_N8
\b|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|LessThan0~5_combout\ = (!\b|contador\(9) & (\b|LessThan0~4_combout\ & !\b|contador\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b|contador\(9),
	datac => \b|LessThan0~4_combout\,
	datad => \b|contador\(8),
	combout => \b|LessThan0~5_combout\);

-- Location: LCCOMB_X18_Y7_N16
\b|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|LessThan0~2_combout\ = (\b|contador\(8)) # ((\b|contador\(6)) # (\b|contador\(7) $ (\bin[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b|contador\(8),
	datab => \b|contador\(7),
	datac => \bin[2]~input_o\,
	datad => \b|contador\(6),
	combout => \b|LessThan0~2_combout\);

-- Location: LCCOMB_X18_Y7_N2
\b|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|LessThan0~3_combout\ = (!\b|contador\(9) & (!\b|LessThan0~2_combout\ & (\bin[1]~input_o\ $ (\bin[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin[1]~input_o\,
	datab => \bin[0]~input_o\,
	datac => \b|contador\(9),
	datad => \b|LessThan0~2_combout\,
	combout => \b|LessThan0~3_combout\);

-- Location: LCCOMB_X18_Y7_N20
\b|LessThan0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|LessThan0~15_combout\ = \b|contador\(8) $ (((\bin[1]~input_o\ & (\bin[0]~input_o\ & \bin[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin[1]~input_o\,
	datab => \bin[0]~input_o\,
	datac => \bin[2]~input_o\,
	datad => \b|contador\(8),
	combout => \b|LessThan0~15_combout\);

-- Location: LCCOMB_X18_Y7_N18
\b|LessThan0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|LessThan0~14_combout\ = \bin[2]~input_o\ $ (\b|contador\(7) $ (((\bin[1]~input_o\ & \bin[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin[1]~input_o\,
	datab => \bin[0]~input_o\,
	datac => \bin[2]~input_o\,
	datad => \b|contador\(7),
	combout => \b|LessThan0~14_combout\);

-- Location: LCCOMB_X18_Y7_N26
\b|LessThan0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|LessThan0~16_combout\ = (!\b|LessThan0~15_combout\ & (!\b|contador\(9) & !\b|LessThan0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b|LessThan0~15_combout\,
	datac => \b|contador\(9),
	datad => \b|LessThan0~14_combout\,
	combout => \b|LessThan0~16_combout\);

-- Location: LCCOMB_X18_Y7_N4
\b|LessThan0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|LessThan0~17_combout\ = (\b|LessThan0~16_combout\ & (\bin[1]~input_o\ $ (\bin[0]~input_o\ $ (!\b|contador\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin[1]~input_o\,
	datab => \bin[0]~input_o\,
	datac => \b|LessThan0~16_combout\,
	datad => \b|contador\(6),
	combout => \b|LessThan0~17_combout\);

-- Location: LCCOMB_X18_Y7_N30
\b|LessThan0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|LessThan0~12_combout\ = (\bin[2]~input_o\ & (\b|contador\(5) & ((!\bin[0]~input_o\) # (!\bin[1]~input_o\)))) # (!\bin[2]~input_o\ & (\bin[1]~input_o\ & (\bin[0]~input_o\ & !\b|contador\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin[1]~input_o\,
	datab => \bin[0]~input_o\,
	datac => \bin[2]~input_o\,
	datad => \b|contador\(5),
	combout => \b|LessThan0~12_combout\);

-- Location: LCCOMB_X17_Y7_N4
\b|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|LessThan0~6_combout\ = (\b|contador\(2)) # ((\bin[0]~input_o\ & \b|contador\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin[0]~input_o\,
	datac => \b|contador\(3),
	datad => \b|contador\(2),
	combout => \b|LessThan0~6_combout\);

-- Location: LCCOMB_X17_Y7_N2
\b|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|LessThan0~7_combout\ = (\bin[1]~input_o\ & (\b|contador\(3) & (\bin[2]~input_o\ $ (!\b|contador\(4))))) # (!\bin[1]~input_o\ & (\bin[2]~input_o\ & (!\b|contador\(3) & \b|contador\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin[1]~input_o\,
	datab => \bin[2]~input_o\,
	datac => \b|contador\(3),
	datad => \b|contador\(4),
	combout => \b|LessThan0~7_combout\);

-- Location: LCCOMB_X18_Y7_N14
\b|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|LessThan0~8_combout\ = (\b|contador\(5) & (!\b|LessThan0~6_combout\ & \b|LessThan0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b|contador\(5),
	datac => \b|LessThan0~6_combout\,
	datad => \b|LessThan0~7_combout\,
	combout => \b|LessThan0~8_combout\);

-- Location: LCCOMB_X18_Y7_N22
\b|LessThan0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|LessThan0~10_combout\ = (\b|contador\(5)) # ((!\bin[2]~input_o\ & ((\b|contador\(3)) # (\b|contador\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b|contador\(3),
	datab => \bin[2]~input_o\,
	datac => \b|contador\(4),
	datad => \b|contador\(5),
	combout => \b|LessThan0~10_combout\);

-- Location: LCCOMB_X18_Y7_N12
\b|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|LessThan0~9_combout\ = (\b|contador\(5) & ((\b|contador\(3)) # (\bin[2]~input_o\ $ (\b|contador\(4))))) # (!\b|contador\(5) & (\bin[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b|contador\(5),
	datab => \bin[2]~input_o\,
	datac => \b|contador\(4),
	datad => \b|contador\(3),
	combout => \b|LessThan0~9_combout\);

-- Location: LCCOMB_X18_Y7_N28
\b|LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|LessThan0~11_combout\ = (\b|LessThan0~9_combout\ & (((!\b|LessThan0~10_combout\)))) # (!\b|LessThan0~9_combout\ & ((\bin[1]~input_o\ & (!\bin[0]~input_o\)) # (!\bin[1]~input_o\ & (\bin[0]~input_o\ & !\b|LessThan0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin[1]~input_o\,
	datab => \bin[0]~input_o\,
	datac => \b|LessThan0~10_combout\,
	datad => \b|LessThan0~9_combout\,
	combout => \b|LessThan0~11_combout\);

-- Location: LCCOMB_X18_Y7_N0
\b|LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|LessThan0~13_combout\ = (\b|LessThan0~8_combout\) # ((\b|LessThan0~11_combout\) # ((\b|LessThan0~12_combout\ & !\b|contador\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b|LessThan0~12_combout\,
	datab => \b|contador\(4),
	datac => \b|LessThan0~8_combout\,
	datad => \b|LessThan0~11_combout\,
	combout => \b|LessThan0~13_combout\);

-- Location: LCCOMB_X18_Y7_N6
\b|LessThan0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|LessThan0~18_combout\ = (\b|LessThan0~5_combout\) # ((\b|LessThan0~3_combout\) # ((\b|LessThan0~17_combout\ & \b|LessThan0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b|LessThan0~5_combout\,
	datab => \b|LessThan0~3_combout\,
	datac => \b|LessThan0~17_combout\,
	datad => \b|LessThan0~13_combout\,
	combout => \b|LessThan0~18_combout\);

-- Location: LCCOMB_X19_Y7_N8
\b|LessThan0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|LessThan0~20_cout\ = CARRY(\b|LessThan0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b|LessThan0~18_combout\,
	datad => VCC,
	cout => \b|LessThan0~20_cout\);

-- Location: LCCOMB_X19_Y7_N10
\b|LessThan0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|LessThan0~22_cout\ = CARRY((\Mux31~0_combout\ & ((\b|contador\(10)) # (!\b|LessThan0~20_cout\))) # (!\Mux31~0_combout\ & (\b|contador\(10) & !\b|LessThan0~20_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~0_combout\,
	datab => \b|contador\(10),
	datad => VCC,
	cin => \b|LessThan0~20_cout\,
	cout => \b|LessThan0~22_cout\);

-- Location: LCCOMB_X19_Y7_N12
\b|LessThan0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|LessThan0~24_cout\ = CARRY((\b|contador\(11) & (\Mux30~0_combout\ & !\b|LessThan0~22_cout\)) # (!\b|contador\(11) & ((\Mux30~0_combout\) # (!\b|LessThan0~22_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b|contador\(11),
	datab => \Mux30~0_combout\,
	datad => VCC,
	cin => \b|LessThan0~22_cout\,
	cout => \b|LessThan0~24_cout\);

-- Location: LCCOMB_X19_Y7_N14
\b|LessThan0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|LessThan0~26_cout\ = CARRY((\Mux29~0_combout\ & (\b|contador\(12) & !\b|LessThan0~24_cout\)) # (!\Mux29~0_combout\ & ((\b|contador\(12)) # (!\b|LessThan0~24_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~0_combout\,
	datab => \b|contador\(12),
	datad => VCC,
	cin => \b|LessThan0~24_cout\,
	cout => \b|LessThan0~26_cout\);

-- Location: LCCOMB_X19_Y7_N16
\b|LessThan0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|LessThan0~28_cout\ = CARRY((\Mux28~0_combout\ & ((!\b|LessThan0~26_cout\) # (!\b|contador\(13)))) # (!\Mux28~0_combout\ & (!\b|contador\(13) & !\b|LessThan0~26_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~0_combout\,
	datab => \b|contador\(13),
	datad => VCC,
	cin => \b|LessThan0~26_cout\,
	cout => \b|LessThan0~28_cout\);

-- Location: LCCOMB_X19_Y7_N18
\b|LessThan0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|LessThan0~30_cout\ = CARRY((\Mux27~0_combout\ & ((\b|contador\(14)) # (!\b|LessThan0~28_cout\))) # (!\Mux27~0_combout\ & (\b|contador\(14) & !\b|LessThan0~28_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~0_combout\,
	datab => \b|contador\(14),
	datad => VCC,
	cin => \b|LessThan0~28_cout\,
	cout => \b|LessThan0~30_cout\);

-- Location: LCCOMB_X19_Y7_N20
\b|LessThan0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|LessThan0~32_cout\ = CARRY((\b|contador\(15) & (\Mux26~0_combout\ & !\b|LessThan0~30_cout\)) # (!\b|contador\(15) & ((\Mux26~0_combout\) # (!\b|LessThan0~30_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b|contador\(15),
	datab => \Mux26~0_combout\,
	datad => VCC,
	cin => \b|LessThan0~30_cout\,
	cout => \b|LessThan0~32_cout\);

-- Location: LCCOMB_X19_Y7_N22
\b|LessThan0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|LessThan0~34_cout\ = CARRY((\b|contador\(16) & ((!\b|LessThan0~32_cout\) # (!\bin[0]~input_o\))) # (!\b|contador\(16) & (!\bin[0]~input_o\ & !\b|LessThan0~32_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b|contador\(16),
	datab => \bin[0]~input_o\,
	datad => VCC,
	cin => \b|LessThan0~32_cout\,
	cout => \b|LessThan0~34_cout\);

-- Location: LCCOMB_X19_Y7_N24
\b|LessThan0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|LessThan0~36_cout\ = CARRY((\bin[1]~input_o\ & ((!\b|LessThan0~34_cout\) # (!\b|contador\(17)))) # (!\bin[1]~input_o\ & (!\b|contador\(17) & !\b|LessThan0~34_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin[1]~input_o\,
	datab => \b|contador\(17),
	datad => VCC,
	cin => \b|LessThan0~34_cout\,
	cout => \b|LessThan0~36_cout\);

-- Location: LCCOMB_X19_Y7_N26
\b|LessThan0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|LessThan0~37_combout\ = (\b|contador\(18) & (\b|LessThan0~36_cout\ & \bin[2]~input_o\)) # (!\b|contador\(18) & ((\b|LessThan0~36_cout\) # (\bin[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b|contador\(18),
	datad => \bin[2]~input_o\,
	cin => \b|LessThan0~36_cout\,
	combout => \b|LessThan0~37_combout\);

-- Location: LCCOMB_X19_Y7_N6
\b|contador~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|contador~7_combout\ = (\b|Add0~0_combout\ & ((\b|Equal0~6_combout\) # ((\b|LessThan0~1_combout\ & \b|LessThan0~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b|LessThan0~1_combout\,
	datab => \b|Add0~0_combout\,
	datac => \b|LessThan0~37_combout\,
	datad => \b|Equal0~6_combout\,
	combout => \b|contador~7_combout\);

-- Location: FF_X19_Y7_N7
\b|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \b|contador~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b|contador\(0));

-- Location: FF_X17_Y7_N11
\b|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \b|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b|contador\(1));

-- Location: LCCOMB_X17_Y7_N6
\b|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|Equal0~1_combout\ = (\b|contador\(1)) # ((\b|contador\(2)) # ((\b|contador\(4)) # (\b|contador\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b|contador\(1),
	datab => \b|contador\(2),
	datac => \b|contador\(4),
	datad => \b|contador\(3),
	combout => \b|Equal0~1_combout\);

-- Location: LCCOMB_X17_Y7_N0
\b|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|Equal0~0_combout\ = (\b|contador\(9)) # ((\b|contador\(7)) # ((\b|contador\(6)) # (!\b|contador\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b|contador\(9),
	datab => \b|contador\(7),
	datac => \b|contador\(5),
	datad => \b|contador\(6),
	combout => \b|Equal0~0_combout\);

-- Location: LCCOMB_X21_Y7_N10
\b|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|Equal0~2_combout\ = (\b|Equal0~1_combout\) # (\b|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b|Equal0~1_combout\,
	datad => \b|Equal0~0_combout\,
	combout => \b|Equal0~2_combout\);

-- Location: LCCOMB_X21_Y7_N8
\b|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|Equal0~3_combout\ = ((\b|contador\(0)) # ((\b|contador\(11)) # (\b|contador\(10)))) # (!\b|contador\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b|contador\(8),
	datab => \b|contador\(0),
	datac => \b|contador\(11),
	datad => \b|contador\(10),
	combout => \b|Equal0~3_combout\);

-- Location: LCCOMB_X17_Y6_N28
\b|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|Equal0~4_combout\ = ((\b|contador\(14)) # ((\b|contador\(12)) # (!\b|contador\(15)))) # (!\b|contador\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b|contador\(13),
	datab => \b|contador\(14),
	datac => \b|contador\(15),
	datad => \b|contador\(12),
	combout => \b|Equal0~4_combout\);

-- Location: LCCOMB_X17_Y6_N26
\b|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|Equal0~5_combout\ = ((\b|Equal0~4_combout\) # ((!\b|contador\(17)) # (!\b|contador\(16)))) # (!\b|contador\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b|contador\(18),
	datab => \b|Equal0~4_combout\,
	datac => \b|contador\(16),
	datad => \b|contador\(17),
	combout => \b|Equal0~5_combout\);

-- Location: LCCOMB_X21_Y7_N14
\b|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|Equal0~6_combout\ = (\b|Equal0~2_combout\) # (((\b|Equal0~3_combout\) # (\b|Equal0~5_combout\)) # (!\b|LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b|Equal0~2_combout\,
	datab => \b|LessThan0~1_combout\,
	datac => \b|Equal0~3_combout\,
	datad => \b|Equal0~5_combout\,
	combout => \b|Equal0~6_combout\);

-- Location: LCCOMB_X17_Y6_N12
\b|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|Add0~36_combout\ = (\b|contador\(18) & (\b|Add0~35\ $ (GND))) # (!\b|contador\(18) & (!\b|Add0~35\ & VCC))
-- \b|Add0~37\ = CARRY((\b|contador\(18) & !\b|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b|contador\(18),
	datad => VCC,
	cin => \b|Add0~35\,
	combout => \b|Add0~36_combout\,
	cout => \b|Add0~37\);

-- Location: LCCOMB_X19_Y7_N2
\b|contador~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|contador~0_combout\ = (\b|Add0~36_combout\ & ((\b|Equal0~6_combout\) # ((\b|LessThan0~1_combout\ & \b|LessThan0~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b|LessThan0~1_combout\,
	datab => \b|Equal0~6_combout\,
	datac => \b|LessThan0~37_combout\,
	datad => \b|Add0~36_combout\,
	combout => \b|contador~0_combout\);

-- Location: FF_X19_Y7_N3
\b|contador[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \b|contador~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b|contador\(18));

-- Location: LCCOMB_X17_Y6_N14
\b|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|Add0~38_combout\ = (\b|contador\(19) & (!\b|Add0~37\)) # (!\b|contador\(19) & ((\b|Add0~37\) # (GND)))
-- \b|Add0~39\ = CARRY((!\b|Add0~37\) # (!\b|contador\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b|contador\(19),
	datad => VCC,
	cin => \b|Add0~37\,
	combout => \b|Add0~38_combout\,
	cout => \b|Add0~39\);

-- Location: FF_X17_Y6_N15
\b|contador[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \b|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b|contador\(19));

-- Location: LCCOMB_X17_Y6_N16
\b|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|Add0~40_combout\ = (\b|contador\(20) & (\b|Add0~39\ $ (GND))) # (!\b|contador\(20) & (!\b|Add0~39\ & VCC))
-- \b|Add0~41\ = CARRY((\b|contador\(20) & !\b|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b|contador\(20),
	datad => VCC,
	cin => \b|Add0~39\,
	combout => \b|Add0~40_combout\,
	cout => \b|Add0~41\);

-- Location: FF_X17_Y6_N17
\b|contador[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \b|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b|contador\(20));

-- Location: LCCOMB_X17_Y6_N18
\b|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|Add0~42_combout\ = (\b|contador\(21) & (!\b|Add0~41\)) # (!\b|contador\(21) & ((\b|Add0~41\) # (GND)))
-- \b|Add0~43\ = CARRY((!\b|Add0~41\) # (!\b|contador\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b|contador\(21),
	datad => VCC,
	cin => \b|Add0~41\,
	combout => \b|Add0~42_combout\,
	cout => \b|Add0~43\);

-- Location: FF_X17_Y6_N19
\b|contador[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \b|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b|contador\(21));

-- Location: LCCOMB_X17_Y6_N20
\b|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|Add0~44_combout\ = (\b|contador\(22) & (\b|Add0~43\ $ (GND))) # (!\b|contador\(22) & (!\b|Add0~43\ & VCC))
-- \b|Add0~45\ = CARRY((\b|contador\(22) & !\b|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b|contador\(22),
	datad => VCC,
	cin => \b|Add0~43\,
	combout => \b|Add0~44_combout\,
	cout => \b|Add0~45\);

-- Location: FF_X17_Y6_N21
\b|contador[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \b|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b|contador\(22));

-- Location: LCCOMB_X17_Y6_N22
\b|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|Add0~46_combout\ = \b|contador\(23) $ (\b|Add0~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b|contador\(23),
	cin => \b|Add0~45\,
	combout => \b|Add0~46_combout\);

-- Location: FF_X17_Y6_N23
\b|contador[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \b|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b|contador\(23));

-- Location: LCCOMB_X17_Y6_N24
\b|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|LessThan0~0_combout\ = (!\b|contador\(22) & (!\b|contador\(21) & (!\b|contador\(19) & !\b|contador\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b|contador\(22),
	datab => \b|contador\(21),
	datac => \b|contador\(19),
	datad => \b|contador\(20),
	combout => \b|LessThan0~0_combout\);

-- Location: LCCOMB_X17_Y6_N30
\b|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|LessThan0~1_combout\ = (!\b|contador\(23) & \b|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b|contador\(23),
	datad => \b|LessThan0~0_combout\,
	combout => \b|LessThan0~1_combout\);

-- Location: LCCOMB_X19_Y7_N28
\b|clkout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|clkout~0_combout\ = (\b|LessThan0~1_combout\ & ((\b|LessThan0~37_combout\) # ((!\b|Equal0~6_combout\ & \b|clkout~q\)))) # (!\b|LessThan0~1_combout\ & (!\b|Equal0~6_combout\ & (\b|clkout~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b|LessThan0~1_combout\,
	datab => \b|Equal0~6_combout\,
	datac => \b|clkout~q\,
	datad => \b|LessThan0~37_combout\,
	combout => \b|clkout~0_combout\);

-- Location: FF_X19_Y7_N29
\b|clkout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50M~inputclkctrl_outclk\,
	d => \b|clkout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b|clkout~q\);

ww_rout <= \rout~output_o\;

ww_gout <= \gout~output_o\;

ww_bout <= \bout~output_o\;
END structure;


