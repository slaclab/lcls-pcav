close all;
%clear all; clc;

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
Fsig   = Fproc/12;

configBase = hex2dec('800');
statusBase = hex2dec('0');

fc = 2851.300000e6;    % Cavity resonate freq
f_prl = 2856e6;   % PRL freq
wc = 2*pi*fc;
q  = 6000;        % Cavity Q
bw = fc/q;        % Cavity BW
fadc = 357e6;     % ADC sample clock
Tadc = 1/fadc;
flo = 2771e6;     % LO freq
t_start = -1e-6;    % x axis start time
t_stop  = 10e-6;     % x axis stop time
t_delay = 0.5e-6;   % Delaying the start of the pulse
adc_t = (t_start):(1/fadc):(t_stop);   % ADC CLK x axis

cav1p1_addr = 204;
cav1p2_addr = cav1p1_addr * 2;
cav2p1_addr = cav1p1_addr * 3;
cav2p2_addr = cav1p1_addr * 4;

jitter_amt = 100e-12;
jitter_t = (t_start+jitter_amt):(1/fadc):(t_stop+jitter_amt);

f_if_prl = f_prl-flo;
SIM_PRL = cos((2*pi*(f_if_prl)*(adc_t)) + (0));   % Simplified PRL signal in the adc for simulink

% Math representation of the IF cavity ring output 
% f_if = 80.278e6;
f_if = fc - flo;
tau_if = 1/(2*pi*bw/2);
SIM_IF = cos(2*pi*f_if*(adc_t-t_delay));   % 80.278MHz ring
SIM_y_if = exp(-(adc_t-t_delay)/tau_if);   % Cavity exp decay
SIM_Ustep = (adc_t >= t_delay);            % Delaying the start
SIM_cav_ring_if = SIM_IF .* SIM_Ustep .* SIM_y_if;

% SIM_cav_ring_if = SIM_IF;   % Simplified PRL signal in the adc for simulink

cav_f_offset = f_if_prl - f_if
SYS_PRL = [adc_t', SIM_PRL'];
SYS_CAV = [adc_t', SIM_cav_ring_if'];

figure()
plot(adc_t, SIM_PRL);grid on; hold on;
plot(adc_t, SIM_cav_ring_if); hold off

figure()
plot(adc_t, SIM_cav_ring_if); grid on;

