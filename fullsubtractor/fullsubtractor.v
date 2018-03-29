// Full Subtractor

module fullsubtractor
(input a,b,c,
 output diff,bor);

assign diff=a^b^c,
	bor=(~a&b)|(~a&c)|(b&c);
endmodule
