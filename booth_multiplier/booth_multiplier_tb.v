// Test bench for booth multiplier

module booth_multiplier_tb #(parameter x=4, y=4);
reg signed [x:0]m;
reg signed [y-1:0]r;
reg en;
wire [x+y-1:0]P_final;

booth_multiplier DUT (.*);

initial 
en=1;

initial 
begin
	m=4;
	r=6;
	#40 
	
	m=4;
	r=-8;
	#60; 

	m=1;
	r=-6;
	#60;
 
	m=-5;
	r=-8;
	#60;

	m=3;
	r=-4; 
end

initial
	$monitor($time,"m=%d  r=%d ::: Product=%d ==== %b",m,r,P_final,P_final);
endmodule
