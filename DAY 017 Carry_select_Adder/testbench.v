// Code your testbench here
module tb_carry_select_adder();

  reg [3:0] A;
  reg [3:0] B;
  reg cin;
  wire [3:0] sum;
  wire cout;

  carry_select_adder adder_inst (
    .A(A),
    .B(B),
    .cin(cin),
    .sum(sum),
    .cout(cout)
  );

  initial begin
    // Test 1: Addition, cin = 0
    A = 4'b0000;
    B = 4'b0000;
    cin = 0;
    #10;
    $display("Test 1: A = %b, B = %b, cin = %b, sum = %b, cout = %b", A, B, cin, sum, cout);

    // Test 2: Addition, cin = 0
    A = 4'b1111;
    B = 4'b1111;
    cin = 0;
    #10;
    $display("Test 2: A = %b, B = %b, cin = %b, sum = %b, cout = %b", A, B, cin, sum, cout);

    $finish;
  end

endmodule
