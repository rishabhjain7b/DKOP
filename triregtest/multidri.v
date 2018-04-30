 // Code for multidriver problem

module multidri;
 wire a;
 wire b;
 reg y;

always@(a,b)
begin
	y=a|b;
end
always@(a,b)
begin
	y=a&b;
end
always@(a,b)
begin
	y=a|b;
end

endmodule
