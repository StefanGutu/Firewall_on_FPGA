-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
-- Date        : Sat Apr  4 19:44:30 2026
-- Host        : Acer-Nitro5 running 64-bit Ubuntu 24.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/paxl/Projects/Licenta/Vivado/AXI_DMA_AND_BRAM/AXI_DMA_TEST/AXI_DMA_TEST.gen/sources_1/bd/design_1/ip/design_1_RuleChecker_0_0/design_1_RuleChecker_0_0_sim_netlist.vhdl
-- Design      : design_1_RuleChecker_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_RuleChecker_0_0_RuleChecker is
  port (
    s_header_data_end : out STD_LOGIC;
    s_header_data_response : out STD_LOGIC;
    bram_port_addr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    bram_port_en : out STD_LOGIC;
    s_header_data_start : in STD_LOGIC;
    s_header_data_dst_port : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_header_data_src_port : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC;
    bram_port_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rst : in STD_LOGIC;
    s_header_data_dst_ip : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_header_data_src_ip : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_RuleChecker_0_0_RuleChecker : entity is "RuleChecker";
end design_1_RuleChecker_0_0_RuleChecker;

architecture STRUCTURE of design_1_RuleChecker_0_0_RuleChecker is
  signal \FSM_sequential_next_state_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_next_state_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_next_state_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_next_state_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \bram_data[31]_i_1_n_0\ : STD_LOGIC;
  signal \bram_data_reg_n_0_[0]\ : STD_LOGIC;
  signal \bram_data_reg_n_0_[10]\ : STD_LOGIC;
  signal \bram_data_reg_n_0_[11]\ : STD_LOGIC;
  signal \bram_data_reg_n_0_[12]\ : STD_LOGIC;
  signal \bram_data_reg_n_0_[13]\ : STD_LOGIC;
  signal \bram_data_reg_n_0_[14]\ : STD_LOGIC;
  signal \bram_data_reg_n_0_[15]\ : STD_LOGIC;
  signal \bram_data_reg_n_0_[1]\ : STD_LOGIC;
  signal \bram_data_reg_n_0_[2]\ : STD_LOGIC;
  signal \bram_data_reg_n_0_[3]\ : STD_LOGIC;
  signal \bram_data_reg_n_0_[4]\ : STD_LOGIC;
  signal \bram_data_reg_n_0_[5]\ : STD_LOGIC;
  signal \bram_data_reg_n_0_[6]\ : STD_LOGIC;
  signal \bram_data_reg_n_0_[7]\ : STD_LOGIC;
  signal \bram_data_reg_n_0_[8]\ : STD_LOGIC;
  signal \bram_data_reg_n_0_[9]\ : STD_LOGIC;
  signal bram_dst_ip : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \bram_dst_ip[31]_i_1_n_0\ : STD_LOGIC;
  signal bram_port_addr0 : STD_LOGIC_VECTOR ( 9 downto 2 );
  signal \bram_port_addr0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \bram_port_addr0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \bram_port_addr0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \bram_port_addr0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \bram_port_addr0_carry__0_n_1\ : STD_LOGIC;
  signal \bram_port_addr0_carry__0_n_2\ : STD_LOGIC;
  signal \bram_port_addr0_carry__0_n_3\ : STD_LOGIC;
  signal bram_port_addr0_carry_i_1_n_0 : STD_LOGIC;
  signal bram_port_addr0_carry_i_2_n_0 : STD_LOGIC;
  signal bram_port_addr0_carry_i_3_n_0 : STD_LOGIC;
  signal bram_port_addr0_carry_n_0 : STD_LOGIC;
  signal bram_port_addr0_carry_n_1 : STD_LOGIC;
  signal bram_port_addr0_carry_n_2 : STD_LOGIC;
  signal bram_port_addr0_carry_n_3 : STD_LOGIC;
  signal \bram_port_addr[2]_i_1_n_0\ : STD_LOGIC;
  signal \bram_port_addr[3]_i_1_n_0\ : STD_LOGIC;
  signal \bram_port_addr[4]_i_1_n_0\ : STD_LOGIC;
  signal \bram_port_addr[5]_i_1_n_0\ : STD_LOGIC;
  signal \bram_port_addr[6]_i_1_n_0\ : STD_LOGIC;
  signal \bram_port_addr[7]_i_1_n_0\ : STD_LOGIC;
  signal \bram_port_addr[8]_i_1_n_0\ : STD_LOGIC;
  signal \bram_port_addr[9]_i_1_n_0\ : STD_LOGIC;
  signal \bram_port_addr[9]_i_2_n_0\ : STD_LOGIC;
  signal \bram_port_addr[9]_i_3_n_0\ : STD_LOGIC;
  signal \bram_port_addr[9]_i_4_n_0\ : STD_LOGIC;
  signal \^bram_port_en\ : STD_LOGIC;
  signal bram_port_en_i_1_n_0 : STD_LOGIC;
  signal bram_src_ip : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \bram_src_ip[31]_i_1_n_0\ : STD_LOGIC;
  signal \counter_pos_bram[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter_pos_bram[0]_i_2_n_0\ : STD_LOGIC;
  signal \counter_pos_bram[0]_i_3_n_0\ : STD_LOGIC;
  signal \counter_pos_bram[1]_i_1_n_0\ : STD_LOGIC;
  signal \counter_pos_bram[2]_i_1_n_0\ : STD_LOGIC;
  signal \counter_pos_bram[3]_i_1_n_0\ : STD_LOGIC;
  signal \counter_pos_bram[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter_pos_bram[5]_i_1_n_0\ : STD_LOGIC;
  signal \counter_pos_bram[5]_i_2_n_0\ : STD_LOGIC;
  signal \counter_pos_bram[5]_i_3_n_0\ : STD_LOGIC;
  signal \counter_pos_bram_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_pos_bram_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_pos_bram_reg_n_0_[2]\ : STD_LOGIC;
  signal \counter_pos_bram_reg_n_0_[3]\ : STD_LOGIC;
  signal \counter_pos_bram_reg_n_0_[4]\ : STD_LOGIC;
  signal \counter_pos_bram_reg_n_0_[5]\ : STD_LOGIC;
  signal current_state : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal next_state : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal next_state1 : STD_LOGIC;
  signal next_state2 : STD_LOGIC;
  signal \next_state2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \next_state2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \next_state2_carry__0_n_3\ : STD_LOGIC;
  signal next_state2_carry_i_1_n_0 : STD_LOGIC;
  signal next_state2_carry_i_2_n_0 : STD_LOGIC;
  signal next_state2_carry_i_3_n_0 : STD_LOGIC;
  signal next_state2_carry_i_4_n_0 : STD_LOGIC;
  signal next_state2_carry_n_0 : STD_LOGIC;
  signal next_state2_carry_n_1 : STD_LOGIC;
  signal next_state2_carry_n_2 : STD_LOGIC;
  signal next_state2_carry_n_3 : STD_LOGIC;
  signal next_state3 : STD_LOGIC;
  signal \next_state3_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \next_state3_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \next_state3_carry__0_n_3\ : STD_LOGIC;
  signal next_state3_carry_i_1_n_0 : STD_LOGIC;
  signal next_state3_carry_i_2_n_0 : STD_LOGIC;
  signal next_state3_carry_i_3_n_0 : STD_LOGIC;
  signal next_state3_carry_i_4_n_0 : STD_LOGIC;
  signal next_state3_carry_n_0 : STD_LOGIC;
  signal next_state3_carry_n_1 : STD_LOGIC;
  signal next_state3_carry_n_2 : STD_LOGIC;
  signal next_state3_carry_n_3 : STD_LOGIC;
  signal next_state4 : STD_LOGIC;
  signal next_state40_out : STD_LOGIC;
  signal \next_state4_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \next_state4_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \next_state4_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \next_state4_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \next_state4_carry__0_n_0\ : STD_LOGIC;
  signal \next_state4_carry__0_n_1\ : STD_LOGIC;
  signal \next_state4_carry__0_n_2\ : STD_LOGIC;
  signal \next_state4_carry__0_n_3\ : STD_LOGIC;
  signal \next_state4_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \next_state4_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \next_state4_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \next_state4_carry__1_n_2\ : STD_LOGIC;
  signal \next_state4_carry__1_n_3\ : STD_LOGIC;
  signal next_state4_carry_i_1_n_0 : STD_LOGIC;
  signal next_state4_carry_i_2_n_0 : STD_LOGIC;
  signal next_state4_carry_i_3_n_0 : STD_LOGIC;
  signal next_state4_carry_i_4_n_0 : STD_LOGIC;
  signal next_state4_carry_n_0 : STD_LOGIC;
  signal next_state4_carry_n_1 : STD_LOGIC;
  signal next_state4_carry_n_2 : STD_LOGIC;
  signal next_state4_carry_n_3 : STD_LOGIC;
  signal \next_state4_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \next_state4_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \next_state4_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \next_state4_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \next_state4_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \next_state4_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \next_state4_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \next_state4_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \next_state4_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \next_state4_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \next_state__0\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal p_0_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s_header_data_end_i_1_n_0 : STD_LOGIC;
  signal s_header_data_end_i_2_n_0 : STD_LOGIC;
  signal s_header_data_response_i_1_n_0 : STD_LOGIC;
  signal state_packet_i_1_n_0 : STD_LOGIC;
  signal state_packet_i_2_n_0 : STD_LOGIC;
  signal state_packet_reg_n_0 : STD_LOGIC;
  signal valid_data_bram1_out : STD_LOGIC;
  signal valid_data_bram_i_10_n_0 : STD_LOGIC;
  signal valid_data_bram_i_1_n_0 : STD_LOGIC;
  signal valid_data_bram_i_2_n_0 : STD_LOGIC;
  signal valid_data_bram_i_3_n_0 : STD_LOGIC;
  signal valid_data_bram_i_5_n_0 : STD_LOGIC;
  signal valid_data_bram_i_6_n_0 : STD_LOGIC;
  signal valid_data_bram_i_7_n_0 : STD_LOGIC;
  signal valid_data_bram_i_8_n_0 : STD_LOGIC;
  signal valid_data_bram_i_9_n_0 : STD_LOGIC;
  signal valid_data_bram_reg_n_0 : STD_LOGIC;
  signal \NLW_bram_port_addr0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_next_state2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_next_state2_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_next_state2_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_next_state3_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_next_state3_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_next_state3_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_next_state4_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_next_state4_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_next_state4_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_next_state4_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_next_state4_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_next_state4_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_next_state4_inferred__0/i__carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_next_state4_inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[0]\ : label is "GET_BRAM_SRC_IP:0011,RECIVED_BRAM_DATA:0100,GET_BRAM_DST_IP:0010,GET_BRAM_DATA:0001,IDLE:0000,COMPARE:0111,RESPONSE:1000,RECIVED_BRAM_SRC_IP:0110,RECIVED_BRAM_DST_IP:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[1]\ : label is "GET_BRAM_SRC_IP:0011,RECIVED_BRAM_DATA:0100,GET_BRAM_DST_IP:0010,GET_BRAM_DATA:0001,IDLE:0000,COMPARE:0111,RESPONSE:1000,RECIVED_BRAM_SRC_IP:0110,RECIVED_BRAM_DST_IP:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[2]\ : label is "GET_BRAM_SRC_IP:0011,RECIVED_BRAM_DATA:0100,GET_BRAM_DST_IP:0010,GET_BRAM_DATA:0001,IDLE:0000,COMPARE:0111,RESPONSE:1000,RECIVED_BRAM_SRC_IP:0110,RECIVED_BRAM_DST_IP:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[3]\ : label is "GET_BRAM_SRC_IP:0011,RECIVED_BRAM_DATA:0100,GET_BRAM_DST_IP:0010,GET_BRAM_DATA:0001,IDLE:0000,COMPARE:0111,RESPONSE:1000,RECIVED_BRAM_SRC_IP:0110,RECIVED_BRAM_DST_IP:0101";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \FSM_sequential_next_state_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \FSM_sequential_next_state_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \FSM_sequential_next_state_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \FSM_sequential_next_state_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_next_state_reg[1]_i_1\ : label is "soft_lutpair8";
  attribute XILINX_LEGACY_PRIM of \FSM_sequential_next_state_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \FSM_sequential_next_state_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \FSM_sequential_next_state_reg[2]_i_1\ : label is "soft_lutpair1";
  attribute XILINX_LEGACY_PRIM of \FSM_sequential_next_state_reg[3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \FSM_sequential_next_state_reg[3]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \FSM_sequential_next_state_reg[3]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_sequential_next_state_reg[3]_i_3\ : label is "soft_lutpair2";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of bram_port_addr0_carry : label is 35;
  attribute ADDER_THRESHOLD of \bram_port_addr0_carry__0\ : label is 35;
  attribute SOFT_HLUTNM of \bram_port_addr[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \bram_port_addr[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \bram_port_addr[4]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \bram_port_addr[6]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \bram_port_addr[7]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \bram_port_addr[9]_i_4\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of bram_port_en_i_1 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \counter_pos_bram[0]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \counter_pos_bram[0]_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \counter_pos_bram[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \counter_pos_bram[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \counter_pos_bram[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \counter_pos_bram[5]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of s_header_data_end_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of s_header_data_response_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of valid_data_bram_i_4 : label is "soft_lutpair1";
begin
  bram_port_en <= \^bram_port_en\;
\FSM_sequential_current_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => s_header_data_end_i_2_n_0,
      D => next_state(0),
      Q => current_state(0)
    );
\FSM_sequential_current_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => s_header_data_end_i_2_n_0,
      D => next_state(1),
      Q => current_state(1)
    );
\FSM_sequential_current_state_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => s_header_data_end_i_2_n_0,
      D => next_state(2),
      Q => current_state(2)
    );
\FSM_sequential_current_state_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => s_header_data_end_i_2_n_0,
      D => next_state(3),
      Q => current_state(3)
    );
\FSM_sequential_next_state_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_sequential_next_state_reg[0]_i_1_n_0\,
      G => \FSM_sequential_next_state_reg[3]_i_2_n_0\,
      GE => '1',
      Q => next_state(0)
    );
\FSM_sequential_next_state_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111111051115110"
    )
        port map (
      I0 => current_state(3),
      I1 => current_state(0),
      I2 => current_state(2),
      I3 => current_state(1),
      I4 => s_header_data_start,
      I5 => \FSM_sequential_next_state_reg[0]_i_2_n_0\,
      O => \FSM_sequential_next_state_reg[0]_i_1_n_0\
    );
\FSM_sequential_next_state_reg[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8000FFFF"
    )
        port map (
      I0 => next_state3,
      I1 => next_state2,
      I2 => next_state4,
      I3 => next_state40_out,
      I4 => valid_data_bram_reg_n_0,
      O => \FSM_sequential_next_state_reg[0]_i_2_n_0\
    );
\FSM_sequential_next_state_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \next_state__0\(1),
      G => \FSM_sequential_next_state_reg[3]_i_2_n_0\,
      GE => '1',
      Q => next_state(1)
    );
\FSM_sequential_next_state_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"14"
    )
        port map (
      I0 => current_state(3),
      I1 => current_state(1),
      I2 => current_state(0),
      O => \next_state__0\(1)
    );
\FSM_sequential_next_state_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_sequential_next_state_reg[2]_i_1_n_0\,
      G => \FSM_sequential_next_state_reg[3]_i_2_n_0\,
      GE => '1',
      Q => next_state(2)
    );
