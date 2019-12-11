close all;
clear all;

q = 10e-12
fr = 2851.3e6;
w = fr*2*pi;
QL = 6898.4;
Q0 = 14233.6;
beta_val = (Q0/QL) - 1;
Qe = Q0/beta_val;
ROQ = 158.65;
Rsh = ROQ * Q0;
bw = fr/QL;
tau = 1/(2*pi*bw/2);

fs = fr*5;
t_start = -1e-9;    % x axis start time
t_stop  = 10e-6;     % x axis stop time
t_delay = 0.5e-6;
Ts = 1/fs;
t = t_start:Ts:t_stop;
L = length(t);
NFFT = 2^nextpow2(L);

% Math representation of the cavity ring output 
tau = 1/(2*pi*(bw/2));            % Time constant
rf = cos(2*pi*fr*(t-t_delay));  % 2851MHz ring
y = exp(-(t-t_delay)/tau);      % Cavity exp decay
Ustep = (t >= t_delay);         % Unity step
Ustep1 = (t <= t_delay+4e-6);         % Unity step
cav_ring = rf .* Ustep .* y;    % Creating the cavity ring

test_rec = Ustep .* Ustep1;

cav_env = Ustep .* y;

cc   = 1/0.42;    % correction coefficient
w = (0.42) - (0.5*(cos(2*pi*(1:L)'/(L+1)))) + ((0.08)*(cos(4*pi*(1:L)'/(L+1))));
%end of Blackman

% Y = fft(test_rec' .* w, NFFT) *2*cc / L;
Y = fft(cav_ring', NFFT) / L;
f = (fs/2)*(linspace(0,1,NFFT/2));
data_f_amp = 2 * abs(Y(1:NFFT/2,:));
data_f_dB  = 20*log10(data_f_amp);
figure()
plot(t, cav_ring); grid on
title('Cavity ring envelope');
set(get(gca, 'XLabel'), 'String', 'Time (s)');

figure()
plot(f, data_f_dB); grid on
title('FFT of the ring envelope');
set(get(gca, 'XLabel'), 'String', 'freq (Hz)');

return

q_min = 10e-12;
q_max = 1e-9;
q_step = 50e-12;
q = q_min:q_step:q_max;
V_cav_p_ary = zeros(length(q),1);
P_ext_pwr_ary = zeros(length(q),1);
P_per_sma_ary = zeros(length(q),1);
P_per_sma_dbm_ary = zeros(length(q),1);
cav_ring_q_ary = zeros(length(q),length(t));

for k = 1:length(q)
    V_cav_p_ary(k,1) = ROQ * w * q(k);
    P_ext_pwr_ary(k,1) = (V_cav_p_ary(k,1)^2) / (ROQ*Qe);
    P_per_sma_ary(k,1) = P_ext_pwr_ary(k,1)/2;

end

P_per_sma_dbm_ary = 10.*log10(P_per_sma_ary./(1e-3));



figure()
plot(q./(1e-12), P_ext_pwr_ary); grid on;
title('beam charge vs. Pwr output')
set(get(gca, 'XLabel'), 'String', 'beam charge (pQ)');
set(get(gca, 'YLabel'), 'String', 'Watt');

figure()
plot(q./(1e-12), P_per_sma_ary); grid on;
title('beam charge vs. SMA power')
set(get(gca, 'XLabel'), 'String', 'beam charge (pQ)');
set(get(gca, 'YLabel'), 'String', 'Watt');

figure()
semilogx(q./(1e-12), P_per_sma_dbm_ary); grid on;
title('beam charge vs. SMA power')
set(get(gca, 'XLabel'), 'String', 'beam charge (pQ)');
set(get(gca, 'YLabel'), 'String', 'dBm');