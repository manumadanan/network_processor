`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.12.2024 16:15:19
// Design Name: 
// Module Name: program_memory
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
module program_memory(
        input wire [31:0] address,
        output reg [31:0] data
    );
    reg [31:0] mem[31:0];
    always @(*) begin
        data <= mem[address];
    end
    initial begin
       mem[0] <= 15;
       mem[1] <= 25;
       mem[2] <= 35;
       mem[3] <= 45;
    end
endmodule
