/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12-SP7-3
// Date      : Tue Mar 11 19:29:39 2025
/////////////////////////////////////////////////////////////


module encoder ( ch_sel_i, enable_i, hot_one_o, valid_o );
  input [15:0] ch_sel_i;
  output [15:0] hot_one_o;
  input enable_i;
  output valid_o;
  wire   n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73;

  IND2D0BWP7T U57 ( .A1(ch_sel_i[14]), .B1(n39), .ZN(n51) );
  CKND2D0BWP7T U58 ( .A1(n38), .A2(n52), .ZN(n41) );
  CKND2D0BWP7T U59 ( .A1(n47), .A2(n42), .ZN(n66) );
  NR2XD0BWP7T U60 ( .A1(ch_sel_i[5]), .A2(n62), .ZN(n42) );
  OR2D0BWP7T U61 ( .A1(ch_sel_i[4]), .A2(n40), .Z(n62) );
  OR4D0BWP7T U62 ( .A1(ch_sel_i[3]), .A2(ch_sel_i[0]), .A3(ch_sel_i[1]), .A4(
        ch_sel_i[2]), .Z(n40) );
  NR2XD0BWP7T U63 ( .A1(ch_sel_i[6]), .A2(ch_sel_i[7]), .ZN(n47) );
  NR2XD0BWP7T U64 ( .A1(ch_sel_i[11]), .A2(ch_sel_i[10]), .ZN(n38) );
  NR3D0BWP7T U65 ( .A1(ch_sel_i[8]), .A2(ch_sel_i[9]), .A3(n66), .ZN(n52) );
  NR3D0BWP7T U66 ( .A1(ch_sel_i[12]), .A2(ch_sel_i[13]), .A3(n41), .ZN(n39) );
  OA21D0BWP7T U67 ( .A1(ch_sel_i[15]), .A2(n51), .B(enable_i), .Z(valid_o) );
  INVD0BWP7T U68 ( .I(n66), .ZN(n54) );
  AOI21D0BWP7T U69 ( .A1(n54), .A2(n41), .B(n40), .ZN(n58) );
  INVD0BWP7T U70 ( .I(n42), .ZN(n46) );
  NR2XD0BWP7T U71 ( .A1(ch_sel_i[12]), .A2(ch_sel_i[13]), .ZN(n43) );
  OAI31D0BWP7T U72 ( .A1(ch_sel_i[11]), .A2(ch_sel_i[10]), .A3(n43), .B(n52), 
        .ZN(n45) );
  NR2XD0BWP7T U73 ( .A1(ch_sel_i[0]), .A2(ch_sel_i[1]), .ZN(n56) );
  CKND2D0BWP7T U74 ( .A1(ch_sel_i[2]), .A2(n56), .ZN(n44) );
  OAI211D0BWP7T U75 ( .A1(n47), .A2(n46), .B(n45), .C(n44), .ZN(n55) );
  CKND2D0BWP7T U76 ( .A1(n58), .A2(n55), .ZN(n68) );
  INVD0BWP7T U77 ( .I(ch_sel_i[10]), .ZN(n49) );
  INVD0BWP7T U78 ( .I(ch_sel_i[12]), .ZN(n48) );
  AOI32D0BWP7T U79 ( .A1(ch_sel_i[13]), .A2(n49), .A3(n48), .B1(ch_sel_i[11]), 
        .B2(n49), .ZN(n50) );
  AOI31D0BWP7T U80 ( .A1(n52), .A2(n51), .A3(n50), .B(ch_sel_i[8]), .ZN(n53)
         );
  IND3D0BWP7T U81 ( .A1(n53), .B1(n54), .B2(valid_o), .ZN(n59) );
  NR2XD0BWP7T U82 ( .A1(n68), .A2(n59), .ZN(hot_one_o[14]) );
  ND3D0BWP7T U83 ( .A1(n54), .A2(n53), .A3(valid_o), .ZN(n65) );
  IND2D0BWP7T U84 ( .A1(n55), .B1(n58), .ZN(n69) );
  NR2XD0BWP7T U85 ( .A1(n65), .A2(n69), .ZN(hot_one_o[13]) );
  NR2XD0BWP7T U86 ( .A1(n59), .A2(n69), .ZN(hot_one_o[12]) );
  AOI21D0BWP7T U87 ( .A1(n56), .A2(ch_sel_i[3]), .B(n55), .ZN(n57) );
  OR2D0BWP7T U88 ( .A1(n58), .A2(n57), .Z(n70) );
  NR2XD0BWP7T U89 ( .A1(n65), .A2(n70), .ZN(hot_one_o[11]) );
  NR2XD0BWP7T U90 ( .A1(n59), .A2(n70), .ZN(hot_one_o[10]) );
  IND2D0BWP7T U91 ( .A1(n58), .B1(n57), .ZN(n73) );
  NR2XD0BWP7T U92 ( .A1(n65), .A2(n73), .ZN(hot_one_o[9]) );
  NR2XD0BWP7T U93 ( .A1(n59), .A2(n73), .ZN(hot_one_o[8]) );
  INVD0BWP7T U94 ( .I(ch_sel_i[2]), .ZN(n60) );
  AOI21D0BWP7T U95 ( .A1(ch_sel_i[3]), .A2(n60), .B(ch_sel_i[1]), .ZN(n64) );
  INVD0BWP7T U96 ( .I(ch_sel_i[6]), .ZN(n61) );
  AOI21D0BWP7T U97 ( .A1(ch_sel_i[7]), .A2(n61), .B(ch_sel_i[5]), .ZN(n63) );
  OAI22D0BWP7T U98 ( .A1(ch_sel_i[0]), .A2(n64), .B1(n63), .B2(n62), .ZN(n67)
         );
  CKND2D0BWP7T U99 ( .A1(valid_o), .A2(n67), .ZN(n71) );
  NR2XD0BWP7T U100 ( .A1(n68), .A2(n71), .ZN(hot_one_o[7]) );
  NR2XD0BWP7T U101 ( .A1(n68), .A2(n65), .ZN(hot_one_o[15]) );
  IND3D0BWP7T U102 ( .A1(n67), .B1(valid_o), .B2(n66), .ZN(n72) );
  NR2XD0BWP7T U103 ( .A1(n68), .A2(n72), .ZN(hot_one_o[6]) );
  NR2XD0BWP7T U104 ( .A1(n69), .A2(n71), .ZN(hot_one_o[5]) );
  NR2XD0BWP7T U105 ( .A1(n69), .A2(n72), .ZN(hot_one_o[4]) );
  NR2XD0BWP7T U106 ( .A1(n70), .A2(n71), .ZN(hot_one_o[3]) );
  NR2XD0BWP7T U107 ( .A1(n70), .A2(n72), .ZN(hot_one_o[2]) );
  NR2XD0BWP7T U108 ( .A1(n73), .A2(n71), .ZN(hot_one_o[1]) );
  NR2XD0BWP7T U109 ( .A1(n73), .A2(n72), .ZN(hot_one_o[0]) );
endmodule

