// N-bit gray to binary converter

module g2b #(parameter n=4)
(input [n-1:0]gry,
 output [n-1:0]bin);
 
wire [n-1:0]bin_w;

assign bin_w={gry[n-1],gry[n-2:0]^bin_w[n-1:1]},
	bin=bin_w;

endmodule

module g2b_tb #(parameter n=5);
reg [n-1:0]gry;
wire [n-1:0]bin;

g2b #(.n(n)) DUT (.*);

initial
begin
	gry=5'b10011;
	#5 $display(" gray=%b ::: binary=%b",gry,bin);
end
endmodule
