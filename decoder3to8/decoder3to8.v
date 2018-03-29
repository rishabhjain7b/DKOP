// 3:8 Decoder using SM

module decoder3to8
(input en,
 input [2:0]i,
 output [7:0]y);

and g0 (y[0], en, ~i[2], ~i[1], ~i[0]),
	g1 (y[1], en, ~i[2], ~i[1], i[0]),
	g2 (y[2], en, ~i[2], i[1], ~i[0]),
	g3 (y[3], en, ~i[2], i[1], i[0]),
	g4 (y[4], en, i[2], ~i[1], ~i[0]),
	g5 (y[5], en, i[2], ~i[1], i[0]),
	g6 (y[6], en, i[2], i[1], ~i[0]),
	g7 (y[7], en, i[2], i[1], i[0]);

endmodule
