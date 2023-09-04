// Code your design here
module half_sub(a,b,d,bo);
input a,b;
output d,bo;
  
  
  assign d  = a ^ b;
  assign  bo = ~a & b;
    
  endmodule

