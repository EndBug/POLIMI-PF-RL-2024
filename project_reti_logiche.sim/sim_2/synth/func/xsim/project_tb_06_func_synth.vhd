-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Sat Sep  7 23:44:56 2024
-- Host        : DESKTOP-JHOCHRE running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file {C:/Users/fgran/OneDrive - Politecnico di
--               Milano/2023-2024/Corsi/RL Reti
--               Logiche/Vivado/project_reti_logiche/project_reti_logiche.sim/sim_2/synth/func/xsim/project_tb_06_func_synth.vhd}
-- Design      : project_reti_logiche
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tfbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity project_reti_logiche is
  port (
    i_clk : in STD_LOGIC;
    i_rst : in STD_LOGIC;
    i_start : in STD_LOGIC;
    i_add : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i_k : in STD_LOGIC_VECTOR ( 9 downto 0 );
    o_done : out STD_LOGIC;
    o_mem_addr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    i_mem_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    o_mem_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_mem_we : out STD_LOGIC;
    o_mem_en : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of project_reti_logiche : entity is true;
end project_reti_logiche;

architecture STRUCTURE of project_reti_logiche is
  signal current_cred : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \current_cred[4]_i_1_n_0\ : STD_LOGIC;
  signal \current_cred[4]_i_3_n_0\ : STD_LOGIC;
  signal current_last_w : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \current_last_w[7]_i_1_n_0\ : STD_LOGIC;
  signal current_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \current_state[2]_i_10_n_0\ : STD_LOGIC;
  signal \current_state[2]_i_11_n_0\ : STD_LOGIC;
  signal \current_state[2]_i_12_n_0\ : STD_LOGIC;
  signal \current_state[2]_i_13_n_0\ : STD_LOGIC;
  signal \current_state[2]_i_4_n_0\ : STD_LOGIC;
  signal \current_state[2]_i_5_n_0\ : STD_LOGIC;
  signal \current_state[2]_i_6_n_0\ : STD_LOGIC;
  signal \current_state[2]_i_7_n_0\ : STD_LOGIC;
  signal \current_state[2]_i_8_n_0\ : STD_LOGIC;
  signal \current_state[2]_i_9_n_0\ : STD_LOGIC;
  signal \current_state_reg[2]_i_2_n_3\ : STD_LOGIC;
  signal \current_state_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \current_state_reg[2]_i_3_n_1\ : STD_LOGIC;
  signal \current_state_reg[2]_i_3_n_2\ : STD_LOGIC;
  signal \current_state_reg[2]_i_3_n_3\ : STD_LOGIC;
  signal current_w_index : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \current_w_index[5]_i_2_n_0\ : STD_LOGIC;
  signal \current_w_index[9]_i_1_n_0\ : STD_LOGIC;
  signal \current_w_index[9]_i_3_n_0\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal i_add_IBUF : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal i_clk_IBUF : STD_LOGIC;
  signal i_clk_IBUF_BUFG : STD_LOGIC;
  signal i_k_IBUF : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal i_mem_data_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal i_rst_IBUF : STD_LOGIC;
  signal i_start_IBUF : STD_LOGIC;
  signal next_cred : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal next_last_w : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal next_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal next_w_index : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal o_done_OBUF : STD_LOGIC;
  signal o_mem_addr0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal o_mem_addr_OBUF : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \o_mem_addr_OBUF[11]_inst_i_2_n_0\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[11]_inst_i_2_n_1\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[11]_inst_i_2_n_2\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[11]_inst_i_2_n_3\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[11]_inst_i_3_n_0\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[11]_inst_i_4_n_0\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[11]_inst_i_5_n_0\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[12]_inst_i_2_n_0\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[12]_inst_i_2_n_1\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[12]_inst_i_2_n_2\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[12]_inst_i_2_n_3\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[12]_inst_i_3_n_0\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[12]_inst_i_4_n_0\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[15]_inst_i_2_n_2\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[15]_inst_i_2_n_3\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[15]_inst_i_3_n_0\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[15]_inst_i_4_n_1\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[15]_inst_i_4_n_2\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[15]_inst_i_4_n_3\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[15]_inst_i_5_n_0\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[15]_inst_i_6_n_0\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[15]_inst_i_7_n_0\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[3]_inst_i_2_n_0\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[3]_inst_i_2_n_1\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[3]_inst_i_2_n_2\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[3]_inst_i_2_n_3\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[3]_inst_i_3_n_0\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[3]_inst_i_4_n_0\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[3]_inst_i_5_n_0\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[4]_inst_i_2_n_0\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[4]_inst_i_2_n_1\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[4]_inst_i_2_n_2\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[4]_inst_i_2_n_3\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[4]_inst_i_3_n_0\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[4]_inst_i_4_n_0\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[4]_inst_i_5_n_0\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[4]_inst_i_6_n_0\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[7]_inst_i_2_n_0\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[7]_inst_i_2_n_1\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[7]_inst_i_2_n_2\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[7]_inst_i_2_n_3\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[7]_inst_i_3_n_0\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[7]_inst_i_4_n_0\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[7]_inst_i_5_n_0\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[7]_inst_i_6_n_0\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[8]_inst_i_2_n_0\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[8]_inst_i_2_n_1\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[8]_inst_i_2_n_2\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[8]_inst_i_2_n_3\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[8]_inst_i_3_n_0\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[8]_inst_i_4_n_0\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[8]_inst_i_5_n_0\ : STD_LOGIC;
  signal \o_mem_addr_OBUF[8]_inst_i_6_n_0\ : STD_LOGIC;
  signal o_mem_data_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \o_mem_data_OBUF[4]_inst_i_2_n_0\ : STD_LOGIC;
  signal \o_mem_data_OBUF[4]_inst_i_3_n_0\ : STD_LOGIC;
  signal \o_mem_data_OBUF[4]_inst_i_4_n_0\ : STD_LOGIC;
  signal \o_mem_data_OBUF[4]_inst_i_5_n_0\ : STD_LOGIC;
  signal \o_mem_data_OBUF[4]_inst_i_6_n_0\ : STD_LOGIC;
  signal \o_mem_data_OBUF[7]_inst_i_2_n_0\ : STD_LOGIC;
  signal \o_mem_data_OBUF[7]_inst_i_3_n_0\ : STD_LOGIC;
  signal o_mem_en_OBUF : STD_LOGIC;
  signal o_mem_we_OBUF : STD_LOGIC;
  signal o_mem_we_OBUF_inst_i_2_n_0 : STD_LOGIC;
  signal \NLW_current_state_reg[2]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_current_state_reg[2]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_current_state_reg[2]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_o_mem_addr_OBUF[15]_inst_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_o_mem_addr_OBUF[15]_inst_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_o_mem_addr_OBUF[15]_inst_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \current_cred[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \current_cred[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \current_cred[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \current_cred[4]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \current_last_w[5]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \current_last_w[6]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \current_last_w[7]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \current_state[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \current_state[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \current_state[2]_i_1\ : label is "soft_lutpair0";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of \current_state_reg[2]_i_2\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \current_state_reg[2]_i_3\ : label is 11;
  attribute SOFT_HLUTNM of \current_w_index[0]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \current_w_index[1]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \current_w_index[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \current_w_index[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \current_w_index[5]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \current_w_index[6]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \current_w_index[7]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \current_w_index[8]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of o_done_OBUF_inst_i_1 : label is "soft_lutpair13";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \o_mem_addr_OBUF[11]_inst_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \o_mem_addr_OBUF[12]_inst_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \o_mem_addr_OBUF[15]_inst_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \o_mem_addr_OBUF[15]_inst_i_4\ : label is 35;
  attribute SOFT_HLUTNM of \o_mem_addr_OBUF[15]_inst_i_5\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \o_mem_addr_OBUF[15]_inst_i_6\ : label is "soft_lutpair8";
  attribute ADDER_THRESHOLD of \o_mem_addr_OBUF[3]_inst_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \o_mem_addr_OBUF[4]_inst_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \o_mem_addr_OBUF[7]_inst_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \o_mem_addr_OBUF[8]_inst_i_2\ : label is 35;
  attribute SOFT_HLUTNM of \o_mem_data_OBUF[4]_inst_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \o_mem_data_OBUF[4]_inst_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \o_mem_data_OBUF[4]_inst_i_4\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \o_mem_data_OBUF[4]_inst_i_6\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \o_mem_data_OBUF[5]_inst_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \o_mem_data_OBUF[6]_inst_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \o_mem_data_OBUF[7]_inst_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \o_mem_data_OBUF[7]_inst_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \o_mem_data_OBUF[7]_inst_i_3\ : label is "soft_lutpair9";
begin
\current_cred[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => current_cred(0),
      I1 => current_state(1),
      I2 => \o_mem_data_OBUF[7]_inst_i_2_n_0\,
      O => next_cred(0)
    );
\current_cred[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAAE"
    )
        port map (
      I0 => \o_mem_data_OBUF[7]_inst_i_2_n_0\,
      I1 => current_state(1),
      I2 => current_cred(0),
      I3 => current_cred(1),
      O => next_cred(1)
    );
\current_cred[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEAAABAA"
    )
        port map (
      I0 => \o_mem_data_OBUF[7]_inst_i_2_n_0\,
      I1 => current_cred(0),
      I2 => current_cred(1),
      I3 => current_state(1),
      I4 => current_cred(2),
      O => next_cred(2)
    );
\current_cred[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEAAAAAAABAAAA"
    )
        port map (
      I0 => \o_mem_data_OBUF[7]_inst_i_2_n_0\,
      I1 => current_cred(1),
      I2 => current_cred(0),
      I3 => current_cred(2),
      I4 => current_state(1),
      I5 => current_cred(3),
      O => next_cred(3)
    );
\current_cred[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03030302"
    )
        port map (
      I0 => \o_mem_data_OBUF[7]_inst_i_3_n_0\,
      I1 => current_state(2),
      I2 => current_state(0),
      I3 => \current_cred[4]_i_3_n_0\,
      I4 => current_cred(4),
      O => \current_cred[4]_i_1_n_0\
    );
\current_cred[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EABA"
    )
        port map (
      I0 => \o_mem_data_OBUF[7]_inst_i_2_n_0\,
      I1 => \current_cred[4]_i_3_n_0\,
      I2 => current_state(1),
      I3 => current_cred(4),
      O => next_cred(4)
    );
\current_cred[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => current_cred(2),
      I1 => current_cred(0),
      I2 => current_cred(1),
      I3 => current_cred(3),
      O => \current_cred[4]_i_3_n_0\
    );
\current_cred_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \current_cred[4]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => next_cred(0),
      Q => current_cred(0)
    );
\current_cred_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \current_cred[4]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => next_cred(1),
      Q => current_cred(1)
    );
\current_cred_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \current_cred[4]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => next_cred(2),
      Q => current_cred(2)
    );
\current_cred_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \current_cred[4]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => next_cred(3),
      Q => current_cred(3)
    );
\current_cred_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \current_cred[4]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => next_cred(4),
      Q => current_cred(4)
    );
\current_last_w[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => i_mem_data_IBUF(0),
      I1 => \o_mem_data_OBUF[7]_inst_i_2_n_0\,
      I2 => \o_mem_data_OBUF[7]_inst_i_3_n_0\,
      I3 => current_last_w(0),
      O => next_last_w(0)
    );
\current_last_w[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => i_mem_data_IBUF(1),
      I1 => \o_mem_data_OBUF[7]_inst_i_2_n_0\,
      I2 => \o_mem_data_OBUF[7]_inst_i_3_n_0\,
      I3 => current_last_w(1),
      O => next_last_w(1)
    );
\current_last_w[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => i_mem_data_IBUF(2),
      I1 => \o_mem_data_OBUF[7]_inst_i_2_n_0\,
      I2 => \o_mem_data_OBUF[7]_inst_i_3_n_0\,
      I3 => current_last_w(2),
      O => next_last_w(2)
    );
\current_last_w[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => i_mem_data_IBUF(3),
      I1 => \o_mem_data_OBUF[7]_inst_i_2_n_0\,
      I2 => \o_mem_data_OBUF[7]_inst_i_3_n_0\,
      I3 => current_last_w(3),
      O => next_last_w(3)
    );
\current_last_w[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => i_mem_data_IBUF(4),
      I1 => \o_mem_data_OBUF[7]_inst_i_2_n_0\,
      I2 => \o_mem_data_OBUF[7]_inst_i_3_n_0\,
      I3 => current_last_w(4),
      O => next_last_w(4)
    );
\current_last_w[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => i_mem_data_IBUF(5),
      I1 => \o_mem_data_OBUF[7]_inst_i_2_n_0\,
      I2 => \o_mem_data_OBUF[7]_inst_i_3_n_0\,
      I3 => current_last_w(5),
      O => next_last_w(5)
    );
\current_last_w[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => i_mem_data_IBUF(6),
      I1 => \o_mem_data_OBUF[7]_inst_i_2_n_0\,
      I2 => \o_mem_data_OBUF[7]_inst_i_3_n_0\,
      I3 => current_last_w(6),
      O => next_last_w(6)
    );
\current_last_w[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      O => \current_last_w[7]_i_1_n_0\
    );
\current_last_w[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => i_mem_data_IBUF(7),
      I1 => \o_mem_data_OBUF[7]_inst_i_2_n_0\,
      I2 => \o_mem_data_OBUF[7]_inst_i_3_n_0\,
      I3 => current_last_w(7),
      O => next_last_w(7)
    );
\current_last_w_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \current_last_w[7]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => next_last_w(0),
      Q => current_last_w(0)
    );
\current_last_w_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \current_last_w[7]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => next_last_w(1),
      Q => current_last_w(1)
    );
\current_last_w_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \current_last_w[7]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => next_last_w(2),
      Q => current_last_w(2)
    );
