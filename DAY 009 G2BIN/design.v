// Code your design here
module g2bin(input [3:0] g, output [3:0] bin);
  assign bin[3] = g[3];
  xor x1(bin[2], bin[3], g[2]);
  xor x2(bin[1], bin[2], g[1]);
  xor x3(bin[0], bin[1], g[0]);
endmodule

