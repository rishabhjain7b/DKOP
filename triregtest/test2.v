// code for wire and tri

module test2;

reg en=1;

wire a=en?1:0;
//assign a=en?1:0;

tri b=en?1:0;

initial
begin
	en=0;
	#5
	$display(a);
	$display(b);
	en=1;
	#5
	$display(a);
	$display(b);
end
endmodule

