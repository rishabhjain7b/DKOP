// Full Adder

module fulladder
(input a,b,c,
 output sum,carry);

assign sum=a^b^c,
	carry=(a&b)|(a&c)|(b&c);
endmodule