\FSM_sequential_next_state_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1540"
    )
        port map (
      I0 => current_state(3),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => current_state(2),
      O => \FSM_sequential_next_state_reg[2]_i_1_n_0\
    );
\FSM_sequential_next_state_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \next_state__0\(3),
      G => \FSM_sequential_next_state_reg[3]_i_2_n_0\,
      GE => '1',
      Q => next_state(3)
    );
\FSM_sequential_next_state_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000D00000000000"
    )
        port map (
      I0 => valid_data_bram_reg_n_0,
      I1 => next_state1,
      I2 => current_state(0),
      I3 => current_state(1),
      I4 => current_state(3),
      I5 => current_state(2),
      O => \next_state__0\(3)
    );
\FSM_sequential_next_state_reg[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5557"
    )
        port map (
      I0 => current_state(3),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => current_state(2),
      O => \FSM_sequential_next_state_reg[3]_i_2_n_0\
    );
\FSM_sequential_next_state_reg[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => next_state40_out,
      I1 => next_state4,
      I2 => next_state2,
      I3 => next_state3,
      O => next_state1
    );
\bram_data[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => current_state(0),
      I1 => rst,
      I2 => current_state(3),
      I3 => current_state(2),
      I4 => current_state(1),
      O => \bram_data[31]_i_1_n_0\
    );
