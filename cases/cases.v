// Code for studying behaviour of casex, casez ansd normal case

module cases;
reg a;

always @(a)
begin
	case(a)
	1'b0: $display("CASE VERILOG");
	1'b1: $display("CASE SV");
	1'bx: $display("CASE UVM");
	1'bz: $display("CASE OVM");
	//default: $display("CASE UVM");
	endcase
end

always @(a)
begin
	casex(a)
	1'b1: $display("CASEX VERILOG");
	1'b0: $display("CASEX SV");
	1'bx: $display("CASEX UVM");
	1'bz: $display("CASEX OVM");
	default: $display("CASEx DEf");
	endcase
end

always @(a)
begin
	casez(a)
	1'b0: $display("CASEZ VERILOG");
	1'b1: $display("CASEZ SV");
	//1'bx: $display("CASEZ UVM");
	//1'bz: $display("CASEZ OVM");
	default: $display("CASEz DEf");
	endcase
end
endmodule
