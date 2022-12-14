
//
// Verific Verilog Description of module T35_ADDR_LINES_W_Z80_2_top
//

module T35_ADDR_LINES_W_Z80_2_top (sw1_reset_n, pll0_LOCKED, pll0_2MHz, 
            s100_xrdy, s100_rdy, S100adr0_15, S100adr16_19, SBCLEDs, 
            s100_pDBIN, s100_pSYNC, s100_pSTVAL, s100_n_pWR, s100_sMWRT, 
            s100_pHLDA, s100_sHLTA, s100_sINTA, s100_n_sWO, s100_sMEMR, 
            s100_sINP, s100_sOUT, s100_sM1, s100_PHI, s100_clock, 
            s100_PHANTOM, s100_ADSB, s100_CDSB, seg7, seg7_dp, boardActive, 
            F_add_oe, F_bus_stat_oe, F_bus_ctl_oe);
    input sw1_reset_n /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    input pll0_LOCKED /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    input pll0_2MHz /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    input s100_xrdy /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    input s100_rdy /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    output [15:0]S100adr0_15 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output [3:0]S100adr16_19 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output [7:0]SBCLEDs /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output s100_pDBIN /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output s100_pSYNC /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output s100_pSTVAL /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output s100_n_pWR /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output s100_sMWRT /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output s100_pHLDA /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output s100_sHLTA /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output s100_sINTA /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output s100_n_sWO /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output s100_sMEMR /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output s100_sINP /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output s100_sOUT /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output s100_sM1 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output s100_PHI /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output s100_clock /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output s100_PHANTOM /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output s100_ADSB /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output s100_CDSB /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output [6:0]seg7 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output seg7_dp /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output boardActive /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output F_add_oe /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output F_bus_stat_oe /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output F_bus_ctl_oe /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    
    
    wire \counter[0] , \T1/u0/MCycles[0] , \T1/u0/R[0] , \T1/MCycle[0] , 
        \T1/TState[0] , \T1/u0/PC[0] , \T1/u0/R[1] , \T1/u0/R[2] , \T1/u0/R[3] , 
        \T1/u0/R[4] , \T1/u0/R[5] , \T1/u0/R[6] , \T1/MCycle[1] , \T1/MCycle[2] , 
        \T1/TState[1] , \T1/TState[2] , \T1/u0/PC[1] , \T1/u0/PC[2] , 
        \T1/u0/PC[3] , \T1/u0/PC[4] , \T1/u0/PC[5] , \T1/u0/PC[6] , 
        \T1/u0/PC[7] , \T1/u0/PC[8] , \T1/u0/PC[9] , \T1/u0/PC[10] , 
        \T1/u0/PC[11] , \T1/u0/PC[12] , \T1/u0/PC[13] , \T1/u0/PC[14] , 
        \T1/u0/PC[15] , \counter[1] , \counter[2] , \counter[3] , \counter[4] , 
        \counter[5] , \counter[6] , \counter[7] , \counter[8] , \counter[9] , 
        \counter[10] , \counter[11] , \counter[13] , \counter[14] , 
        \counter[15] , \counter[21] , \counter[22] , \counter[23] , 
        \counter[24] , \counter[25] , \counter[26] , n83, n84, n85, 
        n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, 
        n96, n97, n98, n99, n100, n101, n102, n103, n104, 
        n105, n106, n107, n108, n109, n110, n111, n112, n113, 
        n114, n115, n116, n117, n118, n119, n120, n121, n122, 
        n123, n124, n125, n126, n127, n128, n129, n130, n131, 
        n132, n133, \T1/u0/n1115 , ceg_net761, \T1/u0/equal_5/n5 , 
        \~ceg_net693 , \T1/u0/n2456 , \T1/u0/n2517 , \T1/u0/n2411 , 
        \T1/u0/n3003 , ceg_net75, \T1/u0/n1139 , ceg_net692, \T1/u0/n1114 , 
        \T1/u0/n1113 , \T1/u0/n1112 , \T1/u0/n1111 , \T1/u0/n1110 , 
        \T1/u0/n1109 , \T1/u0/n1108 , \T1/u0/n1107 , \T1/u0/n1106 , 
        \T1/u0/n1105 , \T1/u0/n1104 , \T1/u0/n1103 , \T1/u0/n1102 , 
        \T1/u0/n1101 , \T1/u0/n1100 , \T1/u0/n3022 , \T1/u0/n3027 , 
        \T1/u0/n3032 , \T1/u0/n3037 , \T1/u0/n3042 , \T1/u0/n3047 , 
        \T1/u0/n2455 , \T1/u0/n2454 , \T1/u0/n3421 , \T1/u0/n2515 , 
        \T1/u0/n1138 , \T1/u0/n1137 , \T1/u0/n1136 , \T1/u0/n1135 , 
        \T1/u0/n1134 , \T1/u0/n1133 , \T1/u0/n1132 , \T1/u0/n1131 , 
        \T1/u0/n1130 , \T1/u0/n1129 , \T1/u0/n1128 , \T1/u0/n1127 , 
        \T1/u0/n1126 , \T1/u0/n1125 , \T1/u0/n1124 , \n163~O , \pll0_2MHz~O , 
        n303, n304, n305, n306, n307, n308, n309, n310, n311, 
        n312, n313, n314, n315, n316, n317, n318, n319, n320, 
        n321, n322, n323, n324;
    
    assign s100_clock = pll0_2MHz /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    assign s100_pDBIN = s100_pSTVAL /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign s100_sMWRT = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign s100_pHLDA = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign s100_sINTA = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign s100_n_sWO = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign s100_sMEMR = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign s100_sINP = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign s100_sOUT = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign s100_PHI = s100_pSYNC /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign s100_PHANTOM = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign s100_ADSB = 1'b1 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign s100_CDSB = 1'b1 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign seg7[6] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign seg7[5] = 1'b1 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign seg7[4] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign seg7[3] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign seg7[2] = 1'b1 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign seg7[1] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign seg7[0] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign F_add_oe = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign F_bus_stat_oe = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign F_bus_ctl_oe = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign s100_n_pWR = 1'b1 /* verific EFX_ATTRIBUTE_CELL_NAME=VCC */ ;
    assign s100_sHLTA = 1'b0 /* verific EFX_ATTRIBUTE_CELL_NAME=GND */ ;
    EFX_LUT4 LUT__456 (.I0(\T1/MCycle[1] ), .I1(\T1/MCycle[2] ), .I2(\T1/TState[2] ), 
            .I3(\T1/MCycle[0] ), .O(n303)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__456.LUTMASK = 16'h0100;
    EFX_FF \counter[0]~FF  (.D(\counter[0] ), .CE(1'b1), .CLK(\pll0_2MHz~O ), 
           .SR(sw1_reset_n), .Q(\counter[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2_top.v(166)
    defparam \counter[0]~FF .CLK_POLARITY = 1'b1;
    defparam \counter[0]~FF .CE_POLARITY = 1'b1;
    defparam \counter[0]~FF .SR_POLARITY = 1'b0;
    defparam \counter[0]~FF .D_POLARITY = 1'b0;
    defparam \counter[0]~FF .SR_SYNC = 1'b1;
    defparam \counter[0]~FF .SR_VALUE = 1'b0;
    defparam \counter[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \S100adr0_15[0]~FF  (.D(\T1/u0/n1115 ), .CE(ceg_net761), .CLK(\n163~O ), 
           .SR(sw1_reset_n), .Q(S100adr0_15[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T80.vhd(696)
    defparam \S100adr0_15[0]~FF .CLK_POLARITY = 1'b1;
    defparam \S100adr0_15[0]~FF .CE_POLARITY = 1'b0;
    defparam \S100adr0_15[0]~FF .SR_POLARITY = 1'b0;
    defparam \S100adr0_15[0]~FF .D_POLARITY = 1'b1;
    defparam \S100adr0_15[0]~FF .SR_SYNC = 1'b0;
    defparam \S100adr0_15[0]~FF .SR_VALUE = 1'b0;
    defparam \S100adr0_15[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \T1/u0/MCycles[0]~FF  (.D(1'b1), .CE(1'b0), .CLK(\n163~O ), 
           .SR(sw1_reset_n), .Q(\T1/u0/MCycles[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T80.vhd(696)
    defparam \T1/u0/MCycles[0]~FF .CLK_POLARITY = 1'b1;
    defparam \T1/u0/MCycles[0]~FF .CE_POLARITY = 1'b0;
    defparam \T1/u0/MCycles[0]~FF .SR_POLARITY = 1'b0;
    defparam \T1/u0/MCycles[0]~FF .D_POLARITY = 1'b1;
    defparam \T1/u0/MCycles[0]~FF .SR_SYNC = 1'b0;
    defparam \T1/u0/MCycles[0]~FF .SR_VALUE = 1'b0;
    defparam \T1/u0/MCycles[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_LUT4 LUT__457 (.I0(\T1/MCycle[2] ), .I1(\T1/MCycle[1] ), .I2(n303), 
            .O(n304)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0707 */ ;
    defparam LUT__457.LUTMASK = 16'h0707;
    EFX_FF \T1/u0/R[0]~FF  (.D(\T1/u0/R[0] ), .CE(\~ceg_net693 ), .CLK(\n163~O ), 
           .SR(sw1_reset_n), .Q(\T1/u0/R[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T80.vhd(696)
    defparam \T1/u0/R[0]~FF .CLK_POLARITY = 1'b1;
    defparam \T1/u0/R[0]~FF .CE_POLARITY = 1'b1;
    defparam \T1/u0/R[0]~FF .SR_POLARITY = 1'b0;
    defparam \T1/u0/R[0]~FF .D_POLARITY = 1'b0;
    defparam \T1/u0/R[0]~FF .SR_SYNC = 1'b0;
    defparam \T1/u0/R[0]~FF .SR_VALUE = 1'b0;
    defparam \T1/u0/R[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \T1/MCycle[0]~FF  (.D(\T1/u0/n2456 ), .CE(\T1/u0/equal_5/n5 ), 
           .CLK(\n163~O ), .SR(sw1_reset_n), .Q(\T1/MCycle[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T80.vhd(1060)
    defparam \T1/MCycle[0]~FF .CLK_POLARITY = 1'b1;
    defparam \T1/MCycle[0]~FF .CE_POLARITY = 1'b0;
    defparam \T1/MCycle[0]~FF .SR_POLARITY = 1'b0;
    defparam \T1/MCycle[0]~FF .D_POLARITY = 1'b1;
    defparam \T1/MCycle[0]~FF .SR_SYNC = 1'b0;
    defparam \T1/MCycle[0]~FF .SR_VALUE = 1'b1;
    defparam \T1/MCycle[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \T1/TState[0]~FF  (.D(\T1/u0/n2517 ), .CE(\T1/u0/n2411 ), .CLK(\n163~O ), 
           .SR(sw1_reset_n), .Q(\T1/TState[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T80.vhd(1060)
    defparam \T1/TState[0]~FF .CLK_POLARITY = 1'b1;
    defparam \T1/TState[0]~FF .CE_POLARITY = 1'b0;
    defparam \T1/TState[0]~FF .SR_POLARITY = 1'b0;
    defparam \T1/TState[0]~FF .D_POLARITY = 1'b1;
    defparam \T1/TState[0]~FF .SR_SYNC = 1'b0;
    defparam \T1/TState[0]~FF .SR_VALUE = 1'b0;
    defparam \T1/TState[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \s100_sM1~FF  (.D(\T1/u0/n3003 ), .CE(ceg_net75), .CLK(\n163~O ), 
           .SR(sw1_reset_n), .Q(s100_sM1)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T80.vhd(1060)
    defparam \s100_sM1~FF .CLK_POLARITY = 1'b1;
    defparam \s100_sM1~FF .CE_POLARITY = 1'b0;
    defparam \s100_sM1~FF .SR_POLARITY = 1'b0;
    defparam \s100_sM1~FF .D_POLARITY = 1'b0;
    defparam \s100_sM1~FF .SR_SYNC = 1'b0;
    defparam \s100_sM1~FF .SR_VALUE = 1'b1;
    defparam \s100_sM1~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \T1/u0/PC[0]~FF  (.D(\T1/u0/n1139 ), .CE(ceg_net692), .CLK(\n163~O ), 
           .SR(sw1_reset_n), .Q(\T1/u0/PC[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T80.vhd(696)
    defparam \T1/u0/PC[0]~FF .CLK_POLARITY = 1'b1;
    defparam \T1/u0/PC[0]~FF .CE_POLARITY = 1'b0;
    defparam \T1/u0/PC[0]~FF .SR_POLARITY = 1'b0;
    defparam \T1/u0/PC[0]~FF .D_POLARITY = 1'b1;
    defparam \T1/u0/PC[0]~FF .SR_SYNC = 1'b0;
    defparam \T1/u0/PC[0]~FF .SR_VALUE = 1'b0;
    defparam \T1/u0/PC[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \S100adr0_15[1]~FF  (.D(\T1/u0/n1114 ), .CE(ceg_net761), .CLK(\n163~O ), 
           .SR(sw1_reset_n), .Q(S100adr0_15[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T80.vhd(696)
    defparam \S100adr0_15[1]~FF .CLK_POLARITY = 1'b1;
    defparam \S100adr0_15[1]~FF .CE_POLARITY = 1'b0;
    defparam \S100adr0_15[1]~FF .SR_POLARITY = 1'b0;
    defparam \S100adr0_15[1]~FF .D_POLARITY = 1'b1;
    defparam \S100adr0_15[1]~FF .SR_SYNC = 1'b0;
    defparam \S100adr0_15[1]~FF .SR_VALUE = 1'b0;
    defparam \S100adr0_15[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \S100adr0_15[2]~FF  (.D(\T1/u0/n1113 ), .CE(ceg_net761), .CLK(\n163~O ), 
           .SR(sw1_reset_n), .Q(S100adr0_15[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T80.vhd(696)
    defparam \S100adr0_15[2]~FF .CLK_POLARITY = 1'b1;
    defparam \S100adr0_15[2]~FF .CE_POLARITY = 1'b0;
    defparam \S100adr0_15[2]~FF .SR_POLARITY = 1'b0;
    defparam \S100adr0_15[2]~FF .D_POLARITY = 1'b1;
    defparam \S100adr0_15[2]~FF .SR_SYNC = 1'b0;
    defparam \S100adr0_15[2]~FF .SR_VALUE = 1'b0;
    defparam \S100adr0_15[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \S100adr0_15[3]~FF  (.D(\T1/u0/n1112 ), .CE(ceg_net761), .CLK(\n163~O ), 
           .SR(sw1_reset_n), .Q(S100adr0_15[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T80.vhd(696)
    defparam \S100adr0_15[3]~FF .CLK_POLARITY = 1'b1;
    defparam \S100adr0_15[3]~FF .CE_POLARITY = 1'b0;
    defparam \S100adr0_15[3]~FF .SR_POLARITY = 1'b0;
    defparam \S100adr0_15[3]~FF .D_POLARITY = 1'b1;
    defparam \S100adr0_15[3]~FF .SR_SYNC = 1'b0;
    defparam \S100adr0_15[3]~FF .SR_VALUE = 1'b0;
    defparam \S100adr0_15[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \S100adr0_15[4]~FF  (.D(\T1/u0/n1111 ), .CE(ceg_net761), .CLK(\n163~O ), 
           .SR(sw1_reset_n), .Q(S100adr0_15[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T80.vhd(696)
    defparam \S100adr0_15[4]~FF .CLK_POLARITY = 1'b1;
    defparam \S100adr0_15[4]~FF .CE_POLARITY = 1'b0;
    defparam \S100adr0_15[4]~FF .SR_POLARITY = 1'b0;
    defparam \S100adr0_15[4]~FF .D_POLARITY = 1'b1;
    defparam \S100adr0_15[4]~FF .SR_SYNC = 1'b0;
    defparam \S100adr0_15[4]~FF .SR_VALUE = 1'b0;
    defparam \S100adr0_15[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \S100adr0_15[5]~FF  (.D(\T1/u0/n1110 ), .CE(ceg_net761), .CLK(\n163~O ), 
           .SR(sw1_reset_n), .Q(S100adr0_15[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T80.vhd(696)
    defparam \S100adr0_15[5]~FF .CLK_POLARITY = 1'b1;
    defparam \S100adr0_15[5]~FF .CE_POLARITY = 1'b0;
    defparam \S100adr0_15[5]~FF .SR_POLARITY = 1'b0;
    defparam \S100adr0_15[5]~FF .D_POLARITY = 1'b1;
    defparam \S100adr0_15[5]~FF .SR_SYNC = 1'b0;
    defparam \S100adr0_15[5]~FF .SR_VALUE = 1'b0;
    defparam \S100adr0_15[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \S100adr0_15[6]~FF  (.D(\T1/u0/n1109 ), .CE(ceg_net761), .CLK(\n163~O ), 
           .SR(sw1_reset_n), .Q(S100adr0_15[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T80.vhd(696)
    defparam \S100adr0_15[6]~FF .CLK_POLARITY = 1'b1;
    defparam \S100adr0_15[6]~FF .CE_POLARITY = 1'b0;
    defparam \S100adr0_15[6]~FF .SR_POLARITY = 1'b0;
    defparam \S100adr0_15[6]~FF .D_POLARITY = 1'b1;
    defparam \S100adr0_15[6]~FF .SR_SYNC = 1'b0;
    defparam \S100adr0_15[6]~FF .SR_VALUE = 1'b0;
    defparam \S100adr0_15[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \S100adr0_15[7]~FF  (.D(\T1/u0/n1108 ), .CE(ceg_net761), .CLK(\n163~O ), 
           .SR(sw1_reset_n), .Q(S100adr0_15[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T80.vhd(696)
    defparam \S100adr0_15[7]~FF .CLK_POLARITY = 1'b1;
    defparam \S100adr0_15[7]~FF .CE_POLARITY = 1'b0;
    defparam \S100adr0_15[7]~FF .SR_POLARITY = 1'b0;
    defparam \S100adr0_15[7]~FF .D_POLARITY = 1'b1;
    defparam \S100adr0_15[7]~FF .SR_SYNC = 1'b0;
    defparam \S100adr0_15[7]~FF .SR_VALUE = 1'b0;
    defparam \S100adr0_15[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \S100adr0_15[8]~FF  (.D(\T1/u0/n1107 ), .CE(ceg_net761), .CLK(\n163~O ), 
           .SR(sw1_reset_n), .Q(S100adr0_15[8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T80.vhd(696)
    defparam \S100adr0_15[8]~FF .CLK_POLARITY = 1'b1;
    defparam \S100adr0_15[8]~FF .CE_POLARITY = 1'b0;
    defparam \S100adr0_15[8]~FF .SR_POLARITY = 1'b0;
    defparam \S100adr0_15[8]~FF .D_POLARITY = 1'b1;
    defparam \S100adr0_15[8]~FF .SR_SYNC = 1'b0;
    defparam \S100adr0_15[8]~FF .SR_VALUE = 1'b0;
    defparam \S100adr0_15[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \S100adr0_15[9]~FF  (.D(\T1/u0/n1106 ), .CE(ceg_net761), .CLK(\n163~O ), 
           .SR(sw1_reset_n), .Q(S100adr0_15[9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T80.vhd(696)
    defparam \S100adr0_15[9]~FF .CLK_POLARITY = 1'b1;
    defparam \S100adr0_15[9]~FF .CE_POLARITY = 1'b0;
    defparam \S100adr0_15[9]~FF .SR_POLARITY = 1'b0;
    defparam \S100adr0_15[9]~FF .D_POLARITY = 1'b1;
    defparam \S100adr0_15[9]~FF .SR_SYNC = 1'b0;
    defparam \S100adr0_15[9]~FF .SR_VALUE = 1'b0;
    defparam \S100adr0_15[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \S100adr0_15[10]~FF  (.D(\T1/u0/n1105 ), .CE(ceg_net761), .CLK(\n163~O ), 
           .SR(sw1_reset_n), .Q(S100adr0_15[10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T80.vhd(696)
    defparam \S100adr0_15[10]~FF .CLK_POLARITY = 1'b1;
    defparam \S100adr0_15[10]~FF .CE_POLARITY = 1'b0;
    defparam \S100adr0_15[10]~FF .SR_POLARITY = 1'b0;
    defparam \S100adr0_15[10]~FF .D_POLARITY = 1'b1;
    defparam \S100adr0_15[10]~FF .SR_SYNC = 1'b0;
    defparam \S100adr0_15[10]~FF .SR_VALUE = 1'b0;
    defparam \S100adr0_15[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \S100adr0_15[11]~FF  (.D(\T1/u0/n1104 ), .CE(ceg_net761), .CLK(\n163~O ), 
           .SR(sw1_reset_n), .Q(S100adr0_15[11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T80.vhd(696)
    defparam \S100adr0_15[11]~FF .CLK_POLARITY = 1'b1;
    defparam \S100adr0_15[11]~FF .CE_POLARITY = 1'b0;
    defparam \S100adr0_15[11]~FF .SR_POLARITY = 1'b0;
    defparam \S100adr0_15[11]~FF .D_POLARITY = 1'b1;
    defparam \S100adr0_15[11]~FF .SR_SYNC = 1'b0;
    defparam \S100adr0_15[11]~FF .SR_VALUE = 1'b0;
    defparam \S100adr0_15[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \S100adr0_15[12]~FF  (.D(\T1/u0/n1103 ), .CE(ceg_net761), .CLK(\n163~O ), 
           .SR(sw1_reset_n), .Q(S100adr0_15[12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T80.vhd(696)
    defparam \S100adr0_15[12]~FF .CLK_POLARITY = 1'b1;
    defparam \S100adr0_15[12]~FF .CE_POLARITY = 1'b0;
    defparam \S100adr0_15[12]~FF .SR_POLARITY = 1'b0;
    defparam \S100adr0_15[12]~FF .D_POLARITY = 1'b1;
    defparam \S100adr0_15[12]~FF .SR_SYNC = 1'b0;
    defparam \S100adr0_15[12]~FF .SR_VALUE = 1'b0;
    defparam \S100adr0_15[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \S100adr0_15[13]~FF  (.D(\T1/u0/n1102 ), .CE(ceg_net761), .CLK(\n163~O ), 
           .SR(sw1_reset_n), .Q(S100adr0_15[13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T80.vhd(696)
    defparam \S100adr0_15[13]~FF .CLK_POLARITY = 1'b1;
    defparam \S100adr0_15[13]~FF .CE_POLARITY = 1'b0;
    defparam \S100adr0_15[13]~FF .SR_POLARITY = 1'b0;
    defparam \S100adr0_15[13]~FF .D_POLARITY = 1'b1;
    defparam \S100adr0_15[13]~FF .SR_SYNC = 1'b0;
    defparam \S100adr0_15[13]~FF .SR_VALUE = 1'b0;
    defparam \S100adr0_15[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \S100adr0_15[14]~FF  (.D(\T1/u0/n1101 ), .CE(ceg_net761), .CLK(\n163~O ), 
           .SR(sw1_reset_n), .Q(S100adr0_15[14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T80.vhd(696)
    defparam \S100adr0_15[14]~FF .CLK_POLARITY = 1'b1;
    defparam \S100adr0_15[14]~FF .CE_POLARITY = 1'b0;
    defparam \S100adr0_15[14]~FF .SR_POLARITY = 1'b0;
    defparam \S100adr0_15[14]~FF .D_POLARITY = 1'b1;
    defparam \S100adr0_15[14]~FF .SR_SYNC = 1'b0;
    defparam \S100adr0_15[14]~FF .SR_VALUE = 1'b0;
    defparam \S100adr0_15[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \S100adr0_15[15]~FF  (.D(\T1/u0/n1100 ), .CE(ceg_net761), .CLK(\n163~O ), 
           .SR(sw1_reset_n), .Q(S100adr0_15[15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T80.vhd(696)
    defparam \S100adr0_15[15]~FF .CLK_POLARITY = 1'b1;
    defparam \S100adr0_15[15]~FF .CE_POLARITY = 1'b0;
    defparam \S100adr0_15[15]~FF .SR_POLARITY = 1'b0;
    defparam \S100adr0_15[15]~FF .D_POLARITY = 1'b1;
    defparam \S100adr0_15[15]~FF .SR_SYNC = 1'b0;
    defparam \S100adr0_15[15]~FF .SR_VALUE = 1'b0;
    defparam \S100adr0_15[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \T1/u0/R[1]~FF  (.D(\T1/u0/n3022 ), .CE(\~ceg_net693 ), .CLK(\n163~O ), 
           .SR(sw1_reset_n), .Q(\T1/u0/R[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T80.vhd(696)
    defparam \T1/u0/R[1]~FF .CLK_POLARITY = 1'b1;
    defparam \T1/u0/R[1]~FF .CE_POLARITY = 1'b1;
    defparam \T1/u0/R[1]~FF .SR_POLARITY = 1'b0;
    defparam \T1/u0/R[1]~FF .D_POLARITY = 1'b1;
    defparam \T1/u0/R[1]~FF .SR_SYNC = 1'b0;
    defparam \T1/u0/R[1]~FF .SR_VALUE = 1'b0;
    defparam \T1/u0/R[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \T1/u0/R[2]~FF  (.D(\T1/u0/n3027 ), .CE(\~ceg_net693 ), .CLK(\n163~O ), 
           .SR(sw1_reset_n), .Q(\T1/u0/R[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T80.vhd(696)
    defparam \T1/u0/R[2]~FF .CLK_POLARITY = 1'b1;
    defparam \T1/u0/R[2]~FF .CE_POLARITY = 1'b1;
    defparam \T1/u0/R[2]~FF .SR_POLARITY = 1'b0;
    defparam \T1/u0/R[2]~FF .D_POLARITY = 1'b1;
    defparam \T1/u0/R[2]~FF .SR_SYNC = 1'b0;
    defparam \T1/u0/R[2]~FF .SR_VALUE = 1'b0;
    defparam \T1/u0/R[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \T1/u0/R[3]~FF  (.D(\T1/u0/n3032 ), .CE(\~ceg_net693 ), .CLK(\n163~O ), 
           .SR(sw1_reset_n), .Q(\T1/u0/R[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T80.vhd(696)
    defparam \T1/u0/R[3]~FF .CLK_POLARITY = 1'b1;
    defparam \T1/u0/R[3]~FF .CE_POLARITY = 1'b1;
    defparam \T1/u0/R[3]~FF .SR_POLARITY = 1'b0;
    defparam \T1/u0/R[3]~FF .D_POLARITY = 1'b1;
    defparam \T1/u0/R[3]~FF .SR_SYNC = 1'b0;
    defparam \T1/u0/R[3]~FF .SR_VALUE = 1'b0;
    defparam \T1/u0/R[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \T1/u0/R[4]~FF  (.D(\T1/u0/n3037 ), .CE(\~ceg_net693 ), .CLK(\n163~O ), 
           .SR(sw1_reset_n), .Q(\T1/u0/R[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T80.vhd(696)
    defparam \T1/u0/R[4]~FF .CLK_POLARITY = 1'b1;
    defparam \T1/u0/R[4]~FF .CE_POLARITY = 1'b1;
    defparam \T1/u0/R[4]~FF .SR_POLARITY = 1'b0;
    defparam \T1/u0/R[4]~FF .D_POLARITY = 1'b1;
    defparam \T1/u0/R[4]~FF .SR_SYNC = 1'b0;
    defparam \T1/u0/R[4]~FF .SR_VALUE = 1'b0;
    defparam \T1/u0/R[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \T1/u0/R[5]~FF  (.D(\T1/u0/n3042 ), .CE(\~ceg_net693 ), .CLK(\n163~O ), 
           .SR(sw1_reset_n), .Q(\T1/u0/R[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T80.vhd(696)
    defparam \T1/u0/R[5]~FF .CLK_POLARITY = 1'b1;
    defparam \T1/u0/R[5]~FF .CE_POLARITY = 1'b1;
    defparam \T1/u0/R[5]~FF .SR_POLARITY = 1'b0;
    defparam \T1/u0/R[5]~FF .D_POLARITY = 1'b1;
    defparam \T1/u0/R[5]~FF .SR_SYNC = 1'b0;
    defparam \T1/u0/R[5]~FF .SR_VALUE = 1'b0;
    defparam \T1/u0/R[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \T1/u0/R[6]~FF  (.D(\T1/u0/n3047 ), .CE(\~ceg_net693 ), .CLK(\n163~O ), 
           .SR(sw1_reset_n), .Q(\T1/u0/R[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T80.vhd(696)
    defparam \T1/u0/R[6]~FF .CLK_POLARITY = 1'b1;
    defparam \T1/u0/R[6]~FF .CE_POLARITY = 1'b1;
    defparam \T1/u0/R[6]~FF .SR_POLARITY = 1'b0;
    defparam \T1/u0/R[6]~FF .D_POLARITY = 1'b1;
    defparam \T1/u0/R[6]~FF .SR_SYNC = 1'b0;
    defparam \T1/u0/R[6]~FF .SR_VALUE = 1'b0;
    defparam \T1/u0/R[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \T1/MCycle[1]~FF  (.D(\T1/u0/n2455 ), .CE(\T1/u0/equal_5/n5 ), 
           .CLK(\n163~O ), .SR(sw1_reset_n), .Q(\T1/MCycle[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T80.vhd(1060)
    defparam \T1/MCycle[1]~FF .CLK_POLARITY = 1'b1;
    defparam \T1/MCycle[1]~FF .CE_POLARITY = 1'b0;
    defparam \T1/MCycle[1]~FF .SR_POLARITY = 1'b0;
    defparam \T1/MCycle[1]~FF .D_POLARITY = 1'b1;
    defparam \T1/MCycle[1]~FF .SR_SYNC = 1'b0;
    defparam \T1/MCycle[1]~FF .SR_VALUE = 1'b0;
    defparam \T1/MCycle[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \T1/MCycle[2]~FF  (.D(\T1/u0/n2454 ), .CE(\T1/u0/equal_5/n5 ), 
           .CLK(\n163~O ), .SR(sw1_reset_n), .Q(\T1/MCycle[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T80.vhd(1060)
    defparam \T1/MCycle[2]~FF .CLK_POLARITY = 1'b1;
    defparam \T1/MCycle[2]~FF .CE_POLARITY = 1'b0;
    defparam \T1/MCycle[2]~FF .SR_POLARITY = 1'b0;
    defparam \T1/MCycle[2]~FF .D_POLARITY = 1'b1;
    defparam \T1/MCycle[2]~FF .SR_SYNC = 1'b0;
    defparam \T1/MCycle[2]~FF .SR_VALUE = 1'b0;
    defparam \T1/MCycle[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \T1/TState[1]~FF  (.D(\T1/u0/n3421 ), .CE(\T1/u0/n2411 ), .CLK(\n163~O ), 
           .SR(sw1_reset_n), .Q(\T1/TState[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T80.vhd(1060)
    defparam \T1/TState[1]~FF .CLK_POLARITY = 1'b1;
    defparam \T1/TState[1]~FF .CE_POLARITY = 1'b0;
    defparam \T1/TState[1]~FF .SR_POLARITY = 1'b0;
    defparam \T1/TState[1]~FF .D_POLARITY = 1'b1;
    defparam \T1/TState[1]~FF .SR_SYNC = 1'b0;
    defparam \T1/TState[1]~FF .SR_VALUE = 1'b0;
    defparam \T1/TState[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \T1/TState[2]~FF  (.D(\T1/u0/n2515 ), .CE(\T1/u0/n2411 ), .CLK(\n163~O ), 
           .SR(sw1_reset_n), .Q(\T1/TState[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T80.vhd(1060)
    defparam \T1/TState[2]~FF .CLK_POLARITY = 1'b1;
    defparam \T1/TState[2]~FF .CE_POLARITY = 1'b0;
    defparam \T1/TState[2]~FF .SR_POLARITY = 1'b0;
    defparam \T1/TState[2]~FF .D_POLARITY = 1'b1;
    defparam \T1/TState[2]~FF .SR_SYNC = 1'b0;
    defparam \T1/TState[2]~FF .SR_VALUE = 1'b0;
    defparam \T1/TState[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \T1/u0/PC[1]~FF  (.D(\T1/u0/n1138 ), .CE(ceg_net692), .CLK(\n163~O ), 
           .SR(sw1_reset_n), .Q(\T1/u0/PC[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T80.vhd(696)
    defparam \T1/u0/PC[1]~FF .CLK_POLARITY = 1'b1;
    defparam \T1/u0/PC[1]~FF .CE_POLARITY = 1'b0;
    defparam \T1/u0/PC[1]~FF .SR_POLARITY = 1'b0;
    defparam \T1/u0/PC[1]~FF .D_POLARITY = 1'b1;
    defparam \T1/u0/PC[1]~FF .SR_SYNC = 1'b0;
    defparam \T1/u0/PC[1]~FF .SR_VALUE = 1'b0;
    defparam \T1/u0/PC[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \T1/u0/PC[2]~FF  (.D(\T1/u0/n1137 ), .CE(ceg_net692), .CLK(\n163~O ), 
           .SR(sw1_reset_n), .Q(\T1/u0/PC[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T80.vhd(696)
    defparam \T1/u0/PC[2]~FF .CLK_POLARITY = 1'b1;
    defparam \T1/u0/PC[2]~FF .CE_POLARITY = 1'b0;
    defparam \T1/u0/PC[2]~FF .SR_POLARITY = 1'b0;
    defparam \T1/u0/PC[2]~FF .D_POLARITY = 1'b1;
    defparam \T1/u0/PC[2]~FF .SR_SYNC = 1'b0;
    defparam \T1/u0/PC[2]~FF .SR_VALUE = 1'b0;
    defparam \T1/u0/PC[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \T1/u0/PC[3]~FF  (.D(\T1/u0/n1136 ), .CE(ceg_net692), .CLK(\n163~O ), 
           .SR(sw1_reset_n), .Q(\T1/u0/PC[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T80.vhd(696)
    defparam \T1/u0/PC[3]~FF .CLK_POLARITY = 1'b1;
    defparam \T1/u0/PC[3]~FF .CE_POLARITY = 1'b0;
    defparam \T1/u0/PC[3]~FF .SR_POLARITY = 1'b0;
    defparam \T1/u0/PC[3]~FF .D_POLARITY = 1'b1;
    defparam \T1/u0/PC[3]~FF .SR_SYNC = 1'b0;
    defparam \T1/u0/PC[3]~FF .SR_VALUE = 1'b0;
    defparam \T1/u0/PC[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \T1/u0/PC[4]~FF  (.D(\T1/u0/n1135 ), .CE(ceg_net692), .CLK(\n163~O ), 
           .SR(sw1_reset_n), .Q(\T1/u0/PC[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T80.vhd(696)
    defparam \T1/u0/PC[4]~FF .CLK_POLARITY = 1'b1;
    defparam \T1/u0/PC[4]~FF .CE_POLARITY = 1'b0;
    defparam \T1/u0/PC[4]~FF .SR_POLARITY = 1'b0;
    defparam \T1/u0/PC[4]~FF .D_POLARITY = 1'b1;
    defparam \T1/u0/PC[4]~FF .SR_SYNC = 1'b0;
    defparam \T1/u0/PC[4]~FF .SR_VALUE = 1'b0;
    defparam \T1/u0/PC[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \T1/u0/PC[5]~FF  (.D(\T1/u0/n1134 ), .CE(ceg_net692), .CLK(\n163~O ), 
           .SR(sw1_reset_n), .Q(\T1/u0/PC[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T80.vhd(696)
    defparam \T1/u0/PC[5]~FF .CLK_POLARITY = 1'b1;
    defparam \T1/u0/PC[5]~FF .CE_POLARITY = 1'b0;
    defparam \T1/u0/PC[5]~FF .SR_POLARITY = 1'b0;
    defparam \T1/u0/PC[5]~FF .D_POLARITY = 1'b1;
    defparam \T1/u0/PC[5]~FF .SR_SYNC = 1'b0;
    defparam \T1/u0/PC[5]~FF .SR_VALUE = 1'b0;
    defparam \T1/u0/PC[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \T1/u0/PC[6]~FF  (.D(\T1/u0/n1133 ), .CE(ceg_net692), .CLK(\n163~O ), 
           .SR(sw1_reset_n), .Q(\T1/u0/PC[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T80.vhd(696)
    defparam \T1/u0/PC[6]~FF .CLK_POLARITY = 1'b1;
    defparam \T1/u0/PC[6]~FF .CE_POLARITY = 1'b0;
    defparam \T1/u0/PC[6]~FF .SR_POLARITY = 1'b0;
    defparam \T1/u0/PC[6]~FF .D_POLARITY = 1'b1;
    defparam \T1/u0/PC[6]~FF .SR_SYNC = 1'b0;
    defparam \T1/u0/PC[6]~FF .SR_VALUE = 1'b0;
    defparam \T1/u0/PC[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \T1/u0/PC[7]~FF  (.D(\T1/u0/n1132 ), .CE(ceg_net692), .CLK(\n163~O ), 
           .SR(sw1_reset_n), .Q(\T1/u0/PC[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T80.vhd(696)
    defparam \T1/u0/PC[7]~FF .CLK_POLARITY = 1'b1;
    defparam \T1/u0/PC[7]~FF .CE_POLARITY = 1'b0;
    defparam \T1/u0/PC[7]~FF .SR_POLARITY = 1'b0;
    defparam \T1/u0/PC[7]~FF .D_POLARITY = 1'b1;
    defparam \T1/u0/PC[7]~FF .SR_SYNC = 1'b0;
    defparam \T1/u0/PC[7]~FF .SR_VALUE = 1'b0;
    defparam \T1/u0/PC[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \T1/u0/PC[8]~FF  (.D(\T1/u0/n1131 ), .CE(ceg_net692), .CLK(\n163~O ), 
           .SR(sw1_reset_n), .Q(\T1/u0/PC[8] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T80.vhd(696)
    defparam \T1/u0/PC[8]~FF .CLK_POLARITY = 1'b1;
    defparam \T1/u0/PC[8]~FF .CE_POLARITY = 1'b0;
    defparam \T1/u0/PC[8]~FF .SR_POLARITY = 1'b0;
    defparam \T1/u0/PC[8]~FF .D_POLARITY = 1'b1;
    defparam \T1/u0/PC[8]~FF .SR_SYNC = 1'b0;
    defparam \T1/u0/PC[8]~FF .SR_VALUE = 1'b0;
    defparam \T1/u0/PC[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \T1/u0/PC[9]~FF  (.D(\T1/u0/n1130 ), .CE(ceg_net692), .CLK(\n163~O ), 
           .SR(sw1_reset_n), .Q(\T1/u0/PC[9] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T80.vhd(696)
    defparam \T1/u0/PC[9]~FF .CLK_POLARITY = 1'b1;
    defparam \T1/u0/PC[9]~FF .CE_POLARITY = 1'b0;
    defparam \T1/u0/PC[9]~FF .SR_POLARITY = 1'b0;
    defparam \T1/u0/PC[9]~FF .D_POLARITY = 1'b1;
    defparam \T1/u0/PC[9]~FF .SR_SYNC = 1'b0;
    defparam \T1/u0/PC[9]~FF .SR_VALUE = 1'b0;
    defparam \T1/u0/PC[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \T1/u0/PC[10]~FF  (.D(\T1/u0/n1129 ), .CE(ceg_net692), .CLK(\n163~O ), 
           .SR(sw1_reset_n), .Q(\T1/u0/PC[10] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T80.vhd(696)
    defparam \T1/u0/PC[10]~FF .CLK_POLARITY = 1'b1;
    defparam \T1/u0/PC[10]~FF .CE_POLARITY = 1'b0;
    defparam \T1/u0/PC[10]~FF .SR_POLARITY = 1'b0;
    defparam \T1/u0/PC[10]~FF .D_POLARITY = 1'b1;
    defparam \T1/u0/PC[10]~FF .SR_SYNC = 1'b0;
    defparam \T1/u0/PC[10]~FF .SR_VALUE = 1'b0;
    defparam \T1/u0/PC[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \T1/u0/PC[11]~FF  (.D(\T1/u0/n1128 ), .CE(ceg_net692), .CLK(\n163~O ), 
           .SR(sw1_reset_n), .Q(\T1/u0/PC[11] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T80.vhd(696)
    defparam \T1/u0/PC[11]~FF .CLK_POLARITY = 1'b1;
    defparam \T1/u0/PC[11]~FF .CE_POLARITY = 1'b0;
    defparam \T1/u0/PC[11]~FF .SR_POLARITY = 1'b0;
    defparam \T1/u0/PC[11]~FF .D_POLARITY = 1'b1;
    defparam \T1/u0/PC[11]~FF .SR_SYNC = 1'b0;
    defparam \T1/u0/PC[11]~FF .SR_VALUE = 1'b0;
    defparam \T1/u0/PC[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \T1/u0/PC[12]~FF  (.D(\T1/u0/n1127 ), .CE(ceg_net692), .CLK(\n163~O ), 
           .SR(sw1_reset_n), .Q(\T1/u0/PC[12] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T80.vhd(696)
    defparam \T1/u0/PC[12]~FF .CLK_POLARITY = 1'b1;
    defparam \T1/u0/PC[12]~FF .CE_POLARITY = 1'b0;
    defparam \T1/u0/PC[12]~FF .SR_POLARITY = 1'b0;
    defparam \T1/u0/PC[12]~FF .D_POLARITY = 1'b1;
    defparam \T1/u0/PC[12]~FF .SR_SYNC = 1'b0;
    defparam \T1/u0/PC[12]~FF .SR_VALUE = 1'b0;
    defparam \T1/u0/PC[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \T1/u0/PC[13]~FF  (.D(\T1/u0/n1126 ), .CE(ceg_net692), .CLK(\n163~O ), 
           .SR(sw1_reset_n), .Q(\T1/u0/PC[13] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T80.vhd(696)
    defparam \T1/u0/PC[13]~FF .CLK_POLARITY = 1'b1;
    defparam \T1/u0/PC[13]~FF .CE_POLARITY = 1'b0;
    defparam \T1/u0/PC[13]~FF .SR_POLARITY = 1'b0;
    defparam \T1/u0/PC[13]~FF .D_POLARITY = 1'b1;
    defparam \T1/u0/PC[13]~FF .SR_SYNC = 1'b0;
    defparam \T1/u0/PC[13]~FF .SR_VALUE = 1'b0;
    defparam \T1/u0/PC[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \T1/u0/PC[14]~FF  (.D(\T1/u0/n1125 ), .CE(ceg_net692), .CLK(\n163~O ), 
           .SR(sw1_reset_n), .Q(\T1/u0/PC[14] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T80.vhd(696)
    defparam \T1/u0/PC[14]~FF .CLK_POLARITY = 1'b1;
    defparam \T1/u0/PC[14]~FF .CE_POLARITY = 1'b0;
    defparam \T1/u0/PC[14]~FF .SR_POLARITY = 1'b0;
    defparam \T1/u0/PC[14]~FF .D_POLARITY = 1'b1;
    defparam \T1/u0/PC[14]~FF .SR_SYNC = 1'b0;
    defparam \T1/u0/PC[14]~FF .SR_VALUE = 1'b0;
    defparam \T1/u0/PC[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \T1/u0/PC[15]~FF  (.D(\T1/u0/n1124 ), .CE(ceg_net692), .CLK(\n163~O ), 
           .SR(sw1_reset_n), .Q(\T1/u0/PC[15] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T80.vhd(696)
    defparam \T1/u0/PC[15]~FF .CLK_POLARITY = 1'b1;
    defparam \T1/u0/PC[15]~FF .CE_POLARITY = 1'b0;
    defparam \T1/u0/PC[15]~FF .SR_POLARITY = 1'b0;
    defparam \T1/u0/PC[15]~FF .D_POLARITY = 1'b1;
    defparam \T1/u0/PC[15]~FF .SR_SYNC = 1'b0;
    defparam \T1/u0/PC[15]~FF .SR_VALUE = 1'b0;
    defparam \T1/u0/PC[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \counter[1]~FF  (.D(n132), .CE(1'b1), .CLK(\pll0_2MHz~O ), 
           .SR(sw1_reset_n), .Q(\counter[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2_top.v(166)
    defparam \counter[1]~FF .CLK_POLARITY = 1'b1;
    defparam \counter[1]~FF .CE_POLARITY = 1'b1;
    defparam \counter[1]~FF .SR_POLARITY = 1'b0;
    defparam \counter[1]~FF .D_POLARITY = 1'b1;
    defparam \counter[1]~FF .SR_SYNC = 1'b1;
    defparam \counter[1]~FF .SR_VALUE = 1'b0;
    defparam \counter[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \counter[2]~FF  (.D(n130), .CE(1'b1), .CLK(\pll0_2MHz~O ), 
           .SR(sw1_reset_n), .Q(\counter[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2_top.v(166)
    defparam \counter[2]~FF .CLK_POLARITY = 1'b1;
    defparam \counter[2]~FF .CE_POLARITY = 1'b1;
    defparam \counter[2]~FF .SR_POLARITY = 1'b0;
    defparam \counter[2]~FF .D_POLARITY = 1'b1;
    defparam \counter[2]~FF .SR_SYNC = 1'b1;
    defparam \counter[2]~FF .SR_VALUE = 1'b0;
    defparam \counter[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \counter[3]~FF  (.D(n128), .CE(1'b1), .CLK(\pll0_2MHz~O ), 
           .SR(sw1_reset_n), .Q(\counter[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2_top.v(166)
    defparam \counter[3]~FF .CLK_POLARITY = 1'b1;
    defparam \counter[3]~FF .CE_POLARITY = 1'b1;
    defparam \counter[3]~FF .SR_POLARITY = 1'b0;
    defparam \counter[3]~FF .D_POLARITY = 1'b1;
    defparam \counter[3]~FF .SR_SYNC = 1'b1;
    defparam \counter[3]~FF .SR_VALUE = 1'b0;
    defparam \counter[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \counter[4]~FF  (.D(n126), .CE(1'b1), .CLK(\pll0_2MHz~O ), 
           .SR(sw1_reset_n), .Q(\counter[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2_top.v(166)
    defparam \counter[4]~FF .CLK_POLARITY = 1'b1;
    defparam \counter[4]~FF .CE_POLARITY = 1'b1;
    defparam \counter[4]~FF .SR_POLARITY = 1'b0;
    defparam \counter[4]~FF .D_POLARITY = 1'b1;
    defparam \counter[4]~FF .SR_SYNC = 1'b1;
    defparam \counter[4]~FF .SR_VALUE = 1'b0;
    defparam \counter[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \counter[5]~FF  (.D(n124), .CE(1'b1), .CLK(\pll0_2MHz~O ), 
           .SR(sw1_reset_n), .Q(\counter[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2_top.v(166)
    defparam \counter[5]~FF .CLK_POLARITY = 1'b1;
    defparam \counter[5]~FF .CE_POLARITY = 1'b1;
    defparam \counter[5]~FF .SR_POLARITY = 1'b0;
    defparam \counter[5]~FF .D_POLARITY = 1'b1;
    defparam \counter[5]~FF .SR_SYNC = 1'b1;
    defparam \counter[5]~FF .SR_VALUE = 1'b0;
    defparam \counter[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \counter[6]~FF  (.D(n122), .CE(1'b1), .CLK(\pll0_2MHz~O ), 
           .SR(sw1_reset_n), .Q(\counter[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2_top.v(166)
    defparam \counter[6]~FF .CLK_POLARITY = 1'b1;
    defparam \counter[6]~FF .CE_POLARITY = 1'b1;
    defparam \counter[6]~FF .SR_POLARITY = 1'b0;
    defparam \counter[6]~FF .D_POLARITY = 1'b1;
    defparam \counter[6]~FF .SR_SYNC = 1'b1;
    defparam \counter[6]~FF .SR_VALUE = 1'b0;
    defparam \counter[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \counter[7]~FF  (.D(n120), .CE(1'b1), .CLK(\pll0_2MHz~O ), 
           .SR(sw1_reset_n), .Q(\counter[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2_top.v(166)
    defparam \counter[7]~FF .CLK_POLARITY = 1'b1;
    defparam \counter[7]~FF .CE_POLARITY = 1'b1;
    defparam \counter[7]~FF .SR_POLARITY = 1'b0;
    defparam \counter[7]~FF .D_POLARITY = 1'b1;
    defparam \counter[7]~FF .SR_SYNC = 1'b1;
    defparam \counter[7]~FF .SR_VALUE = 1'b0;
    defparam \counter[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \counter[8]~FF  (.D(n118), .CE(1'b1), .CLK(\pll0_2MHz~O ), 
           .SR(sw1_reset_n), .Q(\counter[8] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2_top.v(166)
    defparam \counter[8]~FF .CLK_POLARITY = 1'b1;
    defparam \counter[8]~FF .CE_POLARITY = 1'b1;
    defparam \counter[8]~FF .SR_POLARITY = 1'b0;
    defparam \counter[8]~FF .D_POLARITY = 1'b1;
    defparam \counter[8]~FF .SR_SYNC = 1'b1;
    defparam \counter[8]~FF .SR_VALUE = 1'b0;
    defparam \counter[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \counter[9]~FF  (.D(n116), .CE(1'b1), .CLK(\pll0_2MHz~O ), 
           .SR(sw1_reset_n), .Q(\counter[9] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2_top.v(166)
    defparam \counter[9]~FF .CLK_POLARITY = 1'b1;
    defparam \counter[9]~FF .CE_POLARITY = 1'b1;
    defparam \counter[9]~FF .SR_POLARITY = 1'b0;
    defparam \counter[9]~FF .D_POLARITY = 1'b1;
    defparam \counter[9]~FF .SR_SYNC = 1'b1;
    defparam \counter[9]~FF .SR_VALUE = 1'b0;
    defparam \counter[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \counter[10]~FF  (.D(n114), .CE(1'b1), .CLK(\pll0_2MHz~O ), 
           .SR(sw1_reset_n), .Q(\counter[10] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2_top.v(166)
    defparam \counter[10]~FF .CLK_POLARITY = 1'b1;
    defparam \counter[10]~FF .CE_POLARITY = 1'b1;
    defparam \counter[10]~FF .SR_POLARITY = 1'b0;
    defparam \counter[10]~FF .D_POLARITY = 1'b1;
    defparam \counter[10]~FF .SR_SYNC = 1'b1;
    defparam \counter[10]~FF .SR_VALUE = 1'b0;
    defparam \counter[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \counter[11]~FF  (.D(n112), .CE(1'b1), .CLK(\pll0_2MHz~O ), 
           .SR(sw1_reset_n), .Q(\counter[11] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2_top.v(166)
    defparam \counter[11]~FF .CLK_POLARITY = 1'b1;
    defparam \counter[11]~FF .CE_POLARITY = 1'b1;
    defparam \counter[11]~FF .SR_POLARITY = 1'b0;
    defparam \counter[11]~FF .D_POLARITY = 1'b1;
    defparam \counter[11]~FF .SR_SYNC = 1'b1;
    defparam \counter[11]~FF .SR_VALUE = 1'b0;
    defparam \counter[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \s100_PHI~FF  (.D(n110), .CE(1'b1), .CLK(\pll0_2MHz~O ), .SR(sw1_reset_n), 
           .Q(s100_pSYNC)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2_top.v(166)
    defparam \s100_PHI~FF .CLK_POLARITY = 1'b1;
    defparam \s100_PHI~FF .CE_POLARITY = 1'b1;
    defparam \s100_PHI~FF .SR_POLARITY = 1'b0;
    defparam \s100_PHI~FF .D_POLARITY = 1'b1;
    defparam \s100_PHI~FF .SR_SYNC = 1'b1;
    defparam \s100_PHI~FF .SR_VALUE = 1'b0;
    defparam \s100_PHI~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \counter[13]~FF  (.D(n108), .CE(1'b1), .CLK(\pll0_2MHz~O ), 
           .SR(sw1_reset_n), .Q(\counter[13] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2_top.v(166)
    defparam \counter[13]~FF .CLK_POLARITY = 1'b1;
    defparam \counter[13]~FF .CE_POLARITY = 1'b1;
    defparam \counter[13]~FF .SR_POLARITY = 1'b0;
    defparam \counter[13]~FF .D_POLARITY = 1'b1;
    defparam \counter[13]~FF .SR_SYNC = 1'b1;
    defparam \counter[13]~FF .SR_VALUE = 1'b0;
    defparam \counter[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \counter[14]~FF  (.D(n106), .CE(1'b1), .CLK(\pll0_2MHz~O ), 
           .SR(sw1_reset_n), .Q(\counter[14] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2_top.v(166)
    defparam \counter[14]~FF .CLK_POLARITY = 1'b1;
    defparam \counter[14]~FF .CE_POLARITY = 1'b1;
    defparam \counter[14]~FF .SR_POLARITY = 1'b0;
    defparam \counter[14]~FF .D_POLARITY = 1'b1;
    defparam \counter[14]~FF .SR_SYNC = 1'b1;
    defparam \counter[14]~FF .SR_VALUE = 1'b0;
    defparam \counter[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \counter[15]~FF  (.D(n104), .CE(1'b1), .CLK(\pll0_2MHz~O ), 
           .SR(sw1_reset_n), .Q(\counter[15] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2_top.v(166)
    defparam \counter[15]~FF .CLK_POLARITY = 1'b1;
    defparam \counter[15]~FF .CE_POLARITY = 1'b1;
    defparam \counter[15]~FF .SR_POLARITY = 1'b0;
    defparam \counter[15]~FF .D_POLARITY = 1'b1;
    defparam \counter[15]~FF .SR_SYNC = 1'b1;
    defparam \counter[15]~FF .SR_VALUE = 1'b0;
    defparam \counter[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \S100adr16_19[0]~FF  (.D(n102), .CE(1'b1), .CLK(\pll0_2MHz~O ), 
           .SR(sw1_reset_n), .Q(S100adr16_19[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2_top.v(166)
    defparam \S100adr16_19[0]~FF .CLK_POLARITY = 1'b1;
    defparam \S100adr16_19[0]~FF .CE_POLARITY = 1'b1;
    defparam \S100adr16_19[0]~FF .SR_POLARITY = 1'b0;
    defparam \S100adr16_19[0]~FF .D_POLARITY = 1'b1;
    defparam \S100adr16_19[0]~FF .SR_SYNC = 1'b1;
    defparam \S100adr16_19[0]~FF .SR_VALUE = 1'b0;
    defparam \S100adr16_19[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \S100adr16_19[1]~FF  (.D(n100), .CE(1'b1), .CLK(\pll0_2MHz~O ), 
           .SR(sw1_reset_n), .Q(S100adr16_19[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2_top.v(166)
    defparam \S100adr16_19[1]~FF .CLK_POLARITY = 1'b1;
    defparam \S100adr16_19[1]~FF .CE_POLARITY = 1'b1;
    defparam \S100adr16_19[1]~FF .SR_POLARITY = 1'b0;
    defparam \S100adr16_19[1]~FF .D_POLARITY = 1'b1;
    defparam \S100adr16_19[1]~FF .SR_SYNC = 1'b1;
    defparam \S100adr16_19[1]~FF .SR_VALUE = 1'b0;
    defparam \S100adr16_19[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \S100adr16_19[2]~FF  (.D(n98), .CE(1'b1), .CLK(\pll0_2MHz~O ), 
           .SR(sw1_reset_n), .Q(S100adr16_19[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2_top.v(166)
    defparam \S100adr16_19[2]~FF .CLK_POLARITY = 1'b1;
    defparam \S100adr16_19[2]~FF .CE_POLARITY = 1'b1;
    defparam \S100adr16_19[2]~FF .SR_POLARITY = 1'b0;
    defparam \S100adr16_19[2]~FF .D_POLARITY = 1'b1;
    defparam \S100adr16_19[2]~FF .SR_SYNC = 1'b1;
    defparam \S100adr16_19[2]~FF .SR_VALUE = 1'b0;
    defparam \S100adr16_19[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \S100adr16_19[3]~FF  (.D(n96), .CE(1'b1), .CLK(\pll0_2MHz~O ), 
           .SR(sw1_reset_n), .Q(S100adr16_19[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2_top.v(166)
    defparam \S100adr16_19[3]~FF .CLK_POLARITY = 1'b1;
    defparam \S100adr16_19[3]~FF .CE_POLARITY = 1'b1;
    defparam \S100adr16_19[3]~FF .SR_POLARITY = 1'b0;
    defparam \S100adr16_19[3]~FF .D_POLARITY = 1'b1;
    defparam \S100adr16_19[3]~FF .SR_SYNC = 1'b1;
    defparam \S100adr16_19[3]~FF .SR_VALUE = 1'b0;
    defparam \S100adr16_19[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \seg7_dp~FF  (.D(n94), .CE(1'b1), .CLK(\pll0_2MHz~O ), .SR(sw1_reset_n), 
           .Q(seg7_dp)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2_top.v(166)
    defparam \seg7_dp~FF .CLK_POLARITY = 1'b1;
    defparam \seg7_dp~FF .CE_POLARITY = 1'b1;
    defparam \seg7_dp~FF .SR_POLARITY = 1'b0;
    defparam \seg7_dp~FF .D_POLARITY = 1'b1;
    defparam \seg7_dp~FF .SR_SYNC = 1'b1;
    defparam \seg7_dp~FF .SR_VALUE = 1'b0;
    defparam \seg7_dp~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \counter[21]~FF  (.D(n92), .CE(1'b1), .CLK(\pll0_2MHz~O ), 
           .SR(sw1_reset_n), .Q(\counter[21] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2_top.v(166)
    defparam \counter[21]~FF .CLK_POLARITY = 1'b1;
    defparam \counter[21]~FF .CE_POLARITY = 1'b1;
    defparam \counter[21]~FF .SR_POLARITY = 1'b0;
    defparam \counter[21]~FF .D_POLARITY = 1'b1;
    defparam \counter[21]~FF .SR_SYNC = 1'b1;
    defparam \counter[21]~FF .SR_VALUE = 1'b0;
    defparam \counter[21]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \counter[22]~FF  (.D(n90), .CE(1'b1), .CLK(\pll0_2MHz~O ), 
           .SR(sw1_reset_n), .Q(\counter[22] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2_top.v(166)
    defparam \counter[22]~FF .CLK_POLARITY = 1'b1;
    defparam \counter[22]~FF .CE_POLARITY = 1'b1;
    defparam \counter[22]~FF .SR_POLARITY = 1'b0;
    defparam \counter[22]~FF .D_POLARITY = 1'b1;
    defparam \counter[22]~FF .SR_SYNC = 1'b1;
    defparam \counter[22]~FF .SR_VALUE = 1'b0;
    defparam \counter[22]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \counter[23]~FF  (.D(n88), .CE(1'b1), .CLK(\pll0_2MHz~O ), 
           .SR(sw1_reset_n), .Q(\counter[23] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2_top.v(166)
    defparam \counter[23]~FF .CLK_POLARITY = 1'b1;
    defparam \counter[23]~FF .CE_POLARITY = 1'b1;
    defparam \counter[23]~FF .SR_POLARITY = 1'b0;
    defparam \counter[23]~FF .D_POLARITY = 1'b1;
    defparam \counter[23]~FF .SR_SYNC = 1'b1;
    defparam \counter[23]~FF .SR_VALUE = 1'b0;
    defparam \counter[23]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \counter[24]~FF  (.D(n86), .CE(1'b1), .CLK(\pll0_2MHz~O ), 
           .SR(sw1_reset_n), .Q(\counter[24] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2_top.v(166)
    defparam \counter[24]~FF .CLK_POLARITY = 1'b1;
    defparam \counter[24]~FF .CE_POLARITY = 1'b1;
    defparam \counter[24]~FF .SR_POLARITY = 1'b0;
    defparam \counter[24]~FF .D_POLARITY = 1'b1;
    defparam \counter[24]~FF .SR_SYNC = 1'b1;
    defparam \counter[24]~FF .SR_VALUE = 1'b0;
    defparam \counter[24]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \counter[25]~FF  (.D(n84), .CE(1'b1), .CLK(\pll0_2MHz~O ), 
           .SR(sw1_reset_n), .Q(\counter[25] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2_top.v(166)
    defparam \counter[25]~FF .CLK_POLARITY = 1'b1;
    defparam \counter[25]~FF .CE_POLARITY = 1'b1;
    defparam \counter[25]~FF .SR_POLARITY = 1'b0;
    defparam \counter[25]~FF .D_POLARITY = 1'b1;
    defparam \counter[25]~FF .SR_SYNC = 1'b1;
    defparam \counter[25]~FF .SR_VALUE = 1'b0;
    defparam \counter[25]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \counter[26]~FF  (.D(n83), .CE(1'b1), .CLK(\pll0_2MHz~O ), 
           .SR(sw1_reset_n), .Q(\counter[26] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2_top.v(166)
    defparam \counter[26]~FF .CLK_POLARITY = 1'b1;
    defparam \counter[26]~FF .CE_POLARITY = 1'b1;
    defparam \counter[26]~FF .SR_POLARITY = 1'b0;
    defparam \counter[26]~FF .D_POLARITY = 1'b1;
    defparam \counter[26]~FF .SR_SYNC = 1'b1;
    defparam \counter[26]~FF .SR_VALUE = 1'b0;
    defparam \counter[26]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_ADD \add_40/i27  (.I0(\counter[26] ), .I1(1'b0), .CI(n85), .O(n83)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2_top.v(165)
    defparam \add_40/i27 .I0_POLARITY = 1'b1;
    defparam \add_40/i27 .I1_POLARITY = 1'b1;
    EFX_ADD \add_40/i26  (.I0(\counter[25] ), .I1(1'b0), .CI(n87), .O(n84), 
            .CO(n85)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2_top.v(165)
    defparam \add_40/i26 .I0_POLARITY = 1'b1;
    defparam \add_40/i26 .I1_POLARITY = 1'b1;
    EFX_ADD \add_40/i25  (.I0(\counter[24] ), .I1(1'b0), .CI(n89), .O(n86), 
            .CO(n87)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2_top.v(165)
    defparam \add_40/i25 .I0_POLARITY = 1'b1;
    defparam \add_40/i25 .I1_POLARITY = 1'b1;
    EFX_ADD \add_40/i24  (.I0(\counter[23] ), .I1(1'b0), .CI(n91), .O(n88), 
            .CO(n89)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2_top.v(165)
    defparam \add_40/i24 .I0_POLARITY = 1'b1;
    defparam \add_40/i24 .I1_POLARITY = 1'b1;
    EFX_ADD \add_40/i23  (.I0(\counter[22] ), .I1(1'b0), .CI(n93), .O(n90), 
            .CO(n91)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2_top.v(165)
    defparam \add_40/i23 .I0_POLARITY = 1'b1;
    defparam \add_40/i23 .I1_POLARITY = 1'b1;
    EFX_ADD \add_40/i22  (.I0(\counter[21] ), .I1(1'b0), .CI(n95), .O(n92), 
            .CO(n93)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2_top.v(165)
    defparam \add_40/i22 .I0_POLARITY = 1'b1;
    defparam \add_40/i22 .I1_POLARITY = 1'b1;
    EFX_ADD \add_40/i21  (.I0(seg7_dp), .I1(1'b0), .CI(n97), .O(n94), 
            .CO(n95)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2_top.v(165)
    defparam \add_40/i21 .I0_POLARITY = 1'b1;
    defparam \add_40/i21 .I1_POLARITY = 1'b1;
    EFX_ADD \add_40/i20  (.I0(S100adr16_19[3]), .I1(1'b0), .CI(n99), .O(n96), 
            .CO(n97)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2_top.v(165)
    defparam \add_40/i20 .I0_POLARITY = 1'b1;
    defparam \add_40/i20 .I1_POLARITY = 1'b1;
    EFX_ADD \add_40/i19  (.I0(S100adr16_19[2]), .I1(1'b0), .CI(n101), 
            .O(n98), .CO(n99)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2_top.v(165)
    defparam \add_40/i19 .I0_POLARITY = 1'b1;
    defparam \add_40/i19 .I1_POLARITY = 1'b1;
    EFX_ADD \add_40/i18  (.I0(S100adr16_19[1]), .I1(1'b0), .CI(n103), 
            .O(n100), .CO(n101)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2_top.v(165)
    defparam \add_40/i18 .I0_POLARITY = 1'b1;
    defparam \add_40/i18 .I1_POLARITY = 1'b1;
    EFX_ADD \add_40/i17  (.I0(S100adr16_19[0]), .I1(1'b0), .CI(n105), 
            .O(n102), .CO(n103)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2_top.v(165)
    defparam \add_40/i17 .I0_POLARITY = 1'b1;
    defparam \add_40/i17 .I1_POLARITY = 1'b1;
    EFX_ADD \add_40/i16  (.I0(\counter[15] ), .I1(1'b0), .CI(n107), .O(n104), 
            .CO(n105)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2_top.v(165)
    defparam \add_40/i16 .I0_POLARITY = 1'b1;
    defparam \add_40/i16 .I1_POLARITY = 1'b1;
    EFX_ADD \add_40/i15  (.I0(\counter[14] ), .I1(1'b0), .CI(n109), .O(n106), 
            .CO(n107)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2_top.v(165)
    defparam \add_40/i15 .I0_POLARITY = 1'b1;
    defparam \add_40/i15 .I1_POLARITY = 1'b1;
    EFX_ADD \add_40/i14  (.I0(\counter[13] ), .I1(1'b0), .CI(n111), .O(n108), 
            .CO(n109)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2_top.v(165)
    defparam \add_40/i14 .I0_POLARITY = 1'b1;
    defparam \add_40/i14 .I1_POLARITY = 1'b1;
    EFX_ADD \add_40/i13  (.I0(s100_pSYNC), .I1(1'b0), .CI(n113), .O(n110), 
            .CO(n111)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2_top.v(165)
    defparam \add_40/i13 .I0_POLARITY = 1'b1;
    defparam \add_40/i13 .I1_POLARITY = 1'b1;
    EFX_ADD \add_40/i12  (.I0(\counter[11] ), .I1(1'b0), .CI(n115), .O(n112), 
            .CO(n113)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2_top.v(165)
    defparam \add_40/i12 .I0_POLARITY = 1'b1;
    defparam \add_40/i12 .I1_POLARITY = 1'b1;
    EFX_ADD \add_40/i11  (.I0(\counter[10] ), .I1(1'b0), .CI(n117), .O(n114), 
            .CO(n115)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2_top.v(165)
    defparam \add_40/i11 .I0_POLARITY = 1'b1;
    defparam \add_40/i11 .I1_POLARITY = 1'b1;
    EFX_ADD \add_40/i10  (.I0(\counter[9] ), .I1(1'b0), .CI(n119), .O(n116), 
            .CO(n117)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2_top.v(165)
    defparam \add_40/i10 .I0_POLARITY = 1'b1;
    defparam \add_40/i10 .I1_POLARITY = 1'b1;
    EFX_ADD \add_40/i9  (.I0(\counter[8] ), .I1(1'b0), .CI(n121), .O(n118), 
            .CO(n119)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2_top.v(165)
    defparam \add_40/i9 .I0_POLARITY = 1'b1;
    defparam \add_40/i9 .I1_POLARITY = 1'b1;
    EFX_ADD \add_40/i8  (.I0(\counter[7] ), .I1(1'b0), .CI(n123), .O(n120), 
            .CO(n121)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2_top.v(165)
    defparam \add_40/i8 .I0_POLARITY = 1'b1;
    defparam \add_40/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \add_40/i7  (.I0(\counter[6] ), .I1(1'b0), .CI(n125), .O(n122), 
            .CO(n123)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2_top.v(165)
    defparam \add_40/i7 .I0_POLARITY = 1'b1;
    defparam \add_40/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \add_40/i6  (.I0(\counter[5] ), .I1(1'b0), .CI(n127), .O(n124), 
            .CO(n125)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2_top.v(165)
    defparam \add_40/i6 .I0_POLARITY = 1'b1;
    defparam \add_40/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \add_40/i5  (.I0(\counter[4] ), .I1(1'b0), .CI(n129), .O(n126), 
            .CO(n127)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2_top.v(165)
    defparam \add_40/i5 .I0_POLARITY = 1'b1;
    defparam \add_40/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \add_40/i4  (.I0(\counter[3] ), .I1(1'b0), .CI(n131), .O(n128), 
            .CO(n129)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2_top.v(165)
    defparam \add_40/i4 .I0_POLARITY = 1'b1;
    defparam \add_40/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \add_40/i3  (.I0(\counter[2] ), .I1(1'b0), .CI(n133), .O(n130), 
            .CO(n131)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2_top.v(165)
    defparam \add_40/i3 .I0_POLARITY = 1'b1;
    defparam \add_40/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \add_40/i2  (.I0(\counter[1] ), .I1(\counter[0] ), .CI(1'b0), 
            .O(n132), .CO(n133)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2_top.v(165)
    defparam \add_40/i2 .I0_POLARITY = 1'b1;
    defparam \add_40/i2 .I1_POLARITY = 1'b1;
    EFX_LUT4 LUT__458 (.I0(\T1/u0/PC[0] ), .I1(n304), .I2(\T1/u0/R[0] ), 
            .I3(n303), .O(\T1/u0/n1115 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf888 */ ;
    defparam LUT__458.LUTMASK = 16'hf888;
    EFX_LUT4 LUT__459 (.I0(\T1/TState[0] ), .I1(s100_rdy), .I2(s100_xrdy), 
            .I3(\T1/TState[1] ), .O(n305)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__459.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__460 (.I0(n303), .I1(n305), .O(\~ceg_net693 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__460.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__461 (.I0(\T1/MCycle[0] ), .I1(\T1/MCycle[1] ), .I2(\T1/MCycle[2] ), 
            .O(n306)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbdbd */ ;
    defparam LUT__461.LUTMASK = 16'hbdbd;
    EFX_LUT4 LUT__462 (.I0(\T1/TState[0] ), .I1(\T1/TState[1] ), .I2(n306), 
            .I3(\T1/TState[2] ), .O(\T1/u0/equal_5/n5 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfe7f */ ;
    defparam LUT__462.LUTMASK = 16'hfe7f;
    EFX_LUT4 LUT__463 (.I0(\~ceg_net693 ), .I1(\T1/u0/equal_5/n5 ), .O(ceg_net761)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__463.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__464 (.I0(\T1/u0/MCycles[0] ), .I1(\T1/MCycle[0] ), .I2(\T1/MCycle[1] ), 
            .I3(\T1/MCycle[2] ), .O(\T1/u0/n2456 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf33b */ ;
    defparam LUT__464.LUTMASK = 16'hf33b;
    EFX_LUT4 LUT__465 (.I0(\T1/TState[0] ), .I1(\T1/u0/equal_5/n5 ), .O(\T1/u0/n2517 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7777 */ ;
    defparam LUT__465.LUTMASK = 16'h7777;
    EFX_LUT4 LUT__466 (.I0(\T1/TState[0] ), .I1(\T1/TState[1] ), .O(n307)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__466.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__467 (.I0(s100_rdy), .I1(s100_xrdy), .I2(\T1/TState[2] ), 
            .I3(n307), .O(\T1/u0/n2411 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0700 */ ;
    defparam LUT__467.LUTMASK = 16'h0700;
    EFX_LUT4 LUT__468 (.I0(\T1/MCycle[1] ), .I1(\T1/MCycle[2] ), .I2(\T1/u0/MCycles[0] ), 
            .I3(\T1/MCycle[0] ), .O(n308)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1001 */ ;
    defparam LUT__468.LUTMASK = 16'h1001;
    EFX_LUT4 LUT__469 (.I0(\T1/TState[0] ), .I1(\T1/TState[1] ), .I2(\T1/TState[2] ), 
            .O(n309)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__469.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__470 (.I0(\T1/u0/equal_5/n5 ), .I1(n308), .I2(n309), 
            .O(\T1/u0/n3003 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf4f4 */ ;
    defparam LUT__470.LUTMASK = 16'hf4f4;
    EFX_LUT4 LUT__471 (.I0(n308), .I1(\T1/u0/equal_5/n5 ), .I2(\~ceg_net693 ), 
            .I3(n309), .O(ceg_net75)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h000d */ ;
    defparam LUT__471.LUTMASK = 16'h000d;
    EFX_LUT4 LUT__472 (.I0(\T1/MCycle[0] ), .I1(\T1/TState[2] ), .I2(\T1/MCycle[2] ), 
            .I3(\T1/MCycle[1] ), .O(n310)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__472.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__473 (.I0(n310), .I1(n305), .I2(n303), .O(n311)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0707 */ ;
    defparam LUT__473.LUTMASK = 16'h0707;
    EFX_LUT4 LUT__474 (.I0(\T1/u0/PC[0] ), .I1(n311), .O(\T1/u0/n1139 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;
    defparam LUT__474.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__475 (.I0(n305), .I1(n303), .O(ceg_net692)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__475.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__476 (.I0(\T1/u0/PC[1] ), .I1(n304), .I2(\T1/u0/R[1] ), 
            .I3(n303), .O(\T1/u0/n1114 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf888 */ ;
    defparam LUT__476.LUTMASK = 16'hf888;
    EFX_LUT4 LUT__477 (.I0(\T1/u0/PC[2] ), .I1(n304), .I2(\T1/u0/R[2] ), 
            .I3(n303), .O(\T1/u0/n1113 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf888 */ ;
    defparam LUT__477.LUTMASK = 16'hf888;
    EFX_LUT4 LUT__478 (.I0(\T1/u0/PC[3] ), .I1(n304), .I2(\T1/u0/R[3] ), 
            .I3(n303), .O(\T1/u0/n1112 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf888 */ ;
    defparam LUT__478.LUTMASK = 16'hf888;
    EFX_LUT4 LUT__479 (.I0(\T1/u0/PC[4] ), .I1(n304), .I2(\T1/u0/R[4] ), 
            .I3(n303), .O(\T1/u0/n1111 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf888 */ ;
    defparam LUT__479.LUTMASK = 16'hf888;
    EFX_LUT4 LUT__480 (.I0(\T1/u0/PC[5] ), .I1(n304), .I2(\T1/u0/R[5] ), 
            .I3(n303), .O(\T1/u0/n1110 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf888 */ ;
    defparam LUT__480.LUTMASK = 16'hf888;
    EFX_LUT4 LUT__481 (.I0(\T1/u0/PC[6] ), .I1(n304), .I2(\T1/u0/R[6] ), 
            .I3(n303), .O(\T1/u0/n1109 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf888 */ ;
    defparam LUT__481.LUTMASK = 16'hf888;
    EFX_LUT4 LUT__482 (.I0(\T1/u0/PC[7] ), .I1(n304), .O(\T1/u0/n1108 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__482.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__483 (.I0(\T1/u0/PC[8] ), .I1(n304), .O(\T1/u0/n1107 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__483.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__484 (.I0(\T1/u0/PC[9] ), .I1(n304), .O(\T1/u0/n1106 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__484.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__485 (.I0(\T1/u0/PC[10] ), .I1(n304), .O(\T1/u0/n1105 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__485.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__486 (.I0(\T1/u0/PC[11] ), .I1(n304), .O(\T1/u0/n1104 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__486.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__487 (.I0(\T1/u0/PC[12] ), .I1(n304), .O(\T1/u0/n1103 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__487.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__488 (.I0(\T1/u0/PC[13] ), .I1(n304), .O(\T1/u0/n1102 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__488.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__489 (.I0(\T1/u0/PC[14] ), .I1(n304), .O(\T1/u0/n1101 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__489.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__490 (.I0(\T1/u0/PC[15] ), .I1(n304), .O(\T1/u0/n1100 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__490.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__491 (.I0(\T1/u0/R[0] ), .I1(\T1/u0/R[1] ), .O(\T1/u0/n3022 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__491.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__492 (.I0(\T1/u0/R[0] ), .I1(\T1/u0/R[1] ), .I2(\T1/u0/R[2] ), 
            .O(\T1/u0/n3027 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__492.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__493 (.I0(\T1/u0/R[0] ), .I1(\T1/u0/R[1] ), .I2(\T1/u0/R[2] ), 
            .I3(\T1/u0/R[3] ), .O(\T1/u0/n3032 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;
    defparam LUT__493.LUTMASK = 16'h7f80;
    EFX_LUT4 LUT__494 (.I0(\T1/u0/R[0] ), .I1(\T1/u0/R[1] ), .I2(\T1/u0/R[2] ), 
            .I3(\T1/u0/R[3] ), .O(n312)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__494.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__495 (.I0(\T1/u0/R[4] ), .I1(n312), .O(\T1/u0/n3037 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__495.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__496 (.I0(\T1/u0/R[4] ), .I1(n312), .I2(\T1/u0/R[5] ), 
            .O(\T1/u0/n3042 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__496.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__497 (.I0(\T1/u0/R[4] ), .I1(\T1/u0/R[5] ), .I2(n312), 
            .I3(\T1/u0/R[6] ), .O(\T1/u0/n3047 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;
    defparam LUT__497.LUTMASK = 16'h7f80;
    EFX_LUT4 LUT__498 (.I0(\T1/u0/MCycles[0] ), .I1(\T1/MCycle[2] ), .I2(\T1/MCycle[0] ), 
            .I3(\T1/MCycle[1] ), .O(\T1/u0/n2455 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h03d0 */ ;
    defparam LUT__498.LUTMASK = 16'h03d0;
    EFX_LUT4 LUT__499 (.I0(\T1/MCycle[0] ), .I1(\T1/MCycle[2] ), .I2(\T1/MCycle[1] ), 
            .O(\T1/u0/n2454 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h2c2c */ ;
    defparam LUT__499.LUTMASK = 16'h2c2c;
    EFX_LUT4 LUT__500 (.I0(\T1/TState[0] ), .I1(\T1/TState[1] ), .O(\T1/u0/n3421 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__500.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__501 (.I0(n306), .I1(\T1/TState[0] ), .I2(\T1/TState[2] ), 
            .I3(\T1/TState[1] ), .O(\T1/u0/n2515 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h34e0 */ ;
    defparam LUT__501.LUTMASK = 16'h34e0;
    EFX_LUT4 LUT__502 (.I0(n311), .I1(\T1/u0/PC[0] ), .I2(\T1/u0/PC[1] ), 
            .O(\T1/u0/n1138 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;
    defparam LUT__502.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__503 (.I0(\T1/u0/PC[0] ), .I1(\T1/u0/PC[1] ), .O(n313)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__503.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__504 (.I0(n311), .I1(n313), .I2(\T1/u0/PC[2] ), .O(\T1/u0/n1137 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;
    defparam LUT__504.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__505 (.I0(n311), .I1(\T1/u0/PC[2] ), .I2(n313), .I3(\T1/u0/PC[3] ), 
            .O(\T1/u0/n1136 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbf40 */ ;
    defparam LUT__505.LUTMASK = 16'hbf40;
    EFX_LUT4 LUT__506 (.I0(\T1/u0/PC[0] ), .I1(\T1/u0/PC[1] ), .I2(\T1/u0/PC[2] ), 
            .I3(\T1/u0/PC[3] ), .O(n314)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__506.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__507 (.I0(n311), .I1(n314), .I2(\T1/u0/PC[4] ), .O(\T1/u0/n1135 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;
    defparam LUT__507.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__508 (.I0(n311), .I1(\T1/u0/PC[4] ), .I2(n314), .I3(\T1/u0/PC[5] ), 
            .O(\T1/u0/n1134 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbf40 */ ;
    defparam LUT__508.LUTMASK = 16'hbf40;
    EFX_LUT4 LUT__509 (.I0(\T1/u0/PC[4] ), .I1(\T1/u0/PC[5] ), .I2(n314), 
            .O(n315)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__509.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__510 (.I0(n311), .I1(n315), .I2(\T1/u0/PC[6] ), .O(\T1/u0/n1133 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;
    defparam LUT__510.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__511 (.I0(n311), .I1(\T1/u0/PC[6] ), .I2(n315), .I3(\T1/u0/PC[7] ), 
            .O(\T1/u0/n1132 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbf40 */ ;
    defparam LUT__511.LUTMASK = 16'hbf40;
    EFX_LUT4 LUT__512 (.I0(\T1/u0/PC[6] ), .I1(\T1/u0/PC[7] ), .O(n316)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__512.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__513 (.I0(n311), .I1(n315), .I2(n316), .I3(\T1/u0/PC[8] ), 
            .O(\T1/u0/n1131 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbf40 */ ;
    defparam LUT__513.LUTMASK = 16'hbf40;
    EFX_LUT4 LUT__514 (.I0(\T1/u0/PC[8] ), .I1(n316), .O(n317)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__514.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__515 (.I0(n311), .I1(n315), .I2(n317), .I3(\T1/u0/PC[9] ), 
            .O(\T1/u0/n1130 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbf40 */ ;
    defparam LUT__515.LUTMASK = 16'hbf40;
    EFX_LUT4 LUT__516 (.I0(\T1/u0/PC[4] ), .I1(\T1/u0/PC[5] ), .I2(\T1/u0/PC[8] ), 
            .I3(\T1/u0/PC[9] ), .O(n318)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__516.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__517 (.I0(n314), .I1(n318), .O(n319)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__517.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__518 (.I0(n311), .I1(n316), .I2(n319), .I3(\T1/u0/PC[10] ), 
            .O(\T1/u0/n1129 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbf40 */ ;
    defparam LUT__518.LUTMASK = 16'hbf40;
    EFX_LUT4 LUT__519 (.I0(\T1/u0/PC[10] ), .I1(n316), .O(n320)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__519.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__520 (.I0(n311), .I1(n319), .I2(n320), .I3(\T1/u0/PC[11] ), 
            .O(\T1/u0/n1128 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbf40 */ ;
    defparam LUT__520.LUTMASK = 16'hbf40;
    EFX_LUT4 LUT__521 (.I0(\T1/u0/PC[6] ), .I1(\T1/u0/PC[7] ), .I2(\T1/u0/PC[10] ), 
            .I3(\T1/u0/PC[11] ), .O(n321)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__521.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__522 (.I0(n311), .I1(n319), .I2(n321), .I3(\T1/u0/PC[12] ), 
            .O(\T1/u0/n1127 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbf40 */ ;
    defparam LUT__522.LUTMASK = 16'hbf40;
    EFX_LUT4 LUT__523 (.I0(\T1/u0/PC[12] ), .I1(n321), .O(n322)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__523.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__524 (.I0(n311), .I1(n319), .I2(n322), .I3(\T1/u0/PC[13] ), 
            .O(\T1/u0/n1126 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbf40 */ ;
    defparam LUT__524.LUTMASK = 16'hbf40;
    EFX_LUT4 LUT__525 (.I0(\T1/u0/PC[12] ), .I1(\T1/u0/PC[13] ), .I2(n321), 
            .O(n323)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__525.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__526 (.I0(n311), .I1(n319), .I2(n323), .I3(\T1/u0/PC[14] ), 
            .O(\T1/u0/n1125 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbf40 */ ;
    defparam LUT__526.LUTMASK = 16'hbf40;
    EFX_LUT4 LUT__527 (.I0(\T1/u0/PC[12] ), .I1(\T1/u0/PC[13] ), .I2(\T1/u0/PC[14] ), 
            .I3(n321), .O(n324)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__527.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__528 (.I0(n311), .I1(n319), .I2(n324), .I3(\T1/u0/PC[15] ), 
            .O(\T1/u0/n1124 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbf40 */ ;
    defparam LUT__528.LUTMASK = 16'hbf40;
    EFX_LUT4 LUT__553 (.I0(\counter[26] ), .O(SBCLEDs[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5555, EFX_ATTRIBUTE_INSTANCE__IS_LUT_SOP_INF_INV=TRUE */ ;
    defparam LUT__553.LUTMASK = 16'h5555;
    EFX_LUT4 LUT__554 (.I0(\counter[25] ), .O(SBCLEDs[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5555, EFX_ATTRIBUTE_INSTANCE__IS_LUT_SOP_INF_INV=TRUE */ ;
    defparam LUT__554.LUTMASK = 16'h5555;
    EFX_LUT4 LUT__555 (.I0(\counter[24] ), .O(SBCLEDs[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5555, EFX_ATTRIBUTE_INSTANCE__IS_LUT_SOP_INF_INV=TRUE */ ;
    defparam LUT__555.LUTMASK = 16'h5555;
    EFX_LUT4 LUT__556 (.I0(\counter[23] ), .O(SBCLEDs[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5555, EFX_ATTRIBUTE_INSTANCE__IS_LUT_SOP_INF_INV=TRUE */ ;
    defparam LUT__556.LUTMASK = 16'h5555;
    EFX_LUT4 LUT__557 (.I0(\counter[22] ), .O(SBCLEDs[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5555, EFX_ATTRIBUTE_INSTANCE__IS_LUT_SOP_INF_INV=TRUE */ ;
    defparam LUT__557.LUTMASK = 16'h5555;
    EFX_LUT4 LUT__558 (.I0(\counter[21] ), .O(SBCLEDs[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5555, EFX_ATTRIBUTE_INSTANCE__IS_LUT_SOP_INF_INV=TRUE */ ;
    defparam LUT__558.LUTMASK = 16'h5555;
    EFX_LUT4 LUT__559 (.I0(seg7_dp), .O(SBCLEDs[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5555, EFX_ATTRIBUTE_INSTANCE__IS_LUT_SOP_INF_INV=TRUE */ ;
    defparam LUT__559.LUTMASK = 16'h5555;
    EFX_LUT4 LUT__560 (.I0(S100adr16_19[3]), .O(SBCLEDs[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5555, EFX_ATTRIBUTE_INSTANCE__IS_LUT_SOP_INF_INV=TRUE */ ;
    defparam LUT__560.LUTMASK = 16'h5555;
    EFX_LUT4 LUT__561 (.I0(s100_pSYNC), .O(s100_pSTVAL)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5555, EFX_ATTRIBUTE_INSTANCE__IS_LUT_SOP_INF_INV=TRUE */ ;
    defparam LUT__561.LUTMASK = 16'h5555;
    EFX_LUT4 LUT__562 (.I0(pll0_LOCKED), .O(boardActive)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5555, EFX_ATTRIBUTE_INSTANCE__IS_LUT_SOP_INF_INV=TRUE */ ;
    defparam LUT__562.LUTMASK = 16'h5555;
    EFX_GBUFCE CLKBUF__1 (.CE(1'b1), .I(s100_pSYNC), .O(\n163~O )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_GBUFCE, CE_POLARITY=1'b1 */ ;
    defparam CLKBUF__1.CE_POLARITY = 1'b1;
    EFX_GBUFCE CLKBUF__0 (.CE(1'b1), .I(s100_clock), .O(\pll0_2MHz~O )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_GBUFCE, CE_POLARITY=1'b1 */ ;
    defparam CLKBUF__0.CE_POLARITY = 1'b1;
    
endmodule

//
// Verific Verilog Description of module EFX_LUT4_d8a8f3da_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d8a8f3da_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d8a8f3da_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d8a8f3da_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d8a8f3da_2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d8a8f3da_3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d8a8f3da_4
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d8a8f3da_5
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_d8a8f3da_6
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_d8a8f3da_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d8a8f3da_2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d8a8f3da_3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d8a8f3da_4
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d8a8f3da_5
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d8a8f3da_6
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d8a8f3da_7
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d8a8f3da_8
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d8a8f3da_9
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d8a8f3da_10
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d8a8f3da_11
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d8a8f3da_12
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d8a8f3da_13
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d8a8f3da_14
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d8a8f3da_15
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d8a8f3da_16
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d8a8f3da_17
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d8a8f3da_18
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d8a8f3da_19
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d8a8f3da_20
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d8a8f3da_21
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d8a8f3da_22
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d8a8f3da_23
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d8a8f3da_24
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d8a8f3da_25
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d8a8f3da_26
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_d8a8f3da_27
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_GBUFCE_d8a8f3da_0
// module not written out since it is a black box. 
//

