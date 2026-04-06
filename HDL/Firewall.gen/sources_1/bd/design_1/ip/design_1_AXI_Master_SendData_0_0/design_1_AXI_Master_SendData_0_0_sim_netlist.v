// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Sat Jan 31 00:59:12 2026
// Host        : Acer-Nitro5 running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/paxl/Projects/Licenta/Vivado/AXI_DMA_AND_BRAM/AXI_DMA_TEST/AXI_DMA_TEST.gen/sources_1/bd/design_1/ip/design_1_AXI_Master_SendData_0_0/design_1_AXI_Master_SendData_0_0_sim_netlist.v
// Design      : design_1_AXI_Master_SendData_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_AXI_Master_SendData_0_0,AXI_Master_SendData,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "AXI_Master_SendData,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module design_1_AXI_Master_SendData_0_0
   (clk,
    rst,
    s_packet_id,
    s_packet_rs,
    m_axis_tdata,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tlast);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_axis, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input [13:0]s_packet_id;
  input [1:0]s_packet_rs;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [31:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) output m_axis_tlast;

  wire \<const0> ;
  wire clk;
  wire [15:0]\^m_axis_tdata ;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire rst;
  wire [13:0]s_packet_id;
  wire [1:0]s_packet_rs;

  assign m_axis_tdata[31] = \<const0> ;
  assign m_axis_tdata[30] = \<const0> ;
  assign m_axis_tdata[29] = \<const0> ;
  assign m_axis_tdata[28] = \<const0> ;
  assign m_axis_tdata[27] = \<const0> ;
  assign m_axis_tdata[26] = \<const0> ;
  assign m_axis_tdata[25] = \<const0> ;
  assign m_axis_tdata[24] = \<const0> ;
  assign m_axis_tdata[23] = \<const0> ;
  assign m_axis_tdata[22] = \<const0> ;
  assign m_axis_tdata[21] = \<const0> ;
  assign m_axis_tdata[20] = \<const0> ;
  assign m_axis_tdata[19] = \<const0> ;
  assign m_axis_tdata[18] = \<const0> ;
  assign m_axis_tdata[17] = \<const0> ;
  assign m_axis_tdata[16] = \<const0> ;
  assign m_axis_tdata[15:0] = \^m_axis_tdata [15:0];
  GND GND
       (.G(\<const0> ));
  design_1_AXI_Master_SendData_0_0_AXI_Master_SendData inst
       (.D({s_packet_id,s_packet_rs}),
        .clk(clk),
        .m_axis_tdata(\^m_axis_tdata ),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid_reg_0(m_axis_tvalid),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "AXI_Master_SendData" *) 
