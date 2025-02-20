`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.02.2025 21:31:45
// Design Name: 
// Module Name: Barrel_shifter_tb
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


module Barrel_shifter_tb();
    reg [3:0] data_in;
    reg[1:0] S;
    wire[3:0] data_out;
    
    Barrel_shifter uut(
            .data_in(data_in),
            .S(S),
            .data_out(data_out)
        );
    initial
    begin
        data_in=4'b0;
        #5 data_in=4'b1010;
        #15 S=2'b00;
        #15 S=2'b01;
        #15 S=2'b10;
        #15 S=2'b11;
        #15 data_in=4'b1011;
        S=2'b00;
        #15;
        #15 S=2'b01;
        #15 S=2'b10;
        #15 S=2'b11;
    end
    
endmodule
