module test_32bit(input [31:0] x, input s, input clk, output [31:0] r);
	reg [31:0] r;
	always @(posedge clk)
		if(s) r <= x ;
endmodule
