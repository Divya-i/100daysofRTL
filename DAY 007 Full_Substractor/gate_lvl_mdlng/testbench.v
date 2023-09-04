// Code your testbench here
// or browse Examples
module half_sub_tb();
  reg a1, b1;
  wire d1, bo1;

  half_sub hs(.a(a1), .b(b1), .d(d1), .bo(bo1));

  initial 
    begin
      
  $dumpfile("dump.vcd");
  $dumpvars(0,half_sub_tb);
    
    $monitor("time t=%0t, a1=%b, b1=%b, d1=%b, bo1=%b", $time, a1, b1, d1, bo1);
    
    #10; a1 = 0; b1 = 0;
    #10; a1 = 0; b1 = 1;
    #10; a1 = 1; b1 = 0;
    #10; a1 = 1; b1 = 1;
      
      #20;
      $finish;
   

  end
endmodule
