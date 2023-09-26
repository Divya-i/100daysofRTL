module test_bench;
  reg [3:0] a1;
  reg [3:0] b1;
  reg cin1;
  wire [3:0] sum1;
  wire carry1;
    
  parallel_adder dut (a1,b1,cin1,sum1,carry1);
    
    always begin        
        a1    = $random;
        b1    = $random;
        cin1  = $random;
        #10; 
    end
    initial
        begin
 $monitor("a1 = %b  b1 = %b  cin1 = %b  sum1 = %b  carry1 = %b",a1, b1, cin1, sum1, carry1);
    #60 $finish;
        end
endmodule