// Code for LabA- Associative Array

module labA3;
  int assoc[*], idx=1,i;
  initial
  begin
    repeat(64)
    begin
      assoc[idx]=idx;
      idx<<=1;
    end
    assoc.first(i);
    $display(i,assoc[i]);
    assoc.next(i);
    $display(i,assoc[i]);
    assoc.last(i);
    $display(i,assoc[i]);
    assoc.prev(i);
    $display(i,assoc[i]);
  end
endmodule
     
