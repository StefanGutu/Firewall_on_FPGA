-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
-- Date        : Sat Apr  4 18:20:26 2026
-- Host        : Acer-Nitro5 running 64-bit Ubuntu 24.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/paxl/Projects/Licenta/Vivado/AXI_DMA_AND_BRAM/AXI_DMA_TEST/AXI_DMA_TEST.gen/sources_1/bd/design_1/ip/design_1_AXI_Slave_ReciveData_0_0/design_1_AXI_Slave_ReciveData_0_0_sim_netlist.vhdl
-- Design      : design_1_AXI_Slave_ReciveData_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_AXI_Slave_ReciveData_0_0_AXI_Slave_ReciveData is
  port (
    m_header_data_src_ip : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_header_data_dst_ip : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_header_data_dst_port : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_header_data_src_port : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_header_data_protocol : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_packet_id : out STD_LOGIC_VECTOR ( 13 downto 0 );
    m_packet_rs : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tready : out STD_LOGIC;
    m_header_data_start : out STD_LOGIC;
    clk : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_header_data_end : in STD_LOGIC;
    m_header_data_response : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_AXI_Slave_ReciveData_0_0_AXI_Slave_ReciveData : entity is "AXI_Slave_ReciveData";
end design_1_AXI_Slave_ReciveData_0_0_AXI_Slave_ReciveData;

architecture STRUCTURE of design_1_AXI_Slave_ReciveData_0_0_AXI_Slave_ReciveData is
  signal \Buffer\ : STD_LOGIC;
  signal \Buffer[0][31]_i_2_n_0\ : STD_LOGIC;
  signal \Buffer[0][31]_i_3_n_0\ : STD_LOGIC;
  signal \Buffer[1][31]_i_1_n_0\ : STD_LOGIC;
  signal \Buffer[2][31]_i_1_n_0\ : STD_LOGIC;
  signal Buffer_Counter : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \Buffer_Counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \Buffer_Counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \Buffer_Counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \Buffer_Counter[3]_i_1_n_0\ : STD_LOGIC;
  signal \Buffer_Counter[3]_i_2_n_0\ : STD_LOGIC;
  signal \Buffer_Counter[3]_i_3_n_0\ : STD_LOGIC;
  signal \Buffer_Counter[3]_i_4_n_0\ : STD_LOGIC;
  signal \Buffer_Counter[3]_i_5_n_0\ : STD_LOGIC;
  signal \Buffer_reg[0]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \Buffer_reg[1]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \Buffer_reg_n_0_[2][0]\ : STD_LOGIC;
  signal \Buffer_reg_n_0_[2][10]\ : STD_LOGIC;
  signal \Buffer_reg_n_0_[2][11]\ : STD_LOGIC;
  signal \Buffer_reg_n_0_[2][12]\ : STD_LOGIC;
  signal \Buffer_reg_n_0_[2][13]\ : STD_LOGIC;
  signal \Buffer_reg_n_0_[2][14]\ : STD_LOGIC;
  signal \Buffer_reg_n_0_[2][15]\ : STD_LOGIC;
  signal \Buffer_reg_n_0_[2][1]\ : STD_LOGIC;
  signal \Buffer_reg_n_0_[2][2]\ : STD_LOGIC;
  signal \Buffer_reg_n_0_[2][3]\ : STD_LOGIC;
  signal \Buffer_reg_n_0_[2][4]\ : STD_LOGIC;
  signal \Buffer_reg_n_0_[2][5]\ : STD_LOGIC;
  signal \Buffer_reg_n_0_[2][6]\ : STD_LOGIC;
  signal \Buffer_reg_n_0_[2][7]\ : STD_LOGIC;
  signal \Buffer_reg_n_0_[2][8]\ : STD_LOGIC;
  signal \Buffer_reg_n_0_[2][9]\ : STD_LOGIC;
  signal \FSM_onehot_current_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[0]\ : STD_LOGIC;
  signal Store_ID : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal current_state_reg : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \m_header_data_src_ip[31]_i_1_n_0\ : STD_LOGIC;
  signal \^m_header_data_start\ : STD_LOGIC;
  signal m_header_data_start_i_1_n_0 : STD_LOGIC;
  signal m_header_data_start_i_2_n_0 : STD_LOGIC;
  signal \m_packet_id[13]_i_1_n_0\ : STD_LOGIC;
  signal \^m_packet_rs\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \m_packet_rs[0]_i_1_n_0\ : STD_LOGIC;
  signal \m_packet_rs[0]_i_2_n_0\ : STD_LOGIC;
  signal \m_packet_rs[1]_i_1_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^s_axis_tready\ : STD_LOGIC;
  signal s_axis_tready_i_1_n_0 : STD_LOGIC;
  signal s_axis_tready_i_2_n_0 : STD_LOGIC;
  signal s_axis_tready_i_3_n_0 : STD_LOGIC;
  signal s_axis_tready_i_4_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Buffer_Counter[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Buffer_Counter[3]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Buffer_Counter[3]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_onehot_current_state[2]_i_2\ : label is "soft_lutpair2";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[0]\ : label is "WAIT:100,SEND:010,RECIVE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[1]\ : label is "WAIT:100,SEND:010,RECIVE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[2]\ : label is "WAIT:100,SEND:010,RECIVE:001";
  attribute SOFT_HLUTNM of s_axis_tready_i_3 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of s_axis_tready_i_4 : label is "soft_lutpair0";
begin
  m_header_data_start <= \^m_header_data_start\;
  m_packet_rs(1 downto 0) <= \^m_packet_rs\(1 downto 0);
  s_axis_tready <= \^s_axis_tready\;
\Buffer[0][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => \Buffer_Counter[3]_i_3_n_0\,
      I1 => Buffer_Counter(0),
      I2 => rst,
      I3 => Buffer_Counter(1),
      I4 => \Buffer[0][31]_i_2_n_0\,
      I5 => \Buffer[0][31]_i_3_n_0\,
      O => \Buffer\
    );
\Buffer[0][31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Buffer_Counter(2),
      I1 => Buffer_Counter(3),
      O => \Buffer[0][31]_i_2_n_0\
    );
\Buffer[0][31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"454F"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I1 => m_header_data_end,
      I2 => current_state_reg(1),
      I3 => s_axis_tlast,
      O => \Buffer[0][31]_i_3_n_0\
    );
\Buffer[1][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => \Buffer_Counter[3]_i_3_n_0\,
      I1 => Buffer_Counter(0),
      I2 => rst,
      I3 => Buffer_Counter(1),
      I4 => \Buffer[0][31]_i_2_n_0\,
      I5 => \Buffer[0][31]_i_3_n_0\,
      O => \Buffer[1][31]_i_1_n_0\
    );
\Buffer[2][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000200000000000"
    )
        port map (
      I0 => \Buffer_Counter[3]_i_3_n_0\,
      I1 => Buffer_Counter(0),
      I2 => Buffer_Counter(1),
      I3 => rst,
      I4 => \Buffer[0][31]_i_2_n_0\,
      I5 => \Buffer[0][31]_i_3_n_0\,
      O => \Buffer[2][31]_i_1_n_0\
    );
\Buffer_Counter[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F3FF0055"
    )
        port map (
      I0 => s_axis_tlast,
      I1 => current_state_reg(1),
      I2 => m_header_data_end,
      I3 => current_state_reg(0),
      I4 => s_axis_tready_i_4_n_0,
      I5 => Buffer_Counter(0),
      O => \Buffer_Counter[0]_i_1_n_0\
    );
\Buffer_Counter[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \Buffer_Counter[3]_i_5_n_0\,
      I1 => Buffer_Counter(1),
      I2 => Buffer_Counter(0),
      O => \Buffer_Counter[1]_i_1_n_0\
    );
\Buffer_Counter[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2888"
    )
        port map (
      I0 => \Buffer_Counter[3]_i_5_n_0\,
      I1 => Buffer_Counter(2),
      I2 => Buffer_Counter(0),
      I3 => Buffer_Counter(1),
      O => \Buffer_Counter[2]_i_1_n_0\
    );
\Buffer_Counter[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF750075007500"
    )
        port map (
      I0 => current_state_reg(1),
      I1 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I2 => m_header_data_end,
      I3 => \Buffer_Counter[3]_i_3_n_0\,
      I4 => \Buffer_Counter[3]_i_4_n_0\,
      I5 => s_axis_tready_i_3_n_0,
      O => \Buffer_Counter[3]_i_1_n_0\
    );
\Buffer_Counter[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28888888"
    )
        port map (
      I0 => \Buffer_Counter[3]_i_5_n_0\,
      I1 => Buffer_Counter(3),
      I2 => Buffer_Counter(2),
      I3 => Buffer_Counter(1),
      I4 => Buffer_Counter(0),
      O => \Buffer_Counter[3]_i_2_n_0\
    );
\Buffer_Counter[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => current_state_reg(0),
      I1 => s_axis_tvalid,
      I2 => \^s_axis_tready\,
      O => \Buffer_Counter[3]_i_3_n_0\
    );
\Buffer_Counter[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0B000000"
    )
        port map (
      I0 => m_header_data_end,
      I1 => current_state_reg(1),
      I2 => current_state_reg(0),
      I3 => s_axis_tvalid,
      I4 => \FSM_onehot_current_state_reg_n_0_[0]\,
      O => \Buffer_Counter[3]_i_4_n_0\
    );
\Buffer_Counter[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"770777777707FFFF"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I1 => s_axis_tvalid,
      I2 => current_state_reg(1),
      I3 => m_header_data_end,
      I4 => current_state_reg(0),
      I5 => s_axis_tready_i_3_n_0,
      O => \Buffer_Counter[3]_i_5_n_0\
    );
\Buffer_Counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Buffer_Counter[3]_i_1_n_0\,
      CLR => s_axis_tready_i_2_n_0,
      D => \Buffer_Counter[0]_i_1_n_0\,
      Q => Buffer_Counter(0)
    );
\Buffer_Counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Buffer_Counter[3]_i_1_n_0\,
      CLR => s_axis_tready_i_2_n_0,
      D => \Buffer_Counter[1]_i_1_n_0\,
      Q => Buffer_Counter(1)
    );
