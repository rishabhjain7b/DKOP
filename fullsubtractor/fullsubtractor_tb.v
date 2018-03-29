// Full Subtractor testbench

module fullsubtractor_tb;
reg a,b,c;
wire diff,bor;

fullsubtractor dut (.a(a),.b(b),.c(c),.diff(diff),.bor(bor));

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
$monitor($time," Input a=%b, b=%b, c=%b >>> Output difference=%b, borrow=%b",a,b,c,diff,bor);

endmodule