// Code for testing size of array

module testsize;

bit [7:0]ar[2:0];
bit ar1[5];
int ar2[4];
logic [7:0][3:0]ar3;
logic ar4[4][6];
logic [1:0]a;

initial
begin
	$display($size(ar));
	$display($size(ar1));
	$display($size(ar2));
	$display($size(ar3));
	$display($size(ar4));
	$display($size(a));
end
endmodule
