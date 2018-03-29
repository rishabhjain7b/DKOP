// testbench of buffer

module buffer_tb;
reg clk,rst;
reg [3:0]in;
wire [3:0]out;

buffer dut (.*);

initial 
begin 
	$monitor($time, " Input is clock=%d, reset=%b, in=%b >>> Output out=%b",clk,rst,in,out);
	in=4'b0001;
	#5 in=4'b0101;
	#5 in=4'b1001;
	#5 in=4'b0011;
	#5 in=4'b1101;
end

initial
clk=1'b0;

always 
clk=~clk;

endmodule
