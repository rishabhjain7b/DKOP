// function example for buffer

module buffer
(input clk,rst,
 input [3:0]in,
 output reg [3:0]out);

function integer buff;
	input [3:0]x;
	buff = x;
endfunction

always@(posedge clk)
begin
	out=buff(in);
end

endmodule
