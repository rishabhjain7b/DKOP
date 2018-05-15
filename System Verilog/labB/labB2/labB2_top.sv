// Code for lab B-clocking blocks top module

module labB2_top;
  timeunit 1ns;
  timeprecision 1ns;
  
  localparam time PERIOD=10;
  localparam int unsigned DWIDTH=8;
  localparam int unsigned AWIDTH=5;
  localparam bit DEBUG=1;
  
  logic [DWIDTH-1:0]data_out;
  logic [DWIDTH-1:0]data_in;
  logic [AWIDTH-1:0]addr;
  logic write;
  logic read;
  logic clk;
  
  labB2 #(DWIDTH,AWIDTH) memory(.*);
  labB2_test #(DWIDTH, AWIDTH, DEBUG) memory_test(.*);
  
  initial
  clk=0;
  
  always
  #(PERIOD/2) clk=~clk;
  
endmodule
