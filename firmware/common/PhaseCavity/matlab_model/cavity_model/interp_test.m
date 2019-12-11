close all;
clear all; clc;

fc = 2851.3e6;    % Cavity resonate freq
% fc = 2856e6;      % Cavity resonate freq
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
t_start = 0;    % x axis start time
t_stop  = 10e-6;     % x axis stop time
t_delay = 0.5e-6;   % Delaying the start of the pulse
t  = (t_start):(Ts):(t_stop);          % x axis
adc_t = (t_start):(1/fadc):(t_stop);   % ADC CLK x axis

jitter_amt = 15e-9;
jitter_t = (t_start+jitter_amt):(1/fadc):(t_stop+jitter_amt);

prl_rf = cos(2*pi*(f_prl-flo)*t);

adc_prl = interp1(t, prl_rf, adc_t, 'makima');
jit_prl = interp1(t, prl_rf, jitter_t, 'makima');

% adc_prl = adc_prl - mean(adc_prl);
% jit_prl = jit_prl - mean(jit_prl);

figure();
plot(t, prl_rf, 'x'); grid on; hold on;
plot(adc_t, adc_prl, '+-');
plot(jitter_t, jit_prl); hold off
xlim([0, 40e-9]);