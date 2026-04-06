// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2026 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:RuleChecker:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_RuleChecker_0_0 (
  clk,
  rst,
  s_header_data_src_ip,
  s_header_data_dst_ip,
  s_header_data_dst_port,
  s_header_data_src_port,
  s_header_data_protocol,
  s_header_data_start,
  s_header_data_end,
  s_header_data_response,
  bram_port_addr,
  bram_port_din,
  bram_port_dout,
  bram_port_en,
  bram_port_web
);

(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 1e+08, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
input wire clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
input wire rst;
input wire [31 : 0] s_header_data_src_ip;
input wire [31 : 0] s_header_data_dst_ip;
input wire [15 : 0] s_header_data_dst_port;
input wire [15 : 0] s_header_data_src_port;
input wire [7 : 0] s_header_data_protocol;
input wire s_header_data_start;
output wire s_header_data_end;
output wire s_header_data_response;
output wire [10 : 0] bram_port_addr;
output wire [31 : 0] bram_port_din;
input wire [31 : 0] bram_port_dout;
output wire bram_port_en;
output wire bram_port_web;

  RuleChecker #(
    .IDLE(4'B0000),
    .GET_BRAM_DATA(4'B0001),
    .GET_BRAM_DST_IP(4'B0010),
    .GET_BRAM_SRC_IP(4'B0011),
    .RECIVED_BRAM_DATA(4'B0100),
    .RECIVED_BRAM_DST_IP(4'B0101),
    .RECIVED_BRAM_SRC_IP(4'B0110),
    .COMPARE(4'B0111),
    .RESPONSE(4'B1000),
    .OFFSET_RULE(12)
  ) inst (
    .clk(clk),
    .rst(rst),
    .s_header_data_src_ip(s_header_data_src_ip),
    .s_header_data_dst_ip(s_header_data_dst_ip),
    .s_header_data_dst_port(s_header_data_dst_port),
    .s_header_data_src_port(s_header_data_src_port),
    .s_header_data_protocol(s_header_data_protocol),
    .s_header_data_start(s_header_data_start),
    .s_header_data_end(s_header_data_end),
    .s_header_data_response(s_header_data_response),
    .bram_port_addr(bram_port_addr),
    .bram_port_din(bram_port_din),
    .bram_port_dout(bram_port_dout),
    .bram_port_en(bram_port_en),
    .bram_port_web(bram_port_web)
  );
endmodule
