/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12-SP7-3
// Date      : Fri Feb 28 23:42:46 2025
/////////////////////////////////////////////////////////////


module priority_fsm ( clk_i, resetn_i, ch_sel_i, dump_i, arm_i, ch_sel_o, 
        zero_o, cycle_done_o );
  input [15:0] ch_sel_i;
  output [15:0] ch_sel_o;
  input clk_i, resetn_i, dump_i, arm_i;
  output zero_o, cycle_done_o;
  wire   N78, N79, N83, N84, N88, N89, N93, N94, N98, N99, N103, N104, N108,
         N109, N113, N114, N118, N119, N123, N124, N128, N129, N133, N134,
         N138, N139, N143, N144, N148, N149, N153, N154, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145;
  wire   [15:0] ch_latch_q;
  wire   [4:0] state;

  DFCNQD1BWP7T state_reg_0_ ( .D(n77), .CP(clk_i), .CDN(resetn_i), .Q(state[0]) );
  DFCNQD1BWP7T state_reg_4_ ( .D(n76), .CP(clk_i), .CDN(resetn_i), .Q(state[4]) );
  DFCNQD1BWP7T state_reg_3_ ( .D(n73), .CP(clk_i), .CDN(resetn_i), .Q(state[3]) );
  DFCNQD1BWP7T state_reg_2_ ( .D(n74), .CP(clk_i), .CDN(resetn_i), .Q(state[2]) );
  DFCNQD1BWP7T state_reg_1_ ( .D(n75), .CP(clk_i), .CDN(resetn_i), .Q(state[1]) );
  LHQD1BWP7T ch_latch_q_reg_0_ ( .E(N78), .D(N79), .Q(ch_latch_q[0]) );
  LHQD1BWP7T ch_latch_q_reg_7_ ( .E(N113), .D(N114), .Q(ch_latch_q[7]) );
  LHQD1BWP7T ch_latch_q_reg_1_ ( .E(N83), .D(N84), .Q(ch_latch_q[1]) );
  LHQD1BWP7T ch_latch_q_reg_8_ ( .E(N118), .D(N119), .Q(ch_latch_q[8]) );
  LHQD1BWP7T ch_latch_q_reg_9_ ( .E(N123), .D(N124), .Q(ch_latch_q[9]) );
  LHQD1BWP7T ch_latch_q_reg_2_ ( .E(N88), .D(N89), .Q(ch_latch_q[2]) );
  LHQD1BWP7T ch_latch_q_reg_3_ ( .E(N93), .D(N94), .Q(ch_latch_q[3]) );
  LHQD1BWP7T ch_latch_q_reg_10_ ( .E(N128), .D(N129), .Q(ch_latch_q[10]) );
  LHQD1BWP7T ch_latch_q_reg_11_ ( .E(N133), .D(N134), .Q(ch_latch_q[11]) );
  LHQD1BWP7T ch_latch_q_reg_15_ ( .E(N153), .D(N154), .Q(ch_latch_q[15]) );
  LHQD1BWP7T ch_latch_q_reg_6_ ( .E(N108), .D(N109), .Q(ch_latch_q[6]) );
  LHQD1BWP7T ch_latch_q_reg_14_ ( .E(N148), .D(N149), .Q(ch_latch_q[14]) );
  LHQD1BWP7T ch_latch_q_reg_4_ ( .E(N98), .D(N99), .Q(ch_latch_q[4]) );
  LHQD1BWP7T ch_latch_q_reg_5_ ( .E(N103), .D(N104), .Q(ch_latch_q[5]) );
  LHQD1BWP7T ch_latch_q_reg_12_ ( .E(N138), .D(N139), .Q(ch_latch_q[12]) );
  LHQD1BWP7T ch_latch_q_reg_13_ ( .E(N143), .D(N144), .Q(ch_latch_q[13]) );
  TIELBWP7T U128 ( .ZN(zero_o) );
  INVD0BWP7T U129 ( .I(resetn_i), .ZN(n85) );
  NR2XD0BWP7T U130 ( .A1(arm_i), .A2(n85), .ZN(n84) );
  NR3D0BWP7T U131 ( .A1(state[3]), .A2(state[0]), .A3(state[4]), .ZN(n133) );
  NR2XD0BWP7T U132 ( .A1(state[1]), .A2(state[2]), .ZN(n132) );
  ND3D0BWP7T U133 ( .A1(n133), .A2(n132), .A3(dump_i), .ZN(n88) );
  CKND2D0BWP7T U134 ( .A1(n84), .A2(n88), .ZN(N78) );
  INVD0BWP7T U135 ( .I(state[2]), .ZN(n142) );
  NR2XD0BWP7T U136 ( .A1(state[1]), .A2(n142), .ZN(n78) );
  INVD0BWP7T U137 ( .I(state[0]), .ZN(n135) );
  INVD0BWP7T U138 ( .I(state[3]), .ZN(n145) );
  INVD0BWP7T U139 ( .I(dump_i), .ZN(n136) );
  NR4D0BWP7T U140 ( .A1(state[4]), .A2(n135), .A3(n145), .A4(n136), .ZN(n83)
         );
  CKND2D0BWP7T U141 ( .A1(n78), .A2(n83), .ZN(n90) );
  CKND2D0BWP7T U142 ( .A1(n84), .A2(n90), .ZN(N143) );
  NR4D0BWP7T U143 ( .A1(state[4]), .A2(state[0]), .A3(n145), .A4(n136), .ZN(
        n80) );
  CKND2D0BWP7T U144 ( .A1(n132), .A2(n80), .ZN(n89) );
  CKND2D0BWP7T U145 ( .A1(n84), .A2(n89), .ZN(N118) );
  CKND2D0BWP7T U146 ( .A1(n78), .A2(n80), .ZN(n101) );
  CKND2D0BWP7T U147 ( .A1(n84), .A2(n101), .ZN(N138) );
  INVD0BWP7T U148 ( .I(state[1]), .ZN(n140) );
  NR2XD0BWP7T U149 ( .A1(n140), .A2(n142), .ZN(n79) );
  NR4D0BWP7T U150 ( .A1(state[3]), .A2(state[4]), .A3(n135), .A4(n136), .ZN(
        n81) );
  CKND2D0BWP7T U151 ( .A1(n79), .A2(n81), .ZN(n86) );
  CKND2D0BWP7T U152 ( .A1(n84), .A2(n86), .ZN(N113) );
  CKND2D0BWP7T U153 ( .A1(n78), .A2(n81), .ZN(n100) );
  CKND2D0BWP7T U154 ( .A1(n84), .A2(n100), .ZN(N103) );
  INVD0BWP7T U155 ( .I(arm_i), .ZN(n137) );
  AOI31D0BWP7T U156 ( .A1(dump_i), .A2(n133), .A3(n78), .B(n85), .ZN(n99) );
  CKND2D0BWP7T U157 ( .A1(n137), .A2(n99), .ZN(N98) );
  CKND2D0BWP7T U158 ( .A1(n132), .A2(n81), .ZN(n87) );
  CKND2D0BWP7T U159 ( .A1(n84), .A2(n87), .ZN(N83) );
  CKND2D0BWP7T U160 ( .A1(n79), .A2(n80), .ZN(n98) );
  CKND2D0BWP7T U161 ( .A1(n84), .A2(n98), .ZN(N148) );
  AOI31D0BWP7T U162 ( .A1(dump_i), .A2(n133), .A3(n79), .B(n85), .ZN(n97) );
  CKND2D0BWP7T U163 ( .A1(n137), .A2(n97), .ZN(N108) );
  CKND2D0BWP7T U164 ( .A1(n79), .A2(n83), .ZN(n96) );
  CKND2D0BWP7T U165 ( .A1(n84), .A2(n96), .ZN(N153) );
  NR2XD0BWP7T U166 ( .A1(state[2]), .A2(n140), .ZN(n82) );
  CKND2D0BWP7T U167 ( .A1(n82), .A2(n83), .ZN(n95) );
  CKND2D0BWP7T U168 ( .A1(n84), .A2(n95), .ZN(N133) );
  CKND2D0BWP7T U169 ( .A1(n82), .A2(n80), .ZN(n94) );
  CKND2D0BWP7T U170 ( .A1(n84), .A2(n94), .ZN(N128) );
  CKND2D0BWP7T U171 ( .A1(n82), .A2(n81), .ZN(n93) );
  CKND2D0BWP7T U172 ( .A1(n84), .A2(n93), .ZN(N93) );
  AOI31D0BWP7T U173 ( .A1(dump_i), .A2(n133), .A3(n82), .B(n85), .ZN(n92) );
  CKND2D0BWP7T U174 ( .A1(n137), .A2(n92), .ZN(N88) );
  CKND2D0BWP7T U175 ( .A1(n132), .A2(n83), .ZN(n91) );
  CKND2D0BWP7T U176 ( .A1(n84), .A2(n91), .ZN(N123) );
  NR2XD0BWP7T U177 ( .A1(n137), .A2(n85), .ZN(n102) );
  AN3D0BWP7T U178 ( .A1(n102), .A2(ch_sel_i[7]), .A3(n86), .Z(N114) );
  AN3D0BWP7T U179 ( .A1(n102), .A2(ch_sel_i[1]), .A3(n87), .Z(N84) );
  AN3D0BWP7T U180 ( .A1(n102), .A2(ch_sel_i[0]), .A3(n88), .Z(N79) );
  AN3D0BWP7T U181 ( .A1(n102), .A2(ch_sel_i[8]), .A3(n89), .Z(N119) );
  AN3D0BWP7T U182 ( .A1(n102), .A2(ch_sel_i[13]), .A3(n90), .Z(N144) );
  AN3D0BWP7T U183 ( .A1(n102), .A2(ch_sel_i[9]), .A3(n91), .Z(N124) );
  AN3D0BWP7T U184 ( .A1(arm_i), .A2(ch_sel_i[2]), .A3(n92), .Z(N89) );
  AN3D0BWP7T U185 ( .A1(n102), .A2(ch_sel_i[3]), .A3(n93), .Z(N94) );
  AN3D0BWP7T U186 ( .A1(n102), .A2(ch_sel_i[10]), .A3(n94), .Z(N129) );
  AN3D0BWP7T U187 ( .A1(n102), .A2(ch_sel_i[11]), .A3(n95), .Z(N134) );
  AN3D0BWP7T U188 ( .A1(n102), .A2(ch_sel_i[15]), .A3(n96), .Z(N154) );
  AN3D0BWP7T U189 ( .A1(arm_i), .A2(ch_sel_i[6]), .A3(n97), .Z(N109) );
  AN3D0BWP7T U190 ( .A1(n102), .A2(ch_sel_i[14]), .A3(n98), .Z(N149) );
  AN3D0BWP7T U191 ( .A1(arm_i), .A2(ch_sel_i[4]), .A3(n99), .Z(N99) );
  AN3D0BWP7T U192 ( .A1(n102), .A2(ch_sel_i[5]), .A3(n100), .Z(N104) );
  AN3D0BWP7T U193 ( .A1(n102), .A2(ch_sel_i[12]), .A3(n101), .Z(N139) );
  NR4D0BWP7T U194 ( .A1(ch_latch_q[10]), .A2(ch_latch_q[9]), .A3(ch_latch_q[8]), .A4(ch_latch_q[11]), .ZN(n121) );
  INR2XD0BWP7T U195 ( .A1(n121), .B1(ch_latch_q[12]), .ZN(n113) );
  IND2D0BWP7T U196 ( .A1(ch_latch_q[14]), .B1(n113), .ZN(n120) );
  INR2XD0BWP7T U197 ( .A1(ch_latch_q[15]), .B1(n120), .ZN(n110) );
  INVD0BWP7T U198 ( .I(ch_latch_q[13]), .ZN(n103) );
  AOI211XD0BWP7T U199 ( .A1(n110), .A2(n103), .B(ch_latch_q[6]), .C(
        ch_latch_q[7]), .ZN(n107) );
  ND3D0BWP7T U200 ( .A1(ch_latch_q[14]), .A2(n113), .A3(n103), .ZN(n124) );
  INVD0BWP7T U201 ( .I(n124), .ZN(n105) );
  NR2XD0BWP7T U202 ( .A1(ch_latch_q[9]), .A2(ch_latch_q[8]), .ZN(n104) );
  OAI31D0BWP7T U203 ( .A1(ch_latch_q[10]), .A2(ch_latch_q[11]), .A3(n105), .B(
        n104), .ZN(n106) );
  AOI211XD0BWP7T U204 ( .A1(n107), .A2(n106), .B(ch_latch_q[5]), .C(
        ch_latch_q[4]), .ZN(n109) );
  NR2XD0BWP7T U205 ( .A1(ch_latch_q[1]), .A2(ch_latch_q[0]), .ZN(n108) );
  OAI31D0BWP7T U206 ( .A1(ch_latch_q[2]), .A2(ch_latch_q[3]), .A3(n109), .B(
        n108), .ZN(n139) );
  NR4D0BWP7T U207 ( .A1(ch_latch_q[1]), .A2(ch_latch_q[0]), .A3(ch_latch_q[3]), 
        .A4(ch_latch_q[2]), .ZN(n118) );
  INVD0BWP7T U208 ( .I(ch_latch_q[10]), .ZN(n111) );
  AO21D0BWP7T U209 ( .A1(n111), .A2(ch_latch_q[11]), .B(n110), .Z(n112) );
  AOI211XD0BWP7T U210 ( .A1(ch_latch_q[13]), .A2(n113), .B(ch_latch_q[9]), .C(
        n112), .ZN(n114) );
  IAO21D0BWP7T U211 ( .A1(ch_latch_q[8]), .A2(n114), .B(ch_latch_q[7]), .ZN(
        n115) );
  IAO21D0BWP7T U212 ( .A1(ch_latch_q[6]), .A2(n115), .B(ch_latch_q[5]), .ZN(
        n116) );
  AOI221D0BWP7T U213 ( .A1(ch_latch_q[4]), .A2(n118), .B1(n116), .B2(n118), 
        .C(ch_latch_q[2]), .ZN(n117) );
  IAO21D0BWP7T U214 ( .A1(ch_latch_q[1]), .A2(n117), .B(ch_latch_q[0]), .ZN(
        n131) );
  INVD0BWP7T U215 ( .I(n131), .ZN(n134) );
  CKND2D0BWP7T U216 ( .A1(n139), .A2(n134), .ZN(n129) );
  INVD0BWP7T U217 ( .I(n118), .ZN(n122) );
  OR2D0BWP7T U218 ( .A1(ch_latch_q[6]), .A2(ch_latch_q[7]), .Z(n119) );
  NR4D0BWP7T U219 ( .A1(ch_latch_q[4]), .A2(ch_latch_q[5]), .A3(n122), .A4(
        n119), .ZN(n125) );
  OAI31D0BWP7T U220 ( .A1(ch_latch_q[13]), .A2(ch_latch_q[15]), .A3(n120), .B(
        n125), .ZN(n144) );
  OAI31D0BWP7T U221 ( .A1(ch_latch_q[13]), .A2(ch_latch_q[12]), .A3(
        ch_latch_q[15]), .B(n121), .ZN(n123) );
  AOI31D0BWP7T U222 ( .A1(n125), .A2(n124), .A3(n123), .B(n122), .ZN(n128) );
  INVD0BWP7T U223 ( .I(n128), .ZN(n141) );
  CKND2D0BWP7T U224 ( .A1(n144), .A2(n141), .ZN(n126) );
  NR2XD0BWP7T U225 ( .A1(n129), .A2(n126), .ZN(ch_sel_o[0]) );
  CKND2D0BWP7T U226 ( .A1(n131), .A2(n139), .ZN(n130) );
  NR2XD0BWP7T U227 ( .A1(n126), .A2(n130), .ZN(ch_sel_o[1]) );
  CKND2D0BWP7T U228 ( .A1(n128), .A2(n144), .ZN(n127) );
  NR2XD0BWP7T U229 ( .A1(n129), .A2(n127), .ZN(ch_sel_o[4]) );
  NR2XD0BWP7T U230 ( .A1(n130), .A2(n127), .ZN(ch_sel_o[5]) );
  NR3D0BWP7T U231 ( .A1(n131), .A2(n139), .A3(n126), .ZN(ch_sel_o[2]) );
  NR3D0BWP7T U232 ( .A1(n139), .A2(n134), .A3(n126), .ZN(ch_sel_o[3]) );
  NR3D0BWP7T U233 ( .A1(n131), .A2(n139), .A3(n127), .ZN(ch_sel_o[6]) );
  NR3D0BWP7T U234 ( .A1(n139), .A2(n134), .A3(n127), .ZN(ch_sel_o[7]) );
  NR3D0BWP7T U235 ( .A1(n128), .A2(n144), .A3(n129), .ZN(ch_sel_o[8]) );
  NR3D0BWP7T U236 ( .A1(n128), .A2(n144), .A3(n130), .ZN(ch_sel_o[9]) );
  NR4D0BWP7T U237 ( .A1(n131), .A2(n128), .A3(n139), .A4(n144), .ZN(
        ch_sel_o[10]) );
  NR4D0BWP7T U238 ( .A1(n128), .A2(n134), .A3(n139), .A4(n144), .ZN(
        ch_sel_o[11]) );
  NR3D0BWP7T U239 ( .A1(n129), .A2(n144), .A3(n141), .ZN(ch_sel_o[12]) );
  NR3D0BWP7T U240 ( .A1(n144), .A2(n141), .A3(n130), .ZN(ch_sel_o[13]) );
  NR4D0BWP7T U241 ( .A1(n131), .A2(n139), .A3(n144), .A4(n141), .ZN(
        ch_sel_o[14]) );
  NR4D0BWP7T U242 ( .A1(n139), .A2(n134), .A3(n144), .A4(n141), .ZN(
        ch_sel_o[15]) );
  CKND2D0BWP7T U243 ( .A1(n133), .A2(n132), .ZN(n138) );
  CKND2D0BWP7T U244 ( .A1(dump_i), .A2(n138), .ZN(n143) );
  OAI22D0BWP7T U245 ( .A1(dump_i), .A2(n135), .B1(n134), .B2(n143), .ZN(n77)
         );
  MOAI22D0BWP7T U246 ( .A1(n138), .A2(n137), .B1(state[4]), .B2(n136), .ZN(n76) );
  OAI22D0BWP7T U247 ( .A1(dump_i), .A2(n140), .B1(n139), .B2(n143), .ZN(n75)
         );
  OAI22D0BWP7T U248 ( .A1(dump_i), .A2(n142), .B1(n141), .B2(n143), .ZN(n74)
         );
  OAI22D0BWP7T U249 ( .A1(dump_i), .A2(n145), .B1(n144), .B2(n143), .ZN(n73)
         );
endmodule

