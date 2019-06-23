`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/24 16:42:02
// Design Name: 
// Module Name: OnBoard
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


module OnBoard(
    input clk_p,
    input clk_n,
    input [3:0] a,
    input [3:0] b,
    input reset,
    
    output led_clk,
    output led_do,
    output led_en,
    
    output wire seg_clk,
    output wire seg_en,
    output wire seg_do
    );
    
    // Configure clock input
    wire CLK_i, CLK_LED;
    IBUFGDS ibufgds(.O(CLK_i), .I(clk_p), .IB(clk_n));
    
    // Clock frequency division
    reg [15:0] div;
    always @ (posedge CLK_i)
    begin
        div <= div + 1;
    end
    assign CLK_LED = div[1];
    
    // CPU
    Top cpu(.Clk(CLK_LED), .reset(!reset));
    
    // Display
    display dis(.clk(CLK_LED), .rst(1'b0), .en(8'b00001111), .data(cpu.PC),
            .dot(8'b0), .led(~div), .led_clk(led_clk), .led_en(led_en), 
            .led_do(led_do), .seg_clk(seg_clk), .seg_en(seg_en), .seg_do(seg_do));
            
    
    initial begin
        // $readmemh("C:/Users/wangz/Documents/Projects/Archlabs/lab05/data.txt", cpu.dataMem.memFile);
        // $readmemb("C:/Users/wangz/Documents/Projects/Archlabs/lab05/code.txt", cpu.instMem.instrFile);
        
    end
    
endmodule