\current_last_w_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \current_last_w[7]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => next_last_w(3),
      Q => current_last_w(3)
    );
\current_last_w_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \current_last_w[7]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => next_last_w(4),
      Q => current_last_w(4)
    );
\current_last_w_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \current_last_w[7]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => next_last_w(5),
      Q => current_last_w(5)
    );
\current_last_w_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \current_last_w[7]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => next_last_w(6),
      Q => current_last_w(6)
    );
\current_last_w_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \current_last_w[7]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => next_last_w(7),
      Q => current_last_w(7)
    );
\current_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C0FE"
    )
        port map (
      I0 => current_state(1),
      I1 => i_start_IBUF,
      I2 => current_state(2),
      I3 => current_state(0),
      O => next_state(0)
    );
\current_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => current_state(1),
      I1 => current_state(0),
      I2 => current_state(2),
      O => next_state(1)
    );
\current_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F1C1C0C0"
    )
        port map (
      I0 => \current_state_reg[2]_i_2_n_3\,
      I1 => current_state(1),
      I2 => current_state(0),
      I3 => i_start_IBUF,
      I4 => current_state(2),
      O => next_state(2)
    );
\current_state[2]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => current_w_index(7),
      I1 => i_k_IBUF(7),
      I2 => current_w_index(6),
      I3 => i_k_IBUF(6),
      O => \current_state[2]_i_10_n_0\
    );
