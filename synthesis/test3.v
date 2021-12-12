module test3(input [3:0] D, input rstn, input en, input clk, output reg [3:0] q);
always @ (posedge clk or negedge rstn) begin
if(!rstn)  begin
 q <= 0;
end
else begin
if(en) q <= D;
end
end
endmodule