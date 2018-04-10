// Code for counting 0 to 31 in odd, 32 to 63 in even and after 63 returns to 0

module count_odd_even
( input clk,rst_n,
  output [5:0]q);

 reg [5:0]q_w;

 assign q=q_w;

 always@(posedge clk, negedge rst_n)
 begin
	if(!rst_n || q_w==6'd63)
	q_w <= 6'd0;
	else if(q_w==6'd0 || q_w==6'd31 || q_w==6'd62)
	q_w <= q_w+1;
	else 
	q_w<= q_w+2;
end
endmodule