\current_state[2]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => current_w_index(5),
      I1 => i_k_IBUF(5),
      I2 => current_w_index(4),
      I3 => i_k_IBUF(4),
      O => \current_state[2]_i_11_n_0\
    );
\current_state[2]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => current_w_index(3),
      I1 => i_k_IBUF(3),
      I2 => current_w_index(2),
      I3 => i_k_IBUF(2),
      O => \current_state[2]_i_12_n_0\
    );
\current_state[2]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8421"
    )
        port map (
      I0 => current_w_index(0),
      I1 => current_w_index(1),
      I2 => i_k_IBUF(0),
      I3 => i_k_IBUF(1),
      O => \current_state[2]_i_13_n_0\
    );
\current_state[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => i_k_IBUF(9),
      I1 => current_w_index(9),
      I2 => i_k_IBUF(8),
      I3 => current_w_index(8),
      O => \current_state[2]_i_4_n_0\
    );
\current_state[2]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => current_w_index(9),
      I1 => i_k_IBUF(9),
      I2 => current_w_index(8),
      I3 => i_k_IBUF(8),
      O => \current_state[2]_i_5_n_0\
    );
\current_state[2]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => i_k_IBUF(7),
      I1 => current_w_index(7),
      I2 => i_k_IBUF(6),
      I3 => current_w_index(6),
      O => \current_state[2]_i_6_n_0\
    );
\current_state[2]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => i_k_IBUF(5),
      I1 => current_w_index(5),
      I2 => i_k_IBUF(4),
      I3 => current_w_index(4),
      O => \current_state[2]_i_7_n_0\
    );
\current_state[2]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => i_k_IBUF(3),
      I1 => current_w_index(3),
      I2 => i_k_IBUF(2),
      I3 => current_w_index(2),
      O => \current_state[2]_i_8_n_0\
    );
\current_state[2]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => i_k_IBUF(1),
      I1 => current_w_index(1),
      I2 => i_k_IBUF(0),
      I3 => current_w_index(0),
      O => \current_state[2]_i_9_n_0\
    );
\current_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      CLR => i_rst_IBUF,
      D => next_state(0),
      Q => current_state(0)
    );
\current_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      CLR => i_rst_IBUF,
      D => next_state(1),
      Q => current_state(1)
    );
\current_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      CLR => i_rst_IBUF,
      D => next_state(2),
      Q => current_state(2)
    );
\current_state_reg[2]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \current_state_reg[2]_i_3_n_0\,
      CO(3 downto 1) => \NLW_current_state_reg[2]_i_2_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \current_state_reg[2]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \current_state[2]_i_4_n_0\,
      O(3 downto 0) => \NLW_current_state_reg[2]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \current_state[2]_i_5_n_0\
    );
\current_state_reg[2]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \current_state_reg[2]_i_3_n_0\,
      CO(2) => \current_state_reg[2]_i_3_n_1\,
      CO(1) => \current_state_reg[2]_i_3_n_2\,
      CO(0) => \current_state_reg[2]_i_3_n_3\,
      CYINIT => '0',
      DI(3) => \current_state[2]_i_6_n_0\,
      DI(2) => \current_state[2]_i_7_n_0\,
      DI(1) => \current_state[2]_i_8_n_0\,
      DI(0) => \current_state[2]_i_9_n_0\,
      O(3 downto 0) => \NLW_current_state_reg[2]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => \current_state[2]_i_10_n_0\,
      S(2) => \current_state[2]_i_11_n_0\,
      S(1) => \current_state[2]_i_12_n_0\,
      S(0) => \current_state[2]_i_13_n_0\
    );
\current_w_index[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_state(2),
      I1 => current_w_index(0),
      O => next_w_index(0)
    );
\current_w_index[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => current_w_index(0),
      I1 => current_state(2),
      I2 => current_w_index(1),
      O => next_w_index(1)
    );
\current_w_index[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7080"
    )
        port map (
      I0 => current_w_index(0),
      I1 => current_w_index(1),
      I2 => current_state(2),
      I3 => current_w_index(2),
      O => next_w_index(2)
    );
\current_w_index[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F008000"
    )
        port map (
      I0 => current_w_index(1),
      I1 => current_w_index(0),
      I2 => current_w_index(2),
      I3 => current_state(2),
      I4 => current_w_index(3),
      O => next_w_index(3)
    );
\current_w_index[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF000080000000"
    )
        port map (
      I0 => current_w_index(2),
      I1 => current_w_index(0),
      I2 => current_w_index(1),
      I3 => current_w_index(3),
      I4 => current_state(2),
      I5 => current_w_index(4),
      O => next_w_index(4)
    );
\current_w_index[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FF000008000000"
    )
        port map (
      I0 => current_w_index(4),
      I1 => current_w_index(3),
      I2 => \current_w_index[5]_i_2_n_0\,
      I3 => current_w_index(2),
      I4 => current_state(2),
      I5 => current_w_index(5),
      O => next_w_index(5)
    );
