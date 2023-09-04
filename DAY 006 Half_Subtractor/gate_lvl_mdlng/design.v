// Code your design here
module half_sub(a,b,d,bo);
input a,b;
output d,bo;
xor x1(d,a,b);
and a1(bo,~a,b);
endmodule

