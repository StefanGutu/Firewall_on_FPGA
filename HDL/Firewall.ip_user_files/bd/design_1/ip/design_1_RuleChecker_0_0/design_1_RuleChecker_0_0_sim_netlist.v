// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Mon Jan 26 16:09:08 2026
// Host        : Acer-Nitro5 running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/paxl/Projects/Licenta/Vivado/AXI_DMA_AND_BRAM/AXI_DMA_TEST/AXI_DMA_TEST.gen/sources_1/bd/design_1/ip/design_1_RuleChecker_0_0/design_1_RuleChecker_0_0_sim_netlist.v
// Design      : design_1_RuleChecker_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_RuleChecker_0_0,RuleChecker,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "RuleChecker,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module design_1_RuleChecker_0_0
   (clk,
    rst,
    s_header_data_src_ip,
    s_header_data_dst_ip,
    s_header_data_dst_port,
    s_header_data_protocol,
    s_header_data_start,
    s_header_data_end,
    s_header_data_response,
    bram_port_addr,
    bram_port_din,
    bram_port_dout,
    bram_port_en,
    bram_port_web);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input [31:0]s_header_data_src_ip;
  input [31:0]s_header_data_dst_ip;
  input [15:0]s_header_data_dst_port;
  input [7:0]s_header_data_protocol;
  input s_header_data_start;
  output s_header_data_end;
  output s_header_data_response;
  output [10:0]bram_port_addr;
  output [31:0]bram_port_din;
  input [31:0]bram_port_dout;
  output bram_port_en;
  output bram_port_web;

  wire \<const0> ;
  wire [9:2]\^bram_port_addr ;
  wire [31:0]bram_port_dout;
  wire bram_port_en;
  wire clk;
  wire rst;
  wire [31:0]s_header_data_dst_ip;
  wire [15:0]s_header_data_dst_port;
  wire s_header_data_end;
  wire s_header_data_response;
  wire [31:0]s_header_data_src_ip;
  wire s_header_data_start;

  assign bram_port_addr[10] = \<const0> ;
  assign bram_port_addr[9:2] = \^bram_port_addr [9:2];
  assign bram_port_addr[1] = \<const0> ;
  assign bram_port_addr[0] = \<const0> ;
  assign bram_port_din[31] = \<const0> ;
  assign bram_port_din[30] = \<const0> ;
  assign bram_port_din[29] = \<const0> ;
  assign bram_port_din[28] = \<const0> ;
  assign bram_port_din[27] = \<const0> ;
  assign bram_port_din[26] = \<const0> ;
  assign bram_port_din[25] = \<const0> ;
  assign bram_port_din[24] = \<const0> ;
  assign bram_port_din[23] = \<const0> ;
  assign bram_port_din[22] = \<const0> ;
  assign bram_port_din[21] = \<const0> ;
  assign bram_port_din[20] = \<const0> ;
  assign bram_port_din[19] = \<const0> ;
  assign bram_port_din[18] = \<const0> ;
  assign bram_port_din[17] = \<const0> ;
  assign bram_port_din[16] = \<const0> ;
  assign bram_port_din[15] = \<const0> ;
  assign bram_port_din[14] = \<const0> ;
  assign bram_port_din[13] = \<const0> ;
  assign bram_port_din[12] = \<const0> ;
  assign bram_port_din[11] = \<const0> ;
  assign bram_port_din[10] = \<const0> ;
  assign bram_port_din[9] = \<const0> ;
  assign bram_port_din[8] = \<const0> ;
  assign bram_port_din[7] = \<const0> ;
  assign bram_port_din[6] = \<const0> ;
  assign bram_port_din[5] = \<const0> ;
  assign bram_port_din[4] = \<const0> ;
  assign bram_port_din[3] = \<const0> ;
  assign bram_port_din[2] = \<const0> ;
  assign bram_port_din[1] = \<const0> ;
  assign bram_port_din[0] = \<const0> ;
  assign bram_port_web = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_RuleChecker_0_0_RuleChecker inst
       (.bram_port_addr(\^bram_port_addr ),
        .bram_port_dout(bram_port_dout),
        .bram_port_en(bram_port_en),
        .clk(clk),
        .rst(rst),
        .s_header_data_dst_ip(s_header_data_dst_ip),
        .s_header_data_dst_port(s_header_data_dst_port),
        .s_header_data_end(s_header_data_end),
        .s_header_data_response(s_header_data_response),
        .s_header_data_src_ip(s_header_data_src_ip),
        .s_header_data_start(s_header_data_start));
endmodule

