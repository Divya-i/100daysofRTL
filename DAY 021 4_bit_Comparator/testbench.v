// Code your testbench here
// or browse Examples

module tb_comparator_4bit();

    reg [3:0] a;
    reg [3:0] b;
    wire Lesser;
    wire Greater;
    wire Equal;

    comparator_4bit comparator_inst (
        .a(a),
        .b(b),
        .Lesser(Lesser),
        .Greater(Greater),
        .Equal(Equal)
    );

    initial begin
        // Test 1: a < b
        a = 4'b0010;
        b = 4'b0100;
        #10;
      $display("Test 1: a = %d, b = %d, Lesser = %d, Greater = %d, Equal = %d", a, b, Lesser, Greater, Equal);

        // Test 2: a > b
        a = 4'b1100;
        b = 4'b1010;
        #10;
      $display("Test 2: a = %d, b = %d, Lesser = %d, Greater = %d, Equal = %d", a, b, Lesser, Greater, Equal);

        // Test 3: a == b
        a = 4'b1011;
        b = 4'b1011;
        #10;
      $display("Test 3: a = %d, b = %d, Lesser = %d, Greater = %d, Equal = %d", a, b, Lesser, Greater, Equal);

        $finish;
    end

endmodule
