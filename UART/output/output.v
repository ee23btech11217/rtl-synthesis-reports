
// Generated by Cadence Genus(TM) Synthesis Solution 20.10-p001_1
// Generated on: Nov 20 2024 19:39:43 IST (Nov 20 2024 14:09:43 UTC)

// Verification Directory fv/UART 

module data_sampling(CLK, RST, S_DATA, Prescale, edge_count, Enable,
     sampled_bit);
  input CLK, RST, S_DATA, Enable;
  input [5:0] Prescale, edge_count;
  output sampled_bit;
  wire CLK, RST, S_DATA, Enable;
  wire [5:0] Prescale, edge_count;
  wire sampled_bit;
  wire [2:0] Samples;
  wire n_0, n_1, n_2, n_3, n_4, n_5, n_6, n_7;
  wire n_8, n_9, n_10, n_11, n_12, n_13, n_14, n_15;
  wire n_16, n_17, n_18, n_19, n_20, n_21, n_22, n_23;
  wire n_24, n_25, n_26, n_27, n_28, n_29, n_30, n_31;
  wire n_32, n_33, n_34, n_35, n_36, n_37, n_38, n_39;
  wire n_40, n_41, n_42, n_43, n_44, n_45, n_46;
  DFFRHQX1 sampled_bit_reg(.RN (RST), .CK (CLK), .D (n_46), .Q
       (sampled_bit));
  AND2XL g920__2398(.A (n_45), .B (Enable), .Y (n_46));
  OAI2BB1X1 g921__5107(.A0N (Samples[1]), .A1N (Samples[0]), .B0
       (n_44), .Y (n_45));
  OAI21XL g922__6260(.A0 (Samples[0]), .A1 (Samples[1]), .B0
       (Samples[2]), .Y (n_44));
  DFFRHQX1 \Samples_reg[1] (.RN (RST), .CK (CLK), .D (n_43), .Q
       (Samples[1]));
  DFFRHQX1 \Samples_reg[2] (.RN (RST), .CK (CLK), .D (n_41), .Q
       (Samples[2]));
  INVXL g1600(.A (n_42), .Y (n_43));
  AOI33XL g1601__4319(.A0 (Samples[1]), .A1 (Enable), .A2 (n_39), .B0
       (n_36), .B1 (S_DATA), .B2 (n_22), .Y (n_42));
  OAI2BB1X1 g1602__8428(.A0N (S_DATA), .A1N (n_35), .B0 (n_40), .Y
       (n_41));
  DFFRHQX1 \Samples_reg[0] (.RN (RST), .CK (CLK), .D (n_38), .Q
       (Samples[0]));
  NAND3BXL g1604__5526(.AN (n_35), .B (Samples[2]), .C (Enable), .Y
       (n_40));
  NAND2X1 g1605__6783(.A (n_36), .B (n_22), .Y (n_39));
  INVXL g1606(.A (n_37), .Y (n_38));
  AOI32X1 g1607__3680(.A0 (S_DATA), .A1 (Enable), .A2 (n_32), .B0
       (Samples[0]), .B1 (n_33), .Y (n_37));
  NOR4X1 g1608__1617(.A (edge_count[5]), .B (n_34), .C (n_20), .D
       (n_24), .Y (n_36));
  NOR4X1 g1609__2802(.A (edge_count[5]), .B (n_6), .C (n_34), .D
       (n_15), .Y (n_35));
  INVXL g1610(.A (n_34), .Y (n_33));
  NAND2BX1 g1611__1705(.AN (n_32), .B (Enable), .Y (n_34));
  NOR4X1 g1612__5122(.A (edge_count[5]), .B (n_6), .C (n_7), .D (n_31),
       .Y (n_32));
  OAI211X1 g1613__8246(.A0 (n_22), .A1 (n_25), .B0 (n_28), .C0 (n_30),
       .Y (n_31));
  NOR2X1 g1614__7098(.A (n_26), .B (n_29), .Y (n_30));
  XNOR2X1 g1615__6131(.A (edge_count[3]), .B (n_27), .Y (n_29));
  NAND2XL g1616__1881(.A (n_22), .B (n_25), .Y (n_28));
  AOI21XL g1617__5115(.A0 (n_13), .A1 (n_19), .B0 (n_25), .Y (n_27));
  XNOR2X1 g1618__7482(.A (edge_count[2]), .B (n_23), .Y (n_26));
  NOR2XL g1619__4733(.A (n_13), .B (n_19), .Y (n_25));
  OAI211X1 g1620__6161(.A0 (n_0), .A1 (n_16), .B0 (n_17), .C0 (n_21),
       .Y (n_24));
  AOI21XL g1621__9315(.A0 (n_14), .A1 (n_16), .B0 (n_18), .Y (n_23));
  XNOR2X1 g1622__9945(.A (edge_count[3]), .B (n_13), .Y (n_21));
  XNOR2X1 g1623__2883(.A (n_8), .B (n_11), .Y (n_22));
  NOR2BX1 g1624__2346(.AN (n_16), .B (edge_count[2]), .Y (n_20));
  INVXL g1625(.A (n_18), .Y (n_19));
  AOI211XL g1626__1666(.A0 (edge_count[1]), .A1 (n_9), .B0 (n_5), .C0
       (n_12), .Y (n_17));
  NOR2XL g1627__7410(.A (n_16), .B (n_14), .Y (n_18));
  OAI2BB1X1 g1628__6417(.A0N (Prescale[3]), .A1N (n_2), .B0 (n_10), .Y
       (n_16));
  NAND4XL g1629__5477(.A (n_4), .B (n_3), .C (n_7), .D (n_8), .Y
       (n_15));
  NAND2XL g1630__2398(.A (Prescale[1]), .B (n_9), .Y (n_14));
  NOR2XL g1631__5107(.A (edge_count[1]), .B (n_9), .Y (n_12));
  OAI2BB1X1 g1632__6260(.A0N (Prescale[4]), .A1N (n_10), .B0 (n_11), .Y
       (n_13));
  OR2X1 g1633__4319(.A (Prescale[4]), .B (n_10), .Y (n_11));
  OR3X1 g1634__8428(.A (Prescale[3]), .B (Prescale[2]), .C
       (Prescale[1]), .Y (n_10));
  AOI21XL g1635__5526(.A0 (Prescale[2]), .A1 (Prescale[1]), .B0 (n_1),
       .Y (n_9));
  XNOR2X1 g1636__6783(.A (edge_count[4]), .B (Prescale[5]), .Y (n_8));
  INVX1 g1637(.A (n_5), .Y (n_6));
  XNOR2X1 g1638__3680(.A (edge_count[3]), .B (Prescale[4]), .Y (n_4));
  MXI2XL g1639__1617(.A (edge_count[2]), .B (n_0), .S0 (Prescale[3]),
       .Y (n_3));
  XNOR2X1 g1640__2802(.A (edge_count[1]), .B (Prescale[2]), .Y (n_7));
  XNOR2X1 g1641__1705(.A (edge_count[0]), .B (Prescale[1]), .Y (n_5));
  INVXL g1642(.A (n_1), .Y (n_2));
  NOR2XL g1643__5122(.A (Prescale[1]), .B (Prescale[2]), .Y (n_1));
  INVX1 g1644(.A (edge_count[2]), .Y (n_0));
