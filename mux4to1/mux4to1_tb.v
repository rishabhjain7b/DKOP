// 4:1 MUX testbench

module mux4to1_tb;
reg [3:0]i;
reg [1:0]s;
wire y;

mux4to1 dut (.*);

initial 
begin
	i=4'b0101;
	#5 s=2'b00;
	#5 s=2'b01;
	#5 s=2'b10;
	#5 s=2'b11;

	#5 i=4'b0110;
	#5 s=2'b00;
	#5 s=2'b01;
	#5 s=2'b10;
	#5 s=2'b11;

	#5 i=4'b0101;
	#5 s=2'b00;
	#5 s=2'b01;
	#5 s=2'b10;
	#5 s=2'b11;

	#5 i=4'b1110;
	#5 s=2'b00;
	#5 s=2'b01;
	#5 s=2'b10;
	#5 s=2'b11;
end 

initial
$monitor($time,"Input i=%b, s=%b >>> Output y=%b", i,s,y);

endmodule
