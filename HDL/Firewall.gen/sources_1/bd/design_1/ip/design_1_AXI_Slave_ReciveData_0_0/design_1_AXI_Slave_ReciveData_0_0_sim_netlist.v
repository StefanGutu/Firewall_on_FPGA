// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Sat Apr  4 18:20:26 2026
// Host        : Acer-Nitro5 running 64-bit Ubuntu 24.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/paxl/Projects/Licenta/Vivado/AXI_DMA_AND_BRAM/AXI_DMA_TEST/AXI_DMA_TEST.gen/sources_1/bd/design_1/ip/design_1_AXI_Slave_ReciveData_0_0/design_1_AXI_Slave_ReciveData_0_0_sim_netlist.v
// Design      : design_1_AXI_Slave_ReciveData_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_AXI_Slave_ReciveData_0_0,AXI_Slave_ReciveData,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "AXI_Slave_ReciveData,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module design_1_AXI_Slave_ReciveData_0_0
   (clk,
    rst,
    s_axis_tdata,
    s_axis_tvalid,
    s_axis_tlast,
    s_axis_tready,
    m_header_data_src_ip,
    m_header_data_dst_ip,
    m_header_data_dst_port,
    m_header_data_src_port,
    m_header_data_protocol,
    m_header_data_start,
    m_header_data_end,
    m_header_data_response,
    m_packet_id,
    m_packet_rs);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF s_axis, ASSOCIATED_RESET rst, FREQ_HZ 1e+08, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 1e+08, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input [31:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TLAST" *) input s_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) output s_axis_tready;
  output [31:0]m_header_data_src_ip;
  output [31:0]m_header_data_dst_ip;
  output [15:0]m_header_data_dst_port;
  output [15:0]m_header_data_src_port;
  output [7:0]m_header_data_protocol;
  output m_header_data_start;
  input m_header_data_end;
  input m_header_data_response;
  output [13:0]m_packet_id;
  output [1:0]m_packet_rs;

  wire clk;
  wire [31:0]m_header_data_dst_ip;
  wire [15:0]m_header_data_dst_port;
  wire m_header_data_end;
  wire [7:0]m_header_data_protocol;
  wire m_header_data_response;
  wire [31:0]m_header_data_src_ip;
  wire [15:0]m_header_data_src_port;
  wire m_header_data_start;
  wire [13:0]m_packet_id;
  wire [1:0]m_packet_rs;
  wire rst;
  wire [31:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;

  design_1_AXI_Slave_ReciveData_0_0_AXI_Slave_ReciveData inst
       (.clk(clk),
        .m_header_data_dst_ip(m_header_data_dst_ip),
        .m_header_data_dst_port(m_header_data_dst_port),
        .m_header_data_end(m_header_data_end),
        .m_header_data_protocol(m_header_data_protocol),
        .m_header_data_response(m_header_data_response),
        .m_header_data_src_ip(m_header_data_src_ip),
        .m_header_data_src_port(m_header_data_src_port),
        .m_header_data_start(m_header_data_start),
        .m_packet_id(m_packet_id),
        .m_packet_rs(m_packet_rs),
        .rst(rst),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "AXI_Slave_ReciveData" *) 
module design_1_AXI_Slave_ReciveData_0_0_AXI_Slave_ReciveData
   (m_header_data_src_ip,
    m_header_data_dst_ip,
    m_header_data_dst_port,
    m_header_data_src_port,
    m_header_data_protocol,
    m_packet_id,
    m_packet_rs,
    s_axis_tready,
    m_header_data_start,
    clk,
    s_axis_tdata,
    m_header_data_end,
    m_header_data_response,
    s_axis_tvalid,
    s_axis_tlast,
    rst);
  output [31:0]m_header_data_src_ip;
  output [31:0]m_header_data_dst_ip;
  output [15:0]m_header_data_dst_port;
  output [15:0]m_header_data_src_port;
  output [7:0]m_header_data_protocol;
  output [13:0]m_packet_id;
  output [1:0]m_packet_rs;
  output s_axis_tready;
  output m_header_data_start;
  input clk;
  input [31:0]s_axis_tdata;
  input m_header_data_end;
  input m_header_data_response;
  input s_axis_tvalid;
  input s_axis_tlast;
  input rst;

  wire Buffer;
  wire \Buffer[0][31]_i_2_n_0 ;
  wire \Buffer[0][31]_i_3_n_0 ;
  wire \Buffer[1][31]_i_1_n_0 ;
  wire \Buffer[2][31]_i_1_n_0 ;
  wire [3:0]Buffer_Counter;
  wire \Buffer_Counter[0]_i_1_n_0 ;
  wire \Buffer_Counter[1]_i_1_n_0 ;
  wire \Buffer_Counter[2]_i_1_n_0 ;
  wire \Buffer_Counter[3]_i_1_n_0 ;
  wire \Buffer_Counter[3]_i_2_n_0 ;
  wire \Buffer_Counter[3]_i_3_n_0 ;
  wire \Buffer_Counter[3]_i_4_n_0 ;
  wire \Buffer_Counter[3]_i_5_n_0 ;
  wire [31:0]\Buffer_reg[0] ;
  wire [31:0]\Buffer_reg[1] ;
  wire \Buffer_reg_n_0_[2][0] ;
  wire \Buffer_reg_n_0_[2][10] ;
  wire \Buffer_reg_n_0_[2][11] ;
  wire \Buffer_reg_n_0_[2][12] ;
  wire \Buffer_reg_n_0_[2][13] ;
  wire \Buffer_reg_n_0_[2][14] ;
  wire \Buffer_reg_n_0_[2][15] ;
  wire \Buffer_reg_n_0_[2][1] ;
  wire \Buffer_reg_n_0_[2][2] ;
  wire \Buffer_reg_n_0_[2][3] ;
  wire \Buffer_reg_n_0_[2][4] ;
  wire \Buffer_reg_n_0_[2][5] ;
  wire \Buffer_reg_n_0_[2][6] ;
  wire \Buffer_reg_n_0_[2][7] ;
  wire \Buffer_reg_n_0_[2][8] ;
  wire \Buffer_reg_n_0_[2][9] ;
  wire \FSM_onehot_current_state[0]_i_1_n_0 ;
  wire \FSM_onehot_current_state[1]_i_1_n_0 ;
  wire \FSM_onehot_current_state[2]_i_1_n_0 ;
  wire \FSM_onehot_current_state[2]_i_2_n_0 ;
  wire \FSM_onehot_current_state_reg_n_0_[0] ;
  wire [13:0]Store_ID;
  wire clk;
  wire [1:0]current_state_reg;
  wire [31:0]m_header_data_dst_ip;
  wire [15:0]m_header_data_dst_port;
  wire m_header_data_end;
  wire [7:0]m_header_data_protocol;
  wire m_header_data_response;
  wire [31:0]m_header_data_src_ip;
  wire \m_header_data_src_ip[31]_i_1_n_0 ;
  wire [15:0]m_header_data_src_port;
  wire m_header_data_start;
  wire m_header_data_start_i_1_n_0;
  wire m_header_data_start_i_2_n_0;
  wire [13:0]m_packet_id;
  wire \m_packet_id[13]_i_1_n_0 ;
  wire [1:0]m_packet_rs;
  wire \m_packet_rs[0]_i_1_n_0 ;
  wire \m_packet_rs[0]_i_2_n_0 ;
  wire \m_packet_rs[1]_i_1_n_0 ;
  wire [15:0]p_0_in;
  wire rst;
  wire [31:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tready_i_1_n_0;
  wire s_axis_tready_i_2_n_0;
  wire s_axis_tready_i_3_n_0;
  wire s_axis_tready_i_4_n_0;
  wire s_axis_tvalid;

  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \Buffer[0][31]_i_1 
       (.I0(\Buffer_Counter[3]_i_3_n_0 ),
        .I1(Buffer_Counter[0]),
        .I2(rst),
        .I3(Buffer_Counter[1]),
        .I4(\Buffer[0][31]_i_2_n_0 ),
        .I5(\Buffer[0][31]_i_3_n_0 ),
        .O(Buffer));
  LUT2 #(
    .INIT(4'hE)) 
    \Buffer[0][31]_i_2 
       (.I0(Buffer_Counter[2]),
        .I1(Buffer_Counter[3]),
        .O(\Buffer[0][31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h454F)) 
    \Buffer[0][31]_i_3 
       (.I0(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I1(m_header_data_end),
        .I2(current_state_reg[1]),
        .I3(s_axis_tlast),
        .O(\Buffer[0][31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \Buffer[1][31]_i_1 
       (.I0(\Buffer_Counter[3]_i_3_n_0 ),
        .I1(Buffer_Counter[0]),
        .I2(rst),
        .I3(Buffer_Counter[1]),
        .I4(\Buffer[0][31]_i_2_n_0 ),
        .I5(\Buffer[0][31]_i_3_n_0 ),
        .O(\Buffer[1][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \Buffer[2][31]_i_1 
       (.I0(\Buffer_Counter[3]_i_3_n_0 ),
        .I1(Buffer_Counter[0]),
        .I2(Buffer_Counter[1]),
        .I3(rst),
        .I4(\Buffer[0][31]_i_2_n_0 ),
        .I5(\Buffer[0][31]_i_3_n_0 ),
        .O(\Buffer[2][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F3FF0055)) 
    \Buffer_Counter[0]_i_1 
       (.I0(s_axis_tlast),
        .I1(current_state_reg[1]),
        .I2(m_header_data_end),
        .I3(current_state_reg[0]),
        .I4(s_axis_tready_i_4_n_0),
        .I5(Buffer_Counter[0]),
        .O(\Buffer_Counter[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h28)) 
    \Buffer_Counter[1]_i_1 
       (.I0(\Buffer_Counter[3]_i_5_n_0 ),
        .I1(Buffer_Counter[1]),
        .I2(Buffer_Counter[0]),
        .O(\Buffer_Counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \Buffer_Counter[2]_i_1 
       (.I0(\Buffer_Counter[3]_i_5_n_0 ),
        .I1(Buffer_Counter[2]),
        .I2(Buffer_Counter[0]),
        .I3(Buffer_Counter[1]),
        .O(\Buffer_Counter[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF750075007500)) 
    \Buffer_Counter[3]_i_1 
       (.I0(current_state_reg[1]),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(m_header_data_end),
        .I3(\Buffer_Counter[3]_i_3_n_0 ),
        .I4(\Buffer_Counter[3]_i_4_n_0 ),
        .I5(s_axis_tready_i_3_n_0),
        .O(\Buffer_Counter[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \Buffer_Counter[3]_i_2 
       (.I0(\Buffer_Counter[3]_i_5_n_0 ),
        .I1(Buffer_Counter[3]),
        .I2(Buffer_Counter[2]),
        .I3(Buffer_Counter[1]),
        .I4(Buffer_Counter[0]),
        .O(\Buffer_Counter[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \Buffer_Counter[3]_i_3 
       (.I0(current_state_reg[0]),
        .I1(s_axis_tvalid),
        .I2(s_axis_tready),
        .O(\Buffer_Counter[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0B000000)) 
    \Buffer_Counter[3]_i_4 
       (.I0(m_header_data_end),
        .I1(current_state_reg[1]),
        .I2(current_state_reg[0]),
        .I3(s_axis_tvalid),
        .I4(\FSM_onehot_current_state_reg_n_0_[0] ),
        .O(\Buffer_Counter[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h770777777707FFFF)) 
    \Buffer_Counter[3]_i_5 
       (.I0(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I1(s_axis_tvalid),
        .I2(current_state_reg[1]),
        .I3(m_header_data_end),
        .I4(current_state_reg[0]),
        .I5(s_axis_tready_i_3_n_0),
        .O(\Buffer_Counter[3]_i_5_n_0 ));
  FDCE \Buffer_Counter_reg[0] 
       (.C(clk),
        .CE(\Buffer_Counter[3]_i_1_n_0 ),
        .CLR(s_axis_tready_i_2_n_0),
        .D(\Buffer_Counter[0]_i_1_n_0 ),
        .Q(Buffer_Counter[0]));
  FDCE \Buffer_Counter_reg[1] 
       (.C(clk),
        .CE(\Buffer_Counter[3]_i_1_n_0 ),
        .CLR(s_axis_tready_i_2_n_0),
        .D(\Buffer_Counter[1]_i_1_n_0 ),
        .Q(Buffer_Counter[1]));
  FDCE \Buffer_Counter_reg[2] 
       (.C(clk),
        .CE(\Buffer_Counter[3]_i_1_n_0 ),
        .CLR(s_axis_tready_i_2_n_0),
        .D(\Buffer_Counter[2]_i_1_n_0 ),
        .Q(Buffer_Counter[2]));
  FDCE \Buffer_Counter_reg[3] 
       (.C(clk),
        .CE(\Buffer_Counter[3]_i_1_n_0 ),
        .CLR(s_axis_tready_i_2_n_0),
        .D(\Buffer_Counter[3]_i_2_n_0 ),
        .Q(Buffer_Counter[3]));
  FDRE \Buffer_reg[0][0] 
       (.C(clk),
        .CE(Buffer),
        .D(s_axis_tdata[0]),
        .Q(\Buffer_reg[0] [0]),
        .R(1'b0));
  FDRE \Buffer_reg[0][10] 
       (.C(clk),
        .CE(Buffer),
        .D(s_axis_tdata[10]),
        .Q(\Buffer_reg[0] [10]),
        .R(1'b0));
  FDRE \Buffer_reg[0][11] 
       (.C(clk),
        .CE(Buffer),
        .D(s_axis_tdata[11]),
        .Q(\Buffer_reg[0] [11]),
        .R(1'b0));
  FDRE \Buffer_reg[0][12] 
       (.C(clk),
        .CE(Buffer),
        .D(s_axis_tdata[12]),
        .Q(\Buffer_reg[0] [12]),
        .R(1'b0));
  FDRE \Buffer_reg[0][13] 
       (.C(clk),
        .CE(Buffer),
        .D(s_axis_tdata[13]),
        .Q(\Buffer_reg[0] [13]),
        .R(1'b0));
  FDRE \Buffer_reg[0][14] 
       (.C(clk),
        .CE(Buffer),
        .D(s_axis_tdata[14]),
        .Q(\Buffer_reg[0] [14]),
        .R(1'b0));
  FDRE \Buffer_reg[0][15] 
       (.C(clk),
        .CE(Buffer),
        .D(s_axis_tdata[15]),
        .Q(\Buffer_reg[0] [15]),
        .R(1'b0));
  FDRE \Buffer_reg[0][16] 
       (.C(clk),
        .CE(Buffer),
        .D(s_axis_tdata[16]),
        .Q(\Buffer_reg[0] [16]),
        .R(1'b0));
  FDRE \Buffer_reg[0][17] 
       (.C(clk),
        .CE(Buffer),
        .D(s_axis_tdata[17]),
        .Q(\Buffer_reg[0] [17]),
        .R(1'b0));
  FDRE \Buffer_reg[0][18] 
       (.C(clk),
        .CE(Buffer),
        .D(s_axis_tdata[18]),
        .Q(\Buffer_reg[0] [18]),
        .R(1'b0));
  FDRE \Buffer_reg[0][19] 
       (.C(clk),
        .CE(Buffer),
        .D(s_axis_tdata[19]),
        .Q(\Buffer_reg[0] [19]),
        .R(1'b0));
  FDRE \Buffer_reg[0][1] 
       (.C(clk),
        .CE(Buffer),
        .D(s_axis_tdata[1]),
        .Q(\Buffer_reg[0] [1]),
        .R(1'b0));
  FDRE \Buffer_reg[0][20] 
       (.C(clk),
        .CE(Buffer),
        .D(s_axis_tdata[20]),
        .Q(\Buffer_reg[0] [20]),
        .R(1'b0));
  FDRE \Buffer_reg[0][21] 
       (.C(clk),
        .CE(Buffer),
        .D(s_axis_tdata[21]),
        .Q(\Buffer_reg[0] [21]),
        .R(1'b0));
  FDRE \Buffer_reg[0][22] 
       (.C(clk),
        .CE(Buffer),
        .D(s_axis_tdata[22]),
        .Q(\Buffer_reg[0] [22]),
        .R(1'b0));
  FDRE \Buffer_reg[0][23] 
       (.C(clk),
        .CE(Buffer),
        .D(s_axis_tdata[23]),
        .Q(\Buffer_reg[0] [23]),
        .R(1'b0));
  FDRE \Buffer_reg[0][24] 
       (.C(clk),
        .CE(Buffer),
        .D(s_axis_tdata[24]),
        .Q(\Buffer_reg[0] [24]),
        .R(1'b0));
  FDRE \Buffer_reg[0][25] 
       (.C(clk),
        .CE(Buffer),
        .D(s_axis_tdata[25]),
        .Q(\Buffer_reg[0] [25]),
        .R(1'b0));
  FDRE \Buffer_reg[0][26] 
       (.C(clk),
        .CE(Buffer),
        .D(s_axis_tdata[26]),
        .Q(\Buffer_reg[0] [26]),
        .R(1'b0));
  FDRE \Buffer_reg[0][27] 
       (.C(clk),
        .CE(Buffer),
        .D(s_axis_tdata[27]),
        .Q(\Buffer_reg[0] [27]),
        .R(1'b0));
  FDRE \Buffer_reg[0][28] 
       (.C(clk),
        .CE(Buffer),
        .D(s_axis_tdata[28]),
        .Q(\Buffer_reg[0] [28]),
        .R(1'b0));
  FDRE \Buffer_reg[0][29] 
       (.C(clk),
        .CE(Buffer),
        .D(s_axis_tdata[29]),
        .Q(\Buffer_reg[0] [29]),
        .R(1'b0));
  FDRE \Buffer_reg[0][2] 
       (.C(clk),
        .CE(Buffer),
        .D(s_axis_tdata[2]),
        .Q(\Buffer_reg[0] [2]),
        .R(1'b0));
  FDRE \Buffer_reg[0][30] 
       (.C(clk),
        .CE(Buffer),
        .D(s_axis_tdata[30]),
        .Q(\Buffer_reg[0] [30]),
        .R(1'b0));
  FDRE \Buffer_reg[0][31] 
       (.C(clk),
        .CE(Buffer),
        .D(s_axis_tdata[31]),
        .Q(\Buffer_reg[0] [31]),
        .R(1'b0));
  FDRE \Buffer_reg[0][3] 
       (.C(clk),
        .CE(Buffer),
        .D(s_axis_tdata[3]),
        .Q(\Buffer_reg[0] [3]),
        .R(1'b0));
  FDRE \Buffer_reg[0][4] 
       (.C(clk),
        .CE(Buffer),
        .D(s_axis_tdata[4]),
        .Q(\Buffer_reg[0] [4]),
        .R(1'b0));
  FDRE \Buffer_reg[0][5] 
       (.C(clk),
        .CE(Buffer),
        .D(s_axis_tdata[5]),
        .Q(\Buffer_reg[0] [5]),
        .R(1'b0));
  FDRE \Buffer_reg[0][6] 
       (.C(clk),
        .CE(Buffer),
        .D(s_axis_tdata[6]),
        .Q(\Buffer_reg[0] [6]),
        .R(1'b0));
  FDRE \Buffer_reg[0][7] 
       (.C(clk),
        .CE(Buffer),
        .D(s_axis_tdata[7]),
        .Q(\Buffer_reg[0] [7]),
        .R(1'b0));
  FDRE \Buffer_reg[0][8] 
       (.C(clk),
        .CE(Buffer),
        .D(s_axis_tdata[8]),
        .Q(\Buffer_reg[0] [8]),
        .R(1'b0));
  FDRE \Buffer_reg[0][9] 
       (.C(clk),
        .CE(Buffer),
        .D(s_axis_tdata[9]),
        .Q(\Buffer_reg[0] [9]),
        .R(1'b0));
  FDRE \Buffer_reg[1][0] 
       (.C(clk),
        .CE(\Buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[0]),
        .Q(\Buffer_reg[1] [0]),
        .R(1'b0));
  FDRE \Buffer_reg[1][10] 
       (.C(clk),
        .CE(\Buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[10]),
        .Q(\Buffer_reg[1] [10]),
        .R(1'b0));
  FDRE \Buffer_reg[1][11] 
       (.C(clk),
        .CE(\Buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[11]),
        .Q(\Buffer_reg[1] [11]),
        .R(1'b0));
  FDRE \Buffer_reg[1][12] 
       (.C(clk),
        .CE(\Buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[12]),
        .Q(\Buffer_reg[1] [12]),
        .R(1'b0));
  FDRE \Buffer_reg[1][13] 
       (.C(clk),
        .CE(\Buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[13]),
        .Q(\Buffer_reg[1] [13]),
        .R(1'b0));
  FDRE \Buffer_reg[1][14] 
       (.C(clk),
        .CE(\Buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[14]),
        .Q(\Buffer_reg[1] [14]),
        .R(1'b0));
  FDRE \Buffer_reg[1][15] 
       (.C(clk),
        .CE(\Buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[15]),
        .Q(\Buffer_reg[1] [15]),
        .R(1'b0));
  FDRE \Buffer_reg[1][16] 
       (.C(clk),
        .CE(\Buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[16]),
        .Q(\Buffer_reg[1] [16]),
        .R(1'b0));
  FDRE \Buffer_reg[1][17] 
       (.C(clk),
        .CE(\Buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[17]),
        .Q(\Buffer_reg[1] [17]),
        .R(1'b0));
  FDRE \Buffer_reg[1][18] 
       (.C(clk),
        .CE(\Buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[18]),
        .Q(\Buffer_reg[1] [18]),
        .R(1'b0));
  FDRE \Buffer_reg[1][19] 
       (.C(clk),
        .CE(\Buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[19]),
        .Q(\Buffer_reg[1] [19]),
        .R(1'b0));
  FDRE \Buffer_reg[1][1] 
       (.C(clk),
        .CE(\Buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[1]),
        .Q(\Buffer_reg[1] [1]),
        .R(1'b0));
  FDRE \Buffer_reg[1][20] 
       (.C(clk),
        .CE(\Buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[20]),
        .Q(\Buffer_reg[1] [20]),
        .R(1'b0));
  FDRE \Buffer_reg[1][21] 
       (.C(clk),
        .CE(\Buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[21]),
        .Q(\Buffer_reg[1] [21]),
        .R(1'b0));
  FDRE \Buffer_reg[1][22] 
       (.C(clk),
        .CE(\Buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[22]),
        .Q(\Buffer_reg[1] [22]),
        .R(1'b0));
  FDRE \Buffer_reg[1][23] 
       (.C(clk),
        .CE(\Buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[23]),
        .Q(\Buffer_reg[1] [23]),
        .R(1'b0));
  FDRE \Buffer_reg[1][24] 
       (.C(clk),
        .CE(\Buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[24]),
        .Q(\Buffer_reg[1] [24]),
        .R(1'b0));
  FDRE \Buffer_reg[1][25] 
       (.C(clk),
        .CE(\Buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[25]),
        .Q(\Buffer_reg[1] [25]),
        .R(1'b0));
  FDRE \Buffer_reg[1][26] 
       (.C(clk),
        .CE(\Buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[26]),
        .Q(\Buffer_reg[1] [26]),
        .R(1'b0));
  FDRE \Buffer_reg[1][27] 
       (.C(clk),
        .CE(\Buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[27]),
        .Q(\Buffer_reg[1] [27]),
        .R(1'b0));
  FDRE \Buffer_reg[1][28] 
       (.C(clk),
        .CE(\Buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[28]),
        .Q(\Buffer_reg[1] [28]),
        .R(1'b0));
  FDRE \Buffer_reg[1][29] 
       (.C(clk),
        .CE(\Buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[29]),
        .Q(\Buffer_reg[1] [29]),
        .R(1'b0));
  FDRE \Buffer_reg[1][2] 
       (.C(clk),
        .CE(\Buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[2]),
        .Q(\Buffer_reg[1] [2]),
        .R(1'b0));
  FDRE \Buffer_reg[1][30] 
       (.C(clk),
        .CE(\Buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[30]),
        .Q(\Buffer_reg[1] [30]),
        .R(1'b0));
  FDRE \Buffer_reg[1][31] 
       (.C(clk),
        .CE(\Buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[31]),
        .Q(\Buffer_reg[1] [31]),
        .R(1'b0));
  FDRE \Buffer_reg[1][3] 
       (.C(clk),
        .CE(\Buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[3]),
        .Q(\Buffer_reg[1] [3]),
        .R(1'b0));
  FDRE \Buffer_reg[1][4] 
       (.C(clk),
        .CE(\Buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[4]),
        .Q(\Buffer_reg[1] [4]),
        .R(1'b0));
  FDRE \Buffer_reg[1][5] 
       (.C(clk),
        .CE(\Buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[5]),
        .Q(\Buffer_reg[1] [5]),
        .R(1'b0));
  FDRE \Buffer_reg[1][6] 
       (.C(clk),
        .CE(\Buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[6]),
        .Q(\Buffer_reg[1] [6]),
        .R(1'b0));
  FDRE \Buffer_reg[1][7] 
       (.C(clk),
        .CE(\Buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[7]),
        .Q(\Buffer_reg[1] [7]),
        .R(1'b0));
  FDRE \Buffer_reg[1][8] 
       (.C(clk),
        .CE(\Buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[8]),
        .Q(\Buffer_reg[1] [8]),
        .R(1'b0));
  FDRE \Buffer_reg[1][9] 
       (.C(clk),
        .CE(\Buffer[1][31]_i_1_n_0 ),
        .D(s_axis_tdata[9]),
        .Q(\Buffer_reg[1] [9]),
        .R(1'b0));
  FDRE \Buffer_reg[2][0] 
       (.C(clk),
        .CE(\Buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[0]),
        .Q(\Buffer_reg_n_0_[2][0] ),
        .R(1'b0));
  FDRE \Buffer_reg[2][10] 
       (.C(clk),
        .CE(\Buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[10]),
        .Q(\Buffer_reg_n_0_[2][10] ),
        .R(1'b0));
  FDRE \Buffer_reg[2][11] 
       (.C(clk),
        .CE(\Buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[11]),
        .Q(\Buffer_reg_n_0_[2][11] ),
        .R(1'b0));
  FDRE \Buffer_reg[2][12] 
       (.C(clk),
        .CE(\Buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[12]),
        .Q(\Buffer_reg_n_0_[2][12] ),
        .R(1'b0));
  FDRE \Buffer_reg[2][13] 
       (.C(clk),
        .CE(\Buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[13]),
        .Q(\Buffer_reg_n_0_[2][13] ),
        .R(1'b0));
  FDRE \Buffer_reg[2][14] 
       (.C(clk),
        .CE(\Buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[14]),
        .Q(\Buffer_reg_n_0_[2][14] ),
        .R(1'b0));
  FDRE \Buffer_reg[2][15] 
       (.C(clk),
        .CE(\Buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[15]),
        .Q(\Buffer_reg_n_0_[2][15] ),
        .R(1'b0));
  FDRE \Buffer_reg[2][16] 
       (.C(clk),
        .CE(\Buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[16]),
        .Q(p_0_in[0]),
        .R(1'b0));
  FDRE \Buffer_reg[2][17] 
       (.C(clk),
        .CE(\Buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[17]),
        .Q(p_0_in[1]),
        .R(1'b0));
  FDRE \Buffer_reg[2][18] 
       (.C(clk),
        .CE(\Buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[18]),
        .Q(p_0_in[2]),
        .R(1'b0));
  FDRE \Buffer_reg[2][19] 
       (.C(clk),
        .CE(\Buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[19]),
        .Q(p_0_in[3]),
        .R(1'b0));
  FDRE \Buffer_reg[2][1] 
       (.C(clk),
        .CE(\Buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[1]),
        .Q(\Buffer_reg_n_0_[2][1] ),
        .R(1'b0));
  FDRE \Buffer_reg[2][20] 
       (.C(clk),
        .CE(\Buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[20]),
        .Q(p_0_in[4]),
        .R(1'b0));
  FDRE \Buffer_reg[2][21] 
       (.C(clk),
        .CE(\Buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[21]),
        .Q(p_0_in[5]),
        .R(1'b0));
  FDRE \Buffer_reg[2][22] 
       (.C(clk),
        .CE(\Buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[22]),
        .Q(p_0_in[6]),
        .R(1'b0));
  FDRE \Buffer_reg[2][23] 
       (.C(clk),
        .CE(\Buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[23]),
        .Q(p_0_in[7]),
        .R(1'b0));
  FDRE \Buffer_reg[2][24] 
       (.C(clk),
        .CE(\Buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[24]),
        .Q(p_0_in[8]),
        .R(1'b0));
  FDRE \Buffer_reg[2][25] 
       (.C(clk),
        .CE(\Buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[25]),
        .Q(p_0_in[9]),
        .R(1'b0));
  FDRE \Buffer_reg[2][26] 
       (.C(clk),
        .CE(\Buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[26]),
        .Q(p_0_in[10]),
        .R(1'b0));
  FDRE \Buffer_reg[2][27] 
       (.C(clk),
        .CE(\Buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[27]),
        .Q(p_0_in[11]),
        .R(1'b0));
  FDRE \Buffer_reg[2][28] 
       (.C(clk),
        .CE(\Buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[28]),
        .Q(p_0_in[12]),
        .R(1'b0));
  FDRE \Buffer_reg[2][29] 
       (.C(clk),
        .CE(\Buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[29]),
        .Q(p_0_in[13]),
        .R(1'b0));
  FDRE \Buffer_reg[2][2] 
       (.C(clk),
        .CE(\Buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[2]),
        .Q(\Buffer_reg_n_0_[2][2] ),
        .R(1'b0));
  FDRE \Buffer_reg[2][30] 
       (.C(clk),
        .CE(\Buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[30]),
        .Q(p_0_in[14]),
        .R(1'b0));
  FDRE \Buffer_reg[2][31] 
       (.C(clk),
        .CE(\Buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[31]),
        .Q(p_0_in[15]),
        .R(1'b0));
  FDRE \Buffer_reg[2][3] 
       (.C(clk),
        .CE(\Buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[3]),
        .Q(\Buffer_reg_n_0_[2][3] ),
        .R(1'b0));
  FDRE \Buffer_reg[2][4] 
       (.C(clk),
        .CE(\Buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[4]),
        .Q(\Buffer_reg_n_0_[2][4] ),
        .R(1'b0));
  FDRE \Buffer_reg[2][5] 
       (.C(clk),
        .CE(\Buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[5]),
        .Q(\Buffer_reg_n_0_[2][5] ),
        .R(1'b0));
  FDRE \Buffer_reg[2][6] 
       (.C(clk),
        .CE(\Buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[6]),
        .Q(\Buffer_reg_n_0_[2][6] ),
        .R(1'b0));
  FDRE \Buffer_reg[2][7] 
       (.C(clk),
        .CE(\Buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[7]),
        .Q(\Buffer_reg_n_0_[2][7] ),
        .R(1'b0));
  FDRE \Buffer_reg[2][8] 
       (.C(clk),
        .CE(\Buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[8]),
        .Q(\Buffer_reg_n_0_[2][8] ),
        .R(1'b0));
  FDRE \Buffer_reg[2][9] 
       (.C(clk),
        .CE(\Buffer[2][31]_i_1_n_0 ),
        .D(s_axis_tdata[9]),
        .Q(\Buffer_reg_n_0_[2][9] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAFFF8888)) 
    \FSM_onehot_current_state[0]_i_1 
       (.I0(current_state_reg[1]),
        .I1(m_header_data_end),
        .I2(s_axis_tvalid),
        .I3(s_axis_tready_i_3_n_0),
        .I4(\FSM_onehot_current_state_reg_n_0_[0] ),
        .O(\FSM_onehot_current_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8880FF8088808880)) 
    \FSM_onehot_current_state[1]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I1(s_axis_tvalid),
        .I2(s_axis_tready_i_3_n_0),
        .I3(current_state_reg[0]),
        .I4(m_header_data_end),
        .I5(current_state_reg[1]),
        .O(\FSM_onehot_current_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF02FF0000)) 
    \FSM_onehot_current_state[2]_i_1 
       (.I0(\FSM_onehot_current_state[2]_i_2_n_0 ),
        .I1(s_axis_tlast),
        .I2(s_axis_tready_i_4_n_0),
        .I3(m_header_data_end),
        .I4(current_state_reg[1]),
        .I5(current_state_reg[0]),
        .O(\FSM_onehot_current_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    \FSM_onehot_current_state[2]_i_2 
       (.I0(Buffer_Counter[1]),
        .I1(Buffer_Counter[0]),
        .I2(Buffer_Counter[3]),
        .I3(Buffer_Counter[2]),
        .O(\FSM_onehot_current_state[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "WAIT:100,SEND:010,RECIVE:001" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_current_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .PRE(s_axis_tready_i_2_n_0),
        .Q(\FSM_onehot_current_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "WAIT:100,SEND:010,RECIVE:001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(s_axis_tready_i_2_n_0),
        .D(\FSM_onehot_current_state[1]_i_1_n_0 ),
        .Q(current_state_reg[0]));
  (* FSM_ENCODED_STATES = "WAIT:100,SEND:010,RECIVE:001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(s_axis_tready_i_2_n_0),
        .D(\FSM_onehot_current_state[2]_i_1_n_0 ),
        .Q(current_state_reg[1]));
  FDRE \Store_ID_reg[0] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(s_axis_tdata[8]),
        .Q(Store_ID[0]),
        .R(1'b0));
  FDRE \Store_ID_reg[10] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(s_axis_tdata[18]),
        .Q(Store_ID[10]),
        .R(1'b0));
  FDRE \Store_ID_reg[11] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(s_axis_tdata[19]),
        .Q(Store_ID[11]),
        .R(1'b0));
  FDRE \Store_ID_reg[12] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(s_axis_tdata[20]),
        .Q(Store_ID[12]),
        .R(1'b0));
  FDRE \Store_ID_reg[13] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(s_axis_tdata[21]),
        .Q(Store_ID[13]),
        .R(1'b0));
  FDRE \Store_ID_reg[1] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(s_axis_tdata[9]),
        .Q(Store_ID[1]),
        .R(1'b0));
  FDRE \Store_ID_reg[2] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(s_axis_tdata[10]),
        .Q(Store_ID[2]),
        .R(1'b0));
  FDRE \Store_ID_reg[3] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(s_axis_tdata[11]),
        .Q(Store_ID[3]),
        .R(1'b0));
  FDRE \Store_ID_reg[4] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(s_axis_tdata[12]),
        .Q(Store_ID[4]),
        .R(1'b0));
  FDRE \Store_ID_reg[5] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(s_axis_tdata[13]),
        .Q(Store_ID[5]),
        .R(1'b0));
  FDRE \Store_ID_reg[6] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(s_axis_tdata[14]),
        .Q(Store_ID[6]),
        .R(1'b0));
  FDRE \Store_ID_reg[7] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(s_axis_tdata[15]),
        .Q(Store_ID[7]),
        .R(1'b0));
  FDRE \Store_ID_reg[8] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(s_axis_tdata[16]),
        .Q(Store_ID[8]),
        .R(1'b0));
  FDRE \Store_ID_reg[9] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(s_axis_tdata[17]),
        .Q(Store_ID[9]),
        .R(1'b0));
  FDRE \m_header_data_dst_ip_reg[0] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg[1] [0]),
        .Q(m_header_data_dst_ip[0]),
        .R(1'b0));
  FDRE \m_header_data_dst_ip_reg[10] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg[1] [10]),
        .Q(m_header_data_dst_ip[10]),
        .R(1'b0));
  FDRE \m_header_data_dst_ip_reg[11] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg[1] [11]),
        .Q(m_header_data_dst_ip[11]),
        .R(1'b0));
  FDRE \m_header_data_dst_ip_reg[12] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg[1] [12]),
        .Q(m_header_data_dst_ip[12]),
        .R(1'b0));
  FDRE \m_header_data_dst_ip_reg[13] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg[1] [13]),
        .Q(m_header_data_dst_ip[13]),
        .R(1'b0));
  FDRE \m_header_data_dst_ip_reg[14] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg[1] [14]),
        .Q(m_header_data_dst_ip[14]),
        .R(1'b0));
  FDRE \m_header_data_dst_ip_reg[15] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg[1] [15]),
        .Q(m_header_data_dst_ip[15]),
        .R(1'b0));
  FDRE \m_header_data_dst_ip_reg[16] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg[1] [16]),
        .Q(m_header_data_dst_ip[16]),
        .R(1'b0));
  FDRE \m_header_data_dst_ip_reg[17] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg[1] [17]),
        .Q(m_header_data_dst_ip[17]),
        .R(1'b0));
  FDRE \m_header_data_dst_ip_reg[18] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg[1] [18]),
        .Q(m_header_data_dst_ip[18]),
        .R(1'b0));
  FDRE \m_header_data_dst_ip_reg[19] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg[1] [19]),
        .Q(m_header_data_dst_ip[19]),
        .R(1'b0));
  FDRE \m_header_data_dst_ip_reg[1] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg[1] [1]),
        .Q(m_header_data_dst_ip[1]),
        .R(1'b0));
  FDRE \m_header_data_dst_ip_reg[20] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg[1] [20]),
        .Q(m_header_data_dst_ip[20]),
        .R(1'b0));
  FDRE \m_header_data_dst_ip_reg[21] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg[1] [21]),
        .Q(m_header_data_dst_ip[21]),
        .R(1'b0));
  FDRE \m_header_data_dst_ip_reg[22] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg[1] [22]),
        .Q(m_header_data_dst_ip[22]),
        .R(1'b0));
  FDRE \m_header_data_dst_ip_reg[23] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg[1] [23]),
        .Q(m_header_data_dst_ip[23]),
        .R(1'b0));
  FDRE \m_header_data_dst_ip_reg[24] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg[1] [24]),
        .Q(m_header_data_dst_ip[24]),
        .R(1'b0));
  FDRE \m_header_data_dst_ip_reg[25] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg[1] [25]),
        .Q(m_header_data_dst_ip[25]),
        .R(1'b0));
  FDRE \m_header_data_dst_ip_reg[26] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg[1] [26]),
        .Q(m_header_data_dst_ip[26]),
        .R(1'b0));
  FDRE \m_header_data_dst_ip_reg[27] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg[1] [27]),
        .Q(m_header_data_dst_ip[27]),
        .R(1'b0));
  FDRE \m_header_data_dst_ip_reg[28] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg[1] [28]),
        .Q(m_header_data_dst_ip[28]),
        .R(1'b0));
  FDRE \m_header_data_dst_ip_reg[29] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg[1] [29]),
        .Q(m_header_data_dst_ip[29]),
        .R(1'b0));
  FDRE \m_header_data_dst_ip_reg[2] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg[1] [2]),
        .Q(m_header_data_dst_ip[2]),
        .R(1'b0));
  FDRE \m_header_data_dst_ip_reg[30] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg[1] [30]),
        .Q(m_header_data_dst_ip[30]),
        .R(1'b0));
  FDRE \m_header_data_dst_ip_reg[31] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg[1] [31]),
        .Q(m_header_data_dst_ip[31]),
        .R(1'b0));
  FDRE \m_header_data_dst_ip_reg[3] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg[1] [3]),
        .Q(m_header_data_dst_ip[3]),
        .R(1'b0));
  FDRE \m_header_data_dst_ip_reg[4] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg[1] [4]),
        .Q(m_header_data_dst_ip[4]),
        .R(1'b0));
  FDRE \m_header_data_dst_ip_reg[5] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg[1] [5]),
        .Q(m_header_data_dst_ip[5]),
        .R(1'b0));
  FDRE \m_header_data_dst_ip_reg[6] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg[1] [6]),
        .Q(m_header_data_dst_ip[6]),
        .R(1'b0));
  FDRE \m_header_data_dst_ip_reg[7] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg[1] [7]),
        .Q(m_header_data_dst_ip[7]),
        .R(1'b0));
  FDRE \m_header_data_dst_ip_reg[8] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg[1] [8]),
        .Q(m_header_data_dst_ip[8]),
        .R(1'b0));
  FDRE \m_header_data_dst_ip_reg[9] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg[1] [9]),
        .Q(m_header_data_dst_ip[9]),
        .R(1'b0));
  FDRE \m_header_data_dst_port_reg[0] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg_n_0_[2][0] ),
        .Q(m_header_data_dst_port[0]),
        .R(1'b0));
  FDRE \m_header_data_dst_port_reg[10] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg_n_0_[2][10] ),
        .Q(m_header_data_dst_port[10]),
        .R(1'b0));
  FDRE \m_header_data_dst_port_reg[11] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg_n_0_[2][11] ),
        .Q(m_header_data_dst_port[11]),
        .R(1'b0));
  FDRE \m_header_data_dst_port_reg[12] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg_n_0_[2][12] ),
        .Q(m_header_data_dst_port[12]),
        .R(1'b0));
  FDRE \m_header_data_dst_port_reg[13] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg_n_0_[2][13] ),
        .Q(m_header_data_dst_port[13]),
        .R(1'b0));
  FDRE \m_header_data_dst_port_reg[14] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg_n_0_[2][14] ),
        .Q(m_header_data_dst_port[14]),
        .R(1'b0));
  FDRE \m_header_data_dst_port_reg[15] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg_n_0_[2][15] ),
        .Q(m_header_data_dst_port[15]),
        .R(1'b0));
  FDRE \m_header_data_dst_port_reg[1] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg_n_0_[2][1] ),
        .Q(m_header_data_dst_port[1]),
        .R(1'b0));
  FDRE \m_header_data_dst_port_reg[2] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg_n_0_[2][2] ),
        .Q(m_header_data_dst_port[2]),
        .R(1'b0));
  FDRE \m_header_data_dst_port_reg[3] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg_n_0_[2][3] ),
        .Q(m_header_data_dst_port[3]),
        .R(1'b0));
  FDRE \m_header_data_dst_port_reg[4] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg_n_0_[2][4] ),
        .Q(m_header_data_dst_port[4]),
        .R(1'b0));
  FDRE \m_header_data_dst_port_reg[5] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg_n_0_[2][5] ),
        .Q(m_header_data_dst_port[5]),
        .R(1'b0));
  FDRE \m_header_data_dst_port_reg[6] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg_n_0_[2][6] ),
        .Q(m_header_data_dst_port[6]),
        .R(1'b0));
  FDRE \m_header_data_dst_port_reg[7] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg_n_0_[2][7] ),
        .Q(m_header_data_dst_port[7]),
        .R(1'b0));
  FDRE \m_header_data_dst_port_reg[8] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg_n_0_[2][8] ),
        .Q(m_header_data_dst_port[8]),
        .R(1'b0));
  FDRE \m_header_data_dst_port_reg[9] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg_n_0_[2][9] ),
        .Q(m_header_data_dst_port[9]),
        .R(1'b0));
  FDRE \m_header_data_protocol_reg[0] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(s_axis_tdata[0]),
        .Q(m_header_data_protocol[0]),
        .R(1'b0));
  FDRE \m_header_data_protocol_reg[1] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(s_axis_tdata[1]),
        .Q(m_header_data_protocol[1]),
        .R(1'b0));
  FDRE \m_header_data_protocol_reg[2] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(s_axis_tdata[2]),
        .Q(m_header_data_protocol[2]),
        .R(1'b0));
  FDRE \m_header_data_protocol_reg[3] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(s_axis_tdata[3]),
        .Q(m_header_data_protocol[3]),
        .R(1'b0));
  FDRE \m_header_data_protocol_reg[4] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(s_axis_tdata[4]),
        .Q(m_header_data_protocol[4]),
        .R(1'b0));
  FDRE \m_header_data_protocol_reg[5] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(s_axis_tdata[5]),
        .Q(m_header_data_protocol[5]),
        .R(1'b0));
  FDRE \m_header_data_protocol_reg[6] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(s_axis_tdata[6]),
        .Q(m_header_data_protocol[6]),
        .R(1'b0));
  FDRE \m_header_data_protocol_reg[7] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(s_axis_tdata[7]),
        .Q(m_header_data_protocol[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000510000000000)) 
    \m_header_data_src_ip[31]_i_1 
       (.I0(current_state_reg[0]),
        .I1(current_state_reg[1]),
        .I2(m_header_data_end),
        .I3(rst),
        .I4(s_axis_tready_i_4_n_0),
        .I5(s_axis_tready_i_3_n_0),
        .O(\m_header_data_src_ip[31]_i_1_n_0 ));
  FDRE \m_header_data_src_ip_reg[0] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg[0] [0]),
        .Q(m_header_data_src_ip[0]),
        .R(1'b0));
  FDRE \m_header_data_src_ip_reg[10] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg[0] [10]),
        .Q(m_header_data_src_ip[10]),
        .R(1'b0));
  FDRE \m_header_data_src_ip_reg[11] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg[0] [11]),
        .Q(m_header_data_src_ip[11]),
        .R(1'b0));
  FDRE \m_header_data_src_ip_reg[12] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg[0] [12]),
        .Q(m_header_data_src_ip[12]),
        .R(1'b0));
  FDRE \m_header_data_src_ip_reg[13] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg[0] [13]),
        .Q(m_header_data_src_ip[13]),
        .R(1'b0));
  FDRE \m_header_data_src_ip_reg[14] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg[0] [14]),
        .Q(m_header_data_src_ip[14]),
        .R(1'b0));
  FDRE \m_header_data_src_ip_reg[15] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg[0] [15]),
        .Q(m_header_data_src_ip[15]),
        .R(1'b0));
  FDRE \m_header_data_src_ip_reg[16] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg[0] [16]),
        .Q(m_header_data_src_ip[16]),
        .R(1'b0));
  FDRE \m_header_data_src_ip_reg[17] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg[0] [17]),
        .Q(m_header_data_src_ip[17]),
        .R(1'b0));
  FDRE \m_header_data_src_ip_reg[18] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg[0] [18]),
        .Q(m_header_data_src_ip[18]),
        .R(1'b0));
  FDRE \m_header_data_src_ip_reg[19] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg[0] [19]),
        .Q(m_header_data_src_ip[19]),
        .R(1'b0));
  FDRE \m_header_data_src_ip_reg[1] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg[0] [1]),
        .Q(m_header_data_src_ip[1]),
        .R(1'b0));
  FDRE \m_header_data_src_ip_reg[20] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg[0] [20]),
        .Q(m_header_data_src_ip[20]),
        .R(1'b0));
  FDRE \m_header_data_src_ip_reg[21] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg[0] [21]),
        .Q(m_header_data_src_ip[21]),
        .R(1'b0));
  FDRE \m_header_data_src_ip_reg[22] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg[0] [22]),
        .Q(m_header_data_src_ip[22]),
        .R(1'b0));
  FDRE \m_header_data_src_ip_reg[23] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg[0] [23]),
        .Q(m_header_data_src_ip[23]),
        .R(1'b0));
  FDRE \m_header_data_src_ip_reg[24] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg[0] [24]),
        .Q(m_header_data_src_ip[24]),
        .R(1'b0));
  FDRE \m_header_data_src_ip_reg[25] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg[0] [25]),
        .Q(m_header_data_src_ip[25]),
        .R(1'b0));
  FDRE \m_header_data_src_ip_reg[26] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg[0] [26]),
        .Q(m_header_data_src_ip[26]),
        .R(1'b0));
  FDRE \m_header_data_src_ip_reg[27] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg[0] [27]),
        .Q(m_header_data_src_ip[27]),
        .R(1'b0));
  FDRE \m_header_data_src_ip_reg[28] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg[0] [28]),
        .Q(m_header_data_src_ip[28]),
        .R(1'b0));
  FDRE \m_header_data_src_ip_reg[29] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg[0] [29]),
        .Q(m_header_data_src_ip[29]),
        .R(1'b0));
  FDRE \m_header_data_src_ip_reg[2] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg[0] [2]),
        .Q(m_header_data_src_ip[2]),
        .R(1'b0));
  FDRE \m_header_data_src_ip_reg[30] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg[0] [30]),
        .Q(m_header_data_src_ip[30]),
        .R(1'b0));
  FDRE \m_header_data_src_ip_reg[31] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg[0] [31]),
        .Q(m_header_data_src_ip[31]),
        .R(1'b0));
  FDRE \m_header_data_src_ip_reg[3] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg[0] [3]),
        .Q(m_header_data_src_ip[3]),
        .R(1'b0));
  FDRE \m_header_data_src_ip_reg[4] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg[0] [4]),
        .Q(m_header_data_src_ip[4]),
        .R(1'b0));
  FDRE \m_header_data_src_ip_reg[5] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg[0] [5]),
        .Q(m_header_data_src_ip[5]),
        .R(1'b0));
  FDRE \m_header_data_src_ip_reg[6] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg[0] [6]),
        .Q(m_header_data_src_ip[6]),
        .R(1'b0));
  FDRE \m_header_data_src_ip_reg[7] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg[0] [7]),
        .Q(m_header_data_src_ip[7]),
        .R(1'b0));
  FDRE \m_header_data_src_ip_reg[8] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg[0] [8]),
        .Q(m_header_data_src_ip[8]),
        .R(1'b0));
  FDRE \m_header_data_src_ip_reg[9] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(\Buffer_reg[0] [9]),
        .Q(m_header_data_src_ip[9]),
        .R(1'b0));
  FDRE \m_header_data_src_port_reg[0] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(p_0_in[0]),
        .Q(m_header_data_src_port[0]),
        .R(1'b0));
  FDRE \m_header_data_src_port_reg[10] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(p_0_in[10]),
        .Q(m_header_data_src_port[10]),
        .R(1'b0));
  FDRE \m_header_data_src_port_reg[11] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(p_0_in[11]),
        .Q(m_header_data_src_port[11]),
        .R(1'b0));
  FDRE \m_header_data_src_port_reg[12] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(p_0_in[12]),
        .Q(m_header_data_src_port[12]),
        .R(1'b0));
  FDRE \m_header_data_src_port_reg[13] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(p_0_in[13]),
        .Q(m_header_data_src_port[13]),
        .R(1'b0));
  FDRE \m_header_data_src_port_reg[14] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(p_0_in[14]),
        .Q(m_header_data_src_port[14]),
        .R(1'b0));
  FDRE \m_header_data_src_port_reg[15] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(p_0_in[15]),
        .Q(m_header_data_src_port[15]),
        .R(1'b0));
  FDRE \m_header_data_src_port_reg[1] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(p_0_in[1]),
        .Q(m_header_data_src_port[1]),
        .R(1'b0));
  FDRE \m_header_data_src_port_reg[2] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(p_0_in[2]),
        .Q(m_header_data_src_port[2]),
        .R(1'b0));
  FDRE \m_header_data_src_port_reg[3] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(p_0_in[3]),
        .Q(m_header_data_src_port[3]),
        .R(1'b0));
  FDRE \m_header_data_src_port_reg[4] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(p_0_in[4]),
        .Q(m_header_data_src_port[4]),
        .R(1'b0));
  FDRE \m_header_data_src_port_reg[5] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(p_0_in[5]),
        .Q(m_header_data_src_port[5]),
        .R(1'b0));
  FDRE \m_header_data_src_port_reg[6] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(p_0_in[6]),
        .Q(m_header_data_src_port[6]),
        .R(1'b0));
  FDRE \m_header_data_src_port_reg[7] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(p_0_in[7]),
        .Q(m_header_data_src_port[7]),
        .R(1'b0));
  FDRE \m_header_data_src_port_reg[8] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(p_0_in[8]),
        .Q(m_header_data_src_port[8]),
        .R(1'b0));
  FDRE \m_header_data_src_port_reg[9] 
       (.C(clk),
        .CE(\m_header_data_src_ip[31]_i_1_n_0 ),
        .D(p_0_in[9]),
        .Q(m_header_data_src_port[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hEB28)) 
    m_header_data_start_i_1
       (.I0(m_header_data_start_i_2_n_0),
        .I1(\FSM_onehot_current_state[1]_i_1_n_0 ),
        .I2(\FSM_onehot_current_state[2]_i_1_n_0 ),
        .I3(m_header_data_start),
        .O(m_header_data_start_i_1_n_0));
  LUT6 #(
    .INIT(64'h00000000DFFF5555)) 
    m_header_data_start_i_2
       (.I0(current_state_reg[1]),
        .I1(s_axis_tready_i_3_n_0),
        .I2(s_axis_tvalid),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I4(m_header_data_end),
        .I5(current_state_reg[0]),
        .O(m_header_data_start_i_2_n_0));
  FDCE m_header_data_start_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(s_axis_tready_i_2_n_0),
        .D(m_header_data_start_i_1_n_0),
        .Q(m_header_data_start));
  LUT6 #(
    .INIT(64'h0808080800000008)) 
    \m_packet_id[13]_i_1 
       (.I0(rst),
        .I1(m_header_data_end),
        .I2(current_state_reg[0]),
        .I3(s_axis_tready_i_3_n_0),
        .I4(current_state_reg[1]),
        .I5(s_axis_tready_i_4_n_0),
        .O(\m_packet_id[13]_i_1_n_0 ));
  FDRE \m_packet_id_reg[0] 
       (.C(clk),
        .CE(\m_packet_id[13]_i_1_n_0 ),
        .D(Store_ID[0]),
        .Q(m_packet_id[0]),
        .R(1'b0));
  FDRE \m_packet_id_reg[10] 
       (.C(clk),
        .CE(\m_packet_id[13]_i_1_n_0 ),
        .D(Store_ID[10]),
        .Q(m_packet_id[10]),
        .R(1'b0));
  FDRE \m_packet_id_reg[11] 
       (.C(clk),
        .CE(\m_packet_id[13]_i_1_n_0 ),
        .D(Store_ID[11]),
        .Q(m_packet_id[11]),
        .R(1'b0));
  FDRE \m_packet_id_reg[12] 
       (.C(clk),
        .CE(\m_packet_id[13]_i_1_n_0 ),
        .D(Store_ID[12]),
        .Q(m_packet_id[12]),
        .R(1'b0));
  FDRE \m_packet_id_reg[13] 
       (.C(clk),
        .CE(\m_packet_id[13]_i_1_n_0 ),
        .D(Store_ID[13]),
        .Q(m_packet_id[13]),
        .R(1'b0));
  FDRE \m_packet_id_reg[1] 
       (.C(clk),
        .CE(\m_packet_id[13]_i_1_n_0 ),
        .D(Store_ID[1]),
        .Q(m_packet_id[1]),
        .R(1'b0));
  FDRE \m_packet_id_reg[2] 
       (.C(clk),
        .CE(\m_packet_id[13]_i_1_n_0 ),
        .D(Store_ID[2]),
        .Q(m_packet_id[2]),
        .R(1'b0));
  FDRE \m_packet_id_reg[3] 
       (.C(clk),
        .CE(\m_packet_id[13]_i_1_n_0 ),
        .D(Store_ID[3]),
        .Q(m_packet_id[3]),
        .R(1'b0));
  FDRE \m_packet_id_reg[4] 
       (.C(clk),
        .CE(\m_packet_id[13]_i_1_n_0 ),
        .D(Store_ID[4]),
        .Q(m_packet_id[4]),
        .R(1'b0));
  FDRE \m_packet_id_reg[5] 
       (.C(clk),
        .CE(\m_packet_id[13]_i_1_n_0 ),
        .D(Store_ID[5]),
        .Q(m_packet_id[5]),
        .R(1'b0));
  FDRE \m_packet_id_reg[6] 
       (.C(clk),
        .CE(\m_packet_id[13]_i_1_n_0 ),
        .D(Store_ID[6]),
        .Q(m_packet_id[6]),
        .R(1'b0));
  FDRE \m_packet_id_reg[7] 
       (.C(clk),
        .CE(\m_packet_id[13]_i_1_n_0 ),
        .D(Store_ID[7]),
        .Q(m_packet_id[7]),
        .R(1'b0));
  FDRE \m_packet_id_reg[8] 
       (.C(clk),
        .CE(\m_packet_id[13]_i_1_n_0 ),
        .D(Store_ID[8]),
        .Q(m_packet_id[8]),
        .R(1'b0));
  FDRE \m_packet_id_reg[9] 
       (.C(clk),
        .CE(\m_packet_id[13]_i_1_n_0 ),
        .D(Store_ID[9]),
        .Q(m_packet_id[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h8F80)) 
    \m_packet_rs[0]_i_1 
       (.I0(m_header_data_response),
        .I1(m_header_data_end),
        .I2(\m_packet_rs[0]_i_2_n_0 ),
        .I3(m_packet_rs[0]),
        .O(\m_packet_rs[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0101330333033303)) 
    \m_packet_rs[0]_i_2 
       (.I0(s_axis_tready_i_3_n_0),
        .I1(current_state_reg[0]),
        .I2(current_state_reg[1]),
        .I3(m_header_data_end),
        .I4(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I5(s_axis_tvalid),
        .O(\m_packet_rs[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFCFFFE33000100)) 
    \m_packet_rs[1]_i_1 
       (.I0(s_axis_tready_i_3_n_0),
        .I1(current_state_reg[0]),
        .I2(current_state_reg[1]),
        .I3(m_header_data_end),
        .I4(s_axis_tready_i_4_n_0),
        .I5(m_packet_rs[1]),
        .O(\m_packet_rs[1]_i_1_n_0 ));
  FDCE \m_packet_rs_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(s_axis_tready_i_2_n_0),
        .D(\m_packet_rs[0]_i_1_n_0 ),
        .Q(m_packet_rs[0]));
  FDCE \m_packet_rs_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(s_axis_tready_i_2_n_0),
        .D(\m_packet_rs[1]_i_1_n_0 ),
        .Q(m_packet_rs[1]));
  LUT6 #(
    .INIT(64'hFFFFF3FB0000F151)) 
    s_axis_tready_i_1
       (.I0(current_state_reg[1]),
        .I1(s_axis_tready_i_3_n_0),
        .I2(s_axis_tready_i_4_n_0),
        .I3(m_header_data_end),
        .I4(current_state_reg[0]),
        .I5(s_axis_tready),
        .O(s_axis_tready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    s_axis_tready_i_2
       (.I0(rst),
        .O(s_axis_tready_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hABAAAAAA)) 
    s_axis_tready_i_3
       (.I0(s_axis_tlast),
        .I1(Buffer_Counter[2]),
        .I2(Buffer_Counter[3]),
        .I3(Buffer_Counter[0]),
        .I4(Buffer_Counter[1]),
        .O(s_axis_tready_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h7)) 
    s_axis_tready_i_4
       (.I0(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I1(s_axis_tvalid),
        .O(s_axis_tready_i_4_n_0));
  FDPE s_axis_tready_reg
       (.C(clk),
        .CE(1'b1),
        .D(s_axis_tready_i_1_n_0),
        .PRE(s_axis_tready_i_2_n_0),
        .Q(s_axis_tready));
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
