/* Generated by Yosys 0.9+3582 (git sha1 de7997837, gcc 9.3.0-15 -fPIC -Os) */

module sky130_rca(clk, sel, a, b, result);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  wire _08_;
  wire _09_;
  wire _10_;
  wire _11_;
  wire _12_;
  wire _13_;
  wire _14_;
  wire _15_;
  wire _16_;
  wire _17_;
  wire _18_;
  wire _19_;
  input [3:0] a;
  input [3:0] b;
  input clk;
  output [3:0] result;
  wire \result_next[0] ;
  wire \result_next[1] ;
  wire \result_next[2] ;
  wire \result_next[3] ;
  input sel;
  sky130_fd_sc_hs__clkinv_1 _20_ (
    .A(a[1]),
    .Y(_00_)
  );
  sky130_fd_sc_hs__nand2b_1 _21_ (
    .A_N(b[0]),
    .B(sel),
    .Y(_01_)
  );
  sky130_fd_sc_hs__nand2_1 _22_ (
    .A(_01_),
    .B(a[0]),
    .Y(_02_)
  );
  sky130_fd_sc_hs__nor2b_1 _23_ (
    .A(b[1]),
    .B_N(sel),
    .Y(_03_)
  );
  sky130_fd_sc_hs__nand2b_1 _24_ (
    .A_N(b[1]),
    .B(sel),
    .Y(_04_)
  );
  sky130_fd_sc_hs__nand2_1 _25_ (
    .A(_04_),
    .B(a[1]),
    .Y(_05_)
  );
  sky130_fd_sc_hs__xnor3_1 _26_ (
    .A(a[1]),
    .B(_02_),
    .C(_04_),
    .X(\result_next[1] )
  );
  sky130_fd_sc_hs__nand2b_1 _27_ (
    .A_N(b[2]),
    .B(sel),
    .Y(_06_)
  );
  sky130_fd_sc_hs__or3b_1 _28_ (
    .A(a[2]),
    .B(b[2]),
    .C_N(sel),
    .X(_07_)
  );
  sky130_fd_sc_hs__nand2_1 _29_ (
    .A(_06_),
    .B(a[2]),
    .Y(_08_)
  );
  sky130_fd_sc_hs__o2bb2ai_1 _30_ (
    .A1_N(a[0]),
    .A2_N(_01_),
    .B1(_03_),
    .B2(_00_),
    .Y(_09_)
  );
  sky130_fd_sc_hs__o211ai_1 _31_ (
    .A1(a[1]),
    .A2(_04_),
    .B1(_01_),
    .C1(a[0]),
    .Y(_10_)
  );
  sky130_fd_sc_hs__o2111ai_1 _32_ (
    .A1(a[1]),
    .A2(_04_),
    .B1(_07_),
    .C1(_08_),
    .D1(_09_),
    .Y(_11_)
  );
  sky130_fd_sc_hs__a22o_1 _33_ (
    .A1(_07_),
    .A2(_08_),
    .B1(_10_),
    .B2(_05_),
    .X(_12_)
  );
  sky130_fd_sc_hs__o2111ai_1 _34_ (
    .A1(_00_),
    .A2(_03_),
    .B1(_07_),
    .C1(_08_),
    .D1(_10_),
    .Y(_13_)
  );
  sky130_fd_sc_hs__nand2_1 _35_ (
    .A(_12_),
    .B(_13_),
    .Y(\result_next[2] )
  );
  sky130_fd_sc_hs__nand2b_1 _36_ (
    .A_N(b[3]),
    .B(sel),
    .Y(_14_)
  );
  sky130_fd_sc_hs__nor3b_1 _37_ (
    .A(b[3]),
    .B(a[3]),
    .C_N(sel),
    .Y(_15_)
  );
  sky130_fd_sc_hs__and2_1 _38_ (
    .A(_14_),
    .B(a[3]),
    .X(_16_)
  );
  sky130_fd_sc_hs__nor2_1 _39_ (
    .A(_15_),
    .B(_16_),
    .Y(_17_)
  );
  sky130_fd_sc_hs__o2bb2ai_1 _40_ (
    .A1_N(_08_),
    .A2_N(_11_),
    .B1(_15_),
    .B2(_16_),
    .Y(_18_)
  );
  sky130_fd_sc_hs__nand3_1 _41_ (
    .A(_08_),
    .B(_11_),
    .C(_17_),
    .Y(_19_)
  );
  sky130_fd_sc_hs__nand2_1 _42_ (
    .A(_18_),
    .B(_19_),
    .Y(\result_next[3] )
  );
  sky130_fd_sc_hs__xor2_1 _43_ (
    .A(a[0]),
    .B(_01_),
    .X(\result_next[0] )
  );
  sky130_fd_sc_hs__dfxtp_1 _44_ (
    .CLK(clk),
    .D(\result_next[0] ),
    .Q(result[0])
  );
  sky130_fd_sc_hs__dfxtp_1 _45_ (
    .CLK(clk),
    .D(\result_next[1] ),
    .Q(result[1])
  );
  sky130_fd_sc_hs__dfxtp_1 _46_ (
    .CLK(clk),
    .D(\result_next[2] ),
    .Q(result[2])
  );
  sky130_fd_sc_hs__dfxtp_1 _47_ (
    .CLK(clk),
    .D(\result_next[3] ),
    .Q(result[3])
  );
endmodule