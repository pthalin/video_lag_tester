//Copyright (C)2014-2022 GOWIN Semiconductor Corporation.
//All rights reserved.
//File Title: Timing Constraints file
//GOWIN Version: 1.9.8.03 Education
//Created Time: 2022-04-07 17:36:05
create_clock -name clk_serial -period 2.694 -waveform {0 1.347} [get_nets {clk_serial}]
create_clock -name trigger -period 100 -waveform {0 50} [get_nets {measure/counter_trigger}]
create_clock -name clock -period 37.037 -waveform {0 18.518} [get_ports {clock}] -add
set_clock_groups -asynchronous -group [get_clocks {clock}] -group [get_clocks {clk_serial}]
set_clock_groups -asynchronous -group [get_clocks {trigger}] -group [get_clocks {clock}]
