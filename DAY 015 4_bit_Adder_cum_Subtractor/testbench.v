// Code your testbench here
// or browse Examples
module tb;
  reg [3:0] a ;
  reg [3:0] b;
    reg en;
  wire [3:0] s_d_out;
    wire c_b_out;

  add_sub dut(a, b, en, s_d_out, c_b_out);

    initial begin
        // Test 1: Addition
        a = 4'b1010;
        b = 4'b0101;
        en = 0;
        #10;
      $display("test_1: a = %b, b = %b, sum = %b, carry = %b", a, b, s_d_out, c_b_out);

        // Test 2: Subtraction
        a = 4'b1010;
        b = 4'b0101;
        en = 1;
        #10;
      $display("test_2: a = %b, b = %b, difference = %b, borrow = %b", a, b, s_d_out, c_b_out);

// Test 3: Addition with Carry
a = 4'b1111;
b = 4'b0001;
en = 0;
#10;
      $display("test_3: a = %b, b = %b, sum = %b, carry = %b", a, b, s_d_out, c_b_out);

// Test 4: Subtraction with Borrow
a = 4'b0100;
b = 4'b1100;
en = 1;
#10;
      $display("test_4: a = %b, b = %b, difference = %b, borrow = %b", a, b, s_d_out, c_b_out);

// Test 5: Addition with Overflow
a = 4'b0111;
b = 4'b0010;
en = 0;
#10;
      $display("test_5: a = %b, b = %b, sum = %b, carry = %b", a, b, s_d_out, c_b_out);

// Test 6: Subtraction with No Borrow
a = 4'b1001;
b = 4'b0101;
en = 1;
#10;
      $display("test_6: a = %b, b = %b, difference = %b, borrow = %b", a, b, s_d_out, c_b_out);

        $finish;
    end

endmodule
