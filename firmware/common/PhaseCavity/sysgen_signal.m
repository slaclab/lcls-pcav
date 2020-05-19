close all;
%clear all; clc;

fc = 2851.3e6;    % Cavity resonate freq
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

jitter_amt = 100e-12;
jitter_t = (t_start+jitter_amt):(1/fadc):(t_stop+jitter_amt);

SIM_PRL = cos((2*pi*(f_prl-flo)*(adc_t)) + (0));   % Simplified PRL signal in the adc for simulink

% Math representation of the IF cavity ring output 
f_if = 80.278e6;
f_if = fc - flo;
tau_if = 1/(2*pi*bw/2);
SIM_IF = cos(2*pi*f_if*(adc_t-t_delay));   % 80.278MHz ring
SIM_y_if = exp(-(adc_t-t_delay)/tau_if);   % Cavity exp decay
SIM_Ustep = (adc_t >= t_delay);            % Delaying the start
SIM_cav_ring_if = SIM_IF .* SIM_Ustep .* SIM_y_if;

% SIM_cav_ring_if = SIM_IF;   % Simplified PRL signal in the adc for simulink


SYS_PRL = [adc_t', SIM_PRL'];
SYS_CAV = [adc_t', SIM_cav_ring_if'];

figure()
plot(adc_t, SIM_PRL);grid on; hold on;
plot(adc_t, SIM_cav_ring_if); hold off