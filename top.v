module top(

    input clk,

    output signed [7:0] input_signal,
    output signed [7:0] filtered_signal

);

wire signed [7:0] rom_out;
wire signed [31:0] fir_out;

rom_generator ROM
(
    .clk(clk),
    .data(rom_out)
);

fir8 FIR
(
    .clk(clk),
    .xin(rom_out),
    .yout(fir_out)
);

assign input_signal = rom_out;

assign filtered_signal = fir_out[7:0];

endmodule