\Buffer_Counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Buffer_Counter[3]_i_1_n_0\,
      CLR => s_axis_tready_i_2_n_0,
      D => \Buffer_Counter[2]_i_1_n_0\,
      Q => Buffer_Counter(2)
    );
\Buffer_Counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Buffer_Counter[3]_i_1_n_0\,
      CLR => s_axis_tready_i_2_n_0,
      D => \Buffer_Counter[3]_i_2_n_0\,
      Q => Buffer_Counter(3)
    );
\Buffer_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer\,
      D => s_axis_tdata(0),
      Q => \Buffer_reg[0]\(0),
      R => '0'
    );
\Buffer_reg[0][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer\,
      D => s_axis_tdata(10),
      Q => \Buffer_reg[0]\(10),
      R => '0'
    );
\Buffer_reg[0][11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer\,
      D => s_axis_tdata(11),
      Q => \Buffer_reg[0]\(11),
      R => '0'
    );
\Buffer_reg[0][12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer\,
      D => s_axis_tdata(12),
      Q => \Buffer_reg[0]\(12),
      R => '0'
    );
\Buffer_reg[0][13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer\,
      D => s_axis_tdata(13),
      Q => \Buffer_reg[0]\(13),
      R => '0'
    );
\Buffer_reg[0][14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer\,
      D => s_axis_tdata(14),
      Q => \Buffer_reg[0]\(14),
      R => '0'
    );
\Buffer_reg[0][15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer\,
      D => s_axis_tdata(15),
      Q => \Buffer_reg[0]\(15),
      R => '0'
    );
\Buffer_reg[0][16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer\,
      D => s_axis_tdata(16),
      Q => \Buffer_reg[0]\(16),
      R => '0'
    );
\Buffer_reg[0][17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer\,
      D => s_axis_tdata(17),
      Q => \Buffer_reg[0]\(17),
      R => '0'
    );
\Buffer_reg[0][18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer\,
      D => s_axis_tdata(18),
      Q => \Buffer_reg[0]\(18),
      R => '0'
    );
\Buffer_reg[0][19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer\,
      D => s_axis_tdata(19),
      Q => \Buffer_reg[0]\(19),
      R => '0'
    );
\Buffer_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer\,
      D => s_axis_tdata(1),
      Q => \Buffer_reg[0]\(1),
      R => '0'
    );
\Buffer_reg[0][20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer\,
      D => s_axis_tdata(20),
      Q => \Buffer_reg[0]\(20),
      R => '0'
    );
\Buffer_reg[0][21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer\,
      D => s_axis_tdata(21),
      Q => \Buffer_reg[0]\(21),
      R => '0'
    );
\Buffer_reg[0][22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer\,
      D => s_axis_tdata(22),
      Q => \Buffer_reg[0]\(22),
      R => '0'
    );
\Buffer_reg[0][23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer\,
      D => s_axis_tdata(23),
      Q => \Buffer_reg[0]\(23),
      R => '0'
    );
\Buffer_reg[0][24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer\,
      D => s_axis_tdata(24),
      Q => \Buffer_reg[0]\(24),
      R => '0'
    );
