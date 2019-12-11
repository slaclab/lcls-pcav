% Make sure to run llrf_cards.m first for init the hw
close all

clear all

prefix   = 'SIOC:B84:PC01:';
jesd     = 'AT:ATJ%i:JR:';
daqmux   = 'AT:DM%i:';
wave_eng = 'ACC:ACBsa:BWE%i:Wf:';
sysgen   = 'AT:AC:SMR:';
llrfhw   = 'AT:AC:Llrf';
attn     = {'DC:Att0','DC:Att1','DC:Att2','DC:Att3','DC:Att4','DC:Att5','UC:Att0','UC:Att1','UC:Att2','UC:Att3'}; % Attn PV LUT

% SIOC:B84:PC01:AT:AC:LlrfDC:Att0:SetValue:Rd 0
% SIOC:B84:PC01:AT:AC:LlrfDC:Att1:SetValue:Rd 1
% SIOC:B84:PC01:AT:AC:LlrfDC:Att2:SetValue:Rd 2
% SIOC:B84:PC01:AT:AC:LlrfDC:Att3:SetValue:Rd 3
% SIOC:B84:PC01:AT:AC:LlrfDC:Att4:SetValue:Rd 4
% SIOC:B84:PC01:AT:AC:LlrfDC:Att5:SetValue:Rd 5

% SIOC:B84:PC01:AT:AC:LlrfUC:Att0:SetValue:Rd 6
% SIOC:B84:PC01:AT:AC:LlrfUC:Att1:SetValue:Rd 7
% SIOC:B84:PC01:AT:AC:LlrfUC:Att2:SetValue:Rd 8
% SIOC:B84:PC01:AT:AC:LlrfUC:Att3:SetValue:Rd 9

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
for i = 0:5
    lcaPut([prefix, sysgen, sprintf('debugStream%iSelect:St', i)], channel(i+1));
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Call Mitch's LLRF setup script
llrf_cards

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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Attenuator sweep 
% HW attn value LUT
% HMC624A has a inverse high attn value setting 6bit input with 0.5dB step.  0dB - 63, 0.5dB - 62 ... 31.5dB - 0
attn_key = linspace(63,0,64); 
attn_ary = 0:0.5:31.5;

% Channel under test
sig_chan = [2, 3, 4];
chan_amp = zeros(length(attn_ary), chan);

for i = 1:1:length(attn_ary)
    for j = 1:length(sig_chan)
        % Only switch the attn for CUT
        attn_pv{j,1} = [prefix, llrfhw, attn{sig_chan(j)+1}, ':SetValue:St'];
    end
    attn_ary(i)
    % attn_key(i);
    % attn_pv
    lcaPut(attn_pv, attn_key(i))
    % Has to pause for 0.5 second or else the controls system isn't fast enough to process. 
    
    % Arm the ADC
    lcaPut([prefix, sprintf(daqmux,0), 'TriggerDaq:Ex'], 1)
    pause(0.5)
    
    [raw_adc amp phase] = getRfData(prefix(1:end-1));
    raw_adc = raw_adc(50:end,:);
    
    for k = 1:(chan)
        chan_amp(i,k) = max(raw_adc(:,k))-min(raw_adc(:,k));
    end
end

log_chan_amp = chan_amp;

for i = 1:(chan)
    log_chan_amp(:,i) = 20*log10(chan_amp(:,i)/max(chan_amp(:,i)));

end

figure; 
plot(attn_ary, log_chan_amp(:,3)); hold on
for i = 2:length(sig_chan)
    plot(attn_ary, log_chan_amp(:,sig_chan(i)))
end
hold off; grid on 
title('Atten sweep'); xlabel('Attenuation (dB)'); ylabel('dB relative to min atten')

% figure; plot(attn_ary, log_chan_amp(:,1:5)); grid on
% title('Atten sweep'); xlabel('Attenuation (dB)'); ylabel('dB min atten')


% for j = 1:length(sig_chan)
%     attn_pv{j,1} = [prefix, llrfhw, attn{sig_chan(j)+1}, ':SetValue:St'];
%     attn_Rd{j,1} = [prefix, llrfhw, attn{sig_chan(j)+1}, ':SetValue:Rd'];
% end

% lcaPut(attn_pv, attn_key(3*2))
% lcaGet(attn_Rd)

% lcaPut([prefix, sprintf(daqmux,0), 'TriggerDaq:Ex'], 1)

% [raw_adc amp phase] = getRfData(prefix(1:end-1));

% amp1 = max(raw_adc(50:end,1)) - min(raw_adc(50:end,1))
% amp2 = max(raw_adc(50:end,2)) - min(raw_adc(50:end,2))
% amp3 = max(raw_adc(50:end,3)) - min(raw_adc(50:end,3))
% amp4 = max(raw_adc(50:end,4)) - min(raw_adc(50:end,4))
% amp5 = max(raw_adc(50:end,5)) - min(raw_adc(50:end,5))
% amp6 = max(raw_adc(50:end,6)) - min(raw_adc(50:end,6))