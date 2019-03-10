`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/08/2019 10:44:31 AM
// Design Name: 
// Module Name: ledcounter
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


module ledcounter(
    input clk,
    output o_led1,
    output o_led2,
    output o_led3,
    output o_led4
    );

    reg     [24:0] counter;
    reg     [3:0] state = 4'b0000;

    always @(posedge clk)
    begin
        counter <= counter + 1'b1;
        if (counter >= 30000000)
        begin
            state <= state + 1'b1;
            counter <= 0;
        end
    end

    assign o_led1 = state[0];
    assign o_led2 = state[1];
    assign o_led3 = state[2];
    assign o_led4 = state[3];
endmodule
