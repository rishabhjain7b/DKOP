// Function for ALU 4 operation

function integer oper;
	input [1:0]op;
	input [3:0]in1,in2;
	
	begin
	case(op)
	2'b00: oper=in1+in2;
	2'b01: oper=in1-in2;
	2'b10: oper=in1*in2;
	2'b11: oper=in1/in2;
	default: oper=0;
	endcase
	end
endfunction
