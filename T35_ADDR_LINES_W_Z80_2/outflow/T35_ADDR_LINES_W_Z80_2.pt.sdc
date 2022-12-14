
# Efinity Interface Designer SDC
# Version: 2022.1.226
# Date: 2022-12-14 00:38

# Copyright (C) 2017 - 2022 Efinix Inc. All rights reserved.

# Device: T35F400
# Project: T35_ADDR_LINES_W_Z80_2
# Timing Model: C4 (final)

# PLL Constraints
#################
create_clock -period 500.0000 pll0_2MHz

# GPIO Constraints
####################
# set_input_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {clockIn}]
# set_input_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {clockIn}]
# set_input_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {s100_rdy}]
# set_input_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {s100_rdy}]
# set_input_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {s100_xrdy}]
# set_input_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {s100_xrdy}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {F_bus_ctl_oe}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {F_bus_ctl_oe}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {s100_PHANTOM}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {s100_PHANTOM}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {s100_sMWRT}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {s100_sMWRT}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {S100adr0_15[0]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {S100adr0_15[0]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {S100adr0_15[1]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {S100adr0_15[1]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {S100adr0_15[2]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {S100adr0_15[2]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {S100adr0_15[3]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {S100adr0_15[3]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {S100adr0_15[4]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {S100adr0_15[4]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {SBCLEDs[0]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {SBCLEDs[0]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {SBCLEDs[1]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {SBCLEDs[1]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {SBCLEDs[2]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {SBCLEDs[2]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {SBCLEDs[3]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {SBCLEDs[3]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {SBCLEDs[4]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {SBCLEDs[4]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {SBCLEDs[5]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {SBCLEDs[5]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {SBCLEDs[6]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {SBCLEDs[6]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {SBCLEDs[7]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {SBCLEDs[7]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {seg7[0]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {seg7[0]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {seg7[1]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {seg7[1]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {seg7[2]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {seg7[2]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {seg7[3]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {seg7[3]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {seg7[4]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {seg7[4]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {seg7[5]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {seg7[5]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {seg7[6]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {seg7[6]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {seg7_dp}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {seg7_dp}]

# LVDS RX GPIO Constraints
############################
# set_input_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {sw1_reset_n}]
# set_input_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {sw1_reset_n}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {boardActive}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {boardActive}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {s100_clock}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {s100_clock}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {s100_MEMR}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {s100_MEMR}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {s100_n_pWR}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {s100_n_pWR}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {s100_n_sWO}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {s100_n_sWO}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {s100_pDBIN}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {s100_pDBIN}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {s100_PHI}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {s100_PHI}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {s100_pHLDA}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {s100_pHLDA}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {s100_pSTVAL}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {s100_pSTVAL}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {s100_pSYNC}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {s100_pSYNC}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {s100_sHLTA}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {s100_sHLTA}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {s100_sINP}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {s100_sINP}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {s100_sINTA}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {s100_sINTA}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {s100_sM1}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {s100_sM1}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {s100_sOUT}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {s100_sOUT}]

# LVDS Rx Constraints
####################

# LVDS TX GPIO Constraints
############################
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {F_add_oe}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {F_add_oe}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {F_bus_stat_oe}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {F_bus_stat_oe}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {s100_ADSB}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {s100_ADSB}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {s100_CDSB}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {s100_CDSB}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {S100adr0_15[5]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {S100adr0_15[5]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {S100adr0_15[6]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {S100adr0_15[6]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {S100adr0_15[7]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {S100adr0_15[7]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {S100adr0_15[8]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {S100adr0_15[8]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {S100adr0_15[9]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {S100adr0_15[9]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {S100adr0_15[10]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {S100adr0_15[10]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {S100adr0_15[11]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {S100adr0_15[11]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {S100adr0_15[12]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {S100adr0_15[12]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {S100adr0_15[13]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {S100adr0_15[13]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {S100adr0_15[14]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {S100adr0_15[14]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {S100adr0_15[15]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {S100adr0_15[15]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {S100adr16_19[0]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {S100adr16_19[0]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {S100adr16_19[1]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {S100adr16_19[1]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {S100adr16_19[2]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {S100adr16_19[2]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {S100adr16_19[3]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {S100adr16_19[3]}]

# LVDS Tx Constraints
####################