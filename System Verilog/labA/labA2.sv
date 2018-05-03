// Code for Lab A- Queue

module labA2;
  int j=1, q[$]={0,2,5};
  initial
  begin
    $display(q);
    q.insert(1,j);
    $display(q);
    q.delete(1);
    $display(q);
    q.push_front(7);
    $display(q);
    q.push_back(9);
    $display(q);
    q.pop_back();
    $display(q);
    q.pop_front();
    $display(q);
    q.reverse();
    $display(q);
    q.sort();
    $display(q);
    q.rsort();
    $display(q);
    q.shuffle();
    $display(q);
  end
endmodule
  
