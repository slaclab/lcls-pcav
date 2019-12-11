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
t_start = -1e-9;    % x axis start time
t_stop  = 10e-6;     % x axis stop time
t_delay = 0.5e-6;   % Delaying the start of the pulse
t_delay = 0;   % Delaying the start of the pulse
t  = (t_start):(Ts):(t_stop);          % x axis
adc_t = (t_start):(1/fadc):(t_stop);   % ADC CLK x axis

jitter_amt = 100e-12;
jitter_t = (t_start+jitter_amt):(1/fadc):(t_stop+jitter_amt);

% Simulating the phase cavity as a 2nd order bpf
tfcav = tf([wc/q, 0], [1, wc/q, (wc^2)]);
cav_out = impulse(tfcav, t);  % Simulating the cavity ring output
cav_out = cav_out./(max(cav_out));

% Phase reference line signal
PRL_rf  = cos((2*pi*f_prl*(t)) + (0));    % PRL RF

figure();
plot(t, PRL_rf); grid on
title(['PRL Signal']);
xlabel('Time (s)');

% Math representation of the cavity ring output 
tau = 1/(2*pi*bw/2);            % Time constant
rf = cos(2*pi*fc*(t-t_delay));  % 2851MHz ring
y = exp(-(t-t_delay)/tau);      % Cavity exp decay
Ustep = (t >= t_delay);         % Unity step
cav_ring = rf .* Ustep .* y;    % Creating the cavity ring

figure()
plot(t, cav_ring); grid on
plot(t, rf); hold on
plot(t, y);
plot(t, Ustep); 
plot(t, cav_ring); hold off; grid on 

% Math representation of the IF cavity ring output 
f_if = 80.278e6;
tau_if = 1/(2*pi*bw/2);
IF = cos(2*pi*f_if*(t-t_delay));   % 80.278MHz ring
y_if = exp(-(t-t_delay)/tau_if);   % Cavity exp decay
Ustep = (t >= t_delay);            % Delaying the start
cav_ring_if = IF .* Ustep .* y_if;

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
opt = c2dOptions('Method','matched','FractDelayApproxOrder', 3);
ext_bpfz = c2d(ext_bpf, (Ts), opt);
figure()
P = bodeoptions('cstprefs');
P.Xlim = [2.7, 3.0];
P.FreqUnits = 'GHz';
P.Title.String = 'Ext RF filter';
P.Grid = 'on';
bodeplot(ext_bpf, ext_bpfz, 'x',P);

% T_test = (1/(100e9));
% ext_bpf_bw = [lp_w hp_w];
% [z_bpf_Num, z_bpf_Den] = butter(6, ext_bpf_bw./(2*pi*10000e9), 'bandpass');

% z_bpf_tf = tf(z_bpf_Num, z_bpf_Den);
% opt = c2dOptions('Method','matched','FractDelayApproxOrder', 3);
% ext_bpfz = c2d(ext_bpf, (T_test), opt);
% bpf_ss = ss(ext_bpf);
% bpf_test = c2d(bpf_ss, (T_test), 'matched');
% P = bodeoptions('cstprefs');
% P.Xlim = [2.7, 3.0];
% P.FreqUnits = 'GHz';
% P.Title.String = 'Ext RF filter';
% P.Grid = 'on';
% figure()
% bodeplot(ext_bpf, bpf_test, 'x', P);

% Q = bodeoptions('cstprefs');
% Q.FreqUnits = 'GHz';
% Q.Grid = 'on';
% figure()
% bodeplot(z_bpf_tf, Q);

% figure()
% Q = bodeoptions('cstprefs');
% Q.Xlim = [2.0, 6.0];
% Q.FreqUnits = 'GHz';
% Q.Title.String = 'Ext RF filter';
% Q.Grid = 'on';
% bodeplot(ext_bpfz, 'x',Q);

% ext_bpf_out = filter(ext_bpfz.Num{1}, ext_bpfz.Den{1}, cav_ring);
% ext_bpf_norm = ext_bpf_out/(max(ext_bpf_out));

