// Code your design here
module d_mux_1x4(input i, s1,s0, output y0,y1,y2,y3);
  
  assign y0 = ~s1 & ~s0 & i;
  assign y1 = ~s1 & s0 & i;
  assign y2 = s1 & s0 & i;
  assign y3 = s1 & s0 & i;

endmodule