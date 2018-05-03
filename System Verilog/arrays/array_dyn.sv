// Code for Dynamic Array for SV

module array_dyn;

int dyn[], d2[];

initial
begin
	dyn=new[5];
	foreach(dyn[j]) 
		dyn[j]=j;
	$display(dyn);
	d2=dyn;
	d2[0]=5;
	$display("%p",d2[1:4]);
	$display(dyn[0],d2[0]);
	dyn=new[20] (dyn);
	$display(dyn);
	dyn=new[100];
	$display(dyn.size());
	dyn.delete();
	$display(dyn);
end
endmodule
