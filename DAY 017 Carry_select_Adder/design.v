// Code your design here
module carry_select_adder(
    input [3:0] A,    
    input [3:0] B, 
    input cin,       
    output [3:0] sum,
    output cout       
);

wire [3:0] sum0, sum1;
wire cout0, cout1;

gen_adder4 g0(A, B, cin, sum0, cout0);
gen_adder4 g1(A, B, cin, sum1, cout1);

assign sum = (cin == 0) ? sum0 : sum1;
assign cout = (cin == 0) ? cout0 : cout1;

endmodule

module gen_adder4(
    input [3:0] A,    
    input [3:0] B,    
    input cin,        
    output [3:0] sum, 
    output cout       
);

wire [3:0] sum0, sum1;
wire cout0, cout1;

gen_adder1 a0(A[0], B[0], cin, sum0[0], cout0);
gen_adder1 a1(A[1], B[1], cin, sum0[1], cout0);
gen_adder1 a2(A[2], B[2], cin, sum0[2], cout0);
gen_adder1 a3(A[3], B[3], cin, sum0[3], cout0);

gen_adder1 b0(A[0], B[0], cin, sum1[0], cout1);
gen_adder1 b1(A[1], B[1], cin, sum1[1], cout1);
gen_adder1 b2(A[2], B[2], cin, sum1[2], cout1);
gen_adder1 b3(A[3], B[3], cin, sum1[3], cout1);

assign sum = (cin == 0) ? sum0 : sum1;
assign cout = (cin == 0) ? cout0 : cout1;

endmodule

module gen_adder1(
    input A,      
    input B,      
    input cin,    
    output sum,   
    output cout  
);

assign sum = A ^ B ^ cin;
assign cout = (A & B) | (B & cin) | (A & cin);

endmodule

