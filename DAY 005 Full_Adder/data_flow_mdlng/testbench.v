// Code your testbench here
// or browse Examples
module full_addr_tb();
  reg a1, b1, cin1;
  wire sum1, cout1;
  full_addr fa(.a(a1), .b(b1), .cin(cin1), .sum(sum1), .cout(cout1));

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,full_addr_tb);
    
    $monitor("time = %0t, a1 = %b, b1 = %b, cin1 = %b, sum1 = %b, cout1 = %b", $time, a1, b1, cin1, sum1, cout1);

    #10; {a1, b1, cin1} = 3'b000;
    #10; a1 = 0; b1 = 0; cin1 = 1;
    #10; a1 = 0; b1 = 1; cin1 = 0;
    #10; a1 = 0; b1 = 1; cin1 = 1;
    #10; a1 = 1; b1 = 0; cin1 = 0;
    #10; a1 = 1; b1 = 0; cin1 = 1;
    #10; a1 = 1; b1 = 1; cin1 = 0;
    #10; a1 = 1; b1 = 1; cin1 = 1;
    #10;

    $finish;
  end
endmodule
