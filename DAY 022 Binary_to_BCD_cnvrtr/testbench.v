module testbench;
  reg [7:0] data;
  wire [3:0] bit0, bit1, bit2;
  wire [11:0] BCD;

  binary_to_bcd dut (
    .data(data),
    .bit0(bit0),
    .bit1(bit1),
    .bit2(bit2),
    .BCD(BCD)
  );

  always begin
    data = $random;
    #10; 
  end
  initial begin 

    $display("Input Binary    BCD Output");
    $monitor("%d            %b", data, BCD);

   #60 $finish;
  end
endmodule
