// Code your design here
module all_logic_gates(input a, b,
                       output not_gate,
                       output and_gate,
                       output or_gate,
                       output nand_gate,
                       output nor_gate,
                       output xor_gate,
                       output xnor_gate);
  
  not n1(not_gate,a);
  and a1(and_gate,a,b);
  or o1(or_gate,a,b);
  nand na1(nand_gate,a,b);
  nor no1(nor_gate,a,b);
  xor x1(xor_gate,a,b);
  xnor xn1(xnor_gate,a,b);
  
endmodule

   
