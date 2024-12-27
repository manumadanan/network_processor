`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: nX
// Engineer: Manu Madanan
// 
// Create Date: 27.12.2024 12:11:02
// Design Name: Network Processor
// Module Name: processor
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
module processor(
        // For the inputs
        input wire clk,
        input wire reset,
        
        //The monitor varaiables
        output wire [31:0]pc_wire
    );
    wire [31:0] next_instruction;
    
    //static assignment
    assign pc_wire = next_instruction;
    
    //The program counter
    pc prog_counter(
        .clk(clk),
        .reset(reset),
        .pc(next_instruction)
    );
endmodule
