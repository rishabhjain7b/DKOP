// Code for testing real keywords and format specifier

module test_real;
real a, b, y;

initial
begin
	a=21.42;
	b=43.75;
	y=a+b;
	$display("y=%e",y);
	$display("y=%g",y);
	$display("y=%f",y);
end
endmodule
