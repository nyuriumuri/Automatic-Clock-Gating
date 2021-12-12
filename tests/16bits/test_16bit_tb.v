

`define FUNCTIONAL
`define UNIT_DELAY #1
`timescale 1ns/1ps 
`include "primitives.v"
`include "sky130_fd_sc_hd.v"
module test_16bit_tb;


reg [15:0] D;
reg rstn, s, clk;
wire [15:0]q;

test16bit uut(
    .x(D),
    .s(s),
    .clk(clk),
    .r(q)
);


initial begin
    $dumpfile("test_16bit.vcd");
    $dumpvars;
    $monitor(" d = %4d, s = %4d q = %4d clk = %4d ",D,s,q,clk);
  end

initial begin 
    clk = 0;
    forever begin 
        #2;
        clk = ~clk ;
    end 
end    

initial begin
    
    D = 16'd1230;
    s = 1;
    #4;
    D =16'd2;
    s = 0;
    
    #4;
    s=1;
    #4;
    D=16'd512;
    #10;
    $finish;
end 
endmodule