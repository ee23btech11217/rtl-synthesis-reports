
// Generated by Cadence Genus(TM) Synthesis Solution 20.10-p001_1
// Generated on: Nov 21 2024 23:27:15 IST (Nov 21 2024 17:57:15 UTC)

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
  wire n_40, n_41, n_42, n_43, n_44;
  DFFRHQX1HVT sampled_bit_reg(.RN (RST), .CK (CLK), .D (n_44), .Q
       (sampled_bit));
  AND2XLHVT g920__2398(.A (n_43), .B (Enable), .Y (n_44));
  OAI2BB1X1HVT g921__5107(.A0N (Samples[1]), .A1N (Samples[0]), .B0
       (n_42), .Y (n_43));
  OAI21XLHVT g922__6260(.A0 (Samples[0]), .A1 (Samples[1]), .B0
       (Samples[2]), .Y (n_42));
  DFFRHQX1HVT \Samples_reg[1] (.RN (RST), .CK (CLK), .D (n_41), .Q
       (Samples[1]));
  DFFRHQX1HVT \Samples_reg[2] (.RN (RST), .CK (CLK), .D (n_39), .Q
       (Samples[2]));
  OAI2BB1X1HVT g1600__4319(.A0N (S_DATA), .A1N (n_37), .B0 (n_40), .Y
       (n_41));
  NAND3BXLHVT g1601__8428(.AN (n_37), .B (Samples[1]), .C (Enable), .Y
       (n_40));
  OAI2BB1X1HVT g1602__5526(.A0N (S_DATA), .A1N (n_34), .B0 (n_38), .Y
       (n_39));
  DFFRHQX1HVT \Samples_reg[0] (.RN (RST), .CK (CLK), .D (n_36), .Q
       (Samples[0]));
  NAND3BXLHVT g1604__6783(.AN (n_34), .B (Samples[2]), .C (Enable), .Y
       (n_38));
  NOR4X1HVT g1605__3680(.A (edge_count[5]), .B (n_32), .C (n_20), .D
       (n_25), .Y (n_37));
  INVXLHVT g1606(.A (n_35), .Y (n_36));
  AOI32X1HVT g1607__1617(.A0 (S_DATA), .A1 (Enable), .A2 (n_31), .B0
       (Samples[0]), .B1 (n_33), .Y (n_35));
  NOR4X1HVT g1608__2802(.A (edge_count[5]), .B (n_4), .C (n_14), .D
       (n_32), .Y (n_34));
  INVXLHVT g1609(.A (n_32), .Y (n_33));
  NAND2BX1HVT g1610__1705(.AN (n_31), .B (Enable), .Y (n_32));
  NOR4X1HVT g1611__5122(.A (edge_count[5]), .B (n_4), .C (n_5), .D
       (n_30), .Y (n_31));
  OAI211X1HVT g1612__8246(.A0 (n_20), .A1 (n_23), .B0 (n_27), .C0
       (n_29), .Y (n_30));
  NOR2XLHVT g1613__7098(.A (n_24), .B (n_28), .Y (n_29));
  XNOR2X1HVT g1614__6131(.A (edge_count[3]), .B (n_26), .Y (n_28));
  NAND2XLHVT g1615__1881(.A (n_20), .B (n_23), .Y (n_27));
  OA21X1HVT g1616__5115(.A0 (n_12), .A1 (n_19), .B0 (n_23), .Y (n_26));
  OAI211X1HVT g1617__7482(.A0 (edge_count[2]), .A1 (n_15), .B0 (n_18),
       .C0 (n_22), .Y (n_25));
  XNOR2X1HVT g1618__4733(.A (edge_count[2]), .B (n_21), .Y (n_24));
  NAND2XLHVT g1619__6161(.A (n_12), .B (n_19), .Y (n_23));
  AOI211XLHVT g1620__9315(.A0 (edge_count[3]), .A1 (n_12), .B0 (n_16),
       .C0 (n_17), .Y (n_22));
  AOI2BB1XLHVT g1621__9945(.A0N (n_15), .A1N (n_13), .B0 (n_19), .Y
       (n_21));
  XNOR2X1HVT g1622__2883(.A (n_6), .B (n_10), .Y (n_20));
  NAND2XLHVT g1623__2346(.A (edge_count[2]), .B (n_15), .Y (n_18));
  AND2X1HVT g1624__1666(.A (n_13), .B (n_15), .Y (n_19));
  NOR2XLHVT g1625__7410(.A (edge_count[3]), .B (n_12), .Y (n_17));
  OAI211X1HVT g1626__6417(.A0 (edge_count[1]), .A1 (n_7), .B0 (n_4),
       .C0 (n_11), .Y (n_16));
  AOI21XLHVT g1627__5477(.A0 (Prescale[3]), .A1 (n_1), .B0 (n_8), .Y
       (n_15));
  NAND4XLHVT g1628__2398(.A (n_3), .B (n_2), .C (n_5), .D (n_6), .Y
       (n_14));
  AND2X1HVT g1629__5107(.A (n_7), .B (Prescale[1]), .Y (n_13));
  NAND2XLHVT g1630__6260(.A (edge_count[1]), .B (n_7), .Y (n_11));
  AOI21XLHVT g1631__4319(.A0 (Prescale[4]), .A1 (n_9), .B0 (n_10), .Y
       (n_12));
  NOR2XLHVT g1632__8428(.A (Prescale[4]), .B (n_9), .Y (n_10));
  INVXLHVT g1633(.A (n_8), .Y (n_9));
  NOR3XLHVT g1634__5526(.A (Prescale[2]), .B (Prescale[3]), .C
       (Prescale[1]), .Y (n_8));
  AOI21XLHVT g1635__6783(.A0 (Prescale[2]), .A1 (Prescale[1]), .B0
       (n_0), .Y (n_7));
  XNOR2X1HVT g1636__3680(.A (edge_count[4]), .B (Prescale[5]), .Y
       (n_6));
  XNOR2X1HVT g1637__1617(.A (edge_count[3]), .B (Prescale[4]), .Y
       (n_3));
  XNOR2X1HVT g1638__2802(.A (edge_count[2]), .B (Prescale[3]), .Y
       (n_2));
  XNOR2X1HVT g1639__1705(.A (edge_count[1]), .B (Prescale[2]), .Y
       (n_5));
  CLKXOR2X1HVT g1640__5122(.A (edge_count[0]), .B (Prescale[1]), .Y
       (n_4));
  INVXLHVT g1641(.A (n_0), .Y (n_1));
  NOR2XLHVT g1642__8246(.A (Prescale[1]), .B (Prescale[2]), .Y (n_0));
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
  wire n_16, n_17, n_18, n_19;
  SDFFRHQX8HVT \P_DATA_reg[0] (.RN (RST), .CK (CLK), .D (P_DATA[1]),
       .SI (P_DATA[0]), .SE (n_19), .Q (P_DATA[0]));
  SDFFRHQX8HVT \P_DATA_reg[1] (.RN (RST), .CK (CLK), .D (P_DATA[2]),
       .SI (P_DATA[1]), .SE (n_19), .Q (P_DATA[1]));
  SDFFRHQX8HVT \P_DATA_reg[2] (.RN (RST), .CK (CLK), .D (P_DATA[3]),
       .SI (P_DATA[2]), .SE (n_19), .Q (P_DATA[2]));
  SDFFRHQX8HVT \P_DATA_reg[3] (.RN (RST), .CK (CLK), .D (P_DATA[4]),
       .SI (P_DATA[3]), .SE (n_19), .Q (P_DATA[3]));
  SDFFRHQX8HVT \P_DATA_reg[6] (.RN (RST), .CK (CLK), .D (P_DATA[7]),
       .SI (P_DATA[6]), .SE (n_19), .Q (P_DATA[6]));
  SDFFRHQX8HVT \P_DATA_reg[5] (.RN (RST), .CK (CLK), .D (P_DATA[6]),
       .SI (P_DATA[5]), .SE (n_19), .Q (P_DATA[5]));
  SDFFRHQX8HVT \P_DATA_reg[4] (.RN (RST), .CK (CLK), .D (P_DATA[5]),
       .SI (P_DATA[4]), .SE (n_19), .Q (P_DATA[4]));
  SDFFRHQX8HVT \P_DATA_reg[7] (.RN (RST), .CK (CLK), .D (sampled_bit),
       .SI (P_DATA[7]), .SE (n_19), .Q (P_DATA[7]));
  NAND4BX1HVT g619__7098(.AN (n_12), .B (Enable), .C (n_16), .D (n_18),
       .Y (n_19));
  AOI211XLHVT g620__6131(.A0 (edge_count[5]), .A1 (n_9), .B0 (n_17),
       .C0 (n_13), .Y (n_18));
  OAI211X1HVT g621__1881(.A0 (edge_count[1]), .A1 (n_3), .B0 (n_8), .C0
       (n_15), .Y (n_17));
  XNOR2X1HVT g622__5115(.A (edge_count[4]), .B (n_14), .Y (n_16));
  AOI221X1HVT g623__7482(.A0 (edge_count[2]), .A1 (n_10), .B0
       (edge_count[0]), .B1 (Prescale[0]), .C0 (n_11), .Y (n_15));
  OAI2BB1X1HVT g624__4733(.A0N (Prescale[4]), .A1N (n_6), .B0 (n_5), .Y
       (n_14));
  OAI22XLHVT g625__6161(.A0 (edge_count[5]), .A1 (n_9), .B0
       (edge_count[0]), .B1 (Prescale[0]), .Y (n_13));
  XNOR2X1HVT g626__9315(.A (edge_count[3]), .B (n_7), .Y (n_12));
  NOR2XLHVT g627__9945(.A (edge_count[2]), .B (n_10), .Y (n_11));
  AOI21XLHVT g628__2883(.A0 (Prescale[2]), .A1 (n_2), .B0 (n_4), .Y
       (n_10));
  CLKXOR2X1HVT g629__2346(.A (Prescale[5]), .B (n_5), .Y (n_9));
  NAND2XLHVT g630__1666(.A (edge_count[1]), .B (n_3), .Y (n_8));
  XNOR2X1HVT g631__7410(.A (Prescale[3]), .B (n_4), .Y (n_7));
  NAND2BXLHVT g632__6417(.AN (Prescale[3]), .B (n_4), .Y (n_6));
  NAND2XLHVT g633__5477(.A (n_0), .B (n_4), .Y (n_5));
  NOR3XLHVT g634__2398(.A (Prescale[1]), .B (Prescale[2]), .C
       (Prescale[0]), .Y (n_4));
  AOI21XLHVT g635__5107(.A0 (Prescale[1]), .A1 (Prescale[0]), .B0
       (n_1), .Y (n_3));
  INVXLHVT g636(.A (n_1), .Y (n_2));
  NOR2XLHVT g637__6260(.A (Prescale[0]), .B (Prescale[1]), .Y (n_1));
  NOR2XLHVT g638__4319(.A (Prescale[3]), .B (Prescale[4]), .Y (n_0));
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
  DFFRHQX1HVT \bit_count_reg[3] (.RN (RST), .CK (CLK), .D (n_52), .Q
       (bit_count[3]));
  DFFRHQX1HVT \bit_count_reg[2] (.RN (RST), .CK (CLK), .D (n_51), .Q
       (bit_count[2]));
  OAI21XLHVT g1297__8428(.A0 (n_21), .A1 (n_39), .B0 (n_49), .Y (n_52));
  OAI31X1HVT g1298__5526(.A0 (bit_count[2]), .A1 (n_6), .A2 (n_39), .B0
       (n_50), .Y (n_51));
  DFFRHQX1HVT \edge_count_reg[5] (.RN (RST), .CK (CLK), .D (n_47), .Q
       (edge_count[5]));
  DFFRHQX1HVT \bit_count_reg[1] (.RN (RST), .CK (CLK), .D (n_46), .Q
       (bit_count[1]));
  NAND2XLHVT g1301__6783(.A (bit_count[2]), .B (n_48), .Y (n_50));
  NAND2XLHVT g1302__3680(.A (bit_count[3]), .B (n_48), .Y (n_49));
  SDFFRHQX1HVT \bit_count_reg[0] (.RN (RST), .CK (CLK), .D (n_38), .SI
       (n_36), .SE (bit_count[0]), .Q (bit_count[0]));
  DFFRHQX1HVT \edge_count_reg[4] (.RN (RST), .CK (CLK), .D (n_42), .Q
       (edge_count[4]));
  DFFRHQX1HVT \edge_count_reg[2] (.RN (RST), .CK (CLK), .D (n_43), .Q
       (edge_count[2]));
  DFFRHQX1HVT \edge_count_reg[3] (.RN (RST), .CK (CLK), .D (n_44), .Q
       (edge_count[3]));
  DFFRHQX1HVT \edge_count_reg[1] (.RN (RST), .CK (CLK), .D (n_41), .Q
       (edge_count[1]));
  AND2XLHVT g1308__1617(.A (n_40), .B (n_36), .Y (n_47));
  OAI22XLHVT g1309__2802(.A0 (n_9), .A1 (n_39), .B0 (n_1), .B1 (n_37),
       .Y (n_46));
  OAI2BB1X1HVT g1310__1705(.A0N (n_6), .A1N (n_38), .B0 (n_37), .Y
       (n_48));
  DFFRHQX1HVT \edge_count_reg[0] (.RN (RST), .CK (CLK), .D (n_45), .Q
       (edge_count[0]));
  NOR2XLHVT g1312__5122(.A (edge_count[0]), .B (n_37), .Y (n_45));
  NOR2XLHVT g1313__8246(.A (n_29), .B (n_37), .Y (n_44));
  NOR2XLHVT g1314__7098(.A (n_20), .B (n_37), .Y (n_43));
  NOR2XLHVT g1315__6131(.A (n_33), .B (n_37), .Y (n_42));
  NOR2XLHVT g1316__1881(.A (n_11), .B (n_37), .Y (n_41));
  XNOR2X1HVT g1317__5115(.A (edge_count[5]), .B (n_32), .Y (n_40));
  INVXLHVT g1318(.A (n_39), .Y (n_38));
  NAND2X1HVT g1319__7482(.A (Enable), .B (n_35), .Y (n_39));
  INVXLHVT g1320(.A (n_37), .Y (n_36));
  NAND2BX1HVT g1321__4733(.AN (n_35), .B (Enable), .Y (n_37));
  AOI221X1HVT g1322__6161(.A0 (edge_count[3]), .A1 (n_23), .B0
       (edge_count[2]), .B1 (n_14), .C0 (n_34), .Y (n_35));
  OAI221X1HVT g1323__9315(.A0 (n_2), .A1 (n_26), .B0 (edge_count[3]),
       .B1 (n_23), .C0 (n_31), .Y (n_34));
  XNOR2X1HVT g1324__9945(.A (edge_count[4]), .B (n_28), .Y (n_33));
  NAND2XLHVT g1325__2883(.A (edge_count[4]), .B (n_28), .Y (n_32));
  AOI221X1HVT g1326__2346(.A0 (n_2), .A1 (n_26), .B0 (n_0), .B1 (n_8),
       .C0 (n_30), .Y (n_31));
  OAI211X1HVT g1327__1666(.A0 (edge_count[4]), .A1 (n_17), .B0 (n_27),
       .C0 (n_24), .Y (n_30));
  XNOR2X1HVT g1328__7410(.A (edge_count[3]), .B (n_19), .Y (n_29));
  AND2XLHVT g1329__6417(.A (edge_count[3]), .B (n_19), .Y (n_28));
  INVXLHVT g1330(.A (n_25), .Y (n_27));
  OAI221X1HVT g1331__5477(.A0 (edge_count[2]), .A1 (n_14), .B0
       (Prescale[0]), .B1 (n_18), .C0 (n_22), .Y (n_25));
  XNOR2X1HVT g1332__2398(.A (Prescale[5]), .B (n_15), .Y (n_26));
  NAND2XLHVT g1333__5107(.A (edge_count[4]), .B (n_17), .Y (n_24));
  AOI21XLHVT g1334__6260(.A0 (Prescale[3]), .A1 (n_12), .B0 (n_13), .Y
       (n_23));
  OAI21XLHVT g1335__4319(.A0 (edge_count[0]), .A1 (n_10), .B0
       (Prescale[0]), .Y (n_22));
  AOI21XLHVT g1336__8428(.A0 (bit_count[3]), .A1 (n_5), .B0 (n_16), .Y
       (n_21));
  XNOR2X1HVT g1337__5526(.A (edge_count[2]), .B (n_7), .Y (n_20));
  AOI21XLHVT g1338__6783(.A0 (edge_count[1]), .A1 (Prescale[1]), .B0
       (n_4), .Y (n_18));
  AND2XLHVT g1339__3680(.A (edge_count[2]), .B (n_7), .Y (n_19));
  NOR3XLHVT g1340__1617(.A (bit_count[3]), .B (n_5), .C (n_6), .Y
       (n_16));
  OA21X1HVT g1341__2802(.A0 (n_3), .A1 (n_13), .B0 (n_15), .Y (n_17));
  NAND2XLHVT g1342__1705(.A (n_3), .B (n_13), .Y (n_15));
  XNOR2X1HVT g1343__5122(.A (Prescale[2]), .B (n_8), .Y (n_14));
  NAND2BXLHVT g1344__8246(.AN (Prescale[2]), .B (n_8), .Y (n_12));
  NOR3BXLHVT g1345__7098(.AN (n_8), .B (Prescale[2]), .C (Prescale[3]),
       .Y (n_13));
  AOI22XLHVT g1346__6131(.A0 (edge_count[0]), .A1 (n_0), .B0
       (edge_count[1]), .B1 (n_4), .Y (n_11));
  MX2XLHVT g1347__1881(.A (edge_count[1]), .B (n_0), .S0 (Prescale[1]),
       .Y (n_10));
  MXI2XLHVT g1348__5115(.A (bit_count[1]), .B (n_1), .S0
       (bit_count[0]), .Y (n_9));
  NOR2XLHVT g1349__7482(.A (Prescale[0]), .B (Prescale[1]), .Y (n_8));
  NOR2XLHVT g1350__4733(.A (n_0), .B (n_4), .Y (n_7));
  NAND2X1HVT g1351__6161(.A (bit_count[1]), .B (bit_count[0]), .Y
       (n_6));
  INVXLHVT g1352(.A (bit_count[2]), .Y (n_5));
  INVXLHVT g1353(.A (edge_count[0]), .Y (n_4));
  INVXLHVT g1354(.A (Prescale[4]), .Y (n_3));
  INVX1HVT g1355(.A (edge_count[5]), .Y (n_2));
  INVXLHVT g1356(.A (bit_count[1]), .Y (n_1));
  INVX1HVT g1357(.A (edge_count[1]), .Y (n_0));
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
  wire n_8;
  SDFFRHQX8HVT par_err_reg(.RN (RST), .CK (CLK), .D (par_err), .SI
       (n_8), .SE (Enable), .Q (par_err));
  XOR2XLHVT g163__9315(.A (n_7), .B (n_5), .Y (n_8));
  XNOR2X1HVT g164__9945(.A (n_0), .B (n_6), .Y (n_7));
  XNOR2X1HVT g165__2883(.A (n_4), .B (n_3), .Y (n_6));
  XNOR2X1HVT g166__2346(.A (n_2), .B (n_1), .Y (n_5));
  XNOR2X1HVT g167__1666(.A (P_DATA[7]), .B (P_DATA[0]), .Y (n_4));
  XNOR2X1HVT g168__7410(.A (P_DATA[4]), .B (P_DATA[2]), .Y (n_3));
  XNOR2X1HVT g169__6417(.A (P_DATA[6]), .B (P_DATA[1]), .Y (n_2));
  XNOR2X1HVT g170__5477(.A (sampled_bit), .B (parity_type), .Y (n_1));
  XNOR2X1HVT g171__2398(.A (P_DATA[5]), .B (P_DATA[3]), .Y (n_0));