\bram_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      D => bram_port_dout(0),
      Q => \bram_data_reg_n_0_[0]\,
      R => '0'
    );
\bram_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      D => bram_port_dout(10),
      Q => \bram_data_reg_n_0_[10]\,
      R => '0'
    );
\bram_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      D => bram_port_dout(11),
      Q => \bram_data_reg_n_0_[11]\,
      R => '0'
    );
\bram_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      D => bram_port_dout(12),
      Q => \bram_data_reg_n_0_[12]\,
      R => '0'
    );
\bram_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      D => bram_port_dout(13),
      Q => \bram_data_reg_n_0_[13]\,
      R => '0'
    );
\bram_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      D => bram_port_dout(14),
      Q => \bram_data_reg_n_0_[14]\,
      R => '0'
    );
\bram_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      D => bram_port_dout(15),
      Q => \bram_data_reg_n_0_[15]\,
      R => '0'
    );
\bram_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      D => bram_port_dout(16),
      Q => p_0_in(0),
      R => '0'
    );
\bram_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      D => bram_port_dout(17),
      Q => p_0_in(1),
      R => '0'
    );
\bram_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      D => bram_port_dout(18),
      Q => p_0_in(2),
      R => '0'
    );
\bram_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      D => bram_port_dout(19),
      Q => p_0_in(3),
      R => '0'
    );
\bram_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      D => bram_port_dout(1),
      Q => \bram_data_reg_n_0_[1]\,
      R => '0'
    );
\bram_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      D => bram_port_dout(20),
      Q => p_0_in(4),
      R => '0'
    );
\bram_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      D => bram_port_dout(21),
      Q => p_0_in(5),
      R => '0'
    );
\bram_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      D => bram_port_dout(22),
      Q => p_0_in(6),
      R => '0'
    );
\bram_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      D => bram_port_dout(23),
      Q => p_0_in(7),
      R => '0'
    );
\bram_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      D => bram_port_dout(24),
      Q => p_0_in(8),
      R => '0'
    );
\bram_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      D => bram_port_dout(25),
      Q => p_0_in(9),
      R => '0'
    );
\bram_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      D => bram_port_dout(26),
      Q => p_0_in(10),
      R => '0'
    );
\bram_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      D => bram_port_dout(27),
      Q => p_0_in(11),
      R => '0'
    );
\bram_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      D => bram_port_dout(28),
      Q => p_0_in(12),
      R => '0'
    );
\bram_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      D => bram_port_dout(29),
      Q => p_0_in(13),
      R => '0'
    );
\bram_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      D => bram_port_dout(2),
      Q => \bram_data_reg_n_0_[2]\,
      R => '0'
    );
\bram_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      D => bram_port_dout(30),
      Q => p_0_in(14),
      R => '0'
    );
\bram_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      D => bram_port_dout(31),
      Q => p_0_in(15),
      R => '0'
    );
\bram_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      D => bram_port_dout(3),
      Q => \bram_data_reg_n_0_[3]\,
      R => '0'
    );
\bram_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      D => bram_port_dout(4),
      Q => \bram_data_reg_n_0_[4]\,
      R => '0'
    );
\bram_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      D => bram_port_dout(5),
      Q => \bram_data_reg_n_0_[5]\,
      R => '0'
    );
\bram_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      D => bram_port_dout(6),
      Q => \bram_data_reg_n_0_[6]\,
      R => '0'
    );
\bram_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      D => bram_port_dout(7),
      Q => \bram_data_reg_n_0_[7]\,
      R => '0'
    );
\bram_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      D => bram_port_dout(8),
      Q => \bram_data_reg_n_0_[8]\,
      R => '0'
    );
\bram_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_data[31]_i_1_n_0\,
      D => bram_port_dout(9),
      Q => \bram_data_reg_n_0_[9]\,
      R => '0'
    );
\bram_dst_ip[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => current_state(3),
      I1 => rst,
      I2 => current_state(2),
      I3 => current_state(0),
      I4 => current_state(1),
      O => \bram_dst_ip[31]_i_1_n_0\
    );
\bram_dst_ip_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_dst_ip[31]_i_1_n_0\,
      D => bram_port_dout(0),
      Q => bram_dst_ip(0),
      R => '0'
    );
\bram_dst_ip_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_dst_ip[31]_i_1_n_0\,
      D => bram_port_dout(10),
      Q => bram_dst_ip(10),
      R => '0'
    );
\bram_dst_ip_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_dst_ip[31]_i_1_n_0\,
      D => bram_port_dout(11),
      Q => bram_dst_ip(11),
      R => '0'
    );
\bram_dst_ip_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_dst_ip[31]_i_1_n_0\,
      D => bram_port_dout(12),
      Q => bram_dst_ip(12),
      R => '0'
    );
\bram_dst_ip_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_dst_ip[31]_i_1_n_0\,
      D => bram_port_dout(13),
      Q => bram_dst_ip(13),
      R => '0'
    );
\bram_dst_ip_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_dst_ip[31]_i_1_n_0\,
      D => bram_port_dout(14),
      Q => bram_dst_ip(14),
      R => '0'
    );
\bram_dst_ip_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_dst_ip[31]_i_1_n_0\,
      D => bram_port_dout(15),
      Q => bram_dst_ip(15),
      R => '0'
    );
\bram_dst_ip_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_dst_ip[31]_i_1_n_0\,
      D => bram_port_dout(16),
      Q => bram_dst_ip(16),
      R => '0'
    );
\bram_dst_ip_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_dst_ip[31]_i_1_n_0\,
      D => bram_port_dout(17),
      Q => bram_dst_ip(17),
      R => '0'
    );
\bram_dst_ip_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_dst_ip[31]_i_1_n_0\,
      D => bram_port_dout(18),
      Q => bram_dst_ip(18),
      R => '0'
    );
\bram_dst_ip_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_dst_ip[31]_i_1_n_0\,
      D => bram_port_dout(19),
      Q => bram_dst_ip(19),
      R => '0'
    );
\bram_dst_ip_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_dst_ip[31]_i_1_n_0\,
      D => bram_port_dout(1),
      Q => bram_dst_ip(1),
      R => '0'
    );
\bram_dst_ip_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_dst_ip[31]_i_1_n_0\,
      D => bram_port_dout(20),
      Q => bram_dst_ip(20),
      R => '0'
    );
\bram_dst_ip_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_dst_ip[31]_i_1_n_0\,
      D => bram_port_dout(21),
      Q => bram_dst_ip(21),
      R => '0'
    );
\bram_dst_ip_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_dst_ip[31]_i_1_n_0\,
      D => bram_port_dout(22),
      Q => bram_dst_ip(22),
      R => '0'
    );
\bram_dst_ip_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_dst_ip[31]_i_1_n_0\,
      D => bram_port_dout(23),
      Q => bram_dst_ip(23),
      R => '0'
    );
\bram_dst_ip_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_dst_ip[31]_i_1_n_0\,
      D => bram_port_dout(24),
      Q => bram_dst_ip(24),
      R => '0'
    );
\bram_dst_ip_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_dst_ip[31]_i_1_n_0\,
      D => bram_port_dout(25),
      Q => bram_dst_ip(25),
      R => '0'
    );
\bram_dst_ip_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_dst_ip[31]_i_1_n_0\,
      D => bram_port_dout(26),
      Q => bram_dst_ip(26),
      R => '0'
    );
\bram_dst_ip_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_dst_ip[31]_i_1_n_0\,
      D => bram_port_dout(27),
      Q => bram_dst_ip(27),
      R => '0'
    );
\bram_dst_ip_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_dst_ip[31]_i_1_n_0\,
      D => bram_port_dout(28),
      Q => bram_dst_ip(28),
      R => '0'
    );
\bram_dst_ip_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_dst_ip[31]_i_1_n_0\,
      D => bram_port_dout(29),
      Q => bram_dst_ip(29),
      R => '0'
    );
\bram_dst_ip_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_dst_ip[31]_i_1_n_0\,
      D => bram_port_dout(2),
      Q => bram_dst_ip(2),
      R => '0'
    );
\bram_dst_ip_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_dst_ip[31]_i_1_n_0\,
      D => bram_port_dout(30),
      Q => bram_dst_ip(30),
      R => '0'
    );
\bram_dst_ip_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_dst_ip[31]_i_1_n_0\,
      D => bram_port_dout(31),
      Q => bram_dst_ip(31),
      R => '0'
    );
