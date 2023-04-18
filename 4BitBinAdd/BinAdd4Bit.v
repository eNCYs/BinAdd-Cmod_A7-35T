module BinAdd4Bit(A,B,S,COut);
    input [3:0] A,B;
    output [3:0] S;
    output COut;
    wire w1,w2,w3;
    FA FA0(A[0],B[0],1'b0,S[0],w1);
    FA FA1(A[1],B[1],w1,S[1],w2);
    FA FA2(A[2],B[2],w2,S[2],w3);
    FA FA3(A[3],B[3],w3,S[3],COut);
    endmodule