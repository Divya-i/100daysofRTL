// Code your testbench here
// or browse Examples
module d_mux_1x4_tb;
  reg i1,s11,s01;
  wire y01,y11,y21,y31;
  
  d_mux_1x4 dm14(.i(i1),.s1(s11),.s0(s01),.y0(y01),.y1(y11),.y2(y21),.y3(y31));
  
  initial 
      begin
        
        $monitor("time = %0t,s11=%b,s01=%b,i1=%b,y01=%b,y11=%b,y21=%b,y31=%b",$time,s11,s01,i1,y01,y11,y21,y31);
        
         #1 s11 = 0; s01 = 0; i1 = 0;
         #1 s11 = 0; s01 = 0; i1 = 1;
         #1 s11 = 0; s01 = 1; i1 = 0;
         #1 s11 = 0; s01 = 1; i1 = 1;
         #1 s11 = 1; s01 = 1; i1 = 0;
         #1 s11 = 1; s01 = 1; i1 = 1;
         #1 s11 = 1; s01 = 1; i1 = 0;
         #1 s11 = 1; s01 = 1; i1 = 1;
       
        
      end
endmodule
        