endmodule

module deserializer_DATA_WIDTH8(CLK, RST, sampled_bit, Enable,
     edge_count, Prescale, P_DATA);
  input CLK, RST, sampled_bit, Enable;
  input [5:0] edge_count, Prescale;
  output [7:0] P_DATA;
  wire CLK, RST, sampled_bit, Enable;
  wire [5:0] edge_count, Prescale;
  wire [7:0] P_DATA;
  wire n_0, n_1, n_2, n_3, n_4, n_5, n_6, n_7;
  wire n_8, n_9, n_10, n_11, n_12, n_13, n_14, n_15;
  wire n_16, n_17, n_18, n_19, n_20, n_21, n_22, n_23;
  wire n_24, n_25, n_26, n_27;
  DFFRHQX4 \P_DATA_reg[0] (.RN (RST), .CK (CLK), .D (n_25), .Q
       (P_DATA[0]));
  DFFRHQX4 \P_DATA_reg[1] (.RN (RST), .CK (CLK), .D (n_27), .Q
       (P_DATA[1]));
  DFFRHQX4 \P_DATA_reg[2] (.RN (RST), .CK (CLK), .D (n_26), .Q
       (P_DATA[2]));
  DFFRHQX4 \P_DATA_reg[3] (.RN (RST), .CK (CLK), .D (n_24), .Q
       (P_DATA[3]));
  DFFRHQX4 \P_DATA_reg[6] (.RN (RST), .CK (CLK), .D (n_23), .Q
       (P_DATA[6]));
  DFFRHQX4 \P_DATA_reg[5] (.RN (RST), .CK (CLK), .D (n_22), .Q
       (P_DATA[5]));
  DFFRHQX4 \P_DATA_reg[4] (.RN (RST), .CK (CLK), .D (n_21), .Q
       (P_DATA[4]));
  DFFRHQX4 \P_DATA_reg[7] (.RN (RST), .CK (CLK), .D (n_20), .Q
       (P_DATA[7]));
  MX2XL g619__8246(.A (P_DATA[2]), .B (P_DATA[1]), .S0 (n_19), .Y
       (n_27));
  MX2XL g620__7098(.A (P_DATA[3]), .B (P_DATA[2]), .S0 (n_19), .Y
       (n_26));
  MX2XL g621__6131(.A (P_DATA[1]), .B (P_DATA[0]), .S0 (n_19), .Y
       (n_25));
  MX2XL g622__1881(.A (P_DATA[4]), .B (P_DATA[3]), .S0 (n_19), .Y
       (n_24));
  MX2XL g623__5115(.A (P_DATA[7]), .B (P_DATA[6]), .S0 (n_19), .Y
       (n_23));
  MX2XL g624__7482(.A (P_DATA[6]), .B (P_DATA[5]), .S0 (n_19), .Y
       (n_22));
  MX2XL g625__4733(.A (P_DATA[5]), .B (P_DATA[4]), .S0 (n_19), .Y
       (n_21));
  MX2XL g626__6161(.A (sampled_bit), .B (P_DATA[7]), .S0 (n_19), .Y
       (n_20));
  NAND4XL g627__9315(.A (Enable), .B (n_12), .C (n_16), .D (n_18), .Y
       (n_19));
  AOI211XL g628__9945(.A0 (edge_count[5]), .A1 (n_9), .B0 (n_17), .C0
       (n_13), .Y (n_18));
  OAI211X1 g629__2883(.A0 (edge_count[1]), .A1 (n_3), .B0 (n_8), .C0
       (n_15), .Y (n_17));
  XNOR2X1 g630__2346(.A (edge_count[4]), .B (n_14), .Y (n_16));
  AOI221X1 g631__1666(.A0 (edge_count[2]), .A1 (n_10), .B0
       (edge_count[0]), .B1 (Prescale[0]), .C0 (n_11), .Y (n_15));
  OAI2BB1X1 g632__7410(.A0N (Prescale[4]), .A1N (n_6), .B0 (n_5), .Y
       (n_14));
  OAI22XL g633__6417(.A0 (edge_count[5]), .A1 (n_9), .B0
       (edge_count[0]), .B1 (Prescale[0]), .Y (n_13));
  XOR2XL g634__5477(.A (edge_count[3]), .B (n_7), .Y (n_12));
  NOR2XL g635__2398(.A (edge_count[2]), .B (n_10), .Y (n_11));
  AOI21XL g636__5107(.A0 (Prescale[2]), .A1 (n_2), .B0 (n_4), .Y
       (n_10));
  CLKXOR2X1 g637__6260(.A (Prescale[5]), .B (n_5), .Y (n_9));
  NAND2X1 g638__4319(.A (edge_count[1]), .B (n_3), .Y (n_8));
  XNOR2X1 g639__8428(.A (Prescale[3]), .B (n_4), .Y (n_7));
  NAND2BXL g640__5526(.AN (Prescale[3]), .B (n_4), .Y (n_6));
  NAND2XL g641__6783(.A (n_0), .B (n_4), .Y (n_5));
  NOR3XL g642__3680(.A (Prescale[1]), .B (Prescale[2]), .C
       (Prescale[0]), .Y (n_4));
  AOI21XL g643__1617(.A0 (Prescale[1]), .A1 (Prescale[0]), .B0 (n_1),
       .Y (n_3));
  INVXL g644(.A (n_1), .Y (n_2));
  NOR2XL g645__2802(.A (Prescale[0]), .B (Prescale[1]), .Y (n_1));
  NOR2XL g646__1705(.A (Prescale[3]), .B (Prescale[4]), .Y (n_0));
endmodule

