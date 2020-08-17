`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2018 04:11:35 PM
// Design Name: 
// Module Name: RegFile
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

module RegFile (
    input [5:0] RA1,
    input [5:0] RA2,
    input [5:0] WA,
    input [31:0] WD,
    input WE1,
    input CLK,
    output [31:0] RD1,
    output [31:0] RD2
);
    // 64x32 array
    reg [31:0] Registers [0:63];
    
     initial begin
        $readmemb("RegFile_Vals.mem", Registers);
     end
    
    assign RD1 = Registers[RA1];
    assign RD2 = Registers[RA2];
    
    always @(posedge CLK)
    begin
        if(WE1) begin
            Registers[WA] = WD;
        end
    end
       
endmodule
