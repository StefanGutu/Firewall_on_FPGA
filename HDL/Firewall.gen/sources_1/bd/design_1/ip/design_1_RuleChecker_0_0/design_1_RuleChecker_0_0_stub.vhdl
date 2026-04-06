-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
-- Date        : Sat Apr  4 19:44:30 2026
-- Host        : Acer-Nitro5 running 64-bit Ubuntu 24.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/paxl/Projects/Licenta/Vivado/AXI_DMA_AND_BRAM/AXI_DMA_TEST/AXI_DMA_TEST.gen/sources_1/bd/design_1/ip/design_1_RuleChecker_0_0/design_1_RuleChecker_0_0_stub.vhdl
-- Design      : design_1_RuleChecker_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_RuleChecker_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    s_header_data_src_ip : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_header_data_dst_ip : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_header_data_dst_port : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_header_data_src_port : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_header_data_protocol : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_header_data_start : in STD_LOGIC;
    s_header_data_end : out STD_LOGIC;
    s_header_data_response : out STD_LOGIC;
    bram_port_addr : out STD_LOGIC_VECTOR ( 10 downto 0 );
    bram_port_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_port_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_port_en : out STD_LOGIC;
    bram_port_web : out STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_RuleChecker_0_0 : entity is "design_1_RuleChecker_0_0,RuleChecker,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1_RuleChecker_0_0 : entity is "design_1_RuleChecker_0_0,RuleChecker,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=RuleChecker,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,IDLE=0000,GET_BRAM_DATA=0001,GET_BRAM_DST_IP=0010,GET_BRAM_SRC_IP=0011,RECIVED_BRAM_DATA=0100,RECIVED_BRAM_DST_IP=0101,RECIVED_BRAM_SRC_IP=0110,COMPARE=0111,RESPONSE=1000,OFFSET_RULE=12}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_RuleChecker_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_RuleChecker_0_0 : entity is "module_ref";
end design_1_RuleChecker_0_0;

architecture stub of design_1_RuleChecker_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "clk,rst,s_header_data_src_ip[31:0],s_header_data_dst_ip[31:0],s_header_data_dst_port[15:0],s_header_data_src_port[15:0],s_header_data_protocol[7:0],s_header_data_start,s_header_data_end,s_header_data_response,bram_port_addr[10:0],bram_port_din[31:0],bram_port_dout[31:0],bram_port_en,bram_port_web";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 1e+08, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_MODE of rst : signal is "slave";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "RuleChecker,Vivado 2025.1";
begin
end;
