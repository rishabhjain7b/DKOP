// Code for testing Bytes and bit

module testbytes;
  bit [7:0]a;
  byte b;
  
  initial
  begin
    a[7]=1;
    b[7]=1;
    a[0]=1;
    b[0]=1;
    $display(a);
    $display(b);
  end
endmodule
