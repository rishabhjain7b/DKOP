// Code for testing type casting, size casting and  sign casting

module testcasting;
  longint a0=2,a1=2,y0,y1;
  real r=3.0;
  logic [15:0]a=8,b=8,sum,c=6;
  logic carry;
  
  initial
  begin
    y0=a0+(r**3);
    y1=a1+longint'(r**3);
    $display(y0);
    $display(y1);
    //sum = a+16'(5);
    sum = a+5;
    $display(sum);
    {carry,sum}=17'(a+3);
    $display(carry);
    $display(sum);
    sum=a+16'(b-2)/c;
    $display(sum);
  end
endmodule