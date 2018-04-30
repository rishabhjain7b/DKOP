// Code for integers

module ints;

reg[31:0] IntA, IntB, IntC, IntD;
initial 
begin: b1


IntA = -(12 / 3); // The result is -4.
IntB = -'d 12 / 3; // The result is 1431655761.
IntC = -'sd 12 / 3; // The result is -4.
IntD = -4'sd 12 / 3; // -4'sd12 is the negative of the 4-bit
// quantity 1100, which is -4. -(-4) = 4.
// The result is 1.
$displayh(IntA);
$display(IntB);
$displayh(IntC);
$displayh(IntD);
end

endmodule