% figure()
% plot(t, ext_bpf_norm); grid on
% % xlim([t_delay, t_delay+(0.2e-7)]);
% xlabel('Time (s)')
% return

% figure()
% plot(t, cav_ring, 'x'); grid on; hold on;
% plot(t, ext_bpf_norm, 'rx'); hold off;
% % title('Simulated cavity output')
% xlabel('Time (s)')

% ATCA RF input filters
% Simulating a minicircuit LPF, assuming it is 2nd order
lp_f = 3.0e9;
lp_w = 2*pi*lp_f;
lp_zeta = 0.707;
lp_num  = [0, lp_w^2];
lp_den  = [1, (2*lp_zeta*lp_w), lp_w^2];
atca_lp = tf(lp_num, lp_den);
% atca_lpz= c2d(atca_lp, Ts);

% Simulating a minicircuit HPF, assuming it is 2nd order
hp_f = 2.5e9;
hp_w = 2*pi*hp_f;
hp_zeta = lp_zeta;
hp_num  = [1, 0 ,0];
hp_den  = [1, (2*hp_zeta*hp_w), hp_w^2];
atca_hp = tf(hp_num, hp_den);
% atca_hpz= c2d(atca_hp, Ts);

% Combine the LPF and HPF into the BPF TF
atca_bp = atca_lp * atca_hp;
atca_bpz= c2d(atca_bp, Ts);

% ATCA RF bandpass filter generated using matlab filter generator
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

% figure()
% bode(atca_lp); grid on
% figure()
% bode(atca_hp); grid on
% Passing signal through the RF filters
% hp_out = filter(atca_hp.Num{1}, atca_hp.Den{1}, cav_ring);
% lp_out = filter(atca_lp.Num{1}, atca_lp.Den{1}, hp_out);

% =======================================================================
% Varying the beam arrival (t_delay) to see phase changes or varying the cavity 
% frequency.  This will be put into a loop so the affect can be observed
% Assumming copper thermal expansion to be ~2e-5/degC UND temp swing at 
% +/-0.1degC
% =======================================================================
freqOtime = 2;    % Choosing between freq sweep or arrival sweep
% 2 - jitter
% 1 - freq
% 0 - time

jitter_amt = 100e-12;
jitter_t = (t_start+jitter_amt):(1/fadc):(t_stop+jitter_amt);

temp_swing = 0.1;
Cu_thermal = 1.78e-5;
f_swing = temp_swing * Cu_thermal * fc;  % Max cavity freq change base on temp
t_step = 10e-12;

switch freqOtime
case 0  % beam jitter
    t_delay_ary = 0:t_step:10e-12;
    fc_ary = 0;
    loop_size = length(t_delay_ary);
case 1  % freq change
    fc_step = 1;    % Define how many points we want
    fc_ary = 0:(f_swing/fc_step):f_swing;    % Array of freq changes
    fc_ary = 0;
    t_delay_ary = 0;
    loop_size = length(fc_ary);
case 2  % trigger jitter
    jit_step = 10e-9;
    jit_ary = 0*(jit_step):jit_step:10*(jit_step);
    t_delay_ary = 0;
    fc_ary = 0;
    jit_t_ary = zeros(length(jit_ary), length(adc_t));
    IF_jit_ary = zeros(length(jit_ary), length(adc_t));
    PRL_jit_ary = zeros(length(jit_ary), length(adc_t));
    loop_size = length(jit_ary);
end
% figure(); plot(jit_t_ary); grid on;

% Phase reference line signal
PRL_rf  = cos((2*pi*f_prl*(t)) + (0));    % PRL RF

cav_phi = zeros(1, loop_size);
diff_phi = zeros(1, loop_size);

