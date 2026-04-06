// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Mon Jan 19 17:04:08 2026
// Host        : Acer-Nitro5 running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_blk_mem_gen_0_0_sim_netlist.v
// Design      : design_1_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_blk_mem_gen_0_0,blk_mem_gen_v8_4_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_11,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    rsta,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    web,
    addrb,
    dinb,
    doutb,
    rsta_busy,
    rstb_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [31:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_mode = "slave BRAM_PORTB" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB RST" *) input rstb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [3:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [31:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [31:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;
  output rsta_busy;
  output rstb_busy;

  wire [31:0]addra;
  wire [31:0]addrb;
  wire clka;
  wire [31:0]dina;
  wire [31:0]dinb;
  wire [31:0]douta;
  wire [31:0]doutb;
  wire ena;
  wire enb;
  wire rsta;
  wire rsta_busy;
  wire rstb;
  wire rstb_busy;
  wire [3:0]wea;
  wire [3:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "32" *) 
  (* C_ADDRB_WIDTH = "32" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "1" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "1" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     10.7492 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "1" *) 
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
  (* C_USE_BRAM_BLOCK = "1" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_11 U0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra[12:2],1'b0,1'b0}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addrb[12:2],1'b0,1'b0}),
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[31:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(rsta),
        .rsta_busy(rsta_busy),
        .rstb(rstb),
        .rstb_busy(rstb_busy),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[31:0]),
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
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 59056)
`pragma protect data_block
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
B26tTw==
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
