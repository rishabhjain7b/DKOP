// Code for swap using temp variable

module swap1;
integer a=10;
integer b=20;
integer temp;

initial 
begin
	$display("a=%0d ||| b=%0d",a,b);
	temp=b;
	b=a;
	a=temp;
	$display("a=%0d ||| b=%0d",a,b);
end
endmodule
