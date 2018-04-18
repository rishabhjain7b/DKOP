// testing System Verilog

module test #(parameter size=100);
reg [size-1:0]a,b;

initial
begin
	a={size{1'b1}};
	$display("a=%b",a);
	b='1;
	$display("b=%b",b);	
end
endmodule
