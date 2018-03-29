// Half Adder

module halfadder
(input a,b,
 output sum,carry);

assign sum=a^b,
	carry=a&b;
endmodule
