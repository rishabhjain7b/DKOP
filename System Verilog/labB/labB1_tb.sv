// Code for testbench for lab B1

module labB1_tb;
  timeunit 1ns;
  timeprecision 1ns;
  
  wire logic [7:0]data;
  var logic read,write;
  var logic [4:0]addr;
  localparam bit debug=1;
  localparam int WWIDTH=8;
  localparam int AWIDTH=5;
  
  labB1 #(WWIDTH,AWIDTH) mem(.*);
  
  logic [WWIDTH-1:0]data_w;
  
  assign data=read?'z:data_w;
  
  task write_mem(input [AWIDTH-1:0]waddr,input [WWIDTH-1:0]wdata,input debug=0);
    write=0;
    read=0;
    addr=waddr;
    data_w=wdata;
    #5ns write=1;
    
    if(debug==1)
      $display("%t: write address: %d, data=%h",$time,waddr,wdata);
      
    #5ns write=0;
  endtask
  
  task read_mem(input [AWIDTH-1:0]raddr,input [WWIDTH-1:0]rdata,input debug=0);
    write=0;
    read=1;
    addr=raddr;
    #5ns rdata=data;
    
    if(debug==1)
      $display("%t: read address: %d, data=%h",$time,raddr,rdata);
      
    #5ns read=0;
  endtask
  
  function void print_status(input int  unsigned status);
    $display("MEMORY TEST %s with %0d errors",status?"FAILED":"PASSED",status);
    
    if (status!=0) $finish;
  endfunction
  
  initial 
  begin
    logic [WWIDTH-1:0]data_read;
    int unsigned errors;
    
    $timeformat(-9,0,"ns",6);
    
    $display("CLEAR THE MEMORY FIRST");
    errors=0;
    
    for(int i=0;i<=2**AWIDTH-1;++i)
      write_mem(i,0,0);
      
    for(int i=0;i<=2**AWIDTH-1;++i)
    begin
      read_mem(i,data_read,0);
      if(data_read!==0)
        ++errors;
    end
    
    print_status(errors);
    $display("TEST DATA = ADDRESS");
    errors=0;
    
    for(int i=0;i<=2**AWIDTH-1;++i)
      write_mem(i,i,debug);
      
    for(int i=0;i<=2**AWIDTH-1;++i)
    begin
      read_mem(i,data_read,debug);
      if(data_read!==i)
        ++errors;
    end
    
    print_status(errors);
    $finish;
  end
endmodule