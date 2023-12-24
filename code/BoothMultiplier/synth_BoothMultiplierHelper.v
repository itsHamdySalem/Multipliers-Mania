/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Sat Dec 23 13:00:37 2023
/////////////////////////////////////////////////////////////


module BoothMultiplierHelper_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [31:0] A;
  input [31:0] B;
  output [31:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33;
  wire   [32:0] carry;

  FADDX1 U2_30 ( .A(A[30]), .B(n3), .CI(carry[30]), .CO(carry[31]), .S(
        DIFF[30]) );
  FADDX1 U2_29 ( .A(A[29]), .B(n4), .CI(carry[29]), .CO(carry[30]), .S(
        DIFF[29]) );
  FADDX1 U2_28 ( .A(A[28]), .B(n5), .CI(carry[28]), .CO(carry[29]), .S(
        DIFF[28]) );
  FADDX1 U2_27 ( .A(A[27]), .B(n6), .CI(carry[27]), .CO(carry[28]), .S(
        DIFF[27]) );
  FADDX1 U2_26 ( .A(A[26]), .B(n7), .CI(carry[26]), .CO(carry[27]), .S(
        DIFF[26]) );
  FADDX1 U2_25 ( .A(A[25]), .B(n8), .CI(carry[25]), .CO(carry[26]), .S(
        DIFF[25]) );
  FADDX1 U2_24 ( .A(A[24]), .B(n9), .CI(carry[24]), .CO(carry[25]), .S(
        DIFF[24]) );
  FADDX1 U2_23 ( .A(A[23]), .B(n10), .CI(carry[23]), .CO(carry[24]), .S(
        DIFF[23]) );
  FADDX1 U2_22 ( .A(A[22]), .B(n11), .CI(carry[22]), .CO(carry[23]), .S(
        DIFF[22]) );
  FADDX1 U2_21 ( .A(A[21]), .B(n12), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  FADDX1 U2_20 ( .A(A[20]), .B(n13), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  FADDX1 U2_19 ( .A(A[19]), .B(n14), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  FADDX1 U2_18 ( .A(A[18]), .B(n15), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  FADDX1 U2_17 ( .A(A[17]), .B(n16), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  FADDX1 U2_16 ( .A(A[16]), .B(n17), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  FADDX1 U2_15 ( .A(A[15]), .B(n18), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  FADDX1 U2_14 ( .A(A[14]), .B(n19), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  FADDX1 U2_13 ( .A(A[13]), .B(n20), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  FADDX1 U2_12 ( .A(A[12]), .B(n21), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  FADDX1 U2_11 ( .A(A[11]), .B(n22), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  FADDX1 U2_10 ( .A(A[10]), .B(n23), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  FADDX1 U2_9 ( .A(A[9]), .B(n24), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  FADDX1 U2_8 ( .A(A[8]), .B(n25), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  FADDX1 U2_7 ( .A(A[7]), .B(n26), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  FADDX1 U2_6 ( .A(A[6]), .B(n27), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  FADDX1 U2_5 ( .A(A[5]), .B(n28), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  FADDX1 U2_4 ( .A(A[4]), .B(n29), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  FADDX1 U2_3 ( .A(A[3]), .B(n30), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  FADDX1 U2_2 ( .A(A[2]), .B(n31), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  FADDX1 U2_1 ( .A(A[1]), .B(n32), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  XOR3X1 U2_31 ( .IN1(A[31]), .IN2(n2), .IN3(carry[31]), .Q(DIFF[31]) );
  NAND2X1 U1 ( .IN1(B[0]), .IN2(n1), .QN(carry[1]) );
  INVX0 U2 ( .INP(B[1]), .ZN(n32) );
  INVX0 U3 ( .INP(B[2]), .ZN(n31) );
  INVX0 U4 ( .INP(B[3]), .ZN(n30) );
  INVX0 U5 ( .INP(B[4]), .ZN(n29) );
  INVX0 U6 ( .INP(B[5]), .ZN(n28) );
  INVX0 U7 ( .INP(B[6]), .ZN(n27) );
  INVX0 U8 ( .INP(B[7]), .ZN(n26) );
  INVX0 U9 ( .INP(B[8]), .ZN(n25) );
  INVX0 U10 ( .INP(B[9]), .ZN(n24) );
  INVX0 U11 ( .INP(B[10]), .ZN(n23) );
  INVX0 U12 ( .INP(B[11]), .ZN(n22) );
  INVX0 U13 ( .INP(B[12]), .ZN(n21) );
  INVX0 U14 ( .INP(B[13]), .ZN(n20) );
  INVX0 U15 ( .INP(B[14]), .ZN(n19) );
  INVX0 U16 ( .INP(B[15]), .ZN(n18) );
  INVX0 U17 ( .INP(B[16]), .ZN(n17) );
  INVX0 U18 ( .INP(B[17]), .ZN(n16) );
  INVX0 U19 ( .INP(B[18]), .ZN(n15) );
  INVX0 U20 ( .INP(B[19]), .ZN(n14) );
  INVX0 U21 ( .INP(B[20]), .ZN(n13) );
  INVX0 U22 ( .INP(B[21]), .ZN(n12) );
  INVX0 U23 ( .INP(B[22]), .ZN(n11) );
  INVX0 U24 ( .INP(B[23]), .ZN(n10) );
  INVX0 U25 ( .INP(B[24]), .ZN(n9) );
  INVX0 U26 ( .INP(B[25]), .ZN(n8) );
  INVX0 U27 ( .INP(B[26]), .ZN(n7) );
  INVX0 U28 ( .INP(B[27]), .ZN(n6) );
  INVX0 U29 ( .INP(B[28]), .ZN(n5) );
  INVX0 U30 ( .INP(B[29]), .ZN(n4) );
  INVX0 U31 ( .INP(B[30]), .ZN(n3) );
  INVX0 U32 ( .INP(B[31]), .ZN(n2) );
  INVX0 U33 ( .INP(A[0]), .ZN(n1) );
  INVX0 U34 ( .INP(B[0]), .ZN(n33) );
  XOR2X1 U35 ( .IN1(n1), .IN2(n33), .Q(DIFF[0]) );
endmodule


module BoothMultiplierHelper_DW01_add_0 ( A, B, CI, SUM, CO );
  input [31:0] A;
  input [31:0] B;
  output [31:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [31:1] carry;

  FADDX1 U1_30 ( .A(A[30]), .B(B[30]), .CI(carry[30]), .CO(carry[31]), .S(
        SUM[30]) );
  FADDX1 U1_29 ( .A(A[29]), .B(B[29]), .CI(carry[29]), .CO(carry[30]), .S(
        SUM[29]) );
  FADDX1 U1_28 ( .A(A[28]), .B(B[28]), .CI(carry[28]), .CO(carry[29]), .S(
        SUM[28]) );
  FADDX1 U1_27 ( .A(A[27]), .B(B[27]), .CI(carry[27]), .CO(carry[28]), .S(
        SUM[27]) );
  FADDX1 U1_26 ( .A(A[26]), .B(B[26]), .CI(carry[26]), .CO(carry[27]), .S(
        SUM[26]) );
  FADDX1 U1_25 ( .A(A[25]), .B(B[25]), .CI(carry[25]), .CO(carry[26]), .S(
        SUM[25]) );
  FADDX1 U1_24 ( .A(A[24]), .B(B[24]), .CI(carry[24]), .CO(carry[25]), .S(
        SUM[24]) );
  FADDX1 U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  FADDX1 U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  FADDX1 U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  FADDX1 U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  FADDX1 U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  FADDX1 U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  FADDX1 U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  FADDX1 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  FADDX1 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  FADDX1 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  FADDX1 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  FADDX1 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  FADDX1 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FADDX1 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FADDX1 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FADDX1 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  FADDX1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  FADDX1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  FADDX1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  FADDX1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  FADDX1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  FADDX1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  FADDX1 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3X1 U1_31 ( .IN1(A[31]), .IN2(B[31]), .IN3(carry[31]), .Q(SUM[31]) );
  AND2X1 U1 ( .IN1(B[0]), .IN2(A[0]), .Q(n1) );
  XOR2X1 U2 ( .IN1(B[0]), .IN2(A[0]), .Q(SUM[0]) );
endmodule


module BoothMultiplierHelper ( A, Q, Q0, M, F8, L8, CQ0 );
  input [31:0] A;
  input [31:0] Q;
  input [31:0] M;
  output [31:0] F8;
  output [31:0] L8;
  input Q0;
  output CQ0;
  wire   \Q[0] , n11, n12, n13, n14;
  wire   [31:0] added;
  wire   [31:0] subtracted;
  assign CQ0 = \Q[0] ;
  assign \Q[0]  = Q[0];
  assign F8[30] = F8[31];
  assign L8[30] = Q[31];
  assign L8[29] = Q[30];
  assign L8[28] = Q[29];
  assign L8[27] = Q[28];
  assign L8[26] = Q[27];
  assign L8[25] = Q[26];
  assign L8[24] = Q[25];
  assign L8[23] = Q[24];
  assign L8[22] = Q[23];
  assign L8[21] = Q[22];
  assign L8[20] = Q[21];
  assign L8[19] = Q[20];
  assign L8[18] = Q[19];
  assign L8[17] = Q[18];
  assign L8[16] = Q[17];
  assign L8[15] = Q[16];
  assign L8[14] = Q[15];
  assign L8[13] = Q[14];
  assign L8[12] = Q[13];
  assign L8[11] = Q[12];
  assign L8[10] = Q[11];
  assign L8[9] = Q[10];
  assign L8[8] = Q[9];
  assign L8[7] = Q[8];
  assign L8[6] = Q[7];
  assign L8[5] = Q[6];
  assign L8[4] = Q[5];
  assign L8[3] = Q[4];
  assign L8[2] = Q[3];
  assign L8[1] = Q[2];
  assign L8[0] = Q[1];

  BoothMultiplierHelper_DW01_sub_0 sub_15 ( .A(A), .B(M), .CI(1'b0), .DIFF(
        subtracted) );
  BoothMultiplierHelper_DW01_add_0 add_14 ( .A(A), .B(M), .CI(1'b0), .SUM(
        added) );
  NOR2X1 U41 ( .IN1(n11), .IN2(n13), .QN(n12) );
  NOR2X1 U42 ( .IN1(n14), .IN2(\Q[0] ), .QN(n13) );
  AO222X1 U43 ( .IN1(A[0]), .IN2(n11), .IN3(subtracted[0]), .IN4(n12), .IN5(
        added[0]), .IN6(n13), .Q(L8[31]) );
  AO222X1 U44 ( .IN1(A[10]), .IN2(n11), .IN3(subtracted[10]), .IN4(n12), .IN5(
        added[10]), .IN6(n13), .Q(F8[9]) );
  AO222X1 U45 ( .IN1(A[9]), .IN2(n11), .IN3(subtracted[9]), .IN4(n12), .IN5(
        added[9]), .IN6(n13), .Q(F8[8]) );
  AO222X1 U46 ( .IN1(A[8]), .IN2(n11), .IN3(subtracted[8]), .IN4(n12), .IN5(
        added[8]), .IN6(n13), .Q(F8[7]) );
  AO222X1 U47 ( .IN1(A[7]), .IN2(n11), .IN3(subtracted[7]), .IN4(n12), .IN5(
        added[7]), .IN6(n13), .Q(F8[6]) );
  AO222X1 U48 ( .IN1(A[6]), .IN2(n11), .IN3(subtracted[6]), .IN4(n12), .IN5(
        added[6]), .IN6(n13), .Q(F8[5]) );
  AO222X1 U49 ( .IN1(A[5]), .IN2(n11), .IN3(subtracted[5]), .IN4(n12), .IN5(
        added[5]), .IN6(n13), .Q(F8[4]) );
  AO222X1 U50 ( .IN1(A[4]), .IN2(n11), .IN3(subtracted[4]), .IN4(n12), .IN5(
        added[4]), .IN6(n13), .Q(F8[3]) );
  AO222X1 U51 ( .IN1(A[31]), .IN2(n11), .IN3(subtracted[31]), .IN4(n12), .IN5(
        added[31]), .IN6(n13), .Q(F8[31]) );
  AO222X1 U52 ( .IN1(A[3]), .IN2(n11), .IN3(subtracted[3]), .IN4(n12), .IN5(
        added[3]), .IN6(n13), .Q(F8[2]) );
  AO222X1 U53 ( .IN1(A[30]), .IN2(n11), .IN3(subtracted[30]), .IN4(n12), .IN5(
        added[30]), .IN6(n13), .Q(F8[29]) );
  AO222X1 U54 ( .IN1(A[29]), .IN2(n11), .IN3(subtracted[29]), .IN4(n12), .IN5(
        added[29]), .IN6(n13), .Q(F8[28]) );
  AO222X1 U55 ( .IN1(A[28]), .IN2(n11), .IN3(subtracted[28]), .IN4(n12), .IN5(
        added[28]), .IN6(n13), .Q(F8[27]) );
  AO222X1 U56 ( .IN1(A[27]), .IN2(n11), .IN3(subtracted[27]), .IN4(n12), .IN5(
        added[27]), .IN6(n13), .Q(F8[26]) );
  AO222X1 U57 ( .IN1(A[26]), .IN2(n11), .IN3(subtracted[26]), .IN4(n12), .IN5(
        added[26]), .IN6(n13), .Q(F8[25]) );
  AO222X1 U58 ( .IN1(A[25]), .IN2(n11), .IN3(subtracted[25]), .IN4(n12), .IN5(
        added[25]), .IN6(n13), .Q(F8[24]) );
  AO222X1 U59 ( .IN1(A[24]), .IN2(n11), .IN3(subtracted[24]), .IN4(n12), .IN5(
        added[24]), .IN6(n13), .Q(F8[23]) );
  AO222X1 U60 ( .IN1(A[23]), .IN2(n11), .IN3(subtracted[23]), .IN4(n12), .IN5(
        added[23]), .IN6(n13), .Q(F8[22]) );
  AO222X1 U61 ( .IN1(A[22]), .IN2(n11), .IN3(subtracted[22]), .IN4(n12), .IN5(
        added[22]), .IN6(n13), .Q(F8[21]) );
  AO222X1 U62 ( .IN1(A[21]), .IN2(n11), .IN3(subtracted[21]), .IN4(n12), .IN5(
        added[21]), .IN6(n13), .Q(F8[20]) );
  AO222X1 U63 ( .IN1(A[2]), .IN2(n11), .IN3(subtracted[2]), .IN4(n12), .IN5(
        added[2]), .IN6(n13), .Q(F8[1]) );
  AO222X1 U64 ( .IN1(A[20]), .IN2(n11), .IN3(subtracted[20]), .IN4(n12), .IN5(
        added[20]), .IN6(n13), .Q(F8[19]) );
  AO222X1 U65 ( .IN1(A[19]), .IN2(n11), .IN3(subtracted[19]), .IN4(n12), .IN5(
        added[19]), .IN6(n13), .Q(F8[18]) );
  AO222X1 U66 ( .IN1(A[18]), .IN2(n11), .IN3(subtracted[18]), .IN4(n12), .IN5(
        added[18]), .IN6(n13), .Q(F8[17]) );
  AO222X1 U67 ( .IN1(A[17]), .IN2(n11), .IN3(subtracted[17]), .IN4(n12), .IN5(
        added[17]), .IN6(n13), .Q(F8[16]) );
  AO222X1 U68 ( .IN1(A[16]), .IN2(n11), .IN3(subtracted[16]), .IN4(n12), .IN5(
        added[16]), .IN6(n13), .Q(F8[15]) );
  AO222X1 U69 ( .IN1(A[15]), .IN2(n11), .IN3(subtracted[15]), .IN4(n12), .IN5(
        added[15]), .IN6(n13), .Q(F8[14]) );
  AO222X1 U70 ( .IN1(A[14]), .IN2(n11), .IN3(subtracted[14]), .IN4(n12), .IN5(
        added[14]), .IN6(n13), .Q(F8[13]) );
  AO222X1 U71 ( .IN1(A[13]), .IN2(n11), .IN3(subtracted[13]), .IN4(n12), .IN5(
        added[13]), .IN6(n13), .Q(F8[12]) );
  AO222X1 U72 ( .IN1(A[12]), .IN2(n11), .IN3(subtracted[12]), .IN4(n12), .IN5(
        added[12]), .IN6(n13), .Q(F8[11]) );
  AO222X1 U73 ( .IN1(A[11]), .IN2(n11), .IN3(subtracted[11]), .IN4(n12), .IN5(
        added[11]), .IN6(n13), .Q(F8[10]) );
  AO222X1 U74 ( .IN1(A[1]), .IN2(n11), .IN3(subtracted[1]), .IN4(n12), .IN5(
        added[1]), .IN6(n13), .Q(F8[0]) );
  AOI21X1 U75 ( .IN1(\Q[0] ), .IN2(n14), .IN3(n13), .QN(n11) );
  INVX0 U76 ( .INP(Q0), .ZN(n14) );
endmodule