\Buffer_reg[0][25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer\,
      D => s_axis_tdata(25),
      Q => \Buffer_reg[0]\(25),
      R => '0'
    );
\Buffer_reg[0][26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer\,
      D => s_axis_tdata(26),
      Q => \Buffer_reg[0]\(26),
      R => '0'
    );
\Buffer_reg[0][27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer\,
      D => s_axis_tdata(27),
      Q => \Buffer_reg[0]\(27),
      R => '0'
    );
\Buffer_reg[0][28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer\,
      D => s_axis_tdata(28),
      Q => \Buffer_reg[0]\(28),
      R => '0'
    );
\Buffer_reg[0][29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer\,
      D => s_axis_tdata(29),
      Q => \Buffer_reg[0]\(29),
      R => '0'
    );
\Buffer_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer\,
      D => s_axis_tdata(2),
      Q => \Buffer_reg[0]\(2),
      R => '0'
    );
\Buffer_reg[0][30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer\,
      D => s_axis_tdata(30),
      Q => \Buffer_reg[0]\(30),
      R => '0'
    );
\Buffer_reg[0][31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer\,
      D => s_axis_tdata(31),
      Q => \Buffer_reg[0]\(31),
      R => '0'
    );
\Buffer_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer\,
      D => s_axis_tdata(3),
      Q => \Buffer_reg[0]\(3),
      R => '0'
    );
\Buffer_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer\,
      D => s_axis_tdata(4),
      Q => \Buffer_reg[0]\(4),
      R => '0'
    );
\Buffer_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer\,
      D => s_axis_tdata(5),
      Q => \Buffer_reg[0]\(5),
      R => '0'
    );
\Buffer_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer\,
      D => s_axis_tdata(6),
      Q => \Buffer_reg[0]\(6),
      R => '0'
    );
\Buffer_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer\,
      D => s_axis_tdata(7),
      Q => \Buffer_reg[0]\(7),
      R => '0'
    );
\Buffer_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer\,
      D => s_axis_tdata(8),
      Q => \Buffer_reg[0]\(8),
      R => '0'
    );
\Buffer_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer\,
      D => s_axis_tdata(9),
      Q => \Buffer_reg[0]\(9),
      R => '0'
    );
\Buffer_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer[1][31]_i_1_n_0\,
      D => s_axis_tdata(0),
      Q => \Buffer_reg[1]\(0),
      R => '0'
    );
\Buffer_reg[1][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer[1][31]_i_1_n_0\,
      D => s_axis_tdata(10),
      Q => \Buffer_reg[1]\(10),
      R => '0'
    );
\Buffer_reg[1][11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer[1][31]_i_1_n_0\,
      D => s_axis_tdata(11),
      Q => \Buffer_reg[1]\(11),
      R => '0'
    );
\Buffer_reg[1][12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer[1][31]_i_1_n_0\,
      D => s_axis_tdata(12),
      Q => \Buffer_reg[1]\(12),
      R => '0'
    );
\Buffer_reg[1][13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer[1][31]_i_1_n_0\,
      D => s_axis_tdata(13),
      Q => \Buffer_reg[1]\(13),
      R => '0'
    );
\Buffer_reg[1][14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer[1][31]_i_1_n_0\,
      D => s_axis_tdata(14),
      Q => \Buffer_reg[1]\(14),
      R => '0'
    );
\Buffer_reg[1][15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer[1][31]_i_1_n_0\,
      D => s_axis_tdata(15),
      Q => \Buffer_reg[1]\(15),
      R => '0'
    );
\Buffer_reg[1][16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer[1][31]_i_1_n_0\,
      D => s_axis_tdata(16),
      Q => \Buffer_reg[1]\(16),
      R => '0'
    );
\Buffer_reg[1][17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer[1][31]_i_1_n_0\,
      D => s_axis_tdata(17),
      Q => \Buffer_reg[1]\(17),
      R => '0'
    );
\Buffer_reg[1][18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer[1][31]_i_1_n_0\,
      D => s_axis_tdata(18),
      Q => \Buffer_reg[1]\(18),
      R => '0'
    );
\Buffer_reg[1][19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer[1][31]_i_1_n_0\,
      D => s_axis_tdata(19),
      Q => \Buffer_reg[1]\(19),
      R => '0'
    );
\Buffer_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer[1][31]_i_1_n_0\,
      D => s_axis_tdata(1),
      Q => \Buffer_reg[1]\(1),
      R => '0'
    );
\Buffer_reg[1][20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer[1][31]_i_1_n_0\,
      D => s_axis_tdata(20),
      Q => \Buffer_reg[1]\(20),
      R => '0'
    );
\Buffer_reg[1][21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer[1][31]_i_1_n_0\,
      D => s_axis_tdata(21),
      Q => \Buffer_reg[1]\(21),
      R => '0'
    );
\Buffer_reg[1][22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer[1][31]_i_1_n_0\,
      D => s_axis_tdata(22),
      Q => \Buffer_reg[1]\(22),
      R => '0'
    );
\Buffer_reg[1][23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer[1][31]_i_1_n_0\,
      D => s_axis_tdata(23),
      Q => \Buffer_reg[1]\(23),
      R => '0'
    );
\Buffer_reg[1][24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer[1][31]_i_1_n_0\,
      D => s_axis_tdata(24),
      Q => \Buffer_reg[1]\(24),
      R => '0'
    );
\Buffer_reg[1][25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer[1][31]_i_1_n_0\,
      D => s_axis_tdata(25),
      Q => \Buffer_reg[1]\(25),
      R => '0'
    );
\Buffer_reg[1][26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer[1][31]_i_1_n_0\,
      D => s_axis_tdata(26),
      Q => \Buffer_reg[1]\(26),
      R => '0'
    );
\Buffer_reg[1][27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer[1][31]_i_1_n_0\,
      D => s_axis_tdata(27),
      Q => \Buffer_reg[1]\(27),
      R => '0'
    );
\Buffer_reg[1][28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer[1][31]_i_1_n_0\,
      D => s_axis_tdata(28),
      Q => \Buffer_reg[1]\(28),
      R => '0'
    );
\Buffer_reg[1][29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer[1][31]_i_1_n_0\,
      D => s_axis_tdata(29),
      Q => \Buffer_reg[1]\(29),
      R => '0'
    );
\Buffer_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer[1][31]_i_1_n_0\,
      D => s_axis_tdata(2),
      Q => \Buffer_reg[1]\(2),
      R => '0'
    );
\Buffer_reg[1][30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer[1][31]_i_1_n_0\,
      D => s_axis_tdata(30),
      Q => \Buffer_reg[1]\(30),
      R => '0'
    );
