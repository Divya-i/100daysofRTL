// Code your design here
module half_sub(a,b,d,bo);
input a,b;
output reg d,bo;
  
  always@(*)
    begin
   d  = a ^ b;
   bo = ~a & b;
    end
  endmodule

