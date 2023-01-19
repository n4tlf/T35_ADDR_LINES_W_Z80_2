/************************************************************************
*   FILE:  T35_ADDR_LINES_W_Z80_2_top.v                                 *
*                                                                       *
*   This is a simple project that increments the S-100 Address          *
*   lines A0-A15 on John Monahan's FPGA SBC board via the T35           *
*   using a Z80 module.  It drives the Z80 data input lines low         *
*   which forces a "NOP" to the Z80 regardless of the actual address    *
*   so the Z80 will increment repeatedly through all 64k "memory space" *
*   Only the address lines A0-15 are driven by the virtual Z80 CPU      *
*   Addresses A16-19 and the SBC LEDs are only driven from the counter  *
*   The CPU here currently runs at about 244Hz, to make the address     *
*       lines visibly incrementing.  Altering the following line:       *
*           assign cpuClock = counter[12]:                              *
*           can speed up or slow down the Z80 CPU as needed             *
*   NOTE: THIS PROJECT "FAKES" SEVERAL S-100 TO ALLOW FRONT PANEL AND   *
*   OTHER TEST BOARDS TO ALLOW THE ADDRESS LINES TO SHOW ON LEDS.       *
*   THIS PROJECT DOES NOT CREATE PROPER S-100 COMPATIBLE SIGNALS        *
*   TFOX, N4TLF September 19, 2022   You are free to use it             *
*       however you like.  No warranty expressed or implied             *
************************************************************************/


module  T35_ADDR_LINES_W_Z80_2_top (

    sw1_reset_n,        // reset to T35 board, active low
    pll0_LOCKED,
    pll0_2MHz,
    s100_xrdy,          // xrdy is S100 pin 3, on Mini Front Panel
    s100_rdy,           // RDY signal from S100 bus
    S100adr0_15,        // The regular 16 address bits
    S100adr16_19,       // These are wires backwards, so
                        // lowest bit is A19, highest is A16
    SBCLEDs,             // The SBC LEDs also show activity
    s100_pDBIN,         // NOTE:  This signal required for SMB or BDB
    s100_pSYNC,         // NOTE:  This signal required for SMB or BDB    
    s100_pSTVAL,        // NOTE:  This signal required for SMB or BDB
    s100_n_pWR,         // NOTE:  We don't need to write to anything
    s100_sMWRT,         // NOTE:  We don't need to write to anything
    s100_pHLDA,         // Only for the HLDA LED at this point
    s100_sHLTA,         // S100 HALT Acknowledge out signal
    s100_sINTA,         // S100 Interrupt Acknowledge signal
    s100_n_sWO,         // S100 Status Write Out signal
    s100_sMEMR,         // S100 Status Memory Read out signal
    s100_sINP,          // S100 Status IO Input signal
    s100_sOUT,          // S100 Status IO Output signal
    s100_sM1,           // S100 Status M1 (opcode fetch) signal
    s100_PHI,           // S100 PHI (CPU) clock out signal
    s100_clock,         // S100 2MHz clock out
    s100_PHANTOM,       // S100 memory Phantom signal
    s100_ADSB,          // S100 Address buffer disable signal
    s100_CDSB,          // S100 Control (and Status) disable signal
    seg7,               // T35 seven-segment display
    seg7_dp,            // T35 decimal point line
    boardActive,        // SBC board active LED
    F_add_oe,           // SBC Address output buffer enable
    F_bus_stat_oe,      // SBC Status output buffer enable
    F_bus_ctl_oe);      // SBC Control output buffer enable
        
    input   sw1_reset_n;
    input   pll0_LOCKED;
    input   pll0_2MHz;
    input   s100_xrdy;
    input   s100_rdy;
    output  [15:0]S100adr0_15;
    output  [3:0] S100adr16_19;
    output  [7:0] SBCLEDs;
    output  s100_pDBIN;
    output  s100_pSYNC;
    output  s100_pSTVAL;
    output  s100_n_pWR;
    output  s100_sMWRT;
    output  s100_pHLDA;
    output  s100_sHLTA;
    output  s100_sINTA;
    output  s100_n_sWO;
    output  s100_sMEMR;
    output  s100_sINP;
    output  s100_sOUT;
    output  s100_sM1;
    output  s100_PHI;
    output  s100_clock;
    output  s100_PHANTOM;
    output  s100_ADSB;
    output  s100_CDSB;
    output  [6:0] seg7;
    output  seg7_dp;
    output  boardActive;
    output  F_add_oe;
    output  F_bus_stat_oe;
    output  F_bus_ctl_oe;
    
///////////////////////////////////////////////////////////////////

