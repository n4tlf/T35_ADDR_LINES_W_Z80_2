
// Efinity Top-level template
// Version: 2022.1.226
// Date: 2022-12-14 00:38

// Copyright (C) 2017 - 2022 Efinix Inc. All rights reserved.

// This file may be used as a starting point for Efinity synthesis top-level target.
// The port list here matches what is expected by Efinity constraint files generated
// by the Efinity Interface Designer.

// To use this:
//     #1)  Save this file with a different name to a different directory, where source files are kept.
//              Example: you may wish to save as C:\s100projects\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2\T35_ADDR_LINES_W_Z80_2.v
//     #2)  Add the newly saved file into Efinity project as design file
//     #3)  Edit the top level entity in Efinity project to:  T35_ADDR_LINES_W_Z80_2
//     #4)  Insert design content.


module T35_ADDR_LINES_W_Z80_2
(
  input clockIn,
  input s100_rdy,
  input s100_xrdy,
  input pll0_LOCKED,
  input sw1_reset_n,
  input pll0_2MHz,
  output F_bus_ctl_oe,
  output [15:0] S100adr0_15,
  output [7:0] SBCLEDs,
  output s100_PHANTOM,
  output s100_sMWRT,
  output [6:0] seg7,
  output seg7_dp,
  output boardActive,
  output s100_MEMR,
  output s100_PHI,
  output s100_clock,
  output s100_n_pWR,
  output s100_n_sWO,
  output s100_pDBIN,
  output s100_pHLDA,
  output s100_pSTVAL,
  output s100_pSYNC,
  output s100_sHLTA,
  output s100_sINP,
  output s100_sINTA,
  output s100_sM1,
  output s100_sOUT,
  output F_add_oe,
  output F_bus_stat_oe,
  output [3:0] S100adr16_19,
  output s100_ADSB,
  output s100_CDSB
);


endmodule