\bram_dst_ip_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_dst_ip[31]_i_1_n_0\,
      D => bram_port_dout(3),
      Q => bram_dst_ip(3),
      R => '0'
    );
\bram_dst_ip_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_dst_ip[31]_i_1_n_0\,
      D => bram_port_dout(4),
      Q => bram_dst_ip(4),
      R => '0'
    );
\bram_dst_ip_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_dst_ip[31]_i_1_n_0\,
      D => bram_port_dout(5),
      Q => bram_dst_ip(5),
      R => '0'
    );
\bram_dst_ip_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_dst_ip[31]_i_1_n_0\,
      D => bram_port_dout(6),
      Q => bram_dst_ip(6),
      R => '0'
    );
\bram_dst_ip_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_dst_ip[31]_i_1_n_0\,
      D => bram_port_dout(7),
      Q => bram_dst_ip(7),
      R => '0'
    );
\bram_dst_ip_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_dst_ip[31]_i_1_n_0\,
      D => bram_port_dout(8),
      Q => bram_dst_ip(8),
      R => '0'
    );
\bram_dst_ip_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_dst_ip[31]_i_1_n_0\,
      D => bram_port_dout(9),
      Q => bram_dst_ip(9),
      R => '0'
    );
bram_port_addr0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => bram_port_addr0_carry_n_0,
      CO(2) => bram_port_addr0_carry_n_1,
      CO(1) => bram_port_addr0_carry_n_2,
      CO(0) => bram_port_addr0_carry_n_3,
      CYINIT => '0',
      DI(3) => \counter_pos_bram_reg_n_0_[1]\,
      DI(2) => \counter_pos_bram_reg_n_0_[0]\,
      DI(1 downto 0) => B"01",
      O(3 downto 0) => bram_port_addr0(5 downto 2),
      S(3) => bram_port_addr0_carry_i_1_n_0,
      S(2) => bram_port_addr0_carry_i_2_n_0,
      S(1) => bram_port_addr0_carry_i_3_n_0,
      S(0) => \counter_pos_bram_reg_n_0_[0]\
    );
\bram_port_addr0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => bram_port_addr0_carry_n_0,
      CO(3) => \NLW_bram_port_addr0_carry__0_CO_UNCONNECTED\(3),
      CO(2) => \bram_port_addr0_carry__0_n_1\,
      CO(1) => \bram_port_addr0_carry__0_n_2\,
      CO(0) => \bram_port_addr0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \counter_pos_bram_reg_n_0_[4]\,
      DI(1) => \counter_pos_bram_reg_n_0_[3]\,
      DI(0) => \counter_pos_bram_reg_n_0_[2]\,
      O(3 downto 0) => bram_port_addr0(9 downto 6),
      S(3) => \bram_port_addr0_carry__0_i_1_n_0\,
      S(2) => \bram_port_addr0_carry__0_i_2_n_0\,
      S(1) => \bram_port_addr0_carry__0_i_3_n_0\,
      S(0) => \bram_port_addr0_carry__0_i_4_n_0\
    );
\bram_port_addr0_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_pos_bram_reg_n_0_[5]\,
      O => \bram_port_addr0_carry__0_i_1_n_0\
    );
\bram_port_addr0_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_pos_bram_reg_n_0_[4]\,
      O => \bram_port_addr0_carry__0_i_2_n_0\
    );
\bram_port_addr0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \counter_pos_bram_reg_n_0_[3]\,
      I1 => \counter_pos_bram_reg_n_0_[5]\,
      O => \bram_port_addr0_carry__0_i_3_n_0\
    );
\bram_port_addr0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \counter_pos_bram_reg_n_0_[2]\,
      I1 => \counter_pos_bram_reg_n_0_[4]\,
      O => \bram_port_addr0_carry__0_i_4_n_0\
    );
bram_port_addr0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \counter_pos_bram_reg_n_0_[1]\,
      I1 => \counter_pos_bram_reg_n_0_[3]\,
      O => bram_port_addr0_carry_i_1_n_0
    );
bram_port_addr0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \counter_pos_bram_reg_n_0_[0]\,
      I1 => \counter_pos_bram_reg_n_0_[2]\,
      O => bram_port_addr0_carry_i_2_n_0
    );
bram_port_addr0_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_pos_bram_reg_n_0_[1]\,
      O => bram_port_addr0_carry_i_3_n_0
    );
\bram_port_addr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A4"
    )
        port map (
      I0 => bram_port_addr0(2),
      I1 => current_state(1),
      I2 => current_state(0),
      O => \bram_port_addr[2]_i_1_n_0\
    );
\bram_port_addr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6468"
    )
        port map (
      I0 => bram_port_addr0(3),
      I1 => current_state(1),
      I2 => current_state(0),
      I3 => bram_port_addr0(2),
      O => \bram_port_addr[3]_i_1_n_0\
    );
\bram_port_addr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"747C8880"
    )
        port map (
      I0 => bram_port_addr0(3),
      I1 => current_state(1),
      I2 => current_state(0),
      I3 => bram_port_addr0(2),
      I4 => bram_port_addr0(4),
      O => \bram_port_addr[4]_i_1_n_0\
    );
\bram_port_addr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"64A8A8A868A8A8A8"
    )
        port map (
      I0 => bram_port_addr0(5),
      I1 => current_state(1),
      I2 => current_state(0),
      I3 => bram_port_addr0(4),
      I4 => bram_port_addr0(3),
      I5 => bram_port_addr0(2),
      O => \bram_port_addr[5]_i_1_n_0\
    );
\bram_port_addr[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6662"
    )
        port map (
      I0 => \bram_port_addr[9]_i_3_n_0\,
      I1 => bram_port_addr0(6),
      I2 => current_state(1),
      I3 => current_state(0),
      O => \bram_port_addr[6]_i_1_n_0\
    );
\bram_port_addr[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77708888"
    )
        port map (
      I0 => \bram_port_addr[9]_i_3_n_0\,
      I1 => bram_port_addr0(6),
      I2 => current_state(1),
      I3 => current_state(0),
      I4 => bram_port_addr0(7),
      O => \bram_port_addr[7]_i_1_n_0\
    );
\bram_port_addr[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55A8A8A8A8A8A8A8"
    )
        port map (
      I0 => bram_port_addr0(8),
      I1 => current_state(1),
      I2 => current_state(0),
      I3 => bram_port_addr0(7),
      I4 => bram_port_addr0(6),
      I5 => \bram_port_addr[9]_i_3_n_0\,
      O => \bram_port_addr[8]_i_1_n_0\
    );
\bram_port_addr[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => current_state(3),
      I1 => rst,
      I2 => current_state(2),
      O => \bram_port_addr[9]_i_1_n_0\
    );
\bram_port_addr[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000080007FFF8000"
    )
        port map (
      I0 => bram_port_addr0(8),
      I1 => \bram_port_addr[9]_i_3_n_0\,
      I2 => bram_port_addr0(6),
      I3 => bram_port_addr0(7),
      I4 => bram_port_addr0(9),
      I5 => \bram_port_addr[9]_i_4_n_0\,
      O => \bram_port_addr[9]_i_2_n_0\
    );
\bram_port_addr[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A800000000000000"
    )
        port map (
      I0 => bram_port_addr0(5),
      I1 => bram_port_addr0(2),
      I2 => current_state(0),
      I3 => current_state(1),
      I4 => bram_port_addr0(3),
      I5 => bram_port_addr0(4),
      O => \bram_port_addr[9]_i_3_n_0\
    );
\bram_port_addr[9]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => current_state(0),
      I1 => current_state(1),
      O => \bram_port_addr[9]_i_4_n_0\
    );
\bram_port_addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_port_addr[9]_i_1_n_0\,
      D => \bram_port_addr[2]_i_1_n_0\,
      Q => bram_port_addr(0),
      R => '0'
    );
\bram_port_addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_port_addr[9]_i_1_n_0\,
      D => \bram_port_addr[3]_i_1_n_0\,
      Q => bram_port_addr(1),
      R => '0'
    );
\bram_port_addr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_port_addr[9]_i_1_n_0\,
      D => \bram_port_addr[4]_i_1_n_0\,
      Q => bram_port_addr(2),
      R => '0'
    );
\bram_port_addr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_port_addr[9]_i_1_n_0\,
      D => \bram_port_addr[5]_i_1_n_0\,
      Q => bram_port_addr(3),
      R => '0'
    );
\bram_port_addr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_port_addr[9]_i_1_n_0\,
      D => \bram_port_addr[6]_i_1_n_0\,
      Q => bram_port_addr(4),
      R => '0'
    );
