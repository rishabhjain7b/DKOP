// Code for SR latch using NAND gates only 

module srlatch
(input s,r,
 output q,qbar);

wire w1,w2;

nand 	n1 (w1,w2,s),
	n2 (w2,w1,r);

assign q=w1,
	qbar=w2;

endmodule

module srlatch_tb;
reg s,r;
wire q,qbar;

srlatch DUT (.*);

initial 
begin
	{s,r}=2'b00;
	#5 {s,r}=2'b01;
	#5 {s,r}=2'b10;
	#5 {s,r}=2'b11;
end

initial
$monitor($time," s=%b ::: r=%b ::: q=%b ::: qbar=%b",s,r,q,qbar);

endmodule