\current_w_index[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => current_w_index(0),
      I1 => current_w_index(1),
      O => \current_w_index[5]_i_2_n_0\
    );
\current_w_index[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"84"
    )
        port map (
      I0 => \current_w_index[9]_i_3_n_0\,
      I1 => current_state(2),
      I2 => current_w_index(6),
      O => next_w_index(6)
    );
\current_w_index[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D020"
    )
        port map (
      I0 => current_w_index(6),
      I1 => \current_w_index[9]_i_3_n_0\,
      I2 => current_state(2),
      I3 => current_w_index(7),
      O => next_w_index(7)
    );
\current_w_index[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BF004000"
    )
        port map (
      I0 => \current_w_index[9]_i_3_n_0\,
      I1 => current_w_index(6),
      I2 => current_w_index(7),
      I3 => current_state(2),
      I4 => current_w_index(8),
      O => next_w_index(8)
    );
\current_w_index[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => current_state(1),
      I1 => current_state(0),
      O => \current_w_index[9]_i_1_n_0\
    );
\current_w_index[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FF000008000000"
    )
        port map (
      I0 => current_w_index(7),
      I1 => current_w_index(6),
      I2 => \current_w_index[9]_i_3_n_0\,
      I3 => current_w_index(8),
      I4 => current_state(2),
      I5 => current_w_index(9),
      O => next_w_index(9)
    );
\current_w_index[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => current_w_index(2),
      I1 => current_w_index(0),
      I2 => current_w_index(1),
      I3 => current_w_index(3),
      I4 => current_w_index(4),
      I5 => current_w_index(5),
      O => \current_w_index[9]_i_3_n_0\
    );
\current_w_index_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \current_w_index[9]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => next_w_index(0),
      Q => current_w_index(0)
    );
\current_w_index_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \current_w_index[9]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => next_w_index(1),
      Q => current_w_index(1)
    );
\current_w_index_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \current_w_index[9]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => next_w_index(2),
      Q => current_w_index(2)
    );
\current_w_index_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \current_w_index[9]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => next_w_index(3),
      Q => current_w_index(3)
    );
\current_w_index_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \current_w_index[9]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => next_w_index(4),
      Q => current_w_index(4)
    );
\current_w_index_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \current_w_index[9]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => next_w_index(5),
      Q => current_w_index(5)
    );
\current_w_index_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \current_w_index[9]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => next_w_index(6),
      Q => current_w_index(6)
    );
\current_w_index_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \current_w_index[9]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => next_w_index(7),
      Q => current_w_index(7)
    );
\current_w_index_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \current_w_index[9]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => next_w_index(8),
      Q => current_w_index(8)
    );
\current_w_index_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \current_w_index[9]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => next_w_index(9),
      Q => current_w_index(9)
    );
\i_add_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_add(0),
      O => i_add_IBUF(0)
    );
\i_add_IBUF[10]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_add(10),
      O => i_add_IBUF(10)
    );
\i_add_IBUF[11]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_add(11),
      O => i_add_IBUF(11)
    );
\i_add_IBUF[12]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_add(12),
      O => i_add_IBUF(12)
    );
\i_add_IBUF[13]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_add(13),
      O => i_add_IBUF(13)
    );
\i_add_IBUF[14]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_add(14),
      O => i_add_IBUF(14)
    );
\i_add_IBUF[15]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_add(15),
      O => i_add_IBUF(15)
    );
\i_add_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_add(1),
      O => i_add_IBUF(1)
    );
\i_add_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_add(2),
      O => i_add_IBUF(2)
    );
\i_add_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_add(3),
      O => i_add_IBUF(3)
    );
\i_add_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_add(4),
      O => i_add_IBUF(4)
    );
\i_add_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_add(5),
      O => i_add_IBUF(5)
    );
\i_add_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_add(6),
      O => i_add_IBUF(6)
    );
\i_add_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_add(7),
      O => i_add_IBUF(7)
    );
\i_add_IBUF[8]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_add(8),
      O => i_add_IBUF(8)
    );
\i_add_IBUF[9]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_add(9),
      O => i_add_IBUF(9)
    );
i_clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => i_clk_IBUF,
      O => i_clk_IBUF_BUFG
    );
i_clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => i_clk,
      O => i_clk_IBUF
    );
\i_k_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_k(0),
      O => i_k_IBUF(0)
    );
\i_k_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_k(1),
      O => i_k_IBUF(1)
    );
\i_k_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_k(2),
      O => i_k_IBUF(2)
    );
\i_k_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_k(3),
      O => i_k_IBUF(3)
    );
\i_k_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_k(4),
      O => i_k_IBUF(4)
    );
\i_k_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_k(5),
      O => i_k_IBUF(5)
    );
\i_k_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_k(6),
      O => i_k_IBUF(6)
    );
\i_k_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_k(7),
      O => i_k_IBUF(7)
    );
\i_k_IBUF[8]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_k(8),
      O => i_k_IBUF(8)
    );
\i_k_IBUF[9]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_k(9),
      O => i_k_IBUF(9)
    );
\i_mem_data_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_mem_data(0),
      O => i_mem_data_IBUF(0)
    );
\i_mem_data_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_mem_data(1),
      O => i_mem_data_IBUF(1)
    );
\i_mem_data_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_mem_data(2),
      O => i_mem_data_IBUF(2)
    );
\i_mem_data_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_mem_data(3),
      O => i_mem_data_IBUF(3)
    );
\i_mem_data_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_mem_data(4),
      O => i_mem_data_IBUF(4)
    );
\i_mem_data_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_mem_data(5),
      O => i_mem_data_IBUF(5)
    );
\i_mem_data_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_mem_data(6),
      O => i_mem_data_IBUF(6)
    );
\i_mem_data_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_mem_data(7),
      O => i_mem_data_IBUF(7)
    );
i_rst_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => i_rst,
      O => i_rst_IBUF
    );
i_start_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => i_start,
      O => i_start_IBUF
    );
o_done_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => o_done_OBUF,
      O => o_done
    );
o_done_OBUF_inst_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      O => o_done_OBUF
    );
\o_mem_addr_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(0),
      O => o_mem_addr(0)
    );
\o_mem_addr_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444F4F444F44444"
    )
        port map (
      I0 => i_add_IBUF(0),
      I1 => \o_mem_addr_OBUF[15]_inst_i_3_n_0\,
      I2 => o_mem_addr0(0),
      I3 => current_state(2),
      I4 => current_state(0),
      I5 => current_state(1),
      O => o_mem_addr_OBUF(0)
    );
