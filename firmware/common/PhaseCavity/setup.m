format compact

% addpath('../LlrfLib/')
addpath('../../submodules/sysgen-dsp-lib/LlrfLib/')
% LLRF setup
axiClk = 156.25e6;
interleavedChannels = 12;
Fs     = 357e6;
Fadc   = Fs;
Ts     = 1/Fs;
Fproc  = 204e6;

configBase = hex2dec('800');
statusBase = hex2dec('0');