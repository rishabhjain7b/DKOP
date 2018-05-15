// Code for D flip flop using interface top module

module dff_top;
bit clk;

always 
#3 clk=~clk;

dff_intf mod1 (clk);
dff_interface mod2 (mod1.DUT);
dff_interface_tb mod3 (mod1.TB);

endmodule