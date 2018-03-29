// 2:1 MUX 

module mux2to1
(input a,b,s,
 output y);

assign y=s?b:a;
endmodule