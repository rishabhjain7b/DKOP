// Code for Lab B - Tasks, Functions and Interfaces 

module labB1 #(parameter int unsigned W=1,    //Data width
                parameter int unsigned A=1)   //Address Width
(inout logic [W-1:0]data,
 input logic [A-1:0]addr,
 input logic read,write);
 
 timeunit 1ns;
 timeprecision 1ns;
 
 logic [W-1:0]mem[2**A];    //W words packed by 2**A words unpacked
 
 assign data = read?mem[addr]:'z;
 
 always@(posedge write)
  mem[addr]<=data;

endmodule
