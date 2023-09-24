// Code your design here
module mux_8x1(input [7:0] i,  [2:0] s, output [7:0] y );
  assign y[0] = (~s[2] & ~s[1] & ~s[0] & i[0]);
  assign y[1] = (~s[2] & ~s[1] &  s[0] & i[1]);
  assign y[2] = (~s[2] &  s[1] & ~s[0] & i[2]);
  assign y[3] = (~s[2] &  s[1] &  s[0] & i[3]);
  assign y[4] = ( s[2] & ~s[1] & ~s[0] & i[4]);
  assign y[5] = ( s[2] & ~s[1] &  s[0] & i[5]);
  assign y[6] = ( s[2] &  s[1] & ~s[0] & i[6]);
  assign y[7] = ( s[2] &  s[1] &  s[0] & i[7]);
endmodule

