// Code your testbench here
// or browse Examples

module all_logic_gates_bm_tb;
  
  reg a, b;
  wire not_gate,
       and_gate,
       or_gate,
       nand_gate,
       nor_gate,
       xor_gate,
       xnor_gate;
  
  all_logic_gates_bm dut(a,b, not_gate,and_gate,or_gate,nand_gate,nor_gate,xor_gate,xnor_gate);
  
  initial
    begin
      
      $dumpfile("dump.vcd");
      $dumpvars(0,all_logic_gates_bm_tb);
      
      $monitor("time=%0t,a=%0b,b=%0b,\n not_gate=%0d,\n and_gate=%0d, or_gate=%0d,\n nand_gate=%0d, nor_gate=%0d,\n xor_gate=%0d, xnor_gate=%0d",$time,a,b,not_gate,and_gate,or_gate,nand_gate,nor_gate,xor_gate,xnor_gate);
      
      
      //for_all_4_states
      #1 a = 1'b0; b = 1'b0;
      #1 a = 1'b0; b = 1'b1;
      #1 a = 1'b0; b = 1'bx;
      #1 a = 1'b0; b = 1'bz;
      
      //for_all_4_states
            #1 a = 1'b1; b = 1'b0;
            #1 a = 1'b1; b = 1'b1;
            #1 a = 1'b1; b = 1'bx;
            #1 a = 1'b1; b = 1'bz;
      
      //for_all_4_states
            #1 a = 1'bx; b = 1'b0;
            #1 a = 1'bx; b = 1'b1;
            #1 a = 1'bx; b = 1'bx;
            #1 a = 1'bx; b = 1'bz;
      
      //for_all_4_states
            #1 a = 1'bz; b = 1'b0;
            #1 a = 1'bz; b = 1'b1;
            #1 a = 1'bz; b = 1'bx;
            #1 a = 1'bz; b = 1'bz;
      #30;
      $finish;
      
    end
endmodule
      