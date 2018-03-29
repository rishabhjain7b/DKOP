// Full Adder testbench

module fulladder_tb;
reg a,b,c;
wire sum,carry;

fulladder dut (.a(a),.b(b),.c(c),.sum(sum),.carry(carry));

initial
begin
	{a,b,c}=3'b000;
	#5 {a,b,c}=3'b001;
	#5 {a,b,c}=3'b010;
	#5 {a,b,c}=3'b011;
	#5 {a,b,c}=3'b100;
	#5 {a,b,c}=3'b101;
	#5 {a,b,c}=3'b110;
	#5 {a,b,c}=3'b111;
end

initial
$monitor($time," Input a=%b, b=%b, c=%b >>> Output sum=%b, carry=%b",a,b,c,sum,carry);

endmodule