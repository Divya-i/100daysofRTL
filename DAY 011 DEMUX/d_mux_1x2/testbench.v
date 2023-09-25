module d_mux_1x2_tb;
  reg i1, sel1;
  wire y11, y01;
  
  d_mux_1x2 dm12 (.i(i1), .sel(sel1), .y0(y01), .y1(y11));

  initial begin
    $monitor("time=%0t, sel1=%b, i1=%b, y01=%b, y11=%b", $time, sel1, i1, y01, y11);
        
    #1 sel1 = 0; i1 = 0;
    #1 sel1 = 0; i1 = 1;
    #1 sel1 = 1; i1 = 0;
    #1 sel1 = 1; i1 = 1;
    #5;
    
    #10;
    $finish;
  end
endmodule
