// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Sat Jan 24 17:08:15 2026
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_11 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 48096)
`pragma protect data_block
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
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
