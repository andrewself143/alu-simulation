`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2018 07:35:16 PM
// Design Name: 
// Module Name: mux_9to1
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


module mux_9to1(
    input [3:0] select,
    input i0,
    input i1,
    input i2,
    input i3,
    input i4,
    input i5,
    input i6,
    input i7,
    input i8,
    output reg mux_out
);

    always @(select, i0, i1, i2, i3, i4, i5, i6, i7, i8) begin
        if (select == 4'b0000) begin
            mux_out = i0;
        end
        else if (select == 4'b0001) begin
            mux_out = i1;
        end
        else if (select == 4'b0010) begin
            mux_out = i2;
        end
        else if (select == 4'b0101) begin
            mux_out = i3;
        end
        else if (select == 4'b0110) begin
            mux_out = i4;
        end
        else if (select == 4'b0111) begin
            mux_out = i5;
        end
        else if (select == 4'b1000) begin
            mux_out = i6;
        end
        else if (select == 4'b1001) begin
            mux_out = i7;
        end
        else if (select == 4'b1011) begin
            mux_out = i8;
        end
        else begin
           mux_out = 1'bZ;
        end
    end

endmodule