for i = 1:loop_size
% Math representation of the cavity ring output 
    % if freqOtime
    %     % Step in freq
    %     rf = cos(2*pi*(fc+fc_ary(i))*(t-t_delay));  % 2851MHz ring
    %     y = exp(-(t-t_delay)/tau);      % Cavity exp decay
    %     Ustep = (t >= t_delay);         % Unity step
    %     cav_ring = rf .* Ustep .* y;    % Creating the cavity ring
    %     freq_err = fc_ary(i)
    % else
    %     % Step in arrival
    %     rf = cos(2*pi*fc*(t-(t_delay+t_delay_ary(i))));  % 2851MHz ring
    %     y = exp(-(t-(t_delay+t_delay_ary(i)))/tau);      % Cavity exp decay
    %     Ustep = (t >= (t_delay+t_delay_ary(i)));         % Unity step
    %     cav_ring = rf .* Ustep .* y;    % Creating the cavity ring
    %     time_delay = (t_delay+t_delay_ary(i))
    % end

    switch freqOtime
    case 0
        % Step in arrival
        rf = cos(2*pi*fc*(t-(t_delay+t_delay_ary(i))));  % 2851MHz ring
        y = exp(-(t-(t_delay+t_delay_ary(i)))/tau);      % Cavity exp decay
        Ustep = (t >= (t_delay+t_delay_ary(i)));         % Unity step
        cav_ring = rf .* Ustep .* y;    % Creating the cavity ring
        time_delay = (t_delay+t_delay_ary(i))
    case 1
        % Step in freq
        rf = cos(2*pi*(fc+fc_ary(i))*(t-t_delay));  % 2851MHz ring
        y = exp(-(t-t_delay)/tau);      % Cavity exp decay
        Ustep = (t >= t_delay);         % Unity step
        cav_ring = rf .* Ustep .* y;    % Creating the cavity ring
        freq_err = fc_ary(i)
    case 2
        % Step in adc jitter
        rf = cos(2*pi*fc*(t-t_delay));
        y = exp(-(t-t_delay)/tau);      % Cavity exp decay
        Ustep = (t >= t_delay);         % Unity step
        cav_ring = rf .* Ustep .* y;    % Creating the cavity ring
        jitter_amt = jit_ary(i);
        jitter_t = (t_start+jitter_amt):(1/fadc):(t_stop+jitter_amt);
        jit_t_ary(i,:) = jitter_t;
        
    end

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

    % Plot a bunch stuff for sanity check
    % figure()
    % plot(t, cav_ring, 'x'); grid on;
    % title('Simulated cavity output')
    % xlabel('Time (s)')
    % figure()
    % meanfreq(cav_ring, fs); grid on

    % figure()
    % plot(t, ext_bpf_out, 'x'); grid on;
    % title('Ext bpf output')
    % xlabel('Time (s)')
    % figure()
    % meanfreq(ext_bpf_out, fs); grid on

    % figure()
    % plot(t, lp_out); grid on;
    % title('RF after 2nd order butterworth BPF')
    % xlabel('Time (s)')

    % figure()
    % plot(t, mixer); grid on;
    % title('Mixer IF output signal');
    % xlabel('Time (s)')

    % figure()
    % plot(t, IF_rf_norm); grid on
    % title('Cavity IF after 3rd order butterworth BPF')
    % xlabel('Time (s)')

    % figure()
    % plot(t, IF_PRL_norm); grid on
    % title('PRL IF after 3rd order butterworth BPF')
    % xlabel('Time (s)')

    % figure()
    % meanfreq(IF_rf_norm, fs); hold on;
    % meanfreq(IF_PRL_norm, fs); hold off; grid on
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % Start of the ADC sampled DSP
    % IF_adc = downsample(IF_rf_norm, fs2fadc);
    % PRL_adc = downsample(IF_PRL_norm, fs2fadc);
    IF_adc_inp = interp1(t, IF_rf_norm, adc_t, 'makima');
    PRL_adc_inp = interp1(t, IF_PRL_norm, adc_t, 'makima');

    IF_adc_jit = interp1(t, IF_rf_norm, jitter_t, 'makima');
    PRL_adc_jit = interp1(t, IF_PRL_norm, jitter_t, 'makima');
    IF_jit_ary(i,:) = IF_adc_jit;
    PRL_jit_ary(i,:) = PRL_adc_jit;

    % T = llrf_demod_types('fixed');
    % input_fixed = cast(PRL_adc, 'like', T.x);

    % [y, scale]  = llrf_demod(input_fixed, T);
    % y           = double(y)/scale;
    % figure()
    % plot(y);


    % figure()
    % plot(adc_t, IF_adc); grid on
    % title('Sampled IF at Fs = 357e6Hz')
    % xlabel('Time (s)')

    IF_adcf = meanfreq(IF_adc_inp, fadc);

    % figure()
    % meanfreq(IF_jit_ary(1,:), fadc); hold on;
    % meanfreq(PRL_jit_ary(1,:), fadc);  hold off; grid on

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Envelope detection
    % Using an asynch full-wave detection
    % wave -> abs -> LPF

    IF_abs = abs(IF_adc_inp);
    ED_f = 1e6/(fadc);   % Filter 3dB f = 1MHz
    ED_w = ED_f*2*pi;
    [ED_lpf_Num, ED_lpf_Den] = butter(1, ED_w, 'low');
    ED_lpf = tf(ED_lpf_Num, ED_lpf_Den);

    ED_out = filtfilt(ED_lpf_Num, ED_lpf_Den, IF_abs);
    ED_norm = ED_out/(max(ED_out));
    IF_shaped = ED_norm .* IF_adc_inp;    
    IF_jit_shaped = ED_norm .* IF_jit_ary(i,:);

    % figure()
    % plot(adc_t, IF_jit_shaped); grid on
    % title("Shaped cavity signal");
    % xlabel('Time (s)');
    % xlim(['0, 3e-6']);


    % Window threshold        
    switch freqOtime
    case 0  % beam jitter
        window_thres = [0, 9e-6];
    case 1  % freq change
        window_thres = [t_delay, 4e-6];
    case 2  % trigger jitter
        window_thres = [0+jitter_amt, 9e-6+jitter_amt];
    end

    window_ind(1) = find(adc_t >= window_thres(1), 1);
    window_ind(2) = find(adc_t >= window_thres(2), 1);

    window_jit(1) = find(jitter_t >= window_thres(1), 1);
    window_jit(2) = find(jitter_t >= window_thres(2), 1);

    % % Sanity checking plots
    % figure()
    % plot(adc_t, IF_adc); hold on
    % plot(adc_t, ED_norm); 
    % plot(adc_t, IF_shaped); hold off; grid on
    % title('Envelope detector output')
    % xlabel('Time (s)')

    % figure()
    % plot(adc_t(1,window_ind(1):window_ind(end)), IF_adc(1,window_ind(1):window_ind(end))); hold on
    % plot(adc_t(1,window_ind(1):window_ind(end)), ED_norm(1,window_ind(1):window_ind(end))); 
    % plot(adc_t(1,window_ind(1):window_ind(end)), IF_shaped(1,window_ind(1):window_ind(end))); hold off; grid on
    % title('Windowed signal')
    % xlabel('Time (s)')

    % figure()
    % plot(adc_t, ED_out); grid on; 

    % Let's add some AWG to our noiseless system
    noise_SNR = -80;
    noise_amp = (10^(noise_SNR/20))*(max(IF_shaped));
    AWG = rand(1, length(adc_t))*noise_amp;
    IF_noised = IF_shaped + AWG;
    IF_jit_noised = IF_jit_shaped + AWG;

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % DDC LO setup
    Cav_DDC_f = 4.7252e6;    % Cavity RF freq = 2851.3MHz, LO = 2771, and IF is 80.3MHz 
    LLRF_DDC_f = 85e6;    % PRL RF freq = 2856MHz, LO = 2771, and IF is 85MHz 
    Cav_DDC_cos = cos(2*pi*Cav_DDC_f*jit_t_ary(i,:));
    Cav_DDC_sin = sin(2*pi*Cav_DDC_f*jit_t_ary(i,:));

    LLRF_DDC_cos = cos(2*pi*LLRF_DDC_f*adc_t);
    LLRF_DDC_sin = sin(2*pi*LLRF_DDC_f*adc_t);

    % figure()
    % plot(adc_t(1:20), Cav_DDC_cos(1:20)); hold on
    % plot(adc_t(1:20), Cav_DDC_sin(1:20)); hold off; grid on
    % title('Cavity DDC LO');

    % DDC cavity signal
    IF_I = LLRF_DDC_cos .* IF_noised;
    IF_Q = LLRF_DDC_sin .* IF_noised;

    IFN_I = LLRF_DDC_cos .* IF_jit_noised;
    IFN_Q = LLRF_DDC_sin .* IF_jit_noised;

    % DDC PRL signal
    PRL_I = LLRF_DDC_cos .* PRL_adc_jit;
    PRL_Q = LLRF_DDC_sin .* PRL_adc_jit;


    DDC_lpf = 20e6/(fadc);   % Filter 3dB f = 10MHz
    DDC_w = DDC_lpf*2*pi;
    [DDC_lpf_Num, DDC_lpf_Den] = butter(1, DDC_w, 'low');
    DDC_lpf = tf(DDC_lpf_Num, DDC_lpf_Den);

    IF_I_lp = filtfilt(DDC_lpf_Num, DDC_lpf_Den, IF_I);
    IF_Q_lp = filtfilt(DDC_lpf_Num, DDC_lpf_Den, IF_Q);

    PRL_I_lp = filtfilt(DDC_lpf_Num, DDC_lpf_Den, PRL_I);
    PRL_Q_lp = filtfilt(DDC_lpf_Num, DDC_lpf_Den, PRL_Q);

    IFN_I_lp = filtfilt(DDC_lpf_Num, DDC_lpf_Den, IFN_I);
    IFN_Q_lp = filtfilt(DDC_lpf_Num, DDC_lpf_Den, IFN_Q);

    % figure(); plot(adc_t, PRL_I_lp); grid on; hold on;
    % plot(adc_t, PRL_Q_lp); hold off; xlim([0, 2.5e-6])
    
    % figure(); plot(adc_t, IF_Q_lp); grid on; hold on;
    % plot(adc_t, IF_I_lp); hold off; xlim([0, 2.5e-6])

    % figure(); meanfreq(IF_Q_lp, fadc); hold on; meanfreq(Cav_DDC_sin, fadc); hold off;    

    % complex downmix
    CLO = exp(-1i*(2*pi*Cav_DDC_f)*jit_t_ary(i,:));

    DDC_CLO = exp(-1i*(2*pi*LLRF_DDC_f)*jit_t_ary(i,:));
    PRL_IF  = PRL_adc_jit .* DDC_CLO;

    IF_com = IF_I_lp +(IF_Q_lp*1i);

    DC_com = IF_com .* CLO;

    IFdc_I = Cav_DDC_cos .* IF_I_lp;
    IFdc_Q = Cav_DDC_sin .* IF_Q_lp;

    % figure(); plot(adc_t, IFdc_Q); grid on; hold on;
    % plot(adc_t, IFdc_I); hold off; xlim([0, 2.5e-6])

    cav_dc_I = Cav_DDC_cos .* IFN_I_lp;
    cav_dc_Q = Cav_DDC_sin .* IFN_Q_lp;

    % figure(); meanfreq(cav_dc_Q, fadc); hold on; meanfreq(cav_dc_I, fadc); hold off;  xlim([0, 10]);

    Cav_DDC_lpf = 1e2/(fadc);   % Filter 3dB f = 1kHz
    DDC_w = Cav_DDC_lpf*2*pi;
    [Cav_DDC_lpf_Num, Cav_DDC_lpf_Den] = butter(1, DDC_w, 'low');
    Cav_DDC_lpf = tf(Cav_DDC_lpf_Num, Cav_DDC_lpf_Den);

    jit_cav_dc_I = filtfilt(Cav_DDC_lpf_Num, Cav_DDC_lpf_Den, cav_dc_I);
    jit_cav_dc_Q = filtfilt(Cav_DDC_lpf_Num, Cav_DDC_lpf_Den, cav_dc_Q);

    IF_I_lp1 = filtfilt(Cav_DDC_lpf_Num, Cav_DDC_lpf_Den, IFdc_I);
    IF_Q_lp1 = filtfilt(Cav_DDC_lpf_Num, Cav_DDC_lpf_Den, IFdc_Q);

    % figure(); meanfreq(IF_Q_lp1, fadc); hold on; meanfreq(IF_I_lp1, fadc); hold off;

    % figure(); plot(adc_t, IF_Q_lp1); grid on; hold on;
    % plot(adc_t, IF_I_lp1); hold off; xlim([0, 10e-6]);

    jit_cav_phi_plot(i,:) = atan2(jit_cav_dc_Q, jit_cav_dc_I);

    cav_phi_plot(i,:) = atan2(IF_Q_lp, IF_I_lp);
    prl_phi_plot(i,:) = atan2(PRL_Q_lp, PRL_I_lp);

    jit_IF_I_int = sum(jit_cav_dc_I(window_jit(1):window_jit(end)));
    jit_IF_Q_int = sum(jit_cav_dc_Q(window_jit(1):window_jit(end)));

    IF_I_int  = sum(IF_I_lp(1,window_ind(1):window_ind(end)));
    IF_Q_int  = sum(IF_Q_lp(1,window_ind(1):window_ind(end)));
    PRL_I_int = sum(PRL_I_lp(1,window_ind(1):window_ind(end)));
    PRL_Q_int = sum(PRL_Q_lp(1,window_ind(1):window_ind(end)));

    jit_IF_int_phi = atan2(jit_IF_Q_int, jit_IF_I_int);
    PRL_int_phi = atan2(PRL_Q_int, PRL_I_int);
    IF_int_phi  = atan2(IF_Q_int, IF_I_int);
    phi_diff_int = IF_int_phi - PRL_int_phi;

    cav_phi(1,i) = IF_int_phi;
    prl_phi(1,i) = PRL_int_phi;
    diff_phi(1,i) = phi_diff_int;

    PRL_phi = atan2(PRL_Q_lp, PRL_I_lp);
    IF_phi = atan2(IF_Q_lp, IF_I_lp);
    phi_diff = (IF_phi - PRL_phi)/pi;

    % figure()
    % subplot(2,1,1)
    % plot(adc_t(1,window_ind(1):window_ind(end)), PRL_phi(1,window_ind(1):window_ind(end))); grid on
    % title('PRL IF phase')
    % xlabel('Time (s)')
    % subplot(2,1,2)
    % plot(adc_t(1,window_ind(1):window_ind(end)), IF_phi(1,window_ind(1):window_ind(end))); grid on
    % title(['Cavity IF phase delay ' num2str((t_delay+t_delay_ary(i)))])
    % xlabel('Time (s)')

    % figure()
    % subplot(2,1,1)
    % plot(adc_t(1,window_ind(1):window_ind(end)), PRL_adc(1,window_ind(1):window_ind(end))); grid on
    % title('PRL IF signal')
    % xlabel('Time (s)')
    % subplot(2,1,2)
    % plot(adc_t(1,window_ind(1):window_ind(end)), IF_noised(1,window_ind(1):window_ind(end))); grid on
    % title(['Cavity IF delay ' num2str((t_delay+t_delay_ary(i)))])
    % xlabel('Time (s)')
