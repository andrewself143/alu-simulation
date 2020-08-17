`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2018 07:42:50 PM
// Design Name: 
// Module Name: mux_9to1_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mux_9to1_tb(
    output mux_Result
    );
    
    reg [2:0] sel;
    reg in0;
    reg in1;
    reg in2;
    reg in3;
    reg in4;
    reg in5;
    reg in6;
    reg in7;
    reg in8;
    
    mux_9to1 mux9to1(
        .select(sel),
        .i0(in0),
        .i1(in1),
        .i2(in2),
        .i3(in3),
        .i4(in4),
        .i5(in5),
        .i6(in6),
        .i7(in7),
        .i8(in8),
        .mux_out(mux_Result)
    );
    
    initial begin
        in0 = 1;
        in1 = 0;
        in2 = 0;
        in3 = 0;
        in4 = 0;
        in5 = 0;
        in6 = 0;
        in7 = 0;
        in8 = 0;
        sel = 0;
        #20
        sel = 1;
        #20
        sel = 2;
        #20
        sel = 3;
        #20
        sel = 4;
        #20
        sel = 5;
        #20
        sel = 6;
        #20
        sel = 7;
        #20
        sel = 8;
        #20
        sel = 9;
        #20
        sel = 2;
        in2 = 1;
        #20
        $finish;
    end
    
endmodule
