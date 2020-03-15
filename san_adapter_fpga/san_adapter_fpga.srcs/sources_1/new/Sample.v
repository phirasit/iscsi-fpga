`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/12/2019 05:09:41 PM
// Design Name: 
// Module Name: Sample
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

module Sample(
    output LD0, LD1, LD2, LD3, LD4, LD5, LD6, LD7,

    input RX_CLK,
    input RX_CTRL, 
    input [3:0] RXD,    
    
    input TX_CLK,
    output TX_CTRL, 
    output [3:0] TXD,
    
    output MDIO,
    inout MDC,
    
    input GCLK
);

/* LED Clock */
wire [6:0] led = {LD7, LD6, LD5, LD4, LD3, LD2, LD1};
reg [30:0] counter = 28'b0;

assign led = counter[30:24];

always @(posedge GCLK) counter = counter + 1;

wire mii_col;

SAN_ADAPTER san_adapter (
    .GCLK  (GCLK),
    
    .MII_RX_CLK  (RX_CLK),
    .MII_RX_CTRL (RX_CTRL),
    .MII_RXD     (RXD),
    
    .MII_TX_CLK  (TX_CLK),
    .MII_TX_CTRL (TX_CTRL),
    .MII_TXD     (TXD),
    
    .MII_MDIO (MDIO),
    .MII_MDC  (MDC),
    
    .IP_Ok (LD0)
);

endmodule
