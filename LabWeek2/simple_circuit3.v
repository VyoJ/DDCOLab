module simple_circuit3 (A2,B2,C2,Z);  
output Z;
input A2, B2, C2;
wire W1, W2, W3;
and G1(W1, B2, C2);
or G2(W2, W1, A2);
and G3(W3, A2, B2);
or G4(Z, W2, W3);
endmodule

