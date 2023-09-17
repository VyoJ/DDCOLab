module tb_simple_circuit3;
reg A2, B2, C2;
wire Z;
simple_circuit3 c1(A2,B2,C2,Z);

initial
begin
#0 A2=0;B2=0;C2=0;
#5 A2=0;B2=0;C2=1;
#5 A2=0;B2=1;C2=0;
#5 A2=0;B2=1;C2=1;
#5 A2=1;B2=0;C2=0;
#5 A2=1;B2=0;C2=1;
#5 A2=1;B2=1;C2=0;
#5 A2=1;B2=1;C2=1;
#5;
end

initial
begin
$monitor($time, " A2=%b, B2=%b, C2=%b, Z=%b", A2, B2, C2, Z);   
end
initial
begin
$dumpfile ("simple_circuit3.vcd");
$dumpvars (0, c1);
end
endmodule