\o_mem_addr_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(10),
      O => o_mem_addr(10)
    );
\o_mem_addr_OBUF[10]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888F8F888F88888"
    )
        port map (
      I0 => data0(10),
      I1 => \o_mem_addr_OBUF[15]_inst_i_3_n_0\,
      I2 => o_mem_addr0(10),
      I3 => current_state(2),
      I4 => current_state(0),
      I5 => current_state(1),
      O => o_mem_addr_OBUF(10)
    );
\o_mem_addr_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(11),
      O => o_mem_addr(11)
    );
\o_mem_addr_OBUF[11]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888F8F888F88888"
    )
        port map (
      I0 => data0(11),
      I1 => \o_mem_addr_OBUF[15]_inst_i_3_n_0\,
      I2 => o_mem_addr0(11),
      I3 => current_state(2),
      I4 => current_state(0),
      I5 => current_state(1),
      O => o_mem_addr_OBUF(11)
    );
\o_mem_addr_OBUF[11]_inst_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_mem_addr_OBUF[7]_inst_i_2_n_0\,
      CO(3) => \o_mem_addr_OBUF[11]_inst_i_2_n_0\,
      CO(2) => \o_mem_addr_OBUF[11]_inst_i_2_n_1\,
      CO(1) => \o_mem_addr_OBUF[11]_inst_i_2_n_2\,
      CO(0) => \o_mem_addr_OBUF[11]_inst_i_2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => current_w_index(9 downto 7),
      O(3 downto 0) => o_mem_addr0(11 downto 8),
      S(3) => i_add_IBUF(11),
      S(2) => \o_mem_addr_OBUF[11]_inst_i_3_n_0\,
      S(1) => \o_mem_addr_OBUF[11]_inst_i_4_n_0\,
      S(0) => \o_mem_addr_OBUF[11]_inst_i_5_n_0\
    );
\o_mem_addr_OBUF[11]_inst_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => current_w_index(9),
      I1 => i_add_IBUF(10),
      O => \o_mem_addr_OBUF[11]_inst_i_3_n_0\
    );
\o_mem_addr_OBUF[11]_inst_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => current_w_index(8),
      I1 => i_add_IBUF(9),
      O => \o_mem_addr_OBUF[11]_inst_i_4_n_0\
    );
\o_mem_addr_OBUF[11]_inst_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => current_w_index(7),
      I1 => i_add_IBUF(8),
      O => \o_mem_addr_OBUF[11]_inst_i_5_n_0\
    );
\o_mem_addr_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(12),
      O => o_mem_addr(12)
    );
\o_mem_addr_OBUF[12]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888F8F888F88888"
    )
        port map (
      I0 => data0(12),
      I1 => \o_mem_addr_OBUF[15]_inst_i_3_n_0\,
      I2 => o_mem_addr0(12),
      I3 => current_state(2),
      I4 => current_state(0),
      I5 => current_state(1),
      O => o_mem_addr_OBUF(12)
    );
\o_mem_addr_OBUF[12]_inst_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_mem_addr_OBUF[8]_inst_i_2_n_0\,
      CO(3) => \o_mem_addr_OBUF[12]_inst_i_2_n_0\,
      CO(2) => \o_mem_addr_OBUF[12]_inst_i_2_n_1\,
      CO(1) => \o_mem_addr_OBUF[12]_inst_i_2_n_2\,
      CO(0) => \o_mem_addr_OBUF[12]_inst_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => i_add_IBUF(10 downto 9),
      O(3 downto 0) => data0(12 downto 9),
      S(3 downto 2) => i_add_IBUF(12 downto 11),
      S(1) => \o_mem_addr_OBUF[12]_inst_i_3_n_0\,
      S(0) => \o_mem_addr_OBUF[12]_inst_i_4_n_0\
    );
\o_mem_addr_OBUF[12]_inst_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i_add_IBUF(10),
      I1 => current_w_index(9),
      O => \o_mem_addr_OBUF[12]_inst_i_3_n_0\
    );
\o_mem_addr_OBUF[12]_inst_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i_add_IBUF(9),
      I1 => current_w_index(8),
      O => \o_mem_addr_OBUF[12]_inst_i_4_n_0\
    );
\o_mem_addr_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(13),
      O => o_mem_addr(13)
    );
\o_mem_addr_OBUF[13]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888F8F888F88888"
    )
        port map (
      I0 => data0(13),
      I1 => \o_mem_addr_OBUF[15]_inst_i_3_n_0\,
      I2 => o_mem_addr0(13),
      I3 => current_state(2),
      I4 => current_state(0),
      I5 => current_state(1),
      O => o_mem_addr_OBUF(13)
    );
\o_mem_addr_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(14),
      O => o_mem_addr(14)
    );
\o_mem_addr_OBUF[14]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888F8F888F88888"
    )
        port map (
      I0 => data0(14),
      I1 => \o_mem_addr_OBUF[15]_inst_i_3_n_0\,
      I2 => o_mem_addr0(14),
      I3 => current_state(2),
      I4 => current_state(0),
      I5 => current_state(1),
      O => o_mem_addr_OBUF(14)
    );
\o_mem_addr_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(15),
      O => o_mem_addr(15)
    );
\o_mem_addr_OBUF[15]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888F8F888F88888"
    )
        port map (
      I0 => data0(15),
      I1 => \o_mem_addr_OBUF[15]_inst_i_3_n_0\,
      I2 => o_mem_addr0(15),
      I3 => current_state(2),
      I4 => current_state(0),
      I5 => current_state(1),
      O => o_mem_addr_OBUF(15)
    );
\o_mem_addr_OBUF[15]_inst_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_mem_addr_OBUF[12]_inst_i_2_n_0\,
      CO(3 downto 2) => \NLW_o_mem_addr_OBUF[15]_inst_i_2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \o_mem_addr_OBUF[15]_inst_i_2_n_2\,
      CO(0) => \o_mem_addr_OBUF[15]_inst_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_o_mem_addr_OBUF[15]_inst_i_2_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(15 downto 13),
      S(3) => '0',
      S(2 downto 0) => i_add_IBUF(15 downto 13)
    );
\o_mem_addr_OBUF[15]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00800080FF000000"
    )
        port map (
      I0 => \o_mem_addr_OBUF[15]_inst_i_5_n_0\,
      I1 => \o_mem_addr_OBUF[15]_inst_i_6_n_0\,
      I2 => \o_mem_addr_OBUF[15]_inst_i_7_n_0\,
      I3 => current_state(0),
      I4 => current_state(1),
      I5 => current_state(2),
      O => \o_mem_addr_OBUF[15]_inst_i_3_n_0\
    );
