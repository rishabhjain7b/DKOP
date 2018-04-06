// Code for MUX N-bit

module mux_nbit #(parameter n=8)
(input [n-1:0]in,
 input [$clog2(n)-1:0]sel,
 output out);

assign out=in[sel];

endmodule

