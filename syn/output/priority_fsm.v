/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12-SP7-3
// Date      : Mon Mar  3 20:47:00 2025
/////////////////////////////////////////////////////////////


module priority_fsm ( clk_i, resetn_i, ch_sel_i, dump_i, arm_i, disable_i, 
        ch_sel_o, last_o );
  input [15:0] ch_sel_i;
  output [15:0] ch_sel_o;
  input clk_i, resetn_i, dump_i, arm_i, disable_i;
  output last_o;
  wire   N94, N95, N99, N100, N104, N105, N109, N110, N114, N115, N119, N120,
         N124, N125, N129, N130, N134, N135, N139, N140, N144, N145, N149,
         N150, N154, N155, N159, N160, N164, N165, N169, N170, n73, n74, n75,
         n76, n77, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149;
  wire   [15:0] ch_latch_q;
  wire   [4:0] state;

  DFCNQD1BWP7T state_reg_0_ ( .D(n77), .CP(clk_i), .CDN(resetn_i), .Q(state[0]) );
  DFCNQD1BWP7T state_reg_3_ ( .D(n73), .CP(clk_i), .CDN(resetn_i), .Q(state[3]) );
  DFCNQD1BWP7T state_reg_2_ ( .D(n74), .CP(clk_i), .CDN(resetn_i), .Q(state[2]) );
  DFCNQD1BWP7T state_reg_1_ ( .D(n75), .CP(clk_i), .CDN(resetn_i), .Q(state[1]) );
  DFSNQD1BWP7T state_reg_4_ ( .D(n76), .CP(clk_i), .SDN(resetn_i), .Q(state[4]) );
  LHQD1BWP7T ch_latch_q_reg_2_ ( .E(N104), .D(N105), .Q(ch_latch_q[2]) );
  LHQD1BWP7T ch_latch_q_reg_14_ ( .E(N164), .D(N165), .Q(ch_latch_q[14]) );
  LHQD1BWP7T ch_latch_q_reg_6_ ( .E(N124), .D(N125), .Q(ch_latch_q[6]) );
  LHQD1BWP7T ch_latch_q_reg_10_ ( .E(N144), .D(N145), .Q(ch_latch_q[10]) );
  LHQD1BWP7T ch_latch_q_reg_11_ ( .E(N149), .D(N150), .Q(ch_latch_q[11]) );
  LHQD1BWP7T ch_latch_q_reg_15_ ( .E(N169), .D(N170), .Q(ch_latch_q[15]) );
  LHQD1BWP7T ch_latch_q_reg_3_ ( .E(N109), .D(N110), .Q(ch_latch_q[3]) );
  LHQD1BWP7T ch_latch_q_reg_7_ ( .E(N129), .D(N130), .Q(ch_latch_q[7]) );
  LHQD1BWP7T ch_latch_q_reg_0_ ( .E(N94), .D(N95), .Q(ch_latch_q[0]) );
  LHQD1BWP7T ch_latch_q_reg_4_ ( .E(N114), .D(N115), .Q(ch_latch_q[4]) );
  LHQD1BWP7T ch_latch_q_reg_8_ ( .E(N134), .D(N135), .Q(ch_latch_q[8]) );
  LHQD1BWP7T ch_latch_q_reg_12_ ( .E(N154), .D(N155), .Q(ch_latch_q[12]) );
  LHQD1BWP7T ch_latch_q_reg_1_ ( .E(N99), .D(N100), .Q(ch_latch_q[1]) );
  LHQD1BWP7T ch_latch_q_reg_5_ ( .E(N119), .D(N120), .Q(ch_latch_q[5]) );
  LHQD1BWP7T ch_latch_q_reg_9_ ( .E(N139), .D(N140), .Q(ch_latch_q[9]) );
  LHQD1BWP7T ch_latch_q_reg_13_ ( .E(N159), .D(N160), .Q(ch_latch_q[13]) );
  AOI221D0BWP7T U129 ( .A1(ch_latch_q[4]), .A2(n141), .B1(n91), .B2(n141), .C(
        ch_latch_q[2]), .ZN(n92) );
  NR2XD0BWP7T U130 ( .A1(n148), .A2(n145), .ZN(last_o) );
  CKND2D0BWP7T U131 ( .A1(n130), .A2(n139), .ZN(n145) );
  CKND2D0BWP7T U132 ( .A1(n141), .A2(n97), .ZN(n148) );
  CKND2D0BWP7T U133 ( .A1(n85), .A2(n89), .ZN(n138) );
  NR2XD0BWP7T U134 ( .A1(ch_latch_q[15]), .A2(ch_latch_q[14]), .ZN(n139) );
  INVD0BWP7T U135 ( .I(ch_latch_q[8]), .ZN(n89) );
  INR2XD0BWP7T U136 ( .A1(resetn_i), .B1(arm_i), .ZN(n83) );
  INVD0BWP7T U137 ( .I(state[2]), .ZN(n144) );
  INVD0BWP7T U138 ( .I(state[3]), .ZN(n149) );
  CKND2D0BWP7T U139 ( .A1(n144), .A2(n149), .ZN(n117) );
  INVD0BWP7T U140 ( .I(n117), .ZN(n94) );
  INVD0BWP7T U141 ( .I(dump_i), .ZN(n128) );
  INVD0BWP7T U142 ( .I(state[0]), .ZN(n115) );
  CKND2D0BWP7T U143 ( .A1(state[1]), .A2(n115), .ZN(n125) );
  NR3D0BWP7T U144 ( .A1(state[4]), .A2(n128), .A3(n125), .ZN(n80) );
  CKND2D0BWP7T U145 ( .A1(n94), .A2(n80), .ZN(n100) );
  CKND2D0BWP7T U146 ( .A1(n83), .A2(n100), .ZN(N104) );
  NR2XD0BWP7T U147 ( .A1(n144), .A2(n149), .ZN(n122) );
  NR4D0BWP7T U148 ( .A1(state[4]), .A2(state[1]), .A3(n115), .A4(n128), .ZN(
        n79) );
  CKND2D0BWP7T U149 ( .A1(n122), .A2(n79), .ZN(n102) );
  CKND2D0BWP7T U150 ( .A1(n83), .A2(n102), .ZN(N159) );
  NR2XD0BWP7T U151 ( .A1(n149), .A2(state[2]), .ZN(n120) );
  CKND2D0BWP7T U152 ( .A1(n120), .A2(n80), .ZN(n101) );
  CKND2D0BWP7T U153 ( .A1(n83), .A2(n101), .ZN(N144) );
  CKND2D0BWP7T U154 ( .A1(n120), .A2(n79), .ZN(n113) );
  CKND2D0BWP7T U155 ( .A1(n83), .A2(n113), .ZN(N139) );
  CKND2D0BWP7T U156 ( .A1(n122), .A2(n80), .ZN(n96) );
  CKND2D0BWP7T U157 ( .A1(n83), .A2(n96), .ZN(N164) );
  NR2XD0BWP7T U158 ( .A1(n144), .A2(state[3]), .ZN(n118) );
  CKND2D0BWP7T U159 ( .A1(n118), .A2(n79), .ZN(n112) );
  CKND2D0BWP7T U160 ( .A1(n83), .A2(n112), .ZN(N119) );
  CKND2D0BWP7T U161 ( .A1(n94), .A2(n79), .ZN(n111) );
  CKND2D0BWP7T U162 ( .A1(n83), .A2(n111), .ZN(N99) );
  CKND2D0BWP7T U163 ( .A1(n118), .A2(n80), .ZN(n99) );
  CKND2D0BWP7T U164 ( .A1(n83), .A2(n99), .ZN(N124) );
  NR4D0BWP7T U165 ( .A1(state[0]), .A2(state[1]), .A3(state[4]), .A4(n128), 
        .ZN(n81) );
  CKND2D0BWP7T U166 ( .A1(n122), .A2(n81), .ZN(n110) );
  CKND2D0BWP7T U167 ( .A1(n83), .A2(n110), .ZN(N154) );
  CKND2D0BWP7T U168 ( .A1(n120), .A2(n81), .ZN(n109) );
  CKND2D0BWP7T U169 ( .A1(n83), .A2(n109), .ZN(N134) );
  CKND2D0BWP7T U170 ( .A1(n118), .A2(n81), .ZN(n108) );
  CKND2D0BWP7T U171 ( .A1(n83), .A2(n108), .ZN(N114) );
  CKND2D0BWP7T U172 ( .A1(n94), .A2(n81), .ZN(n107) );
  CKND2D0BWP7T U173 ( .A1(n83), .A2(n107), .ZN(N94) );
  CKND2D0BWP7T U174 ( .A1(state[0]), .A2(state[1]), .ZN(n126) );
  NR3D0BWP7T U175 ( .A1(state[4]), .A2(n128), .A3(n126), .ZN(n82) );
  CKND2D0BWP7T U176 ( .A1(n118), .A2(n82), .ZN(n106) );
  CKND2D0BWP7T U177 ( .A1(n83), .A2(n106), .ZN(N129) );
  CKND2D0BWP7T U178 ( .A1(n94), .A2(n82), .ZN(n105) );
  CKND2D0BWP7T U179 ( .A1(n83), .A2(n105), .ZN(N109) );
  CKND2D0BWP7T U180 ( .A1(n122), .A2(n82), .ZN(n104) );
  CKND2D0BWP7T U181 ( .A1(n83), .A2(n104), .ZN(N169) );
  CKND2D0BWP7T U182 ( .A1(n120), .A2(n82), .ZN(n103) );
  CKND2D0BWP7T U183 ( .A1(n83), .A2(n103), .ZN(N149) );
  NR4D0BWP7T U184 ( .A1(ch_latch_q[0]), .A2(ch_latch_q[1]), .A3(ch_latch_q[2]), 
        .A4(ch_latch_q[3]), .ZN(n141) );
  INVD0BWP7T U185 ( .I(ch_latch_q[12]), .ZN(n84) );
  AOI21D0BWP7T U186 ( .A1(ch_latch_q[13]), .A2(n84), .B(ch_latch_q[11]), .ZN(
        n87) );
  INVD0BWP7T U187 ( .I(ch_latch_q[9]), .ZN(n86) );
  NR3D0BWP7T U188 ( .A1(ch_latch_q[9]), .A2(ch_latch_q[11]), .A3(
        ch_latch_q[10]), .ZN(n85) );
  NR3D0BWP7T U189 ( .A1(ch_latch_q[12]), .A2(ch_latch_q[13]), .A3(n138), .ZN(
        n130) );
  IND3D0BWP7T U190 ( .A1(ch_latch_q[14]), .B1(ch_latch_q[15]), .B2(n130), .ZN(
        n131) );
  OAI211D0BWP7T U191 ( .A1(ch_latch_q[10]), .A2(n87), .B(n86), .C(n131), .ZN(
        n88) );
  AOI21D0BWP7T U192 ( .A1(n89), .A2(n88), .B(ch_latch_q[7]), .ZN(n90) );
  IAO21D0BWP7T U193 ( .A1(ch_latch_q[6]), .A2(n90), .B(ch_latch_q[5]), .ZN(n91) );
  OAI21D0BWP7T U194 ( .A1(ch_latch_q[1]), .A2(n92), .B(dump_i), .ZN(n93) );
  OAI22D0BWP7T U195 ( .A1(dump_i), .A2(n115), .B1(ch_latch_q[0]), .B2(n93), 
        .ZN(n95) );
  INVD0BWP7T U196 ( .I(state[1]), .ZN(n137) );
  ND3D0BWP7T U197 ( .A1(n94), .A2(state[4]), .A3(n137), .ZN(n116) );
  NR2XD0BWP7T U198 ( .A1(state[0]), .A2(n116), .ZN(n129) );
  MUX2D0BWP7T U199 ( .I0(n95), .I1(arm_i), .S(n129), .Z(n77) );
  AN2D0BWP7T U200 ( .A1(arm_i), .A2(resetn_i), .Z(n114) );
  AN3D0BWP7T U201 ( .A1(n114), .A2(ch_sel_i[14]), .A3(n96), .Z(N165) );
  NR4D0BWP7T U202 ( .A1(ch_latch_q[4]), .A2(ch_latch_q[5]), .A3(ch_latch_q[6]), 
        .A4(ch_latch_q[7]), .ZN(n97) );
  AOI31D0BWP7T U203 ( .A1(dump_i), .A2(last_o), .A3(n116), .B(n129), .ZN(n98)
         );
  IOA21D0BWP7T U204 ( .A1(state[4]), .A2(n128), .B(n98), .ZN(n76) );
  AN3D0BWP7T U205 ( .A1(n114), .A2(ch_sel_i[6]), .A3(n99), .Z(N125) );
  AN3D0BWP7T U206 ( .A1(n114), .A2(ch_sel_i[2]), .A3(n100), .Z(N105) );
  AN3D0BWP7T U207 ( .A1(n114), .A2(ch_sel_i[10]), .A3(n101), .Z(N145) );
  AN3D0BWP7T U208 ( .A1(n114), .A2(ch_sel_i[13]), .A3(n102), .Z(N160) );
  AN3D0BWP7T U209 ( .A1(n114), .A2(ch_sel_i[11]), .A3(n103), .Z(N150) );
  AN3D0BWP7T U210 ( .A1(n114), .A2(ch_sel_i[15]), .A3(n104), .Z(N170) );
  AN3D0BWP7T U211 ( .A1(n114), .A2(ch_sel_i[3]), .A3(n105), .Z(N110) );
  AN3D0BWP7T U212 ( .A1(n114), .A2(ch_sel_i[7]), .A3(n106), .Z(N130) );
  AN3D0BWP7T U213 ( .A1(n114), .A2(ch_sel_i[0]), .A3(n107), .Z(N95) );
  AN3D0BWP7T U214 ( .A1(n114), .A2(ch_sel_i[4]), .A3(n108), .Z(N115) );
  AN3D0BWP7T U215 ( .A1(n114), .A2(ch_sel_i[8]), .A3(n109), .Z(N135) );
  AN3D0BWP7T U216 ( .A1(n114), .A2(ch_sel_i[12]), .A3(n110), .Z(N155) );
  AN3D0BWP7T U217 ( .A1(n114), .A2(ch_sel_i[1]), .A3(n111), .Z(N100) );
  AN3D0BWP7T U218 ( .A1(n114), .A2(ch_sel_i[5]), .A3(n112), .Z(N120) );
  AN3D0BWP7T U219 ( .A1(n114), .A2(ch_sel_i[9]), .A3(n113), .Z(N140) );
  ND3D0BWP7T U220 ( .A1(n115), .A2(n137), .A3(n116), .ZN(n123) );
  NR2XD0BWP7T U221 ( .A1(n117), .A2(n123), .ZN(ch_sel_o[0]) );
  ND3D0BWP7T U222 ( .A1(state[0]), .A2(n137), .A3(n116), .ZN(n124) );
  NR2XD0BWP7T U223 ( .A1(n117), .A2(n124), .ZN(ch_sel_o[1]) );
  NR2XD0BWP7T U224 ( .A1(n117), .A2(n125), .ZN(ch_sel_o[2]) );
  NR2XD0BWP7T U225 ( .A1(n117), .A2(n126), .ZN(ch_sel_o[3]) );
  INVD0BWP7T U226 ( .I(n118), .ZN(n119) );
  NR2XD0BWP7T U227 ( .A1(n123), .A2(n119), .ZN(ch_sel_o[4]) );
  NR2XD0BWP7T U228 ( .A1(n124), .A2(n119), .ZN(ch_sel_o[5]) );
  NR2XD0BWP7T U229 ( .A1(n119), .A2(n125), .ZN(ch_sel_o[6]) );
  NR2XD0BWP7T U230 ( .A1(n119), .A2(n126), .ZN(ch_sel_o[7]) );
  INVD0BWP7T U231 ( .I(n120), .ZN(n121) );
  NR2XD0BWP7T U232 ( .A1(n123), .A2(n121), .ZN(ch_sel_o[8]) );
  NR2XD0BWP7T U233 ( .A1(n124), .A2(n121), .ZN(ch_sel_o[9]) );
  NR2XD0BWP7T U234 ( .A1(n121), .A2(n125), .ZN(ch_sel_o[10]) );
  NR2XD0BWP7T U235 ( .A1(n121), .A2(n126), .ZN(ch_sel_o[11]) );
  INVD0BWP7T U236 ( .I(n122), .ZN(n127) );
  NR2XD0BWP7T U237 ( .A1(n127), .A2(n123), .ZN(ch_sel_o[12]) );
  NR2XD0BWP7T U238 ( .A1(n127), .A2(n124), .ZN(ch_sel_o[13]) );
  NR2XD0BWP7T U239 ( .A1(n127), .A2(n125), .ZN(ch_sel_o[14]) );
  NR2XD0BWP7T U240 ( .A1(n127), .A2(n126), .ZN(ch_sel_o[15]) );
  NR2XD0BWP7T U241 ( .A1(n129), .A2(n128), .ZN(n146) );
  AOI211XD0BWP7T U242 ( .A1(ch_latch_q[14]), .A2(n130), .B(ch_latch_q[10]), 
        .C(ch_latch_q[11]), .ZN(n132) );
  OAI31D0BWP7T U243 ( .A1(ch_latch_q[8]), .A2(ch_latch_q[9]), .A3(n132), .B(
        n131), .ZN(n134) );
  NR2XD0BWP7T U244 ( .A1(ch_latch_q[4]), .A2(ch_latch_q[5]), .ZN(n133) );
  OAI21D0BWP7T U245 ( .A1(n148), .A2(n134), .B(n133), .ZN(n135) );
  AOI211XD0BWP7T U246 ( .A1(n141), .A2(n135), .B(ch_latch_q[0]), .C(
        ch_latch_q[1]), .ZN(n136) );
  MOAI22D0BWP7T U247 ( .A1(dump_i), .A2(n137), .B1(n146), .B2(n136), .ZN(n75)
         );
  NR2XD0BWP7T U248 ( .A1(ch_latch_q[12]), .A2(ch_latch_q[13]), .ZN(n140) );
  AOI21D0BWP7T U249 ( .A1(n140), .A2(n139), .B(n138), .ZN(n142) );
  OAI211D0BWP7T U250 ( .A1(n142), .A2(n148), .B(n146), .C(n141), .ZN(n143) );
  OAI21D0BWP7T U251 ( .A1(dump_i), .A2(n144), .B(n143), .ZN(n74) );
  CKND2D0BWP7T U252 ( .A1(n146), .A2(n145), .ZN(n147) );
  OAI22D0BWP7T U253 ( .A1(dump_i), .A2(n149), .B1(n148), .B2(n147), .ZN(n73)
         );
endmodule

