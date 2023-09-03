// Code your design here

module all_logic_gates_bm(
    input wire a,
    input wire b,
    output reg not_gate,
    output reg and_gate,
    output reg or_gate,
    output reg nand_gate,
    output reg nor_gate,
    output reg xor_gate,
    output reg xnor_gate
);

  always@(*)
   
    begin
      not_gate = ~a;
      and_gate = a & b;
      or_gate  = a | b;
      nand_gate = ~(a & b);
      nor_gate = ~ (a | b);
      xor_gate = a ^ b;
      xnor_gate = (~(a ^ b));
      
    end
endmodule
      
      
                       