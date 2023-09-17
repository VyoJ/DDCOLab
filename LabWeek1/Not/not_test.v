module not_test;
reg a;
wire y;
notgate not_test(y,a);

initial
begin
#0 a = 1;
#5 a = 0;

end

initial
begin
$monitor($time, " a=%b, y=%b", a, y);
end
initial
begin
$dumpfile ("not_test.vcd");
$dumpvars (0, not_test);
end
endmodule
