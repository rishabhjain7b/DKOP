// full adder and full subtractor using half adder and half subtractor

module full_using_half
(input a,b,c,
 output reg sum,diff,carry,borrow);

`include "halfadder.v"
`include "halfsubtractor.v"

always@(a,b,c)
begin
	{carry,sum}= 