\Buffer_reg[1][31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer[1][31]_i_1_n_0\,
      D => s_axis_tdata(31),
      Q => \Buffer_reg[1]\(31),
      R => '0'
    );
\Buffer_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer[1][31]_i_1_n_0\,
      D => s_axis_tdata(3),
      Q => \Buffer_reg[1]\(3),
      R => '0'
    );
\Buffer_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer[1][31]_i_1_n_0\,
      D => s_axis_tdata(4),
      Q => \Buffer_reg[1]\(4),
      R => '0'
    );
\Buffer_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer[1][31]_i_1_n_0\,
      D => s_axis_tdata(5),
      Q => \Buffer_reg[1]\(5),
      R => '0'
    );
\Buffer_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer[1][31]_i_1_n_0\,
      D => s_axis_tdata(6),
      Q => \Buffer_reg[1]\(6),
      R => '0'
    );
\Buffer_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer[1][31]_i_1_n_0\,
      D => s_axis_tdata(7),
      Q => \Buffer_reg[1]\(7),
      R => '0'
    );
\Buffer_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer[1][31]_i_1_n_0\,
      D => s_axis_tdata(8),
      Q => \Buffer_reg[1]\(8),
      R => '0'
    );
\Buffer_reg[1][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer[1][31]_i_1_n_0\,
      D => s_axis_tdata(9),
      Q => \Buffer_reg[1]\(9),
      R => '0'
    );
\Buffer_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer[2][31]_i_1_n_0\,
      D => s_axis_tdata(0),
      Q => \Buffer_reg_n_0_[2][0]\,
      R => '0'
    );
\Buffer_reg[2][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer[2][31]_i_1_n_0\,
      D => s_axis_tdata(10),
      Q => \Buffer_reg_n_0_[2][10]\,
      R => '0'
    );
\Buffer_reg[2][11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer[2][31]_i_1_n_0\,
      D => s_axis_tdata(11),
      Q => \Buffer_reg_n_0_[2][11]\,
      R => '0'
    );
\Buffer_reg[2][12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer[2][31]_i_1_n_0\,
      D => s_axis_tdata(12),
      Q => \Buffer_reg_n_0_[2][12]\,
      R => '0'
    );
\Buffer_reg[2][13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer[2][31]_i_1_n_0\,
      D => s_axis_tdata(13),
      Q => \Buffer_reg_n_0_[2][13]\,
      R => '0'
    );
\Buffer_reg[2][14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer[2][31]_i_1_n_0\,
      D => s_axis_tdata(14),
      Q => \Buffer_reg_n_0_[2][14]\,
      R => '0'
    );
\Buffer_reg[2][15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer[2][31]_i_1_n_0\,
      D => s_axis_tdata(15),
      Q => \Buffer_reg_n_0_[2][15]\,
      R => '0'
    );
\Buffer_reg[2][16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer[2][31]_i_1_n_0\,
      D => s_axis_tdata(16),
      Q => p_0_in(0),
      R => '0'
    );
\Buffer_reg[2][17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer[2][31]_i_1_n_0\,
      D => s_axis_tdata(17),
      Q => p_0_in(1),
      R => '0'
    );
\Buffer_reg[2][18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer[2][31]_i_1_n_0\,
      D => s_axis_tdata(18),
      Q => p_0_in(2),
      R => '0'
    );
\Buffer_reg[2][19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer[2][31]_i_1_n_0\,
      D => s_axis_tdata(19),
      Q => p_0_in(3),
      R => '0'
    );
\Buffer_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer[2][31]_i_1_n_0\,
      D => s_axis_tdata(1),
      Q => \Buffer_reg_n_0_[2][1]\,
      R => '0'
    );
\Buffer_reg[2][20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer[2][31]_i_1_n_0\,
      D => s_axis_tdata(20),
      Q => p_0_in(4),
      R => '0'
    );
\Buffer_reg[2][21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer[2][31]_i_1_n_0\,
      D => s_axis_tdata(21),
      Q => p_0_in(5),
      R => '0'
    );
\Buffer_reg[2][22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer[2][31]_i_1_n_0\,
      D => s_axis_tdata(22),
      Q => p_0_in(6),
      R => '0'
    );
\Buffer_reg[2][23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer[2][31]_i_1_n_0\,
      D => s_axis_tdata(23),
      Q => p_0_in(7),
      R => '0'
    );
\Buffer_reg[2][24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer[2][31]_i_1_n_0\,
      D => s_axis_tdata(24),
      Q => p_0_in(8),
      R => '0'
    );
\Buffer_reg[2][25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer[2][31]_i_1_n_0\,
      D => s_axis_tdata(25),
      Q => p_0_in(9),
      R => '0'
    );
\Buffer_reg[2][26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer[2][31]_i_1_n_0\,
      D => s_axis_tdata(26),
      Q => p_0_in(10),
      R => '0'
    );
\Buffer_reg[2][27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer[2][31]_i_1_n_0\,
      D => s_axis_tdata(27),
      Q => p_0_in(11),
      R => '0'
    );
\Buffer_reg[2][28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer[2][31]_i_1_n_0\,
      D => s_axis_tdata(28),
      Q => p_0_in(12),
      R => '0'
    );
\Buffer_reg[2][29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer[2][31]_i_1_n_0\,
      D => s_axis_tdata(29),
      Q => p_0_in(13),
      R => '0'
    );
\Buffer_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer[2][31]_i_1_n_0\,
      D => s_axis_tdata(2),
      Q => \Buffer_reg_n_0_[2][2]\,
      R => '0'
    );
\Buffer_reg[2][30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer[2][31]_i_1_n_0\,
      D => s_axis_tdata(30),
      Q => p_0_in(14),
      R => '0'
    );
\Buffer_reg[2][31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer[2][31]_i_1_n_0\,
      D => s_axis_tdata(31),
      Q => p_0_in(15),
      R => '0'
    );
\Buffer_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer[2][31]_i_1_n_0\,
      D => s_axis_tdata(3),
      Q => \Buffer_reg_n_0_[2][3]\,
      R => '0'
    );
\Buffer_reg[2][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer[2][31]_i_1_n_0\,
      D => s_axis_tdata(4),
      Q => \Buffer_reg_n_0_[2][4]\,
      R => '0'
    );
\Buffer_reg[2][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer[2][31]_i_1_n_0\,
      D => s_axis_tdata(5),
      Q => \Buffer_reg_n_0_[2][5]\,
      R => '0'
    );
\Buffer_reg[2][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer[2][31]_i_1_n_0\,
      D => s_axis_tdata(6),
      Q => \Buffer_reg_n_0_[2][6]\,
      R => '0'
    );