module edge_bit_counter(CLK, RST, Enable, Prescale, bit_count,
     edge_count);
  input CLK, RST, Enable;
  input [5:0] Prescale;
  output [3:0] bit_count;
  output [5:0] edge_count;
  wire CLK, RST, Enable;
  wire [5:0] Prescale;
  wire [3:0] bit_count;
  wire [5:0] edge_count;
  wire n_0, n_1, n_2, n_3, n_4, n_5, n_6, n_7;
  wire n_8, n_9, n_10, n_11, n_12, n_13, n_14, n_15;
  wire n_16, n_17, n_18, n_19, n_20, n_21, n_22, n_23;
  wire n_24, n_25, n_26, n_27, n_28, n_29, n_30, n_31;
  wire n_32, n_33, n_34, n_35, n_36, n_37, n_38, n_39;
  wire n_40, n_41, n_42, n_43, n_44, n_45, n_46, n_47;
  wire n_48, n_49, n_50, n_51, n_52;
  DFFRHQX1 \bit_count_reg[3] (.RN (RST), .CK (CLK), .D (n_52), .Q
       (bit_count[3]));
  OAI21XL g1297__5122(.A0 (n_21), .A1 (n_39), .B0 (n_49), .Y (n_52));
  OAI31X1 g1298__8246(.A0 (bit_count[2]), .A1 (n_6), .A2 (n_39), .B0
       (n_50), .Y (n_51));
  NAND2XL g1301__7098(.A (bit_count[2]), .B (n_48), .Y (n_50));
  NAND2XL g1302__6131(.A (bit_count[3]), .B (n_48), .Y (n_49));
  SDFFRHQX1 \bit_count_reg[0] (.RN (RST), .CK (CLK), .D (n_38), .SI
       (n_36), .SE (bit_count[0]), .Q (bit_count[0]));
  DFFRHQX1 \edge_count_reg[4] (.RN (RST), .CK (CLK), .D (n_42), .Q
       (edge_count[4]));
  DFFRHQX1 \edge_count_reg[2] (.RN (RST), .CK (CLK), .D (n_43), .Q
       (edge_count[2]));
  DFFRHQX1 \edge_count_reg[3] (.RN (RST), .CK (CLK), .D (n_44), .Q
       (edge_count[3]));
  AND2XL g1308__1881(.A (n_40), .B (n_36), .Y (n_47));
  OAI22X1 g1309__5115(.A0 (n_9), .A1 (n_39), .B0 (n_1), .B1 (n_37), .Y
       (n_46));
  OAI2BB1X1 g1310__7482(.A0N (n_6), .A1N (n_38), .B0 (n_37), .Y (n_48));
  NOR2XL g1312__4733(.A (edge_count[0]), .B (n_37), .Y (n_45));
  NOR2XL g1313__6161(.A (n_29), .B (n_37), .Y (n_44));
  NOR2XL g1314__9315(.A (n_20), .B (n_37), .Y (n_43));
  NOR2XL g1315__9945(.A (n_33), .B (n_37), .Y (n_42));
  NOR2XL g1316__2883(.A (n_11), .B (n_37), .Y (n_41));
  XNOR2X1 g1317__2346(.A (edge_count[5]), .B (n_32), .Y (n_40));
  INVX1 g1318(.A (n_39), .Y (n_38));
  NAND2X1 g1319__1666(.A (Enable), .B (n_35), .Y (n_39));
  INVX1 g1320(.A (n_37), .Y (n_36));
  NAND2BX1 g1321__7410(.AN (n_35), .B (Enable), .Y (n_37));
  AOI221X1 g1322__6417(.A0 (edge_count[3]), .A1 (n_23), .B0
       (edge_count[2]), .B1 (n_14), .C0 (n_34), .Y (n_35));
  OAI221X1 g1323__5477(.A0 (n_2), .A1 (n_26), .B0 (edge_count[3]), .B1
       (n_23), .C0 (n_31), .Y (n_34));
  XNOR2X1 g1324__2398(.A (edge_count[4]), .B (n_28), .Y (n_33));
  NAND2XL g1325__5107(.A (edge_count[4]), .B (n_28), .Y (n_32));
  AOI221X1 g1326__6260(.A0 (n_2), .A1 (n_26), .B0 (n_0), .B1 (n_8), .C0
       (n_30), .Y (n_31));
  OAI211X1 g1327__4319(.A0 (edge_count[4]), .A1 (n_17), .B0 (n_27), .C0
       (n_24), .Y (n_30));
  XNOR2X1 g1328__8428(.A (edge_count[3]), .B (n_19), .Y (n_29));
  AND2XL g1329__5526(.A (edge_count[3]), .B (n_19), .Y (n_28));
  INVXL g1330(.A (n_25), .Y (n_27));
  OAI221X1 g1331__6783(.A0 (edge_count[2]), .A1 (n_14), .B0
       (Prescale[0]), .B1 (n_18), .C0 (n_22), .Y (n_25));
  XNOR2X1 g1332__3680(.A (Prescale[5]), .B (n_15), .Y (n_26));
  NAND2X1 g1333__1617(.A (edge_count[4]), .B (n_17), .Y (n_24));
  AOI21XL g1334__2802(.A0 (Prescale[3]), .A1 (n_12), .B0 (n_13), .Y
       (n_23));
  OAI21X1 g1335__1705(.A0 (edge_count[0]), .A1 (n_10), .B0
       (Prescale[0]), .Y (n_22));
  AOI21XL g1336__5122(.A0 (bit_count[3]), .A1 (n_5), .B0 (n_16), .Y
       (n_21));
  XNOR2X1 g1337__8246(.A (edge_count[2]), .B (n_7), .Y (n_20));
  AOI21X1 g1338__7098(.A0 (edge_count[1]), .A1 (Prescale[1]), .B0
       (n_4), .Y (n_18));
  AND2XL g1339__6131(.A (edge_count[2]), .B (n_7), .Y (n_19));
  NOR3XL g1340__1881(.A (bit_count[3]), .B (n_5), .C (n_6), .Y (n_16));
  OA21X1 g1341__5115(.A0 (n_3), .A1 (n_13), .B0 (n_15), .Y (n_17));
  NAND2XL g1342__7482(.A (n_3), .B (n_13), .Y (n_15));
  XNOR2X1 g1343__4733(.A (Prescale[2]), .B (n_8), .Y (n_14));
  NAND2BXL g1344__6161(.AN (Prescale[2]), .B (n_8), .Y (n_12));
  NOR3BXL g1345__9315(.AN (n_8), .B (Prescale[2]), .C (Prescale[3]), .Y
       (n_13));
  AOI22XL g1346__9945(.A0 (edge_count[0]), .A1 (n_0), .B0
       (edge_count[1]), .B1 (n_4), .Y (n_11));
  MX2XL g1347__2883(.A (edge_count[1]), .B (n_0), .S0 (Prescale[1]), .Y
       (n_10));
  MXI2XL g1348__2346(.A (bit_count[1]), .B (n_1), .S0 (bit_count[0]),
       .Y (n_9));
  NOR2XL g1349__1666(.A (Prescale[0]), .B (Prescale[1]), .Y (n_8));
  NOR2X1 g1350__7410(.A (n_0), .B (n_4), .Y (n_7));
  NAND2X1 g1351__6417(.A (bit_count[0]), .B (bit_count[1]), .Y (n_6));
  INVXL g1354(.A (Prescale[4]), .Y (n_3));
  DFFRX1 \bit_count_reg[2] (.RN (RST), .CK (CLK), .D (n_51), .Q
       (bit_count[2]), .QN (n_5));
  DFFRX1 \edge_count_reg[0] (.RN (RST), .CK (CLK), .D (n_45), .Q
       (edge_count[0]), .QN (n_4));
  DFFRX1 \edge_count_reg[5] (.RN (RST), .CK (CLK), .D (n_47), .Q
       (edge_count[5]), .QN (n_2));
  DFFRX1 \bit_count_reg[1] (.RN (RST), .CK (CLK), .D (n_46), .Q
       (bit_count[1]), .QN (n_1));
  DFFRX1 \edge_count_reg[1] (.RN (RST), .CK (CLK), .D (n_41), .Q
       (edge_count[1]), .QN (n_0));
