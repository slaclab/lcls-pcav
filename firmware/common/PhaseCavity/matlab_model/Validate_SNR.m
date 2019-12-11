% ####################################################################
% Filename: Validate_SNR.m
% Author: Chengcheng Xu (charliex@slac.stanford.ed)
% Date: 04/09/2019
% ####################################################################
% Testing the Signal to noise ratio (SNR) of the LLRF AMC Downconverter/upconverter/ADC card 
% PC_379_396_16 and PC_379_396_17
% 0dBm input signal power is required for each channel

close all
clear all

disp('Welcome to ATCA LLRF card SNR testing script')
disp('Testing mode')
disp('Both card - 1')
disp('Downconverter only - 2')
disp('Upconverter only - 3')
P.testmode = input('>> ', 's');

% disp('What is the PC number of the downconverter (i.e. PC_379_396_16_C03_A01)')
% P.DC_PC = input('>> ', 's');
% disp('What is the downconverter card serial number?')
% P.DC_SN = input('>> ', 's');
% disp('Enter the PC number of the upconverter (i.e. PC_379_396_17_C02_A01)')
% P.UC_PC = input('>> ', 's');
% disp('What is the upconverter card serial number?')
% P.UC_SN = input('>> ', 's');
P.DC_PC = 'PC_379_396_16_C03_A01';
P.DC_SN = '01';
P.UC_PC = 'PC_379_396_17_C02_A01';
P.UC_SN = '01';

P.ref_ch = input('Counting from the right, which port is your ref channel? (usually 1) ');
disp('Counting from the right, which ports do you want to test?');
disp('You can only test 5 other channels beside the ref channel');
disp('If less than 5 channels are entered, program will append channel 1 automatically')
disp('Separate the ch with , like 2,3,4,5,6');
P.CUT_s = input('>> ', 's');
P.CUT = str2num(P.CUT_s)-1;


prefix   = 'SIOC:B84:PC01:';
jesd     = 'AT:ATJ%i:JR:';
daqmux   = 'AT:DM%i:';
wave_eng = 'ACC:ACBsa:BWE%i:Wf:';
sysgen   = 'AT:AC:SMR:';
llrfhw   = 'AT:AC:Llrf';
attn     = {'DC:Att1','DC:Att0','DC:Att3','DC:Att2','DC:Att5','DC:Att4','UC:Att0','UC:Att1','UC:Att2','UC:Att3'}; % Attn PV LUT
FP_label = {'DC RF 2','DC RF 1','DC RF 4','DC RF 3','DC RF 6','DC RF 5','UC RF 2','UC RF 1','UC RF 3'}; % LUT for FP to channel

setup_err_bypass = 1;

tmp = strsplit(P.DC_PC, '_');
P.DC_style = tmp(end);
tmp = strsplit(P.UC_PC, '_');
P.UC_style = tmp(end);

% LCLS2 ADC - 1, LCLS1 ADC - 0;
if ~(strcmp(P.DC_style, P.UC_style))
    disp('Board frequency does not match, ending program')
    return
elseif (strcmp(P.DC_style, 'A03') | strcmp(P.DC_style, 'a03'))
    fs   = 351e6;
    P.f  = '2600MHz';
    f_lo = 2516.4e6;
else
    fs   = 357e6;
    f_lo = 2771e6;
    P.f  = '2856MHz';
end

adc_bit = 16;
adc_FS  = 2^(adc_bit); % Assuming 1 bit is used for sign bit
quant_noise = (6.02*adc_bit)+1.76;

% HW attn value LUT
% HMC624A has a inverse high attn value setting 6bit input with 0.5dB step.  0dB - 63, 0.5dB - 62 ... 31.5dB - 0
attn_key = linspace(63,0,64); 
attn_ary = 0:0.5:31.5;
% sig_chan = [2, 3, 4];  % Channels under test

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Reference select PVs for clockPll, adPll, loPll
% The channel selection follows
% channel 0-5 are Bay0 ADC
% channel 6-11 are Bay1 ADC
% Channel 10-11 are DC coupled (do not use for reference)
% Channel 12 is HS DAC output

ref_chan = P.ref_ch-1;
pll = {'adPll', 'loPll', 'clockPll'};
ref_sel = zeros(3,1);
for i = 1:3
   lcaPut([prefix, sysgen, pll{i} 'ReferenceSelect:St'], ref_chan);
   ref_sel(i) = lcaGet([prefix, sysgen, pll{i} 'ReferenceSelect:Rd']);
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Setting reference chan attn to 0dB
attn_pv1 = [prefix, llrfhw, attn{ref_chan+1}, ':SetValue:St'];
lcaPut(attn_pv1, 63)

