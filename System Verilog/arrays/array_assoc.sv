// Code for Associative Array

module array_assoc;

logic [63:0] assoc[*], idx=1,i;

initial
begin
        repeat(64)
        begin
                assoc[idx]=idx;
                idx<<=1;
        end
        $display(assoc);
        assoc["test"]=0;
        if (assoc.exists("test")==1)
          $display(assoc["test"]);
        assoc.first(i);
        $display(i);
        assoc.next(i);
        $display(i);
        assoc.prev(i);
        $display(i);
        assoc.last(i);
        $display(i);
        $display(assoc.num());
        assoc.delete(i);
        $display(assoc.size());
        $display(assoc);
end
endmodule