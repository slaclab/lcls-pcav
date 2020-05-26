# Load RUCKUS library
source -quiet $::env(RUCKUS_DIR)/vivado_proc.tcl

# Load Source Code
loadSource -dir  "$::DIR_PATH/rtl/"
#loadSource -path  "$::DIR_PATH/netlist/example_stub.vhd"
#loadSource -path  "$::DIR_PATH/netlist/example.dcp"
loadSource -path  "$::DIR_PATH/netlist/AppModel.vhd"

loadIpCore -path "$::DIR_PATH/coregen/ila_0.xci"

## Synthesis options
set_property strategy Performance_ExplorePostRoutePhysOpt [get_runs impl_1]

set_property STEPS.SYNTH_DESIGN.ARGS.FLATTEN_HIERARCHY rebuilt [get_runs synth_1]
set_property STEPS.SYNTH_DESIGN.ARGS.RETIMING on [get_runs synth_1]

# Force synth_1 to be stale between runs incase the sysgen .DCP file changes ( work around for a bug in Vivado)
#exec touch [get_files {MrDspCoreWrapper.vhd}]
