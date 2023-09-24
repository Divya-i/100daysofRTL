module mux_4x1_tb;
  reg a1, b1, c1, d1, s01, s11;
  wire y1;
  mux_4x1 m4(.a(a1), .b(b1), .c(c1), .d(d1), .s0(s01), .s1(s11), .y(y1));
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars();
    $monitor("time=%0t, a1=%b, b1=%b, c1=%b, d1=%b, s01=%b, s11=%b, y1=%b",
             $time, a1, b1, c1, d1, s01, s11, y1);
             
    #1 s01=0; s11=0; a1=1; b1=0; c1=0; d1=0; 
    #1 s01=0; s11=1; a1=0; b1=1; c1=0; d1=0; 
    #1 s01=1; s11=0; a1=0; b1=0; c1=1; d1=0;  
    #1 s01=1; s11=1; a1=0; b1=0; c1=0; d1=1; 
  end
endmodule
