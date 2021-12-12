

module test16bit
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
  input clk;
  output [15:0] r;
  input s;
  input [15:0] x;
  wire __clk_gate_out__0_;

  sky130_fd_sc_hd__dlclkp_2
  __clk_gate_0
  (
    .GCLK(__clk_gate_out__0_),
    .GATE(s),
    .CLK(clk)
  );


  sky130_fd_sc_hd__dfxtp_1
  _32_
  (
    .CLK(__clk_gate_out__0_),
    .D(x[0]),
    .Q(r[0])
  );


  sky130_fd_sc_hd__dfxtp_1
  _33_
  (
    .CLK(__clk_gate_out__0_),
    .D(x[1]),
    .Q(r[1])
  );


  sky130_fd_sc_hd__dfxtp_1
  _34_
  (
    .CLK(__clk_gate_out__0_),
    .D(x[2]),
    .Q(r[2])
  );


  sky130_fd_sc_hd__dfxtp_1
  _35_
  (
    .CLK(__clk_gate_out__0_),
    .D(x[3]),
    .Q(r[3])
  );


  sky130_fd_sc_hd__dfxtp_1
  _36_
  (
    .CLK(__clk_gate_out__0_),
    .D(x[4]),
    .Q(r[4])
  );


  sky130_fd_sc_hd__dfxtp_1
  _37_
  (
    .CLK(__clk_gate_out__0_),
    .D(x[5]),
    .Q(r[5])
  );


  sky130_fd_sc_hd__dfxtp_1
  _38_
  (
    .CLK(__clk_gate_out__0_),
    .D(x[6]),
    .Q(r[6])
  );


  sky130_fd_sc_hd__dfxtp_1
  _39_
  (
    .CLK(__clk_gate_out__0_),
    .D(x[7]),
    .Q(r[7])
  );


  sky130_fd_sc_hd__dfxtp_1
  _40_
  (
    .CLK(__clk_gate_out__0_),
    .D(x[8]),
    .Q(r[8])
  );


  sky130_fd_sc_hd__dfxtp_1
  _41_
  (
    .CLK(__clk_gate_out__0_),
    .D(x[9]),
    .Q(r[9])
  );


  sky130_fd_sc_hd__dfxtp_1
  _42_
  (
    .CLK(__clk_gate_out__0_),
    .D(x[10]),
    .Q(r[10])
  );


  sky130_fd_sc_hd__dfxtp_1
  _43_
  (
    .CLK(__clk_gate_out__0_),
    .D(x[11]),
    .Q(r[11])
  );


  sky130_fd_sc_hd__dfxtp_1
  _44_
  (
    .CLK(__clk_gate_out__0_),
    .D(x[12]),
    .Q(r[12])
  );


  sky130_fd_sc_hd__dfxtp_1
  _45_
  (
    .CLK(__clk_gate_out__0_),
    .D(x[13]),
    .Q(r[13])
  );


  sky130_fd_sc_hd__dfxtp_1
  _46_
  (
    .CLK(__clk_gate_out__0_),
    .D(x[14]),
    .Q(r[14])
  );


  sky130_fd_sc_hd__dfxtp_1
  _47_
  (
    .CLK(__clk_gate_out__0_),
    .D(x[15]),
    .Q(r[15])
  );


endmodule