end

figure();
plot(t, IF_rf_norm, 'Linewidth',4); grid on; hold on;
for i = 1:3
    plot(jit_t_ary(i,:), IF_jit_ary(i,:), ':+', 'Linewidth',4); 
end
hold off; xlim([t_delay+(50e-9), t_delay+70e-9]);
legend('Raw waveform', ['clk jitter by ' num2str(jit_ary(1))], ['clk jitter by ' num2str(jit_ary(2))], ['clk jitter by ' num2str(jit_ary(3))])
title('ADC CLK jitter effect');
xlabel('Time (s)');

figure()
plot(jit_t_ary(1,:), jit_cav_phi_plot(1,:)); grid on; hold on;
plot(adc_t, cav_phi_plot(1,:)); hold off

figure()
plot(adc_t, prl_phi_plot(1,:)); grid on

% plot(adc_t, IF_adc_inp); grid on; hold on;
% plot(t, IF_rf_norm);
% plot(jit_t_ary(4,:), IF_jit_ary(4,:), ':.'); hold off; 
% xlim([t_delay, t_delay+80e-9])
% figure();
% plot(adc_t, PRL_adc_inp, '+-'); grid on; hold on;
% plot(jit_t_ary(2,:), PRL_jit_ary(2,:), ':.'); hold off; 
% xlim([0, 40e-9])

