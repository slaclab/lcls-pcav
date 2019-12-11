% ####################################################################
% Filename: Iso_test.m
% Author: Chengcheng Xu (charliex@slac.stanford.ed)
% Date: 03/21/2019
% ####################################################################

close all
clear all

prefix   = 'SIOC:B84:PC01:';
jesd     = 'AT:ATJ%i:JR:';
daqmux   = 'AT:DM%i:';
wave_eng = 'ACC:ACBsa:BWE%i:Wf:';
sysgen   = 'AT:AC:SMR:';
llrfhw   = 'AT:AC:Llrf';
attn     = {'DC:Att1','DC:Att0','DC:Att3','DC:Att2','DC:Att5','DC:Att4','UC:Att0','UC:Att1','UC:Att2','UC:Att3'}; % Attn PV LUT
FP_label = {'DC RF 2','DC RF 1','DC RF 4','DC RF 3','DC RF 6','DC RF 5','UC RF 2','UC RF 1','UC RF 3'}; % LUT for FP to channel

setup_err_bypass = 1;

style = 0; % LCLS2 ADC - 1, LCLS1 ADC - 0;
if style
    fs   = 351e6;
    f_lo = 2516.4e6;
else
    fs   = 357e6;
    f_lo = 2771e6;
end

adc_bit = 16;
adc_FS  = 2^(adc_bit); % Assuming 1 bit is used for sign bit
quant_noise = (6.02*adc_bit)+1.76;

% HW attn value LUT
% HMC624A has a inverse high attn value setting 6bit input with 0.5dB step.  0dB - 63, 0.5dB - 62 ... 31.5dB - 0
attn_key = linspace(63,0,64); 
attn_ary = 0:0.5:31.5;
% sig_chan = [2, 3, 4];  % Channels under test
sig_chan = 1; % input channel

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Reference select PVs for clockPll, adPll, loPll
% The channel selection follows
% channel 0-5 are Bay0 ADC
% channel 6-11 are Bay1 ADC
% Channel 10-11 are DC coupled (do not use for reference)
% Channel 12 is HS DAC output
ref_chan = 0;
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
channel = [0 1 2 3 4 5];
sig_chan_ind = find(channel == sig_chan);
for i = 0:5
    lcaPut([prefix, sysgen, sprintf('debugStream%iSelect:St', i)], channel(i+1));
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Call Mitch's LLRF setup script
% Script will not keep going if setup_err returns 1
% If you wish to bypass this, please change setup_err_bypass to 1 in ln19
setup_err = llrf_cards(prefix);
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
[raw_adc amp phase] = getRfData(prefix(1:end-1));
raw_t = [1:size(raw_adc,1)]./(357);
pa_t  = [1:size(amp,1)]./(357/20);

raw_adc = raw_adc(50:end,:);  % Trimming off the first 50 sample, they are timing information


[sample_n chan] = size(raw_adc);

t = 1:1:sample_n;

NFFT = 2^nextpow2(sample_n);
fft_gain = 10*log10(NFFT/2);
fft_f_bin = fs/NFFT;
data_FS = raw_adc / adc_FS;
for i = 1:chan
    data_FS(:,i) = data_FS(:,i)-mean(data_FS(:,i));
end

% Blackman window function
cc   = 1/0.42;                           % correction coefficient
w=(0.42) - (0.5*(cos(2*pi*(1:sample_n)'/(sample_n+1)))) + ((0.08)*(cos(4*pi*(1:sample_n)'/(sample_n+1)))); 

Y = fft(data_FS .* w, NFFT) *2*cc / sample_n;
f = (fs/2)*(linspace(0,1,NFFT/2));

data_f_amp = 2 * abs(Y(1:NFFT/2,:));
data_f_dB  = 20*log10(data_f_amp);

% Find the signal in the freq domain
sig_ind = find(data_f_dB(:,sig_chan_ind) == max(data_f_dB(:,sig_chan_ind)));  % Input signal indice
iso_dB = zeros(chan,chan,1);

% Isolation value across 6 input channels 
% iso_dB
% ___|_1_|_2_|_3_|_4_|_5_|_6_|
% _1_|1-1|2-1|3-1|4-1|5-1|6-1|
% _2_|1-2|2-2|3-2|4-2|5-2|6-2|
% _3_|1-3|2-3|3-3|4-3|5-3|6-3|
% _4_|1-4|2-4|3-4|4-4|5-4|6-4|
% _5_|1-5|2-5|3-5|4-5|5-5|6-5|
% _6_|1-6|2-6|3-6|4-6|5-6|6-6|

for i = 1:chan
    for j = 1:chan
        iso_dB(j,i,1) = data_f_dB(sig_ind, i) - data_f_dB(sig_ind, j);
    end
end

figure()
for i = 1:chan
    subplot(2,3,i);
    plot(f, data_f_dB(:,i))
    xlim([0, fs/2])
    ylim([-174 10])
    title(['Isolation test channel ' FP_label(channel(i)+1)])
    set(get(gca, 'XLabel'), 'String', 'Frequency (Hz)');
    set(get(gca, 'YLabel'), 'String', 'dB Fullscale (dB)');
    text(f(sig_ind),data_f_dB(sig_ind,i), [num2str(round(iso_dB(sig_chan_ind, i),1)) 'dB'])
    grid on
end

figure(); uitable('Data', iso_dB, 'Position', [10 10 500 400])

% Find the other peaks in the spectrum
data_ps = data_f_dB;  % Creating new data array for peak search - data_ps
peak_thres = -90;     % Peak much be bigger than this dBFS value to pass
pk_num = 15;
pk_dB = zeros(chan,pk_num);
pk_f  = zeros(chan,pk_num);
figure()
for i = 1:chan
    [a, b] = findpeaks(data_ps(:,i), f, 'MinPeakDistance', 1e6, 'MinPeakHeight', peak_thres);
    pad = pk_num - length(a);
    pk_dB(i,:) = [a' zeros(1,pad)];
    pk_f(i,:)  = [b zeros(1,pad)];
    subplot(2,3,i);
    findpeaks(data_ps(:,i), f, 'MinPeakDistance', 1e6, 'MinPeakHeight', peak_thres)
    xlim([0, fs/2])
    ylim([-174 10])
    title(['Spectrum plot for chan ' FP_label(channel(i)+1)])
    set(get(gca, 'XLabel'), 'String', 'Frequency (Hz)');
    set(get(gca, 'YLabel'), 'String', 'dB Fullscale (dB)');
    j = 1;
    while pk_dB(i,j) ~= 0
        text(pk_f(i,j), pk_dB(i,j), ['P' num2str(j)])
        disp(['Channel ' FP_label{channel(i)+1} ', Pk' num2str(j) ' frq: ' num2str(round(pk_f(i,j)/(1e6),3)) 'MHz    |    ' 'pwr: ' num2str(pk_dB(i,j)) 'dBFS'])
        j = j+1;
    end
    disp('    ')
    grid on    
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
