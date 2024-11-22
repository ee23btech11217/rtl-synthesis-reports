
// Generated by Cadence Genus(TM) Synthesis Solution 20.10-p001_1
// Generated on: Nov 21 2024 21:46:10 IST (Nov 21 2024 16:16:10 UTC)

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
  wire n_40, n_41, n_42, n_43;
  DFFRHQX1 sampled_bit_reg(.RN (RST), .CK (CLK), .D (n_43), .Q
       (sampled_bit));
  NOR2BX1 g947__2398(.AN (Enable), .B (n_42), .Y (n_43));
  AOI22X1 g948__5107(.A0 (Samples[2]), .A1 (n_41), .B0 (Samples[1]),
       .B1 (Samples[0]), .Y (n_42));
  OR2XL g949__6260(.A (Samples[1]), .B (Samples[0]), .Y (n_41));
  DFFRHQX1 \Samples_reg[0] (.RN (RST), .CK (CLK), .D (n_40), .Q
       (Samples[0]));
  NOR2BX1 g1620__4319(.AN (Enable), .B (n_39), .Y (n_40));
  MXI2XL g1621__8428(.A (Samples[0]), .B (S_DATA), .S0 (n_38), .Y
       (n_39));
  NOR4X1 g1622__5526(.A (n_7), .B (n_6), .C (edge_count[5]), .D (n_36),
       .Y (n_38));
  DFFRHQX1 \Samples_reg[1] (.RN (RST), .CK (CLK), .D (n_37), .Q
       (Samples[1]));
  NOR2BX1 g1624__6783(.AN (Enable), .B (n_35), .Y (n_37));
  OAI211X1 g1625__3680(.A0 (n_20), .A1 (n_25), .B0 (n_31), .C0 (n_34),
       .Y (n_36));
  MXI2XL g1626__1617(.A (Samples[1]), .B (S_DATA), .S0 (n_33), .Y
       (n_35));
  NOR2X1 g1627__2802(.A (n_27), .B (n_32), .Y (n_34));
  NOR3BX1 g1628__1705(.AN (n_6), .B (edge_count[5]), .C (n_30), .Y
       (n_33));
  XNOR2X1 g1629__5122(.A (n_26), .B (edge_count[3]), .Y (n_32));
  DFFRHQX1 \Samples_reg[2] (.RN (RST), .CK (CLK), .D (n_29), .Q
       (Samples[2]));
  NAND2XL g1631__8246(.A (n_20), .B (n_25), .Y (n_31));
  OAI211X1 g1632__7098(.A0 (n_16), .A1 (edge_count[2]), .B0 (n_19), .C0
       (n_24), .Y (n_30));
  OAI2BB1X1 g1633__6131(.A0N (S_DATA), .A1N (n_23), .B0 (n_28), .Y
       (n_29));
  NAND3BXL g1634__1881(.AN (n_23), .B (Enable), .C (Samples[2]), .Y
       (n_28));
  XNOR2X1 g1635__5115(.A (n_21), .B (edge_count[2]), .Y (n_27));
  AOI21XL g1636__7482(.A0 (n_12), .A1 (n_18), .B0 (n_25), .Y (n_26));
  NOR2XL g1637__4733(.A (n_12), .B (n_18), .Y (n_25));
  AOI221X1 g1638__6161(.A0 (n_17), .A1 (edge_count[3]), .B0 (n_12), .B1
       (n_1), .C0 (n_22), .Y (n_24));
  NOR4BX1 g1639__9315(.AN (Enable), .B (n_6), .C (n_15), .D
       (edge_count[5]), .Y (n_23));
  OAI211X1 g1640__9945(.A0 (n_10), .A1 (edge_count[1]), .B0 (n_14), .C0
       (n_20), .Y (n_22));
  OA21X1 g1641__2883(.A0 (n_16), .A1 (n_13), .B0 (n_18), .Y (n_21));
  XNOR2X1 g1642__2346(.A (n_8), .B (n_11), .Y (n_20));
  NAND2XL g1643__1666(.A (n_16), .B (edge_count[2]), .Y (n_19));
  NAND2XL g1644__7410(.A (n_16), .B (n_13), .Y (n_18));
  INVX1 g1645(.A (n_12), .Y (n_17));
  AOI21XL g1646__6417(.A0 (Prescale[3]), .A1 (n_3), .B0 (n_9), .Y
       (n_16));
  NAND4XL g1647__5477(.A (n_5), .B (n_4), .C (n_7), .D (n_8), .Y
       (n_15));
  NAND2XL g1648__2398(.A (n_10), .B (edge_count[1]), .Y (n_14));
  AND2X1 g1649__5107(.A (n_10), .B (Prescale[1]), .Y (n_13));
  OAI21XL g1650__6260(.A0 (n_0), .A1 (n_9), .B0 (n_11), .Y (n_12));
  NAND2XL g1651__4319(.A (n_0), .B (n_9), .Y (n_11));
  AOI21XL g1652__8428(.A0 (Prescale[1]), .A1 (Prescale[2]), .B0 (n_2),
       .Y (n_10));
  NOR3XL g1653__5526(.A (Prescale[2]), .B (Prescale[1]), .C
       (Prescale[3]), .Y (n_9));
  XNOR2X1 g1654__6783(.A (Prescale[5]), .B (edge_count[4]), .Y (n_8));
  XNOR2X1 g1655__3680(.A (Prescale[3]), .B (edge_count[2]), .Y (n_5));
  AOI22XL g1656__1617(.A0 (Prescale[4]), .A1 (n_1), .B0 (n_0), .B1
       (edge_count[3]), .Y (n_4));
  XNOR2X1 g1657__2802(.A (Prescale[2]), .B (edge_count[1]), .Y (n_7));
  CLKXOR2X1 g1658__1705(.A (Prescale[1]), .B (edge_count[0]), .Y (n_6));
  INVXL g1659(.A (n_2), .Y (n_3));
  NOR2XL g1660__5122(.A (Prescale[2]), .B (Prescale[1]), .Y (n_2));
  INVX1 g1661(.A (edge_count[3]), .Y (n_1));
  INVX1 g1662(.A (Prescale[4]), .Y (n_0));
