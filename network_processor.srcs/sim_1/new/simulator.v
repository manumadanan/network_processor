`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.12.2024 12:24:08
// Design Name: 
// Module Name: simulator
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


module simulator();
    // For the inputs
    reg clk;
    reg reset;
        
    // Fo rthe outputs [Monitoring purpose only]
    wire [31:0]pc_wire;
    
    processor p(
        .clk(clk),
        .reset(reset),
        
        .pc_wire(pc_wire)
    );
    
    // Providing the base clock to the processor
    always begin
        # 10 clk = ~ clk;
        reset <= 0;
    end
    initial begin
        clk <= 0;
        reset <= 1;
    end
endmodule
