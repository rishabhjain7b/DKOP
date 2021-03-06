// ALU Testbench

module alu_4op_tb;
reg [3:0]in1,in2;
reg [1:0]sel;
wire [7:0]out;

alu_4op dut (.*);

initial 
begin
	$monitor($time," Input sel=%b, input1=%d, input2=%d >>> Output out=%d",sel,in1,in2,out);
	#10 sel=2'b00;
	#10 in1=4'd7; in2=4'd8;
	#10 in1=4'd7; in2=4'd8;
	#10 in1=4'd6; in2=4'd9;
	#10 in1=4'd2; in2=4'd12;
	#10 in1=4'd5; in2=4'd5;

	#50
	#10 sel=2'b01;
	#10 in1=4'd7; in2=4'd8;
	#10 in1=4'd7; in2=4'd8;
	#10 in1=4'd6; in2=4'd9;
	#10 in1=4'd2; in2=4'd12;
	#10 in1=4'd5; in2=4'd5;

	#50
	#10 sel=2'b10;
	#10 in1=4'd7; in2=4'd8;
	#10 in1=4'd7; in2=4'd8;
	#10 in1=4'd6; in2=4'd9;
	#10 in1=4'd2; in2=4'd12;
	#10 in1=4'd5; in2=4'd5;

	#50
	#10 sel=2'b11;
	#10 in1=4'd7; in2=4'd8;
	#10 in1=4'd7; in2=4'd8;
	#10 in1=4'd6; in2=4'd9;
	#10 in1=4'd2; in2=4'd12;
	#10 in1=4'd5; in2=4'd5;
end
endmodule
