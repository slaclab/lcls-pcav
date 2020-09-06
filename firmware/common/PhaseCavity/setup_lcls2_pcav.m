close all;
clear all; % clc;

format compact

% addpath('../LlrfLib/')
addpath('../../submodules/sysgen-dsp-lib/LlrfLib/')
% LLRF setup
axiClk = 156.25e6;
interleavedChannels = 12;



configBase = hex2dec('800');
statusBase = hex2dec('0');
cav1p1_addr = 204;
cav1p2_addr = cav1p1_addr * 2;
cav2p1_addr = cav1p1_addr * 3;
cav2p2_addr = cav1p1_addr * 4;

Fs     = 357e6;
Fadc   = Fs;
flo    = 2771e6;       % LO freq
Ts     = 1/Fs;
Tadc   = 1/Fadc;
Fproc  = 204e6;
Fsig   = Fproc/12;
Tsig   = 1/Fsig;
fc = 2851.3e6;    % Cavity resonate freq
f_prl = 2856e6;   % PRL freq
wc    = 2*pi*fc;
wprl  = 2*pi*f_prl;
q  = 14233.6;        % Cavity Q
bw = fc/q;        % Cavity BW
f_85 = 85e6;
adc2if = 5/21;

b_rate = 120;  % Beam rate in Hz
b_ts   = 1/b_rate
b_ts_tic = (b_ts/Ts)
b_85_ratio = round(b_ts_tic/adc2if)


% t_puls_stop = 2.5e-5; % simulation set stop time for ring down
% t_puls_gap  = 5e-6; % time gap between pulse
% t_gap_tic   = round(t_puls_gap/Ts);
% t_delay     = 1e-6;   % Delaying the start of the pulse
% puls_t = (t_delay + t_puls_stop + t_puls_gap)
% puls_t_adc = round(puls_t/Ts)*Ts

num_shot = 4
% pul_pt = 357*50;  % need to make sure it is on the 5:21 ratio between fadc and 85MHz
gap_pt = 500;      % take 20 clock cycles of 375MHz
pul_pt = b_ts_tic; % Pulse length for 120Hz
% t_stop = (num_shot * puls_t_adc)
% t_stop = (num_shot * pul_pt);
t_stop = (num_shot * b_ts_tic);

t_sig  = (0:(t_stop))*(1/(Fadc));
% t_sig(end)

sig_t_trg = zeros(1, length(t_sig));
sig_t_pul_t = ones(1,num_shot);
sig_t_trg(1,1:20) = 1e1;
for i=1:num_shot-1
    sig_t_pul_t(i+1) = (i*pul_pt)+1;
    sig_t_trg(1,sig_t_pul_t(i+1)) = 1e1;
%     (sig_t_pul_t(i))-(sig_t_pul_t(i-1))
%     (t_sig(sig_t_pul_t(i+1))-t_sig(sig_t_pul_t(i)))/(1/85e6)    
end
sig_t_pul_t(num_shot+1) = length(t_sig)
for i = 1:num_shot-1
    sig_t_trg(1,sig_t_pul_t(i+1):sig_t_pul_t(i+1)+20) = 1e1;
end
sig_t_pul_t

% length(sig_t_pul_t)
% for i = 1:(num_shot-1)
%     (sig_t_pul_t(i+1))-(sig_t_pul_t(i))
% end
% t_sig(sig_t_pul_t)
% Checks gap length

% figure()
% plot(t_sig, sig_t_trg); grid on

% Math representation of the IF cavity ring output 
f_if = fc - flo;
f_if_prl = f_prl-flo;
sig_SIM_PRL = cos((2*pi*(f_if_prl)*(t_sig)) + (0));   % Simplified PRL signal in the adc for simulink


sig_SIM_IF    = zeros(1, length(t_sig));
sig_SIM_y_if  = zeros(1, length(t_sig));
sig_SIM_Ustep = zeros(1, length(t_sig));
sig_SIM_cav_ring_if = zeros(1, length(t_sig));
% sig_delay = (8*(1/Fsig))+0;
% sig_delay = t_delay;
% phi_err = (0:(2*pi/(num_shot)):2*pi)*(1/fc);
phi_err = zeros(1,num_shot);

tau_if = 1/(2*pi*bw/2);
f_if1 = f_if;
% f_if = 79e6;
t_edge = (sig_t_pul_t(2)-gap_pt);
for i = 1:(num_shot)
    sig_SIM_IF(sig_t_pul_t(i):(sig_t_pul_t(i+1)-gap_pt))   = cos((2*pi*f_if*(t_sig(1:t_edge)-phi_err(i))));         % 80.278MHz ring
    sig_SIM_y_if(sig_t_pul_t(i):(sig_t_pul_t(i+1)-gap_pt)) = exp(-(t_sig(1:t_edge)-phi_err(i))/tau_if);   % Cavity exp decay
    sig_SIM_Ustep(sig_t_pul_t(i):(sig_t_pul_t(i+1)-gap_pt)) = (t_sig(1:t_edge)-phi_err(i) >= phi_err(i));  % Delaying the start using a step function
%     sig_SIM_cav_ring_if(sig_t_pul_t(i):sig_t_pul_t(i+1)-1) = sig_SIM_IF(sig_t_pul_t(i):sig_t_pul_t(i+1)-1) .* ...
%         sig_SIM_Ustep(sig_t_pul_t(i):sig_t_pul_t(i+1)-1) .* sig_SIM_y_if(sig_t_pul_t(i):sig_t_pul_t(i+1)-1);
    sig_SIM_cav_ring_if(sig_t_pul_t(i):(sig_t_pul_t(i+1)-gap_pt)) = sig_SIM_IF(sig_t_pul_t(i):(sig_t_pul_t(i+1)-gap_pt)) .* ...
        sig_SIM_Ustep(sig_t_pul_t(i):(sig_t_pul_t(i+1)-gap_pt)) .* sig_SIM_y_if(sig_t_pul_t(i):(sig_t_pul_t(i+1)-gap_pt));
end
% sig_SIM_cav_ring_if = cos((2*pi*(f_if)*(t_sig)) + (0));   % Simplified PRL signal in the adc for simulink

% figure()
% plot(t_sig(1:20), sig_SIM_Ustep(1:20)); grid on; hold on
% for i = 2:(num_shot)
%     plot(t_sig(1:20), sig_SIM_Ustep(sig_t_pul_t(i):(sig_t_pul_t(i)+19)));
% end
% hold off;
figure()
plot(t_sig(sig_t_pul_t(1):sig_t_pul_t(2)-1), sig_SIM_cav_ring_if(sig_t_pul_t(1):sig_t_pul_t(2)-1));

% f_if = f_if1;
figure()
plot(t_sig, sig_SIM_cav_ring_if); grid on
% plot(t_sig, sig_t_trg);
% figure()
% plot(t_sig, sig_SIM_PRL); grid on


% Let's make a FIR LPF for after the complex multiply
f_lpf = 2e6;
w_lpf = f_lpf/(Fsig/2);
fir_lpf = fir1(15, w_lpf);
% figure(); freqz(fir_lpf); grid on

SYS_PRL = [t_sig', sig_SIM_PRL'];
SYS_CAV = [t_sig', sig_SIM_cav_ring_if'];
SYS_TRG = [t_sig', sig_t_trg'];
% close all;
