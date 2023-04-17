// Simple FA Logic
`timescale 1ns / 1ps
module FA(A,B,CIn,S,COut);
	input A,B,CIn;
	wire W1,W2,W3,W4,W5,W6,W7;
	output S,COut;
	
	//S AND-OR Implementation
    and A1(W1,~A,~B,CIn);
    and A2(W2,A,~B,~CIn);
    and A3(W3,A,B,CIn); 
    and A4(W4,~A,B,~CIn);
    or O1(S,W1,W2,W3,W4);

    //COut AND-OR Implementation
    and A5(W5,A,B);
    and A6(W6,A,CIn);
    and A7(W7,B,CIn);
    or O2(COut,W5,W6,W7);
    endmodule