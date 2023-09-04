// Code your testbench here
// or browse Examples
module half_addr_tb;
  
  reg a1,b1;
  wire sum1,carry1;
  
  half_addr dut(.a(a1),.b(b1),.sum(sum1),.carry(carry1));

  initial 
    begin
      
$monitor("time t=%0t, a1= %b, b1=%b,sum1=%b, carry1 =%b",$time,a1,b1,sum1,carry1);
      
      $dumpfile("dump.vcd");
      $dumpvars();
      
    #1; a1 = 0;b1 = 0;
    #1; a1 = 0;b1 = 1;
    #1; a1 = 1;b1 = 0;
    #1; a1 = 1;b1 = 1;
    #2;
     
      $finish ;
    end
endmodule