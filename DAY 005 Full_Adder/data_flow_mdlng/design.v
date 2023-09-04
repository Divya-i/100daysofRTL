// Code your design here
// Code your design here
module full_addr(a,b,cin,sum,cout);
input a,b,cin;
output sum,cout;
  
  assign sum   = a ^ b ^ cin;
  assign cout = (a & b) + (b & cin) + (a & cin);

endmodule

