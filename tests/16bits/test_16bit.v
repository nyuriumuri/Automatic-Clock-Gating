module test_16bit(input [15:0] x, input s, input clk, output [15:0] r);
	reg [15:0] r;
	always @(posedge clk)
		if(s) r <= x ;
endmodule
