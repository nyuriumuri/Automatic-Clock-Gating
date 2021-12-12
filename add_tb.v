`define FUNCTIONAL
`define UNIT_DELAY #1
`include "primitives.v"
`include "sky130_fd_sc_hd.v"
`timescale 1ns/1ps 
module test;
reg [3:0] x;
reg [3:0] y;
wire [3:0] r;
reg clk;
reg s;
test1 uut(
    .x(x),
    .y(y),
    .clk(clk),
    .s(s),
    .r(r)
);


initial begin
    $dumpfile("add.vcd");
    $dumpvars;
    $monitor("x = %4d y = %4d s = %4d r = %4d", x, y, s, r);
  end

initial begin 
    clk = 0;
    forever begin 
        #2;
        clk = ~clk ;
    end 
end    

initial begin
    x =0;
    y = 0;
    s = 1;
    #10;
    x = 4'd1;
    y = 4'd8;
    s = 0;
    #10;
    s = 1;
    #10;
    x = 4'd5;
    s = 1;
    #10;
    s= 0;
    #10;
    y = 4'd9;
    #10;
    s = 1;
    #10;
    $finish;
end 
endmodule