// Code for Half adder for Vedic multiplier

module ha
(output sum,carry,
 input a,b);

assign sum=a^b,
	carry=a&b;

endmodule
