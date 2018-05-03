// Code for testing array in SV

module testarray;
initial
begin
	bit [31:0] src[5]='{0,1,2,3,4}, dst[5]='{5,4,3,2,1};
	$display("src=%p",src);
	$display("dst=%p",dst);

	if (src==dst)
		$display("src==dst");
	else
		$display("src!=dst");
	dst=src;
	src[0]=5;
	$display("src=%p",src);
	$display("dst=%p",dst);

	if(src[1:4]==dst[1:4])
		$display("src==dst");
	else
		$display("src!=dst");
end
endmodule

	