// Code for Lab A- Dynamic Array

module labA1;
  int d[]='{9,1,8,3,4,4}, d1[];
  initial
  begin
    d1=new[6];
    foreach(d1[i]) d1[i]=i;
    $display(d1);
    $display(d1.size());
    d1.delete();
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
    

