

module test2
(
  d1,
  d2,
  clk,
  ld1,
  ld2,
  q1,
  q2
);

  wire _0_;
  wire _1_;
  input clk;
  input d1;
  input d2;
  input ld1;
  input ld2;
  output q1;
  output q2;
  wire __clk_gate_out__0_;
  wire __clk_gate_out__1_;

  sky130_fd_sc_hd__dlclkp_1
  __clk_gate_0
  (
    .GCLK(__clk_gate_out__0_),
    .GATE(ld1),
    .CLK(clk)
  );


  sky130_fd_sc_hd__dlclkp_1
  __clk_gate_1
  (
    .GCLK(__clk_gate_out__1_),
    .GATE(ld2),
    .CLK(clk)
  );


  sky130_fd_sc_hd__dfxtp_1
  _4_
  (
    .CLK(__clk_gate_out__0_),
    .D(d1),
    .Q(q1)
  );


  sky130_fd_sc_hd__dfxtp_1
  _5_
  (
    .CLK(__clk_gate_out__1_),
    .D(d2),
    .Q(q2)
  );


endmodule