\Buffer_reg[2][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer[2][31]_i_1_n_0\,
      D => s_axis_tdata(7),
      Q => \Buffer_reg_n_0_[2][7]\,
      R => '0'
    );
\Buffer_reg[2][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer[2][31]_i_1_n_0\,
      D => s_axis_tdata(8),
      Q => \Buffer_reg_n_0_[2][8]\,
      R => '0'
    );
\Buffer_reg[2][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \Buffer[2][31]_i_1_n_0\,
      D => s_axis_tdata(9),
      Q => \Buffer_reg_n_0_[2][9]\,
      R => '0'
    );
\FSM_onehot_current_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFFF8888"
    )
        port map (
      I0 => current_state_reg(1),
      I1 => m_header_data_end,
      I2 => s_axis_tvalid,
      I3 => s_axis_tready_i_3_n_0,
      I4 => \FSM_onehot_current_state_reg_n_0_[0]\,
      O => \FSM_onehot_current_state[0]_i_1_n_0\
    );
\FSM_onehot_current_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8880FF8088808880"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I1 => s_axis_tvalid,
      I2 => s_axis_tready_i_3_n_0,
      I3 => current_state_reg(0),
      I4 => m_header_data_end,
      I5 => current_state_reg(1),
      O => \FSM_onehot_current_state[1]_i_1_n_0\
    );
\FSM_onehot_current_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF02FF0000"
    )
        port map (
      I0 => \FSM_onehot_current_state[2]_i_2_n_0\,
      I1 => s_axis_tlast,
      I2 => s_axis_tready_i_4_n_0,
      I3 => m_header_data_end,
      I4 => current_state_reg(1),
      I5 => current_state_reg(0),
      O => \FSM_onehot_current_state[2]_i_1_n_0\
    );
\FSM_onehot_current_state[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => Buffer_Counter(1),
      I1 => Buffer_Counter(0),
      I2 => Buffer_Counter(3),
      I3 => Buffer_Counter(2),
      O => \FSM_onehot_current_state[2]_i_2_n_0\
    );
\FSM_onehot_current_state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_current_state[0]_i_1_n_0\,
      PRE => s_axis_tready_i_2_n_0,
      Q => \FSM_onehot_current_state_reg_n_0_[0]\
    );
\FSM_onehot_current_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => s_axis_tready_i_2_n_0,
      D => \FSM_onehot_current_state[1]_i_1_n_0\,
      Q => current_state_reg(0)
    );
\FSM_onehot_current_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => s_axis_tready_i_2_n_0,
      D => \FSM_onehot_current_state[2]_i_1_n_0\,
      Q => current_state_reg(1)
    );
\Store_ID_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => s_axis_tdata(8),
      Q => Store_ID(0),
      R => '0'
    );
\Store_ID_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => s_axis_tdata(18),
      Q => Store_ID(10),
      R => '0'
    );
\Store_ID_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => s_axis_tdata(19),
      Q => Store_ID(11),
      R => '0'
    );
\Store_ID_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => s_axis_tdata(20),
      Q => Store_ID(12),
      R => '0'
    );
\Store_ID_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => s_axis_tdata(21),
      Q => Store_ID(13),
      R => '0'
    );
\Store_ID_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => s_axis_tdata(9),
      Q => Store_ID(1),
      R => '0'
    );
\Store_ID_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => s_axis_tdata(10),
      Q => Store_ID(2),
      R => '0'
    );
\Store_ID_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => s_axis_tdata(11),
      Q => Store_ID(3),
      R => '0'
    );
\Store_ID_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => s_axis_tdata(12),
      Q => Store_ID(4),
      R => '0'
    );
\Store_ID_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => s_axis_tdata(13),
      Q => Store_ID(5),
      R => '0'
    );
\Store_ID_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => s_axis_tdata(14),
      Q => Store_ID(6),
      R => '0'
    );
\Store_ID_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => s_axis_tdata(15),
      Q => Store_ID(7),
      R => '0'
    );
\Store_ID_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => s_axis_tdata(16),
      Q => Store_ID(8),
      R => '0'
    );
\Store_ID_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => s_axis_tdata(17),
      Q => Store_ID(9),
      R => '0'
    );
\m_header_data_dst_ip_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg[1]\(0),
      Q => m_header_data_dst_ip(0),
      R => '0'
    );
\m_header_data_dst_ip_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg[1]\(10),
      Q => m_header_data_dst_ip(10),
      R => '0'
    );
\m_header_data_dst_ip_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg[1]\(11),
      Q => m_header_data_dst_ip(11),
      R => '0'
    );
\m_header_data_dst_ip_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg[1]\(12),
      Q => m_header_data_dst_ip(12),
      R => '0'
    );
\m_header_data_dst_ip_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg[1]\(13),
      Q => m_header_data_dst_ip(13),
      R => '0'
    );
\m_header_data_dst_ip_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg[1]\(14),
      Q => m_header_data_dst_ip(14),
      R => '0'
    );
\m_header_data_dst_ip_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg[1]\(15),
      Q => m_header_data_dst_ip(15),
      R => '0'
    );
\m_header_data_dst_ip_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg[1]\(16),
      Q => m_header_data_dst_ip(16),
      R => '0'
    );
\m_header_data_dst_ip_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg[1]\(17),
      Q => m_header_data_dst_ip(17),
      R => '0'
    );
\m_header_data_dst_ip_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg[1]\(18),
      Q => m_header_data_dst_ip(18),
      R => '0'
    );
\m_header_data_dst_ip_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg[1]\(19),
      Q => m_header_data_dst_ip(19),
      R => '0'
    );
\m_header_data_dst_ip_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg[1]\(1),
      Q => m_header_data_dst_ip(1),
      R => '0'
    );
\m_header_data_dst_ip_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg[1]\(20),
      Q => m_header_data_dst_ip(20),
      R => '0'
    );
\m_header_data_dst_ip_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg[1]\(21),
      Q => m_header_data_dst_ip(21),
      R => '0'
    );
\m_header_data_dst_ip_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg[1]\(22),
      Q => m_header_data_dst_ip(22),
      R => '0'
    );
\m_header_data_dst_ip_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg[1]\(23),
      Q => m_header_data_dst_ip(23),
      R => '0'
    );
\m_header_data_dst_ip_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg[1]\(24),
      Q => m_header_data_dst_ip(24),
      R => '0'
    );
\m_header_data_dst_ip_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg[1]\(25),
      Q => m_header_data_dst_ip(25),
      R => '0'
    );
\m_header_data_dst_ip_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg[1]\(26),
      Q => m_header_data_dst_ip(26),
      R => '0'
    );
