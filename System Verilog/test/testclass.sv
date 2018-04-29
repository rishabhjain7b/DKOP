// Code for testing class in SV

class BusTran;
  bit [31:0] addr, crc, data[8];
  
  function calc_crc;
    crc=addr^data[0];
  endfunction
  
  function display;
    $display("BusTran: %h", addr);
  endfunction
  
endclass

module testclass;
  BusTran b1,b2;
  
  initial
  begin
    b1=new();
    b1.addr='1;
    //b2=b1;
    b2=new b1;
    b2.display();
    b1=new();
    b1.display();
    b2.display();
  end
endmodule