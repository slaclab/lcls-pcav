# This is the enviroment variable to get the EPICS env var such as CA_ADDR_LIST and etc. (you want EPICS, source this...)
# source /afs/slac/g/lcls/tools/script/ENVS.bash
# Copied from the ENVS.bash script ignored the matlab part because it is not useful
# /////////////////////////////////////////////////////////////////////////////////////
# Define env variables based on AFS for development and NFS for production   
if [ -d /afs/slac/g/lcls ]; then 
        export FACILITY_ROOT=/afs/slac/g/lcls
	export LCLS_ROOT=/afs/slac/g/lcls
else
        export FACILITY_ROOT=/usr/local/lcls
        export LCLS_ROOT=/usr/local/lcls
fi

# Source commmon environment setup for LCLS
if [ -f ${FACILITY_ROOT}/tools/script/commonSetup.bash ]; then
    . ${FACILITY_ROOT}/tools/script/commonSetup.bash
fi 

# Source group environment setup for EPICS
if [ -f ${FACILITY_ROOT}/epics/setup/epicsReset.bash ]; then
    . ${FACILITY_ROOT}/epics/setup/epicsReset.bash
fi
# /////////////////////////////////////////////////////////////////////////////////////
#
# Source this epics setup script for the tools that is compiled against your version of EPICS. (talk to your swe for detail version)
source /afs/slac/g/lcls/epics/setup/epicsenv-7.0.2-1.0.bash
#
# matlab env for rdsrvXXX to over write the ENVS.bash's 2012b matlab env var
#export MATLAB_VERSION=R2017b
#export MATLAB_TOP=/u1/MATLAB/$MATLAB_VERSION/bin/matlab
#export LD_LIBRARY_PATH=$MATLAB_TOP/$MATLAB_VERSION/bin/glnxa64:$MATLAB_TOP/$MATLAB_VERSION/sys/os/glnxa64:$LD_LIBRARY_PATH
#export PATH=$MATLAB_TOP/$MATLAB_VERSION/bin:$PATH
#
# This over write the alias setup by ENVS.bash (only tested on the rdsrvXXX)
alias matlab='/usr/bin/matlab'