endmodule

module par_chk_DATA_WIDTH8(CLK, RST, parity_type, sampled_bit, Enable,
     P_DATA, par_err);
  input CLK, RST, parity_type, sampled_bit, Enable;
  input [7:0] P_DATA;
  output par_err;
  wire CLK, RST, parity_type, sampled_bit, Enable;
  wire [7:0] P_DATA;
  wire par_err;
  wire n_0, n_1, n_2, n_3, n_4, n_5, n_6, n_7;
  wire n_8, n_9;
  DFFRHQX4 par_err_reg(.RN (RST), .CK (CLK), .D (n_9), .Q (par_err));
  MX2XL g163__5477(.A (par_err), .B (n_8), .S0 (Enable), .Y (n_9));
  XOR2XL g164__2398(.A (n_7), .B (n_5), .Y (n_8));
  XNOR2X1 g165__5107(.A (n_0), .B (n_6), .Y (n_7));
  XNOR2X1 g166__6260(.A (n_4), .B (n_3), .Y (n_6));
  XNOR2X1 g167__4319(.A (n_2), .B (n_1), .Y (n_5));
  XNOR2X1 g168__8428(.A (P_DATA[7]), .B (P_DATA[0]), .Y (n_4));
  XNOR2X1 g169__5526(.A (P_DATA[4]), .B (P_DATA[2]), .Y (n_3));
  XNOR2X1 g170__6783(.A (P_DATA[6]), .B (P_DATA[1]), .Y (n_2));
  XNOR2X1 g171__3680(.A (sampled_bit), .B (parity_type), .Y (n_1));
  XNOR2X1 g172__1617(.A (P_DATA[5]), .B (P_DATA[3]), .Y (n_0));
endmodule

module stp_chk(CLK, RST, sampled_bit, Enable, stp_err);
  input CLK, RST, sampled_bit, Enable;
  output stp_err;
  wire CLK, RST, sampled_bit, Enable;
  wire stp_err;
  wire n_0, n_1;
  MXI2XL g9__2802(.A (n_0), .B (sampled_bit), .S0 (Enable), .Y (n_1));
  DFFRX4 stp_err_reg(.RN (RST), .CK (CLK), .D (n_1), .Q (stp_err), .QN
       (n_0));
endmodule

module strt_chk(CLK, RST, sampled_bit, Enable, strt_glitch);
  input CLK, RST, sampled_bit, Enable;
  output strt_glitch;
  wire CLK, RST, sampled_bit, Enable;
  wire strt_glitch;
  SDFFRHQX1 strt_glitch_reg(.RN (RST), .CK (CLK), .D (strt_glitch), .SI
       (sampled_bit), .SE (Enable), .Q (strt_glitch));
endmodule