\o_mem_addr_OBUF[15]_inst_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_mem_addr_OBUF[11]_inst_i_2_n_0\,
      CO(3) => \NLW_o_mem_addr_OBUF[15]_inst_i_4_CO_UNCONNECTED\(3),
      CO(2) => \o_mem_addr_OBUF[15]_inst_i_4_n_1\,
      CO(1) => \o_mem_addr_OBUF[15]_inst_i_4_n_2\,
      CO(0) => \o_mem_addr_OBUF[15]_inst_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => o_mem_addr0(15 downto 12),
      S(3 downto 0) => i_add_IBUF(15 downto 12)
    );
\o_mem_addr_OBUF[15]_inst_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_mem_data_IBUF(6),
      I1 => i_mem_data_IBUF(7),
      O => \o_mem_addr_OBUF[15]_inst_i_5_n_0\
    );
\o_mem_addr_OBUF[15]_inst_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_mem_data_IBUF(4),
      I1 => i_mem_data_IBUF(5),
      O => \o_mem_addr_OBUF[15]_inst_i_6_n_0\
    );
\o_mem_addr_OBUF[15]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000100000001"
    )
        port map (
      I0 => i_mem_data_IBUF(1),
      I1 => i_mem_data_IBUF(2),
      I2 => i_mem_data_IBUF(0),
      I3 => i_mem_data_IBUF(5),
      I4 => i_mem_data_IBUF(3),
      I5 => i_mem_data_IBUF(4),
      O => \o_mem_addr_OBUF[15]_inst_i_7_n_0\
    );
\o_mem_addr_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(1),
      O => o_mem_addr(1)
    );
\o_mem_addr_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888F8F888F88888"
    )
        port map (
      I0 => data0(1),
      I1 => \o_mem_addr_OBUF[15]_inst_i_3_n_0\,
      I2 => o_mem_addr0(1),
      I3 => current_state(2),
      I4 => current_state(0),
      I5 => current_state(1),
      O => o_mem_addr_OBUF(1)
    );
\o_mem_addr_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(2),
      O => o_mem_addr(2)
    );
\o_mem_addr_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888F8F888F88888"
    )
        port map (
      I0 => data0(2),
      I1 => \o_mem_addr_OBUF[15]_inst_i_3_n_0\,
      I2 => o_mem_addr0(2),
      I3 => current_state(2),
      I4 => current_state(0),
      I5 => current_state(1),
      O => o_mem_addr_OBUF(2)
    );
\o_mem_addr_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(3),
      O => o_mem_addr(3)
    );
\o_mem_addr_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888F8F888F88888"
    )
        port map (
      I0 => data0(3),
      I1 => \o_mem_addr_OBUF[15]_inst_i_3_n_0\,
      I2 => o_mem_addr0(3),
      I3 => current_state(2),
      I4 => current_state(0),
      I5 => current_state(1),
      O => o_mem_addr_OBUF(3)
    );
\o_mem_addr_OBUF[3]_inst_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \o_mem_addr_OBUF[3]_inst_i_2_n_0\,
      CO(2) => \o_mem_addr_OBUF[3]_inst_i_2_n_1\,
      CO(1) => \o_mem_addr_OBUF[3]_inst_i_2_n_2\,
      CO(0) => \o_mem_addr_OBUF[3]_inst_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => current_w_index(2 downto 0),
      DI(0) => '0',
      O(3 downto 0) => o_mem_addr0(3 downto 0),
      S(3) => \o_mem_addr_OBUF[3]_inst_i_3_n_0\,
      S(2) => \o_mem_addr_OBUF[3]_inst_i_4_n_0\,
      S(1) => \o_mem_addr_OBUF[3]_inst_i_5_n_0\,
      S(0) => i_add_IBUF(0)
    );
\o_mem_addr_OBUF[3]_inst_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => current_w_index(2),
      I1 => i_add_IBUF(3),
      O => \o_mem_addr_OBUF[3]_inst_i_3_n_0\
    );
\o_mem_addr_OBUF[3]_inst_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => current_w_index(1),
      I1 => i_add_IBUF(2),
      O => \o_mem_addr_OBUF[3]_inst_i_4_n_0\
    );
\o_mem_addr_OBUF[3]_inst_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => current_w_index(0),
      I1 => i_add_IBUF(1),
      O => \o_mem_addr_OBUF[3]_inst_i_5_n_0\
    );
\o_mem_addr_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(4),
      O => o_mem_addr(4)
    );
\o_mem_addr_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888F8F888F88888"
    )
        port map (
      I0 => data0(4),
      I1 => \o_mem_addr_OBUF[15]_inst_i_3_n_0\,
      I2 => o_mem_addr0(4),
      I3 => current_state(2),
      I4 => current_state(0),
      I5 => current_state(1),
      O => o_mem_addr_OBUF(4)
    );
\o_mem_addr_OBUF[4]_inst_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \o_mem_addr_OBUF[4]_inst_i_2_n_0\,
      CO(2) => \o_mem_addr_OBUF[4]_inst_i_2_n_1\,
      CO(1) => \o_mem_addr_OBUF[4]_inst_i_2_n_2\,
      CO(0) => \o_mem_addr_OBUF[4]_inst_i_2_n_3\,
      CYINIT => i_add_IBUF(0),
      DI(3 downto 0) => i_add_IBUF(4 downto 1),
      O(3 downto 0) => data0(4 downto 1),
      S(3) => \o_mem_addr_OBUF[4]_inst_i_3_n_0\,
      S(2) => \o_mem_addr_OBUF[4]_inst_i_4_n_0\,
      S(1) => \o_mem_addr_OBUF[4]_inst_i_5_n_0\,
      S(0) => \o_mem_addr_OBUF[4]_inst_i_6_n_0\
    );
\o_mem_addr_OBUF[4]_inst_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i_add_IBUF(4),
      I1 => current_w_index(3),
      O => \o_mem_addr_OBUF[4]_inst_i_3_n_0\
    );
\o_mem_addr_OBUF[4]_inst_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i_add_IBUF(3),
      I1 => current_w_index(2),
      O => \o_mem_addr_OBUF[4]_inst_i_4_n_0\
    );
\o_mem_addr_OBUF[4]_inst_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i_add_IBUF(2),
      I1 => current_w_index(1),
      O => \o_mem_addr_OBUF[4]_inst_i_5_n_0\
    );
\o_mem_addr_OBUF[4]_inst_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i_add_IBUF(1),
      I1 => current_w_index(0),
      O => \o_mem_addr_OBUF[4]_inst_i_6_n_0\
    );
\o_mem_addr_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(5),
      O => o_mem_addr(5)
    );
