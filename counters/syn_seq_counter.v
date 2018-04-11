// Code for counting sequence 0,1,3,7,9,11,13,14,0

module syn_seq_counter
(input clk,rst_n,
 output [3:0]qout);

 wire [3:0]din;
 wire [3:0]q_w;

 assign din[3]=(!q_w[1] & q_w[0] & q_w[3])|(!q_w[2] & q_w[3] & q_w[0])|(!q_w[3] & q_w[1] & q_w[2] & q_w[0]),
 	din[2]=(!q_w[1] & q_w[3] & q_w[2] & q_w[0])|(!q_w[2] & q_w[1] & q_w[0]),
 	din[1]=(!q_w[3] & !q_w[2] & q_w[0])|(!q_w[1] & q_w[3] & q_w[0]),
 	din[0]=(!q_w[1] & !q_w[3] & !q_w[2])|(!q_w[3] & q_w[1] & q_w[0])|(!q_w[2] & q_w[0]);

 assign qout=q_w;

 dff f1 (.clk(clk),.rst_n(rst_n),.din(din[0]),.q(q_w[0])),
	f2 (.clk(clk),.rst_n(rst_n),.din(din[1]),.q(q_w[1])),
	f3 (.clk(clk),.rst_n(rst_n),.din(din[2]),.q(q_w[2])),
	f4 (.clk(clk),.rst_n(rst_n),.din(din[3]),.q(q_w[3]));

 endmodule
