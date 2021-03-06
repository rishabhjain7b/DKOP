// N-bit comparator using DFM
// gt: Greater than, lt: less than, eq: Equal

module comparator_nbit_tb #(parameter n=2);
reg [n-1:0]a,b;
wire gt,lt,eq;

comparator_nbit dut (.*);

initial
begin
	#5 {a,b}={2'd0,2'd1};
	#5 {a,b}={2'd1,2'd1};	
	#5 {a,b}={2'd2,2'd0};
	#5 {a,b}={2'd1,2'd3};
	#5 {a,b}={2'd3,2'd1};
	#5 {a,b}={2'd2,2'd3};
	#5 {a,b}={2'd2,2'd2};
end 

initial
$monitor($time,"Input a=%d, b=%d >>> Output greater than=%b, less than=%b, equal=%b",a,b,gt,lt,eq);
 
endmodule