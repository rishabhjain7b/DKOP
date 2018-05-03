// Code for testing array methods

module array_methods;
  bit on[10];
  int summ;
  
  initial
  begin
    foreach(on[i]) on[i]=i;
    $display(on.sum);
    summ=on.sum;
    $display(summ);
  end
endmodule