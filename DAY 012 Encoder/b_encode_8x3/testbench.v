module b_enc_8x3_tb;
  reg [7:0] d1;
  wire [2:0] y1;
  integer i;
  
  b_enc_8x3 be83(.d(d1), .y(y1));
  
  initial begin
    d1 = 8'b1;
    #1;
    
    for (i = 0; i < 8; i = i + 1) begin
      $display("d1 = %h (in dec: %0d), y1 = %b", d1, i, y1);
      d1 = d1 << 1;
      #1;
    end
    
    $finish;
  end
endmodule
