module simple_circuit2 (A,B,C,D);  
output D;
input A, B, C;
wire W1;
and G1(W1, B, C);
or G2(D, W1, A);
endmodule

