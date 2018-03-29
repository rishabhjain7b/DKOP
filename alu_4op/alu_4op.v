// ALU 4 operation

module alu_4op(in1,in2,sel,out);

`include "operation.v"

input [3:0]in1,in2;
 input [1:0]sel;
 output reg [7:0]out;
always@(sel,in1,in2)
begin
	out=oper(sel,in1,in2);
end
endmodule

