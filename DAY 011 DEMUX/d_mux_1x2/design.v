// Code your design here
module d_mux_1x2(input i, sel , output y1,y0);
  assign {y0,y1} = sel?{1'b0,i}: {i,1'b0};
endmodule