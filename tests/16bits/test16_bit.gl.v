
module test16bit(x, s, clk, r);
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
  input clk;
  output [15:0] r;
  input s;
  input [15:0] x;
  sky130_fd_sc_hd__mux2_1 _16_ (
    .A0(r[2]),
    .A1(x[2]),
    .S(s),
    .X(_08_)
  );
  sky130_fd_sc_hd__mux2_1 _17_ (
    .A0(r[3]),
    .A1(x[3]),
    .S(s),
    .X(_09_)
  );
  sky130_fd_sc_hd__mux2_1 _18_ (
    .A0(r[4]),
    .A1(x[4]),
    .S(s),
    .X(_10_)
  );
  sky130_fd_sc_hd__mux2_1 _19_ (
    .A0(r[5]),
    .A1(x[5]),
    .S(s),
    .X(_11_)
  );
  sky130_fd_sc_hd__mux2_1 _20_ (
    .A0(r[6]),
    .A1(x[6]),
    .S(s),
    .X(_12_)
  );
  sky130_fd_sc_hd__mux2_1 _21_ (
    .A0(r[7]),
    .A1(x[7]),
    .S(s),
    .X(_13_)
  );
  sky130_fd_sc_hd__mux2_1 _22_ (
    .A0(r[8]),
    .A1(x[8]),
    .S(s),
    .X(_14_)
  );
  sky130_fd_sc_hd__mux2_1 _23_ (
    .A0(r[9]),
    .A1(x[9]),
    .S(s),
    .X(_15_)
  );
  sky130_fd_sc_hd__mux2_1 _24_ (
    .A0(r[10]),
    .A1(x[10]),
    .S(s),
    .X(_01_)
  );
  sky130_fd_sc_hd__mux2_1 _25_ (
    .A0(r[11]),
    .A1(x[11]),
    .S(s),
    .X(_02_)
  );
  sky130_fd_sc_hd__mux2_1 _26_ (
    .A0(r[12]),
    .A1(x[12]),
    .S(s),
    .X(_03_)
  );
  sky130_fd_sc_hd__mux2_1 _27_ (
    .A0(r[13]),
    .A1(x[13]),
    .S(s),
    .X(_04_)
  );
  sky130_fd_sc_hd__mux2_1 _28_ (
    .A0(r[14]),
    .A1(x[14]),
    .S(s),
    .X(_05_)
  );
  sky130_fd_sc_hd__mux2_1 _29_ (
    .A0(r[15]),
    .A1(x[15]),
    .S(s),
    .X(_06_)
  );
  sky130_fd_sc_hd__mux2_1 _30_ (
    .A0(r[0]),
    .A1(x[0]),
    .S(s),
    .X(_00_)
  );
  sky130_fd_sc_hd__mux2_1 _31_ (
    .A0(r[1]),
    .A1(x[1]),
    .S(s),
    .X(_07_)
  );
  sky130_fd_sc_hd__dfxtp_1 _32_ (
    .CLK(clk),
    .D(_00_),
    .Q(r[0])
  );
  sky130_fd_sc_hd__dfxtp_1 _33_ (
    .CLK(clk),
    .D(_07_),
    .Q(r[1])
  );
  sky130_fd_sc_hd__dfxtp_1 _34_ (
    .CLK(clk),
    .D(_08_),
    .Q(r[2])
  );
  sky130_fd_sc_hd__dfxtp_1 _35_ (
    .CLK(clk),
    .D(_09_),
    .Q(r[3])
  );
  sky130_fd_sc_hd__dfxtp_1 _36_ (
    .CLK(clk),
    .D(_10_),
    .Q(r[4])
  );
  sky130_fd_sc_hd__dfxtp_1 _37_ (
    .CLK(clk),
    .D(_11_),
    .Q(r[5])
  );
  sky130_fd_sc_hd__dfxtp_1 _38_ (
    .CLK(clk),
    .D(_12_),
    .Q(r[6])
  );
  sky130_fd_sc_hd__dfxtp_1 _39_ (
    .CLK(clk),
    .D(_13_),
    .Q(r[7])
  );
  sky130_fd_sc_hd__dfxtp_1 _40_ (
    .CLK(clk),
    .D(_14_),
    .Q(r[8])
  );
  sky130_fd_sc_hd__dfxtp_1 _41_ (
    .CLK(clk),
    .D(_15_),
    .Q(r[9])
  );
  sky130_fd_sc_hd__dfxtp_1 _42_ (
    .CLK(clk),
    .D(_01_),
    .Q(r[10])
  );
  sky130_fd_sc_hd__dfxtp_1 _43_ (
    .CLK(clk),
    .D(_02_),
    .Q(r[11])
  );
  sky130_fd_sc_hd__dfxtp_1 _44_ (
    .CLK(clk),
    .D(_03_),
    .Q(r[12])
  );
  sky130_fd_sc_hd__dfxtp_1 _45_ (
    .CLK(clk),
    .D(_04_),
    .Q(r[13])
  );
  sky130_fd_sc_hd__dfxtp_1 _46_ (
    .CLK(clk),
    .D(_05_),
    .Q(r[14])
  );
  sky130_fd_sc_hd__dfxtp_1 _47_ (
    .CLK(clk),
    .D(_06_),
    .Q(r[15])
  );
endmodule
