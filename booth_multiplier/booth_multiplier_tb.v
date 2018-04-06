// Test bench for booth multiplier

module booth_multiplier_tb #(parameter x=4, y=4);
reg signed [x:0]m;
reg signed [y-1:0]r;
reg clk, rst;
wire [x+y-1:0]P_final;

booth_multiplier DUT (.*);

initial 
clk=0;

always
#5 clk=~clk;

initial
begin
	rst=1;
	#2 rst=0;
	#3 rst=1;
end

initial 
begin
	m=4;
	r=6;
	#40 
	
	m=-4;
	r=8;
	#60; 
	m=10;
	r=-6;
	#60; 
	m=-5;
	r=-9;
	#60; 
end

initial
	$monitor($time,"m=%d  r=%d ::: Product=%d",m,r,P_final);
endmodule
