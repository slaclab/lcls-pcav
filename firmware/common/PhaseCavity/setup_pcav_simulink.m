close all;
clear all; clc;

fc = 2851.3e6;    % Cavity resonate freq
f_prl = 2856e6;   % PRL freq
wc = 2*pi*fc;
q  = 6000;        % Cavity Q
bw = fc/q;        % Cavity BW
fadc = 357e6;     % ADC sample clock
fs = fc*5.5
% fs is picked to be 34x the ADC clk because a high freq is needed
% for the resolution of the RF signals, but also needs to be an integer
% multiple of the ADC clk speed in order to downsample into a simulated
% sampled IF signal for the algorithm 
Ts = 1/fs;
Tadc = 1/fadc;
flo = 2771e6;     % LO freq

fc_if   = fc - flo;
qcav_if = fc_if/bw;
wcav_if = fc_if*2*pi;


% use state space, lets us do impulse with set magnitude in simulink
% equivalent to transfer function
% t = tf([1], [1 wcav_if/qcav_if wcav_if.^2])

A = [0, 1;
    -wcav_if.^2, -wcav_if/qcav_if];
B = [1; 0];
C = [1 0];
D = [0];

cav_if_ss = ss(A,B,C,D);

figure;
impulse(cav_if_ss, 1e-5)

opts = bodeoptions;
opts.FreqUnits = 'Hz';
figure;
bode(cav_if_ss, opts)


% setup input pulses, simin

pulse_times = (0:1000)*100*21/fadc;
delta_t    = 1e-10*randn(size(pulse_times));
rise_times = pulse_times + delta_t;
pre_rise   = rise_times - 0.5e-9;
fall_times = rise_times + 0.5e-9;

times = [pre_rise; rise_times; fall_times];
times = times(:);
pulse = [zeros(size(pre_rise)); ones(size(rise_times)); zeros(size(fall_times))];
pulse = pulse(:)*1e9;


simin.time = times;
simin.signals.values = pulse;
simin.signals.dimensions=1;