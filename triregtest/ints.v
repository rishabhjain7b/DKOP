// Code for integers

module ints;

real IntA, IntB, IntC, IntD;
reg[3:0]s;
initial 
begin: b1


IntA = -(12 / 3); // The result is -4.
IntB = -'d 12 / 3; // The result is 1431655761.
IntC = -'sd 12 / 3; // The result is -4.
IntD = -4'sd 12 / 3; // -4'sd12 is the negative of the 4-bit
// quantity 1100, which is -4. -(-4) = 4.
// The result is 1.
s=-4'd12;

$displayh(IntA);
$display(IntB);
$displayh(IntC);
$displayh(IntD);
end

endmodule