module uart_rx_fsm_DATA_WIDTH8(CLK, RST, S_DATA, Prescale,
     parity_enable, bit_count, edge_count, par_err, stp_err,
     strt_glitch, strt_chk_en, edge_bit_en, deser_en, par_chk_en,
     stp_chk_en, dat_samp_en, data_valid);
  input CLK, RST, S_DATA, parity_enable, par_err, stp_err, strt_glitch;
  input [5:0] Prescale, edge_count;
  input [3:0] bit_count;
  output strt_chk_en, edge_bit_en, deser_en, par_chk_en, stp_chk_en,
       dat_samp_en, data_valid;
  wire CLK, RST, S_DATA, parity_enable, par_err, stp_err, strt_glitch;
  wire [5:0] Prescale, edge_count;
  wire [3:0] bit_count;
  wire strt_chk_en, edge_bit_en, deser_en, par_chk_en, stp_chk_en,
       dat_samp_en, data_valid;
  wire [2:0] current_state;
  wire n_0, n_1, n_2, n_3, n_4, n_5, n_6, n_7;
  wire n_8, n_9, n_10, n_11, n_12, n_13, n_14, n_15;
  wire n_16, n_17, n_18, n_19, n_20, n_21, n_22, n_23;
  wire n_24, n_25, n_26, n_27, n_28, n_29, n_30, n_31;
  wire n_32, n_33, n_34, n_35, n_36, n_37, n_38, n_39;
  wire n_40, n_41, n_42, n_43, n_44, n_45, n_46, n_47;
  wire n_48, n_49, n_50, n_51, n_52, n_53, n_54, n_55;
  wire n_57, n_61, n_62, n_63, n_68, n_91, n_92, n_93;
  INVXL g2019(.A (n_91), .Y (stp_chk_en));
  INVXL g2017(.A (n_93), .Y (deser_en));
  INVXL g2018(.A (n_92), .Y (par_chk_en));
  NAND3BXL g2128__1705(.AN (current_state[1]), .B (n_63), .C (n_68), .Y
       (dat_samp_en));
  OAI211X1 g2129__5122(.A0 (current_state[0]), .A1 (n_7), .B0 (n_63),
       .C0 (n_68), .Y (edge_bit_en));
  NAND2X1 g2130__8246(.A (n_61), .B (n_68), .Y (strt_chk_en));
  NOR3XL g2131__7098(.A (stp_err), .B (par_err), .C (n_62), .Y
       (data_valid));
  NAND3BXL g2132__6131(.AN (S_DATA), .B (n_7), .C (n_57), .Y (n_68));
  NAND2X1 g2133__1881(.A (current_state[1]), .B (n_57), .Y (n_92));
  OR2XL g2134__5115(.A (current_state[1]), .B (n_63), .Y (n_61));
  OR2XL g2135__7482(.A (n_7), .B (n_63), .Y (n_93));
  NAND3BXL g2136__4733(.AN (current_state[0]), .B (current_state[2]),
       .C (current_state[1]), .Y (n_91));
  NAND3X1 g2137__6161(.A (current_state[0]), .B (current_state[1]), .C
       (current_state[2]), .Y (n_62));
  NAND2BX1 g2138__9315(.AN (current_state[2]), .B (current_state[0]),
       .Y (n_63));
  NOR2X1 g2139__9945(.A (current_state[0]), .B (current_state[2]), .Y
       (n_57));
  DFFRHQX1 \current_state_reg[0] (.RN (RST), .CK (CLK), .D (n_55), .Q
       (current_state[0]));
  OAI221X1 g3125__2883(.A0 (n_62), .A1 (S_DATA), .B0 (n_61), .B1
       (n_49), .C0 (n_53), .Y (n_55));
  OAI211X1 g3127__2346(.A0 (current_state[2]), .A1 (n_7), .B0 (n_91),
       .C0 (n_50), .Y (n_54));
  INVXL g3128(.A (n_52), .Y (n_53));
  OAI221X1 g3129__1666(.A0 (bit_count[2]), .A1 (n_40), .B0 (n_93), .B1
       (n_48), .C0 (n_68), .Y (n_52));
  DFFRHQX1 \current_state_reg[2] (.RN (RST), .CK (CLK), .D (n_51), .Q
       (current_state[2]));
  OAI2BB1X1 g3131__7410(.A0N (n_14), .A1N (n_47), .B0 (n_91), .Y
       (n_51));
  NAND3BXL g3132__6417(.AN (bit_count[2]), .B (n_5), .C (n_45), .Y
       (n_50));
  NOR4X1 g3133__5477(.A (bit_count[2]), .B (bit_count[3]), .C
       (bit_count[0]), .D (n_44), .Y (n_49));
  NOR2XL g3134__2398(.A (bit_count[0]), .B (n_46), .Y (n_48));
  INVXL g3135(.A (n_46), .Y (n_47));
  NAND3BXL g3136__5107(.AN (bit_count[2]), .B (bit_count[3]), .C
       (n_43), .Y (n_46));
  NOR4BX1 g3137__6260(.AN (n_43), .B (bit_count[3]), .C (strt_glitch),
       .D (n_63), .Y (n_45));
  NAND2XL g3138__4319(.A (strt_glitch), .B (n_43), .Y (n_44));
  AOI221X1 g3139__8428(.A0 (n_6), .A1 (n_18), .B0 (edge_count[2]), .B1
       (n_19), .C0 (n_42), .Y (n_43));
  OAI211X1 g3140__5526(.A0 (edge_count[3]), .A1 (n_24), .B0 (n_27), .C0
       (n_41), .Y (n_42));
  AOI211XL g3141__6783(.A0 (edge_count[0]), .A1 (n_11), .B0
       (bit_count[1]), .C0 (n_39), .Y (n_41));
  OR4X1 g3142__3680(.A (n_3), .B (n_91), .C (n_29), .D (n_37), .Y
       (n_40));
  OAI211X1 g3143__1617(.A0 (n_1), .A1 (n_11), .B0 (n_34), .C0 (n_38),
       .Y (n_39));
  AOI221X1 g3144__2802(.A0 (edge_count[5]), .A1 (n_0), .B0 (n_2), .B1
       (n_1), .C0 (n_36), .Y (n_38));
  OAI211X1 g3145__1705(.A0 (edge_count[5]), .A1 (n_30), .B0 (n_33), .C0
       (n_35), .Y (n_37));
  NOR2XL g3146__5122(.A (edge_count[5]), .B (n_0), .Y (n_36));
  AOI221X1 g3147__8246(.A0 (edge_count[4]), .A1 (n_25), .B0
       (bit_count[0]), .B1 (parity_enable), .C0 (n_32), .Y (n_35));
  XNOR2X1 g3148__7098(.A (edge_count[4]), .B (n_31), .Y (n_34));
  NAND2X1 g3149__6131(.A (edge_count[5]), .B (n_30), .Y (n_33));
  OR4X1 g3150__1881(.A (n_8), .B (n_11), .C (n_23), .D (n_26), .Y
       (n_32));
  OAI2BB1X1 g3152__5115(.A0N (Prescale[4]), .A1N (n_21), .B0 (n_28), .Y
       (n_31));
  OAI22XL g3153__7482(.A0 (edge_count[4]), .A1 (n_25), .B0
       (bit_count[0]), .B1 (bit_count[1]), .Y (n_29));
  XNOR2X1 g3154__4733(.A (Prescale[5]), .B (n_22), .Y (n_30));
  NAND2XL g3156__6161(.A (n_1), .B (n_22), .Y (n_28));
  NAND2X1 g3157__9315(.A (edge_count[3]), .B (n_24), .Y (n_27));
  OAI221X1 g3158__9945(.A0 (edge_count[3]), .A1 (n_17), .B0 (n_6), .B1
       (n_13), .C0 (n_10), .Y (n_26));
  AOI21XL g3159__2883(.A0 (Prescale[4]), .A1 (n_15), .B0 (n_22), .Y
       (n_25));
  AO22XL g3160__2346(.A0 (edge_count[3]), .A1 (n_17), .B0 (n_6), .B1
       (n_13), .Y (n_23));
  AOI21XL g3161__1666(.A0 (Prescale[3]), .A1 (n_16), .B0 (n_20), .Y
       (n_24));
  NOR2XL g3162__7410(.A (Prescale[4]), .B (n_15), .Y (n_22));
  INVXL g3163(.A (n_20), .Y (n_21));
  NOR2XL g3164__6417(.A (Prescale[0]), .B (n_15), .Y (n_20));
  INVXL g3165(.A (n_18), .Y (n_19));
  NAND2XL g3166__5477(.A (n_12), .B (n_16), .Y (n_18));
  OA21X1 g3167__2398(.A0 (n_4), .A1 (n_9), .B0 (n_15), .Y (n_17));
  NAND2XL g3168__5107(.A (n_1), .B (n_9), .Y (n_16));
  NAND2XL g3169__6260(.A (n_4), .B (n_9), .Y (n_15));
  OAI32X1 g3170__4319(.A0 (bit_count[0]), .A1 (n_93), .A2
       (parity_enable), .B0 (n_5), .B1 (n_92), .Y (n_14));
  OAI21XL g3171__8428(.A0 (Prescale[1]), .A1 (Prescale[0]), .B0
       (Prescale[2]), .Y (n_12));
  AO21X1 g3172__5526(.A0 (Prescale[2]), .A1 (Prescale[1]), .B0 (n_9),
       .Y (n_13));
  AOI22X1 g3173__6783(.A0 (n_2), .A1 (Prescale[0]), .B0
       (edge_count[0]), .B1 (n_1), .Y (n_10));
  XNOR2X1 g3174__3680(.A (edge_count[1]), .B (Prescale[1]), .Y (n_11));
  NOR2XL g3175__1617(.A (Prescale[1]), .B (Prescale[2]), .Y (n_9));
  NOR2BX1 g3176__2802(.AN (bit_count[1]), .B (parity_enable), .Y (n_8));
  INVX1 g3178(.A (edge_count[2]), .Y (n_6));
  INVX1 g3179(.A (bit_count[0]), .Y (n_5));
  INVXL g3180(.A (Prescale[3]), .Y (n_4));
  INVXL g3181(.A (bit_count[3]), .Y (n_3));
  INVX1 g3182(.A (edge_count[0]), .Y (n_2));
  INVX1 g3183(.A (Prescale[0]), .Y (n_1));
  XOR2XL g2__1705(.A (Prescale[5]), .B (n_28), .Y (n_0));
  DFFRX1 \current_state_reg[1] (.RN (RST), .CK (CLK), .D (n_54), .Q
       (current_state[1]), .QN (n_7));
