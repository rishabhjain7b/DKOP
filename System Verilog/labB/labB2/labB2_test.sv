// Code for Lab B - Clocking Block part 2

module labB2_test 
  #(parameter int unsigned DW=8,
    parameter int unsigned AW=5,
    parameter bit DEBUG=0)
    
  (input logic [DW-1:0]data_out,
   output logic [DW-1:0]data_in,
   output logic [AW-1:0]addr,
   output logic write,
   output logic read,
   input logic clk);
   
   timeunit 1ns;
   timeprecision 1ns;
   
   task write_mem(input [AW-1:0]waddr, input [DW-1:0]wdata, input debug=0);
     write<=1;
     read<=0;
     addr<=waddr;
     data_in<=wdata;
     @(negedge clk);
     write<=0;
     if(debug==1)
       $display("%t: Write-Address:%d Data:%h", $time, waddr,wdata);
   endtask
   
   task read_mem(input [AW-1:0]raddr, output [DW-1:0]rdata, input debug=0);
     write<=0;
     read<=1;
     addr<=raddr;
     @(negedge clk);
     read<=0;
     rdata=data_out;
     if(debug==1)
       $display("%t: Read-Address:%d Data:%h",$time, raddr, rdata);
    endtask
    function void printstatus(input int unsigned status);
      $display("MEMORY TEST %s with %0d errors",status?"FAILED":"PASSED",status);
      if(status!=0) $finish;
    endfunction

    initial
    begin
      logic [DW-1:0]data_r;
      int unsigned errors;
      $timeformat(-9,1,"ns",9);
      
      @(negedge clk);
      
      $display("CLEARING THE MEMORY");
      errors=0;
      
      for(int unsigned i=0;i<=2**AW-1;++i)
        write_mem(i,0,0);
        
      for(int unsigned i=0;i<=2**AW-1;++i)
      begin
        read_mem(i,data_r,0);
        if(data_r!==0)
          ++errors;
      end
      
      printstatus(errors);
      $display("TEST DATA=ADDRESS");
      errors=0;
      
      for(int unsigned i=0;i<=2**AW-1;++i)
        write_mem(i,i,DEBUG);
      
      for(int unsigned i=0;i<=2**AW-1;++i)
        begin
          read_mem(i,data_r,DEBUG);
          if(data_r!==i)
            ++errors;
        end
        
        printstatus(errors);
        $finish(0);
    end
endmodule