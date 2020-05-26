############################
# DO NOT EDIT THE CODE BELOW
############################

# Load RUCKUS environment and library
source -quiet $::env(RUCKUS_DIR)/vivado_proc.tcl

# Load submodules' code and constraints
loadRuckusTcl $::env(TOP_DIR)/submodules

# Configure for Digital Debug RTM v2
loadSource      -dir  "$::DIR_PATH/../../common/sim/rtl/"
loadSource      -dir  "$::DIR_PATH/../../common/PhaseCavity/rtl/"

# Load target's source code and constraints
loadSource      -dir  "$::DIR_PATH/hdl/"
loadConstraints -dir  "$::DIR_PATH/hdl/"
