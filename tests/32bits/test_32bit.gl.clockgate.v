

module test_32bit
(
  x,
  s,
  clk,
  r
);

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
  wire _20_;
  wire _21_;
  wire _22_;
  wire _23_;
  wire _24_;
  wire _25_;
  wire _26_;
  wire _27_;
  wire _28_;
  wire _29_;
  wire _30_;
  wire _31_;
  input clk;
  output [31:0] r;
  input s;
  input [31:0] x;
  wire __clk_gate_out__0_;

  sky130_fd_sc_hd__dlclkp_4
  __clk_gate_0
  (
    .GCLK(__clk_gate_out__0_),
    .GATE(s),
    .CLK(clk)
  );


  sky130_fd_sc_hd__dfxtp_1
  _64_
  (
    .CLK(__clk_gate_out__0_),
    .D(x[19]),
    .Q(r[19])
  );


  sky130_fd_sc_hd__dfxtp_1
  _65_
  (
    .CLK(__clk_gate_out__0_),
    .D(x[20]),
    .Q(r[20])
  );


  sky130_fd_sc_hd__dfxtp_1
  _66_
  (
    .CLK(__clk_gate_out__0_),
    .D(x[21]),
    .Q(r[21])
  );


  sky130_fd_sc_hd__dfxtp_1
  _67_
  (
    .CLK(__clk_gate_out__0_),
    .D(x[22]),
    .Q(r[22])
  );


  sky130_fd_sc_hd__dfxtp_1
  _68_
  (
    .CLK(__clk_gate_out__0_),
    .D(x[23]),
    .Q(r[23])
  );


  sky130_fd_sc_hd__dfxtp_1
  _69_
  (
    .CLK(__clk_gate_out__0_),
    .D(x[24]),
    .Q(r[24])
  );


  sky130_fd_sc_hd__dfxtp_1
  _70_
  (
    .CLK(__clk_gate_out__0_),
    .D(x[25]),
    .Q(r[25])
  );


  sky130_fd_sc_hd__dfxtp_1
  _71_
  (
    .CLK(__clk_gate_out__0_),
    .D(x[26]),
    .Q(r[26])
  );


  sky130_fd_sc_hd__dfxtp_1
  _72_
  (
    .CLK(__clk_gate_out__0_),
    .D(x[27]),
    .Q(r[27])
  );


  sky130_fd_sc_hd__dfxtp_1
  _73_
  (
    .CLK(__clk_gate_out__0_),
    .D(x[28]),
    .Q(r[28])
  );


  sky130_fd_sc_hd__dfxtp_1
  _74_
  (
    .CLK(__clk_gate_out__0_),
    .D(x[29]),
    .Q(r[29])
  );


  sky130_fd_sc_hd__dfxtp_1
  _75_
  (
    .CLK(__clk_gate_out__0_),
    .D(x[30]),
    .Q(r[30])
  );


  sky130_fd_sc_hd__dfxtp_1
  _76_
  (
    .CLK(__clk_gate_out__0_),
    .D(x[31]),
    .Q(r[31])
  );


  sky130_fd_sc_hd__dfxtp_1
  _77_
  (
    .CLK(__clk_gate_out__0_),
    .D(x[0]),
    .Q(r[0])
  );


  sky130_fd_sc_hd__dfxtp_1
  _78_
  (
    .CLK(__clk_gate_out__0_),
    .D(x[1]),
    .Q(r[1])
  );


  sky130_fd_sc_hd__dfxtp_1
  _79_
  (
    .CLK(__clk_gate_out__0_),
    .D(x[2]),
    .Q(r[2])
  );


  sky130_fd_sc_hd__dfxtp_1
  _80_
  (
    .CLK(__clk_gate_out__0_),
    .D(x[3]),
    .Q(r[3])
  );


  sky130_fd_sc_hd__dfxtp_1
  _81_
  (
    .CLK(__clk_gate_out__0_),
    .D(x[4]),
    .Q(r[4])
  );


  sky130_fd_sc_hd__dfxtp_1
  _82_
  (
    .CLK(__clk_gate_out__0_),
    .D(x[5]),
    .Q(r[5])
  );


  sky130_fd_sc_hd__dfxtp_1
  _83_
  (
    .CLK(__clk_gate_out__0_),
    .D(x[6]),
    .Q(r[6])
  );


  sky130_fd_sc_hd__dfxtp_1
  _84_
  (
    .CLK(__clk_gate_out__0_),
    .D(x[7]),
    .Q(r[7])
  );


  sky130_fd_sc_hd__dfxtp_1
  _85_
  (
    .CLK(__clk_gate_out__0_),
    .D(x[8]),
    .Q(r[8])
  );


  sky130_fd_sc_hd__dfxtp_1
  _86_
  (
    .CLK(__clk_gate_out__0_),
    .D(x[9]),
    .Q(r[9])
  );


  sky130_fd_sc_hd__dfxtp_1
  _87_
  (
    .CLK(__clk_gate_out__0_),
    .D(x[10]),
    .Q(r[10])
  );


  sky130_fd_sc_hd__dfxtp_1
  _88_
  (
    .CLK(__clk_gate_out__0_),
    .D(x[11]),
    .Q(r[11])
  );


  sky130_fd_sc_hd__dfxtp_1
  _89_
  (
    .CLK(__clk_gate_out__0_),
    .D(x[12]),
    .Q(r[12])
  );


  sky130_fd_sc_hd__dfxtp_1
  _90_
  (
    .CLK(__clk_gate_out__0_),
    .D(x[13]),
    .Q(r[13])
  );


  sky130_fd_sc_hd__dfxtp_1
  _91_
  (
    .CLK(__clk_gate_out__0_),
    .D(x[14]),
    .Q(r[14])
  );


  sky130_fd_sc_hd__dfxtp_1
  _92_
  (
    .CLK(__clk_gate_out__0_),
    .D(x[15]),
    .Q(r[15])
  );


  sky130_fd_sc_hd__dfxtp_1
  _93_
  (
    .CLK(__clk_gate_out__0_),
    .D(x[16]),
    .Q(r[16])
  );


  sky130_fd_sc_hd__dfxtp_1
  _94_
  (
    .CLK(__clk_gate_out__0_),
    .D(x[17]),
    .Q(r[17])
  );


  sky130_fd_sc_hd__dfxtp_1
  _95_
  (
    .CLK(__clk_gate_out__0_),
    .D(x[18]),
    .Q(r[18])
  );


endmodule

