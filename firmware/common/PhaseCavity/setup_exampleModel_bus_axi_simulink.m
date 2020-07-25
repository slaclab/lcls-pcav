close all;
clear all; % clc;

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
cav1p1_addr = 204;
cav1p2_addr = cav1p1_addr * 2;
cav2p1_addr = cav1p1_addr * 3;
cav2p2_addr = cav1p1_addr * 4;

fc = 2851.3e6;    % Cavity resonate freq
f_prl = 2856e6;   % PRL freq
b_rate = 1.2e5;  % Beam rate in Hz
b_ts   = 1/b_rate;
num_shot = 4;

fs = fc*5.5;

% fc_if   = fc - flo;
% qcav_if = fc_if/bw;
% wcav_if = fc_if*2*pi;

wc = 2*pi*fc;
q  = 6000;        % Cavity Q
bw = fc/q;        % Cavity BW
fadc = 357e6;     % ADC sample clock
Tadc = 1/fadc;
t_puls_stop = 2.5e-5; % simulation set stop time for ring down
t_puls_gap  = 1e-5; % time gap between pulse
t_delay = 0.5e-6;   % Delaying the start of the pulse
flo = 2771e6;       % LO freq
t_start = 0;        % x axis start time
% t_stop  = 1e-4;     % x axis stop time
t_stop = (num_shot * (t_delay + t_puls_stop + t_puls_gap));
% t_puls = t_start:(1/fadc):(t_delay + t_puls_stop + t_puls_gap);
t_puls = (0:(t_delay + t_puls_stop + t_puls_gap)*fadc)*(1/fadc);
% adc_t = (t_start):(1/fadc):(t_stop);   % ADC CLK x axis
adc_t = (0:(length(t_puls)*num_shot-1))*(1/fadc);
% adc_t = (0:((t_stop*fadc)+(num_shot-1)))*(1/fadc);   % ADC CLK x axis
% t_trg = (t_start):(1/Fproc):(t_stop);
t_trg = (0:((t_stop*Fproc)+(num_shot-1)))*(1/Fproc);
% t_trg_seg = t_start:(1/Fproc):(t_delay + t_puls_stop + t_puls_gap);
t_trg_seg = (0:(t_delay + t_puls_stop + t_puls_gap)*Fproc)*(1/Fproc);


jitter_amt = 100e-12;
jitter_t = (t_start+jitter_amt):(1/fadc):(t_stop+jitter_amt);

trigger_sig = zeros(1, length(t_trg_seg));
trigger_sig(1,1:12) = 1e2;
% figure()
% plot(t_trg_seg, trigger_sig); grid on

f_if_prl = f_prl-flo;
SIM_PRL = cos((2*pi*(f_if_prl)*(adc_t)) + (0));   % Simplified PRL signal in the adc for simulink

% Math representation of the IF cavity ring output 
f_if = fc - flo;
tau_if = 1/(2*pi*bw/2);
SIM_IF = cos(2*pi*f_if*(adc_t-t_delay));   % 80.278MHz ring
SIM_y_if = exp(-(adc_t-t_delay)/tau_if);   % Cavity exp decay
SIM_Ustep = (adc_t >= t_delay);            % Delaying the start
SIM_cav_ring_if = SIM_IF .* SIM_Ustep .* SIM_y_if;


tSIM_IF = cos(2*pi*f_if*(t_puls-t_delay));   % 80.278MHz ring
tSIM_y_if = exp(-(t_puls-t_delay)/tau_if);   % Cavity exp decay
tSIM_Ustep = (t_puls >= t_delay);            % Delaying the start
tSIM_cav_ring_if = tSIM_IF .* tSIM_Ustep .* tSIM_y_if;
t_cav_test = tSIM_cav_ring_if;
figure()
plot(t_puls, t_cav_test); grid on;
trig_ary = trigger_sig;
for (i = 2:num_shot)
    t_cav_test = cat(2, t_cav_test, tSIM_cav_ring_if);
    trig_ary = cat(2, trig_ary, trigger_sig);
end
size(t_cav_test);
figure()
plot(adc_t, t_cav_test); grid on; hold on;
plot(t_trg, trig_ary/(1e3)); hold off

SYS_PRL = [adc_t', SIM_PRL'];
SYS_CAV = [adc_t', t_cav_test'];
SYS_TRG = [t_trg', trig_ary'];

abs(f_if-f_if_prl)
t_stop

% figure()
% plot(adc_t, SIM_cav_ring_if);grid on; hold on;
% plot(adc_t, t_cav_test); hold off

figure()
plot(adc_t, SIM_PRL);grid on; hold on;
plot(adc_t, t_cav_test); hold off
% 
% figure()
% plot(adc_t, SIM_cav_ring_if); grid on;
