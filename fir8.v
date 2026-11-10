module fir8(
    input clk,
    input signed [7:0] xin,
    output signed [31:0] yout
);

reg signed [7:0] x0=0,x1=0,x2=0,x3=0,x4=0,x5=0,x6=0,x7=0;

parameter signed H0 = 290;
parameter signed H1 = 1577;
parameter signed H2 = 5376;
parameter signed H3 = 9141;
parameter signed H4 = 9141;
parameter signed H5 = 5376;
parameter signed H6 = 1577;
parameter signed H7 = 290;

always @(posedge clk)
begin
    x7 <= x6;
    x6 <= x5;
    x5 <= x4;
    x4 <= x3;
    x3 <= x2;
    x2 <= x1;
    x1 <= x0;
    x0 <= xin;
end

wire signed [31:0] m0 = x0*H0;
wire signed [31:0] m1 = x1*H1;
wire signed [31:0] m2 = x2*H2;
wire signed [31:0] m3 = x3*H3;
wire signed [31:0] m4 = x4*H4;
wire signed [31:0] m5 = x5*H5;
wire signed [31:0] m6 = x6*H6;
wire signed [31:0] m7 = x7*H7;

wire signed [31:0] acc;

assign acc = m0+m1+m2+m3+m4+m5+m6+m7;

assign yout = acc >>> 15;

endmodule