endmodule

module deserializer_DATA_WIDTH8(CLK, RST, sampled_bit, Enable,
     edge_count, Prescale, P_DATA);
  input CLK, RST, sampled_bit, Enable;
  input [5:0] edge_count, Prescale;
  output [7:0] P_DATA;
  wire CLK, RST, sampled_bit, Enable;
  wire [5:0] edge_count, Prescale;
  wire [7:0] P_DATA;
  wire \P_DATA[0]_59 , \P_DATA[1]_60 , \P_DATA[2]_61 , \P_DATA[3]_62 ,
       \P_DATA[4]_63 , \P_DATA[5]_64 , \P_DATA[6]_65 , \P_DATA[7]_66 ;
  wire n_8, n_9, n_10, n_11, n_12, n_13, n_14, n_15;
  wire n_16, n_17, n_18, n_19, n_20, n_21, n_22, n_23;
  wire n_24, n_25, n_26, n_27;
  SDFFRHQX1 \P_DATA_reg[0] (.RN (RST), .CK (CLK), .D (\P_DATA[1]_60 ),
       .SI (\P_DATA[0]_59 ), .SE (n_27), .Q (\P_DATA[0]_59 ));
  SDFFRHQX1 \P_DATA_reg[1] (.RN (RST), .CK (CLK), .D (\P_DATA[2]_61 ),
       .SI (\P_DATA[1]_60 ), .SE (n_27), .Q (\P_DATA[1]_60 ));
  SDFFRHQX1 \P_DATA_reg[2] (.RN (RST), .CK (CLK), .D (\P_DATA[3]_62 ),
       .SI (\P_DATA[2]_61 ), .SE (n_27), .Q (\P_DATA[2]_61 ));
  SDFFRHQX1 \P_DATA_reg[3] (.RN (RST), .CK (CLK), .D (\P_DATA[4]_63 ),
       .SI (\P_DATA[3]_62 ), .SE (n_27), .Q (\P_DATA[3]_62 ));
  SDFFRHQX1 \P_DATA_reg[6] (.RN (RST), .CK (CLK), .D (\P_DATA[7]_66 ),
       .SI (\P_DATA[6]_65 ), .SE (n_27), .Q (\P_DATA[6]_65 ));
  SDFFRHQX1 \P_DATA_reg[5] (.RN (RST), .CK (CLK), .D (\P_DATA[6]_65 ),
       .SI (\P_DATA[5]_64 ), .SE (n_27), .Q (\P_DATA[5]_64 ));
  SDFFRHQX1 \P_DATA_reg[4] (.RN (RST), .CK (CLK), .D (\P_DATA[5]_64 ),
       .SI (\P_DATA[4]_63 ), .SE (n_27), .Q (\P_DATA[4]_63 ));
  SDFFRHQX1 \P_DATA_reg[7] (.RN (RST), .CK (CLK), .D (sampled_bit), .SI
       (\P_DATA[7]_66 ), .SE (n_27), .Q (\P_DATA[7]_66 ));
  OR4X1 g619__8246(.A (n_20), .B (n_23), .C (n_26), .D (n_8), .Y
       (n_27));
  OAI221X1 g620__7098(.A0 (n_17), .A1 (edge_count[5]), .B0
       (Prescale[0]), .B1 (edge_count[0]), .C0 (n_25), .Y (n_26));
  AOI21X1 g621__6131(.A0 (n_17), .A1 (edge_count[5]), .B0 (n_24), .Y
       (n_25));
  OAI211X1 g622__1881(.A0 (n_11), .A1 (edge_count[1]), .B0 (n_16), .C0
       (n_22), .Y (n_24));
  XNOR2X1 g623__5115(.A (n_21), .B (edge_count[4]), .Y (n_23));
  AOI221X1 g624__7482(.A0 (n_18), .A1 (edge_count[2]), .B0
       (Prescale[0]), .B1 (edge_count[0]), .C0 (n_19), .Y (n_22));
  AOI21XL g625__4733(.A0 (Prescale[4]), .A1 (n_14), .B0 (n_13), .Y
       (n_21));
  XNOR2X1 g626__6161(.A (n_15), .B (edge_count[3]), .Y (n_20));
  NOR2XL g627__9315(.A (n_18), .B (edge_count[2]), .Y (n_19));
  AOI21XL g628__9945(.A0 (Prescale[2]), .A1 (n_10), .B0 (n_12), .Y
       (n_18));
  XNOR2X1 g629__2883(.A (Prescale[5]), .B (n_13), .Y (n_17));
  NAND2X1 g630__2346(.A (n_11), .B (edge_count[1]), .Y (n_16));
  XNOR2X1 g631__1666(.A (Prescale[3]), .B (n_12), .Y (n_15));
  NAND2BXL g632__7410(.AN (Prescale[3]), .B (n_12), .Y (n_14));
  NOR3BXL g633__6417(.AN (n_12), .B (Prescale[3]), .C (Prescale[4]), .Y
       (n_13));
  NOR3XL g634__5477(.A (Prescale[1]), .B (Prescale[0]), .C
       (Prescale[2]), .Y (n_12));
  AOI21XL g635__2398(.A0 (Prescale[0]), .A1 (Prescale[1]), .B0 (n_9),
       .Y (n_11));
  INVXL g636(.A (n_9), .Y (n_10));
  NOR2XL g637__5107(.A (Prescale[1]), .B (Prescale[0]), .Y (n_9));
  INVXL g638(.A (Enable), .Y (n_8));
  BUFX12 drc_bufs641(.A (\P_DATA[1]_60 ), .Y (P_DATA[1]));
  BUFX12 drc_bufs644(.A (\P_DATA[3]_62 ), .Y (P_DATA[3]));
  BUFX12 drc_bufs647(.A (\P_DATA[2]_61 ), .Y (P_DATA[2]));
  BUFX12 drc_bufs650(.A (\P_DATA[5]_64 ), .Y (P_DATA[5]));
  BUFX12 drc_bufs653(.A (\P_DATA[4]_63 ), .Y (P_DATA[4]));
  BUFX12 drc_bufs656(.A (\P_DATA[7]_66 ), .Y (P_DATA[7]));
  BUFX12 drc_bufs659(.A (\P_DATA[6]_65 ), .Y (P_DATA[6]));
  BUFX12 drc_bufs662(.A (\P_DATA[0]_59 ), .Y (P_DATA[0]));
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
  OAI21X1 g1297__6260(.A0 (n_38), .A1 (n_22), .B0 (n_49), .Y (n_52));
  OAI31X1 g1298__4319(.A0 (n_38), .A1 (bit_count[2]), .A2 (n_6), .B0
       (n_50), .Y (n_51));
  DFFRX1 \edge_count_reg[5] (.RN (RST), .CK (CLK), .D (n_47), .Q
       (edge_count[5]), .QN (n_1));
  NAND2X1 g1301__8428(.A (n_48), .B (bit_count[2]), .Y (n_50));
  NAND2X1 g1302__5526(.A (n_48), .B (bit_count[3]), .Y (n_49));
  DFFRX1 \edge_count_reg[1] (.RN (RST), .CK (CLK), .D (n_40), .Q
       (edge_count[1]), .QN (n_0));
  NOR2XL g1308__6783(.A (n_36), .B (n_39), .Y (n_47));
  MXI2XL g1309__3680(.A (n_38), .B (n_36), .S0 (bit_count[0]), .Y
       (n_46));
  OAI22X1 g1310__1617(.A0 (n_38), .A1 (n_10), .B0 (n_36), .B1 (n_3), .Y
       (n_45));
  OAI2BB1X1 g1311__2802(.A0N (n_37), .A1N (n_6), .B0 (n_36), .Y (n_48));
  DFFRX1 \edge_count_reg[0] (.RN (RST), .CK (CLK), .D (n_44), .Q
       (edge_count[0]), .QN (n_2));
  NOR2XL g1313__1705(.A (n_36), .B (edge_count[0]), .Y (n_44));
  NOR2XL g1314__5122(.A (n_36), .B (n_29), .Y (n_43));
  NOR2XL g1315__8246(.A (n_36), .B (n_21), .Y (n_42));
  NOR2XL g1316__7098(.A (n_36), .B (n_33), .Y (n_41));
  NOR2XL g1317__6131(.A (n_36), .B (n_11), .Y (n_40));
  XNOR2X1 g1318__1881(.A (edge_count[5]), .B (n_32), .Y (n_39));
  INVXL g1319(.A (n_38), .Y (n_37));
  NAND2X1 g1320__5115(.A (Enable), .B (n_35), .Y (n_38));
  NAND2BX1 g1321__7482(.AN (n_35), .B (Enable), .Y (n_36));
  AOI221X1 g1322__4733(.A0 (n_24), .A1 (edge_count[3]), .B0 (n_14), .B1
       (edge_count[2]), .C0 (n_34), .Y (n_35));
  OAI221X1 g1323__6161(.A0 (n_27), .A1 (n_1), .B0 (n_24), .B1
       (edge_count[3]), .C0 (n_31), .Y (n_34));
  XNOR2X1 g1324__9315(.A (edge_count[4]), .B (n_28), .Y (n_33));
  AND2XL g1325__9945(.A (edge_count[4]), .B (n_28), .Y (n_32));
  AOI221X1 g1326__2883(.A0 (n_27), .A1 (n_1), .B0 (n_9), .B1 (n_0), .C0
       (n_30), .Y (n_31));
  OAI211X1 g1327__2346(.A0 (n_18), .A1 (edge_count[4]), .B0 (n_26), .C0
       (n_25), .Y (n_30));
  XNOR2X1 g1328__1666(.A (edge_count[3]), .B (n_20), .Y (n_29));
  AND2XL g1329__7410(.A (edge_count[3]), .B (n_20), .Y (n_28));
  AOI21X1 g1330__6417(.A0 (Prescale[0]), .A1 (n_19), .B0 (n_23), .Y
       (n_26));
  XNOR2X1 g1331__5477(.A (Prescale[5]), .B (n_15), .Y (n_27));
  NAND2X1 g1332__2398(.A (n_18), .B (edge_count[4]), .Y (n_25));
  OAI22X1 g1333__5107(.A0 (n_14), .A1 (edge_count[2]), .B0
       (Prescale[0]), .B1 (n_17), .Y (n_23));
  AOI21XL g1334__6260(.A0 (Prescale[3]), .A1 (n_12), .B0 (n_13), .Y
       (n_24));
  AOI21X1 g1335__4319(.A0 (bit_count[3]), .A1 (n_5), .B0 (n_16), .Y
       (n_22));
  XNOR2X1 g1336__8428(.A (edge_count[2]), .B (n_7), .Y (n_21));
  OAI211X1 g1337__5526(.A0 (Prescale[1]), .A1 (n_0), .B0 (n_8), .C0
       (n_2), .Y (n_19));
  AND2XL g1338__6783(.A (edge_count[2]), .B (n_7), .Y (n_20));
  AOI21X1 g1339__3680(.A0 (Prescale[1]), .A1 (edge_count[1]), .B0
       (n_2), .Y (n_17));
  NOR3X1 g1340__1617(.A (bit_count[3]), .B (n_5), .C (n_6), .Y (n_16));
  OA21X1 g1341__2802(.A0 (n_4), .A1 (n_13), .B0 (n_15), .Y (n_18));
  NAND2XL g1342__1705(.A (n_4), .B (n_13), .Y (n_15));
  XNOR2X1 g1343__5122(.A (Prescale[2]), .B (n_9), .Y (n_14));
  NAND2BXL g1344__8246(.AN (Prescale[2]), .B (n_9), .Y (n_12));
  NOR3BXL g1345__7098(.AN (n_9), .B (Prescale[2]), .C (Prescale[3]), .Y
       (n_13));
  AOI22X1 g1346__6131(.A0 (edge_count[0]), .A1 (n_0), .B0
       (edge_count[1]), .B1 (n_2), .Y (n_11));
  MX2XL g1347__1881(.A (n_3), .B (bit_count[1]), .S0 (bit_count[0]), .Y
       (n_10));
  NAND2X1 g1348__5115(.A (Prescale[1]), .B (n_0), .Y (n_8));
  NOR2XL g1349__7482(.A (Prescale[1]), .B (Prescale[0]), .Y (n_9));
  NOR2X1 g1350__4733(.A (n_0), .B (n_2), .Y (n_7));
  NAND2X1 g1351__6161(.A (bit_count[1]), .B (bit_count[0]), .Y (n_6));
  INVX1 g1354(.A (Prescale[4]), .Y (n_4));
  DFFRX1 \bit_count_reg[2] (.RN (RST), .CK (CLK), .D (n_51), .Q
       (bit_count[2]), .QN (n_5));
  DFFRX1 \bit_count_reg[1] (.RN (RST), .CK (CLK), .D (n_45), .Q
       (bit_count[1]), .QN (n_3));
  DFFRHQX1 \edge_count_reg[4] (.RN (RST), .CK (CLK), .D (n_41), .Q
       (edge_count[4]));
  DFFRHQX1 \edge_count_reg[2] (.RN (RST), .CK (CLK), .D (n_42), .Q
       (edge_count[2]));
  DFFRHQX1 \edge_count_reg[3] (.RN (RST), .CK (CLK), .D (n_43), .Q
       (edge_count[3]));
  DFFRHQX1 \bit_count_reg[0] (.RN (RST), .CK (CLK), .D (n_46), .Q
       (bit_count[0]));
