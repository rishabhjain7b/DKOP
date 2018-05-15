// Code interface module for d flip flop

interface dff_intf(input bit clk);
logic d,q;
bit rst_n;

modport DUT (input d,clk,rst_n,
              output q);
modport TB (input q,
            output clk,rst_n,d); 
endinterface