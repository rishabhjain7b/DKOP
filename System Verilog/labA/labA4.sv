// Code for LabA- Array Locators

module labA4;
  int q[$]={1,3,5,7},tq[$];
  int d[]='{9,1,8,3,4,4};
  int f[6]={1,6,2,6,8,6};
  
  initial
  begin
    $display(q.sum);
    $display(q.product);
    $display(q.min());
    $display(q.max);
    $display(f.unique);
    $display(d.find with (item>3));
    $display(d.find_index(x) with (x>3));
    $display(d.find_index with (item>99));
    $display(d.find_first_index with (item==8));
  end
endmodule