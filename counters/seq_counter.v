// Code for counting sequence 0,1,3,7,9,11,13,14,0

module seq_counter
(input clk,rst_n,
 output [3:0]q);
 
 function  dff
(input clk,in,rst_n);
 begin
	if(!rst_n)
	dff = 0;
	else
	dff = in;
 end
 endfunction

 wire [3:0]din;
 reg [3:0]q_w;

 assign din[3]=(!q_w[1] & q_w[0] & q_w[3])|(!q_w[2] & q_w[3] & q_w[0])|(!q_w[3] & q_w[1] & q_w[2] & q_w[0]),
 	din[2]=(!q_w[1] & q_w[3] & q_w[2] & q_w[0])|(!q_w[2] & q_w[1] & q_w[0]),
 	din[1]=(!q_w[3] & !q_w[2] & q_w[0])|(!q_w[1] & q_w[3] & q_w[0]),
 	din[0]=(!q_w[1] & !q_w[3] & !q_w[2])|(!q_w[3] & q_w[1] & q_w[0])|(!q_w[2] & q_w[0]);

 assign q=q_w;

 always@( clk, rst_n)
 begin
	q_w[3] <= dff(clk,din[3],rst_n);
	q_w[2] <= dff(clk,din[2],rst_n);
	q_w[1] <= dff(clk,din[1],rst_n);
	q_w[0] <= dff(clk,din[0],rst_n);
end

endmodule