\m_header_data_dst_ip_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg[1]\(27),
      Q => m_header_data_dst_ip(27),
      R => '0'
    );
\m_header_data_dst_ip_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg[1]\(28),
      Q => m_header_data_dst_ip(28),
      R => '0'
    );
\m_header_data_dst_ip_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg[1]\(29),
      Q => m_header_data_dst_ip(29),
      R => '0'
    );
\m_header_data_dst_ip_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg[1]\(2),
      Q => m_header_data_dst_ip(2),
      R => '0'
    );
\m_header_data_dst_ip_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg[1]\(30),
      Q => m_header_data_dst_ip(30),
      R => '0'
    );
\m_header_data_dst_ip_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg[1]\(31),
      Q => m_header_data_dst_ip(31),
      R => '0'
    );
\m_header_data_dst_ip_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg[1]\(3),
      Q => m_header_data_dst_ip(3),
      R => '0'
    );
\m_header_data_dst_ip_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg[1]\(4),
      Q => m_header_data_dst_ip(4),
      R => '0'
    );
\m_header_data_dst_ip_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg[1]\(5),
      Q => m_header_data_dst_ip(5),
      R => '0'
    );
\m_header_data_dst_ip_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg[1]\(6),
      Q => m_header_data_dst_ip(6),
      R => '0'
    );
\m_header_data_dst_ip_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg[1]\(7),
      Q => m_header_data_dst_ip(7),
      R => '0'
    );
\m_header_data_dst_ip_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg[1]\(8),
      Q => m_header_data_dst_ip(8),
      R => '0'
    );
\m_header_data_dst_ip_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg[1]\(9),
      Q => m_header_data_dst_ip(9),
      R => '0'
    );
\m_header_data_dst_port_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg_n_0_[2][0]\,
      Q => m_header_data_dst_port(0),
      R => '0'
    );
\m_header_data_dst_port_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg_n_0_[2][10]\,
      Q => m_header_data_dst_port(10),
      R => '0'
    );
\m_header_data_dst_port_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg_n_0_[2][11]\,
      Q => m_header_data_dst_port(11),
      R => '0'
    );
\m_header_data_dst_port_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg_n_0_[2][12]\,
      Q => m_header_data_dst_port(12),
      R => '0'
    );
\m_header_data_dst_port_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg_n_0_[2][13]\,
      Q => m_header_data_dst_port(13),
      R => '0'
    );
\m_header_data_dst_port_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg_n_0_[2][14]\,
      Q => m_header_data_dst_port(14),
      R => '0'
    );
\m_header_data_dst_port_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg_n_0_[2][15]\,
      Q => m_header_data_dst_port(15),
      R => '0'
    );
\m_header_data_dst_port_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg_n_0_[2][1]\,
      Q => m_header_data_dst_port(1),
      R => '0'
    );
\m_header_data_dst_port_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg_n_0_[2][2]\,
      Q => m_header_data_dst_port(2),
      R => '0'
    );
\m_header_data_dst_port_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg_n_0_[2][3]\,
      Q => m_header_data_dst_port(3),
      R => '0'
    );
\m_header_data_dst_port_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg_n_0_[2][4]\,
      Q => m_header_data_dst_port(4),
      R => '0'
    );
\m_header_data_dst_port_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg_n_0_[2][5]\,
      Q => m_header_data_dst_port(5),
      R => '0'
    );
\m_header_data_dst_port_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg_n_0_[2][6]\,
      Q => m_header_data_dst_port(6),
      R => '0'
    );
\m_header_data_dst_port_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg_n_0_[2][7]\,
      Q => m_header_data_dst_port(7),
      R => '0'
    );
\m_header_data_dst_port_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg_n_0_[2][8]\,
      Q => m_header_data_dst_port(8),
      R => '0'
    );
\m_header_data_dst_port_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg_n_0_[2][9]\,
      Q => m_header_data_dst_port(9),
      R => '0'
    );
\m_header_data_protocol_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => s_axis_tdata(0),
      Q => m_header_data_protocol(0),
      R => '0'
    );
\m_header_data_protocol_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => s_axis_tdata(1),
      Q => m_header_data_protocol(1),
      R => '0'
    );
\m_header_data_protocol_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => s_axis_tdata(2),
      Q => m_header_data_protocol(2),
      R => '0'
    );
\m_header_data_protocol_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => s_axis_tdata(3),
      Q => m_header_data_protocol(3),
      R => '0'
    );
\m_header_data_protocol_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => s_axis_tdata(4),
      Q => m_header_data_protocol(4),
      R => '0'
    );
\m_header_data_protocol_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => s_axis_tdata(5),
      Q => m_header_data_protocol(5),
      R => '0'
    );
\m_header_data_protocol_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => s_axis_tdata(6),
      Q => m_header_data_protocol(6),
      R => '0'
    );
\m_header_data_protocol_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => s_axis_tdata(7),
      Q => m_header_data_protocol(7),
      R => '0'
    );
\m_header_data_src_ip[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000510000000000"
    )
        port map (
      I0 => current_state_reg(0),
      I1 => current_state_reg(1),
      I2 => m_header_data_end,
      I3 => rst,
      I4 => s_axis_tready_i_4_n_0,
      I5 => s_axis_tready_i_3_n_0,
      O => \m_header_data_src_ip[31]_i_1_n_0\
    );
\m_header_data_src_ip_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg[0]\(0),
      Q => m_header_data_src_ip(0),
      R => '0'
    );
\m_header_data_src_ip_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg[0]\(10),
      Q => m_header_data_src_ip(10),
      R => '0'
    );
\m_header_data_src_ip_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg[0]\(11),
      Q => m_header_data_src_ip(11),
      R => '0'
    );
\m_header_data_src_ip_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg[0]\(12),
      Q => m_header_data_src_ip(12),
      R => '0'
    );
\m_header_data_src_ip_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg[0]\(13),
      Q => m_header_data_src_ip(13),
      R => '0'
    );
\m_header_data_src_ip_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg[0]\(14),
      Q => m_header_data_src_ip(14),
      R => '0'
    );
\m_header_data_src_ip_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg[0]\(15),
      Q => m_header_data_src_ip(15),
      R => '0'
    );
\m_header_data_src_ip_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg[0]\(16),
      Q => m_header_data_src_ip(16),
      R => '0'
    );
\m_header_data_src_ip_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg[0]\(17),
      Q => m_header_data_src_ip(17),
      R => '0'
    );
\m_header_data_src_ip_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg[0]\(18),
      Q => m_header_data_src_ip(18),
      R => '0'
    );