(* ORIG_REF_NAME = "RuleChecker" *) 
module design_1_RuleChecker_0_0_RuleChecker
   (s_header_data_end,
    s_header_data_response,
    bram_port_addr,
    bram_port_en,
    s_header_data_start,
    s_header_data_dst_port,
    clk,
    bram_port_dout,
    rst,
    s_header_data_dst_ip,
    s_header_data_src_ip);
  output s_header_data_end;
  output s_header_data_response;
  output [7:0]bram_port_addr;
  output bram_port_en;
  input s_header_data_start;
  input [15:0]s_header_data_dst_port;
  input clk;
  input [31:0]bram_port_dout;
  input rst;
  input [31:0]s_header_data_dst_ip;
  input [31:0]s_header_data_src_ip;

  wire \FSM_sequential_next_state_reg[0]_i_1_n_0 ;
  wire \FSM_sequential_next_state_reg[0]_i_2_n_0 ;
  wire \FSM_sequential_next_state_reg[2]_i_1_n_0 ;
  wire \FSM_sequential_next_state_reg[3]_i_2_n_0 ;
  wire \bram_data[15]_i_1_n_0 ;
  wire \bram_data_reg_n_0_[0] ;
  wire \bram_data_reg_n_0_[10] ;
  wire \bram_data_reg_n_0_[11] ;
  wire \bram_data_reg_n_0_[12] ;
  wire \bram_data_reg_n_0_[13] ;
  wire \bram_data_reg_n_0_[14] ;
  wire \bram_data_reg_n_0_[15] ;
  wire \bram_data_reg_n_0_[1] ;
  wire \bram_data_reg_n_0_[2] ;
  wire \bram_data_reg_n_0_[3] ;
  wire \bram_data_reg_n_0_[4] ;
  wire \bram_data_reg_n_0_[5] ;
  wire \bram_data_reg_n_0_[6] ;
  wire \bram_data_reg_n_0_[7] ;
  wire \bram_data_reg_n_0_[8] ;
  wire \bram_data_reg_n_0_[9] ;
  wire [31:0]bram_dst_ip;
  wire \bram_dst_ip[31]_i_1_n_0 ;
  wire [7:0]bram_port_addr;
  wire [9:2]bram_port_addr0;
  wire bram_port_addr0_carry__0_i_1_n_0;
  wire bram_port_addr0_carry__0_i_2_n_0;
  wire bram_port_addr0_carry__0_i_3_n_0;
  wire bram_port_addr0_carry__0_i_4_n_0;
  wire bram_port_addr0_carry__0_n_1;
  wire bram_port_addr0_carry__0_n_2;
  wire bram_port_addr0_carry__0_n_3;
  wire bram_port_addr0_carry_i_1_n_0;
  wire bram_port_addr0_carry_i_2_n_0;
  wire bram_port_addr0_carry_i_3_n_0;
  wire bram_port_addr0_carry_n_0;
  wire bram_port_addr0_carry_n_1;
  wire bram_port_addr0_carry_n_2;
  wire bram_port_addr0_carry_n_3;
  wire \bram_port_addr[2]_i_1_n_0 ;
  wire \bram_port_addr[3]_i_1_n_0 ;
  wire \bram_port_addr[4]_i_1_n_0 ;
  wire \bram_port_addr[5]_i_1_n_0 ;
  wire \bram_port_addr[6]_i_1_n_0 ;
  wire \bram_port_addr[7]_i_1_n_0 ;
  wire \bram_port_addr[8]_i_1_n_0 ;
  wire \bram_port_addr[9]_i_1_n_0 ;
  wire \bram_port_addr[9]_i_2_n_0 ;
  wire \bram_port_addr[9]_i_3_n_0 ;
  wire \bram_port_addr[9]_i_4_n_0 ;
  wire [31:0]bram_port_dout;
  wire bram_port_en;
  wire bram_port_en_i_1_n_0;
  wire [31:0]bram_src_ip;
  wire \bram_src_ip[31]_i_1_n_0 ;
  wire clk;
  wire \counter_pos_bram[0]_i_1_n_0 ;
  wire \counter_pos_bram[1]_i_1_n_0 ;
  wire \counter_pos_bram[2]_i_1_n_0 ;
  wire \counter_pos_bram[3]_i_1_n_0 ;
  wire \counter_pos_bram[4]_i_1_n_0 ;
  wire \counter_pos_bram[4]_i_2_n_0 ;
  wire \counter_pos_bram[5]_i_1_n_0 ;
  wire \counter_pos_bram[5]_i_2_n_0 ;
  wire \counter_pos_bram[5]_i_3_n_0 ;
  wire \counter_pos_bram[5]_i_4_n_0 ;
  wire \counter_pos_bram[5]_i_5_n_0 ;
  wire \counter_pos_bram[5]_i_6_n_0 ;
  wire \counter_pos_bram_reg_n_0_[0] ;
  wire \counter_pos_bram_reg_n_0_[1] ;
  wire \counter_pos_bram_reg_n_0_[2] ;
  wire \counter_pos_bram_reg_n_0_[3] ;
  wire \counter_pos_bram_reg_n_0_[4] ;
  wire \counter_pos_bram_reg_n_0_[5] ;
  wire [3:0]current_state;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire [3:0]next_state;
  wire next_state1;
  wire next_state2;
  wire next_state2_carry__0_i_1_n_0;
  wire next_state2_carry__0_i_2_n_0;
  wire next_state2_carry__0_n_3;
  wire next_state2_carry_i_1_n_0;
  wire next_state2_carry_i_2_n_0;
  wire next_state2_carry_i_3_n_0;
  wire next_state2_carry_i_4_n_0;
  wire next_state2_carry_n_0;
  wire next_state2_carry_n_1;
  wire next_state2_carry_n_2;
  wire next_state2_carry_n_3;
  wire next_state3;
  wire next_state30_out;
  wire next_state3_carry__0_i_1_n_0;
  wire next_state3_carry__0_i_2_n_0;
  wire next_state3_carry__0_i_3_n_0;
  wire next_state3_carry__0_i_4_n_0;
  wire next_state3_carry__0_n_0;
  wire next_state3_carry__0_n_1;
  wire next_state3_carry__0_n_2;
  wire next_state3_carry__0_n_3;
  wire next_state3_carry__1_i_1_n_0;
  wire next_state3_carry__1_i_2_n_0;
  wire next_state3_carry__1_i_3_n_0;
  wire next_state3_carry__1_n_2;
  wire next_state3_carry__1_n_3;
  wire next_state3_carry_i_1_n_0;
  wire next_state3_carry_i_2_n_0;
  wire next_state3_carry_i_3_n_0;
  wire next_state3_carry_i_4_n_0;
  wire next_state3_carry_n_0;
  wire next_state3_carry_n_1;
  wire next_state3_carry_n_2;
  wire next_state3_carry_n_3;
  wire \next_state3_inferred__0/i__carry__0_n_0 ;
  wire \next_state3_inferred__0/i__carry__0_n_1 ;
  wire \next_state3_inferred__0/i__carry__0_n_2 ;
  wire \next_state3_inferred__0/i__carry__0_n_3 ;
  wire \next_state3_inferred__0/i__carry__1_n_2 ;
  wire \next_state3_inferred__0/i__carry__1_n_3 ;
  wire \next_state3_inferred__0/i__carry_n_0 ;
  wire \next_state3_inferred__0/i__carry_n_1 ;
  wire \next_state3_inferred__0/i__carry_n_2 ;
  wire \next_state3_inferred__0/i__carry_n_3 ;
  wire [3:1]next_state__0;
  wire rst;
  wire [31:0]s_header_data_dst_ip;
  wire [15:0]s_header_data_dst_port;
  wire s_header_data_end;
  wire s_header_data_end_i_1_n_0;
  wire s_header_data_end_i_2_n_0;
  wire s_header_data_response;
  wire s_header_data_response_i_1_n_0;
  wire [31:0]s_header_data_src_ip;
  wire s_header_data_start;
  wire state_packet_i_1_n_0;
  wire state_packet_reg_n_0;
  wire valid_data_bram1_out;
  wire valid_data_bram_i_1_n_0;
  wire valid_data_bram_reg_n_0;
  wire [3:3]NLW_bram_port_addr0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_next_state2_carry_O_UNCONNECTED;
  wire [3:2]NLW_next_state2_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_next_state2_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_next_state3_carry_O_UNCONNECTED;
  wire [3:0]NLW_next_state3_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_next_state3_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_next_state3_carry__1_O_UNCONNECTED;
  wire [3:0]\NLW_next_state3_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_next_state3_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:3]\NLW_next_state3_inferred__0/i__carry__1_CO_UNCONNECTED ;
  wire [3:0]\NLW_next_state3_inferred__0/i__carry__1_O_UNCONNECTED ;

  (* FSM_ENCODED_STATES = "GET_BRAM_SRC_IP:0011,RECIVED_BRAM_DATA:0100,GET_BRAM_DST_IP:0010,GET_BRAM_DATA:0001,IDLE:0000,COMPARE:0111,RESPONSE:1000,RECIVED_BRAM_SRC_IP:0110,RECIVED_BRAM_DST_IP:0101" *) 
  FDCE \FSM_sequential_current_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(s_header_data_end_i_2_n_0),
        .D(next_state[0]),
        .Q(current_state[0]));
  (* FSM_ENCODED_STATES = "GET_BRAM_SRC_IP:0011,RECIVED_BRAM_DATA:0100,GET_BRAM_DST_IP:0010,GET_BRAM_DATA:0001,IDLE:0000,COMPARE:0111,RESPONSE:1000,RECIVED_BRAM_SRC_IP:0110,RECIVED_BRAM_DST_IP:0101" *) 
  FDCE \FSM_sequential_current_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(s_header_data_end_i_2_n_0),
        .D(next_state[1]),
        .Q(current_state[1]));
  (* FSM_ENCODED_STATES = "GET_BRAM_SRC_IP:0011,RECIVED_BRAM_DATA:0100,GET_BRAM_DST_IP:0010,GET_BRAM_DATA:0001,IDLE:0000,COMPARE:0111,RESPONSE:1000,RECIVED_BRAM_SRC_IP:0110,RECIVED_BRAM_DST_IP:0101" *) 
  FDCE \FSM_sequential_current_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(s_header_data_end_i_2_n_0),
        .D(next_state[2]),
        .Q(current_state[2]));
  (* FSM_ENCODED_STATES = "GET_BRAM_SRC_IP:0011,RECIVED_BRAM_DATA:0100,GET_BRAM_DST_IP:0010,GET_BRAM_DATA:0001,IDLE:0000,COMPARE:0111,RESPONSE:1000,RECIVED_BRAM_SRC_IP:0110,RECIVED_BRAM_DST_IP:0101" *) 
  FDCE \FSM_sequential_current_state_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(s_header_data_end_i_2_n_0),
        .D(next_state[3]),
        .Q(current_state[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_next_state_reg[0] 
       (.CLR(1'b0),
        .D(\FSM_sequential_next_state_reg[0]_i_1_n_0 ),
        .G(\FSM_sequential_next_state_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(next_state[0]));
  LUT6 #(
    .INIT(64'h0000555444005554)) 
    \FSM_sequential_next_state_reg[0]_i_1 
       (.I0(current_state[3]),
        .I1(current_state[1]),
        .I2(s_header_data_start),
        .I3(current_state[2]),
        .I4(current_state[0]),
        .I5(\FSM_sequential_next_state_reg[0]_i_2_n_0 ),
        .O(\FSM_sequential_next_state_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h80FF)) 
    \FSM_sequential_next_state_reg[0]_i_2 
       (.I0(next_state3),
        .I1(next_state2),
        .I2(next_state30_out),
        .I3(valid_data_bram_reg_n_0),
        .O(\FSM_sequential_next_state_reg[0]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_next_state_reg[1] 
       (.CLR(1'b0),
        .D(next_state__0[1]),
        .G(\FSM_sequential_next_state_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(next_state[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h14)) 
    \FSM_sequential_next_state_reg[1]_i_1 
       (.I0(current_state[3]),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .O(next_state__0[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_next_state_reg[2] 
       (.CLR(1'b0),
        .D(\FSM_sequential_next_state_reg[2]_i_1_n_0 ),
        .G(\FSM_sequential_next_state_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(next_state[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h1540)) 
    \FSM_sequential_next_state_reg[2]_i_1 
       (.I0(current_state[3]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(current_state[2]),
        .O(\FSM_sequential_next_state_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_next_state_reg[3] 
       (.CLR(1'b0),
        .D(next_state__0[3]),
        .G(\FSM_sequential_next_state_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(next_state[3]));
  LUT6 #(
    .INIT(64'h0000D00000000000)) 
    \FSM_sequential_next_state_reg[3]_i_1 
       (.I0(valid_data_bram_reg_n_0),
        .I1(next_state1),
        .I2(current_state[0]),
        .I3(current_state[1]),
        .I4(current_state[3]),
        .I5(current_state[2]),
        .O(next_state__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h5557)) 
    \FSM_sequential_next_state_reg[3]_i_2 
       (.I0(current_state[3]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(current_state[2]),
        .O(\FSM_sequential_next_state_reg[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_sequential_next_state_reg[3]_i_3 
       (.I0(next_state30_out),
        .I1(next_state2),
        .I2(next_state3),
        .O(next_state1));
  LUT5 #(
    .INIT(32'h00000400)) 
    \bram_data[15]_i_1 
       (.I0(current_state[0]),
        .I1(rst),
        .I2(current_state[3]),
        .I3(current_state[2]),
        .I4(current_state[1]),
        .O(\bram_data[15]_i_1_n_0 ));
  FDRE \bram_data_reg[0] 
       (.C(clk),
        .CE(\bram_data[15]_i_1_n_0 ),
        .D(bram_port_dout[0]),
        .Q(\bram_data_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \bram_data_reg[10] 
       (.C(clk),
        .CE(\bram_data[15]_i_1_n_0 ),
        .D(bram_port_dout[10]),
        .Q(\bram_data_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \bram_data_reg[11] 
       (.C(clk),
        .CE(\bram_data[15]_i_1_n_0 ),
        .D(bram_port_dout[11]),
        .Q(\bram_data_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \bram_data_reg[12] 
       (.C(clk),
        .CE(\bram_data[15]_i_1_n_0 ),
        .D(bram_port_dout[12]),
        .Q(\bram_data_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \bram_data_reg[13] 
       (.C(clk),
        .CE(\bram_data[15]_i_1_n_0 ),
        .D(bram_port_dout[13]),
        .Q(\bram_data_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \bram_data_reg[14] 
       (.C(clk),
        .CE(\bram_data[15]_i_1_n_0 ),
        .D(bram_port_dout[14]),
        .Q(\bram_data_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \bram_data_reg[15] 
       (.C(clk),
        .CE(\bram_data[15]_i_1_n_0 ),
        .D(bram_port_dout[15]),
        .Q(\bram_data_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \bram_data_reg[1] 
       (.C(clk),
        .CE(\bram_data[15]_i_1_n_0 ),
        .D(bram_port_dout[1]),
        .Q(\bram_data_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \bram_data_reg[2] 
       (.C(clk),
        .CE(\bram_data[15]_i_1_n_0 ),
        .D(bram_port_dout[2]),
        .Q(\bram_data_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \bram_data_reg[3] 
       (.C(clk),
        .CE(\bram_data[15]_i_1_n_0 ),
        .D(bram_port_dout[3]),
        .Q(\bram_data_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \bram_data_reg[4] 
       (.C(clk),
        .CE(\bram_data[15]_i_1_n_0 ),
        .D(bram_port_dout[4]),
        .Q(\bram_data_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \bram_data_reg[5] 
       (.C(clk),
        .CE(\bram_data[15]_i_1_n_0 ),
        .D(bram_port_dout[5]),
        .Q(\bram_data_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \bram_data_reg[6] 
       (.C(clk),
        .CE(\bram_data[15]_i_1_n_0 ),
        .D(bram_port_dout[6]),
        .Q(\bram_data_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \bram_data_reg[7] 
       (.C(clk),
        .CE(\bram_data[15]_i_1_n_0 ),
        .D(bram_port_dout[7]),
        .Q(\bram_data_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \bram_data_reg[8] 
       (.C(clk),
        .CE(\bram_data[15]_i_1_n_0 ),
        .D(bram_port_dout[8]),
        .Q(\bram_data_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \bram_data_reg[9] 
       (.C(clk),
        .CE(\bram_data[15]_i_1_n_0 ),
        .D(bram_port_dout[9]),
        .Q(\bram_data_reg_n_0_[9] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00004000)) 
    \bram_dst_ip[31]_i_1 
       (.I0(current_state[3]),
        .I1(rst),
        .I2(current_state[2]),
        .I3(current_state[0]),
        .I4(current_state[1]),
        .O(\bram_dst_ip[31]_i_1_n_0 ));
  FDRE \bram_dst_ip_reg[0] 
       (.C(clk),
        .CE(\bram_dst_ip[31]_i_1_n_0 ),
        .D(bram_port_dout[0]),
        .Q(bram_dst_ip[0]),
        .R(1'b0));
  FDRE \bram_dst_ip_reg[10] 
       (.C(clk),
        .CE(\bram_dst_ip[31]_i_1_n_0 ),
        .D(bram_port_dout[10]),
        .Q(bram_dst_ip[10]),
        .R(1'b0));
  FDRE \bram_dst_ip_reg[11] 
       (.C(clk),
        .CE(\bram_dst_ip[31]_i_1_n_0 ),
        .D(bram_port_dout[11]),
        .Q(bram_dst_ip[11]),
        .R(1'b0));
  FDRE \bram_dst_ip_reg[12] 
       (.C(clk),
        .CE(\bram_dst_ip[31]_i_1_n_0 ),
        .D(bram_port_dout[12]),
        .Q(bram_dst_ip[12]),
        .R(1'b0));
  FDRE \bram_dst_ip_reg[13] 
       (.C(clk),
        .CE(\bram_dst_ip[31]_i_1_n_0 ),
        .D(bram_port_dout[13]),
        .Q(bram_dst_ip[13]),
        .R(1'b0));
  FDRE \bram_dst_ip_reg[14] 
       (.C(clk),
        .CE(\bram_dst_ip[31]_i_1_n_0 ),
        .D(bram_port_dout[14]),
        .Q(bram_dst_ip[14]),
        .R(1'b0));
  FDRE \bram_dst_ip_reg[15] 
       (.C(clk),
        .CE(\bram_dst_ip[31]_i_1_n_0 ),
        .D(bram_port_dout[15]),
        .Q(bram_dst_ip[15]),
        .R(1'b0));
  FDRE \bram_dst_ip_reg[16] 
       (.C(clk),
        .CE(\bram_dst_ip[31]_i_1_n_0 ),
        .D(bram_port_dout[16]),
        .Q(bram_dst_ip[16]),
        .R(1'b0));
  FDRE \bram_dst_ip_reg[17] 
       (.C(clk),
        .CE(\bram_dst_ip[31]_i_1_n_0 ),
        .D(bram_port_dout[17]),
        .Q(bram_dst_ip[17]),
        .R(1'b0));
  FDRE \bram_dst_ip_reg[18] 
       (.C(clk),
        .CE(\bram_dst_ip[31]_i_1_n_0 ),
        .D(bram_port_dout[18]),
        .Q(bram_dst_ip[18]),
        .R(1'b0));
  FDRE \bram_dst_ip_reg[19] 
       (.C(clk),
        .CE(\bram_dst_ip[31]_i_1_n_0 ),
        .D(bram_port_dout[19]),
        .Q(bram_dst_ip[19]),
        .R(1'b0));
  FDRE \bram_dst_ip_reg[1] 
       (.C(clk),
        .CE(\bram_dst_ip[31]_i_1_n_0 ),
        .D(bram_port_dout[1]),
        .Q(bram_dst_ip[1]),
        .R(1'b0));
  FDRE \bram_dst_ip_reg[20] 
       (.C(clk),
        .CE(\bram_dst_ip[31]_i_1_n_0 ),
        .D(bram_port_dout[20]),
        .Q(bram_dst_ip[20]),
        .R(1'b0));
  FDRE \bram_dst_ip_reg[21] 
       (.C(clk),
        .CE(\bram_dst_ip[31]_i_1_n_0 ),
        .D(bram_port_dout[21]),
        .Q(bram_dst_ip[21]),
        .R(1'b0));
  FDRE \bram_dst_ip_reg[22] 
       (.C(clk),
        .CE(\bram_dst_ip[31]_i_1_n_0 ),
        .D(bram_port_dout[22]),
        .Q(bram_dst_ip[22]),
        .R(1'b0));
  FDRE \bram_dst_ip_reg[23] 
       (.C(clk),
        .CE(\bram_dst_ip[31]_i_1_n_0 ),
        .D(bram_port_dout[23]),
        .Q(bram_dst_ip[23]),
        .R(1'b0));
  FDRE \bram_dst_ip_reg[24] 
       (.C(clk),
        .CE(\bram_dst_ip[31]_i_1_n_0 ),
        .D(bram_port_dout[24]),
        .Q(bram_dst_ip[24]),
        .R(1'b0));
  FDRE \bram_dst_ip_reg[25] 
       (.C(clk),
        .CE(\bram_dst_ip[31]_i_1_n_0 ),
        .D(bram_port_dout[25]),
        .Q(bram_dst_ip[25]),
        .R(1'b0));
  FDRE \bram_dst_ip_reg[26] 
       (.C(clk),
        .CE(\bram_dst_ip[31]_i_1_n_0 ),
        .D(bram_port_dout[26]),
        .Q(bram_dst_ip[26]),
        .R(1'b0));
  FDRE \bram_dst_ip_reg[27] 
       (.C(clk),
        .CE(\bram_dst_ip[31]_i_1_n_0 ),
        .D(bram_port_dout[27]),
        .Q(bram_dst_ip[27]),
        .R(1'b0));
  FDRE \bram_dst_ip_reg[28] 
       (.C(clk),
        .CE(\bram_dst_ip[31]_i_1_n_0 ),
        .D(bram_port_dout[28]),
        .Q(bram_dst_ip[28]),
        .R(1'b0));
  FDRE \bram_dst_ip_reg[29] 
       (.C(clk),
        .CE(\bram_dst_ip[31]_i_1_n_0 ),
        .D(bram_port_dout[29]),
        .Q(bram_dst_ip[29]),
        .R(1'b0));
  FDRE \bram_dst_ip_reg[2] 
       (.C(clk),
        .CE(\bram_dst_ip[31]_i_1_n_0 ),
        .D(bram_port_dout[2]),
        .Q(bram_dst_ip[2]),
        .R(1'b0));
  FDRE \bram_dst_ip_reg[30] 
       (.C(clk),
        .CE(\bram_dst_ip[31]_i_1_n_0 ),
        .D(bram_port_dout[30]),
        .Q(bram_dst_ip[30]),
        .R(1'b0));
  FDRE \bram_dst_ip_reg[31] 
       (.C(clk),
        .CE(\bram_dst_ip[31]_i_1_n_0 ),
        .D(bram_port_dout[31]),
        .Q(bram_dst_ip[31]),
        .R(1'b0));
  FDRE \bram_dst_ip_reg[3] 
       (.C(clk),
        .CE(\bram_dst_ip[31]_i_1_n_0 ),
        .D(bram_port_dout[3]),
        .Q(bram_dst_ip[3]),
        .R(1'b0));
  FDRE \bram_dst_ip_reg[4] 
       (.C(clk),
        .CE(\bram_dst_ip[31]_i_1_n_0 ),
        .D(bram_port_dout[4]),
        .Q(bram_dst_ip[4]),
        .R(1'b0));
  FDRE \bram_dst_ip_reg[5] 
       (.C(clk),
        .CE(\bram_dst_ip[31]_i_1_n_0 ),
        .D(bram_port_dout[5]),
        .Q(bram_dst_ip[5]),
        .R(1'b0));
  FDRE \bram_dst_ip_reg[6] 
       (.C(clk),
        .CE(\bram_dst_ip[31]_i_1_n_0 ),
        .D(bram_port_dout[6]),
        .Q(bram_dst_ip[6]),
        .R(1'b0));
  FDRE \bram_dst_ip_reg[7] 
       (.C(clk),
        .CE(\bram_dst_ip[31]_i_1_n_0 ),
        .D(bram_port_dout[7]),
        .Q(bram_dst_ip[7]),
        .R(1'b0));
  FDRE \bram_dst_ip_reg[8] 
       (.C(clk),
        .CE(\bram_dst_ip[31]_i_1_n_0 ),
        .D(bram_port_dout[8]),
        .Q(bram_dst_ip[8]),
        .R(1'b0));
  FDRE \bram_dst_ip_reg[9] 
       (.C(clk),
        .CE(\bram_dst_ip[31]_i_1_n_0 ),
        .D(bram_port_dout[9]),
        .Q(bram_dst_ip[9]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 bram_port_addr0_carry
       (.CI(1'b0),
        .CO({bram_port_addr0_carry_n_0,bram_port_addr0_carry_n_1,bram_port_addr0_carry_n_2,bram_port_addr0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({\counter_pos_bram_reg_n_0_[1] ,\counter_pos_bram_reg_n_0_[0] ,1'b0,1'b1}),
        .O(bram_port_addr0[5:2]),
        .S({bram_port_addr0_carry_i_1_n_0,bram_port_addr0_carry_i_2_n_0,bram_port_addr0_carry_i_3_n_0,\counter_pos_bram_reg_n_0_[0] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 bram_port_addr0_carry__0
       (.CI(bram_port_addr0_carry_n_0),
        .CO({NLW_bram_port_addr0_carry__0_CO_UNCONNECTED[3],bram_port_addr0_carry__0_n_1,bram_port_addr0_carry__0_n_2,bram_port_addr0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,\counter_pos_bram_reg_n_0_[4] ,\counter_pos_bram_reg_n_0_[3] ,\counter_pos_bram_reg_n_0_[2] }),
        .O(bram_port_addr0[9:6]),
        .S({bram_port_addr0_carry__0_i_1_n_0,bram_port_addr0_carry__0_i_2_n_0,bram_port_addr0_carry__0_i_3_n_0,bram_port_addr0_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    bram_port_addr0_carry__0_i_1
       (.I0(\counter_pos_bram_reg_n_0_[5] ),
        .O(bram_port_addr0_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    bram_port_addr0_carry__0_i_2
       (.I0(\counter_pos_bram_reg_n_0_[4] ),
        .O(bram_port_addr0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    bram_port_addr0_carry__0_i_3
       (.I0(\counter_pos_bram_reg_n_0_[3] ),
        .I1(\counter_pos_bram_reg_n_0_[5] ),
        .O(bram_port_addr0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    bram_port_addr0_carry__0_i_4
       (.I0(\counter_pos_bram_reg_n_0_[2] ),
        .I1(\counter_pos_bram_reg_n_0_[4] ),
        .O(bram_port_addr0_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    bram_port_addr0_carry_i_1
       (.I0(\counter_pos_bram_reg_n_0_[1] ),
        .I1(\counter_pos_bram_reg_n_0_[3] ),
        .O(bram_port_addr0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    bram_port_addr0_carry_i_2
       (.I0(\counter_pos_bram_reg_n_0_[0] ),
        .I1(\counter_pos_bram_reg_n_0_[2] ),
        .O(bram_port_addr0_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    bram_port_addr0_carry_i_3
       (.I0(\counter_pos_bram_reg_n_0_[1] ),
        .O(bram_port_addr0_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'hA4)) 
    \bram_port_addr[2]_i_1 
       (.I0(bram_port_addr0[2]),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .O(\bram_port_addr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h6468)) 
    \bram_port_addr[3]_i_1 
       (.I0(bram_port_addr0[3]),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .I3(bram_port_addr0[2]),
        .O(\bram_port_addr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h747C8880)) 
    \bram_port_addr[4]_i_1 
       (.I0(bram_port_addr0[3]),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .I3(bram_port_addr0[2]),
        .I4(bram_port_addr0[4]),
        .O(\bram_port_addr[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h64A8A8A868A8A8A8)) 
    \bram_port_addr[5]_i_1 
       (.I0(bram_port_addr0[5]),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .I3(bram_port_addr0[4]),
        .I4(bram_port_addr0[3]),
        .I5(bram_port_addr0[2]),
        .O(\bram_port_addr[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h6662)) 
    \bram_port_addr[6]_i_1 
       (.I0(\bram_port_addr[9]_i_3_n_0 ),
        .I1(bram_port_addr0[6]),
        .I2(current_state[1]),
        .I3(current_state[0]),
        .O(\bram_port_addr[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h77708888)) 
    \bram_port_addr[7]_i_1 
       (.I0(\bram_port_addr[9]_i_3_n_0 ),
        .I1(bram_port_addr0[6]),
        .I2(current_state[1]),
        .I3(current_state[0]),
        .I4(bram_port_addr0[7]),
        .O(\bram_port_addr[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h55A8A8A8A8A8A8A8)) 
    \bram_port_addr[8]_i_1 
       (.I0(bram_port_addr0[8]),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .I3(bram_port_addr0[7]),
        .I4(bram_port_addr0[6]),
        .I5(\bram_port_addr[9]_i_3_n_0 ),
        .O(\bram_port_addr[8]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \bram_port_addr[9]_i_1 
       (.I0(current_state[3]),
        .I1(rst),
        .I2(current_state[2]),
        .O(\bram_port_addr[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000080007FFF8000)) 
    \bram_port_addr[9]_i_2 
       (.I0(bram_port_addr0[8]),
        .I1(\bram_port_addr[9]_i_3_n_0 ),
        .I2(bram_port_addr0[6]),
        .I3(bram_port_addr0[7]),
        .I4(bram_port_addr0[9]),
        .I5(\bram_port_addr[9]_i_4_n_0 ),
        .O(\bram_port_addr[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA800000000000000)) 
    \bram_port_addr[9]_i_3 
       (.I0(bram_port_addr0[5]),
        .I1(bram_port_addr0[2]),
        .I2(current_state[0]),
        .I3(current_state[1]),
        .I4(bram_port_addr0[3]),
        .I5(bram_port_addr0[4]),
        .O(\bram_port_addr[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \bram_port_addr[9]_i_4 
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .O(\bram_port_addr[9]_i_4_n_0 ));
  FDRE \bram_port_addr_reg[2] 
       (.C(clk),
        .CE(\bram_port_addr[9]_i_1_n_0 ),
        .D(\bram_port_addr[2]_i_1_n_0 ),
        .Q(bram_port_addr[0]),
        .R(1'b0));
  FDRE \bram_port_addr_reg[3] 
       (.C(clk),
        .CE(\bram_port_addr[9]_i_1_n_0 ),
        .D(\bram_port_addr[3]_i_1_n_0 ),
        .Q(bram_port_addr[1]),
        .R(1'b0));
  FDRE \bram_port_addr_reg[4] 
       (.C(clk),
        .CE(\bram_port_addr[9]_i_1_n_0 ),
        .D(\bram_port_addr[4]_i_1_n_0 ),
        .Q(bram_port_addr[2]),
        .R(1'b0));
  FDRE \bram_port_addr_reg[5] 
       (.C(clk),
        .CE(\bram_port_addr[9]_i_1_n_0 ),
        .D(\bram_port_addr[5]_i_1_n_0 ),
        .Q(bram_port_addr[3]),
        .R(1'b0));
  FDRE \bram_port_addr_reg[6] 
       (.C(clk),
        .CE(\bram_port_addr[9]_i_1_n_0 ),
        .D(\bram_port_addr[6]_i_1_n_0 ),
        .Q(bram_port_addr[4]),
        .R(1'b0));
  FDRE \bram_port_addr_reg[7] 
       (.C(clk),
        .CE(\bram_port_addr[9]_i_1_n_0 ),
        .D(\bram_port_addr[7]_i_1_n_0 ),
        .Q(bram_port_addr[5]),
        .R(1'b0));
  FDRE \bram_port_addr_reg[8] 
       (.C(clk),
        .CE(\bram_port_addr[9]_i_1_n_0 ),
        .D(\bram_port_addr[8]_i_1_n_0 ),
        .Q(bram_port_addr[6]),
        .R(1'b0));
  FDRE \bram_port_addr_reg[9] 
       (.C(clk),
        .CE(\bram_port_addr[9]_i_1_n_0 ),
        .D(\bram_port_addr[9]_i_2_n_0 ),
        .Q(bram_port_addr[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hEFFE0002)) 
    bram_port_en_i_1
       (.I0(current_state[0]),
        .I1(current_state[3]),
        .I2(current_state[1]),
        .I3(current_state[2]),
        .I4(bram_port_en),
        .O(bram_port_en_i_1_n_0));
  FDCE bram_port_en_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(s_header_data_end_i_2_n_0),
        .D(bram_port_en_i_1_n_0),
        .Q(bram_port_en));
  LUT5 #(
    .INIT(32'h04000000)) 
    \bram_src_ip[31]_i_1 
       (.I0(current_state[0]),
        .I1(rst),
        .I2(current_state[3]),
        .I3(current_state[1]),
        .I4(current_state[2]),
        .O(\bram_src_ip[31]_i_1_n_0 ));
  FDRE \bram_src_ip_reg[0] 
       (.C(clk),
        .CE(\bram_src_ip[31]_i_1_n_0 ),
        .D(bram_port_dout[0]),
        .Q(bram_src_ip[0]),
        .R(1'b0));
  FDRE \bram_src_ip_reg[10] 
       (.C(clk),
        .CE(\bram_src_ip[31]_i_1_n_0 ),
        .D(bram_port_dout[10]),
        .Q(bram_src_ip[10]),
        .R(1'b0));
  FDRE \bram_src_ip_reg[11] 
       (.C(clk),
        .CE(\bram_src_ip[31]_i_1_n_0 ),
        .D(bram_port_dout[11]),
        .Q(bram_src_ip[11]),
        .R(1'b0));
  FDRE \bram_src_ip_reg[12] 
       (.C(clk),
        .CE(\bram_src_ip[31]_i_1_n_0 ),
        .D(bram_port_dout[12]),
        .Q(bram_src_ip[12]),
        .R(1'b0));
  FDRE \bram_src_ip_reg[13] 
       (.C(clk),
        .CE(\bram_src_ip[31]_i_1_n_0 ),
        .D(bram_port_dout[13]),
        .Q(bram_src_ip[13]),
        .R(1'b0));
  FDRE \bram_src_ip_reg[14] 
       (.C(clk),
        .CE(\bram_src_ip[31]_i_1_n_0 ),
        .D(bram_port_dout[14]),
        .Q(bram_src_ip[14]),
        .R(1'b0));
  FDRE \bram_src_ip_reg[15] 
       (.C(clk),
        .CE(\bram_src_ip[31]_i_1_n_0 ),
        .D(bram_port_dout[15]),
        .Q(bram_src_ip[15]),
        .R(1'b0));
  FDRE \bram_src_ip_reg[16] 
       (.C(clk),
        .CE(\bram_src_ip[31]_i_1_n_0 ),
        .D(bram_port_dout[16]),
        .Q(bram_src_ip[16]),
        .R(1'b0));
  FDRE \bram_src_ip_reg[17] 
       (.C(clk),
        .CE(\bram_src_ip[31]_i_1_n_0 ),
        .D(bram_port_dout[17]),
        .Q(bram_src_ip[17]),
        .R(1'b0));
  FDRE \bram_src_ip_reg[18] 
       (.C(clk),
        .CE(\bram_src_ip[31]_i_1_n_0 ),
        .D(bram_port_dout[18]),
        .Q(bram_src_ip[18]),
        .R(1'b0));
  FDRE \bram_src_ip_reg[19] 
       (.C(clk),
        .CE(\bram_src_ip[31]_i_1_n_0 ),
        .D(bram_port_dout[19]),
        .Q(bram_src_ip[19]),
        .R(1'b0));
  FDRE \bram_src_ip_reg[1] 
       (.C(clk),
        .CE(\bram_src_ip[31]_i_1_n_0 ),
        .D(bram_port_dout[1]),
        .Q(bram_src_ip[1]),
        .R(1'b0));
  FDRE \bram_src_ip_reg[20] 
       (.C(clk),
        .CE(\bram_src_ip[31]_i_1_n_0 ),
        .D(bram_port_dout[20]),
        .Q(bram_src_ip[20]),
        .R(1'b0));
  FDRE \bram_src_ip_reg[21] 
       (.C(clk),
        .CE(\bram_src_ip[31]_i_1_n_0 ),
        .D(bram_port_dout[21]),
        .Q(bram_src_ip[21]),
        .R(1'b0));
  FDRE \bram_src_ip_reg[22] 
       (.C(clk),
        .CE(\bram_src_ip[31]_i_1_n_0 ),
        .D(bram_port_dout[22]),
        .Q(bram_src_ip[22]),
        .R(1'b0));
  FDRE \bram_src_ip_reg[23] 
       (.C(clk),
        .CE(\bram_src_ip[31]_i_1_n_0 ),
        .D(bram_port_dout[23]),
        .Q(bram_src_ip[23]),
        .R(1'b0));
  FDRE \bram_src_ip_reg[24] 
       (.C(clk),
        .CE(\bram_src_ip[31]_i_1_n_0 ),
        .D(bram_port_dout[24]),
        .Q(bram_src_ip[24]),
        .R(1'b0));
  FDRE \bram_src_ip_reg[25] 
       (.C(clk),
        .CE(\bram_src_ip[31]_i_1_n_0 ),
        .D(bram_port_dout[25]),
        .Q(bram_src_ip[25]),
        .R(1'b0));
  FDRE \bram_src_ip_reg[26] 
       (.C(clk),
        .CE(\bram_src_ip[31]_i_1_n_0 ),
        .D(bram_port_dout[26]),
        .Q(bram_src_ip[26]),
        .R(1'b0));
  FDRE \bram_src_ip_reg[27] 
       (.C(clk),
        .CE(\bram_src_ip[31]_i_1_n_0 ),
        .D(bram_port_dout[27]),
        .Q(bram_src_ip[27]),
        .R(1'b0));
  FDRE \bram_src_ip_reg[28] 
       (.C(clk),
        .CE(\bram_src_ip[31]_i_1_n_0 ),
        .D(bram_port_dout[28]),
        .Q(bram_src_ip[28]),
        .R(1'b0));
  FDRE \bram_src_ip_reg[29] 
       (.C(clk),
        .CE(\bram_src_ip[31]_i_1_n_0 ),
        .D(bram_port_dout[29]),
        .Q(bram_src_ip[29]),
        .R(1'b0));
  FDRE \bram_src_ip_reg[2] 
       (.C(clk),
        .CE(\bram_src_ip[31]_i_1_n_0 ),
        .D(bram_port_dout[2]),
        .Q(bram_src_ip[2]),
        .R(1'b0));
  FDRE \bram_src_ip_reg[30] 
       (.C(clk),
        .CE(\bram_src_ip[31]_i_1_n_0 ),
        .D(bram_port_dout[30]),
        .Q(bram_src_ip[30]),
        .R(1'b0));
  FDRE \bram_src_ip_reg[31] 
       (.C(clk),
        .CE(\bram_src_ip[31]_i_1_n_0 ),
        .D(bram_port_dout[31]),
        .Q(bram_src_ip[31]),
        .R(1'b0));
  FDRE \bram_src_ip_reg[3] 
       (.C(clk),
        .CE(\bram_src_ip[31]_i_1_n_0 ),
        .D(bram_port_dout[3]),
        .Q(bram_src_ip[3]),
        .R(1'b0));
  FDRE \bram_src_ip_reg[4] 
       (.C(clk),
        .CE(\bram_src_ip[31]_i_1_n_0 ),
        .D(bram_port_dout[4]),
        .Q(bram_src_ip[4]),
        .R(1'b0));
  FDRE \bram_src_ip_reg[5] 
       (.C(clk),
        .CE(\bram_src_ip[31]_i_1_n_0 ),
        .D(bram_port_dout[5]),
        .Q(bram_src_ip[5]),
        .R(1'b0));
  FDRE \bram_src_ip_reg[6] 
       (.C(clk),
        .CE(\bram_src_ip[31]_i_1_n_0 ),
        .D(bram_port_dout[6]),
        .Q(bram_src_ip[6]),
        .R(1'b0));
  FDRE \bram_src_ip_reg[7] 
       (.C(clk),
        .CE(\bram_src_ip[31]_i_1_n_0 ),
        .D(bram_port_dout[7]),
        .Q(bram_src_ip[7]),
        .R(1'b0));
  FDRE \bram_src_ip_reg[8] 
       (.C(clk),
        .CE(\bram_src_ip[31]_i_1_n_0 ),
        .D(bram_port_dout[8]),
        .Q(bram_src_ip[8]),
        .R(1'b0));
  FDRE \bram_src_ip_reg[9] 
       (.C(clk),
        .CE(\bram_src_ip[31]_i_1_n_0 ),
        .D(bram_port_dout[9]),
        .Q(bram_src_ip[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0F20)) 
    \counter_pos_bram[0]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[3]),
        .I2(\counter_pos_bram[5]_i_1_n_0 ),
        .I3(\counter_pos_bram_reg_n_0_[0] ),
        .O(\counter_pos_bram[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0440)) 
    \counter_pos_bram[1]_i_1 
       (.I0(current_state[3]),
        .I1(current_state[2]),
        .I2(\counter_pos_bram_reg_n_0_[0] ),
        .I3(\counter_pos_bram_reg_n_0_[1] ),
        .O(\counter_pos_bram[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h04444000)) 
    \counter_pos_bram[2]_i_1 
       (.I0(current_state[3]),
        .I1(current_state[2]),
        .I2(\counter_pos_bram_reg_n_0_[1] ),
        .I3(\counter_pos_bram_reg_n_0_[0] ),
        .I4(\counter_pos_bram_reg_n_0_[2] ),
        .O(\counter_pos_bram[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0444444440000000)) 
    \counter_pos_bram[3]_i_1 
       (.I0(current_state[3]),
        .I1(current_state[2]),
        .I2(\counter_pos_bram_reg_n_0_[0] ),
        .I3(\counter_pos_bram_reg_n_0_[1] ),
        .I4(\counter_pos_bram_reg_n_0_[2] ),
        .I5(\counter_pos_bram_reg_n_0_[3] ),
        .O(\counter_pos_bram[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_pos_bram[4]_i_1 
       (.I0(current_state[3]),
        .I1(\counter_pos_bram[5]_i_1_n_0 ),
        .O(\counter_pos_bram[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \counter_pos_bram[4]_i_2 
       (.I0(current_state[2]),
        .I1(\counter_pos_bram_reg_n_0_[3] ),
        .I2(\counter_pos_bram_reg_n_0_[2] ),
        .I3(\counter_pos_bram_reg_n_0_[1] ),
        .I4(\counter_pos_bram_reg_n_0_[0] ),
        .I5(\counter_pos_bram_reg_n_0_[4] ),
        .O(\counter_pos_bram[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h08888888AAAAAAAA)) 
    \counter_pos_bram[5]_i_1 
       (.I0(\counter_pos_bram[5]_i_3_n_0 ),
        .I1(\counter_pos_bram[5]_i_4_n_0 ),
        .I2(next_state3),
        .I3(next_state2),
        .I4(next_state30_out),
        .I5(\counter_pos_bram[5]_i_5_n_0 ),
        .O(\counter_pos_bram[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h04444000)) 
    \counter_pos_bram[5]_i_2 
       (.I0(current_state[3]),
        .I1(current_state[2]),
        .I2(\counter_pos_bram[5]_i_6_n_0 ),
        .I3(\counter_pos_bram_reg_n_0_[4] ),
        .I4(\counter_pos_bram_reg_n_0_[5] ),
        .O(\counter_pos_bram[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter_pos_bram[5]_i_3 
       (.I0(rst),
        .I1(current_state[3]),
        .O(\counter_pos_bram[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \counter_pos_bram[5]_i_4 
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .I2(current_state[2]),
        .O(\counter_pos_bram[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \counter_pos_bram[5]_i_5 
       (.I0(current_state[2]),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .O(\counter_pos_bram[5]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \counter_pos_bram[5]_i_6 
       (.I0(\counter_pos_bram_reg_n_0_[3] ),
        .I1(\counter_pos_bram_reg_n_0_[2] ),
        .I2(\counter_pos_bram_reg_n_0_[1] ),
        .I3(\counter_pos_bram_reg_n_0_[0] ),
        .O(\counter_pos_bram[5]_i_6_n_0 ));
  FDRE \counter_pos_bram_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_pos_bram[0]_i_1_n_0 ),
        .Q(\counter_pos_bram_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \counter_pos_bram_reg[1] 
       (.C(clk),
        .CE(\counter_pos_bram[5]_i_1_n_0 ),
        .D(\counter_pos_bram[1]_i_1_n_0 ),
        .Q(\counter_pos_bram_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \counter_pos_bram_reg[2] 
       (.C(clk),
        .CE(\counter_pos_bram[5]_i_1_n_0 ),
        .D(\counter_pos_bram[2]_i_1_n_0 ),
        .Q(\counter_pos_bram_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \counter_pos_bram_reg[3] 
       (.C(clk),
        .CE(\counter_pos_bram[5]_i_1_n_0 ),
        .D(\counter_pos_bram[3]_i_1_n_0 ),
        .Q(\counter_pos_bram_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \counter_pos_bram_reg[4] 
       (.C(clk),
        .CE(\counter_pos_bram[5]_i_1_n_0 ),
        .D(\counter_pos_bram[4]_i_2_n_0 ),
        .Q(\counter_pos_bram_reg_n_0_[4] ),
        .R(\counter_pos_bram[4]_i_1_n_0 ));
  FDRE \counter_pos_bram_reg[5] 
       (.C(clk),
        .CE(\counter_pos_bram[5]_i_1_n_0 ),
        .D(\counter_pos_bram[5]_i_2_n_0 ),
        .Q(\counter_pos_bram_reg_n_0_[5] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_1
       (.I0(s_header_data_src_ip[21]),
        .I1(bram_src_ip[21]),
        .I2(s_header_data_src_ip[22]),
        .I3(bram_src_ip[22]),
        .I4(bram_src_ip[23]),
        .I5(s_header_data_src_ip[23]),
        .O(i__carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_2
       (.I0(s_header_data_src_ip[18]),
        .I1(bram_src_ip[18]),
        .I2(s_header_data_src_ip[19]),
        .I3(bram_src_ip[19]),
        .I4(bram_src_ip[20]),
        .I5(s_header_data_src_ip[20]),
        .O(i__carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_3
       (.I0(s_header_data_src_ip[15]),
        .I1(bram_src_ip[15]),
        .I2(s_header_data_src_ip[16]),
        .I3(bram_src_ip[16]),
        .I4(bram_src_ip[17]),
        .I5(s_header_data_src_ip[17]),
        .O(i__carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_4
       (.I0(s_header_data_src_ip[12]),
        .I1(bram_src_ip[12]),
        .I2(s_header_data_src_ip[13]),
        .I3(bram_src_ip[13]),
        .I4(bram_src_ip[14]),
        .I5(s_header_data_src_ip[14]),
        .O(i__carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_1
       (.I0(bram_src_ip[31]),
        .I1(s_header_data_src_ip[31]),
        .I2(bram_src_ip[30]),
        .I3(s_header_data_src_ip[30]),
        .O(i__carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__1_i_2
       (.I0(s_header_data_src_ip[27]),
        .I1(bram_src_ip[27]),
        .I2(s_header_data_src_ip[28]),
        .I3(bram_src_ip[28]),
        .I4(bram_src_ip[29]),
        .I5(s_header_data_src_ip[29]),
        .O(i__carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__1_i_3
       (.I0(s_header_data_src_ip[24]),
        .I1(bram_src_ip[24]),
        .I2(s_header_data_src_ip[25]),
        .I3(bram_src_ip[25]),
        .I4(bram_src_ip[26]),
        .I5(s_header_data_src_ip[26]),
        .O(i__carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_1
       (.I0(s_header_data_src_ip[11]),
        .I1(bram_src_ip[11]),
        .I2(s_header_data_src_ip[9]),
        .I3(bram_src_ip[9]),
        .I4(bram_src_ip[10]),
        .I5(s_header_data_src_ip[10]),
        .O(i__carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2
       (.I0(s_header_data_src_ip[6]),
        .I1(bram_src_ip[6]),
        .I2(s_header_data_src_ip[7]),
        .I3(bram_src_ip[7]),
        .I4(bram_src_ip[8]),
        .I5(s_header_data_src_ip[8]),
        .O(i__carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3
       (.I0(s_header_data_src_ip[5]),
        .I1(bram_src_ip[5]),
        .I2(s_header_data_src_ip[3]),
        .I3(bram_src_ip[3]),
        .I4(bram_src_ip[4]),
        .I5(s_header_data_src_ip[4]),
        .O(i__carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_4
       (.I0(s_header_data_src_ip[0]),
        .I1(bram_src_ip[0]),
        .I2(s_header_data_src_ip[1]),
        .I3(bram_src_ip[1]),
        .I4(bram_src_ip[2]),
        .I5(s_header_data_src_ip[2]),
        .O(i__carry_i_4_n_0));
  CARRY4 next_state2_carry
       (.CI(1'b0),
        .CO({next_state2_carry_n_0,next_state2_carry_n_1,next_state2_carry_n_2,next_state2_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_next_state2_carry_O_UNCONNECTED[3:0]),
        .S({next_state2_carry_i_1_n_0,next_state2_carry_i_2_n_0,next_state2_carry_i_3_n_0,next_state2_carry_i_4_n_0}));
  CARRY4 next_state2_carry__0
       (.CI(next_state2_carry_n_0),
        .CO({NLW_next_state2_carry__0_CO_UNCONNECTED[3:2],next_state2,next_state2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_next_state2_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,next_state2_carry__0_i_1_n_0,next_state2_carry__0_i_2_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    next_state2_carry__0_i_1
       (.I0(\bram_data_reg_n_0_[15] ),
        .I1(s_header_data_dst_port[15]),
        .O(next_state2_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    next_state2_carry__0_i_2
       (.I0(s_header_data_dst_port[12]),
        .I1(\bram_data_reg_n_0_[12] ),
        .I2(s_header_data_dst_port[13]),
        .I3(\bram_data_reg_n_0_[13] ),
        .I4(\bram_data_reg_n_0_[14] ),
        .I5(s_header_data_dst_port[14]),
        .O(next_state2_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    next_state2_carry_i_1
       (.I0(s_header_data_dst_port[9]),
        .I1(\bram_data_reg_n_0_[9] ),
        .I2(s_header_data_dst_port[10]),
        .I3(\bram_data_reg_n_0_[10] ),
        .I4(\bram_data_reg_n_0_[11] ),
        .I5(s_header_data_dst_port[11]),
        .O(next_state2_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    next_state2_carry_i_2
       (.I0(s_header_data_dst_port[6]),
        .I1(\bram_data_reg_n_0_[6] ),
        .I2(s_header_data_dst_port[7]),
        .I3(\bram_data_reg_n_0_[7] ),
        .I4(\bram_data_reg_n_0_[8] ),
        .I5(s_header_data_dst_port[8]),
        .O(next_state2_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    next_state2_carry_i_3
       (.I0(s_header_data_dst_port[5]),
        .I1(\bram_data_reg_n_0_[5] ),
        .I2(s_header_data_dst_port[3]),
        .I3(\bram_data_reg_n_0_[3] ),
        .I4(\bram_data_reg_n_0_[4] ),
        .I5(s_header_data_dst_port[4]),
        .O(next_state2_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    next_state2_carry_i_4
       (.I0(s_header_data_dst_port[1]),
        .I1(\bram_data_reg_n_0_[1] ),
        .I2(s_header_data_dst_port[0]),
        .I3(\bram_data_reg_n_0_[0] ),
        .I4(\bram_data_reg_n_0_[2] ),
        .I5(s_header_data_dst_port[2]),
        .O(next_state2_carry_i_4_n_0));
  CARRY4 next_state3_carry
       (.CI(1'b0),
        .CO({next_state3_carry_n_0,next_state3_carry_n_1,next_state3_carry_n_2,next_state3_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_next_state3_carry_O_UNCONNECTED[3:0]),
        .S({next_state3_carry_i_1_n_0,next_state3_carry_i_2_n_0,next_state3_carry_i_3_n_0,next_state3_carry_i_4_n_0}));
  CARRY4 next_state3_carry__0
       (.CI(next_state3_carry_n_0),
        .CO({next_state3_carry__0_n_0,next_state3_carry__0_n_1,next_state3_carry__0_n_2,next_state3_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_next_state3_carry__0_O_UNCONNECTED[3:0]),
        .S({next_state3_carry__0_i_1_n_0,next_state3_carry__0_i_2_n_0,next_state3_carry__0_i_3_n_0,next_state3_carry__0_i_4_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    next_state3_carry__0_i_1
       (.I0(s_header_data_dst_ip[23]),
        .I1(bram_dst_ip[23]),
        .I2(s_header_data_dst_ip[21]),
        .I3(bram_dst_ip[21]),
        .I4(bram_dst_ip[22]),
        .I5(s_header_data_dst_ip[22]),
        .O(next_state3_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    next_state3_carry__0_i_2
       (.I0(s_header_data_dst_ip[20]),
        .I1(bram_dst_ip[20]),
        .I2(s_header_data_dst_ip[18]),
        .I3(bram_dst_ip[18]),
        .I4(bram_dst_ip[19]),
        .I5(s_header_data_dst_ip[19]),
        .O(next_state3_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    next_state3_carry__0_i_3
       (.I0(s_header_data_dst_ip[15]),
        .I1(bram_dst_ip[15]),
        .I2(s_header_data_dst_ip[16]),
        .I3(bram_dst_ip[16]),
        .I4(bram_dst_ip[17]),
        .I5(s_header_data_dst_ip[17]),
        .O(next_state3_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    next_state3_carry__0_i_4
       (.I0(s_header_data_dst_ip[12]),
        .I1(bram_dst_ip[12]),
        .I2(s_header_data_dst_ip[13]),
        .I3(bram_dst_ip[13]),
        .I4(bram_dst_ip[14]),
        .I5(s_header_data_dst_ip[14]),
        .O(next_state3_carry__0_i_4_n_0));
  CARRY4 next_state3_carry__1
       (.CI(next_state3_carry__0_n_0),
        .CO({NLW_next_state3_carry__1_CO_UNCONNECTED[3],next_state3,next_state3_carry__1_n_2,next_state3_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_next_state3_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,next_state3_carry__1_i_1_n_0,next_state3_carry__1_i_2_n_0,next_state3_carry__1_i_3_n_0}));
  LUT4 #(
    .INIT(16'h9009)) 
    next_state3_carry__1_i_1
       (.I0(bram_dst_ip[31]),
        .I1(s_header_data_dst_ip[31]),
        .I2(bram_dst_ip[30]),
        .I3(s_header_data_dst_ip[30]),
        .O(next_state3_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    next_state3_carry__1_i_2
       (.I0(s_header_data_dst_ip[27]),
        .I1(bram_dst_ip[27]),
        .I2(s_header_data_dst_ip[28]),
        .I3(bram_dst_ip[28]),
        .I4(bram_dst_ip[29]),
        .I5(s_header_data_dst_ip[29]),
        .O(next_state3_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    next_state3_carry__1_i_3
       (.I0(s_header_data_dst_ip[24]),
        .I1(bram_dst_ip[24]),
        .I2(s_header_data_dst_ip[25]),
        .I3(bram_dst_ip[25]),
        .I4(bram_dst_ip[26]),
        .I5(s_header_data_dst_ip[26]),
        .O(next_state3_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    next_state3_carry_i_1
       (.I0(s_header_data_dst_ip[9]),
        .I1(bram_dst_ip[9]),
        .I2(s_header_data_dst_ip[10]),
        .I3(bram_dst_ip[10]),
        .I4(bram_dst_ip[11]),
        .I5(s_header_data_dst_ip[11]),
        .O(next_state3_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    next_state3_carry_i_2
       (.I0(s_header_data_dst_ip[6]),
        .I1(bram_dst_ip[6]),
        .I2(s_header_data_dst_ip[7]),
        .I3(bram_dst_ip[7]),
        .I4(bram_dst_ip[8]),
        .I5(s_header_data_dst_ip[8]),
        .O(next_state3_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    next_state3_carry_i_3
       (.I0(s_header_data_dst_ip[5]),
        .I1(bram_dst_ip[5]),
        .I2(s_header_data_dst_ip[3]),
        .I3(bram_dst_ip[3]),
        .I4(bram_dst_ip[4]),
        .I5(s_header_data_dst_ip[4]),
        .O(next_state3_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    next_state3_carry_i_4
       (.I0(s_header_data_dst_ip[1]),
        .I1(bram_dst_ip[1]),
        .I2(s_header_data_dst_ip[0]),
        .I3(bram_dst_ip[0]),
        .I4(bram_dst_ip[2]),
        .I5(s_header_data_dst_ip[2]),
        .O(next_state3_carry_i_4_n_0));
  CARRY4 \next_state3_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\next_state3_inferred__0/i__carry_n_0 ,\next_state3_inferred__0/i__carry_n_1 ,\next_state3_inferred__0/i__carry_n_2 ,\next_state3_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_next_state3_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}));
  CARRY4 \next_state3_inferred__0/i__carry__0 
       (.CI(\next_state3_inferred__0/i__carry_n_0 ),
        .CO({\next_state3_inferred__0/i__carry__0_n_0 ,\next_state3_inferred__0/i__carry__0_n_1 ,\next_state3_inferred__0/i__carry__0_n_2 ,\next_state3_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_next_state3_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  CARRY4 \next_state3_inferred__0/i__carry__1 
       (.CI(\next_state3_inferred__0/i__carry__0_n_0 ),
        .CO({\NLW_next_state3_inferred__0/i__carry__1_CO_UNCONNECTED [3],next_state30_out,\next_state3_inferred__0/i__carry__1_n_2 ,\next_state3_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_next_state3_inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S({1'b0,i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    s_header_data_end_i_1
       (.I0(current_state[3]),
        .I1(current_state[2]),
        .I2(current_state[1]),
        .I3(current_state[0]),
        .O(s_header_data_end_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    s_header_data_end_i_2
       (.I0(rst),
        .O(s_header_data_end_i_2_n_0));
  FDCE s_header_data_end_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(s_header_data_end_i_2_n_0),
        .D(s_header_data_end_i_1_n_0),
        .Q(s_header_data_end));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    s_header_data_response_i_1
       (.I0(state_packet_reg_n_0),
        .I1(current_state[3]),
        .I2(current_state[2]),
        .I3(current_state[1]),
        .I4(current_state[0]),
        .O(s_header_data_response_i_1_n_0));
  FDCE s_header_data_response_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(s_header_data_end_i_2_n_0),
        .D(s_header_data_response_i_1_n_0),
        .Q(s_header_data_response));
  LUT6 #(
    .INIT(64'h80FFFFFF80000000)) 
    state_packet_i_1
       (.I0(next_state30_out),
        .I1(next_state2),
        .I2(next_state3),
        .I3(\counter_pos_bram[5]_i_3_n_0 ),
        .I4(\counter_pos_bram[5]_i_4_n_0 ),
        .I5(state_packet_reg_n_0),
        .O(state_packet_i_1_n_0));
  FDRE state_packet_reg
       (.C(clk),
        .CE(1'b1),
        .D(state_packet_i_1_n_0),
        .Q(state_packet_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    valid_data_bram_i_1
       (.I0(bram_port_dout[31]),
        .I1(current_state[1]),
        .I2(current_state[3]),
        .I3(valid_data_bram1_out),
        .I4(valid_data_bram_reg_n_0),
        .O(valid_data_bram_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h09100000)) 
    valid_data_bram_i_2
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .I2(current_state[3]),
        .I3(current_state[2]),
        .I4(rst),
        .O(valid_data_bram1_out));
  FDRE valid_data_bram_reg
       (.C(clk),
        .CE(1'b1),
        .D(valid_data_bram_i_1_n_0),
        .Q(valid_data_bram_reg_n_0),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
