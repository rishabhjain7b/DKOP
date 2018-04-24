//Testbench for Nbit Multiplier Booth's Algorithm Module - bmul

module tb_bmul #(parameter n = 4);
reg [n-1:0]mu,mr;
reg clk,rst,control;					//control = 0 to load inputs and control = 1 to process it
wire [2*n-1:0];

bmul m1(.*);


initial
begin
clk = 1'b0;
forever #10 clk = ~clk;
end

initial
begin
for(int i=0;i<2**n;i++)
begin
	for(int j=0;j<2**n;j++)
	begin

		#1
		control = 0;
		mu = i;
		#1
		mr = j;
		#1
		control = 1;
		#2

	end
#5
end
end

initial
begin
rst=0;
#15
rst=1;
repeat(6)
begin
#50 rst = 0;
#15 rst =1;
end
end


endmodule
