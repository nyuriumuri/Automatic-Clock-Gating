

module test3
(
  D,
  rstn,
  en,
  clk,
  q
);

  wire [3:0] _0_;
  input [3:0] D;
  input clk;
  input en;
  output [3:0] q;
  input rstn;
  wire __clk_gate_out__0_;

  sky130_fd_sc_hd__dlclkp_1
  __clk_gate_0
  (
    .GCLK(__clk_gate_out__0_),
    .GATE(en),
    .CLK(clk)
  );


  sky130_fd_sc_hd__dfrtp_1
  _5_
  (
    .CLK(__clk_gate_out__0_),
    .D(D[0]),
    .Q(q[0]),
    .RESET_B(rstn)
  );


  sky130_fd_sc_hd__dfrtp_1
  _6_
  (
    .CLK(__clk_gate_out__0_),
    .D(D[1]),
    .Q(q[1]),
    .RESET_B(rstn)
  );


  sky130_fd_sc_hd__dfrtp_1
  _7_
  (
    .CLK(__clk_gate_out__0_),
    .D(D[2]),
    .Q(q[2]),
    .RESET_B(rstn)
  );


  sky130_fd_sc_hd__dfrtp_1
  _8_
  (
    .CLK(__clk_gate_out__0_),
    .D(D[3]),
    .Q(q[3]),
    .RESET_B(rstn)
  );


endmodule

