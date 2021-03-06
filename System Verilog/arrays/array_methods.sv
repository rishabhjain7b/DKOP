// Code for testing array methods

module array_methods;
  bit on[10];
  int summ;
  int q[$]={1,3,5,7};
  int d[]='{9,1,8,3,4};
  int f[6]='{1,6,2,6,8,6};
  
  initial
  begin
    foreach(on[i]) on[i]=i;
    $display(on.sum);
    summ=on.sum;
    $display(summ);
    $display(q.sum);
    $display(q.product);
    $display(q.min);
    $display(q.max);
    $display(q.unique);
    $display(q.find with (item>3));
    $display(q.find_index with (item>3));
    $display(q.find_last with (item==5));
    $display(q.find_last_index with (item==5));
    $display(q.sum with (item>3));
    $display(q.sum with (item>3*item));
    
    $display(" ");
    $display(d.sum);
    $display(d.product);
    $display(d.min);
    $display(d.max);
    $display(d.unique);
    $display(d.find with (item>3));
    $display(d.find_index with (item>3));
    $display(d.find_last with (item==4));
    $display(d.find_last_index with (item==4));
    $display(d.sum with (item>3));
    $display(d.sum with (item>3?item:0));
    
    $display(" ");
    $display(f.sum);
    $display(f.product);
    $display(f.min);
    $display(f.max);
    $display(f.unique);
    $display(f.find with (item>3));
    $display(f.find_index with (item>3));
    
    $display(" ");
    $display(d);
    d.reverse();
    $display(d);
    d.sort();
    $display(d);
    d.rsort();
    $display(d);
    d.shuffle();
    $display(d);
  end
endmodule