endmodule

module stp_chk(CLK, RST, sampled_bit, Enable, stp_err);
  input CLK, RST, sampled_bit, Enable;
  output stp_err;
  wire CLK, RST, sampled_bit, Enable;
  wire stp_err;
  wire n_0;
  SDFFRHQX8HVT stp_err_reg(.RN (RST), .CK (CLK), .D (stp_err), .SI
       (n_0), .SE (Enable), .Q (stp_err));
  INVXLHVT g9(.A (sampled_bit), .Y (n_0));
endmodule

module strt_chk(CLK, RST, sampled_bit, Enable, strt_glitch);
  input CLK, RST, sampled_bit, Enable;
  output strt_glitch;
  wire CLK, RST, sampled_bit, Enable;
  wire strt_glitch;
  SDFFRHQX1HVT strt_glitch_reg(.RN (RST), .CK (CLK), .D (strt_glitch),
       .SI (sampled_bit), .SE (Enable), .Q (strt_glitch));
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
  INVXLHVT g2019(.A (n_91), .Y (stp_chk_en));
  INVXLHVT g2017(.A (n_93), .Y (deser_en));
  INVXLHVT g2018(.A (n_92), .Y (par_chk_en));
  NAND3BXLHVT g2128__5107(.AN (current_state[1]), .B (n_63), .C (n_68),
       .Y (dat_samp_en));
  OAI211X1HVT g2129__6260(.A0 (current_state[0]), .A1 (n_7), .B0
       (n_63), .C0 (n_68), .Y (edge_bit_en));
  NAND2XLHVT g2130__4319(.A (n_61), .B (n_68), .Y (strt_chk_en));
  NOR3XLHVT g2131__8428(.A (par_err), .B (stp_err), .C (n_62), .Y
       (data_valid));
  NAND3BXLHVT g2132__5526(.AN (S_DATA), .B (n_7), .C (n_57), .Y (n_68));
  NAND2X1HVT g2133__6783(.A (current_state[1]), .B (n_57), .Y (n_92));
  OR2XLHVT g2134__3680(.A (current_state[1]), .B (n_63), .Y (n_61));
  OR2XLHVT g2135__1617(.A (n_7), .B (n_63), .Y (n_93));
  NAND3BXLHVT g2136__2802(.AN (current_state[0]), .B
       (current_state[1]), .C (current_state[2]), .Y (n_91));
  NAND3X1HVT g2137__1705(.A (current_state[0]), .B (current_state[2]),
       .C (current_state[1]), .Y (n_62));
  NAND2BX1HVT g2138__5122(.AN (current_state[2]), .B
       (current_state[0]), .Y (n_63));
  NOR2X1HVT g2139__8246(.A (current_state[2]), .B (current_state[0]),
       .Y (n_57));
  INVX1HVT g2140(.A (current_state[1]), .Y (n_7));
  DFFRHQX1HVT \current_state_reg[0] (.RN (RST), .CK (CLK), .D (n_55),
       .Q (current_state[0]));
  OAI221X1HVT g3125__7098(.A0 (n_62), .A1 (S_DATA), .B0 (n_61), .B1
       (n_49), .C0 (n_53), .Y (n_55));
  DFFRHQX1HVT \current_state_reg[1] (.RN (RST), .CK (CLK), .D (n_54),
       .Q (current_state[1]));
  OAI211X1HVT g3127__6131(.A0 (current_state[2]), .A1 (n_7), .B0
       (n_91), .C0 (n_50), .Y (n_54));
  INVXLHVT g3128(.A (n_52), .Y (n_53));
  OAI221X1HVT g3129__1881(.A0 (bit_count[2]), .A1 (n_40), .B0 (n_93),
       .B1 (n_48), .C0 (n_68), .Y (n_52));
  DFFRHQX1HVT \current_state_reg[2] (.RN (RST), .CK (CLK), .D (n_51),
       .Q (current_state[2]));
  OAI2BB1X1HVT g3131__5115(.A0N (n_14), .A1N (n_47), .B0 (n_91), .Y
       (n_51));
  NAND3BXLHVT g3132__7482(.AN (bit_count[2]), .B (n_5), .C (n_45), .Y
       (n_50));
  NOR4X1HVT g3133__4733(.A (bit_count[0]), .B (bit_count[2]), .C
       (bit_count[3]), .D (n_44), .Y (n_49));
  NOR2XLHVT g3134__6161(.A (bit_count[0]), .B (n_46), .Y (n_48));
  INVXLHVT g3135(.A (n_46), .Y (n_47));
  NAND3BXLHVT g3136__9315(.AN (bit_count[2]), .B (bit_count[3]), .C
       (n_43), .Y (n_46));
  NOR4BX1HVT g3137__9945(.AN (n_43), .B (bit_count[3]), .C
       (strt_glitch), .D (n_63), .Y (n_45));
  NAND2XLHVT g3138__2883(.A (strt_glitch), .B (n_43), .Y (n_44));
  AOI221X1HVT g3139__2346(.A0 (n_6), .A1 (n_18), .B0 (edge_count[2]),
       .B1 (n_19), .C0 (n_42), .Y (n_43));
  OAI211X1HVT g3140__1666(.A0 (edge_count[3]), .A1 (n_24), .B0 (n_27),
       .C0 (n_41), .Y (n_42));
  AOI211XLHVT g3141__7410(.A0 (edge_count[0]), .A1 (n_11), .B0
       (bit_count[1]), .C0 (n_39), .Y (n_41));
  OR4X1HVT g3142__6417(.A (n_3), .B (n_91), .C (n_29), .D (n_37), .Y
       (n_40));
  OAI211X1HVT g3143__5477(.A0 (n_1), .A1 (n_11), .B0 (n_34), .C0
       (n_38), .Y (n_39));
  AOI221X1HVT g3144__2398(.A0 (edge_count[5]), .A1 (n_0), .B0 (n_2),
       .B1 (n_1), .C0 (n_36), .Y (n_38));
  OAI211X1HVT g3145__5107(.A0 (edge_count[5]), .A1 (n_30), .B0 (n_33),
       .C0 (n_35), .Y (n_37));
  NOR2XLHVT g3146__6260(.A (edge_count[5]), .B (n_0), .Y (n_36));
  AOI221X1HVT g3147__4319(.A0 (edge_count[4]), .A1 (n_25), .B0
       (bit_count[0]), .B1 (parity_enable), .C0 (n_32), .Y (n_35));
  XNOR2X1HVT g3148__8428(.A (edge_count[4]), .B (n_31), .Y (n_34));
  NAND2XLHVT g3149__5526(.A (edge_count[5]), .B (n_30), .Y (n_33));
  OR4X1HVT g3150__6783(.A (n_8), .B (n_11), .C (n_23), .D (n_26), .Y
       (n_32));
  OAI2BB1X1HVT g3152__3680(.A0N (Prescale[4]), .A1N (n_21), .B0 (n_28),
       .Y (n_31));
  OAI22XLHVT g3153__1617(.A0 (edge_count[4]), .A1 (n_25), .B0
       (bit_count[0]), .B1 (bit_count[1]), .Y (n_29));
  XNOR2X1HVT g3154__2802(.A (Prescale[5]), .B (n_22), .Y (n_30));
  NAND2XLHVT g3156__1705(.A (n_1), .B (n_22), .Y (n_28));
  NAND2XLHVT g3157__5122(.A (edge_count[3]), .B (n_24), .Y (n_27));
  OAI221X1HVT g3158__8246(.A0 (edge_count[3]), .A1 (n_17), .B0 (n_6),
       .B1 (n_13), .C0 (n_10), .Y (n_26));
  AOI21XLHVT g3159__7098(.A0 (Prescale[4]), .A1 (n_15), .B0 (n_22), .Y
       (n_25));
  AO22XLHVT g3160__6131(.A0 (edge_count[3]), .A1 (n_17), .B0 (n_6), .B1
       (n_13), .Y (n_23));
  AOI21XLHVT g3161__1881(.A0 (Prescale[3]), .A1 (n_16), .B0 (n_20), .Y
       (n_24));
  NOR2XLHVT g3162__5115(.A (Prescale[4]), .B (n_15), .Y (n_22));
  INVXLHVT g3163(.A (n_20), .Y (n_21));
  NOR2XLHVT g3164__7482(.A (Prescale[0]), .B (n_15), .Y (n_20));
  INVXLHVT g3165(.A (n_18), .Y (n_19));
  NAND2XLHVT g3166__4733(.A (n_12), .B (n_16), .Y (n_18));
  OA21X1HVT g3167__6161(.A0 (n_4), .A1 (n_9), .B0 (n_15), .Y (n_17));
  NAND2XLHVT g3168__9315(.A (n_1), .B (n_9), .Y (n_16));
  NAND2XLHVT g3169__9945(.A (n_4), .B (n_9), .Y (n_15));
  OAI32X1HVT g3170__2883(.A0 (bit_count[0]), .A1 (n_93), .A2
       (parity_enable), .B0 (n_5), .B1 (n_92), .Y (n_14));
  OAI21XLHVT g3171__2346(.A0 (Prescale[1]), .A1 (Prescale[0]), .B0
       (Prescale[2]), .Y (n_12));
  AO21X1HVT g3172__1666(.A0 (Prescale[1]), .A1 (Prescale[2]), .B0
       (n_9), .Y (n_13));
  AOI22XLHVT g3173__7410(.A0 (n_2), .A1 (Prescale[0]), .B0
       (edge_count[0]), .B1 (n_1), .Y (n_10));
  XNOR2X1HVT g3174__6417(.A (edge_count[1]), .B (Prescale[1]), .Y
       (n_11));
  NOR2XLHVT g3175__5477(.A (Prescale[1]), .B (Prescale[2]), .Y (n_9));
  NOR2BX1HVT g3176__2398(.AN (bit_count[1]), .B (parity_enable), .Y
       (n_8));
  INVX1HVT g3178(.A (edge_count[2]), .Y (n_6));
  INVXLHVT g3179(.A (bit_count[0]), .Y (n_5));
  INVXLHVT g3180(.A (Prescale[3]), .Y (n_4));
  INVXLHVT g3181(.A (bit_count[3]), .Y (n_3));
  INVXLHVT g3182(.A (edge_count[0]), .Y (n_2));
  INVX1HVT g3183(.A (Prescale[0]), .Y (n_1));
  XOR2XLHVT g2__5107(.A (Prescale[5]), .B (n_28), .Y (n_0));
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
  AND3XLHVT g373__6260(.A (ser_count[0]), .B (ser_count[1]), .C
       (ser_count[2]), .Y (ser_done));
  DFFRHQX1HVT \ser_count_reg[2] (.RN (RST), .CK (CLK), .D (n_23), .Q
       (ser_count[2]));
  DFFRHQX1HVT \DATA_V_reg[1] (.RN (RST), .CK (CLK), .D (n_19), .Q
       (DATA_V[1]));
  DFFRHQX1HVT \DATA_V_reg[6] (.RN (RST), .CK (CLK), .D (n_20), .Q
       (DATA_V[6]));
  DFFRHQX1HVT \DATA_V_reg[0] (.RN (RST), .CK (CLK), .D (n_18), .Q
       (ser_out));
  DFFRHQX1HVT \DATA_V_reg[2] (.RN (RST), .CK (CLK), .D (n_22), .Q
       (DATA_V[2]));
  AND2XLHVT g631__4319(.A (n_12), .B (Enable), .Y (n_23));
  DFFRHQX1HVT \DATA_V_reg[4] (.RN (RST), .CK (CLK), .D (n_15), .Q
       (DATA_V[4]));
  DFFRHQX1HVT \DATA_V_reg[3] (.RN (RST), .CK (CLK), .D (n_21), .Q
       (DATA_V[3]));
  DFFRHQX1HVT \DATA_V_reg[5] (.RN (RST), .CK (CLK), .D (n_17), .Q
       (DATA_V[5]));
  OAI2BB1X1HVT g635__8428(.A0N (DATA_V[2]), .A1N (n_3), .B0 (n_9), .Y
       (n_22));
  OAI2BB1X1HVT g636__5526(.A0N (DATA_V[4]), .A1N (n_4), .B0 (n_7), .Y
       (n_21));
  OAI2BB1X1HVT g637__6783(.A0N (DATA_V[6]), .A1N (n_3), .B0 (n_11), .Y
       (n_20));
  DFFRHQX1HVT \DATA_V_reg[7] (.RN (RST), .CK (CLK), .D (n_10), .Q
       (DATA_V[7]));
  DFFRHQX1HVT \ser_count_reg[1] (.RN (RST), .CK (CLK), .D (n_8), .Q
       (ser_count[1]));
  INVXLHVT g640(.A (n_16), .Y (n_19));
  INVXLHVT g641(.A (n_14), .Y (n_18));
  INVXLHVT g642(.A (n_13), .Y (n_17));
  AOI222X1HVT g643__3680(.A0 (DATA_V[2]), .A1 (n_4), .B0 (DATA[1]), .B1
       (n_1), .C0 (DATA_V[1]), .C1 (n_3), .Y (n_16));
  OAI2BB1X1HVT g644__1617(.A0N (DATA_V[5]), .A1N (n_4), .B0 (n_6), .Y
       (n_15));
  AOI222X1HVT g645__2802(.A0 (DATA_V[1]), .A1 (n_4), .B0 (DATA[0]), .B1
       (n_1), .C0 (ser_out), .C1 (n_3), .Y (n_14));
  AOI222X1HVT g646__1705(.A0 (DATA_V[6]), .A1 (n_4), .B0 (DATA[5]), .B1
       (n_1), .C0 (DATA_V[5]), .C1 (n_3), .Y (n_13));
  XNOR2X1HVT g647__5122(.A (ser_count[2]), .B (n_2), .Y (n_12));
  AOI22XLHVT g648__8246(.A0 (DATA_V[7]), .A1 (n_4), .B0 (DATA[6]), .B1
       (n_1), .Y (n_11));
  AO22XLHVT g649__7098(.A0 (DATA_V[7]), .A1 (n_3), .B0 (DATA[7]), .B1
       (n_1), .Y (n_10));
  AOI22XLHVT g650__6131(.A0 (DATA_V[3]), .A1 (n_4), .B0 (DATA[2]), .B1
       (n_1), .Y (n_9));
  INVXLHVT g651(.A (n_5), .Y (n_8));
  AOI22XLHVT g652__1881(.A0 (DATA_V[3]), .A1 (n_3), .B0 (DATA[3]), .B1
       (n_1), .Y (n_7));
  AOI22XLHVT g653__5115(.A0 (DATA_V[4]), .A1 (n_3), .B0 (DATA[4]), .B1
       (n_1), .Y (n_6));
  OAI211X1HVT g654__7482(.A0 (ser_count[0]), .A1 (ser_count[1]), .B0
       (n_2), .C0 (Enable), .Y (n_5));
  DFFRHQX1HVT \ser_count_reg[0] (.RN (RST), .CK (CLK), .D (n_0), .Q
       (ser_count[0]));
  NOR2BX1HVT g656__4733(.AN (Enable), .B (n_1), .Y (n_4));
  NOR2X1HVT g657__6161(.A (Enable), .B (n_1), .Y (n_3));
  NAND2X1HVT g658__9315(.A (ser_count[0]), .B (ser_count[1]), .Y (n_2));
  NOR2BX1HVT g659__9945(.AN (Enable), .B (ser_count[0]), .Y (n_0));
  NOR2BX1HVT g660__2883(.AN (Data_Valid), .B (Busy), .Y (n_1));
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
  INVX1HVT g330(.A (n_20), .Y (Ser_enable));
  INVX1HVT g329(.A (Data_Valid), .Y (n_9));
  OAI211X1HVT g409__2346(.A0 (n_6), .A1 (n_7), .B0 (n_16), .C0 (n_13),
       .Y (mux_sel[0]));
  DFFRHQX1HVT busy_reg(.RN (RST), .CK (CLK), .D (n_8), .Q (busy));
  OR2XLHVT g411__1666(.A (ser_done), .B (n_16), .Y (n_20));
  OR3XLHVT g412__7410(.A (current_state[1]), .B (current_state[2]), .C
       (current_state[0]), .Y (n_13));
  NAND3X1HVT g413__6417(.A (current_state[1]), .B (current_state[0]),
       .C (n_6), .Y (n_16));
  AOI2BB1X1HVT g414__5477(.A0N (current_state[1]), .A1N (n_6), .B0
       (current_state[0]), .Y (mux_sel[1]));
  OAI2BB1X1HVT g415__2398(.A0N (current_state[0]), .A1N (n_6), .B0
       (n_7), .Y (n_8));
  NAND2BX1HVT g416__5107(.AN (current_state[0]), .B (current_state[1]),
       .Y (n_7));
  DFFRHQX1HVT \current_state_reg[0] (.RN (RST), .CK (CLK), .D (n_5), .Q
       (current_state[0]));
  OAI221X1HVT g392__6260(.A0 (current_state[1]), .A1 (n_2), .B0 (n_13),
       .B1 (n_9), .C0 (n_20), .Y (n_5));
  OAI32X1HVT g393__4319(.A0 (n_0), .A1 (n_16), .A2 (parity_enable), .B0
       (n_1), .B1 (n_2), .Y (n_4));
  DFFRHQX1HVT \current_state_reg[1] (.RN (RST), .CK (CLK), .D (n_3), .Q
       (current_state[1]));
  INVXLHVT g395(.A (n_2), .Y (n_3));
  NAND2BX1HVT g396__8428(.AN (current_state[2]), .B (n_13), .Y (n_2));
  NAND2XLHVT g397__5526(.A (current_state[1]), .B (n_16), .Y (n_1));
  INVXLHVT g398(.A (ser_done), .Y (n_0));
  DFFRX1HVT \current_state_reg[2] (.RN (RST), .CK (CLK), .D (n_4), .Q
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
  DFFRHQX8HVT OUT_reg(.RN (RST), .CK (CLK), .D (n_1), .Q (OUT));
  OAI2BB1X1HVT g40__6783(.A0N (IN_2), .A1N (SEL[1]), .B0 (n_0), .Y
       (n_1));
  OAI21XLHVT g41__3680(.A0 (IN_1), .A1 (SEL[1]), .B0 (SEL[0]), .Y
       (n_0));
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
  SDFFRHQX1HVT parity_reg(.RN (RST), .CK (CLK), .D (parity), .SI (n_8),
       .SE (parity_enable), .Q (parity));
  XNOR2X1HVT g369__1617(.A (DATA_V[2]), .B (n_7), .Y (n_8));
  XNOR2X1HVT g370__2802(.A (DATA_V[4]), .B (n_6), .Y (n_7));
  XNOR2X1HVT g371__1705(.A (DATA_V[0]), .B (n_5), .Y (n_6));
  XNOR2X1HVT g372__5122(.A (DATA_V[7]), .B (n_4), .Y (n_5));
  XNOR2X1HVT g373__8246(.A (DATA_V[1]), .B (n_3), .Y (n_4));
  XNOR2X1HVT g374__7098(.A (DATA_V[6]), .B (n_2), .Y (n_3));
  SDFFRHQX1HVT \DATA_V_reg[5] (.RN (RST), .CK (CLK), .D (DATA[5]), .SI
       (DATA_V[5]), .SE (n_0), .Q (DATA_V[5]));
  SDFFRHQX1HVT \DATA_V_reg[3] (.RN (RST), .CK (CLK), .D (DATA[3]), .SI
       (DATA_V[3]), .SE (n_0), .Q (DATA_V[3]));
  SDFFRHQX1HVT \DATA_V_reg[2] (.RN (RST), .CK (CLK), .D (DATA[2]), .SI
       (DATA_V[2]), .SE (n_0), .Q (DATA_V[2]));
  SDFFRHQX1HVT \DATA_V_reg[6] (.RN (RST), .CK (CLK), .D (DATA[6]), .SI
       (DATA_V[6]), .SE (n_0), .Q (DATA_V[6]));
  XNOR2X1HVT g379__6131(.A (DATA_V[3]), .B (n_1), .Y (n_2));
  SDFFRHQX1HVT \DATA_V_reg[4] (.RN (RST), .CK (CLK), .D (DATA[4]), .SI
       (DATA_V[4]), .SE (n_0), .Q (DATA_V[4]));
  SDFFRHQX1HVT \DATA_V_reg[7] (.RN (RST), .CK (CLK), .D (DATA[7]), .SI
       (DATA_V[7]), .SE (n_0), .Q (DATA_V[7]));
  SDFFRHQX1HVT \DATA_V_reg[0] (.RN (RST), .CK (CLK), .D (DATA[0]), .SI
       (DATA_V[0]), .SE (n_0), .Q (DATA_V[0]));
  SDFFRHQX1HVT \DATA_V_reg[1] (.RN (RST), .CK (CLK), .D (DATA[1]), .SI
       (DATA_V[1]), .SE (n_0), .Q (DATA_V[1]));
  XNOR2X1HVT g384__1881(.A (DATA_V[5]), .B (parity_type), .Y (n_1));
  NAND2BX1HVT g385__5115(.AN (Busy), .B (Data_Valid), .Y (n_0));
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

