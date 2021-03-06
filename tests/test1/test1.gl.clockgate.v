

module test1
(
  x,
  y,
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
  input clk;
  output [3:0] r;
  input s;
  input [3:0] x;
  input [3:0] y;

  sky130_fd_sc_hd__nand2_1
  _19_
  (
    .A(x[0]),
    .B(y[0]),
    .Y(_04_)
  );


  sky130_fd_sc_hd__xnor2_1
  _20_
  (
    .A(x[0]),
    .B(y[0]),
    .Y(_05_)
  );


  sky130_fd_sc_hd__nand2_1
  _23_
  (
    .A(x[1]),
    .B(y[1]),
    .Y(_07_)
  );


  sky130_fd_sc_hd__xnor2_1
  _24_
  (
    .A(x[1]),
    .B(y[1]),
    .Y(_08_)
  );


  sky130_fd_sc_hd__xnor2_1
  _25_
  (
    .A(_04_),
    .B(_08_),
    .Y(_09_)
  );


  sky130_fd_sc_hd__o21ai_0
  _28_
  (
    .A1(_04_),
    .A2(_08_),
    .B1(_07_),
    .Y(_11_)
  );


  sky130_fd_sc_hd__xor2_1
  _29_
  (
    .A(x[2]),
    .B(y[2]),
    .X(_12_)
  );


  sky130_fd_sc_hd__xnor2_1
  _30_
  (
    .A(_11_),
    .B(_12_),
    .Y(_13_)
  );


  sky130_fd_sc_hd__maj3_1
  _34_
  (
    .A(x[2]),
    .B(y[2]),
    .C(_11_),
    .X(_16_)
  );


  sky130_fd_sc_hd__xor2_1
  _35_
  (
    .A(x[3]),
    .B(y[3]),
    .X(_17_)
  );


  sky130_fd_sc_hd__xnor2_1
  _36_
  (
    .A(_16_),
    .B(_17_),
    .Y(_18_)
  );

  wire __clk_gate_out__0_;

  sky130_fd_sc_hd__dlclkp
  __clk_gate_0
  (
    .GCLK(__clk_gate_out__0_),
    .GATE(s),
    .CLK(clk)
  );

  wire _inv_wire__0_;

  sky130_fd_sc_hd__inv
  _inv__0_
  (
    .Y(_inv_wire__0_),
    .A(_05_)
  );

  wire _inv_wire__1_;

  sky130_fd_sc_hd__inv
  _inv__1_
  (
    .Y(_inv_wire__1_),
    .A(_09_)
  );

  wire _inv_wire__2_;

  sky130_fd_sc_hd__inv
  _inv__2_
  (
    .Y(_inv_wire__2_),
    .A(_13_)
  );

  wire _inv_wire__3_;

  sky130_fd_sc_hd__inv
  _inv__3_
  (
    .Y(_inv_wire__3_),
    .A(_18_)
  );


  sky130_fd_sc_hd__dfxtp_1
  _38_
  (
    .CLK(__clk_gate_out__0_),
    .D(_inv_wire__0_),
    .Q(r[0])
  );


  sky130_fd_sc_hd__dfxtp_1
  _39_
  (
    .CLK(__clk_gate_out__0_),
    .D(_inv_wire__1_),
    .Q(r[1])
  );


  sky130_fd_sc_hd__dfxtp_1
  _40_
  (
    .CLK(__clk_gate_out__0_),
    .D(_inv_wire__2_),
    .Q(r[2])
  );


  sky130_fd_sc_hd__dfxtp_1
  _41_
  (
    .CLK(__clk_gate_out__0_),
    .D(_inv_wire__3_),
    .Q(r[3])
  );


endmodule

