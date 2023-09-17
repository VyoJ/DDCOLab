module tb_simple_circuit2;
reg A, B, C;
wire D;
simple_circuit2 c1(A,B,C,D);

initial
begin
#0 A=0;B=0;C=0;
#5 A=0;B=0;C=1;
#5 A=0;B=1;C=0;
#5 A=0;B=1;C=1;
#5 A=1;B=0;C=0;
#5 A=1;B=0;C=1;
#5 A=1;B=1;C=0;
#5 A=1;B=1;C=1;
#5;
end

initial
begin
$monitor($time, " A=%b, B=%b, C=%b, D=%b", A, B, C, D);   
end
initial
begin
$dumpfile ("simple_circuit2.vcd");
$dumpvars (0, c1);
end
endmodule