assign s100_sINTA = 0;
assign s100_n_sWO = 0;
assign s100_sMEMR = 0;
assign s100_sINP = 0;
assign s100_sOUT = 0;
assign s100_PHI = cpuClock;     // set PHI to current CPU clock
assign s100_clock = pll0_2MHz;  // set clock pin to async 2MHz 
assign s100_PHANTOM = 0;        // just turn OFF the Phantom LED
assign s100_ADSB = 1;           // just turn OFF the ADSB LED
assign s100_CDSB = 1;           // just turn OFF the CDSB LED

    wire    cpuClock;
    wire    n_m1;
    wire    n_mreq;
    wire    n_iorq;
    wire    n_rd;
    wire    n_wr;
    wire    n_rfsh;
    wire    n_halt;
    wire    n_busak;
    wire    z80_n_wait;
    
    wire  [15:0]  cpuAddress;
    wire  [7:0]   cpuDataOut;
    wire  [7:0]   cpuDataIn;
    wire    n_reset;
    wire    z80rdy;
    wire    n_ioWR;         // I/O port WRITE signal
    wire    n_memWR;        // Memory WRITE signal
    wire    n_ioRD;         // I/O READ signal 
    wire    n_memRD;        // Memory READ signal

reg [26:0]  counter;            // 26-bit counter for A0 to A15

assign  n_ioWR = n_wr | n_iorq;     // create IO write signal
assign  n_memWR = n_wr | n_mreq;    // create memory write signal
assign  n_ioRD = n_rd | n_iorq;     // create IO read signal
assign  n_memRD = n_rd | n_mreq;    // create memory read signal

assign cpuClock = counter[12];  // Change this to speed up or slow down
                                // the CPU address increment rate
assign n_reset = sw1_reset_n;               // connect the CPU reset
assign z80_n_wait = s100_xrdy & s100_rdy;   // combine ready signals
assign S100adr0_15 = cpuAddress;            // set the S100 addresses
assign cpuDataIn = 8'b0;                    // Force NOP into CPU Data in

assign F_add_oe = 0;            // set SBC board address buffers always ON
assign F_bus_stat_oe = 0;       // set SBC CPU Status buffers always ON
assign F_bus_ctl_oe = 0;        // set SBC CPU Control buffers always ON
assign S100adr16_19 = counter[19:16];   // Drive A16-19 from counter
assign boardActive = !pll0_LOCKED;      // show PLL locked on board active
assign SBCLEDs = ~(counter[26:19]);  // LEDs are active low, complement
assign s100_pDBIN = !cpuClock;      // fake pDBIN for Bus Display Board
assign s100_pSYNC = cpuClock;       // fake pSYNC for Bus Display Board
assign s100_pSTVAL = !cpuClock;     // fake pSTVAL for Bus Display Board
assign s100_sM1 = n_m1;             // set the M1 signal from teh Z80 CPU
assign s100_n_pWR = 1'b1;           // turn OFF processor write signal
assign s100_sMWRT = 1'b0;           // turn OFF status memory write
assign s100_pHLDA = !n_busak;       // turn OFF pHLDA LED
assign s100_sHLTA = !n_halt;        // turn OFF sHLTA LED

assign seg7 = 7'b0100100;           // The number "2"
assign seg7_dp = counter[20];       // Flash decimal count for "Heartbeat"

//////////////////////////////////////////////////////////////////////////
always @(posedge pll0_2MHz)
    begin
        if(n_reset == 0) begin   // if reset set low...
            counter <= 27'b0;    // reset counter to 0
        end                      // end of resetting everything
        else
            counter <= counter + 1;  // increment counter
    end
    

////////////////////////////////////////////////////////////////////////////
///////////     Z80 microcomputer module    T80s    (Z80 top module)    ////
////////////////////////////////////////////////////////////////////////////
T80s    #(
        .Mode       (1),    // 0 => Z80, 1 => Fast Z80, 2 => 8080, 3 => GB   
        .T2Write    (1),    // 0 => WR_n active in T3, /=0 => WR_n active in T2
        .IOWait     (0))    // 0 => Single cycle I/O, 1 => Std I/O cycle
        T1 (
        .RESET_n    (n_reset),      // INPUT:   low to reset
        .CLK_n      (cpuClock),     // INPUT:   main clock for CPU timing
        .WAIT_n     (z80_n_wait),   // INPUT:   low for adding wait
        .INT_n      (1'b1),         // INPUT:   low for regular CPU interrupt
        .NMI_n      (1'b1),         // INPUT:   low for non-mask CPU interrupt
        .BUSRQ_n    (1'b1),         // INPUT:   bus request
        .M1_n       (n_m1),         // OUTPUT:  Z80 M1 signal
        .MREQ_n     (n_mreq),       // OUTPUT:  Z80 memory request
        .IORQ_n     (n_iorq),       // OUTPUT:  Z80 Input/Output port request
        .RD_n       (n_rd),         // OUTPUT:  Z80 Read signal
        .WR_n       (n_wr),         // OUTPUT:  Z80 Write signal
        .RFSH_n     (n_rfsh),       // OUTPUT:  Z80 Memory Refresh signal
        .HALT_n     (n_halt),       // OUTPUT:  Z80 Halted status signal
        .BUSAK_n    (n_busak),      // OUTPUT:  Z80 Bus Request Acknowledge
        .A          (cpuAddress),   // OUTPUT:  Z80 Address bus output
        .DI         (cpuDataIn),    // INPUT:   Z80 Data input bus
        .DO         (cpuDataOut)    // OUTPUT:  Z80 Data output bus
        );
    
endmodule