endmodule

module UART_RX(CLK, RST, RX_IN, parity_enable, parity_type, Prescale,
     P_DATA, data_valid, parity_error, framing_error);
  input CLK, RST, RX_IN, parity_enable, parity_type;
  input [5:0] Prescale;
  output [7:0] P_DATA;
  output data_valid, parity_error, framing_error;
  wire CLK, RST, RX_IN, parity_enable, parity_type;
  wire [5:0] Prescale;
  wire [7:0] P_DATA;
  wire data_valid, parity_error, framing_error;
  wire [5:0] edge_count;
  wire [3:0] bit_count;
  wire UNCONNECTED_HIER_Z, dat_samp_en, deser_en, edge_bit_en,
       par_chk_en, sampled_bit, stp_chk_en, strt_chk_en;
  wire strt_glitch;
  data_sampling U0_data_sampling(.CLK (CLK), .RST (RST), .S_DATA
       (RX_IN), .Prescale ({Prescale[5:1], UNCONNECTED_HIER_Z}),
       .edge_count (edge_count), .Enable (dat_samp_en), .sampled_bit
       (sampled_bit));
  deserializer_DATA_WIDTH8 U0_deserializer(.CLK (CLK), .RST (RST),
       .sampled_bit (sampled_bit), .Enable (deser_en), .edge_count
       (edge_count), .Prescale (Prescale), .P_DATA (P_DATA));
  edge_bit_counter U0_edge_bit_counter(.CLK (CLK), .RST (RST), .Enable
       (edge_bit_en), .Prescale (Prescale), .bit_count (bit_count),
       .edge_count (edge_count));
  par_chk_DATA_WIDTH8 U0_par_chk(.CLK (CLK), .RST (RST), .parity_type
       (parity_type), .sampled_bit (sampled_bit), .Enable (par_chk_en),
       .P_DATA (P_DATA), .par_err (parity_error));
  stp_chk U0_stp_chk(.CLK (CLK), .RST (RST), .sampled_bit
       (sampled_bit), .Enable (stp_chk_en), .stp_err (framing_error));
  strt_chk U0_strt_chk(.CLK (CLK), .RST (RST), .sampled_bit
       (sampled_bit), .Enable (strt_chk_en), .strt_glitch
       (strt_glitch));
  uart_rx_fsm_DATA_WIDTH8 U0_uart_fsm(.CLK (CLK), .RST (RST), .S_DATA
       (RX_IN), .Prescale (Prescale), .parity_enable (parity_enable),
       .bit_count (bit_count), .edge_count (edge_count), .par_err
       (parity_error), .stp_err (framing_error), .strt_glitch
       (strt_glitch), .strt_chk_en (strt_chk_en), .edge_bit_en
       (edge_bit_en), .deser_en (deser_en), .par_chk_en (par_chk_en),
       .stp_chk_en (stp_chk_en), .dat_samp_en (dat_samp_en),
       .data_valid (data_valid));
endmodule

module Serializer_WIDTH8(CLK, RST, DATA, Enable, Busy, Data_Valid,
     ser_out, ser_done);
  input CLK, RST, Enable, Busy, Data_Valid;
  input [7:0] DATA;
  output ser_out, ser_done;
  wire CLK, RST, Enable, Busy, Data_Valid;
  wire [7:0] DATA;
  wire ser_out, ser_done;
  wire [2:0] ser_count;
  wire [7:0] DATA_V;
  wire n_0, n_1, n_2, n_3, n_4, n_5, n_6, n_7;
  wire n_8, n_9, n_10, n_11, n_12, n_13, n_14, n_15;
  wire n_16, n_17, n_18, n_19, n_20, n_21, n_22, n_23;
  AND3XL g373__5122(.A (ser_count[0]), .B (ser_count[2]), .C
       (ser_count[1]), .Y (ser_done));
  DFFRHQX1 \ser_count_reg[2] (.RN (RST), .CK (CLK), .D (n_23), .Q
       (ser_count[2]));
  DFFRHQX1 \DATA_V_reg[1] (.RN (RST), .CK (CLK), .D (n_19), .Q
       (DATA_V[1]));
  DFFRHQX1 \DATA_V_reg[6] (.RN (RST), .CK (CLK), .D (n_20), .Q
       (DATA_V[6]));
  DFFRHQX1 \DATA_V_reg[0] (.RN (RST), .CK (CLK), .D (n_18), .Q
       (ser_out));
  DFFRHQX1 \DATA_V_reg[2] (.RN (RST), .CK (CLK), .D (n_22), .Q
       (DATA_V[2]));
  AND2XL g631__8246(.A (n_12), .B (Enable), .Y (n_23));
  DFFRHQX1 \DATA_V_reg[4] (.RN (RST), .CK (CLK), .D (n_15), .Q
       (DATA_V[4]));
  DFFRHQX1 \DATA_V_reg[3] (.RN (RST), .CK (CLK), .D (n_21), .Q
       (DATA_V[3]));
  DFFRHQX1 \DATA_V_reg[5] (.RN (RST), .CK (CLK), .D (n_17), .Q
       (DATA_V[5]));
  OAI2BB1X1 g635__7098(.A0N (DATA_V[2]), .A1N (n_3), .B0 (n_9), .Y
       (n_22));
  OAI2BB1X1 g636__6131(.A0N (DATA_V[4]), .A1N (n_4), .B0 (n_7), .Y
       (n_21));
  OAI2BB1X1 g637__1881(.A0N (DATA_V[6]), .A1N (n_3), .B0 (n_11), .Y
       (n_20));
  DFFRHQX1 \DATA_V_reg[7] (.RN (RST), .CK (CLK), .D (n_10), .Q
       (DATA_V[7]));
  DFFRHQX1 \ser_count_reg[1] (.RN (RST), .CK (CLK), .D (n_8), .Q
       (ser_count[1]));
  INVXL g640(.A (n_16), .Y (n_19));
  INVXL g641(.A (n_14), .Y (n_18));
  INVXL g642(.A (n_13), .Y (n_17));
  AOI222X1 g643__5115(.A0 (DATA_V[2]), .A1 (n_4), .B0 (DATA[1]), .B1
       (n_1), .C0 (DATA_V[1]), .C1 (n_3), .Y (n_16));
  OAI2BB1X1 g644__7482(.A0N (DATA_V[5]), .A1N (n_4), .B0 (n_6), .Y
       (n_15));
  AOI222X1 g645__4733(.A0 (DATA_V[1]), .A1 (n_4), .B0 (DATA[0]), .B1
       (n_1), .C0 (ser_out), .C1 (n_3), .Y (n_14));
  AOI222X1 g646__6161(.A0 (DATA_V[6]), .A1 (n_4), .B0 (DATA[5]), .B1
       (n_1), .C0 (DATA_V[5]), .C1 (n_3), .Y (n_13));
  XNOR2X1 g647__9315(.A (ser_count[2]), .B (n_2), .Y (n_12));
  AOI22XL g648__9945(.A0 (DATA_V[7]), .A1 (n_4), .B0 (DATA[6]), .B1
       (n_1), .Y (n_11));
  AO22XL g649__2883(.A0 (DATA_V[7]), .A1 (n_3), .B0 (DATA[7]), .B1
       (n_1), .Y (n_10));
  AOI22XL g650__2346(.A0 (DATA_V[3]), .A1 (n_4), .B0 (DATA[2]), .B1
       (n_1), .Y (n_9));
  INVXL g651(.A (n_5), .Y (n_8));
  AOI22XL g652__1666(.A0 (DATA_V[3]), .A1 (n_3), .B0 (DATA[3]), .B1
       (n_1), .Y (n_7));
  AOI22XL g653__7410(.A0 (DATA_V[4]), .A1 (n_3), .B0 (DATA[4]), .B1
       (n_1), .Y (n_6));
  OAI211X1 g654__6417(.A0 (ser_count[1]), .A1 (ser_count[0]), .B0
       (n_2), .C0 (Enable), .Y (n_5));
  DFFRHQX1 \ser_count_reg[0] (.RN (RST), .CK (CLK), .D (n_0), .Q
       (ser_count[0]));
  NOR2BX1 g656__5477(.AN (Enable), .B (n_1), .Y (n_4));
  NOR2X1 g657__2398(.A (Enable), .B (n_1), .Y (n_3));
  NAND2X1 g658__5107(.A (ser_count[0]), .B (ser_count[1]), .Y (n_2));
  NOR2BX1 g659__6260(.AN (Enable), .B (ser_count[0]), .Y (n_0));
  NOR2BX1 g660__4319(.AN (Data_Valid), .B (Busy), .Y (n_1));