\o_mem_addr_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888F8F888F88888"
    )
        port map (
      I0 => data0(5),
      I1 => \o_mem_addr_OBUF[15]_inst_i_3_n_0\,
      I2 => o_mem_addr0(5),
      I3 => current_state(2),
      I4 => current_state(0),
      I5 => current_state(1),
      O => o_mem_addr_OBUF(5)
    );
\o_mem_addr_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(6),
      O => o_mem_addr(6)
    );
\o_mem_addr_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888F8F888F88888"
    )
        port map (
      I0 => data0(6),
      I1 => \o_mem_addr_OBUF[15]_inst_i_3_n_0\,
      I2 => o_mem_addr0(6),
      I3 => current_state(2),
      I4 => current_state(0),
      I5 => current_state(1),
      O => o_mem_addr_OBUF(6)
    );
\o_mem_addr_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(7),
      O => o_mem_addr(7)
    );
\o_mem_addr_OBUF[7]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888F8F888F88888"
    )
        port map (
      I0 => data0(7),
      I1 => \o_mem_addr_OBUF[15]_inst_i_3_n_0\,
      I2 => o_mem_addr0(7),
      I3 => current_state(2),
      I4 => current_state(0),
      I5 => current_state(1),
      O => o_mem_addr_OBUF(7)
    );
\o_mem_addr_OBUF[7]_inst_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_mem_addr_OBUF[3]_inst_i_2_n_0\,
      CO(3) => \o_mem_addr_OBUF[7]_inst_i_2_n_0\,
      CO(2) => \o_mem_addr_OBUF[7]_inst_i_2_n_1\,
      CO(1) => \o_mem_addr_OBUF[7]_inst_i_2_n_2\,
      CO(0) => \o_mem_addr_OBUF[7]_inst_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => current_w_index(6 downto 3),
      O(3 downto 0) => o_mem_addr0(7 downto 4),
      S(3) => \o_mem_addr_OBUF[7]_inst_i_3_n_0\,
      S(2) => \o_mem_addr_OBUF[7]_inst_i_4_n_0\,
      S(1) => \o_mem_addr_OBUF[7]_inst_i_5_n_0\,
      S(0) => \o_mem_addr_OBUF[7]_inst_i_6_n_0\
    );
\o_mem_addr_OBUF[7]_inst_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => current_w_index(6),
      I1 => i_add_IBUF(7),
      O => \o_mem_addr_OBUF[7]_inst_i_3_n_0\
    );
\o_mem_addr_OBUF[7]_inst_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => current_w_index(5),
      I1 => i_add_IBUF(6),
      O => \o_mem_addr_OBUF[7]_inst_i_4_n_0\
    );
\o_mem_addr_OBUF[7]_inst_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => current_w_index(4),
      I1 => i_add_IBUF(5),
      O => \o_mem_addr_OBUF[7]_inst_i_5_n_0\
    );
\o_mem_addr_OBUF[7]_inst_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => current_w_index(3),
      I1 => i_add_IBUF(4),
      O => \o_mem_addr_OBUF[7]_inst_i_6_n_0\
    );
\o_mem_addr_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(8),
      O => o_mem_addr(8)
    );
\o_mem_addr_OBUF[8]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888F8F888F88888"
    )
        port map (
      I0 => data0(8),
      I1 => \o_mem_addr_OBUF[15]_inst_i_3_n_0\,
      I2 => o_mem_addr0(8),
      I3 => current_state(2),
      I4 => current_state(0),
      I5 => current_state(1),
      O => o_mem_addr_OBUF(8)
    );
\o_mem_addr_OBUF[8]_inst_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_mem_addr_OBUF[4]_inst_i_2_n_0\,
      CO(3) => \o_mem_addr_OBUF[8]_inst_i_2_n_0\,
      CO(2) => \o_mem_addr_OBUF[8]_inst_i_2_n_1\,
      CO(1) => \o_mem_addr_OBUF[8]_inst_i_2_n_2\,
      CO(0) => \o_mem_addr_OBUF[8]_inst_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => i_add_IBUF(8 downto 5),
      O(3 downto 0) => data0(8 downto 5),
      S(3) => \o_mem_addr_OBUF[8]_inst_i_3_n_0\,
      S(2) => \o_mem_addr_OBUF[8]_inst_i_4_n_0\,
      S(1) => \o_mem_addr_OBUF[8]_inst_i_5_n_0\,
      S(0) => \o_mem_addr_OBUF[8]_inst_i_6_n_0\
    );
\o_mem_addr_OBUF[8]_inst_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i_add_IBUF(8),
      I1 => current_w_index(7),
      O => \o_mem_addr_OBUF[8]_inst_i_3_n_0\
    );
\o_mem_addr_OBUF[8]_inst_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i_add_IBUF(7),
      I1 => current_w_index(6),
      O => \o_mem_addr_OBUF[8]_inst_i_4_n_0\
    );
\o_mem_addr_OBUF[8]_inst_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i_add_IBUF(6),
      I1 => current_w_index(5),
      O => \o_mem_addr_OBUF[8]_inst_i_5_n_0\
    );
\o_mem_addr_OBUF[8]_inst_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i_add_IBUF(5),
      I1 => current_w_index(4),
      O => \o_mem_addr_OBUF[8]_inst_i_6_n_0\
    );
\o_mem_addr_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(9),
      O => o_mem_addr(9)
    );
\o_mem_addr_OBUF[9]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888F8F888F88888"
    )
        port map (
      I0 => data0(9),
      I1 => \o_mem_addr_OBUF[15]_inst_i_3_n_0\,
      I2 => o_mem_addr0(9),
      I3 => current_state(2),
      I4 => current_state(0),
      I5 => current_state(1),
      O => o_mem_addr_OBUF(9)
    );
\o_mem_data_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_data_OBUF(0),
      O => o_mem_data(0)
    );
\o_mem_data_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_mem_data_OBUF[4]_inst_i_2_n_0\,
      I1 => current_last_w(0),
      I2 => \o_mem_data_OBUF[4]_inst_i_3_n_0\,
      I3 => current_cred(0),
      I4 => i_mem_data_IBUF(0),
      I5 => \o_mem_data_OBUF[4]_inst_i_4_n_0\,
      O => o_mem_data_OBUF(0)
    );
\o_mem_data_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_data_OBUF(1),
      O => o_mem_data(1)
    );
\o_mem_data_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_mem_data_OBUF[4]_inst_i_2_n_0\,
      I1 => current_last_w(1),
      I2 => \o_mem_data_OBUF[4]_inst_i_3_n_0\,
      I3 => current_cred(1),
      I4 => i_mem_data_IBUF(1),
      I5 => \o_mem_data_OBUF[4]_inst_i_4_n_0\,
      O => o_mem_data_OBUF(1)
    );
\o_mem_data_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_data_OBUF(2),
      O => o_mem_data(2)
    );
