// Code for practice isunknown

module testunknown;

logic [3:0]a=4'b1x01;
logic [3:0]b=4'b1101;
logic [3:0]c=4'b1001;
logic [3:0]d=4'b110z;
logic [3:0]e=4'b1xz1;
bit [3:0]f=e;

initial
begin
	$displayb(f);
	if($isunknown(a))
		$display("a contains x");
	if($isunknown(b))
		$display("b contains x");
	if($isunknown(c))
		$display("c contains x");
	if($isunknown(d))
		$display("d contains x");
	if($isunknown(e))
		$display("e contains x");
end
endmodule
