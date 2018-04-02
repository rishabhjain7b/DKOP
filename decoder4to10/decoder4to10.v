// Code for Decoder 4:10 using Decoder 3:8

module decoder4to10
(input en,
 input [3:0]in,
 output [9:0]y);

decoder3to8 dut1 (.en(~in[3]&en),.i(in[2:0]),.y(y[7:0])),
		dut2 (.en(in[3]&en),.i({1'b0,1'b0,in[0]}),.y({y[9],y[8]}));

endmodule

module decoder4to10_tb;
reg en;
reg [3:0]in;
wire [9:0]y;

decoder4to10 DUT (.*);

initial
begin
	en =1;
	#5 in=4'd5;
	#5 in=4'd6;
	#5 in=4'd8;
	#5 in=4'd7;
	#5 in=4'd9;
end

initial
$monitor($time,"in=%d ::: y=%d",in,y);

endmodule

