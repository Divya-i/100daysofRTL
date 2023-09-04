// Code your design here

module half_addr(a,b,sum,carry);
  input a,b;
  output sum,carry;
  
  assign sum   = a ^ b;
  assign carry = a & b;
  
endmodule