return

% Plot a bunch stuff for sanity check
figure()
plot(t, cav_ring, 'x'); grid on;
title('Simulated cavity output')
xlabel('Time (s)')

figure()
plot(t, ext_bpf_out, 'x'); grid on;
title('Ext bpf output')
xlabel('Time (s)')

figure()
plot(t, IF_rf_norm); grid on
title('Cavity IF after 3rd order butterworth BPF')
xlabel('Time (s)')

% if freqOtime
%     figure()
%     for i = 1:(loop_size)
%         plot(adc_t(window_ind(1):window_ind(end)), cav_phi_plot(i,window_ind(1):window_ind(end)));hold on; grid on
%         plot(adc_t(window_ind(1):window_ind(end)), prl_phi_plot(i,window_ind(1):window_ind(end)));
%         title('Cavity phase as cav freq change');
%         xlabel('Time (s)');
%         ylabel('Phase in radian +/-pi');
%     end
%     hold off;
%     figure()
%     plot((fc_ary), cav_phi(1,:)); grid on;
%     title('Cav Freq change vs integrated phase');
%     xlabel('Cavity frequency change (Hz)');
%     ylabel('');
% else
%     figure()
%     plot(((t_delay+t_delay_ary)/(1e-9)), cav_phi, ':.'); grid on; hold on;
%     plot(((t_delay+t_delay_ary)/(1e-9)), prl_phi);
%     title('Integrated cavity phase');
%     xlabel('Time delay (ps)');
%     ylabel('Phase in radian +/-pi');

