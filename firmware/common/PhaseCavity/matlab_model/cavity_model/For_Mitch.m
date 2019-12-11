close all;
clear all; clc;

fc = 2851.3e6;    % Cavity resonate freq
f_prl = 2856e6;   % PRL freq
wc = 2*pi*fc;
q  = 6000;        % Cavity Q
bw = fc/q;        % Cavity BW
fadc = 357e6;     % ADC sample clock
fs2fadc = 34;
fs = fadc*fs2fadc;     % Sample freq for the RF simulation
% fs is picked to be 34x the ADC clk because a high freq is needed
% for the resolution of the RF signals, but also needs to be an integer
% multiple of the ADC clk speed in order to downsample into a simulated
% sampled IF signal for the algorithm 
Ts = 1/(fs);
flo = 2771e6;     % LO freq
t_start = -1e-6;    % x axis start time
t_stop  = 10e-6;     % x axis stop time
t_delay = 0.5e-6;   % Delaying the start of the pulse
t  = (t_start):(Ts):(t_stop);          % x axis
adc_t = (t_start):(1/fadc):(t_stop);   % ADC CLK x axis

% Phase reference line signal
PRL_rf  = cos((2*pi*f_prl*(t)) + (0));    % PRL RF

% Math representation of the cavity ring output 
tau = 1/(2*pi*bw/2);            % Time constant
rf = cos(2*pi*fc*(t-t_delay));  % 2851MHz ring
y = exp(-(t-t_delay)/tau);      % Cavity exp decay
Ustep = (t >= t_delay);         % Unity step
cav_rf = rf .* Ustep .* y;    % Creating the cavity ring

% Let's add some AWG to our noiseless system
noise_SNR = -60;
noise_amp = (10^(noise_SNR/20))*(max(cav_rf));
AWG = rand(1, length(t))*noise_amp;
cav_ring = cav_rf + AWG;

figure()
plot(t, cav_ring); grid on
title('Cavity signal @2851.3MHz');
xlabel('Time (s)');
% plot(t, rf); hold on
% plot(t, y);
% plot(t, Ustep); 
% plot(t, cav_ring); hold off; grid on 

% LO signal
LO = sin(2*pi*flo*t);

% External BPF
lp_f = 2.841e9;
hp_f = 2.861e9;
lp_w = 2*pi*lp_f;
hp_w = 2*pi*hp_f;
ext_bpf_bw = [lp_w hp_w];
% [ext_bpf_Num, ext_bpf_Den] = butter(3, lp_w, 'low','s');
[ext_bpf_Num, ext_bpf_Den] = butter(6, ext_bpf_bw, 'bandpass','s');
ext_bpf = tf(ext_bpf_Num, ext_bpf_Den);
ext_bpfz = c2d(ext_bpf, Ts, 'match');
% figure()
% P = bodeoptions('cstprefs');
% P.Xlim = [2.7, 3.0];
% P.FreqUnits = 'GHz';
% P.Title.String = 'Ext RF filter';
% P.Grid = 'on';
% bodeplot(ext_bpf, ext_bpfz, 'x',P);


% ATCA RF input filters
RF_bpf_f1 = 2.5e9;   % Filter low freq -3dB
RF_bpf_f2 = 3.0e9;   % Filter high freq -3dB
RF_bpf_bw = [RF_bpf_f1*2*pi RF_bpf_f2*2*pi];
[RF_bpf_Num, RF_bpf_Den] = butter(2, RF_bpf_bw, 'bandpass','s');
RF_bpf = tf(RF_bpf_Num, RF_bpf_Den);
RF_bpfz = c2d(RF_bpf, Ts, 'match');

% figure()
% P = bodeoptions('cstprefs');
% P.FreqUnits = 'GHz';
% P.Title.String = 'ATCA RF filter';
% P.Grid = 'on';
% bodeplot(RF_bpf, RF_bpfz, 'x',P);

% ATCA IF bandpass filter, simulated as a 3rd order bpf
IF_bpf_f1 = 60e6;
IF_bpf_f2 = 110e6;
IF_bpf_w1 = (IF_bpf_f1*2*pi);
IF_bpf_w2 = (IF_bpf_f2*2*pi);
IF_bpf_bw = [IF_bpf_w1 IF_bpf_w2];
[IF_bpf_Num, IF_bpf_Den] = butter(3, IF_bpf_bw, 'bandpass','s');
IF_bpf  = tf(IF_bpf_Num, IF_bpf_Den);
IF_bpz = c2d(IF_bpf, Ts, 'match');

% figure()
% P = bodeoptions('cstprefs');
% P.FreqUnits = 'MHz';
% P.Title.String = 'ATCA IF filter';
% P.Xlim = [1, 3e2];
% P.Grid = 'on';
% bodeplot(IF_bpf, IF_bpz, 'x',P);

% =========================================================================
ext_bpf_out = filter(ext_bpfz.Num{1}, ext_bpfz.Den{1}, cav_ring);

% Pass cavity signal through RF BPF
lp_out = filter(RF_bpfz.Num{1}, RF_bpfz.Den{1}, ext_bpf_out);
% Downmix
mixer = LO .* lp_out;
% IF filter
IF_rf = filter(IF_bpz.Num{1}, IF_bpz.Den{1}, mixer);
IF_rf_norm = IF_rf./(max(IF_rf));

PRL_bpf = filter(RF_bpfz.Num{1}, RF_bpfz.Den{1}, PRL_rf);
% Downmix
PRL_mixer = LO .* PRL_bpf;
% IF filter
IF_PRL = filter(IF_bpz.Num{1}, IF_bpz.Den{1}, PRL_mixer);
IF_PRL_norm = IF_PRL./(max(IF_PRL));

% Start of the ADC sampled DSP
IF_adc = downsample(IF_rf_norm, fs2fadc);
PRL_adc = downsample(IF_PRL_norm, fs2fadc);

figure()
plot(adc_t, IF_adc); grid on
title('ADC Cavity signal');
xlabel('Time (s)');