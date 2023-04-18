`timescale 1ns / 1ps
module BinAdd4Bit_tb;
    reg [3:0] A; // Input array A of size 4
    reg [3:0] B; // Input array B of size 4 
    wire [3:0] S; // Output array S of size 4
    wire COut; // Output COut (MSB)

    BinAdd4Bit binAdd(A,B,S,COut); // Instantiating of Binary Adder w/ default parameters
    initial begin // Simulation Begins
    A = 4'b0;
    B = 4'b0;
    repeat (16) #10 B = B + 4'b01;                   
    A = A + 4'b01;
    repeat (16) #10 B = B + 4'b01;                   
    A = A + 4'b01;
    repeat (16) #10 B = B + 4'b01;                   
    A = A + 4'b01;
    repeat (16) #10 B = B + 4'b01;                   
    A = A + 4'b01;
    end
    
    initial #640 $finish; // Stop simulation after 160ns
    endmodule
