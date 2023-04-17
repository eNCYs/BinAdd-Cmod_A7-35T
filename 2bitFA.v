module BinAdd(A,B,S,COut);
    input [1:0] A,B;
    output [1:0] S;
    output COut;
    wire w1;
    FA FA0(A[0],B[0],1'b0,S[0],w1);
    FA FA1(A[1],B[1],w1,S[1],COut);
    
    endmodule
