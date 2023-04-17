`timescale 1ns / 1ps
module BinAdd_tb;
    reg [1:0] A;
    reg [1:0] B; // Input array Z of size 4 
    wire [1:0] S; // Output array S of size 2 
    wire COut; // Output COut (MSB)

    BinAdd binAdd(A,B,S,COut); // Instantiating of Binary Adder w/ default parameters
    initial begin // Simulation Begins
    A = 2'b0;
    B = 2'b0;
    repeat (4) #10 B = B + 2'b01;                   
    A = A + 2'b01;
    repeat (4) #10 B = B + 2'b01;                   
    A = A + 2'b01;
    repeat (4) #10 B = B + 2'b01;                   
    A = A + 2'b01;
    repeat (4) #10 B = B + 2'b01;                   
    A = A + 2'b01;
    end
    
    initial #160 $finish; // Stop simulation after 160ns
    endmodule
