module binary_to_bcd(
    input [7:0] data,
    output reg [3:0] bit0, bit1, bit2,
    output reg [11:0] BCD
);

always @(data) begin
    bit0 = 0; bit1 = 0; bit2 = 0;
    for (integer n = 0; n < 8; n = n + 1) begin
        if (bit0 > 4) bit0 = bit0 + 3;
        if (bit1 > 4) bit1 = bit1 + 3;
        if (bit2 > 4) bit2 = bit2 + 3;
        {bit2, bit1, bit0} = {bit2, bit1, bit0, data[7 - n]};
    end
    BCD = {bit2, bit1, bit0};
end

endmodule
