module mux_2_1(
    input [1:0] data_inputs, 
    input select,
    output output_result
);
    assign output_result = select ? data_inputs[1] : data_inputs[0];
endmodule
