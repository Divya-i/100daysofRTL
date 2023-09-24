module tb;
reg [1:0] data_inputs;
reg select;
wire output_result;

mux_2_1 dut(data_inputs, select, output_result);

always begin
    data_inputs[0] = $random;
  data_inputs[1] = $random; 
    select = $random;
    #10;
end

initial begin
    $monitor("Input I[0]: %0d  Input I[1]: %0d  Select: %0d Output: %0d",
        data_inputs[0], data_inputs[1], select, output_result);
    #100 $finish;
end
endmodule
