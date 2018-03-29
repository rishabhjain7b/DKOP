// N-bit comparator using DFM
// gt: Greater than, lt: less than, eq: Equal

module comparator_nbit #(parameter n=2)
(input [n-1:0]a,b,
 output gt,lt,eq);

assign gt=a>b,
	lt=a<b,
	eq=(a==b);
endmodule
