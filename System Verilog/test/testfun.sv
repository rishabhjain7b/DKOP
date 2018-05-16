// Code  for testing functions in SV

module  testfun;
  int res;
  int val;
  reg y;
  function int summ(input int a=6,b=8);
    //a=4;
    //b=6;
    //sum=a+b;
    a=3;
    b=2;
    return a+b;
    a=8;
    b=5;
    summ=a+b;
  endfunction
  
  function [31:0]add (input [31:0]a,b, output overflow);
    {overflow,add}=a+b;
  endfunction
  
  initial
  begin
    res=summ(6,8);
    $display(res);
    //summ(6,8)
  
    val=add(127,127,y);
    $display(val);
    $display(y);
  end
endmodule