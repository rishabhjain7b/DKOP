// Code for D flip flop using interface

//`include "dff_intf.sv"

module dff_interface(dff_intf.DUT i);
  always@(posedge i.clk)
  begin
    if(!i.rst_n)
      i.q<=1'b0;
    else
      i.q<=i.d;
  end
endmodule
    