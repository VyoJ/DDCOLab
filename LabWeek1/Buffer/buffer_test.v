module buffer_test;
reg a;
wire y;
buffergate buffer_test(y,a);

initial

begin
#0 a=0;
#5 a=1;

end

initial
begin
$monitor($time, " a=%b, y=%b",a,y);
end
initial
begin
$dumpfile ("buffer_test.vcd");
$dumpvars (0, buffer_test);
end
endmodule
