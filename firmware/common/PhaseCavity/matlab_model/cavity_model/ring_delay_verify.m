close all;
clear all; clc;

fc = 2851.3e6;    % Cavity resonate freq
wc = 2*pi*fc;
q  = 6000;        % Cavity Q
bw = fc/q;        % Cavity BW
fadc = 357e6;     % ADC sample clock
fs = fadc*44;     % Sample freq for the RF simulation
% fs is picked to be 34x the ADC clk because a high freq is needed
% for the resolution of the RF signals, but also needs to be an integer
% multiple of the ADC clk speed in order to downsample into a simulated
% sampled IF signal for the algorithm 
Ts = 1/(fs);
flo = 2771e6;     % LO freq
t_start = -1e-6;    % x axis start time
t_stop  = 5e-6;     % x axis stop time
t_delay = 0.5e-6;   % Delaying the start of the pulse
t  = (t_start):(Ts):(t_stop);          % x axis
adc_t = (t_start):(1/fadc):(t_stop);   % ADC CLK x axis

% Simulating the phase cavity as a 2nd order bpf
tfcav = tf([wc/q, 0], [1, wc/q, (wc^2)]);
cav_out = impulse(tfcav, t);  % Simulating the cavity ring output
cav_out = cav_out./(max(cav_out));

% Math representation of the cavity ring output 
tau = 1/(2*pi*bw/2);            % Time constant
rf = cos(2*pi*fc*(t-t_delay));  % 2851MHz ring
y = exp(-(t-t_delay)/tau);      % Cavity exp decay
Ustep = (t >= t_delay);         % Unity step
cav_ring = rf .* Ustep .* y;    % Creating the cavity ring

f_res = 10e6;
f_stop = f_res*10; 
f_test = fc:f_res:(fc+f_stop);
figure()
for i = 1:length(f_test)
    f_test(i)
    rf_test(i,:) = cos(2*pi*f_test(i)*(t-t_delay));
    cav_tune(i,:) = rf_test(i,:) .* Ustep .* y;
    plot(t, cav_tune(i,:)); hold on
end
hold off; grid on;
xlim([t_delay-(100e-12) t_delay+(0.5e-9)])
set(get(gca, 'XLabel'), 'String', 'Time (s)');
set(get(gca, 'Title'), 'String', 'Varying freq of cavity to verify signal start on same point');

t_d_str = 0;
t_d_res  = 0.25e-6;
t_d_stop = 5e-6;
t_d = t_d_str:t_d_res:t_d_stop;
for i = 1:length(t_d);
    rf = cos(2*pi*fc*(t-t_d(i)));  % 2851MHz ring
    y = exp(-(t-t_d(i))/tau);      % Cavity exp decay
    Ustep = (t >= t_d(i));         % Unity step
    cav_ring = rf .* Ustep .* y;    % Creating the cavity ring
    figure()
    plot(t,cav_ring); grid on
    xlim([t_d(i)-(100e-12) t_d(i)+(100e-12)])
end

