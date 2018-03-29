// 8:3 encoder usign Behaviour Modelling

module encoder8to3
(input [7:0]i,
 input en,
 output reg [2:0]y);

always @ (en or i)
begin
	if (en)
	begin
	if(i[7])
		y=3'b111;
	else if(i[6])
		y=3'b110;
	else if(i[5])
		y=3'b101;
	else if(i[4])
		y=3'b100;
	else if(i[3])
		y=3'b011;
	else if(i[2])
		y=3'b010;
	else if(i[1])
		y=3'b001;
	else
		y=3'b000;
	end
end 
endmodule


