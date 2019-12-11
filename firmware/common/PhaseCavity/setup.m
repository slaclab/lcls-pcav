format compact

addpath('../LlrfLib/')
% LLRF setup
axiClk = 156.25e6;
interleavedChannels = 12;
Fs     = 357e6;
Fadc   = Fs/interleavedChannels;
Ts     = 1/Fs;

configBase = hex2dec('800');
statusBase = hex2dec('0');