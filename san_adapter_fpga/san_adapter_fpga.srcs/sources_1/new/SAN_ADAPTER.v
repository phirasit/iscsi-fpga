`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/15/2019 08:51:32 AM
// Design Name: 
// Module Name: SAN_ADAPTER
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

`include "FC1002_MII.vh"

module SAN_ADAPTER(
    input GCLK,
    output IP_Ok,
    
    input MII_COL,
    input MII_CRS,
    
    input MII_RX_CLK,
    input MII_RX_CTRL, 
    input [3:0] MII_RXD,    
    
    input MII_TX_CLK,
    output MII_TX_CTRL, 
    output [3:0] MII_TXD,
    
    output MII_MDIO,
    inout MII_MDC
);

/* Network Interface */
// MAC / MII
wire mii_ref_clk_25M;
wire mii_rst_n;

// tcp server
wire [15:0] tcp0_service    = 16'h0001;
wire [15:0] tcp0_serverPort = 16'd80;

wire tcp0_connected;
wire tcp0_allAck;

wire [15:0] tcp0_nTxFree;
wire [15:0] tcp0_nRxData;

wire [7:0] tcp0_data;
wire tcp0_valid;
wire tcp0_ready;


FC1002_MII fc1002_mii (

    // Sys/Common
    .Clk     (GCLK),
    .Reset   (1'b0),
    .UseDHCP (1'b1),
    .IP_Addr (), // static IP
    .IP_Ok   (IP_Ok),
    
    // MAC/MII
    .MII_REF_CLK_25M (mii_ref_clk_25M),
    .MII_RST_N       (mii_rst_n),

    .MII_COL         (0),
    .MII_CRS         (0),
     
    .MII_RX_CLK      (MII_RX_CLK),
    .MII_CRS_DV      (MII_RX_CTRL),
    .MII_RXD         (MII_RXD),
    .MII_RXERR       (1'b0),
    
    .MII_TX_CLK      (MII_TX_CLK),
    .MII_TXEN        (MII_TX_CTRL),
    .MII_TXD         (MII_TXD),
    
    .MII_MDC         (MII_MDC),
    .MII_MDIO        (MII_MDIO),
    
    // SPI/Boot Control
    .SPI_CSn  (),     // Chip select 
    .SPI_SCK  (),     // Serial clock
    .SPI_MOSI (),     // Master out slave in
    .SPI_MISO (1'b0), // Master in slave out
    
    // Logic Analyzer
    .LA0_TrigIn   (1'b0),   // Trigger input
    .LA0_Clk      (GCLK),   // Clock
    .LA0_TrigOut  (1'b0),   // Trigger out
    .LA0_Signals  (32'b0),  // Signals
    .LA0_SampleEn (1'b1),   // Sample enable
    
    // TCP Basic Server
    .TCP0_Service    (tcp0_service),
    .TCP0_ServerPort (tcp0_serverPort),
    .TCP0_Connected  (tcp0_connected),
    .TCP0_AllAcked   (tcp0_allAck),
    .TCP0_nTxFree    (tcp0_nTxFree),
    .TCP0_nRxData    (tcp0_nRxData),
    
    .TCP0_TxData     (tcp0_data),
    .TCP0_TxValid    (tcp0_valid),
    .TCP0_TxReady    (tcp0_ready),
    
    .TCP0_RxData     (tcp0_data),
    .TCP0_RxValid    (tcp0_valid),
    .TCP0_RxReady    (tcp0_ready)
);

endmodule
