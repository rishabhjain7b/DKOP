//N bit Multiplier using booths algorithm


module bmul #(parameter n = 4)
(input [n-1:0]mu,mr,
input clk,rst,control,					//control = 0 to load inputs and control = 1 to process it
output reg [2*n-1:0]o);

reg [n:0] r;
integer i=0;
reg [2*n-1:0]s;
reg [2*n-1:0]a;


always @(posedge clk)
begin

if(!rst)						//For Reset Functionality to initialise all variables to zero
begin
s<=0;
a<=0;
o<=0;
end
else 

if(!control)						//For Loading the input and temporary variables
begin
r <= {mr,1'b0};
if(mu[n-1]==0)
s<={{n{1'b0}},mu};
else
s<={{n{1'b1}},mu};
end
else

if(control)						//For processing the given data to output
begin
i<=i+1;
if(r[i+1]==1&&r[i]==0)
a<=a+(~(s<<i))+1'b1;
else
if(r[i+1]==0&&r[i]==1)
a<=a+(s<<i);
if(i==4)
begin
	o<=a;
	i<=0;
end
end

end

endmodule
