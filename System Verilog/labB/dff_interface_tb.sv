// Code for testbench of D flip flop using Interface

//`include "dff_intf.sv"

module dff_interface_tb(dff_intf.TB i);
  initial
  begin
    i.rst_n=1'b0;
    #10 i.rst_n=1'b1;
    #5 i.d=1'b0;
    #5 i.d=1'b1;
    #5 i.d=1'b0;
    #5 i.d=1'b1;
    #5 i.d=1'b1;
    #5 i.d=1'b0;
  end
  
  initial
  $monitor($time,"rst=%b :: d=%b :: q=%b",i.rst_n,i.d,i.q);
endmodule
