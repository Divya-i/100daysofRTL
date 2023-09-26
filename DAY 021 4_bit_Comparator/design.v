// Code your design here
module comparator_4bit(
    input [3:0] a,
    input [3:0] b,
    output Lesser,
    output Greater,
    output Equal
);
    reg Lesser, Greater, Equal;
    
    always @(*) begin
        if (a < b) begin
            Lesser = 1'b1;
            Equal = 1'b0;
            Greater = 1'b0;
        end
        else if (a > b) begin
            Lesser = 1'b0;
            Equal = 1'b0;
            Greater = 1'b1;
        end
        else begin
            Lesser = 1'b0;
            Equal = 1'b1;
            Greater = 1'b0;
        end
    end
endmodule
