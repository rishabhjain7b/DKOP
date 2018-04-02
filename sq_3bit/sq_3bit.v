// Code for generating square of a 3 bit number using DFM

module sq_3bit
(input [2:0]in,
 output [5:0]out);

/*wire [2:0]w;

assign out[0]=in[0],
	{w[0],out[1]}=(in[1]&in[0])<<1,
	{w[1],out[2]}=((in[2]&in[0])<<1)+in[1]+w[0],
	{w[2],out[3]}=((in[2]&in[1])<<1)+w[1],
	{out[5],out[4]}=in[2]+w[2];
*/

wire [5:0]w1,w2,w3;

assign w1=in[0]?in:0,
	w2=in[1]?in<<1:0,
	w3=in[2]?in<<2:0,
	out=w1+w2+w3;

endmodule

module sq_3bit_tb;
reg [2:0]in;
wire [5:0]out;

sq_3bit DUT (.*);

initial
begin
	in=3'b101;
	#5 $display("input=%d ::: output=%d",in,out);
	#5 in=3'b110;
	#5 $display("input=%d ::: output=%d",in,out);
	#5 in=3'b111;
	#5 $display("input=%d ::: output=%d",in,out);
end
endmodule