\bram_port_addr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_port_addr[9]_i_1_n_0\,
      D => \bram_port_addr[7]_i_1_n_0\,
      Q => bram_port_addr(5),
      R => '0'
    );
\bram_port_addr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_port_addr[9]_i_1_n_0\,
      D => \bram_port_addr[8]_i_1_n_0\,
      Q => bram_port_addr(6),
      R => '0'
    );
\bram_port_addr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_port_addr[9]_i_1_n_0\,
      D => \bram_port_addr[9]_i_2_n_0\,
      Q => bram_port_addr(7),
      R => '0'
    );
bram_port_en_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFE0002"
    )
        port map (
      I0 => current_state(0),
      I1 => current_state(3),
      I2 => current_state(1),
      I3 => current_state(2),
      I4 => \^bram_port_en\,
      O => bram_port_en_i_1_n_0
    );
bram_port_en_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => s_header_data_end_i_2_n_0,
      D => bram_port_en_i_1_n_0,
      Q => \^bram_port_en\
    );
\bram_src_ip[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => current_state(0),
      I1 => rst,
      I2 => current_state(3),
      I3 => current_state(1),
      I4 => current_state(2),
      O => \bram_src_ip[31]_i_1_n_0\
    );
\bram_src_ip_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_src_ip[31]_i_1_n_0\,
      D => bram_port_dout(0),
      Q => bram_src_ip(0),
      R => '0'
    );
\bram_src_ip_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_src_ip[31]_i_1_n_0\,
      D => bram_port_dout(10),
      Q => bram_src_ip(10),
      R => '0'
    );
\bram_src_ip_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_src_ip[31]_i_1_n_0\,
      D => bram_port_dout(11),
      Q => bram_src_ip(11),
      R => '0'
    );
\bram_src_ip_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_src_ip[31]_i_1_n_0\,
      D => bram_port_dout(12),
      Q => bram_src_ip(12),
      R => '0'
    );
\bram_src_ip_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_src_ip[31]_i_1_n_0\,
      D => bram_port_dout(13),
      Q => bram_src_ip(13),
      R => '0'
    );
\bram_src_ip_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_src_ip[31]_i_1_n_0\,
      D => bram_port_dout(14),
      Q => bram_src_ip(14),
      R => '0'
    );
\bram_src_ip_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_src_ip[31]_i_1_n_0\,
      D => bram_port_dout(15),
      Q => bram_src_ip(15),
      R => '0'
    );
\bram_src_ip_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_src_ip[31]_i_1_n_0\,
      D => bram_port_dout(16),
      Q => bram_src_ip(16),
      R => '0'
    );
\bram_src_ip_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_src_ip[31]_i_1_n_0\,
      D => bram_port_dout(17),
      Q => bram_src_ip(17),
      R => '0'
    );
\bram_src_ip_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_src_ip[31]_i_1_n_0\,
      D => bram_port_dout(18),
      Q => bram_src_ip(18),
      R => '0'
    );
\bram_src_ip_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_src_ip[31]_i_1_n_0\,
      D => bram_port_dout(19),
      Q => bram_src_ip(19),
      R => '0'
    );
\bram_src_ip_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_src_ip[31]_i_1_n_0\,
      D => bram_port_dout(1),
      Q => bram_src_ip(1),
      R => '0'
    );
\bram_src_ip_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_src_ip[31]_i_1_n_0\,
      D => bram_port_dout(20),
      Q => bram_src_ip(20),
      R => '0'
    );
\bram_src_ip_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_src_ip[31]_i_1_n_0\,
      D => bram_port_dout(21),
      Q => bram_src_ip(21),
      R => '0'
    );
\bram_src_ip_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_src_ip[31]_i_1_n_0\,
      D => bram_port_dout(22),
      Q => bram_src_ip(22),
      R => '0'
    );
\bram_src_ip_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_src_ip[31]_i_1_n_0\,
      D => bram_port_dout(23),
      Q => bram_src_ip(23),
      R => '0'
    );
\bram_src_ip_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_src_ip[31]_i_1_n_0\,
      D => bram_port_dout(24),
      Q => bram_src_ip(24),
      R => '0'
    );
\bram_src_ip_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_src_ip[31]_i_1_n_0\,
      D => bram_port_dout(25),
      Q => bram_src_ip(25),
      R => '0'
    );
\bram_src_ip_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_src_ip[31]_i_1_n_0\,
      D => bram_port_dout(26),
      Q => bram_src_ip(26),
      R => '0'
    );
\bram_src_ip_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_src_ip[31]_i_1_n_0\,
      D => bram_port_dout(27),
      Q => bram_src_ip(27),
      R => '0'
    );
\bram_src_ip_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_src_ip[31]_i_1_n_0\,
      D => bram_port_dout(28),
      Q => bram_src_ip(28),
      R => '0'
    );
\bram_src_ip_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_src_ip[31]_i_1_n_0\,
      D => bram_port_dout(29),
      Q => bram_src_ip(29),
      R => '0'
    );
\bram_src_ip_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_src_ip[31]_i_1_n_0\,
      D => bram_port_dout(2),
      Q => bram_src_ip(2),
      R => '0'
    );
\bram_src_ip_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_src_ip[31]_i_1_n_0\,
      D => bram_port_dout(30),
      Q => bram_src_ip(30),
      R => '0'
    );
\bram_src_ip_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_src_ip[31]_i_1_n_0\,
      D => bram_port_dout(31),
      Q => bram_src_ip(31),
      R => '0'
    );
\bram_src_ip_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_src_ip[31]_i_1_n_0\,
      D => bram_port_dout(3),
      Q => bram_src_ip(3),
      R => '0'
    );
\bram_src_ip_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_src_ip[31]_i_1_n_0\,
      D => bram_port_dout(4),
      Q => bram_src_ip(4),
      R => '0'
    );
\bram_src_ip_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_src_ip[31]_i_1_n_0\,
      D => bram_port_dout(5),
      Q => bram_src_ip(5),
      R => '0'
    );
\bram_src_ip_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_src_ip[31]_i_1_n_0\,
      D => bram_port_dout(6),
      Q => bram_src_ip(6),
      R => '0'
    );
\bram_src_ip_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_src_ip[31]_i_1_n_0\,
      D => bram_port_dout(7),
      Q => bram_src_ip(7),
      R => '0'
    );
\bram_src_ip_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_src_ip[31]_i_1_n_0\,
      D => bram_port_dout(8),
      Q => bram_src_ip(8),
      R => '0'
    );
\bram_src_ip_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bram_src_ip[31]_i_1_n_0\,
      D => bram_port_dout(9),
      Q => bram_src_ip(9),
      R => '0'
    );
\counter_pos_bram[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBBBFBF40004000"
    )
        port map (
      I0 => current_state(3),
      I1 => rst,
      I2 => \counter_pos_bram[0]_i_2_n_0\,
      I3 => current_state(2),
      I4 => \bram_port_addr[9]_i_4_n_0\,
      I5 => \counter_pos_bram_reg_n_0_[0]\,
      O => \counter_pos_bram[0]_i_1_n_0\
    );
\counter_pos_bram[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15555555"
    )
        port map (
      I0 => \counter_pos_bram[0]_i_3_n_0\,
      I1 => next_state3,
      I2 => next_state2,
      I3 => next_state4,
      I4 => next_state40_out,
      O => \counter_pos_bram[0]_i_2_n_0\
    );
\counter_pos_bram[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => current_state(1),
      I1 => current_state(2),
      I2 => current_state(0),
      O => \counter_pos_bram[0]_i_3_n_0\
    );
\counter_pos_bram[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => current_state(2),
      I1 => \counter_pos_bram_reg_n_0_[0]\,
      I2 => \counter_pos_bram_reg_n_0_[1]\,
      O => \counter_pos_bram[1]_i_1_n_0\
    );
\counter_pos_bram[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => current_state(2),
      I1 => \counter_pos_bram_reg_n_0_[1]\,
      I2 => \counter_pos_bram_reg_n_0_[0]\,
      I3 => \counter_pos_bram_reg_n_0_[2]\,
      O => \counter_pos_bram[2]_i_1_n_0\
    );
\counter_pos_bram[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => current_state(2),
      I1 => \counter_pos_bram_reg_n_0_[0]\,
      I2 => \counter_pos_bram_reg_n_0_[1]\,
      I3 => \counter_pos_bram_reg_n_0_[2]\,
      I4 => \counter_pos_bram_reg_n_0_[3]\,
      O => \counter_pos_bram[3]_i_1_n_0\
    );
