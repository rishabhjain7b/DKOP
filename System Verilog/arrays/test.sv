// Code for testing behaviour of arrays

module test;
  reg [7:0]a=8'd6;    //Packed array
  reg b[7:0]='{1,1,1,0,0,1,1,0};    //unpacked array
  bit c[]='{0,1,0,0,0,1,1,1};      //dynamic array
  int d[*]='{1:23,6:45,3:65,9:62};  //Associative array
  int e[$]={1,5,6,4,8};       //queue
  
  initial
  begin
    $displayb(a);
    $displayb(a[1]);
    $displayb(a[5:2]);
    
    $displayb(b);   // NA
    $displayb(b[1]);
    $displayb(b[5:2]);  //NA
    
    $displayb(c);
    $displayb(c[1]);
    $displayb(c[2:5]);   //NA
    
    $display(d);
    $display(d[1]);
    //$display(d[2:5]);
    
    $display(e);
    $display(e[1]);
    $display(e[2:5]);
  end
endmodule