endmodule

module uart_tx_fsm(CLK, RST, Data_Valid, ser_done, parity_enable,
     Ser_enable, mux_sel, busy);
  input CLK, RST, Data_Valid, ser_done, parity_enable;
  output Ser_enable, busy;
  output [1:0] mux_sel;
  wire CLK, RST, Data_Valid, ser_done, parity_enable;
  wire Ser_enable, busy;
  wire [1:0] mux_sel;
  wire [2:0] current_state;
  wire n_0, n_1, n_2, n_3, n_4, n_5, n_6, n_7;
  wire n_8, n_9, n_13, n_16, n_20;
  INVX1 g330(.A (n_20), .Y (Ser_enable));
  INVXL g329(.A (Data_Valid), .Y (n_9));
  OAI211X1 g409__8428(.A0 (n_6), .A1 (n_7), .B0 (n_13), .C0 (n_16), .Y
       (mux_sel[0]));
  DFFRHQX1 busy_reg(.RN (RST), .CK (CLK), .D (n_8), .Q (busy));
  OR2XL g411__5526(.A (ser_done), .B (n_16), .Y (n_20));
  OR3XL g412__6783(.A (current_state[1]), .B (current_state[2]), .C
       (current_state[0]), .Y (n_13));
  NAND3X1 g413__3680(.A (current_state[0]), .B (current_state[1]), .C
       (n_6), .Y (n_16));
  AOI2BB1X1 g414__1617(.A0N (current_state[1]), .A1N (n_6), .B0
       (current_state[0]), .Y (mux_sel[1]));
  OAI2BB1X1 g415__2802(.A0N (current_state[0]), .A1N (n_6), .B0 (n_7),
       .Y (n_8));
  NAND2BX1 g416__1705(.AN (current_state[0]), .B (current_state[1]), .Y
       (n_7));
  DFFRHQX1 \current_state_reg[0] (.RN (RST), .CK (CLK), .D (n_5), .Q
       (current_state[0]));
  OAI221X1 g392__5122(.A0 (current_state[1]), .A1 (n_2), .B0 (n_13),
       .B1 (n_9), .C0 (n_20), .Y (n_5));
  OAI32X1 g393__8246(.A0 (n_0), .A1 (n_16), .A2 (parity_enable), .B0
       (n_1), .B1 (n_2), .Y (n_4));
  DFFRHQX1 \current_state_reg[1] (.RN (RST), .CK (CLK), .D (n_3), .Q
       (current_state[1]));
  INVXL g395(.A (n_2), .Y (n_3));
  NAND2BX1 g396__7098(.AN (current_state[2]), .B (n_13), .Y (n_2));
  NAND2X1 g397__6131(.A (current_state[1]), .B (n_16), .Y (n_1));
  INVXL g398(.A (ser_done), .Y (n_0));
  DFFRX1 \current_state_reg[2] (.RN (RST), .CK (CLK), .D (n_4), .Q
       (current_state[2]), .QN (n_6));
endmodule

module mux(CLK, RST, IN_0, IN_1, IN_2, IN_3, SEL, OUT);
  input CLK, RST, IN_0, IN_1, IN_2, IN_3;
  input [1:0] SEL;
  output OUT;
  wire CLK, RST, IN_0, IN_1, IN_2, IN_3;
  wire [1:0] SEL;
  wire OUT;
  wire n_0, n_1;
  DFFRHQX4 OUT_reg(.RN (RST), .CK (CLK), .D (n_1), .Q (OUT));
  OAI2BB1X1 g40__1881(.A0N (IN_2), .A1N (SEL[1]), .B0 (n_0), .Y (n_1));
  OAI21X1 g41__5115(.A0 (IN_1), .A1 (SEL[1]), .B0 (SEL[0]), .Y (n_0));
endmodule

