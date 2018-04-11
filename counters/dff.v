// Code for DFF 

module dff
(input clk, rst_n,
 input din,
 output reg q);

 always@(posedge clk, negedge rst_n)
 begin
	if(!rst_n)
	q<=0;
	else
	q<=din;
 end
endmodule