\counter_pos_bram[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => current_state(2),
      I1 => \counter_pos_bram_reg_n_0_[3]\,
      I2 => \counter_pos_bram_reg_n_0_[2]\,
      I3 => \counter_pos_bram_reg_n_0_[1]\,
      I4 => \counter_pos_bram_reg_n_0_[0]\,
      I5 => \counter_pos_bram_reg_n_0_[4]\,
      O => \counter_pos_bram[4]_i_1_n_0\
    );
\counter_pos_bram[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000440000004"
    )
        port map (
      I0 => current_state(3),
      I1 => rst,
      I2 => current_state(0),
      I3 => current_state(2),
      I4 => current_state(1),
      I5 => next_state1,
      O => \counter_pos_bram[5]_i_1_n_0\
    );
\counter_pos_bram[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => current_state(2),
      I1 => \counter_pos_bram[5]_i_3_n_0\,
      I2 => \counter_pos_bram_reg_n_0_[4]\,
      I3 => \counter_pos_bram_reg_n_0_[5]\,
      O => \counter_pos_bram[5]_i_2_n_0\
    );
\counter_pos_bram[5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \counter_pos_bram_reg_n_0_[3]\,
      I1 => \counter_pos_bram_reg_n_0_[2]\,
      I2 => \counter_pos_bram_reg_n_0_[1]\,
      I3 => \counter_pos_bram_reg_n_0_[0]\,
      O => \counter_pos_bram[5]_i_3_n_0\
    );
\counter_pos_bram_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_pos_bram[0]_i_1_n_0\,
      Q => \counter_pos_bram_reg_n_0_[0]\,
      R => '0'
    );
\counter_pos_bram_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \counter_pos_bram[5]_i_1_n_0\,
      D => \counter_pos_bram[1]_i_1_n_0\,
      Q => \counter_pos_bram_reg_n_0_[1]\,
      R => '0'
    );
\counter_pos_bram_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \counter_pos_bram[5]_i_1_n_0\,
      D => \counter_pos_bram[2]_i_1_n_0\,
      Q => \counter_pos_bram_reg_n_0_[2]\,
      R => '0'
    );
\counter_pos_bram_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \counter_pos_bram[5]_i_1_n_0\,
      D => \counter_pos_bram[3]_i_1_n_0\,
      Q => \counter_pos_bram_reg_n_0_[3]\,
      R => '0'
    );
\counter_pos_bram_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \counter_pos_bram[5]_i_1_n_0\,
      D => \counter_pos_bram[4]_i_1_n_0\,
      Q => \counter_pos_bram_reg_n_0_[4]\,
      R => '0'
    );
\counter_pos_bram_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \counter_pos_bram[5]_i_1_n_0\,
      D => \counter_pos_bram[5]_i_2_n_0\,
      Q => \counter_pos_bram_reg_n_0_[5]\,
      R => '0'
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => s_header_data_src_ip(23),
      I1 => bram_src_ip(23),
      I2 => s_header_data_src_ip(21),
      I3 => bram_src_ip(21),
      I4 => bram_src_ip(22),
      I5 => s_header_data_src_ip(22),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => s_header_data_src_ip(19),
      I1 => bram_src_ip(19),
      I2 => s_header_data_src_ip(18),
      I3 => bram_src_ip(18),
      I4 => bram_src_ip(20),
      I5 => s_header_data_src_ip(20),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => s_header_data_src_ip(15),
      I1 => bram_src_ip(15),
      I2 => s_header_data_src_ip(16),
      I3 => bram_src_ip(16),
      I4 => bram_src_ip(17),
      I5 => s_header_data_src_ip(17),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => s_header_data_src_ip(12),
      I1 => bram_src_ip(12),
      I2 => s_header_data_src_ip(13),
      I3 => bram_src_ip(13),
      I4 => bram_src_ip(14),
      I5 => s_header_data_src_ip(14),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => bram_src_ip(31),
      I1 => s_header_data_src_ip(31),
      I2 => bram_src_ip(30),
      I3 => s_header_data_src_ip(30),
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => s_header_data_src_ip(27),
      I1 => bram_src_ip(27),
      I2 => s_header_data_src_ip(28),
      I3 => bram_src_ip(28),
      I4 => bram_src_ip(29),
      I5 => s_header_data_src_ip(29),
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => s_header_data_src_ip(24),
      I1 => bram_src_ip(24),
      I2 => s_header_data_src_ip(25),
      I3 => bram_src_ip(25),
      I4 => bram_src_ip(26),
      I5 => s_header_data_src_ip(26),
      O => \i__carry__1_i_3_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => s_header_data_src_ip(9),
      I1 => bram_src_ip(9),
      I2 => s_header_data_src_ip(10),
      I3 => bram_src_ip(10),
      I4 => bram_src_ip(11),
      I5 => s_header_data_src_ip(11),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => s_header_data_src_ip(6),
      I1 => bram_src_ip(6),
      I2 => s_header_data_src_ip(7),
      I3 => bram_src_ip(7),
      I4 => bram_src_ip(8),
      I5 => s_header_data_src_ip(8),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => s_header_data_src_ip(3),
      I1 => bram_src_ip(3),
      I2 => s_header_data_src_ip(4),
      I3 => bram_src_ip(4),
      I4 => bram_src_ip(5),
      I5 => s_header_data_src_ip(5),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => s_header_data_src_ip(0),
      I1 => bram_src_ip(0),
      I2 => s_header_data_src_ip(1),
      I3 => bram_src_ip(1),
      I4 => bram_src_ip(2),
      I5 => s_header_data_src_ip(2),
      O => \i__carry_i_4_n_0\
    );
next_state2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => next_state2_carry_n_0,
      CO(2) => next_state2_carry_n_1,
      CO(1) => next_state2_carry_n_2,
      CO(0) => next_state2_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_next_state2_carry_O_UNCONNECTED(3 downto 0),
      S(3) => next_state2_carry_i_1_n_0,
      S(2) => next_state2_carry_i_2_n_0,
      S(1) => next_state2_carry_i_3_n_0,
      S(0) => next_state2_carry_i_4_n_0
    );
\next_state2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => next_state2_carry_n_0,
      CO(3 downto 2) => \NLW_next_state2_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => next_state2,
      CO(0) => \next_state2_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_next_state2_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \next_state2_carry__0_i_1_n_0\,
      S(0) => \next_state2_carry__0_i_2_n_0\
    );
\next_state2_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_0_in(15),
      I1 => s_header_data_src_port(15),
      O => \next_state2_carry__0_i_1_n_0\
    );
\next_state2_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => s_header_data_src_port(12),
      I1 => p_0_in(12),
      I2 => s_header_data_src_port(13),
      I3 => p_0_in(13),
      I4 => p_0_in(14),
      I5 => s_header_data_src_port(14),
      O => \next_state2_carry__0_i_2_n_0\
    );
next_state2_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => s_header_data_src_port(10),
      I1 => p_0_in(10),
      I2 => s_header_data_src_port(9),
      I3 => p_0_in(9),
      I4 => p_0_in(11),
      I5 => s_header_data_src_port(11),
      O => next_state2_carry_i_1_n_0
    );
next_state2_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => s_header_data_src_port(6),
      I1 => p_0_in(6),
      I2 => s_header_data_src_port(7),
      I3 => p_0_in(7),
      I4 => p_0_in(8),
      I5 => s_header_data_src_port(8),
      O => next_state2_carry_i_2_n_0
    );
next_state2_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => s_header_data_src_port(5),
      I1 => p_0_in(5),
      I2 => s_header_data_src_port(3),
      I3 => p_0_in(3),
      I4 => p_0_in(4),
      I5 => s_header_data_src_port(4),
      O => next_state2_carry_i_3_n_0
    );
next_state2_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => s_header_data_src_port(0),
      I1 => p_0_in(0),
      I2 => s_header_data_src_port(1),
      I3 => p_0_in(1),
      I4 => p_0_in(2),
      I5 => s_header_data_src_port(2),
      O => next_state2_carry_i_4_n_0
    );
