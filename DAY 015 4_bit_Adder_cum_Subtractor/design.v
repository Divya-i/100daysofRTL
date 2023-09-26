module add_sub(
  input [3:0] a, b,
    input en,
  output reg [3:0] s_d_out,
    output reg c_b_out
    );

  always @(a , b, en) begin
        if (en == 0) begin
            // Addition when en is 0
            s_d_out = a + b;
            c_b_out = 1'b0; 
        end else begin
            // Subtraction when en is 1
            s_d_out = a - b;
          if (a < b)
                c_b_out = 1'b1; 
            else
                c_b_out = 1'b0; 
        end
    end

endmodule

