

`define FUNCTIONAL
`define UNIT_DELAY #1
`timescale 1ns/1ps 
`include "primitives.v"
`include "sky130_fd_sc_hd.v"
module test_32bit_tb;


reg [31:0] D;
reg rstn, s, clk;
wire [31:0]q;

test_32bit uut(
    .x(D),
    .s(s),
    .clk(clk),
    .r(q)
);


initial begin
    $dumpfile("test_16bit.vcd");
    $dumpvars;
    $monitor(" d = %6d, s = %4d q = %4d clk = %6d ",D,s,q,clk);
  end

initial begin 
    clk = 0;
    forever begin 
        #2;
        clk = ~clk ;
    end 
end    

initial begin
    
    D = 32'd256230;
    s = 1;
    #4;
    D =32'd91;
    s = 0;
    
    #4;
    D=32'd512;
    s=1;
    #4;
    
    #10;
    $finish;
end 
endmodule