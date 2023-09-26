// Code your design here
module carry_skip_adder_4bit (
    input [3:0] A, // 4-bit input A
    input [3:0] B, // 4-bit input B
    input cin,     // Carry-in
    output [3:0] sum, // 4-bit sum output
    output cout // Carry-out
);

wire [3:0] sum1, sum2;
wire c1, c2, c3, c4;

// Generate the first level of carry-skip blocks
carry_skip_block_4bit block1(A, B, cin, sum1, c1);
carry_skip_block_4bit block2(A, B, c1, sum2, c2);

// Generate the second level of carry-skip blocks
carry_skip_block_4bit block3(A, B, c2, sum, c3);
carry_skip_block_4bit block4(A, B, c3, sum, c4);

assign cout = c4; // Carry-out is the final carry-out

endmodule

module carry_skip_block_4bit (
    input [3:0] A, // 4-bit input A
    input [3:0] B, // 4-bit input B
    input cin,     // Carry-in
    output [3:0] sum, // 4-bit sum output
    output cout // Carry-out
);

wire [3:0] g, p, c;

// Generate generate (g) and propagate (p) signals for each bit
gen_propagate_4bit g1(A[0], B[0], g[0], p[0]);
gen_propagate_4bit g2(A[1], B[1], g[1], p[1]);
gen_propagate_4bit g3(A[2], B[2], g[2], p[2]);
gen_propagate_4bit g4(A[3], B[3], g[3], p[3]);

// Generate carry (c) signals for each bit
gen_carry_4bit p1(p[0], cin, c[0]);
gen_carry_4bit p2(p[1], c[0], c[1]);
gen_carry_4bit p3(p[2], c[1], c[2]);
gen_carry_4bit p4(p[3], c[2], c[3]);

// Calculate the sum for each bit
gen_sum_4bit gsum1(g[0], A[0], B[0], cin, sum[0]);
gen_sum_4bit gsum2(g[1], A[1], B[1], c[0], sum[1]);
gen_sum_4bit gsum3(g[2], A[2], B[2], c[1], sum[2]);
gen_sum_4bit gsum4(g[3], A[3], B[3], c[2], sum[3]);

// Calculate the final carry-out
assign cout = c[3];

endmodule

module gen_propagate_4bit (
    input A,
    input B,
    output g,
    output p
);

assign g = A & B;
assign p = A | B;

endmodule

module gen_carry_4bit (
    input p,
    input cin,
    output c
);

assign c = p | (cin & p);

endmodule

module gen_sum_4bit (
    input g,
    input A,
    input B,
    input cin,
    output sum
);

assign sum = (g ^ cin) ? B : A;

endmodule