\m_header_data_src_ip_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg[0]\(19),
      Q => m_header_data_src_ip(19),
      R => '0'
    );
\m_header_data_src_ip_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg[0]\(1),
      Q => m_header_data_src_ip(1),
      R => '0'
    );
\m_header_data_src_ip_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg[0]\(20),
      Q => m_header_data_src_ip(20),
      R => '0'
    );
\m_header_data_src_ip_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg[0]\(21),
      Q => m_header_data_src_ip(21),
      R => '0'
    );
\m_header_data_src_ip_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg[0]\(22),
      Q => m_header_data_src_ip(22),
      R => '0'
    );
\m_header_data_src_ip_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg[0]\(23),
      Q => m_header_data_src_ip(23),
      R => '0'
    );
\m_header_data_src_ip_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg[0]\(24),
      Q => m_header_data_src_ip(24),
      R => '0'
    );
\m_header_data_src_ip_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg[0]\(25),
      Q => m_header_data_src_ip(25),
      R => '0'
    );
\m_header_data_src_ip_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg[0]\(26),
      Q => m_header_data_src_ip(26),
      R => '0'
    );
\m_header_data_src_ip_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg[0]\(27),
      Q => m_header_data_src_ip(27),
      R => '0'
    );
\m_header_data_src_ip_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg[0]\(28),
      Q => m_header_data_src_ip(28),
      R => '0'
    );
\m_header_data_src_ip_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg[0]\(29),
      Q => m_header_data_src_ip(29),
      R => '0'
    );
\m_header_data_src_ip_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg[0]\(2),
      Q => m_header_data_src_ip(2),
      R => '0'
    );
\m_header_data_src_ip_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg[0]\(30),
      Q => m_header_data_src_ip(30),
      R => '0'
    );
\m_header_data_src_ip_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg[0]\(31),
      Q => m_header_data_src_ip(31),
      R => '0'
    );
\m_header_data_src_ip_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg[0]\(3),
      Q => m_header_data_src_ip(3),
      R => '0'
    );
\m_header_data_src_ip_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg[0]\(4),
      Q => m_header_data_src_ip(4),
      R => '0'
    );
\m_header_data_src_ip_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg[0]\(5),
      Q => m_header_data_src_ip(5),
      R => '0'
    );
\m_header_data_src_ip_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg[0]\(6),
      Q => m_header_data_src_ip(6),
      R => '0'
    );
\m_header_data_src_ip_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg[0]\(7),
      Q => m_header_data_src_ip(7),
      R => '0'
    );
\m_header_data_src_ip_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg[0]\(8),
      Q => m_header_data_src_ip(8),
      R => '0'
    );
\m_header_data_src_ip_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => \Buffer_reg[0]\(9),
      Q => m_header_data_src_ip(9),
      R => '0'
    );
\m_header_data_src_port_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => p_0_in(0),
      Q => m_header_data_src_port(0),
      R => '0'
    );
\m_header_data_src_port_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => p_0_in(10),
      Q => m_header_data_src_port(10),
      R => '0'
    );
\m_header_data_src_port_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => p_0_in(11),
      Q => m_header_data_src_port(11),
      R => '0'
    );
\m_header_data_src_port_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => p_0_in(12),
      Q => m_header_data_src_port(12),
      R => '0'
    );
\m_header_data_src_port_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => p_0_in(13),
      Q => m_header_data_src_port(13),
      R => '0'
    );
\m_header_data_src_port_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => p_0_in(14),
      Q => m_header_data_src_port(14),
      R => '0'
    );
\m_header_data_src_port_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => p_0_in(15),
      Q => m_header_data_src_port(15),
      R => '0'
    );
\m_header_data_src_port_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => p_0_in(1),
      Q => m_header_data_src_port(1),
      R => '0'
    );
\m_header_data_src_port_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => p_0_in(2),
      Q => m_header_data_src_port(2),
      R => '0'
    );
\m_header_data_src_port_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => p_0_in(3),
      Q => m_header_data_src_port(3),
      R => '0'
    );
\m_header_data_src_port_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => p_0_in(4),
      Q => m_header_data_src_port(4),
      R => '0'
    );
\m_header_data_src_port_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => p_0_in(5),
      Q => m_header_data_src_port(5),
      R => '0'
    );
\m_header_data_src_port_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => p_0_in(6),
      Q => m_header_data_src_port(6),
      R => '0'
    );
\m_header_data_src_port_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => p_0_in(7),
      Q => m_header_data_src_port(7),
      R => '0'
    );
\m_header_data_src_port_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => p_0_in(8),
      Q => m_header_data_src_port(8),
      R => '0'
    );
\m_header_data_src_port_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_header_data_src_ip[31]_i_1_n_0\,
      D => p_0_in(9),
      Q => m_header_data_src_port(9),
      R => '0'
    );
m_header_data_start_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB28"
    )
        port map (
      I0 => m_header_data_start_i_2_n_0,
      I1 => \FSM_onehot_current_state[1]_i_1_n_0\,
      I2 => \FSM_onehot_current_state[2]_i_1_n_0\,
      I3 => \^m_header_data_start\,
      O => m_header_data_start_i_1_n_0
    );
m_header_data_start_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000DFFF5555"
    )
        port map (
      I0 => current_state_reg(1),
      I1 => s_axis_tready_i_3_n_0,
      I2 => s_axis_tvalid,
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I4 => m_header_data_end,
      I5 => current_state_reg(0),
      O => m_header_data_start_i_2_n_0
    );
m_header_data_start_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => s_axis_tready_i_2_n_0,
      D => m_header_data_start_i_1_n_0,
      Q => \^m_header_data_start\
    );
\m_packet_id[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0808080800000008"
    )
        port map (
      I0 => rst,
      I1 => m_header_data_end,
      I2 => current_state_reg(0),
      I3 => s_axis_tready_i_3_n_0,
      I4 => current_state_reg(1),
      I5 => s_axis_tready_i_4_n_0,
      O => \m_packet_id[13]_i_1_n_0\
    );
\m_packet_id_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_packet_id[13]_i_1_n_0\,
      D => Store_ID(0),
      Q => m_packet_id(0),
      R => '0'
    );
\m_packet_id_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_packet_id[13]_i_1_n_0\,
      D => Store_ID(10),
      Q => m_packet_id(10),
      R => '0'
    );
\m_packet_id_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_packet_id[13]_i_1_n_0\,
      D => Store_ID(11),
      Q => m_packet_id(11),
      R => '0'
    );
\m_packet_id_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_packet_id[13]_i_1_n_0\,
      D => Store_ID(12),
      Q => m_packet_id(12),
      R => '0'
    );
