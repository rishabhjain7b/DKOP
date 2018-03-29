// Half Subtractor

module halfsubtractor
(input a,b,
 output diff,bor);

assign diff=a^b,
	bor=(~a)&b;
endmodule
