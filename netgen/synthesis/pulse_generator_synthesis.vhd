--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.28xd
--  \   \         Application: netgen
--  /   /         Filename: pulse_generator_synthesis.vhd
-- /___/   /\     Timestamp: Thu Oct 11 21:12:46 2012
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm pulse_generator -w -dir netgen/synthesis -ofmt vhdl -sim pulse_generator.ngc pulse_generator_synthesis.vhd 
-- Device	: xc6slx45-3-csg324
-- Input file	: pulse_generator.ngc
-- Output file	: C:\vhdl_fun\netgen\synthesis\pulse_generator_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: pulse_generator
-- Xilinx	: C:\Xilinx\14.2\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity pulse_generator is
  port (
    clock : in STD_LOGIC := 'X'; 
    enable : in STD_LOGIC := 'X'; 
    pulse : out STD_LOGIC; 
    counter_out : out STD_LOGIC_VECTOR ( 27 downto 0 ) 
  );
end pulse_generator;

architecture Structure of pulse_generator is
  signal clock_BUFGP_0 : STD_LOGIC; 
  signal enable_IBUF_1 : STD_LOGIC; 
  signal pulse_OBUF_30 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal Mcount_counter_int_cy_1_rt_120 : STD_LOGIC; 
  signal Mcount_counter_int_cy_2_rt_121 : STD_LOGIC; 
  signal Mcount_counter_int_cy_3_rt_122 : STD_LOGIC; 
  signal Mcount_counter_int_cy_4_rt_123 : STD_LOGIC; 
  signal Mcount_counter_int_cy_5_rt_124 : STD_LOGIC; 
  signal Mcount_counter_int_cy_6_rt_125 : STD_LOGIC; 
  signal Mcount_counter_int_cy_7_rt_126 : STD_LOGIC; 
  signal Mcount_counter_int_cy_8_rt_127 : STD_LOGIC; 
  signal Mcount_counter_int_cy_9_rt_128 : STD_LOGIC; 
  signal Mcount_counter_int_cy_10_rt_129 : STD_LOGIC; 
  signal Mcount_counter_int_cy_11_rt_130 : STD_LOGIC; 
  signal Mcount_counter_int_cy_12_rt_131 : STD_LOGIC; 
  signal Mcount_counter_int_cy_13_rt_132 : STD_LOGIC; 
  signal Mcount_counter_int_cy_14_rt_133 : STD_LOGIC; 
  signal Mcount_counter_int_cy_15_rt_134 : STD_LOGIC; 
  signal Mcount_counter_int_cy_16_rt_135 : STD_LOGIC; 
  signal Mcount_counter_int_cy_17_rt_136 : STD_LOGIC; 
  signal Mcount_counter_int_cy_18_rt_137 : STD_LOGIC; 
  signal Mcount_counter_int_cy_19_rt_138 : STD_LOGIC; 
  signal Mcount_counter_int_cy_20_rt_139 : STD_LOGIC; 
  signal Mcount_counter_int_cy_21_rt_140 : STD_LOGIC; 
  signal Mcount_counter_int_cy_22_rt_141 : STD_LOGIC; 
  signal Mcount_counter_int_cy_23_rt_142 : STD_LOGIC; 
  signal Mcount_counter_int_cy_24_rt_143 : STD_LOGIC; 
  signal Mcount_counter_int_cy_25_rt_144 : STD_LOGIC; 
  signal Mcount_counter_int_cy_26_rt_145 : STD_LOGIC; 
  signal Mcount_counter_int_xor_27_rt_146 : STD_LOGIC; 
  signal counter_int : STD_LOGIC_VECTOR ( 27 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 27 downto 0 ); 
  signal Mcount_counter_int_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Mcount_counter_int_cy : STD_LOGIC_VECTOR ( 26 downto 0 ); 
