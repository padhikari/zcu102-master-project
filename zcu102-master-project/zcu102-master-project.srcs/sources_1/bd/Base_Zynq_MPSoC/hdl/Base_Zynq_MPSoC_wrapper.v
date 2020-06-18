//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
//Date        : Thu Jun 18 10:11:19 2020
//Host        : soccentric-ws2 running 64-bit Ubuntu 20.04 LTS
//Command     : generate_target Base_Zynq_MPSoC_wrapper.bd
//Design      : Base_Zynq_MPSoC_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Base_Zynq_MPSoC_wrapper
   (led_8bits_tri_o);
  output [7:0]led_8bits_tri_o;

  wire [7:0]led_8bits_tri_o;

  Base_Zynq_MPSoC Base_Zynq_MPSoC_i
       (.led_8bits_tri_o(led_8bits_tri_o));
endmodule
