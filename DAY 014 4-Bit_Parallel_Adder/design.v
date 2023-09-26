module full_adder(
    input a, b, cin,
    output sum_out, carry_out
    );
    assign sum_out   = a ^ b ^ cin;
    assign carry_out = (a & b) | (b & cin) | (a & cin);
endmodule

module parallel_adder(
    input [3:0] c, d,
    input carry_in,
    output [3:0] sum,
    output carry
    );
  wire [2:0] w;
  full_adder fa1(c[0], d[0], carry_in, sum[0], w[0]);
  full_adder fa2(c[1], d[1], w[0], sum[1], w[1]);
  full_adder fa3(c[2], d[2], w[1], sum[2], w[2]);
  full_adder fa4(c[3], d[3], w[2], sum[3], carry);
    
endmodule

    