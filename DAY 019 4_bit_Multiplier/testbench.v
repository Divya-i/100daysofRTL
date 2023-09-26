// Code your testbench here
// or browse Examples

module tb;

    reg [3:0] a;
    reg [3:0] b;
    wire [7:0] out;

    bit_multiplier multi_inst (
        .a(a),
        .b(b),
        .out(out)
    );

    initial begin
        // Test 1: 2 * 3
        a = 4'b0010;
        b = 4'b0011;
        #10;
      $display("Test 1: a = %d, b = %d, out = %d", a, b, out);

        // Test 2: 4 * 8
        a = 4'b0100;
        b = 4'b1000;
        #10;
      $display("Test 2: a = %d, b = %d, out = %d", a, b, out);

        // Test 3: 10 * 6
        a = 4'b1010;
        b = 4'b0110;
        #10;
      $display("Test 3: a = %d, b = %d, out = %d", a, b, out);

        // Test 4: 13 * 11
        a = 4'b1101;
        b = 4'b1011;
        #10;
      $display("Test 4: a = %d, b = %d, out = %d", a, b, out);

        $finish;
    end

endmodule
