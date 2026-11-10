module rom_generator(
    input clk,
    output reg signed [7:0] data
);

reg [5:0] addr = 0;

always @(posedge clk)
begin
    addr <= addr + 1;
end

always @(*)
begin
    case(addr)

    // Low-frequency sine + high-frequency noise

    6'd0  : data =   0;
    6'd1  : data =  35;
    6'd2  : data =  15;
    6'd3  : data =  55;
    6'd4  : data =  30;
    6'd5  : data =  80;
    6'd6  : data =  50;
    6'd7  : data = 100;
    6'd8  : data =  70;
    6'd9  : data = 110;
    6'd10 : data =  85;
    6'd11 : data = 127;
    6'd12 : data =  90;
    6'd13 : data = 120;
    6'd14 : data =  80;
    6'd15 : data = 105;

    6'd16 : data =  70;
    6'd17 : data =  90;
    6'd18 : data =  55;
    6'd19 : data =  75;
    6'd20 : data =  40;
    6'd21 : data =  60;
    6'd22 : data =  25;
    6'd23 : data =  40;
    6'd24 : data =   0;
    6'd25 : data =  15;
    6'd26 : data = -20;
    6'd27 : data =   5;
    6'd28 : data = -40;
    6'd29 : data = -15;
    6'd30 : data = -60;
    6'd31 : data = -30;

    6'd32 : data = -80;
    6'd33 : data = -45;
    6'd34 : data = -100;
    6'd35 : data = -65;
    6'd36 : data = -120;
    6'd37 : data = -80;
    6'd38 : data = -127;
    6'd39 : data = -90;
    6'd40 : data = -115;
    6'd41 : data = -85;
    6'd42 : data = -100;
    6'd43 : data = -70;
    6'd44 : data = -85;
    6'd45 : data = -55;
    6'd46 : data = -70;
    6'd47 : data = -40;

    6'd48 : data = -50;
    6'd49 : data = -25;
    6'd50 : data = -35;
    6'd51 : data = -10;
    6'd52 : data = -15;
    6'd53 : data =   5;
    6'd54 : data =   0;
    6'd55 : data =  20;
    6'd56 : data =  20;
    6'd57 : data =  40;
    6'd58 : data =  35;
    6'd59 : data =  60;
    6'd60 : data =  50;
    6'd61 : data =  80;
    6'd62 : data =  65;
    6'd63 : data = 100;

    default : data = 0;

    endcase
end

endmodule