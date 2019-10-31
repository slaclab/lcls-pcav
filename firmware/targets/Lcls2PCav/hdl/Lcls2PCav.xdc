##############################################################################
## This file is part of 'LCLS2 LLRF Development'.
## It is subject to the license terms in the LICENSE.txt file found in the 
## top-level directory of this distribution and at: 
##    https://confluence.slac.stanford.edu/display/ppareg/LICENSE.html. 
## No part of 'LCLS2 LLRF Development', including this file, 
## may be copied, modified, propagated, or distributed except according to 
## the terms contained in the LICENSE.txt file.
##############################################################################

#######################
## Application Ports ##
#######################

####################################
## Application Timing Constraints ##
####################################

create_generated_clock -name recTimingClk [get_pins {U_Core/U_Core/U_Timing/TimingGthCoreWrapper_1/LOCREF_G.U_TimingGthCore/inst/gen_gtwizard_gthe3_top.TimingGth_fixedlat_gtwizard_gthe3_inst/gen_gtwizard_gthe3.gen_channel_container[0].gen_enabled_channel.gthe3_channel_wrapper_inst/channel_inst/gthe3_channel_gen.gen_gthe3_channel_inst[0].GTHE3_CHANNEL_PRIM_INST/RXOUTCLK}]

create_generated_clock -name dspClk204 [get_pins U_AppTop/U_AppCore/U_SysGen/U_DSP_CLK/MmcmGen.U_Mmcm/CLKOUT0]

create_generated_clock -name jesd0_185MHz [get_pins {U_AppTop/U_AmcBay[0].U_JesdCore/U_ClockManager/MmcmGen.U_Mmcm/CLKOUT0}]

create_generated_clock -name jesd1_185MHz [get_pins {U_AppTop/U_AmcBay[1].U_JesdCore/U_ClockManager/MmcmGen.U_Mmcm/CLKOUT0}]

create_generated_clock -name jesd0_370MHz [get_pins {U_AppTop/U_AmcBay[0].U_JesdCore/U_ClockManager/MmcmGen.U_Mmcm/CLKOUT1}]

create_generated_clock -name jesd1_370MHz [get_pins {U_AppTop/U_AmcBay[1].U_JesdCore/U_ClockManager/MmcmGen.U_Mmcm/CLKOUT1}]

create_generated_clock -name ddrClk [get_pins U_Core/U_Core/U_DdrMem/MigCore_Inst/inst/u_ddr3_infrastructure/gen_mmcme3.u_mmcme_adv_inst/CLKOUT5]

#create_clock -name timingRef  -period  2.691  [get_ports {timingRefClkInP}]
create_clock -name timingRef  -period  4.201  [get_ports {timingRefClkInP}]

set_clock_groups -asynchronous \
                 -group [get_clocks -include_generated_clocks {recTimingClk}] \
                 -group [get_clocks -include_generated_clocks {dspClk204}] \
                 -group [get_clocks -include_generated_clocks {jesd0_185MHz}] \
                 -group [get_clocks -include_generated_clocks {jesd1_370MHz}] \
                 -group [get_clocks -include_generated_clocks {ddrClk}]

set_clock_groups -asynchronous \
                 -group [get_clocks -include_generated_clocks {dspClk204}] \
                 -group [get_clocks -include_generated_clocks {jesd1_185MHz}] \
                 -group [get_clocks -include_generated_clocks {jesd0_370MHz}]

#  DiagnosticBus <-> BSA
set_clock_groups -asynchronous \
                 -group [get_clocks -include_generated_clocks {dspClk204}] \
                 -group [get_clocks -include_generated_clocks {ddrClkIn}]

#set_clock_groups -asynchronous \
#                 -group [get_clocks {recTimingClk}] \
#                 -group [get_clocks -of_objects [get_pins -hier -filter {NAME =~ */U_RTM/U_PLL/PllGen.U_Pll/CLKOUT1}]]
