// Code for testing pass by reference

module testref2;
  function automatic swap(ref int a,b);
    a=a^b;
    b=a^b;
    a=a^b;
  endfunction
  int x=4,y=7;
  
  initial
  begin
    $display("x=%0d ::: y=%0d",x,y);
    #5 swap(x,y);
    #5 $display("x=%0d ::: y=%0d",x,y);
  end
endmodule
    