next_state3_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => next_state3_carry_n_0,
      CO(2) => next_state3_carry_n_1,
      CO(1) => next_state3_carry_n_2,
      CO(0) => next_state3_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_next_state3_carry_O_UNCONNECTED(3 downto 0),
      S(3) => next_state3_carry_i_1_n_0,
      S(2) => next_state3_carry_i_2_n_0,
      S(1) => next_state3_carry_i_3_n_0,
      S(0) => next_state3_carry_i_4_n_0
    );
\next_state3_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => next_state3_carry_n_0,
      CO(3 downto 2) => \NLW_next_state3_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => next_state3,
      CO(0) => \next_state3_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_next_state3_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \next_state3_carry__0_i_1_n_0\,
      S(0) => \next_state3_carry__0_i_2_n_0\
    );
\next_state3_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \bram_data_reg_n_0_[15]\,
      I1 => s_header_data_dst_port(15),
      O => \next_state3_carry__0_i_1_n_0\
    );
\next_state3_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => s_header_data_dst_port(12),
      I1 => \bram_data_reg_n_0_[12]\,
      I2 => s_header_data_dst_port(13),
      I3 => \bram_data_reg_n_0_[13]\,
      I4 => \bram_data_reg_n_0_[14]\,
      I5 => s_header_data_dst_port(14),
      O => \next_state3_carry__0_i_2_n_0\
    );
next_state3_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => s_header_data_dst_port(9),
      I1 => \bram_data_reg_n_0_[9]\,
      I2 => s_header_data_dst_port(10),
      I3 => \bram_data_reg_n_0_[10]\,
      I4 => \bram_data_reg_n_0_[11]\,
      I5 => s_header_data_dst_port(11),
      O => next_state3_carry_i_1_n_0
    );
next_state3_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => s_header_data_dst_port(6),
      I1 => \bram_data_reg_n_0_[6]\,
      I2 => s_header_data_dst_port(7),
      I3 => \bram_data_reg_n_0_[7]\,
      I4 => \bram_data_reg_n_0_[8]\,
      I5 => s_header_data_dst_port(8),
      O => next_state3_carry_i_2_n_0
    );
next_state3_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => s_header_data_dst_port(5),
      I1 => \bram_data_reg_n_0_[5]\,
      I2 => s_header_data_dst_port(3),
      I3 => \bram_data_reg_n_0_[3]\,
      I4 => \bram_data_reg_n_0_[4]\,
      I5 => s_header_data_dst_port(4),
      O => next_state3_carry_i_3_n_0
    );
next_state3_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => s_header_data_dst_port(1),
      I1 => \bram_data_reg_n_0_[1]\,
      I2 => s_header_data_dst_port(0),
      I3 => \bram_data_reg_n_0_[0]\,
      I4 => \bram_data_reg_n_0_[2]\,
      I5 => s_header_data_dst_port(2),
      O => next_state3_carry_i_4_n_0
    );
next_state4_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => next_state4_carry_n_0,
      CO(2) => next_state4_carry_n_1,
      CO(1) => next_state4_carry_n_2,
      CO(0) => next_state4_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_next_state4_carry_O_UNCONNECTED(3 downto 0),
      S(3) => next_state4_carry_i_1_n_0,
      S(2) => next_state4_carry_i_2_n_0,
      S(1) => next_state4_carry_i_3_n_0,
      S(0) => next_state4_carry_i_4_n_0
    );
\next_state4_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => next_state4_carry_n_0,
      CO(3) => \next_state4_carry__0_n_0\,
      CO(2) => \next_state4_carry__0_n_1\,
      CO(1) => \next_state4_carry__0_n_2\,
      CO(0) => \next_state4_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_next_state4_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \next_state4_carry__0_i_1_n_0\,
      S(2) => \next_state4_carry__0_i_2_n_0\,
      S(1) => \next_state4_carry__0_i_3_n_0\,
      S(0) => \next_state4_carry__0_i_4_n_0\
    );
\next_state4_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => s_header_data_dst_ip(23),
      I1 => bram_dst_ip(23),
      I2 => s_header_data_dst_ip(21),
      I3 => bram_dst_ip(21),
      I4 => bram_dst_ip(22),
      I5 => s_header_data_dst_ip(22),
      O => \next_state4_carry__0_i_1_n_0\
    );
\next_state4_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => s_header_data_dst_ip(20),
      I1 => bram_dst_ip(20),
      I2 => s_header_data_dst_ip(18),
      I3 => bram_dst_ip(18),
      I4 => bram_dst_ip(19),
      I5 => s_header_data_dst_ip(19),
      O => \next_state4_carry__0_i_2_n_0\
    );
\next_state4_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => s_header_data_dst_ip(16),
      I1 => bram_dst_ip(16),
      I2 => s_header_data_dst_ip(15),
      I3 => bram_dst_ip(15),
      I4 => bram_dst_ip(17),
      I5 => s_header_data_dst_ip(17),
      O => \next_state4_carry__0_i_3_n_0\
    );
\next_state4_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => s_header_data_dst_ip(12),
      I1 => bram_dst_ip(12),
      I2 => s_header_data_dst_ip(13),
      I3 => bram_dst_ip(13),
      I4 => bram_dst_ip(14),
      I5 => s_header_data_dst_ip(14),
      O => \next_state4_carry__0_i_4_n_0\
    );
\next_state4_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \next_state4_carry__0_n_0\,
      CO(3) => \NLW_next_state4_carry__1_CO_UNCONNECTED\(3),
      CO(2) => next_state4,
      CO(1) => \next_state4_carry__1_n_2\,
      CO(0) => \next_state4_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_next_state4_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \next_state4_carry__1_i_1_n_0\,
      S(1) => \next_state4_carry__1_i_2_n_0\,
      S(0) => \next_state4_carry__1_i_3_n_0\
    );
\next_state4_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => bram_dst_ip(31),
      I1 => s_header_data_dst_ip(31),
      I2 => bram_dst_ip(30),
      I3 => s_header_data_dst_ip(30),
      O => \next_state4_carry__1_i_1_n_0\
    );
\next_state4_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => s_header_data_dst_ip(27),
      I1 => bram_dst_ip(27),
      I2 => s_header_data_dst_ip(28),
      I3 => bram_dst_ip(28),
      I4 => bram_dst_ip(29),
      I5 => s_header_data_dst_ip(29),
      O => \next_state4_carry__1_i_2_n_0\
    );
\next_state4_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => s_header_data_dst_ip(24),
      I1 => bram_dst_ip(24),
      I2 => s_header_data_dst_ip(25),
      I3 => bram_dst_ip(25),
      I4 => bram_dst_ip(26),
      I5 => s_header_data_dst_ip(26),
      O => \next_state4_carry__1_i_3_n_0\
    );
next_state4_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => s_header_data_dst_ip(9),
      I1 => bram_dst_ip(9),
      I2 => s_header_data_dst_ip(10),
      I3 => bram_dst_ip(10),
      I4 => bram_dst_ip(11),
      I5 => s_header_data_dst_ip(11),
      O => next_state4_carry_i_1_n_0
    );
next_state4_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => s_header_data_dst_ip(6),
      I1 => bram_dst_ip(6),
      I2 => s_header_data_dst_ip(7),
      I3 => bram_dst_ip(7),
      I4 => bram_dst_ip(8),
      I5 => s_header_data_dst_ip(8),
      O => next_state4_carry_i_2_n_0
    );
next_state4_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => s_header_data_dst_ip(5),
      I1 => bram_dst_ip(5),
      I2 => s_header_data_dst_ip(3),
      I3 => bram_dst_ip(3),
      I4 => bram_dst_ip(4),
      I5 => s_header_data_dst_ip(4),
      O => next_state4_carry_i_3_n_0
    );
next_state4_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => s_header_data_dst_ip(1),
      I1 => bram_dst_ip(1),
      I2 => s_header_data_dst_ip(0),
      I3 => bram_dst_ip(0),
      I4 => bram_dst_ip(2),
      I5 => s_header_data_dst_ip(2),
      O => next_state4_carry_i_4_n_0
    );
\next_state4_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \next_state4_inferred__0/i__carry_n_0\,
      CO(2) => \next_state4_inferred__0/i__carry_n_1\,
      CO(1) => \next_state4_inferred__0/i__carry_n_2\,
      CO(0) => \next_state4_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_next_state4_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1_n_0\,
      S(2) => \i__carry_i_2_n_0\,
      S(1) => \i__carry_i_3_n_0\,
      S(0) => \i__carry_i_4_n_0\
    );
