module FC1002_MII (
    //Sys/Common
    input  Clk,                    // 100 MHz
    input  Reset,                  // Active high
    input  UseDHCP,                // '1' to use DHCP
    input  [31:0] IP_Addr,         // IP address if not using DHCP
    output IP_Ok,                  // DHCP ready

    //MAC/MII
    output MII_REF_CLK_25M,        // MII continous 25 MHz reference clock
    output MII_RST_N,              // Phy reset, active low
    input  MII_COL,                // Collision detect
    input  MII_CRS,                // Carrier sense
    input  MII_RX_CLK,             // Receive clock
    input  MII_CRS_DV,             // Receive data valid
    input  [3:0] MII_RXD,          // Receive data
    input  MII_RXERR,              // Receive error
    input  MII_TX_CLK,             // Transmit clock
    output MII_TXEN,               // Transmit enable
    output [3:0] MII_TXD,          // Transmit data
    output MII_MDC,                // Management clock
    inout  MII_MDIO,               // Management data

    //SPI/Boot Control
    output SPI_CSn,                // Chip select
    output SPI_SCK,                // Serial clock
    output SPI_MOSI,               // Master out slave in
    input  SPI_MISO,               // Master in slave out

    //Logic Analyzer
    input  LA0_TrigIn,             // Trigger input
    input  LA0_Clk,                // Clock
    output LA0_TrigOut,            // Trigger out
    input  [31:0] LA0_Signals,     // Signals
    input  LA0_SampleEn,           // Sample enable

    //TCP Basic Server
    input  [15:0] TCP0_Service,    // Service
    input  [15:0] TCP0_ServerPort, // TCP local server port
    output TCP0_Connected,         // Client connected
    output TCP0_AllAcked,          // All outgoing data acked
    output [15:0] TCP0_nTxFree,    // Number of free bytes in outgoing buffer
    output [15:0] TCP0_nRxData,    // Number of bytes in receiving buffer
    input  [7:0] TCP0_TxData,      // Transmit data
    input  TCP0_TxValid,           // Transmit data valid
    output TCP0_TxReady,           // Transmit data ready
    output [7:0] TCP0_RxData,      // Receive data
    output TCP0_RxValid,           // Receive data valid
    input  TCP0_RxReady            // Receive data ready
);

endmodule
