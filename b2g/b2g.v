// N-bit binary to gray converter

module b2g #(parameter n=4)
(input [n-1:0]bin,
 output [n-1:0]gry);

assign gry={bin[n-1],bin[n-2:0]^bin[n-1:1]};
endmodule

module b2g_tb #(parameter n=5);
reg [n-1:0]bin;
wire [n-1:0]gry;

b2g #(.n(n)) DUT (.*);

initial
begin
	bin=5'b10011;
	#5 $display("binary=%b ::: gray=%b",bin,gry);
end
endmodule
