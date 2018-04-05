// N bit Decoder

module decoder_nbit #(parameter n=4)
(input [n-1:0]in,
 input en,
 output [(2**n)-1:0]out);

assign out=en?(1<<in):{(2**n){1'b0}};

endmodule
