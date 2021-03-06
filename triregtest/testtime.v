// strength

module testtime;

trireg a; // trireg net of charge strength medium
trireg (large) #(0,0,50) cap1; // trireg net of charge strength large
// with charge decay time 50 time units
trireg (small)signed [3:0] cap2; // signed 4-bit trireg vector of
// charge strength small
 integer s;

initial
begin
	//cap1=0;
	$display(a,cap1,cap2,s[0]);
end
endmodule