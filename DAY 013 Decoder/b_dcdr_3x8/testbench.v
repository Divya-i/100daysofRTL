// Code your testbench here
// or browse Examples
 module b_dec_3x8_tb;
   reg [2:0] d1;
   wire [7:0] y1;
  
   b_dec_3x8 bdec38(.d(d1),.y(y1));
  
  initial
    begin
      $monitor("d1 = %b , y1 = %0b", d1, y1);
    repeat(5) begin
      d1 = $random; #1;
    end
  end
endmodule