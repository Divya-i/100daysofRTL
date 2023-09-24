module mux_4x1(input a, b, c, d, s0, s1, output y);
  wire w0, w1, w2, w3;
  
  and a0(w0, a, ~s0, ~s1);
  and a1(w1, b, ~s0, s1);
  and a2(w2, c, s0, ~s1);
  and a3(w3, d, s0, s1);
  
  or o1(y, w0, w1, w2, w3);
endmodule
