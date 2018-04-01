// Code is for parity checker & parity generator
// i/p: 11001000	
// parity checker: op=1, ep=0
// parity generator: op=0, ep=1

module parity_chck_gen
( input [3:0]in,
  output ep_gen,op_gen,ep_chck,op_chck);

assign ep_gen=(^in)?1'b1:1'b0,
	op_gen=~(^in)?1'b1:1'b0,
	ep_chck=~(^in)?1'b1:1'b0,
	op_chck=(^in)?1'b1:1'b0;
endmodule

module parity_chck_gen_tb;
reg [3:0]in;
wire ep_gen,op_gen,ep_chck,op_chck;

parity_chck_gen DUT (.*);

initial
begin
	in=4'b1100;
	#5 in=4'b0001;
	#5 in=4'b1101;
	#5 in=4'b0111;
	#5 in=4'b1001;
end
endmodule

