-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Thu Jun 18 10:15:02 2020
-- Host        : soccentric-ws2 running 64-bit Ubuntu 20.04 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/pabitra/workspace/zcu102-project/zcu102-master-project/zcu102-master-project.srcs/sources_1/bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_blk_mem_gen_0_0/Base_Zynq_MPSoC_blk_mem_gen_0_0_stub.vhdl
-- Design      : Base_Zynq_MPSoC_blk_mem_gen_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu9eg-ffvb1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Base_Zynq_MPSoC_blk_mem_gen_0_0 is
  Port ( 
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rsta_busy : out STD_LOGIC
  );

end Base_Zynq_MPSoC_blk_mem_gen_0_0;

architecture stub of Base_Zynq_MPSoC_blk_mem_gen_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clka,rsta,ena,wea[3:0],addra[31:0],dina[31:0],douta[31:0],rsta_busy";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "blk_mem_gen_v8_4_3,Vivado 2019.1";
begin
end;
