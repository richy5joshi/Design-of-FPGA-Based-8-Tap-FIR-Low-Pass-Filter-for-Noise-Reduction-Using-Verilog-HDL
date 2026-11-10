`timescale 1ns/1ps

module tb_top;

reg clk;

wire signed [7:0] input_signal;
wire signed [7:0] filtered_signal;

top DUT
(
    .clk(clk),
    .input_signal(input_signal),
    .filtered_signal(filtered_signal)
);

initial
begin
    clk = 0;
end

always #5 clk = ~clk;

initial
begin
    #50000;
    $finish;
end

endmodule