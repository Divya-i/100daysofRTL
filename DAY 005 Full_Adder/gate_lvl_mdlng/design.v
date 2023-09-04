// Code your design here
module full_addr(a,b,cin,sum,cout);
input a,b,cin;
output sum,cout;
wire w1,w2,w3;
xor x1(sum,a,b,cin);
and a1(w1,a,b);
and a2(w2,a,cin);
and a3(w3,b,cin);
or o1(cout,w1,w2,w3);
endmodule

