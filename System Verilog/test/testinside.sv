// Code for testing inside operator 

module testinside;
  logic [2:0]a=3'b001, b=3'b010;
  
  initial
  begin
    if(a inside {3'b000,3'b010,3'b100})
      $display(a);
    if(b inside {3'b000,3'b010,3'b100})
      $display(b);
 end
endmodule
   