// 4:1 MUX using structural modelling

module mux4to1
(input [3:0]i,
 input [1:0]s,
 output y);

wire [3:0]w;

and g1 (w[0], i[0], ~s[0],~s[1]),
	g2 (w[1], i[1], ~s[0],s[1]),
	g3 (w[2], i[2], s[0],~s[1]),
	g4 (w[3], i[3], s[0],s[1]);

or g5 (y, w[0],w[1],w[2],w[3]);

endmodule