`define FUNCTIONAL
`define UNIT_DELAY #1
`timescale 1ns/1ps 
`include "primitives.v"
`include "sky130_fd_sc_hd.v"
module test;
reg d1, d2, clk, ld1, ld2;
wire q1, q2;

test2 uut(
    .d1(d2),
    .d2(d2),
    .clk(clk),
    .ld1(ld1),
    .ld2(ld2),
    .q1(q1),
    .q2(q2)
);


initial begin
    $dumpfile("add.vcd");
    $dumpvars;
    $monitor(" d1 = %4d d2 = %4d ld1 = %4d ld2 = %4d q1 = %4d q2 = %4d",d1,d2,ld1,ld2,q1,q2);
  end

initial begin 
    clk = 0;
    forever begin 
        #2;
        clk = ~clk ;
    end 
end    

initial begin
    d1 =0;
    d2 = 0;
    ld1 = 1;
    ld2 = 1;
    #10;
    ld1 = 0;
    d2 = 1;
    d1 = 1;
    #10;
    ld1=1;
    #10;
    ld2 = 0;
    d2 = 0;
    d1 = 0;
    #10;
    ld2=1;
    #10;
    $finish;
end 
endmodule