// Code for N bit Booth Multiplier
/* Standard Notations
	m: Multiplicand
	r: Multiplier
	x: Number of bits in m
	y: Number of bits in r
*/

module booth_multiplier #(parameter x=4, y=4)
( input [x:0]m,
  input [y-1:0]r,
  input clk,rst,
  output [x+y-1:0]P_final);

 reg [x+y+1:0]A;
 reg [x+y+1:0]S;
 reg [x+y+1:0]P;
 integer count=0;
 
 assign P_final=(count==(y))?P[x+y:1]:0;

 always@(posedge clk)
 begin
	if((!rst) || count==(y+1))
	begin
		count<=0;
		A<={m,{(y+1){1'b0}}};
		S<={(~m)+1,{(y+1){1'b0}}};
		P<={{(x+1){1'b0}},r,1'b0};
	end
	else
	begin
		count<=count+1;
		case(P[1:0])
		2'b01:  begin
				P<=P+A;
				P<={P[x+y+1],P[x+y+1:1]};
			end
		2'b10:  begin
				P<=P+S;
				P<={P[x+y+1],P[x+y+1:1]};
			end
		default:begin
				P<=P;
				P<={P[x+y+1],P[x+y+1:1]};
			end
		endcase
	end
 end
/*
 always@(P)
 begin
	case(P[1:0])
	2'b01: P=P+A;
	2'b10: P=P+S;
	default:P=P;
	endcase
end
*/
endmodule