%     figure()
%     plot(adc_t(window_ind(1):window_ind(end)), cav_phi_plot(1,window_ind(1):window_ind(end)));hold on; grid on
%     plot(adc_t(window_ind(1):window_ind(end)), prl_phi_plot(1,window_ind(1):window_ind(end)));
%     title('Beam arrival vs integrated phase');
%     xlabel('Cavity frequency change (Hz)');
%     ylabel('');
% end
% figure()
% plot(PRL_I_lp(1,window_ind(1):window_ind(end)),PRL_Q_lp(1,window_ind(1):window_ind(end)), 'x'); grid on
% title('PRL I vs Q')

% figure()
% plot(IF_I_lp(1,window_ind(1):window_ind(end)),IF_Q_lp(1,window_ind(1):window_ind(end)), 'x'); grid on
% title('Cavity I vs Q')



% figure()
% plot(adc_t(1,window_ind(1):window_ind(end)), phi_diff(1,window_ind(1):window_ind(end))); grid on
% title('Phase difference normalized by pi')

% ftest = 5e6;
% pi_cycle = 10;
% pt_p_2pi = 2000;
% testx = 0:(2*pi/pt_p_2pi):(pi*(pi_cycle));
% Itest = cos(2*pi*ftest*testx);
% Qtest = sin(2*pi*ftest*testx);

% phi_plot = atan2(Qtest,Itest);
% I_int1 = sum(Itest(1:50));
% Q_int1 = sum(Qtest(1:50));
% I_int2 = sum(Itest(1:150));
% Q_int2 = sum(Qtest(1:150));
% phi_int1 = atan2(Q_int1, I_int1)
% phi_int2 = atan2(Q_int2, I_int2)
% pi_ind = find(testx==pi);


% figure()
% plot(testx, phi_plot); grid on; 

% figure()
% plot(testx(1:pi_ind), Itest(1:pi_ind)); grid on; hold on;
% plot(testx(1:pi_ind), Qtest(1:pi_ind)); hold off;