% RAW ADC channel select
% channel 0-5 are Bay0 ADC
% channel 6-11 are Bay1 ADC
% Channel 10-11 are DC coupled.  
% Channel 12 is HS DAC output
channel = [ref_chan P.CUT];
while length(channel) < 6
    channel = [channel 0]
end

for i = 0:length(channel)-1
    i
    channel(i+1)
    lcaPut([prefix, sysgen, sprintf('debugStream%iSelect:St', i)], channel(i+1));
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Call Mitch's LLRF setup script
% Script will not keep going if setup_err returns 1
% If you wish to bypass this, please change setup_err_bypass to 1 in ln23
setup_err = llrf_cards(prefix);
P.setup_err = setup_err;
if (setup_err & ~setup_err_bypass)
    disp('One of the PLL could not lock');
    return
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% trigger DAQ, DaqMux triggers are tied together in FW, only need to
%    trigger a single bay
lcaPut([prefix, sprintf(daqmux,0), 'TriggerDaq:Ex'], 1)
%

% Get data from Streams [prefix, 'Stream%i']
[raw_adc amp phase] = getRfData(prefix);
raw_t = [1:size(raw_adc,1)]./(357);
pa_t  = [1:size(amp,1)]./(357/20);

raw_adc = raw_adc(50:end,:);  % Trimming off the first 50 sample, they are timing information


[sample_n chan] = size(raw_adc);

t = 1:1:sample_n;

% Doing the FFT to get frequency domain 
NFFT = 2^nextpow2(sample_n);
fft_gain = 10*log10(NFFT/2);
P.fft_gain = fft_gain;
fft_f_bin = fs/NFFT; % Frequency bin size
P.fft_f_bin = fft_f_bin;

data_FS = raw_adc / adc_FS;
for i = 1:chan
    data_FS(:,i) = data_FS(:,i)-mean(data_FS(:,i));
end

% Let's apply a blackman window
cc   = 1/0.42;    % correction coefficient
w=(0.42) - (0.5*(cos(2*pi*(1:sample_n)'/(sample_n+1)))) + ((0.08)*(cos(4*pi*(1:sample_n)'/(sample_n+1))));
%end of Blackman

Y = fft(data_FS .* w, NFFT) *2*cc / sample_n;
f = (fs/2)*(linspace(0,1,NFFT/2));

data_f_amp = 2 * abs(Y(1:NFFT/2,:));
data_f_dB  = 20*log10(data_f_amp);

% Calculating the SNR
sig_ind = zeros(chan,1);
sig_rms = zeros(chan,1);
sig_dBFS= zeros(chan,1);
noise_dB= zeros(chan,1);
SNR     = zeros(chan,1);
SNR_no_fft_gain = zeros(chan,1);
sig_band = 20;  % +/- number of points to be taken off from the signal index 
data_noise_spec = zeros(length(data_f_amp)-(2*sig_band)+1,chan);  % Create the noise sepctrum for efficiency before the loop
for i = 1:chan
    sig_ind(i) = find(data_f_amp(:,i)==max(data_f_amp(20:end-20,i)));
    sig_rms(i) = max(data_f_amp(20:end-20,i))/(sqrt(2));
    data_noise_spec(:,i) = cat(2, data_f_amp(1:(sig_ind-sig_band),i)', data_f_amp((sig_ind+sig_band):end,i)')';
    noise_dB(i) = 20*log10(rms(data_noise_spec(:,i)));
    sig_dBFS(i) = data_f_dB(sig_ind(i),i);
    SNR(i) = data_f_dB(sig_ind(i),i)-noise_dB(i)-fft_gain;
    SNR_no_fft_gain(i) = data_f_dB(sig_ind(i),i)-noise_dB(i);
end
P.noise_dB = noise_dB;
P.SNR = SNR;
P.sig_dBFS = sig_dBFS;

