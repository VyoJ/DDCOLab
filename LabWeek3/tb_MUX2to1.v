module tb;
reg A, B, S;
wire X;

initial 
begin
$dumpfile("MUX2_test.vcd");
$dumpvars(0, tb);    
end

mux2 newMUX(.i0(A), .i1(B), .j(S), .o(X));

initial 
begin
$monitor($time, " i0 = %b, i1 = %b, j = %b, o = %b", A, B, S, X);
#0 S = 1'b0; A = 1'b0; B = 1'b0;
#5 S = 1'b0; A = 1'b0; B = 1'b1;
#5 S = 1'b0; A = 1'b1; B = 1'b0;
#5 S = 1'b0; A = 1'b1; B = 1'b1;
#5 S = 1'b1; A = 1'b0; B = 1'b0;
#5 S = 1'b1; A = 1'b0; B = 1'b1;
#5 S = 1'b1; A = 1'b1; B = 1'b0;
#5 S = 1'b1; A = 1'b1; B = 1'b1;
end

endmodule