endmodule

module par_chk_DATA_WIDTH8(CLK, RST, parity_type, sampled_bit, Enable,
     P_DATA, par_err);
  input CLK, RST, parity_type, sampled_bit, Enable;
  input [7:0] P_DATA;
  output par_err;
  wire CLK, RST, parity_type, sampled_bit, Enable;
  wire [7:0] P_DATA;
  wire par_err;
  wire n_4, n_5, n_6, n_7, n_8, n_9, n_10, n_11;
  wire n_12;
  SDFFRHQX1 par_err_reg(.RN (RST), .CK (CLK), .D (par_err), .SI (n_12),
       .SE (Enable), .Q (par_err));
  XOR2XL g163__9315(.A (n_9), .B (n_11), .Y (n_12));
  XNOR2X1 g164__9945(.A (n_4), .B (n_10), .Y (n_11));
  XNOR2X1 g165__2883(.A (n_8), .B (n_7), .Y (n_10));
  XNOR2X1 g166__2346(.A (n_5), .B (n_6), .Y (n_9));
  XNOR2X1 g167__1666(.A (P_DATA[7]), .B (P_DATA[0]), .Y (n_8));
  XNOR2X1 g168__7410(.A (P_DATA[4]), .B (P_DATA[2]), .Y (n_7));
  XNOR2X1 g169__6417(.A (P_DATA[6]), .B (P_DATA[1]), .Y (n_6));
  XNOR2X1 g170__5477(.A (sampled_bit), .B (parity_type), .Y (n_5));
  XNOR2X1 g171__2398(.A (P_DATA[5]), .B (P_DATA[3]), .Y (n_4));
