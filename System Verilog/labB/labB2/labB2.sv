// Code for lab B- Clocking Block

module labB2 
  #(parameter int unsigned DW=8, // data width
    parameter int unsigned AW=5   //Address Width
    )
  (output logic [DW-1:0]data_out,
   input logic [DW-1:0]data_in,
   input logic [AW-1:0]addr,
   input logic write,
   input logic read,
   input logic clk);
   
   timeunit 1ns;
   timeprecision 1ns;
   
   logic [DW-1:0]mem[2**AW];
   
   always_ff@(posedge clk iff(write && !read))
      mem[addr]<=data_in;
  
   always_ff@(posedge clk iff(!write && read))
      data_out<=mem[addr];
endmodule

    
