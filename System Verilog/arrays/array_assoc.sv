// Code for Associative Array

module array_assoc;

logic [63:0] assoc[*], idx=1;

initial
begin
        repeat(64)
        begin
                assoc[idx]=idx;
                idx<<=1;
        end
end
endmodule