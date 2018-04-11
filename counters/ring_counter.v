// N bit Ring Counter

module ring_counter #(parameter n=4)
(input clk, rst_n,
 input sel,
 output [n-1:0]q);

wire [n-1:0]q_w;
wire din;

assign q=q_w;

assign din=~sel?q_w[n-1]:1'b1;

dff d1 (.clk(clk),.rst_n(rst_n),.din(din),.q(q_w[0]));

genvar i;
generate
	for(i=1;i<n;i=i+1)
	begin: gen_for
		dff f2 (.clk(clk),.rst_n(rst_n),.din(q_w[i-1]),.q(q_w[i]));
	end
endgenerate
endmodule 
