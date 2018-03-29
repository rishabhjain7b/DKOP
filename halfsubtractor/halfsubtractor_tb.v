// Half Subtractor Testbench

module halfsubtractor_tb;
reg x,y;
wire d,b;

halfsubtractor dut (.a(x),.b(y),.diff(d),.bor(b));

initial
begin
	{x,y}=2'b00;
	#5 {x,y}=2'b01;
	#5 {x,y}=2'b10;
	#5 {x,y}=2'b11;
end

initial
$monitor($time," Input a=%b, b=%b >>> Output difference=%b, borrow=%b",x,y,d,b);

endmodule