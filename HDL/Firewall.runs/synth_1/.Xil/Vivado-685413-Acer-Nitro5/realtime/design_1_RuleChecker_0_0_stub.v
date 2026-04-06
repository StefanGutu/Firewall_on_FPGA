// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "design_1_RuleChecker_0_0,RuleChecker,{}" *) (* CORE_GENERATION_INFO = "design_1_RuleChecker_0_0,RuleChecker,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=RuleChecker,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,IDLE=0000,GET_BRAM_DATA=0001,GET_BRAM_DST_IP=0010,GET_BRAM_SRC_IP=0011,RECIVED_BRAM_DATA=0100,RECIVED_BRAM_DST_IP=0101,RECIVED_BRAM_SRC_IP=0110,COMPARE=0111,RESPONSE=1000,OFFSET_RULE=12}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "RuleChecker,Vivado 2025.1" *) 
module design_1_RuleChecker_0_0(clk, rst, s_header_data_src_ip, 
  s_header_data_dst_ip, s_header_data_dst_port, s_header_data_src_port, 
  s_header_data_protocol, s_header_data_start, s_header_data_end, s_header_data_response, 
  bram_port_addr, bram_port_din, bram_port_dout, bram_port_en, bram_port_web);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 1e+08, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input [31:0]s_header_data_src_ip;
  input [31:0]s_header_data_dst_ip;
  input [15:0]s_header_data_dst_port;
  input [15:0]s_header_data_src_port;
  input [7:0]s_header_data_protocol;
  input s_header_data_start;
  output s_header_data_end;
  output s_header_data_response;
  output [10:0]bram_port_addr;
  output [31:0]bram_port_din;
  input [31:0]bram_port_dout;
  output bram_port_en;
  output bram_port_web;
endmodule
