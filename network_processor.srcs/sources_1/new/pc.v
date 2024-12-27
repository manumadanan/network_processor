`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.12.2024 15:33:13
// Design Name: 
// Module Name: pc
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
module pc(
        input clk,
        input reset,
        input [31:0] branch_target, // Target address for branch/jump
        input branch_taken,         // Control signal for branching
        output reg [31:0] pc
    );
    always @(posedge clk or posedge reset or posedge branch_taken)begin
        if (reset) begin
            pc <= 0;
        end else if (clk) begin
            pc <= pc + 1;
        end else if (branch_taken)begin
            pc <= branch_target;
        end
    end
endmodule
