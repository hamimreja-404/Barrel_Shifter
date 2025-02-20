`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.02.2025 20:31:17
// Design Name: 
// Module Name: Barrel_shifter
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


module Barrel_shifter(
    input [3:0] data_in,
    input [1:0] S,
    output reg [3:0] data_out
    );
    
    always @(*)
    begin
        case(S)
            2'b00:  data_out = data_in;
            2'b01:  data_out = {data_in[0],data_in[3:1]};
            2'b10:  data_out = {data_in[1:0],data_in[3:2]};
            2'b11:  data_out = {data_in[2:0],data_in[3]};
            default:data_out=data_in;
            
        endcase
    end
    
endmodule
