############################
# DO NOT EDIT THE CODE BELOW
############################

# Load RUCKUS environment and library
source -quiet $::env(RUCKUS_DIR)/vivado_proc.tcl

# Load submodules' code and constraints
loadRuckusTcl $::env(TOP_DIR)/submodules

# Configure for Digital Debug RTM v2
loadSource -path $::env(TOP_DIR)/submodules/amc-carrier-core/AppHardware/RtmDigitalDebug/v2/RtmDigitalDebugV2.vhd

#loadSource -path "$::DIR_PATH/../../submodules/amc-carrier-core/AmcCarrierCore/debug/dcp/Impl/images/UdpDebugBridge.dcp"

# Load target's source code and constraints
loadSource      -dir  "$::DIR_PATH/hdl/"
loadConstraints -dir  "$::DIR_PATH/hdl/"

# Set the AppCore to amc_carrier_core at the end of target's ruckus.tcl file
set_property library amc_carrier_core [get_files AppCore.vhd]
