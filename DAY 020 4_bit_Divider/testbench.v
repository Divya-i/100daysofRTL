// Code your testbench here
// or browse Examples
module tb_divider_4bit();

    reg [3:0] dividend;
    reg [3:0] divisor;
    wire [3:0] quotient;
    wire [3:0] remainder;

    divider_4bit divider_inst (
        .dividend(dividend),
        .divisor(divisor),
        .quotient(quotient),
        .remainder(remainder)
    );

    initial begin
        // Test 1: 6 / 2
        dividend = 4'b0110;
        divisor = 4'b0010;
        #10;
      $display("Test 1: dividend = %d, divisor = %d, quotient = %d, remainder = %d", dividend, divisor, quotient, remainder);

        // Test 2: 13 / 3
        dividend = 4'b1101;
        divisor = 4'b0011;
        #10;
      $display("Test 2: dividend = %d, divisor = %d, quotient = %d, remainder = %d", dividend, divisor, quotient, remainder);

        // Test 3: 10 / 5
        dividend = 4'b1010;
        divisor = 4'b0101;
        #10;
      $display("Test 3: dividend = %d, divisor = %d, quotient = %d, remainder = %d", dividend, divisor, quotient, remainder);

        // Test 4: 7 / 4
        dividend = 4'b0111;
        divisor = 4'b0100;
        #10;
      $display("Test 4: dividend = %d, divisor = %d, quotient = %d, remainder = %d", dividend, divisor, quotient, remainder);

        $finish;
    end

endmodule
