// Full Adder Test Bench
module FA_tb; 
    reg [2:0] Z; // Input array Z of size 3 for looping the A,B,CIn inputs
    wire S,COut; // Output of S, COut

    FA FA1(Z[0],Z[1],Z[2],S,COut); // Instantiating of FA block FA1 w/ Array Z

    initial begin // Simulation Begins
        Z = 3'b000; // Z is set to 000 in binary
        repeat (7) #10 Z = Z + 3'b001; // Add 001 in binary to arr Z 7 times  
    end // End of loop

    initial #80 $finish; // Stop Simulation after 80 time units
    endmodule