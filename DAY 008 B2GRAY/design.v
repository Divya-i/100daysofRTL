// Code your design here
module b2gray(input [3:0] bin, output [3:0] g);
  assign g[3] = bin[3];
  xor x1(g[2], bin[3], bin[2]);
  xor x2(g[1], bin[1], bin[2]);
  xor x3(g[0], bin[0], bin[1]);
endmodule

