// Code for generating Binary Multiplier of a 2 bit number using DFM

module mul_2bit
(input [1:0]a,b,
 output [3:0]out);

wire [1:0]w;

assign out[0]=a[0]&b[0],
	{w[0],out[1]}=(a[1] & b[0])+(a[0] & b[1]),
	{out[3],out[2]}=(a[1] & b[1])+w[0];

endmodule

module mul_2bit_tb;
reg [1:0]a,b;
wire [3:0]out;

mul_2bit DUT (.*);

initial
begin
	{a,b}=4'b1011;
	#5 $display("input=%d,%d ::: output=%d",a,b,out);
	#5 {a,b}=4'b1101;
	#5 $display("input=%d,%d ::: output=%d",a,b,out);
	#5 {a,b}=4'b1000;
	#5 $display("input=%d,%d ::: output=%d",a,b,out);
end
endmodule
