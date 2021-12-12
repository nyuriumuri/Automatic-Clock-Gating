`define FUNCTIONAL
`define UNIT_DELAY #1
`timescale 1ns/1ps 
`include "primitives.v"
`include "sky130_fd_sc_hd.v"
module test3_tb;


reg [3:0] D;
reg en, clk;
wire [3:0]q;

test3 uut(
    .D(D),
    .rstn(rstn),
    .en(en),
    .clk(clk),
    .q(q)
);


initial begin
    $dumpfile("test3.vcd");
    $dumpvars;
    $monitor(" d = %4d, rstn = %4d, en = %4d q = %4d clk = %4d ",D,rstn,en,q,clk);
  end

initial begin 
    clk = 0;
    forever begin 
        #2;
        clk = ~clk ;
    end 
end    

initial begin
    rstn = 1;
    D = 4'd1;
    en = 1;
    #4;
    D =4'd2;
    en = 0;
    
    #3;
    rstn=0;
    en =1;
    #4;
    rstn=1;
    #10;
    D=4'd12;
    #10;
    $finish;
end 
endmodule
