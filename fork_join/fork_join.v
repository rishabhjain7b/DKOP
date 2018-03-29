// Fork Join example

module fork_join
(input [3:0]in,
 input clk,
 output reg [3:0]out);

reg [3:0]a,b,c,d,e,f,g,h;

always@(posedge clk)
fork
	$monitor($time,"in=%h, a=%h, b=%h, c=%h, d=%h, e=%h, f=%h, g=%h, h=%h, out=%h",in,a,b,c,d,e,f,g,h,out);
	
	#15 a=in;
	#1 b= in+5;

	begin
		#2 d=in+5;
		#1 c=in-5;
		#3 d=in-5;
		#2 e=in-2;
		#4 f=in+8;
	end
	
	#2 g=in-2;
	#2 h=in;
	#1 out=b;
join

endmodule
  