begin
  XST_VCC : VCC
    port map (
      P => N0
    );
  XST_GND : GND
    port map (
      G => N1
    );
  counter_int_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_BUFGP_0,
      D => Result(0),
      Q => counter_int(0)
    );
  counter_int_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_BUFGP_0,
      D => Result(1),
      Q => counter_int(1)
    );
  counter_int_2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_BUFGP_0,
      D => Result(2),
      Q => counter_int(2)
    );
  counter_int_3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_BUFGP_0,
      D => Result(3),
      Q => counter_int(3)
    );
  counter_int_4 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_BUFGP_0,
      D => Result(4),
      Q => counter_int(4)
    );
  counter_int_5 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_BUFGP_0,
      D => Result(5),
      Q => counter_int(5)
    );
  counter_int_6 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_BUFGP_0,
      D => Result(6),
      Q => counter_int(6)
    );
  counter_int_7 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_BUFGP_0,
      D => Result(7),
      Q => counter_int(7)
    );
  counter_int_8 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_BUFGP_0,
      D => Result(8),
      Q => counter_int(8)
    );
  counter_int_9 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_BUFGP_0,
      D => Result(9),
      Q => counter_int(9)
    );
  counter_int_10 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_BUFGP_0,
      D => Result(10),
      Q => counter_int(10)
    );
  counter_int_11 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_BUFGP_0,
      D => Result(11),
      Q => counter_int(11)
    );
  counter_int_12 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_BUFGP_0,
      D => Result(12),
      Q => counter_int(12)
    );
  counter_int_13 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_BUFGP_0,
      D => Result(13),
      Q => counter_int(13)
    );
  counter_int_14 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_BUFGP_0,
      D => Result(14),
      Q => counter_int(14)
    );
  counter_int_15 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_BUFGP_0,
      D => Result(15),
      Q => counter_int(15)
    );
  counter_int_16 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_BUFGP_0,
      D => Result(16),
      Q => counter_int(16)
    );
  counter_int_17 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_BUFGP_0,
      D => Result(17),
      Q => counter_int(17)
    );
  counter_int_18 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_BUFGP_0,
      D => Result(18),
      Q => counter_int(18)
    );
  counter_int_19 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_BUFGP_0,
      D => Result(19),
      Q => counter_int(19)
    );
  counter_int_20 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_BUFGP_0,
      D => Result(20),
      Q => counter_int(20)
    );
  counter_int_21 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_BUFGP_0,
      D => Result(21),
      Q => counter_int(21)
    );
  counter_int_22 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_BUFGP_0,
      D => Result(22),
      Q => counter_int(22)
    );
  counter_int_23 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_BUFGP_0,
      D => Result(23),
      Q => counter_int(23)
    );
  counter_int_24 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_BUFGP_0,
      D => Result(24),
      Q => counter_int(24)
    );
  counter_int_25 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_BUFGP_0,
      D => Result(25),
      Q => counter_int(25)
    );
  counter_int_26 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_BUFGP_0,
      D => Result(26),
      Q => counter_int(26)
    );
  counter_int_27 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_BUFGP_0,
      D => Result(27),
      Q => counter_int(27)
    );
  Mcount_counter_int_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcount_counter_int_lut(0),
      O => Mcount_counter_int_cy(0)
    );
  Mcount_counter_int_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => Mcount_counter_int_lut(0),
      O => Result(0)
    );
  Mcount_counter_int_cy_1_Q : MUXCY
    port map (
      CI => Mcount_counter_int_cy(0),
      DI => N1,
      S => Mcount_counter_int_cy_1_rt_120,
      O => Mcount_counter_int_cy(1)
    );
  Mcount_counter_int_xor_1_Q : XORCY
    port map (
      CI => Mcount_counter_int_cy(0),
      LI => Mcount_counter_int_cy_1_rt_120,
      O => Result(1)
    );
  Mcount_counter_int_cy_2_Q : MUXCY
    port map (
      CI => Mcount_counter_int_cy(1),
      DI => N1,
      S => Mcount_counter_int_cy_2_rt_121,
      O => Mcount_counter_int_cy(2)
    );
  Mcount_counter_int_xor_2_Q : XORCY
    port map (
      CI => Mcount_counter_int_cy(1),
      LI => Mcount_counter_int_cy_2_rt_121,
      O => Result(2)
    );
  Mcount_counter_int_cy_3_Q : MUXCY
    port map (
      CI => Mcount_counter_int_cy(2),
      DI => N1,
      S => Mcount_counter_int_cy_3_rt_122,
      O => Mcount_counter_int_cy(3)
    );
  Mcount_counter_int_xor_3_Q : XORCY
    port map (
      CI => Mcount_counter_int_cy(2),
      LI => Mcount_counter_int_cy_3_rt_122,
      O => Result(3)
    );
  Mcount_counter_int_cy_4_Q : MUXCY
    port map (
      CI => Mcount_counter_int_cy(3),
      DI => N1,
      S => Mcount_counter_int_cy_4_rt_123,
      O => Mcount_counter_int_cy(4)
    );
  Mcount_counter_int_xor_4_Q : XORCY
    port map (
      CI => Mcount_counter_int_cy(3),
      LI => Mcount_counter_int_cy_4_rt_123,
      O => Result(4)
    );
  Mcount_counter_int_cy_5_Q : MUXCY
    port map (
      CI => Mcount_counter_int_cy(4),
      DI => N1,
      S => Mcount_counter_int_cy_5_rt_124,
      O => Mcount_counter_int_cy(5)
    );
  Mcount_counter_int_xor_5_Q : XORCY
    port map (
      CI => Mcount_counter_int_cy(4),
      LI => Mcount_counter_int_cy_5_rt_124,
      O => Result(5)
    );
  Mcount_counter_int_cy_6_Q : MUXCY
    port map (
      CI => Mcount_counter_int_cy(5),
      DI => N1,
      S => Mcount_counter_int_cy_6_rt_125,
      O => Mcount_counter_int_cy(6)
    );
  Mcount_counter_int_xor_6_Q : XORCY
    port map (
      CI => Mcount_counter_int_cy(5),
      LI => Mcount_counter_int_cy_6_rt_125,
      O => Result(6)
    );
  Mcount_counter_int_cy_7_Q : MUXCY
    port map (
      CI => Mcount_counter_int_cy(6),
      DI => N1,
      S => Mcount_counter_int_cy_7_rt_126,
      O => Mcount_counter_int_cy(7)
    );
  Mcount_counter_int_xor_7_Q : XORCY
    port map (
      CI => Mcount_counter_int_cy(6),
      LI => Mcount_counter_int_cy_7_rt_126,
      O => Result(7)
    );
  Mcount_counter_int_cy_8_Q : MUXCY
    port map (
      CI => Mcount_counter_int_cy(7),
      DI => N1,
      S => Mcount_counter_int_cy_8_rt_127,
      O => Mcount_counter_int_cy(8)
    );
  Mcount_counter_int_xor_8_Q : XORCY
    port map (
      CI => Mcount_counter_int_cy(7),
      LI => Mcount_counter_int_cy_8_rt_127,
      O => Result(8)
    );
  Mcount_counter_int_cy_9_Q : MUXCY
    port map (
      CI => Mcount_counter_int_cy(8),
      DI => N1,
      S => Mcount_counter_int_cy_9_rt_128,
      O => Mcount_counter_int_cy(9)
    );
  Mcount_counter_int_xor_9_Q : XORCY
    port map (
      CI => Mcount_counter_int_cy(8),
      LI => Mcount_counter_int_cy_9_rt_128,
      O => Result(9)
    );
  Mcount_counter_int_cy_10_Q : MUXCY
    port map (
      CI => Mcount_counter_int_cy(9),
      DI => N1,
      S => Mcount_counter_int_cy_10_rt_129,
      O => Mcount_counter_int_cy(10)
    );
  Mcount_counter_int_xor_10_Q : XORCY
    port map (
      CI => Mcount_counter_int_cy(9),
      LI => Mcount_counter_int_cy_10_rt_129,
      O => Result(10)
    );
  Mcount_counter_int_cy_11_Q : MUXCY
    port map (
      CI => Mcount_counter_int_cy(10),
      DI => N1,
      S => Mcount_counter_int_cy_11_rt_130,
      O => Mcount_counter_int_cy(11)
    );
  Mcount_counter_int_xor_11_Q : XORCY
    port map (
      CI => Mcount_counter_int_cy(10),
      LI => Mcount_counter_int_cy_11_rt_130,
      O => Result(11)
    );
  Mcount_counter_int_cy_12_Q : MUXCY
    port map (
      CI => Mcount_counter_int_cy(11),
      DI => N1,
      S => Mcount_counter_int_cy_12_rt_131,
      O => Mcount_counter_int_cy(12)
    );
  Mcount_counter_int_xor_12_Q : XORCY
    port map (
      CI => Mcount_counter_int_cy(11),
      LI => Mcount_counter_int_cy_12_rt_131,
      O => Result(12)
    );
  Mcount_counter_int_cy_13_Q : MUXCY
    port map (
      CI => Mcount_counter_int_cy(12),
      DI => N1,
      S => Mcount_counter_int_cy_13_rt_132,
      O => Mcount_counter_int_cy(13)
    );
  Mcount_counter_int_xor_13_Q : XORCY
    port map (
      CI => Mcount_counter_int_cy(12),
      LI => Mcount_counter_int_cy_13_rt_132,
      O => Result(13)
    );
  Mcount_counter_int_cy_14_Q : MUXCY
    port map (
      CI => Mcount_counter_int_cy(13),
      DI => N1,
      S => Mcount_counter_int_cy_14_rt_133,
      O => Mcount_counter_int_cy(14)
    );
  Mcount_counter_int_xor_14_Q : XORCY
    port map (
      CI => Mcount_counter_int_cy(13),
      LI => Mcount_counter_int_cy_14_rt_133,
      O => Result(14)
    );
  Mcount_counter_int_cy_15_Q : MUXCY
    port map (
      CI => Mcount_counter_int_cy(14),
      DI => N1,
      S => Mcount_counter_int_cy_15_rt_134,
      O => Mcount_counter_int_cy(15)
    );
  Mcount_counter_int_xor_15_Q : XORCY
    port map (
      CI => Mcount_counter_int_cy(14),
      LI => Mcount_counter_int_cy_15_rt_134,
      O => Result(15)
    );
  Mcount_counter_int_cy_16_Q : MUXCY
    port map (
      CI => Mcount_counter_int_cy(15),
      DI => N1,
      S => Mcount_counter_int_cy_16_rt_135,
      O => Mcount_counter_int_cy(16)
    );
  Mcount_counter_int_xor_16_Q : XORCY
    port map (
      CI => Mcount_counter_int_cy(15),
      LI => Mcount_counter_int_cy_16_rt_135,
      O => Result(16)
    );
  Mcount_counter_int_cy_17_Q : MUXCY
    port map (
      CI => Mcount_counter_int_cy(16),
      DI => N1,
      S => Mcount_counter_int_cy_17_rt_136,
      O => Mcount_counter_int_cy(17)
    );
  Mcount_counter_int_xor_17_Q : XORCY
    port map (
      CI => Mcount_counter_int_cy(16),
      LI => Mcount_counter_int_cy_17_rt_136,
      O => Result(17)
    );
  Mcount_counter_int_cy_18_Q : MUXCY
    port map (
      CI => Mcount_counter_int_cy(17),
      DI => N1,
      S => Mcount_counter_int_cy_18_rt_137,
      O => Mcount_counter_int_cy(18)
    );
  Mcount_counter_int_xor_18_Q : XORCY
    port map (
      CI => Mcount_counter_int_cy(17),
      LI => Mcount_counter_int_cy_18_rt_137,
      O => Result(18)
    );
  Mcount_counter_int_cy_19_Q : MUXCY
    port map (
      CI => Mcount_counter_int_cy(18),
      DI => N1,
      S => Mcount_counter_int_cy_19_rt_138,
      O => Mcount_counter_int_cy(19)
    );
  Mcount_counter_int_xor_19_Q : XORCY
    port map (
      CI => Mcount_counter_int_cy(18),
      LI => Mcount_counter_int_cy_19_rt_138,
      O => Result(19)
    );
  Mcount_counter_int_cy_20_Q : MUXCY
    port map (
      CI => Mcount_counter_int_cy(19),
      DI => N1,
      S => Mcount_counter_int_cy_20_rt_139,
      O => Mcount_counter_int_cy(20)
    );
  Mcount_counter_int_xor_20_Q : XORCY
    port map (
      CI => Mcount_counter_int_cy(19),
      LI => Mcount_counter_int_cy_20_rt_139,
      O => Result(20)
    );
  Mcount_counter_int_cy_21_Q : MUXCY
    port map (
      CI => Mcount_counter_int_cy(20),
      DI => N1,
      S => Mcount_counter_int_cy_21_rt_140,
      O => Mcount_counter_int_cy(21)
    );
  Mcount_counter_int_xor_21_Q : XORCY
    port map (
      CI => Mcount_counter_int_cy(20),
      LI => Mcount_counter_int_cy_21_rt_140,
      O => Result(21)
    );
  Mcount_counter_int_cy_22_Q : MUXCY
    port map (
      CI => Mcount_counter_int_cy(21),
      DI => N1,
      S => Mcount_counter_int_cy_22_rt_141,
      O => Mcount_counter_int_cy(22)
    );
  Mcount_counter_int_xor_22_Q : XORCY
    port map (
      CI => Mcount_counter_int_cy(21),
      LI => Mcount_counter_int_cy_22_rt_141,
      O => Result(22)
    );
  Mcount_counter_int_cy_23_Q : MUXCY
    port map (
      CI => Mcount_counter_int_cy(22),
      DI => N1,
      S => Mcount_counter_int_cy_23_rt_142,
      O => Mcount_counter_int_cy(23)
    );
  Mcount_counter_int_xor_23_Q : XORCY
    port map (
      CI => Mcount_counter_int_cy(22),
      LI => Mcount_counter_int_cy_23_rt_142,
      O => Result(23)
    );
  Mcount_counter_int_cy_24_Q : MUXCY
    port map (
      CI => Mcount_counter_int_cy(23),
      DI => N1,
      S => Mcount_counter_int_cy_24_rt_143,
      O => Mcount_counter_int_cy(24)
    );
  Mcount_counter_int_xor_24_Q : XORCY
    port map (
      CI => Mcount_counter_int_cy(23),
      LI => Mcount_counter_int_cy_24_rt_143,
      O => Result(24)
    );
  Mcount_counter_int_cy_25_Q : MUXCY
    port map (
      CI => Mcount_counter_int_cy(24),
      DI => N1,
      S => Mcount_counter_int_cy_25_rt_144,
      O => Mcount_counter_int_cy(25)
    );
  Mcount_counter_int_xor_25_Q : XORCY
    port map (
      CI => Mcount_counter_int_cy(24),
      LI => Mcount_counter_int_cy_25_rt_144,
      O => Result(25)
    );
  Mcount_counter_int_cy_26_Q : MUXCY
    port map (
      CI => Mcount_counter_int_cy(25),
      DI => N1,
      S => Mcount_counter_int_cy_26_rt_145,
      O => Mcount_counter_int_cy(26)
    );
  Mcount_counter_int_xor_26_Q : XORCY
    port map (
      CI => Mcount_counter_int_cy(25),
      LI => Mcount_counter_int_cy_26_rt_145,
      O => Result(26)
    );
  Mcount_counter_int_xor_27_Q : XORCY
    port map (
      CI => Mcount_counter_int_cy(26),
      LI => Mcount_counter_int_xor_27_rt_146,
      O => Result(27)
    );
  Mmux_pulse11 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => enable_IBUF_1,
      I1 => counter_int(27),
      I2 => counter_int(26),
      O => pulse_OBUF_30
    );
  enable_IBUF : IBUF
    port map (
      I => enable,
      O => enable_IBUF_1
    );
  counter_out_27_OBUF : OBUF
    port map (
      I => counter_int(27),
      O => counter_out(27)
    );
  counter_out_26_OBUF : OBUF
    port map (
      I => counter_int(26),
      O => counter_out(26)
    );
  counter_out_25_OBUF : OBUF
    port map (
      I => counter_int(25),
      O => counter_out(25)
    );
  counter_out_24_OBUF : OBUF
    port map (
      I => counter_int(24),
      O => counter_out(24)
    );
  counter_out_23_OBUF : OBUF
    port map (
      I => counter_int(23),
      O => counter_out(23)
    );
  counter_out_22_OBUF : OBUF
    port map (
      I => counter_int(22),
      O => counter_out(22)
    );
  counter_out_21_OBUF : OBUF
    port map (
      I => counter_int(21),
      O => counter_out(21)
    );
  counter_out_20_OBUF : OBUF
    port map (
      I => counter_int(20),
      O => counter_out(20)
    );
  counter_out_19_OBUF : OBUF
    port map (
      I => counter_int(19),
      O => counter_out(19)
    );
  counter_out_18_OBUF : OBUF
    port map (
      I => counter_int(18),
      O => counter_out(18)
    );
  counter_out_17_OBUF : OBUF
    port map (
      I => counter_int(17),
      O => counter_out(17)
    );
  counter_out_16_OBUF : OBUF
    port map (
      I => counter_int(16),
      O => counter_out(16)
    );
  counter_out_15_OBUF : OBUF
    port map (
      I => counter_int(15),
      O => counter_out(15)
    );
  counter_out_14_OBUF : OBUF
    port map (
      I => counter_int(14),
      O => counter_out(14)
    );
  counter_out_13_OBUF : OBUF
    port map (
      I => counter_int(13),
      O => counter_out(13)
    );
  counter_out_12_OBUF : OBUF
    port map (
      I => counter_int(12),
      O => counter_out(12)
    );
  counter_out_11_OBUF : OBUF
    port map (
      I => counter_int(11),
      O => counter_out(11)
    );
  counter_out_10_OBUF : OBUF
    port map (
      I => counter_int(10),
      O => counter_out(10)
    );
  counter_out_9_OBUF : OBUF
    port map (
      I => counter_int(9),
      O => counter_out(9)
    );
  counter_out_8_OBUF : OBUF
    port map (
      I => counter_int(8),
      O => counter_out(8)
    );
  counter_out_7_OBUF : OBUF
    port map (
      I => counter_int(7),
      O => counter_out(7)
    );
  counter_out_6_OBUF : OBUF
    port map (
      I => counter_int(6),
      O => counter_out(6)
    );
  counter_out_5_OBUF : OBUF
    port map (
      I => counter_int(5),
      O => counter_out(5)
    );
  counter_out_4_OBUF : OBUF
    port map (
      I => counter_int(4),
      O => counter_out(4)
    );
  counter_out_3_OBUF : OBUF
    port map (
      I => counter_int(3),
      O => counter_out(3)
    );
  counter_out_2_OBUF : OBUF
    port map (
      I => counter_int(2),
      O => counter_out(2)
    );
  counter_out_1_OBUF : OBUF
    port map (
      I => counter_int(1),
      O => counter_out(1)
    );
  counter_out_0_OBUF : OBUF
    port map (
      I => counter_int(0),
      O => counter_out(0)
    );
  pulse_OBUF : OBUF
    port map (
      I => pulse_OBUF_30,
      O => pulse
    );
  Mcount_counter_int_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_int(1),
      O => Mcount_counter_int_cy_1_rt_120
    );
  Mcount_counter_int_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_int(2),
      O => Mcount_counter_int_cy_2_rt_121
    );
  Mcount_counter_int_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_int(3),
      O => Mcount_counter_int_cy_3_rt_122
    );
  Mcount_counter_int_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_int(4),
      O => Mcount_counter_int_cy_4_rt_123
    );
  Mcount_counter_int_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_int(5),
      O => Mcount_counter_int_cy_5_rt_124
    );
  Mcount_counter_int_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_int(6),
      O => Mcount_counter_int_cy_6_rt_125
    );
  Mcount_counter_int_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_int(7),
      O => Mcount_counter_int_cy_7_rt_126
    );
  Mcount_counter_int_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_int(8),
      O => Mcount_counter_int_cy_8_rt_127
    );
  Mcount_counter_int_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_int(9),
      O => Mcount_counter_int_cy_9_rt_128
    );
  Mcount_counter_int_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_int(10),
      O => Mcount_counter_int_cy_10_rt_129
    );
  Mcount_counter_int_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_int(11),
      O => Mcount_counter_int_cy_11_rt_130
    );
  Mcount_counter_int_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_int(12),
      O => Mcount_counter_int_cy_12_rt_131
    );
  Mcount_counter_int_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_int(13),
      O => Mcount_counter_int_cy_13_rt_132
    );
  Mcount_counter_int_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_int(14),
      O => Mcount_counter_int_cy_14_rt_133
    );
  Mcount_counter_int_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_int(15),
      O => Mcount_counter_int_cy_15_rt_134
    );
  Mcount_counter_int_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_int(16),
      O => Mcount_counter_int_cy_16_rt_135
    );
  Mcount_counter_int_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_int(17),
      O => Mcount_counter_int_cy_17_rt_136
    );
  Mcount_counter_int_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_int(18),
      O => Mcount_counter_int_cy_18_rt_137
    );
  Mcount_counter_int_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_int(19),
      O => Mcount_counter_int_cy_19_rt_138
    );
  Mcount_counter_int_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_int(20),
      O => Mcount_counter_int_cy_20_rt_139
    );
  Mcount_counter_int_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_int(21),
      O => Mcount_counter_int_cy_21_rt_140
    );
  Mcount_counter_int_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_int(22),
      O => Mcount_counter_int_cy_22_rt_141
    );
  Mcount_counter_int_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_int(23),
      O => Mcount_counter_int_cy_23_rt_142
    );
  Mcount_counter_int_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_int(24),
      O => Mcount_counter_int_cy_24_rt_143
    );
  Mcount_counter_int_cy_25_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_int(25),
      O => Mcount_counter_int_cy_25_rt_144
    );
  Mcount_counter_int_cy_26_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_int(26),
      O => Mcount_counter_int_cy_26_rt_145
    );
  Mcount_counter_int_xor_27_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_int(27),
      O => Mcount_counter_int_xor_27_rt_146
    );
  clock_BUFGP : BUFGP
    port map (
      I => clock,
      O => clock_BUFGP_0
    );
  Mcount_counter_int_lut_0_INV_0 : INV
    port map (
      I => counter_int(0),
      O => Mcount_counter_int_lut(0)
    );

end Structure;