module design_1_AXI_Master_SendData_0_0_AXI_Master_SendData
   (m_axis_tdata,
    m_axis_tvalid_reg_0,
    m_axis_tlast,
    D,
    clk,
    m_axis_tready,
    rst);
  output [15:0]m_axis_tdata;
  output m_axis_tvalid_reg_0;
  output m_axis_tlast;
  input [15:0]D;
  input clk;
  input m_axis_tready;
  input rst;

  wire [15:0]D;
  wire clk;
  wire [15:0]m_axis_tdata;
  wire \m_axis_tdata[15]_i_1_n_0 ;
  wire \m_axis_tdata[15]_i_2_n_0 ;
  wire m_axis_tlast;
  wire m_axis_tlast_i_1_n_0;
  wire m_axis_tready;
  wire m_axis_tvalid_i_1_n_0;
  wire m_axis_tvalid_reg_0;
  wire rst;

  LUT4 #(
    .INIT(16'hDDD0)) 
    \m_axis_tdata[15]_i_1 
       (.I0(m_axis_tvalid_reg_0),
        .I1(m_axis_tready),
        .I2(D[0]),
        .I3(D[1]),
        .O(\m_axis_tdata[15]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tdata[15]_i_2 
       (.I0(rst),
        .O(\m_axis_tdata[15]_i_2_n_0 ));
  FDCE \m_axis_tdata_reg[0] 
       (.C(clk),
        .CE(\m_axis_tdata[15]_i_1_n_0 ),
        .CLR(\m_axis_tdata[15]_i_2_n_0 ),
        .D(D[0]),
        .Q(m_axis_tdata[0]));
  FDCE \m_axis_tdata_reg[10] 
       (.C(clk),
        .CE(\m_axis_tdata[15]_i_1_n_0 ),
        .CLR(\m_axis_tdata[15]_i_2_n_0 ),
        .D(D[10]),
        .Q(m_axis_tdata[10]));
  FDCE \m_axis_tdata_reg[11] 
       (.C(clk),
        .CE(\m_axis_tdata[15]_i_1_n_0 ),
        .CLR(\m_axis_tdata[15]_i_2_n_0 ),
        .D(D[11]),
        .Q(m_axis_tdata[11]));
  FDCE \m_axis_tdata_reg[12] 
       (.C(clk),
        .CE(\m_axis_tdata[15]_i_1_n_0 ),
        .CLR(\m_axis_tdata[15]_i_2_n_0 ),
        .D(D[12]),
        .Q(m_axis_tdata[12]));
  FDCE \m_axis_tdata_reg[13] 
       (.C(clk),
        .CE(\m_axis_tdata[15]_i_1_n_0 ),
        .CLR(\m_axis_tdata[15]_i_2_n_0 ),
        .D(D[13]),
        .Q(m_axis_tdata[13]));
  FDCE \m_axis_tdata_reg[14] 
       (.C(clk),
        .CE(\m_axis_tdata[15]_i_1_n_0 ),
        .CLR(\m_axis_tdata[15]_i_2_n_0 ),
        .D(D[14]),
        .Q(m_axis_tdata[14]));
  FDCE \m_axis_tdata_reg[15] 
       (.C(clk),
        .CE(\m_axis_tdata[15]_i_1_n_0 ),
        .CLR(\m_axis_tdata[15]_i_2_n_0 ),
        .D(D[15]),
        .Q(m_axis_tdata[15]));
  FDCE \m_axis_tdata_reg[1] 
       (.C(clk),
        .CE(\m_axis_tdata[15]_i_1_n_0 ),
        .CLR(\m_axis_tdata[15]_i_2_n_0 ),
        .D(D[1]),
        .Q(m_axis_tdata[1]));
  FDCE \m_axis_tdata_reg[2] 
       (.C(clk),
        .CE(\m_axis_tdata[15]_i_1_n_0 ),
        .CLR(\m_axis_tdata[15]_i_2_n_0 ),
        .D(D[2]),
        .Q(m_axis_tdata[2]));
  FDCE \m_axis_tdata_reg[3] 
       (.C(clk),
        .CE(\m_axis_tdata[15]_i_1_n_0 ),
        .CLR(\m_axis_tdata[15]_i_2_n_0 ),
        .D(D[3]),
        .Q(m_axis_tdata[3]));
  FDCE \m_axis_tdata_reg[4] 
       (.C(clk),
        .CE(\m_axis_tdata[15]_i_1_n_0 ),
        .CLR(\m_axis_tdata[15]_i_2_n_0 ),
        .D(D[4]),
        .Q(m_axis_tdata[4]));
  FDCE \m_axis_tdata_reg[5] 
       (.C(clk),
        .CE(\m_axis_tdata[15]_i_1_n_0 ),
        .CLR(\m_axis_tdata[15]_i_2_n_0 ),
        .D(D[5]),
        .Q(m_axis_tdata[5]));
  FDCE \m_axis_tdata_reg[6] 
       (.C(clk),
        .CE(\m_axis_tdata[15]_i_1_n_0 ),
        .CLR(\m_axis_tdata[15]_i_2_n_0 ),
        .D(D[6]),
        .Q(m_axis_tdata[6]));
  FDCE \m_axis_tdata_reg[7] 
       (.C(clk),
        .CE(\m_axis_tdata[15]_i_1_n_0 ),
        .CLR(\m_axis_tdata[15]_i_2_n_0 ),
        .D(D[7]),
        .Q(m_axis_tdata[7]));
  FDCE \m_axis_tdata_reg[8] 
       (.C(clk),
        .CE(\m_axis_tdata[15]_i_1_n_0 ),
        .CLR(\m_axis_tdata[15]_i_2_n_0 ),
        .D(D[8]),
        .Q(m_axis_tdata[8]));
  FDCE \m_axis_tdata_reg[9] 
       (.C(clk),
        .CE(\m_axis_tdata[15]_i_1_n_0 ),
        .CLR(\m_axis_tdata[15]_i_2_n_0 ),
        .D(D[9]),
        .Q(m_axis_tdata[9]));
  LUT6 #(
    .INIT(64'hEFEFFFEFE0E000E0)) 
    m_axis_tlast_i_1
       (.I0(D[1]),
        .I1(D[0]),
        .I2(rst),
        .I3(m_axis_tvalid_reg_0),
        .I4(m_axis_tready),
        .I5(m_axis_tlast),
        .O(m_axis_tlast_i_1_n_0));
  FDRE m_axis_tlast_reg
       (.C(clk),
        .CE(1'b1),
        .D(m_axis_tlast_i_1_n_0),
        .Q(m_axis_tlast),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hEFEE)) 
    m_axis_tvalid_i_1
       (.I0(D[1]),
        .I1(D[0]),
        .I2(m_axis_tready),
        .I3(m_axis_tvalid_reg_0),
        .O(m_axis_tvalid_i_1_n_0));
  FDCE m_axis_tvalid_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\m_axis_tdata[15]_i_2_n_0 ),
        .D(m_axis_tvalid_i_1_n_0),
        .Q(m_axis_tvalid_reg_0));
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
