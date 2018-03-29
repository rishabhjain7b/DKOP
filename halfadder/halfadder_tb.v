// Half Adder Testbench

module halfadder_tb;
reg x,y;
wire s,c;

halfadder dut (.a(x),.b(y),.sum(s),.carry(c));

initial
begin
	{x,y}=2'b00;
	#5 {x,y}=2'b01;
	#5 {x,y}=2'b10;
	#5 {x,y}=2'b11;
end

initial
$monitor($time," Input a=%b, b=%b >>> Output sum=%b, carry=%b",x,y,s,c);

endmodule