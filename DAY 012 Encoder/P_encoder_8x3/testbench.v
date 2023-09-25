// Code your testbench here
// or browse Examples
module p_enc_8x3_tb;
  reg [7:0] d1;
  wire [2:0] y1;
  
  p_enc_8x3 pe83(.d(d1),.y(y1));
  
  initial
    begin
      $monitor("d1 = %b , y1 = %0b", d1, y1);
    repeat(5) begin
      d1 = $random; #1;
    end
  end
endmodule