% Find the other peaks in the spectrum
data_ps = data_f_dB;  % Creating new data array for peak search - data_ps
peak_thres = -90;     % Peak much be bigger than this dBFS value to pass
pk_num = 15;
pk_dB = zeros(chan,pk_num);
pk_f  = zeros(chan,pk_num);
figure()
for i = 1:chan
    [a, b] = findpeaks(data_ps(:,i), f, 'MinPeakDistance', 1e6, 'MinPeakHeight', peak_thres);
    if length(a) >= pk_num
        a = a(1:pk_num);
        b = b(1:pk_num);
    end
    pad = pk_num - length(a);
    pk_dB(i,:) = [a' zeros(1,pad)];
    pk_f(i,:)  = [b zeros(1,pad)];
    subplot(2,3,i);
    findpeaks(data_ps(:,i), f, 'MinPeakDistance', 1e6, 'MinPeakHeight', peak_thres)
    xlim([0 fs/(2)])
    ylim([-174 10])
    title(['Spectrum plot for chan ' FP_label(channel(i)+1)])
    set(get(gca, 'XLabel'), 'String', 'Frequency (Hz)');
    set(get(gca, 'YLabel'), 'String', 'dB Fullscale (dB)');
    j = 1;
    while j <= length(pk_num)
        text(pk_f(i,j), pk_dB(i,j), ['P' num2str(j)])
        disp(['Channel ' FP_label{channel(i)+1} ', Pk' num2str(j) ' frq: ' num2str(round(pk_f(i,j)/(1e6),3)) 'MHz    |    ' 'pwr: ' num2str(pk_dB(i,j)) 'dBFS'])
        j = j+1;
    end
    disp('    ')
    grid on    
end


for i = 1:chan
    disp('//////////////////////////////////')
    disp([FP_label{channel(i)+1} ' SNR: ' num2str(SNR(i)) 'dB'])
    disp('//////////////////////////////////')
    disp('   ')
end

figure()
for i = 1:chan
    subplot(2,3,i);
    plot(raw_adc(:,i))
    title(['Raw signal from adc ' (FP_label(channel(i)+1))])
    grid on
end

DC_sig = (find(P.CUT<=5));
UC_sig = (find(P.CUT>5));
if (strcmp(P.testmode, '1') | strcmp(P.testmode, '2'))
    fn_DC = ['SNR_test_' P.DC_PC '_' P.DC_SN '_' datestr(now,'yy_mm_dd_HH_MM_SS') '.txt'];
    file_DC = fopen(fn_DC, 'w+');
    fprintf(file_DC, 'Model, %s\nSN, %s\nDate, %s\nReference channel, %s\n' ...
    , P.DC_PC, P.DC_SN,datestr(now,'yy_mm_dd_HH_MM_SS'), num2str(P.ref_ch));
    for i = 1:length(DC_sig)
        fprintf(file_DC,'Signal channel, %d\nSNR, %.3f\nNoise floor, %.3f\nSignal Pwr, %.3f\n' ...
        , (P.CUT(DC_sig(i))+1), (P.SNR(DC_sig(i)+1)), (P.noise_dB(DC_sig(i)+1)), (P.sig_dBFS(DC_sig(i)+1)));
    end
    fclose(file_DC);
end

if (strcmp(P.testmode, '1') | strcmp(P.testmode, '3'))
    fn_UC = ['SNR_test_' P.UC_PC '_' P.UC_SN '_' datestr(now,'yy_mm_dd_HH_MM_SS') '.txt'];
    file_UC = fopen(fn_UC, 'w+');
    fprintf(file_UC, 'Model, %s\nSN, %s\nDate, %s\nReference channel, %s\n' ...
    , P.UC_PC, P.UC_SN,datestr(now,'yy_mm_dd_HH_MM_SS'), num2str(P.ref_ch));
    for i = 1:length(UC_sig)
        fprintf(file_UC,'Signal channel, %d\nSNR, %.3f\nNoise floor, %.3f\nSignal Pwr, %.3f\n' ...
        , (P.CUT(UC_sig(i))+1), (P.SNR(UC_sig(i)+1)), (P.noise_dB(UC_sig(i)+1)), (P.sig_dBFS(UC_sig(i)+1)));
    end
    fclose(file_UC);
end

% figure()
% for i = 1:chan
%     subplot(2,3,i);
%     plot(f/(1e6), data_f_dB(:,i))
%     xlim([0 fs/(2*1e6)])
%     ylim([-174 0])
%     title(['Spectrum plot for chan ' FP_label(channel(i)+1)])
%     set(get(gca, 'XLabel'), 'String', 'Frequency (MHz)');
%     set(get(gca, 'YLabel'), 'String', 'dB Fullscale (dB)');
%     grid on
% end
