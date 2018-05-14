// Code for Full adder for Vedic multiplier

module fa
(output sum,carry,
 input a,b,c);

assign sum=a^b^c,
	carry=(a&b)|(b&c)|(a&c);

endmodule
