module or_test;
reg a, b;
wire c;
orgate or_test(a,b,c);

initial

begin
#0 a=0;b=0;
#5 a=0;b=1;
#10 a=1;b=0;
#25 a=1;b=1;
end

initial
begin
$monitor($time, " a=%b, b=%b, c=%b", a,b,c);
end
initial
begin
$dumpfile ("or_test.vcd");
$dumpvars (0, or_test);
end
endmodule
