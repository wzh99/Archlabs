`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/24 08:45:27
// Design Name: 
// Module Name: Top_tb
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


module Top_tb();
    
reg Clk, reset;
always #50 Clk = !Clk;
    
Top top(.Clk(Clk), .reset(reset));
wire [15:0] out;
assign out = top.regs.regFile[1][15:0];
    
initial begin
    $readmemh("data.txt", top.dataMem.memFile);
    $readmemb("code.txt", top.instMem.instrFile);
    
    Clk = 1;
    reset = 1;
    #25
    reset = 0;
    #2000;
end
    
endmodule