\o_mem_data_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_mem_data_OBUF[4]_inst_i_2_n_0\,
      I1 => current_last_w(2),
      I2 => \o_mem_data_OBUF[4]_inst_i_3_n_0\,
      I3 => current_cred(2),
      I4 => i_mem_data_IBUF(2),
      I5 => \o_mem_data_OBUF[4]_inst_i_4_n_0\,
      O => o_mem_data_OBUF(2)
    );
\o_mem_data_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_data_OBUF(3),
      O => o_mem_data(3)
    );
\o_mem_data_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_mem_data_OBUF[4]_inst_i_2_n_0\,
      I1 => current_last_w(3),
      I2 => \o_mem_data_OBUF[4]_inst_i_3_n_0\,
      I3 => current_cred(3),
      I4 => i_mem_data_IBUF(3),
      I5 => \o_mem_data_OBUF[4]_inst_i_4_n_0\,
      O => o_mem_data_OBUF(3)
    );
\o_mem_data_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_data_OBUF(4),
      O => o_mem_data(4)
    );
\o_mem_data_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_mem_data_OBUF[4]_inst_i_2_n_0\,
      I1 => current_last_w(4),
      I2 => \o_mem_data_OBUF[4]_inst_i_3_n_0\,
      I3 => current_cred(4),
      I4 => i_mem_data_IBUF(4),
      I5 => \o_mem_data_OBUF[4]_inst_i_4_n_0\,
      O => o_mem_data_OBUF(4)
    );
\o_mem_data_OBUF[4]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => current_state(1),
      I1 => o_mem_we_OBUF_inst_i_2_n_0,
      I2 => i_mem_data_IBUF(7),
      I3 => i_mem_data_IBUF(6),
      I4 => current_state(0),
      O => \o_mem_data_OBUF[4]_inst_i_2_n_0\
    );
\o_mem_data_OBUF[4]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000000"
    )
        port map (
      I0 => i_mem_data_IBUF(5),
      I1 => i_mem_data_IBUF(3),
      I2 => i_mem_data_IBUF(4),
      I3 => \o_mem_data_OBUF[4]_inst_i_5_n_0\,
      I4 => \o_mem_data_OBUF[4]_inst_i_6_n_0\,
      O => \o_mem_data_OBUF[4]_inst_i_3_n_0\
    );
\o_mem_data_OBUF[4]_inst_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AAA8"
    )
        port map (
      I0 => current_state(1),
      I1 => o_mem_we_OBUF_inst_i_2_n_0,
      I2 => i_mem_data_IBUF(7),
      I3 => i_mem_data_IBUF(6),
      I4 => current_state(0),
      O => \o_mem_data_OBUF[4]_inst_i_4_n_0\
    );
\o_mem_data_OBUF[4]_inst_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => i_mem_data_IBUF(0),
      I1 => i_mem_data_IBUF(2),
      I2 => i_mem_data_IBUF(1),
      O => \o_mem_data_OBUF[4]_inst_i_5_n_0\
    );
\o_mem_data_OBUF[4]_inst_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => i_mem_data_IBUF(7),
      I1 => i_mem_data_IBUF(6),
      I2 => current_state(0),
      I3 => current_state(2),
      O => \o_mem_data_OBUF[4]_inst_i_6_n_0\
    );
\o_mem_data_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_data_OBUF(5),
      O => o_mem_data(5)
    );
\o_mem_data_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000088F8"
    )
        port map (
      I0 => i_mem_data_IBUF(5),
      I1 => \o_mem_data_OBUF[7]_inst_i_2_n_0\,
      I2 => current_last_w(5),
      I3 => \o_mem_data_OBUF[7]_inst_i_3_n_0\,
      I4 => current_state(0),
      O => o_mem_data_OBUF(5)
    );
\o_mem_data_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_data_OBUF(6),
      O => o_mem_data(6)
    );
\o_mem_data_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000088F8"
    )
        port map (
      I0 => i_mem_data_IBUF(6),
      I1 => \o_mem_data_OBUF[7]_inst_i_2_n_0\,
      I2 => current_last_w(6),
      I3 => \o_mem_data_OBUF[7]_inst_i_3_n_0\,
      I4 => current_state(0),
      O => o_mem_data_OBUF(6)
    );
\o_mem_data_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_data_OBUF(7),
      O => o_mem_data(7)
    );
\o_mem_data_OBUF[7]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000088F8"
    )
        port map (
      I0 => i_mem_data_IBUF(7),
      I1 => \o_mem_data_OBUF[7]_inst_i_2_n_0\,
      I2 => current_last_w(7),
      I3 => \o_mem_data_OBUF[7]_inst_i_3_n_0\,
      I4 => current_state(0),
      O => o_mem_data_OBUF(7)
    );
\o_mem_data_OBUF[7]_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => i_mem_data_IBUF(6),
      I1 => i_mem_data_IBUF(7),
      I2 => o_mem_we_OBUF_inst_i_2_n_0,
      I3 => current_state(1),
      O => \o_mem_data_OBUF[7]_inst_i_2_n_0\
    );
\o_mem_data_OBUF[7]_inst_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => i_mem_data_IBUF(6),
      I1 => i_mem_data_IBUF(7),
      I2 => o_mem_we_OBUF_inst_i_2_n_0,
      I3 => current_state(1),
      O => \o_mem_data_OBUF[7]_inst_i_3_n_0\
    );
o_mem_en_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => o_mem_en_OBUF,
      O => o_mem_en
    );
o_mem_en_OBUF_inst_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABFFFFAAAA"
    )
        port map (
      I0 => current_state(1),
      I1 => o_mem_we_OBUF_inst_i_2_n_0,
      I2 => i_mem_data_IBUF(7),
      I3 => i_mem_data_IBUF(6),
      I4 => current_state(0),
      I5 => current_state(2),
      O => o_mem_en_OBUF
    );
o_mem_we_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => o_mem_we_OBUF,
      O => o_mem_we
    );
o_mem_we_OBUF_inst_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF00000100"
    )
        port map (
      I0 => o_mem_we_OBUF_inst_i_2_n_0,
      I1 => i_mem_data_IBUF(7),
      I2 => i_mem_data_IBUF(6),
      I3 => current_state(2),
      I4 => current_state(0),
      I5 => current_state(1),
      O => o_mem_we_OBUF
    );
o_mem_we_OBUF_inst_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => i_mem_data_IBUF(5),
      I1 => i_mem_data_IBUF(3),
      I2 => i_mem_data_IBUF(1),
      I3 => i_mem_data_IBUF(2),
      I4 => i_mem_data_IBUF(0),
      I5 => i_mem_data_IBUF(4),
      O => o_mem_we_OBUF_inst_i_2_n_0
    );
end STRUCTURE;
