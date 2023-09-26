
module divider_4bit(
    input [3:0] dividend,
    input [3:0] divisor,
    output reg [3:0] quotient,
    output reg [3:0] remainder
);

    always @(dividend, divisor) begin
        quotient = 4'b0000;
        remainder = dividend;
        
        while (remainder >= divisor) begin
            remainder = remainder - divisor;
            quotient = quotient + 1;
        end
    end

endmodule