endmodule

module stp_chk(CLK, RST, sampled_bit, Enable, stp_err);
  input CLK, RST, sampled_bit, Enable;
  output stp_err;
  wire CLK, RST, sampled_bit, Enable;
  wire stp_err;
  wire n_0;
  SDFFRHQX1 stp_err_reg(.RN (RST), .CK (CLK), .D (stp_err), .SI (n_0),
       .SE (Enable), .Q (stp_err));
  INVX1 g9(.A (sampled_bit), .Y (n_0));
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
  wire n_56, n_57, n_58, n_62, n_63, n_64, n_65, n_66;
  INVX1 g1266(.A (n_63), .Y (par_chk_en));
  INVXL g1265(.A (n_64), .Y (deser_en));
  INVX1 g1267(.A (n_62), .Y (stp_chk_en));
  NAND3BXL g1409__5107(.AN (current_state[1]), .B (n_66), .C (n_58), .Y
       (dat_samp_en));
  OAI211X1 g1410__6260(.A0 (current_state[0]), .A1 (n_55), .B0 (n_66),
       .C0 (n_58), .Y (edge_bit_en));
  NAND2X1 g1411__4319(.A (n_66), .B (n_65), .Y (strt_chk_en));
  AND4XL g1412__8428(.A (current_state[2]), .B (current_state[0]), .C
       (current_state[1]), .D (n_56), .Y (data_valid));
  NAND3BX1 g1413__5526(.AN (S_DATA), .B (n_55), .C (n_57), .Y (n_66));
  NAND2X1 g1414__6783(.A (current_state[1]), .B (n_57), .Y (n_63));
  OR2X1 g1415__3680(.A (current_state[1]), .B (n_58), .Y (n_65));
  OR2X1 g1416__1617(.A (n_55), .B (n_58), .Y (n_64));
  NAND3BXL g1417__2802(.AN (current_state[0]), .B (current_state[2]),
       .C (current_state[1]), .Y (n_62));
  NAND2BX1 g1418__1705(.AN (current_state[2]), .B (current_state[0]),
       .Y (n_58));
  NOR2XL g1419__5122(.A (par_err), .B (stp_err), .Y (n_56));
  NOR2X1 g1420__8246(.A (current_state[0]), .B (current_state[2]), .Y
       (n_57));
  DFFRHQX1 \current_state_reg[0] (.RN (RST), .CK (CLK), .D (n_54), .Q
       (current_state[0]));
  OAI211X1 g2364__7098(.A0 (n_65), .A1 (n_50), .B0 (n_66), .C0 (n_52),
       .Y (n_54));
  NAND4XL g2365__6131(.A (n_62), .B (n_63), .C (n_64), .D (n_51), .Y
       (n_53));
  AOI31X1 g2366__1881(.A0 (n_48), .A1 (current_state[1]), .A2
       (current_state[0]), .B0 (n_41), .Y (n_52));
  OR3XL g2367__5115(.A (strt_glitch), .B (n_65), .C (n_49), .Y (n_51));
  NOR2BX1 g2368__7482(.AN (strt_glitch), .B (n_49), .Y (n_50));
  OAI22X1 g2370__4733(.A0 (n_64), .A1 (n_45), .B0 (S_DATA), .B1 (n_4),
       .Y (n_48));
  NAND2X1 g2371__6161(.A (n_3), .B (n_46), .Y (n_49));
  OAI2BB1X1 g2372__9315(.A0N (n_12), .A1N (n_44), .B0 (n_62), .Y
       (n_47));
  NOR4X1 g2373__9945(.A (bit_count[2]), .B (bit_count[3]), .C
       (bit_count[1]), .D (n_43), .Y (n_46));
  NOR2BX1 g2374__2883(.AN (n_44), .B (bit_count[0]), .Y (n_45));
  NOR2BX1 g2375__2346(.AN (n_11), .B (n_43), .Y (n_44));
  OR2XL g2376__1666(.A (n_9), .B (n_42), .Y (n_43));
  OAI211X1 g2377__7410(.A0 (n_21), .A1 (edge_count[2]), .B0 (n_36), .C0
       (n_40), .Y (n_42));
  NOR2X1 g2378__6417(.A (n_62), .B (n_39), .Y (n_41));
  AOI211XL g2379__5477(.A0 (n_21), .A1 (edge_count[2]), .B0 (n_28), .C0
       (n_38), .Y (n_40));
  OAI211X1 g2380__2398(.A0 (n_24), .A1 (edge_count[5]), .B0 (n_30), .C0
       (n_37), .Y (n_39));
  OAI211X1 g2381__5107(.A0 (n_26), .A1 (edge_count[5]), .B0 (n_27), .C0
       (n_35), .Y (n_38));
  NOR4BX1 g2382__6260(.AN (n_9), .B (n_17), .C (n_32), .D (n_33), .Y
       (n_37));
  AOI21X1 g2383__4319(.A0 (n_8), .A1 (edge_count[1]), .B0 (n_34), .Y
       (n_36));
  AOI22X1 g2384__8428(.A0 (n_26), .A1 (edge_count[5]), .B0 (n_31), .B1
       (edge_count[4]), .Y (n_35));
  NOR2XL g2385__5526(.A (n_31), .B (edge_count[4]), .Y (n_34));
  OAI221X1 g2386__6783(.A0 (n_19), .A1 (edge_count[3]), .B0 (n_10), .B1
       (edge_count[2]), .C0 (n_29), .Y (n_33));
  XNOR2X1 g2387__3680(.A (n_25), .B (edge_count[4]), .Y (n_32));
  AOI22X1 g2388__1617(.A0 (n_24), .A1 (edge_count[5]), .B0
       (parity_enable), .B1 (n_13), .Y (n_30));
  AOI21XL g2389__2802(.A0 (Prescale[4]), .A1 (n_20), .B0 (n_22), .Y
       (n_31));
  AOI221X1 g2390__1705(.A0 (n_19), .A1 (edge_count[3]), .B0 (n_10), .B1
       (edge_count[2]), .C0 (n_7), .Y (n_29));
  OAI22X1 g2391__5122(.A0 (n_23), .A1 (edge_count[3]), .B0 (n_8), .B1
       (edge_count[1]), .Y (n_28));
  NAND2XL g2392__8246(.A (n_23), .B (edge_count[3]), .Y (n_27));
  AOI21XL g2393__7098(.A0 (Prescale[4]), .A1 (n_16), .B0 (n_18), .Y
       (n_25));
  XNOR2X1 g2394__6131(.A (Prescale[5]), .B (n_22), .Y (n_26));
  XNOR2X1 g2395__1881(.A (Prescale[5]), .B (n_18), .Y (n_24));
  OA21X1 g2396__5115(.A0 (n_2), .A1 (n_15), .B0 (n_20), .Y (n_23));
  NOR3BXL g2397__7482(.AN (n_15), .B (Prescale[4]), .C (Prescale[3]),
       .Y (n_22));
  AOI21XL g2398__4733(.A0 (Prescale[2]), .A1 (n_0), .B0 (n_15), .Y
       (n_21));
  NAND2XL g2399__6161(.A (n_2), .B (n_15), .Y (n_20));
  OA21X1 g2400__9315(.A0 (n_2), .A1 (n_6), .B0 (n_16), .Y (n_19));
  NOR3XL g2401__9945(.A (Prescale[3]), .B (Prescale[4]), .C (n_14), .Y
       (n_18));
  AOI21X1 g2402__2883(.A0 (bit_count[0]), .A1 (n_11), .B0
       (parity_enable), .Y (n_17));
  NAND2XL g2403__2346(.A (n_2), .B (n_6), .Y (n_16));
  NOR2XL g2404__1666(.A (Prescale[0]), .B (n_14), .Y (n_15));
  INVX1 g2405(.A (n_6), .Y (n_14));
  NAND3X1 g2406__7410(.A (bit_count[1]), .B (n_3), .C (n_5), .Y (n_13));
  OAI32X1 g2407__6417(.A0 (parity_enable), .A1 (bit_count[0]), .A2
       (n_64), .B0 (n_3), .B1 (n_63), .Y (n_12));
  NOR2BX1 g2408__5477(.AN (n_5), .B (bit_count[1]), .Y (n_11));
  AOI21XL g2409__2398(.A0 (Prescale[1]), .A1 (Prescale[2]), .B0 (n_6),
       .Y (n_10));
  XNOR2X1 g2410__5107(.A (Prescale[1]), .B (edge_count[1]), .Y (n_7));
  XNOR2X1 g2411__6260(.A (Prescale[0]), .B (edge_count[0]), .Y (n_9));
  MX2X1 g2412__4319(.A (Prescale[1]), .B (n_1), .S0 (Prescale[0]), .Y
       (n_8));
  NOR2XL g2413__8428(.A (Prescale[2]), .B (Prescale[1]), .Y (n_6));
  NOR2BX1 g2415__5526(.AN (bit_count[3]), .B (bit_count[2]), .Y (n_5));
  INVX1 g2417(.A (bit_count[0]), .Y (n_3));
  INVX1 g2419(.A (Prescale[3]), .Y (n_2));
  INVX1 g2420(.A (Prescale[1]), .Y (n_1));
  NAND2BX1 g2__6783(.AN (Prescale[0]), .B (n_1), .Y (n_0));
  DFFRX1 \current_state_reg[1] (.RN (RST), .CK (CLK), .D (n_53), .Q
       (current_state[1]), .QN (n_55));
  DFFRX1 \current_state_reg[2] (.RN (RST), .CK (CLK), .D (n_47), .Q
       (current_state[2]), .QN (n_4));
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
  wire UNCONNECTED_HIER_Z, dat_samp_en, deser_en, edge_bit_en, n_12,
       n_13, par_chk_en, sampled_bit;
  wire stp_chk_en, strt_chk_en, strt_glitch;
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
       .P_DATA (P_DATA), .par_err (n_13));
  stp_chk U0_stp_chk(.CLK (CLK), .RST (RST), .sampled_bit
       (sampled_bit), .Enable (stp_chk_en), .stp_err (n_12));
  strt_chk U0_strt_chk(.CLK (CLK), .RST (RST), .sampled_bit
       (sampled_bit), .Enable (strt_chk_en), .strt_glitch
       (strt_glitch));
  uart_rx_fsm_DATA_WIDTH8 U0_uart_fsm(.CLK (CLK), .RST (RST), .S_DATA
       (RX_IN), .Prescale (Prescale), .parity_enable (parity_enable),
       .bit_count (bit_count), .edge_count (edge_count), .par_err
       (n_13), .stp_err (n_12), .strt_glitch (strt_glitch),
       .strt_chk_en (strt_chk_en), .edge_bit_en (edge_bit_en),
       .deser_en (deser_en), .par_chk_en (par_chk_en), .stp_chk_en
       (stp_chk_en), .dat_samp_en (dat_samp_en), .data_valid
       (data_valid));
  BUFX12 g2(.A (n_12), .Y (framing_error));
  BUFX12 g1(.A (n_13), .Y (parity_error));
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
  AND3XL g397__3680(.A (ser_count[0]), .B (ser_count[1]), .C
       (ser_count[2]), .Y (ser_done));
  DFFRHQX1 \ser_count_reg[2] (.RN (RST), .CK (CLK), .D (n_23), .Q
       (ser_count[2]));
  DFFRHQX1 \DATA_V_reg[1] (.RN (RST), .CK (CLK), .D (n_19), .Q
       (DATA_V[1]));
  DFFRHQX1 \DATA_V_reg[6] (.RN (RST), .CK (CLK), .D (n_20), .Q
       (DATA_V[6]));
  DFFRHQX1 \DATA_V_reg[0] (.RN (RST), .CK (CLK), .D (n_17), .Q
       (ser_out));
  DFFRHQX1 \DATA_V_reg[2] (.RN (RST), .CK (CLK), .D (n_22), .Q
       (DATA_V[2]));
  AND2XL g655__1617(.A (n_15), .B (Enable), .Y (n_23));
  DFFRHQX1 \DATA_V_reg[4] (.RN (RST), .CK (CLK), .D (n_18), .Q
       (DATA_V[4]));
  DFFRHQX1 \DATA_V_reg[3] (.RN (RST), .CK (CLK), .D (n_21), .Q
       (DATA_V[3]));
  DFFRHQX1 \DATA_V_reg[5] (.RN (RST), .CK (CLK), .D (n_16), .Q
       (DATA_V[5]));
  OAI2BB1X1 g659__2802(.A0N (DATA_V[2]), .A1N (n_3), .B0 (n_11), .Y
       (n_22));
  OAI2BB1X1 g660__1705(.A0N (DATA_V[4]), .A1N (n_4), .B0 (n_7), .Y
       (n_21));
  OAI2BB1X1 g661__5122(.A0N (DATA_V[6]), .A1N (n_3), .B0 (n_12), .Y
       (n_20));
  DFFRHQX1 \DATA_V_reg[7] (.RN (RST), .CK (CLK), .D (n_13), .Q
       (DATA_V[7]));
  DFFRHQX1 \ser_count_reg[1] (.RN (RST), .CK (CLK), .D (n_10), .Q
       (ser_count[1]));
  OAI2BB1X1 g664__8246(.A0N (DATA_V[1]), .A1N (n_3), .B0 (n_6), .Y
       (n_19));
  OAI2BB1X1 g665__7098(.A0N (DATA_V[5]), .A1N (n_4), .B0 (n_8), .Y
       (n_18));
  OAI2BB1X1 g666__6131(.A0N (ser_out), .A1N (n_3), .B0 (n_14), .Y
       (n_17));
  OAI2BB1X1 g667__1881(.A0N (DATA_V[5]), .A1N (n_3), .B0 (n_9), .Y
       (n_16));
  XNOR2X1 g668__5115(.A (ser_count[2]), .B (n_2), .Y (n_15));
  AOI22X1 g669__7482(.A0 (DATA_V[1]), .A1 (n_4), .B0 (DATA[0]), .B1
       (n_1), .Y (n_14));
  AO22XL g670__4733(.A0 (DATA_V[7]), .A1 (n_3), .B0 (DATA[7]), .B1
       (n_1), .Y (n_13));
  AOI22X1 g671__6161(.A0 (DATA_V[7]), .A1 (n_4), .B0 (DATA[6]), .B1
       (n_1), .Y (n_12));
  AOI22X1 g672__9315(.A0 (DATA_V[3]), .A1 (n_4), .B0 (DATA[2]), .B1
       (n_1), .Y (n_11));
  INVX1 g673(.A (n_5), .Y (n_10));
  AOI22X1 g674__9945(.A0 (DATA_V[6]), .A1 (n_4), .B0 (DATA[5]), .B1
       (n_1), .Y (n_9));
  AOI22X1 g675__2883(.A0 (DATA_V[4]), .A1 (n_3), .B0 (DATA[4]), .B1
       (n_1), .Y (n_8));
  AOI22X1 g676__2346(.A0 (DATA_V[3]), .A1 (n_3), .B0 (DATA[3]), .B1
       (n_1), .Y (n_7));
  AOI22X1 g677__1666(.A0 (DATA_V[2]), .A1 (n_4), .B0 (DATA[1]), .B1
       (n_1), .Y (n_6));
  OAI211X1 g678__7410(.A0 (ser_count[0]), .A1 (ser_count[1]), .B0
       (n_2), .C0 (Enable), .Y (n_5));
  DFFRHQX1 \ser_count_reg[0] (.RN (RST), .CK (CLK), .D (n_0), .Q
       (ser_count[0]));
  NOR2BX1 g680__6417(.AN (Enable), .B (n_1), .Y (n_4));
  NOR2X1 g681__5477(.A (n_1), .B (Enable), .Y (n_3));
  NAND2X1 g682__2398(.A (ser_count[1]), .B (ser_count[0]), .Y (n_2));
  NOR2BX1 g683__5107(.AN (Enable), .B (ser_count[0]), .Y (n_0));
  NOR2BX1 g684__6260(.AN (Data_Valid), .B (Busy), .Y (n_1));
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
  wire n_8, n_9, n_10, n_14, n_17, n_21;
  INVX1 g346(.A (n_21), .Y (Ser_enable));
  INVX1 g345(.A (Data_Valid), .Y (n_10));
  OAI211X1 g436__4319(.A0 (n_6), .A1 (n_7), .B0 (n_14), .C0 (n_17), .Y
       (mux_sel[0]));
  DFFRHQX1 busy_reg(.RN (RST), .CK (CLK), .D (n_9), .Q (busy));
  OR2XL g438__8428(.A (ser_done), .B (n_17), .Y (n_21));
  AOI2BB1X1 g439__5526(.A0N (current_state[1]), .A1N (n_6), .B0
       (current_state[0]), .Y (mux_sel[1]));
  NAND2X1 g440__6783(.A (current_state[1]), .B (n_8), .Y (n_17));
  NAND2BXL g441__3680(.AN (n_8), .B (n_7), .Y (n_9));
  OR3X1 g442__1617(.A (current_state[2]), .B (current_state[1]), .C
       (current_state[0]), .Y (n_14));
  NOR2BX1 g443__2802(.AN (current_state[0]), .B (current_state[2]), .Y
       (n_8));
  NAND2BX1 g444__1705(.AN (current_state[0]), .B (current_state[1]), .Y
       (n_7));
  DFFRHQX1 \current_state_reg[0] (.RN (RST), .CK (CLK), .D (n_5), .Q
       (current_state[0]));
  OAI221X1 g408__5122(.A0 (current_state[1]), .A1 (n_3), .B0 (n_10),
       .B1 (n_14), .C0 (n_21), .Y (n_5));
  OAI32X1 g409__8246(.A0 (parity_enable), .A1 (n_0), .A2 (n_17), .B0
       (n_1), .B1 (n_3), .Y (n_4));
  DFFRHQX1 \current_state_reg[1] (.RN (RST), .CK (CLK), .D (n_2), .Q
       (current_state[1]));
  INVX1 g411(.A (n_3), .Y (n_2));
  NAND2BX1 g412__7098(.AN (current_state[2]), .B (n_14), .Y (n_3));
  NAND2X1 g413__6131(.A (current_state[1]), .B (n_17), .Y (n_1));
  INVX1 g414(.A (ser_done), .Y (n_0));
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
  wire UNCONNECTED, n_0, n_1, n_2;
  DFFRX1 OUT_reg(.RN (RST), .CK (CLK), .D (n_1), .Q (UNCONNECTED), .QN
       (n_2));
  CLKINVX12 g40(.A (n_2), .Y (OUT));
  OAI2BB1X1 g41__1881(.A0N (IN_2), .A1N (SEL[1]), .B0 (n_0), .Y (n_1));
  OAI21X1 g42__5115(.A0 (IN_1), .A1 (SEL[1]), .B0 (SEL[0]), .Y (n_0));
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
  XNOR2X1 g384__1666(.A (parity_type), .B (DATA_V[5]), .Y (n_1));
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

