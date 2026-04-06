// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Sat Jan 24 17:08:15 2026
// Host        : Acer-Nitro5 running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/paxl/Projects/Licenta/Vivado/AXI_DMA_AND_BRAM/AXI_DMA_TEST/AXI_DMA_TEST.gen/sources_1/bd/design_1/ip/design_1_blk_mem_gen_0_0/design_1_blk_mem_gen_0_0_sim_netlist.v
// Design      : design_1_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_blk_mem_gen_0_0,blk_mem_gen_v8_4_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_11,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module design_1_blk_mem_gen_0_0
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    enb,
    web,
    addrb,
    dinb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [10:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_mode = "slave BRAM_PORTB" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [10:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [31:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;

  wire [10:0]addra;
  wire [10:0]addrb;
  wire clka;
  wire [31:0]dina;
  wire [31:0]dinb;
  wire [31:0]douta;
  wire [31:0]doutb;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire [0:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [10:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [10:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "11" *) 
  (* C_ADDRB_WIDTH = "11" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "1" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     11.0314 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "1" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "NONE" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "READ_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  design_1_blk_mem_gen_0_0_blk_mem_gen_v8_4_11 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[10:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[10:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
gydSV72FvW4hnoyUt6yZFJHfJqjRQWPUfYIuDKP0fpjrPOkLRbJGBr4Z9msYTvoIHRlYtXJ2YMY0
d1TIQb+FK4gKsTRru9wr397OxuFBsTRf4e+ZjpYZEdsnqYWcgMSzhN4yhPvO06GyZO15y/LKBxa8
3OKwxVlOLYXhv+sxdXg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
WHB6Zbfa5Qi47krP9T4L8UnPOlr881dWx7UcYaZfNGIQQM0gadcoXbhucIpRaUuyOKxv6yhKveRN
h0l+N9+KX6rbZ6+TRhP9JAMuPhlpI7T42QtRv5zx9+m3ct5S0NMszbFaK8zeTAYra5BGP7BHmtkr
MpKfLK5sFyaTE/A7ACtAace9MwFTHDZdl9uUs4aY6KJlm6GaypKduiqkNugukJp5vlFPX/ZapJqG
KMtMhI6grhcuYb1FJrwRZ4jW7hs9HxddSdGLzsZ0HsBcO/qaCPTst+ZA0YIQfd5ULlFmPqq39FfO
p1P+2hEH2n+LycbMj5cn4Dxfqv2R8eucM78R3w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
SmAzQA1VEuJXtJi5vXa2Jg7YvRqAJs6PX9HTZ1YqrJw4VfonBW3726gJ81BjlizpMkcf/Uk5sFIK
aPedVhEs4xCIZylz7gXYDshtytOA/pXUID2qV9nXr8qfI+FydSADUF3ScYDZmlkclFqlZrGq6DQ7
da3lJAzt2h/iR+cczrA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
iAph5JWb/chMQpLPX1UoLjQDxN5l2I8McM/k2xN5wRht7HXoE6F5yV8luDjn3zkI6vnfUYo7BaI1
mogRRx+R3XcwxvhHr+lngh4+/YLVex1TFncl+kiUMAsu3M/FjFSiqGMVMdKTNLDqr35DuZJVyuiF
lTwXob/KkbQDJiJjBEoxbt+968rKRKRyJGcqIjm4mqRBdqMcgo3HOJFG74SFsWAQrxvXfBhdLSG3
OfoLfls9XDojBjp7G83k0h82g1eeWgBfydm/OcX9o48Pst93NvI4ua8WShZL8MCvRWYqWZrrjrWi
cfUjXAF5SDACjq1/OU6arz/Idz6/a7AP/jmexw==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BY49GZBxBT/gjZDPyaSWlti/sctckoR7jK6NuWdhnF9tiyNfVU7BqjjwxSnyMi0Uucv1BKHXC18h
8hQbFWnNtrq71ilURotXux7sssHlVJ2i1CsJWU18DOcBWxm2ai89uwvxDJh3TJkBJixB5KPvsDhL
lWOjTvZWPoR+Ixy+Tzo+U5Vx7z7SOakRwTrn3u7+c3vmCEBphE+HKeJExhBAoOEd0SXK5iwXaByW
D7Wb7zq6NNUmnCyaJ2BG9kGxLVsf+md7SlocuaFsYyaRZhwPyTucxIlz1tLYwcytKzx0ovoax3no
nYgzlzP/F0/PDWk9BqXgr/tuclc4EZYX0cf4ng==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qGnCvL35qO7cbUEKCL50yDv1UvezcqBz601zctKop1954QlcjemzZWZHg1zJ00nJaToNdH2S8AKX
n8hNJvbQ+x5HEGL5DoSU9m5qjXd8xxocnZ0yzuZX/dGCT8kDn3gWJR2Gz13pT+w2LQUno1fX+MsC
ehgwvjBBT6GeYjdxHi+aybQUP9AblSxX/z3vh857SGCPohEWvghOgORCHAe45YD+ZWnL62FLxMM2
c+Ozq/Au/Q4q1Yzlzcfv8Mnsvg7OqOeEamQHbuYOfdkJUuYqOwsskEWW348u7FXtsf8m7P3pZyyz
IWyTDAW4igGguMPLHfbtK/twZx8ScJQmOKzglg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hz+6K8+wh5/fukU4ZWNDXGsq6hreSVCSPP67nA6kUz9Vpjy4TtTnOrrl1BWY0ivEC7Ldyw8VI60A
VO/WPlt409LdAZdMZGsEZ1JuTZ0m9LPcgu9CPCyoMECctmd8LHE+otY6etTmYABB9syY61rk2hrv
RgbcyT/HCK9TzWxSm+XMqvx2nvagCLkMDPh/JZv51fj2zcKaBPnxsz8rnDipaeo0fEyVRC3Y1F/V
U3RmXojBjIumPHSJkQ537dENJEIA0Ra65u8EM/+ItUn1bcryLcIbKy1xGadrHmHdHRUoRcAodO2C
B48bNVeL0VnGg8P9ACIB04lMNzn5p6A1tPOb4Q==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
YDpb+UeT0rJ543Q8wCo2xSS3gpVAT+JoStgBlV5IMjJoUOWkiOPn691FGChmDi3BTq5NxC73KHHR
1galACCjeTGq6cv+0Zc2Ocm1oobdrnSPHp7TMDr5Zle8FX6WywJCiGdoWBODggZSlbOASIK/PVfY
cZM2z60M6RSvzsi3TnYHiKYHpju8THVoSgRd6r31GcbiSy9TjjARERXan0OVc79jGuAg90mmDEEq
91eqmn6NZ9yLI2fgBjFUZbtFCpmJ8WGxOL1h39niWnRK3ZXnk8jcpnZUlxLbYTPO0Z3vVr1zrvcn
RVQloU0OLqg7M95zSs7NtX5Vzvb6jGbMehWV+WMMyxWmxL2XOwsAwPSeX2dI2r77pioY7X6VzH7f
/JxMAnq9udra3WGPsUkD1G0CvPkCC3zdxjpVaflY37ztX9UONhKtzMQa8lJc1IL8GhXRY3R9Lg2c
HIeXSGkpNNuFDqKT6Khe/6Casq+SjFJq+IH9IUtz6RUZTkbFb0Xhgm2P

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Q+63zFEYw/LeMgxa7g8g79GGvSyIKDKD8RvvC4DHDQuGObf6n9OGZX4e17v/E/+EDEwUhsWQHFDI
Lp/aH+6fNRmhu9BEWVjxq2WRrQSl4eQjfIaSOXu2dlYh3JjRJwiUp4LteVh8RFAf5t5sRQO4dRIK
x+h28yliSgibaWEAv5FaJQ1EFbNwmgedAaSYjgf2A3afBUcBh5Uy9VHbW/zRzdhhJdsVNBjZYcFy
CVLOcf1toCRp8J4U5FlnFMOzFegUbdXFQhq2VmIhPRxWjrfTk6iR4BcMEN9UMij/5IHRAeBdksyD
CqEKsyFxosbI5KVMRZ1Ln75Zipn0JdsGekHkxg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DPUa5DLPYRWvbPnX0U412yoWvvvHyuq43DrYmDJGTK0cR5U4U6th8icYgizC1/hUAEzt19kM/hVa
zZh7bXSWACYLpcfhPY8dRTVGDZVjpbkraw0ceBryLP7jc6Jt5JdNw88tZtZpprCB7nQ25lUL82Hf
WTwL1ZqgGIvtfHhxO0JF5L5ES5giedwQ6u5ffXG3UB6ELcpQD1NvpW5lAz4mfXyvVDCAPZN581TF
tlAy79iKbPKlJ2zFn1BS2cuRIHHe2JRxwPo+0n5VD5CXVgg+lCYxTnCxI8CdyFaTumbs4IfAKwVI
wSN/btbwDUhW9hAHWHIRo+BpdJ4qeGcTDPKtsA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mf5hcf6JE6yLm0jNCQnHMVmogjLlPz6re0FwG67yvOJ3FuEorru0emIeAKEwgOoxjUYNWvcM7QAH
/UEeB2EIdjLl6glPAUda0HjtaCU2rdncVdM8k6DSMBggc4yo18Qx5F+1TD/RoBgoo0jNkMdDy6wJ
JHjqlN+R01z3yYIMQ9f2z6ZaYncbBYEp4+YAb7g1D7CSMxP5cFRpQznRpYp0JwqJfT9CHzlKgdab
8B288NxeLM66iYodiTS+GSRGLGtDWXpz9yeiuiPe6kJxae2GJyHIMSfluO/0Slc3m24DQNdbojf8
jdc0G2UnrDe5mCUTfYiDmpOWTUJOdYo0FK0N2g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 48128)
`pragma protect data_block
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
g5nxrNPIG/6a6OD490av8SMXIBE=
`pragma protect end_protected
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