\m_packet_id_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_packet_id[13]_i_1_n_0\,
      D => Store_ID(13),
      Q => m_packet_id(13),
      R => '0'
    );
\m_packet_id_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_packet_id[13]_i_1_n_0\,
      D => Store_ID(1),
      Q => m_packet_id(1),
      R => '0'
    );
\m_packet_id_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_packet_id[13]_i_1_n_0\,
      D => Store_ID(2),
      Q => m_packet_id(2),
      R => '0'
    );
\m_packet_id_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_packet_id[13]_i_1_n_0\,
      D => Store_ID(3),
      Q => m_packet_id(3),
      R => '0'
    );
\m_packet_id_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_packet_id[13]_i_1_n_0\,
      D => Store_ID(4),
      Q => m_packet_id(4),
      R => '0'
    );
\m_packet_id_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_packet_id[13]_i_1_n_0\,
      D => Store_ID(5),
      Q => m_packet_id(5),
      R => '0'
    );
\m_packet_id_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_packet_id[13]_i_1_n_0\,
      D => Store_ID(6),
      Q => m_packet_id(6),
      R => '0'
    );
\m_packet_id_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_packet_id[13]_i_1_n_0\,
      D => Store_ID(7),
      Q => m_packet_id(7),
      R => '0'
    );
\m_packet_id_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_packet_id[13]_i_1_n_0\,
      D => Store_ID(8),
      Q => m_packet_id(8),
      R => '0'
    );
\m_packet_id_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_packet_id[13]_i_1_n_0\,
      D => Store_ID(9),
      Q => m_packet_id(9),
      R => '0'
    );
\m_packet_rs[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => m_header_data_response,
      I1 => m_header_data_end,
      I2 => \m_packet_rs[0]_i_2_n_0\,
      I3 => \^m_packet_rs\(0),
      O => \m_packet_rs[0]_i_1_n_0\
    );
\m_packet_rs[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0101330333033303"
    )
        port map (
      I0 => s_axis_tready_i_3_n_0,
      I1 => current_state_reg(0),
      I2 => current_state_reg(1),
      I3 => m_header_data_end,
      I4 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I5 => s_axis_tvalid,
      O => \m_packet_rs[0]_i_2_n_0\
    );
\m_packet_rs[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFCFFFE33000100"
    )
        port map (
      I0 => s_axis_tready_i_3_n_0,
      I1 => current_state_reg(0),
      I2 => current_state_reg(1),
      I3 => m_header_data_end,
      I4 => s_axis_tready_i_4_n_0,
      I5 => \^m_packet_rs\(1),
      O => \m_packet_rs[1]_i_1_n_0\
    );
\m_packet_rs_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => s_axis_tready_i_2_n_0,
      D => \m_packet_rs[0]_i_1_n_0\,
      Q => \^m_packet_rs\(0)
    );
\m_packet_rs_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => s_axis_tready_i_2_n_0,
      D => \m_packet_rs[1]_i_1_n_0\,
      Q => \^m_packet_rs\(1)
    );
s_axis_tready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF3FB0000F151"
    )
        port map (
      I0 => current_state_reg(1),
      I1 => s_axis_tready_i_3_n_0,
      I2 => s_axis_tready_i_4_n_0,
      I3 => m_header_data_end,
      I4 => current_state_reg(0),
      I5 => \^s_axis_tready\,
      O => s_axis_tready_i_1_n_0
    );
s_axis_tready_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst,
      O => s_axis_tready_i_2_n_0
    );
s_axis_tready_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAAAAA"
    )
        port map (
      I0 => s_axis_tlast,
      I1 => Buffer_Counter(2),
      I2 => Buffer_Counter(3),
      I3 => Buffer_Counter(0),
      I4 => Buffer_Counter(1),
      O => s_axis_tready_i_3_n_0
    );
s_axis_tready_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I1 => s_axis_tvalid,
      O => s_axis_tready_i_4_n_0
    );
s_axis_tready_reg: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => s_axis_tready_i_1_n_0,
      PRE => s_axis_tready_i_2_n_0,
      Q => \^s_axis_tready\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_AXI_Slave_ReciveData_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    m_header_data_src_ip : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_header_data_dst_ip : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_header_data_dst_port : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_header_data_src_port : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_header_data_protocol : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_header_data_start : out STD_LOGIC;
    m_header_data_end : in STD_LOGIC;
    m_header_data_response : in STD_LOGIC;
    m_packet_id : out STD_LOGIC_VECTOR ( 13 downto 0 );
    m_packet_rs : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_AXI_Slave_ReciveData_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_AXI_Slave_ReciveData_0_0 : entity is "design_1_AXI_Slave_ReciveData_0_0,AXI_Slave_ReciveData,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_AXI_Slave_ReciveData_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_AXI_Slave_ReciveData_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_AXI_Slave_ReciveData_0_0 : entity is "AXI_Slave_ReciveData,Vivado 2025.1";
end design_1_AXI_Slave_ReciveData_0_0;

architecture STRUCTURE of design_1_AXI_Slave_ReciveData_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF s_axis, ASSOCIATED_RESET rst, FREQ_HZ 1e+08, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_MODE of rst : signal is "slave";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_tlast : signal is "xilinx.com:interface:axis:1.0 s_axis TLAST";
  attribute X_INTERFACE_INFO of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 s_axis TREADY";
  attribute X_INTERFACE_INFO of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute X_INTERFACE_INFO of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
  attribute X_INTERFACE_MODE of s_axis_tdata : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s_axis_tdata : signal is "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 1e+08, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
begin
inst: entity work.design_1_AXI_Slave_ReciveData_0_0_AXI_Slave_ReciveData
     port map (
      clk => clk,
      m_header_data_dst_ip(31 downto 0) => m_header_data_dst_ip(31 downto 0),
      m_header_data_dst_port(15 downto 0) => m_header_data_dst_port(15 downto 0),
      m_header_data_end => m_header_data_end,
      m_header_data_protocol(7 downto 0) => m_header_data_protocol(7 downto 0),
      m_header_data_response => m_header_data_response,
      m_header_data_src_ip(31 downto 0) => m_header_data_src_ip(31 downto 0),
      m_header_data_src_port(15 downto 0) => m_header_data_src_port(15 downto 0),
      m_header_data_start => m_header_data_start,
      m_packet_id(13 downto 0) => m_packet_id(13 downto 0),
      m_packet_rs(1 downto 0) => m_packet_rs(1 downto 0),
      rst => rst,
      s_axis_tdata(31 downto 0) => s_axis_tdata(31 downto 0),
      s_axis_tlast => s_axis_tlast,
      s_axis_tready => s_axis_tready,
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