module parity_calc_WIDTH8(CLK, RST, parity_enable, parity_type, Busy,
     DATA, Data_Valid, parity);
  input CLK, RST, parity_enable, parity_type, Busy, Data_Valid;
  input [7:0] DATA;
  output parity;
  wire CLK, RST, parity_enable, parity_type, Busy, Data_Valid;
  wire [7:0] DATA;
  wire parity;
  wire [7:0] DATA_V;
  wire n_0, n_1, n_2, n_3, n_4, n_5, n_6, n_7;
  wire n_8;
  SDFFRHQX1 parity_reg(.RN (RST), .CK (CLK), .D (parity), .SI (n_8),
       .SE (parity_enable), .Q (parity));
  XNOR2X1 g369__7482(.A (DATA_V[2]), .B (n_7), .Y (n_8));
  XNOR2X1 g370__4733(.A (DATA_V[4]), .B (n_6), .Y (n_7));
  XNOR2X1 g371__6161(.A (DATA_V[0]), .B (n_5), .Y (n_6));
  XNOR2X1 g372__9315(.A (DATA_V[7]), .B (n_4), .Y (n_5));
  XNOR2X1 g373__9945(.A (DATA_V[1]), .B (n_3), .Y (n_4));
  XNOR2X1 g374__2883(.A (DATA_V[6]), .B (n_2), .Y (n_3));
  SDFFRHQX1 \DATA_V_reg[5] (.RN (RST), .CK (CLK), .D (DATA[5]), .SI
       (DATA_V[5]), .SE (n_0), .Q (DATA_V[5]));
  SDFFRHQX1 \DATA_V_reg[3] (.RN (RST), .CK (CLK), .D (DATA[3]), .SI
       (DATA_V[3]), .SE (n_0), .Q (DATA_V[3]));
  SDFFRHQX1 \DATA_V_reg[2] (.RN (RST), .CK (CLK), .D (DATA[2]), .SI
       (DATA_V[2]), .SE (n_0), .Q (DATA_V[2]));
  SDFFRHQX1 \DATA_V_reg[6] (.RN (RST), .CK (CLK), .D (DATA[6]), .SI
       (DATA_V[6]), .SE (n_0), .Q (DATA_V[6]));
  XNOR2X1 g379__2346(.A (DATA_V[3]), .B (n_1), .Y (n_2));
  SDFFRHQX1 \DATA_V_reg[4] (.RN (RST), .CK (CLK), .D (DATA[4]), .SI
       (DATA_V[4]), .SE (n_0), .Q (DATA_V[4]));
  SDFFRHQX1 \DATA_V_reg[7] (.RN (RST), .CK (CLK), .D (DATA[7]), .SI
       (DATA_V[7]), .SE (n_0), .Q (DATA_V[7]));
  SDFFRHQX1 \DATA_V_reg[0] (.RN (RST), .CK (CLK), .D (DATA[0]), .SI
       (DATA_V[0]), .SE (n_0), .Q (DATA_V[0]));
  SDFFRHQX1 \DATA_V_reg[1] (.RN (RST), .CK (CLK), .D (DATA[1]), .SI
       (DATA_V[1]), .SE (n_0), .Q (DATA_V[1]));
  XNOR2X1 g384__1666(.A (DATA_V[5]), .B (parity_type), .Y (n_1));
  NAND2BX1 g385__7410(.AN (Busy), .B (Data_Valid), .Y (n_0));
endmodule

module UART_TX_DATA_WIDTH8(CLK, RST, P_DATA, Data_Valid, parity_enable,
     parity_type, TX_OUT, busy);
  input CLK, RST, Data_Valid, parity_enable, parity_type;
  input [7:0] P_DATA;
  output TX_OUT, busy;
  wire CLK, RST, Data_Valid, parity_enable, parity_type;
  wire [7:0] P_DATA;
  wire TX_OUT, busy;
  wire [1:0] mux_sel;
  wire UNCONNECTED_HIER_Z0, UNCONNECTED_HIER_Z1, parity, ser_data,
       seriz_done, seriz_en;
  Serializer_WIDTH8 U0_Serializer(.CLK (CLK), .RST (RST), .DATA
       (P_DATA), .Enable (seriz_en), .Busy (busy), .Data_Valid
       (Data_Valid), .ser_out (ser_data), .ser_done (seriz_done));
  uart_tx_fsm U0_fsm(.CLK (CLK), .RST (RST), .Data_Valid (Data_Valid),
       .ser_done (seriz_done), .parity_enable (parity_enable),
       .Ser_enable (seriz_en), .mux_sel (mux_sel), .busy (busy));
  mux U0_mux(.CLK (CLK), .RST (RST), .IN_0 (UNCONNECTED_HIER_Z0), .IN_1
       (ser_data), .IN_2 (parity), .IN_3 (UNCONNECTED_HIER_Z1), .SEL
       (mux_sel), .OUT (TX_OUT));
  parity_calc_WIDTH8 U0_parity_calc(.CLK (CLK), .RST (RST),
       .parity_enable (parity_enable), .parity_type (parity_type),
       .Busy (busy), .DATA (P_DATA), .Data_Valid (Data_Valid), .parity
       (parity));
endmodule

module UART(RST, TX_CLK, RX_CLK, RX_IN_S, RX_OUT_P, RX_OUT_V, TX_IN_P,
     TX_IN_V, TX_OUT_S, TX_OUT_V, Prescale, parity_enable, parity_type,
     parity_error, framing_error);
  input RST, TX_CLK, RX_CLK, RX_IN_S, TX_IN_V, parity_enable,
       parity_type;
  input [7:0] TX_IN_P;
  input [5:0] Prescale;
  output [7:0] RX_OUT_P;
  output RX_OUT_V, TX_OUT_S, TX_OUT_V, parity_error, framing_error;
  wire RST, TX_CLK, RX_CLK, RX_IN_S, TX_IN_V, parity_enable,
       parity_type;
  wire [7:0] TX_IN_P;
  wire [5:0] Prescale;
  wire [7:0] RX_OUT_P;
  wire RX_OUT_V, TX_OUT_S, TX_OUT_V, parity_error, framing_error;
  UART_RX U0_UART_RX(.CLK (RX_CLK), .RST (RST), .RX_IN (RX_IN_S),
       .parity_enable (parity_enable), .parity_type (parity_type),
       .Prescale (Prescale), .P_DATA (RX_OUT_P), .data_valid
       (RX_OUT_V), .parity_error (parity_error), .framing_error
       (framing_error));
  UART_TX_DATA_WIDTH8 U0_UART_TX(.CLK (TX_CLK), .RST (RST), .P_DATA
       (TX_IN_P), .Data_Valid (TX_IN_V), .parity_enable
       (parity_enable), .parity_type (parity_type), .TX_OUT (TX_OUT_S),
       .busy (TX_OUT_V));
endmodule