\next_state4_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \next_state4_inferred__0/i__carry_n_0\,
      CO(3) => \next_state4_inferred__0/i__carry__0_n_0\,
      CO(2) => \next_state4_inferred__0/i__carry__0_n_1\,
      CO(1) => \next_state4_inferred__0/i__carry__0_n_2\,
      CO(0) => \next_state4_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_next_state4_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_1_n_0\,
      S(2) => \i__carry__0_i_2_n_0\,
      S(1) => \i__carry__0_i_3_n_0\,
      S(0) => \i__carry__0_i_4_n_0\
    );
\next_state4_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \next_state4_inferred__0/i__carry__0_n_0\,
      CO(3) => \NLW_next_state4_inferred__0/i__carry__1_CO_UNCONNECTED\(3),
      CO(2) => next_state40_out,
      CO(1) => \next_state4_inferred__0/i__carry__1_n_2\,
      CO(0) => \next_state4_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_next_state4_inferred__0/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \i__carry__1_i_1_n_0\,
      S(1) => \i__carry__1_i_2_n_0\,
      S(0) => \i__carry__1_i_3_n_0\
    );
s_header_data_end_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => current_state(3),
      I1 => current_state(2),
      I2 => current_state(1),
      I3 => current_state(0),
      O => s_header_data_end_i_1_n_0
    );
s_header_data_end_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst,
      O => s_header_data_end_i_2_n_0
    );
s_header_data_end_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => s_header_data_end_i_2_n_0,
      D => s_header_data_end_i_1_n_0,
      Q => s_header_data_end
    );
s_header_data_response_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => state_packet_reg_n_0,
      I1 => current_state(3),
      I2 => current_state(2),
      I3 => current_state(1),
      I4 => current_state(0),
      O => s_header_data_response_i_1_n_0
    );
s_header_data_response_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => s_header_data_end_i_2_n_0,
      D => s_header_data_response_i_1_n_0,
      Q => s_header_data_response
    );
state_packet_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => next_state1,
      I1 => state_packet_i_2_n_0,
      I2 => current_state(0),
      I3 => current_state(2),
      I4 => current_state(1),
      I5 => state_packet_reg_n_0,
      O => state_packet_i_1_n_0
    );
state_packet_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rst,
      I1 => current_state(3),
      O => state_packet_i_2_n_0
    );
state_packet_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => state_packet_i_1_n_0,
      Q => state_packet_reg_n_0,
      R => '0'
    );
valid_data_bram_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1011FFFF10110000"
    )
        port map (
      I0 => current_state(1),
      I1 => current_state(3),
      I2 => valid_data_bram_i_2_n_0,
      I3 => valid_data_bram_i_3_n_0,
      I4 => valid_data_bram1_out,
      I5 => valid_data_bram_reg_n_0,
      O => valid_data_bram_i_1_n_0
    );
valid_data_bram_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => bram_port_dout(10),
      I1 => bram_port_dout(20),
      I2 => bram_port_dout(7),
      I3 => bram_port_dout(18),
      O => valid_data_bram_i_10_n_0
    );
valid_data_bram_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => valid_data_bram_i_5_n_0,
      I1 => bram_port_dout(1),
      I2 => bram_port_dout(5),
      I3 => bram_port_dout(28),
      I4 => bram_port_dout(27),
      I5 => valid_data_bram_i_6_n_0,
      O => valid_data_bram_i_2_n_0
    );
valid_data_bram_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => valid_data_bram_i_7_n_0,
      I1 => bram_port_dout(14),
      I2 => bram_port_dout(15),
      I3 => bram_port_dout(0),
      I4 => bram_port_dout(6),
      I5 => valid_data_bram_i_8_n_0,
      O => valid_data_bram_i_3_n_0
    );
valid_data_bram_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"09100000"
    )
        port map (
      I0 => current_state(1),
      I1 => current_state(0),
      I2 => current_state(3),
      I3 => current_state(2),
      I4 => rst,
      O => valid_data_bram1_out
    );
valid_data_bram_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => bram_port_dout(29),
      I1 => bram_port_dout(25),
      I2 => bram_port_dout(3),
      I3 => bram_port_dout(19),
      O => valid_data_bram_i_5_n_0
    );
valid_data_bram_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => bram_port_dout(17),
      I1 => bram_port_dout(9),
      I2 => bram_port_dout(21),
      I3 => bram_port_dout(11),
      I4 => valid_data_bram_i_9_n_0,
      O => valid_data_bram_i_6_n_0
    );
valid_data_bram_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => bram_port_dout(13),
      I1 => bram_port_dout(23),
      I2 => bram_port_dout(2),
      I3 => bram_port_dout(4),
      O => valid_data_bram_i_7_n_0
    );
valid_data_bram_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => bram_port_dout(22),
      I1 => bram_port_dout(12),
      I2 => bram_port_dout(30),
      I3 => bram_port_dout(8),
      I4 => valid_data_bram_i_10_n_0,
      O => valid_data_bram_i_8_n_0
    );
valid_data_bram_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => bram_port_dout(31),
      I1 => bram_port_dout(24),
      I2 => bram_port_dout(26),
      I3 => bram_port_dout(16),
      O => valid_data_bram_i_9_n_0
    );
valid_data_bram_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => valid_data_bram_i_1_n_0,
      Q => valid_data_bram_reg_n_0,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_RuleChecker_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_RuleChecker_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_RuleChecker_0_0 : entity is "design_1_RuleChecker_0_0,RuleChecker,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_RuleChecker_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_RuleChecker_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_RuleChecker_0_0 : entity is "RuleChecker,Vivado 2025.1";
end design_1_RuleChecker_0_0;

architecture STRUCTURE of design_1_RuleChecker_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^bram_port_addr\ : STD_LOGIC_VECTOR ( 9 downto 2 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 1e+08, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_MODE of rst : signal is "slave";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  bram_port_addr(10) <= \<const0>\;
  bram_port_addr(9 downto 2) <= \^bram_port_addr\(9 downto 2);
  bram_port_addr(1) <= \<const0>\;
  bram_port_addr(0) <= \<const0>\;
  bram_port_din(31) <= \<const0>\;
  bram_port_din(30) <= \<const0>\;
  bram_port_din(29) <= \<const0>\;
  bram_port_din(28) <= \<const0>\;
  bram_port_din(27) <= \<const0>\;
  bram_port_din(26) <= \<const0>\;
  bram_port_din(25) <= \<const0>\;
  bram_port_din(24) <= \<const0>\;
  bram_port_din(23) <= \<const0>\;
  bram_port_din(22) <= \<const0>\;
  bram_port_din(21) <= \<const0>\;
  bram_port_din(20) <= \<const0>\;
  bram_port_din(19) <= \<const0>\;
  bram_port_din(18) <= \<const0>\;
  bram_port_din(17) <= \<const0>\;
  bram_port_din(16) <= \<const0>\;
  bram_port_din(15) <= \<const0>\;
  bram_port_din(14) <= \<const0>\;
  bram_port_din(13) <= \<const0>\;
  bram_port_din(12) <= \<const0>\;
  bram_port_din(11) <= \<const0>\;
  bram_port_din(10) <= \<const0>\;
  bram_port_din(9) <= \<const0>\;
  bram_port_din(8) <= \<const0>\;
  bram_port_din(7) <= \<const0>\;
  bram_port_din(6) <= \<const0>\;
  bram_port_din(5) <= \<const0>\;
  bram_port_din(4) <= \<const0>\;
  bram_port_din(3) <= \<const0>\;
  bram_port_din(2) <= \<const0>\;
  bram_port_din(1) <= \<const0>\;
  bram_port_din(0) <= \<const0>\;
  bram_port_web <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_RuleChecker_0_0_RuleChecker
     port map (
      bram_port_addr(7 downto 0) => \^bram_port_addr\(9 downto 2),
      bram_port_dout(31 downto 0) => bram_port_dout(31 downto 0),
      bram_port_en => bram_port_en,
      clk => clk,
      rst => rst,
      s_header_data_dst_ip(31 downto 0) => s_header_data_dst_ip(31 downto 0),
      s_header_data_dst_port(15 downto 0) => s_header_data_dst_port(15 downto 0),
      s_header_data_end => s_header_data_end,
      s_header_data_response => s_header_data_response,
      s_header_data_src_ip(31 downto 0) => s_header_data_src_ip(31 downto 0),
      s_header_data_src_port(15 downto 0) => s_header_data_src_port(15 downto 0),
      s_header_data_start => s_header_data_start
    );
end STRUCTURE;
